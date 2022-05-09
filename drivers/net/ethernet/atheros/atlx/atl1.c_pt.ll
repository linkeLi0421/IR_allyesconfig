; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/atheros/atlx/atl1.c_pt.bc'
source_filename = "../drivers/net/ethernet/atheros/atlx/atl1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.atl1_stats = type { [32 x i8], i32, i32 }
%struct.atlx_spi_flash_dev = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.148, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.148 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.147, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.147 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.rx_return_desc = type { i8, i8, i16, %union.anon.150, i16, i16, i16, i16 }
%union.anon.150 = type { i32 }
%struct.anon.151 = type { i16, i16 }
%struct.atl1_buffer = type { ptr, i16, i16, i32 }
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
%struct.coals_msg_block = type { i32, i16, i16, i16, i16 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.atl1_hw = type { ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i32, i32, i16, i8, [6 x i8], [6 x i8], i8 }
%struct.atl1_adapter = type { ptr, ptr, %struct.atl1_sft_stats, i32, i32, i16, i16, %struct.spinlock, %struct.napi_struct, %struct.work_struct, %struct.work_struct, %struct.timer_list, i8, %struct.atl1_ring_header, %struct.atl1_tpd_ring, %struct.spinlock, %struct.atl1_rfd_ring, %struct.atl1_rrd_ring, i64, i64, i32, i16, i16, %struct.mii_if_info, i8, i32, i8, %struct.atl1_hw, %struct.atl1_smb, %struct.atl1_cmb }
%struct.atl1_sft_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.atl1_ring_header = type { ptr, i32, i32 }
%struct.atl1_tpd_ring = type { ptr, i32, i16, i16, i16, %struct.atomic_t, %struct.atomic_t, ptr }
%struct.atl1_rfd_ring = type { ptr, i32, i16, i16, %struct.atomic_t, i16, ptr }
%struct.atl1_rrd_ring = type { ptr, i32, i32, i16, i16, %struct.atomic_t }
%struct.mii_if_info = type { i32, i32, i32, i32, i8, ptr, ptr, ptr }
%struct.atl1_smb = type { ptr, i32 }
%struct.atl1_cmb = type { ptr, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.tx_packet_desc = type { i64, i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.anon.60 = type { i16, i16 }
%struct.page = type { i32, %union.anon.2, %union.anon.123, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.123 = type { %struct.atomic_t }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon.131, %union.anon.132 }
%union.anon.131 = type { [16 x i8] }
%union.anon.132 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.rx_free_desc = type <{ i64, i16, i16 }>
%struct.stats_msg_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.146, i32 }
%struct.anon.146 = type { [3 x i32], [3 x i32], [3 x i32] }

@__UNIQUE_ID_description476 = internal constant [52 x i8] c"atl1.description=Atheros L1 Gigabit Ethernet Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author477 = internal constant [117 x i8] c"atl1.author=Xiong Huang <xiong.huang@atheros.com>, Chris Snook <csnook@redhat.com>, Jay Cliburn <jcliburn@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file478 = internal constant [49 x i8] c"atl1.file=drivers/net/ethernet/atheros/atlx/atl1\00", section ".modinfo", align 1
@__UNIQUE_ID_license479 = internal constant [17 x i8] c"atl1.license=GPL\00", section ".modinfo", align 1
@__param_str_int_mod_timer = internal constant [19 x i8] c"atl1.int_mod_timer\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_int_mod_timer = internal constant %struct.kparam_array { i32 5, i32 4, ptr @num_int_mod_timer, ptr @param_ops_int, ptr @int_mod_timer }, align 4
@__param_int_mod_timer = internal constant %struct.kernel_param { ptr @__param_str_int_mod_timer, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_int_mod_timer } }, section "__param", align 4
@__UNIQUE_ID_int_mod_timertype480 = internal constant [41 x i8] c"atl1.parmtype=int_mod_timer:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_int_mod_timer481 = internal constant [50 x i8] c"atl1.parm=int_mod_timer:Interrupt moderator timer\00", section ".modinfo", align 1
@__param_str_debug = internal constant [11 x i8] c"atl1.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype482 = internal constant [24 x i8] c"atl1.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug483 = internal constant [50 x i8] c"atl1.parm=debug:Message level (0=none,...,16=all)\00", section ".modinfo", align 1
@__initcall__kmod_atl1__496_3649_atl1_driver_init6 = internal global ptr @atl1_driver_init, section ".initcall6.init", align 4
@atl1_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @atl1_pci_tbl, ptr @atl1_probe, ptr @atl1_remove, ptr null, ptr null, ptr @atl1_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atl1_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_atl1_driver_exit = internal global ptr @atl1_driver_exit, section ".exitcall.exit", align 4
@num_int_mod_timer = internal global { i32, [28 x i8] } zeroinitializer, align 32
@int_mod_timer = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"atl1\00", [27 x i8] zeroinitializer }, align 32
@atl1_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 6505, i32 4168, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@atl1_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @atl1_suspend, ptr @atl1_resume, ptr @atl1_suspend, ptr @atl1_resume, ptr @atl1_suspend, ptr @atl1_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@atl1_probe.cards_found = internal global { i32, [28 x i8] } zeroinitializer, align 32
@atl1_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2929, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no usable DMA configuration\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"atl1_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/atheros/atlx/atl1.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atl1_probe._entry_ptr = internal global ptr @atl1_probe._entry, section ".printk_index", align 4
@atl1_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @atl1_open, ptr @atl1_close, ptr @atl1_xmit_frame, ptr null, ptr null, ptr null, ptr @atlx_set_multi, ptr @atl1_set_mac, ptr @eth_validate_addr, ptr null, ptr @atlx_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @atl1_change_mtu, ptr null, ptr @atlx_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atl1_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atlx_fix_features, ptr @atlx_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@atl1_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @atl1_get_drvinfo, ptr @atl1_get_regs_len, ptr @atl1_get_regs, ptr @atl1_get_wol, ptr @atl1_set_wol, ptr @atl1_get_msglevel, ptr @atl1_set_msglevel, ptr @atl1_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atl1_get_ringparam, ptr @atl1_set_ringparam, ptr null, ptr @atl1_get_pauseparam, ptr @atl1_set_pauseparam, ptr null, ptr @atl1_get_strings, ptr null, ptr @atl1_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @atl1_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atl1_get_link_ksettings, ptr @atl1_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@atl1_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(&adapter->phy_config_timer)\00", [35 x i8] zeroinitializer }, align 32
@atl1_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&adapter->reset_dev_task)\00", [52 x i8] zeroinitializer }, align 32
@atl1_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&adapter->link_chg_task)\00", [53 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@atl1_setup_ring_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 1034, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"kzalloc failed , size = D%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"atl1_setup_ring_resources\00", [38 x i8] zeroinitializer }, align 32
@atl1_setup_ring_resources._entry_ptr = internal global ptr @atl1_setup_ring_resources._entry, section ".printk_index", align 4
@atl1_setup_ring_resources._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 1057, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dma_alloc_coherent failed\0A\00", [37 x i8] zeroinitializer }, align 32
@atl1_setup_ring_resources._entry_ptr.15 = internal global ptr @atl1_setup_ring_resources._entry.13, section ".printk_index", align 4
@atl1_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 2616, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to enable MSI: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"atl1_up\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@atl1_up._entry_ptr = internal global ptr @atl1_up._entry, section ".printk_index", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@atl1_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 2504, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pcie phy link down %x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"atl1_intr\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@atl1_intr._entry_ptr = internal global ptr @atl1_intr._entry, section ".printk_index", align 4
@atl1_intr._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.3, i32 2517, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"pcie DMA r/w error (status = 0x%x)\0A\00", [60 x i8] zeroinitializer }, align 32
@atl1_intr._entry_ptr.24 = internal global ptr @atl1_intr._entry.22, section ".printk_index", align 4
@atl1_intr._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.20, ptr @.str.3, i32 2543, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rx exception, ISR = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@atl1_intr._entry_ptr.27 = internal global ptr @atl1_intr._entry.25, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@atl1_check_for_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.30, i32 96, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s link is down\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atl1_check_for_link\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/atheros/atlx/atlx.c\00", [55 x i8] zeroinitializer }, align 32
@atl1_check_for_link._entry_ptr = internal global ptr @atl1_check_for_link._entry, section ".printk_index", align 4
@atl1_check_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 1294, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"link is down\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atl1_check_link\00", [16 x i8] zeroinitializer }, align 32
@atl1_check_link._entry_ptr = internal global ptr @atl1_check_link._entry, section ".printk_index", align 4
@atl1_check_link._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 1341, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s link is up %d Mbps %s\0A\00", [38 x i8] zeroinitializer }, align 32
@atl1_check_link._entry_ptr.35 = internal global ptr @atl1_check_link._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"full duplex\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"half duplex\00", [20 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@atl1_get_speed_and_duplex.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 0, i8 -33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"atl1_get_speed_and_duplex\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error getting speed\0A\00", [43 x i8] zeroinitializer }, align 32
@atl1_xmit_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 2389, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx busy\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atl1_xmit_frame\00", [16 x i8] zeroinitializer }, align 32
@atl1_xmit_frame._entry_ptr = internal global ptr @atl1_xmit_frame._entry, section ".printk_index", align 4
@atl1_tx_csum._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 2170, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"payload offset not an even number\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atl1_tx_csum\00", [19 x i8] zeroinitializer }, align 32
@atl1_tx_csum._entry_ptr = internal global ptr @atl1_tx_csum._entry, section ".printk_index", align 4
@atl1_intr_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 1925, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unexpected RRD buffer count\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atl1_intr_rx\00", [19 x i8] zeroinitializer }, align 32
@atl1_intr_rx._entry_ptr = internal global ptr @atl1_intr_rx._entry, section ".printk_index", align 4
@atl1_intr_rx._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 1928, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rx_buf_len = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@atl1_intr_rx._entry_ptr.49 = internal global ptr @atl1_intr_rx._entry.47, section ".printk_index", align 4
@atl1_intr_rx._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.46, ptr @.str.3, i32 1931, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RRD num_buf = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@atl1_intr_rx._entry_ptr.52 = internal global ptr @atl1_intr_rx._entry.50, section ".printk_index", align 4
@atl1_intr_rx._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.46, ptr @.str.3, i32 1934, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RRD pkt_len = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@atl1_intr_rx._entry_ptr.55 = internal global ptr @atl1_intr_rx._entry.53, section ".printk_index", align 4
@atl1_intr_rx._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.46, ptr @.str.3, i32 1937, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RRD pkt_flg = 0x%08X\0A\00", [42 x i8] zeroinitializer }, align 32
@atl1_intr_rx._entry_ptr.58 = internal global ptr @atl1_intr_rx._entry.56, section ".printk_index", align 4
@atl1_intr_rx._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.46, ptr @.str.3, i32 1940, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RRD err_flg = 0x%08X\0A\00", [42 x i8] zeroinitializer }, align 32
@atl1_intr_rx._entry_ptr.61 = internal global ptr @atl1_intr_rx._entry.59, section ".printk_index", align 4
@atl1_intr_rx._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.46, ptr @.str.3, i32 1943, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RRD vlan_tag = 0x%08X\0A\00", [41 x i8] zeroinitializer }, align 32
@atl1_intr_rx._entry_ptr.64 = internal global ptr @atl1_intr_rx._entry.62, section ".printk_index", align 4
@atl1_intr_rx._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.46, ptr @.str.3, i32 1955, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bad RRD\0A\00", [23 x i8] zeroinitializer }, align 32
@atl1_intr_rx._entry_ptr.67 = internal global ptr @atl1_intr_rx._entry.65, section ".printk_index", align 4
@atl1_rx_checksum._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 1807, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rx checksum error\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atl1_rx_checksum\00", [47 x i8] zeroinitializer }, align 32
@atl1_rx_checksum._entry_ptr = internal global ptr @atl1_rx_checksum._entry, section ".printk_index", align 4
@atl1_gstrings_stats = internal constant { [29 x %struct.atl1_stats], [312 x i8] } { [29 x %struct.atl1_stats] [%struct.atl1_stats { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 8 }, %struct.atl1_stats { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 16 }, %struct.atl1_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 24 }, %struct.atl1_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 32 }, %struct.atl1_stats { [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 56 }, %struct.atl1_stats { [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 112 }, %struct.atl1_stats { [32 x i8] c"multicast\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 40 }, %struct.atl1_stats { [32 x i8] c"collisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 48 }, %struct.atl1_stats { [32 x i8] c"rx_length_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 64 }, %struct.atl1_stats { [32 x i8] c"rx_over_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 104 }, %struct.atl1_stats { [32 x i8] c"rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 72 }, %struct.atl1_stats { [32 x i8] c"rx_frame_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 88 }, %struct.atl1_stats { [32 x i8] c"rx_fifo_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 96 }, %struct.atl1_stats { [32 x i8] c"rx_missed_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 104 }, %struct.atl1_stats { [32 x i8] c"tx_aborted_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 128 }, %struct.atl1_stats { [32 x i8] c"tx_carrier_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 144 }, %struct.atl1_stats { [32 x i8] c"tx_fifo_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 120 }, %struct.atl1_stats { [32 x i8] c"tx_window_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 136 }, %struct.atl1_stats { [32 x i8] c"tx_abort_exce_coll\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 160 }, %struct.atl1_stats { [32 x i8] c"tx_abort_late_coll\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 192 }, %struct.atl1_stats { [32 x i8] c"tx_deferred_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 168 }, %struct.atl1_stats { [32 x i8] c"tx_single_coll_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 176 }, %struct.atl1_stats { [32 x i8] c"tx_multi_coll_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 184 }, %struct.atl1_stats { [32 x i8] c"tx_underrun\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 200 }, %struct.atl1_stats { [32 x i8] c"tx_trunc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 208 }, %struct.atl1_stats { [32 x i8] c"tx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 152 }, %struct.atl1_stats { [32 x i8] c"rx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 216 }, %struct.atl1_stats { [32 x i8] c"rx_rrd_ov\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 224 }, %struct.atl1_stats { [32 x i8] c"rx_trunc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, i32 232 }], [312 x i8] zeroinitializer }, align 32
@atl1_set_link_ksettings.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.3, ptr @.str.71, i8 3, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"atl1_set_link_ksettings\00", [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ethtool shutting down adapter\0A\00", [33 x i8] zeroinitializer }, align 32
@atl1_set_link_ksettings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.3, i32 3272, ptr @.str.73, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"1000M half is invalid\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@atl1_set_link_ksettings._entry_ptr = internal global ptr @atl1_set_link_ksettings._entry, section ".printk_index", align 4
@atl1_set_link_ksettings._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.70, ptr @.str.3, i32 3294, ptr @.str.73, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"invalid ethtool speed/duplex setting\0A\00", [58 x i8] zeroinitializer }, align 32
@atl1_set_link_ksettings._entry_ptr.76 = internal global ptr @atl1_set_link_ksettings._entry.74, section ".printk_index", align 4
@atl1_set_link_ksettings.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.3, ptr @.str.77, i8 3, i8 64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ethtool starting adapter\0A\00", [38 x i8] zeroinitializer }, align 32
@atl1_set_link_ksettings.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.3, ptr @.str.78, i8 3, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ethtool resetting adapter\0A\00", [37 x i8] zeroinitializer }, align 32
@atl1_sw_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&adapter->lock\00", [17 x i8] zeroinitializer }, align 32
@atl1_sw_init.__key.80 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&adapter->mb_lock\00", [46 x i8] zeroinitializer }, align 32
@atl1_reset_hw.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.3, ptr @.str.83, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atl1_reset_hw\00", [18 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ICR = 0x%x\0A\00", [20 x i8] zeroinitializer }, align 32
@atl1_check_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.3, i32 193, ptr @.str.86, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no configuration for board#%i\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atl1_check_options\00", [45 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@atl1_check_options._entry_ptr = internal global ptr @atl1_check_options._entry, section ".printk_index", align 4
@atl1_check_options._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.85, ptr @.str.3, i32 194, ptr @.str.86, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"using defaults for all values\0A\00", [33 x i8] zeroinitializer }, align 32
@atl1_check_options._entry_ptr.89 = internal global ptr @atl1_check_options._entry.87, section ".printk_index", align 4
@.str.90 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Interrupt Moderator Timer\00", [38 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"using default of 100\00", [43 x i8] zeroinitializer }, align 32
@atl1_validate_option._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.3, i32 139, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s enabled\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"atl1_validate_option\00", [43 x i8] zeroinitializer }, align 32
@atl1_validate_option._entry_ptr = internal global ptr @atl1_validate_option._entry, section ".printk_index", align 4
@atl1_validate_option._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.3, i32 142, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s disabled\0A\00", [19 x i8] zeroinitializer }, align 32
@atl1_validate_option._entry_ptr.96 = internal global ptr @atl1_validate_option._entry.94, section ".printk_index", align 4
@atl1_validate_option._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.93, ptr @.str.3, i32 149, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s set to %i\0A\00", [18 x i8] zeroinitializer }, align 32
@atl1_validate_option._entry_ptr.99 = internal global ptr @atl1_validate_option._entry.97, section ".printk_index", align 4
@atl1_validate_option._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.93, ptr @.str.3, i32 162, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@atl1_validate_option._entry_ptr.102 = internal global ptr @atl1_validate_option._entry.100, section ".printk_index", align 4
@atl1_validate_option._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.93, ptr @.str.3, i32 174, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid %s specified (%i) %s\0A\00", [34 x i8] zeroinitializer }, align 32
@atl1_validate_option._entry_ptr.105 = internal global ptr @atl1_validate_option._entry.103, section ".printk_index", align 4
@flash_table = internal constant { [3 x %struct.atlx_spi_flash_dev], [48 x i8] } { [3 x %struct.atlx_spi_flash_dev] [%struct.atlx_spi_flash_dev { ptr @.str.106, i8 0, i8 3, i8 2, i8 6, i8 4, i8 5, i8 21, i8 82, i8 98 }, %struct.atlx_spi_flash_dev { ptr @.str.107, i8 1, i8 3, i8 2, i8 6, i8 4, i8 5, i8 -112, i8 32, i8 96 }, %struct.atlx_spi_flash_dev { ptr @.str.108, i8 1, i8 3, i8 2, i8 6, i8 4, i8 5, i8 -85, i8 -40, i8 -57 }], [48 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Atmel\00", [26 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SST\00", [28 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ST\00", [29 x i8] zeroinitializer }, align 32
@atl1_setup_link.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.109, ptr @.str.3, ptr @.str.110, i8 0, i8 -60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atl1_setup_link\00", [16 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error setting up autonegotiation\0A\00", [62 x i8] zeroinitializer }, align 32
@atl1_setup_link.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.109, ptr @.str.3, ptr @.str.111, i8 0, i8 -58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error resetting phy\0A\00", [43 x i8] zeroinitializer }, align 32
@atl1_phy_reset.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.112, ptr @.str.3, ptr @.str.113, i8 0, i8 -89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atl1_phy_reset\00", [17 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pcie phy link down\0A\00", [44 x i8] zeroinitializer }, align 32
@atl1_phy_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.112, ptr @.str.3, i32 682, ptr @.str.73, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pcie link down at least 25ms\0A\00", [34 x i8] zeroinitializer }, align 32
@atl1_phy_reset._entry_ptr = internal global ptr @atl1_phy_reset._entry, section ".printk_index", align 4
@atl1_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.3, i32 2782, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error getting speed/duplex\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atl1_suspend\00", [19 x i8] zeroinitializer }, align 32
@atl1_suspend._entry_ptr = internal global ptr @atl1_suspend._entry, section ".printk_index", align 4
@switch.table.atl1_nway_reset = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 12619776, i32 12619776, i32 12624128, i32 12623872, i32 12615936], [44 x i8] zeroinitializer }, align 32
@switch.table.atl1_set_link_ksettings = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 12619776, i32 12619776, i32 12624128, i32 12623872, i32 12615936], [44 x i8] zeroinitializer }, align 32
@switch.table.atl1_phy_setup_autoneg_adv = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 3552, i16 3072, i16 3328, i16 3200, i16 3136], [22 x i8] zeroinitializer }, align 32
@switch.table.atl1_phy_setup_autoneg_adv.117 = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 512, i16 512, i16 0, i16 0, i16 0], [22 x i8] zeroinitializer }, align 32
@switch.table.atl1_phy_reset = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 12619776, i32 12619776, i32 12624128, i32 12623872, i32 12615936], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 5256, i64 5260]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 16, i64 5256, i64 5260]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 8]
@__sancov_gen_cov_switch_values.120 = internal global [6 x i64] [i64 4, i64 16, i64 32769, i64 36865, i64 36866, i64 36867]
@__sancov_gen_cov_switch_values.121 = internal global [7 x i64] [i64 5, i64 16, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.122 = internal global [7 x i64] [i64 5, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.123 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.124 = internal global [435 x i64] [i64 433, i64 32, i64 6, i64 7, i64 8, i64 9, i64 14, i64 29, i64 30, i64 31, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 62, i64 63, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 83, i64 84, i64 85, i64 86, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 94, i64 95, i64 96, i64 97, i64 98, i64 99, i64 100, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109, i64 110, i64 111, i64 112, i64 113, i64 114, i64 115, i64 116, i64 117, i64 118, i64 119, i64 120, i64 121, i64 122, i64 123, i64 124, i64 125, i64 126, i64 127, i64 1027, i64 1028, i64 1029, i64 1030, i64 1031, i64 1032, i64 1033, i64 1034, i64 1035, i64 1036, i64 1037, i64 1038, i64 1039, i64 1040, i64 1041, i64 1042, i64 1043, i64 1044, i64 1045, i64 1046, i64 1047, i64 1048, i64 1049, i64 1050, i64 1051, i64 1052, i64 1053, i64 1054, i64 1055, i64 1056, i64 1057, i64 1058, i64 1059, i64 1060, i64 1061, i64 1062, i64 1063, i64 1064, i64 1065, i64 1066, i64 1067, i64 1068, i64 1069, i64 1070, i64 1071, i64 1072, i64 1073, i64 1074, i64 1075, i64 1076, i64 1077, i64 1078, i64 1079, i64 1080, i64 1081, i64 1082, i64 1083, i64 1084, i64 1085, i64 1086, i64 1087, i64 1091, i64 1092, i64 1093, i64 1094, i64 1095, i64 1096, i64 1097, i64 1098, i64 1099, i64 1100, i64 1101, i64 1102, i64 1103, i64 1104, i64 1105, i64 1106, i64 1107, i64 1108, i64 1109, i64 1110, i64 1111, i64 1112, i64 1113, i64 1114, i64 1115, i64 1116, i64 1117, i64 1118, i64 1119, i64 1120, i64 1121, i64 1122, i64 1123, i64 1124, i64 1125, i64 1126, i64 1127, i64 1128, i64 1129, i64 1130, i64 1131, i64 1132, i64 1133, i64 1134, i64 1135, i64 1136, i64 1137, i64 1138, i64 1139, i64 1140, i64 1141, i64 1142, i64 1143, i64 1144, i64 1145, i64 1146, i64 1147, i64 1148, i64 1149, i64 1150, i64 1151, i64 1194, i64 1195, i64 1200, i64 1201, i64 1206, i64 1207, i64 1208, i64 1209, i64 1210, i64 1211, i64 1212, i64 1213, i64 1216, i64 1217, i64 1218, i64 1219, i64 1220, i64 1221, i64 1222, i64 1223, i64 1224, i64 1225, i64 1226, i64 1227, i64 1228, i64 1229, i64 1230, i64 1231, i64 1232, i64 1233, i64 1234, i64 1235, i64 1236, i64 1237, i64 1238, i64 1239, i64 1240, i64 1241, i64 1242, i64 1243, i64 1244, i64 1245, i64 1246, i64 1247, i64 1248, i64 1249, i64 1250, i64 1251, i64 1252, i64 1253, i64 1254, i64 1255, i64 1256, i64 1257, i64 1258, i64 1259, i64 1260, i64 1261, i64 1262, i64 1263, i64 1264, i64 1265, i64 1266, i64 1267, i64 1268, i64 1269, i64 1270, i64 1271, i64 1272, i64 1273, i64 1274, i64 1275, i64 1276, i64 1277, i64 1278, i64 1279, i64 1290, i64 1291, i64 1292, i64 1293, i64 1294, i64 1295, i64 1296, i64 1297, i64 1298, i64 1299, i64 1300, i64 1301, i64 1302, i64 1303, i64 1304, i64 1305, i64 1306, i64 1307, i64 1308, i64 1309, i64 1310, i64 1311, i64 1323, i64 1324, i64 1325, i64 1326, i64 1327, i64 1328, i64 1329, i64 1330, i64 1331, i64 1332, i64 1333, i64 1334, i64 1335, i64 1336, i64 1337, i64 1338, i64 1339, i64 1340, i64 1341, i64 1342, i64 1343, i64 1358, i64 1359, i64 1368, i64 1369, i64 1370, i64 1371, i64 1372, i64 1373, i64 1374, i64 1375, i64 1378, i64 1379, i64 1380, i64 1381, i64 1382, i64 1383, i64 1388, i64 1389, i64 1390, i64 1391, i64 1393, i64 1394, i64 1395, i64 1402, i64 1403, i64 1410, i64 1411, i64 1412, i64 1413, i64 1414, i64 1415, i64 1416, i64 1417, i64 1418, i64 1419, i64 1420, i64 1421, i64 1422, i64 1423, i64 1424, i64 1425, i64 1426, i64 1427, i64 1428, i64 1429, i64 1430, i64 1431, i64 1432, i64 1433, i64 1434, i64 1435, i64 1436, i64 1437, i64 1438, i64 1439, i64 1440, i64 1441, i64 1442, i64 1443, i64 1444, i64 1445, i64 1446, i64 1447, i64 1448, i64 1449, i64 1450, i64 1451, i64 1452, i64 1453, i64 1454, i64 1455, i64 1456, i64 1457, i64 1458, i64 1459, i64 1460, i64 1461, i64 1462, i64 1463, i64 1464, i64 1465, i64 1466, i64 1467, i64 1468, i64 1469, i64 1470, i64 1471, i64 1522, i64 1523, i64 1524, i64 1525, i64 1526, i64 1527, i64 1528, i64 1529, i64 1530, i64 1531, i64 1532, i64 1533, i64 1534, i64 1535]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 32, i64 100, i64 1000]
@___asan_gen_.126 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 229, i32 12 }
@___asan_gen_.129 = private unnamed_addr constant [12 x i8] c"atl1_driver\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 3116, i32 26 }
@___asan_gen_.132 = private unnamed_addr constant [18 x i8] c"num_int_mod_timer\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 98, i32 21 }
@___asan_gen_.135 = private unnamed_addr constant [14 x i8] c"int_mod_timer\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 97, i32 12 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 3649, i32 1 }
@___asan_gen_.141 = private unnamed_addr constant [13 x i8] c"atl1_pci_tbl\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 219, i32 35 }
@___asan_gen_.144 = private unnamed_addr constant [12 x i8] c"atl1_pm_ops\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 2855, i32 8 }
@___asan_gen_.147 = private unnamed_addr constant [12 x i8] c"cards_found\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 2910, i32 13 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 2929, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [16 x i8] c"atl1_netdev_ops\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 2878, i32 36 }
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"atl1_ethtool_ops\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 3628, i32 33 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 3050, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 3053, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 3055, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1033, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1057, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 2615, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 2503, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 2515, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 2540, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 95, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1294, i32 5 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1337, i32 5 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 892, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 2388, i32 4 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 2169, i32 5 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1924, i32 5 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1926, i32 5 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1929, i32 5 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1932, i32 5 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1935, i32 5 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1938, i32 5 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1941, i32 5 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1954, i32 5 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 1806, i32 5 }
@___asan_gen_.360 = private unnamed_addr constant [20 x i8] c"atl1_gstrings_stats\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 3134, i32 26 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 3259, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 3271, i32 6 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 3293, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 3327, i32 4 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 3332, i32 4 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 973, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 974, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 282, i32 4 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 193, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 194, i32 3 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 199, i32 12 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 200, i32 11 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 139, i32 4 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 142, i32 4 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 148, i32 4 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 161, i32 7 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 173, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant [12 x i8] c"flash_table\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 35, i32 34 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 37, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 38, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant [44 x i8] c"../drivers/net/ethernet/atheros/atlx/atlx.c\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.475, i32 39, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 785, i32 4 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 793, i32 4 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 670, i32 4 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 681, i32 5 }
@___asan_gen_.498 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.504 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.505 = private constant [44 x i8] c"../drivers/net/ethernet/atheros/atlx/atl1.c\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.505, i32 2781, i32 5 }
@___asan_gen_.507 = private unnamed_addr constant [29 x i8] c"switch.table.atl1_nway_reset\00", align 1
@___asan_gen_.508 = private unnamed_addr constant [37 x i8] c"switch.table.atl1_set_link_ksettings\00", align 1
@___asan_gen_.509 = private unnamed_addr constant [40 x i8] c"switch.table.atl1_phy_setup_autoneg_adv\00", align 1
@___asan_gen_.510 = private unnamed_addr constant [44 x i8] c"switch.table.atl1_phy_setup_autoneg_adv.117\00", align 1
@___asan_gen_.511 = private unnamed_addr constant [28 x i8] c"switch.table.atl1_phy_reset\00", align 1
@llvm.compiler.used = appending global [177 x ptr] [ptr @__UNIQUE_ID_author477, ptr @__UNIQUE_ID_debug483, ptr @__UNIQUE_ID_debugtype482, ptr @__UNIQUE_ID_description476, ptr @__UNIQUE_ID_file478, ptr @__UNIQUE_ID_int_mod_timer481, ptr @__UNIQUE_ID_int_mod_timertype480, ptr @__UNIQUE_ID_license479, ptr @__exitcall_atl1_driver_exit, ptr @__initcall__kmod_atl1__496_3649_atl1_driver_init6, ptr @__param_debug, ptr @__param_int_mod_timer, ptr @atl1_check_for_link._entry, ptr @atl1_check_for_link._entry_ptr, ptr @atl1_check_link._entry, ptr @atl1_check_link._entry.33, ptr @atl1_check_link._entry_ptr, ptr @atl1_check_link._entry_ptr.35, ptr @atl1_check_options._entry, ptr @atl1_check_options._entry.87, ptr @atl1_check_options._entry_ptr, ptr @atl1_check_options._entry_ptr.89, ptr @atl1_driver_exit, ptr @atl1_intr._entry, ptr @atl1_intr._entry.22, ptr @atl1_intr._entry.25, ptr @atl1_intr._entry_ptr, ptr @atl1_intr._entry_ptr.24, ptr @atl1_intr._entry_ptr.27, ptr @atl1_intr_rx._entry, ptr @atl1_intr_rx._entry.47, ptr @atl1_intr_rx._entry.50, ptr @atl1_intr_rx._entry.53, ptr @atl1_intr_rx._entry.56, ptr @atl1_intr_rx._entry.59, ptr @atl1_intr_rx._entry.62, ptr @atl1_intr_rx._entry.65, ptr @atl1_intr_rx._entry_ptr, ptr @atl1_intr_rx._entry_ptr.49, ptr @atl1_intr_rx._entry_ptr.52, ptr @atl1_intr_rx._entry_ptr.55, ptr @atl1_intr_rx._entry_ptr.58, ptr @atl1_intr_rx._entry_ptr.61, ptr @atl1_intr_rx._entry_ptr.64, ptr @atl1_intr_rx._entry_ptr.67, ptr @atl1_phy_reset._entry, ptr @atl1_phy_reset._entry_ptr, ptr @atl1_probe._entry, ptr @atl1_probe._entry_ptr, ptr @atl1_rx_checksum._entry, ptr @atl1_rx_checksum._entry_ptr, ptr @atl1_set_link_ksettings._entry, ptr @atl1_set_link_ksettings._entry.74, ptr @atl1_set_link_ksettings._entry_ptr, ptr @atl1_set_link_ksettings._entry_ptr.76, ptr @atl1_setup_ring_resources._entry, ptr @atl1_setup_ring_resources._entry.13, ptr @atl1_setup_ring_resources._entry_ptr, ptr @atl1_setup_ring_resources._entry_ptr.15, ptr @atl1_suspend._entry, ptr @atl1_suspend._entry_ptr, ptr @atl1_tx_csum._entry, ptr @atl1_tx_csum._entry_ptr, ptr @atl1_up._entry, ptr @atl1_up._entry_ptr, ptr @atl1_validate_option._entry, ptr @atl1_validate_option._entry.100, ptr @atl1_validate_option._entry.103, ptr @atl1_validate_option._entry.94, ptr @atl1_validate_option._entry.97, ptr @atl1_validate_option._entry_ptr, ptr @atl1_validate_option._entry_ptr.102, ptr @atl1_validate_option._entry_ptr.105, ptr @atl1_validate_option._entry_ptr.96, ptr @atl1_validate_option._entry_ptr.99, ptr @atl1_xmit_frame._entry, ptr @atl1_xmit_frame._entry_ptr, ptr @debug, ptr @atl1_driver, ptr @num_int_mod_timer, ptr @int_mod_timer, ptr @.str, ptr @atl1_pci_tbl, ptr @atl1_pm_ops, ptr @atl1_probe.cards_found, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @atl1_netdev_ops, ptr @atl1_ethtool_ops, ptr @atl1_probe.__key, ptr @.str.6, ptr @atl1_probe.__key.7, ptr @.str.8, ptr @atl1_probe.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @atl1_gstrings_stats, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.78, ptr @atl1_sw_init.__key, ptr @.str.79, ptr @atl1_sw_init.__key.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @flash_table, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @switch.table.atl1_nway_reset, ptr @switch.table.atl1_set_link_ksettings, ptr @switch.table.atl1_phy_setup_autoneg_adv, ptr @switch.table.atl1_phy_setup_autoneg_adv.117, ptr @switch.table.atl1_phy_reset], section "llvm.metadata"
@0 = internal global [132 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_int_mod_timer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @int_mod_timer to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_probe.cards_found to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_setup_ring_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_setup_ring_resources._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_intr._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_intr._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_check_for_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_check_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_check_link._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_xmit_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_tx_csum._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_intr_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_intr_rx._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_intr_rx._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_intr_rx._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_intr_rx._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_intr_rx._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_intr_rx._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_intr_rx._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_rx_checksum._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_gstrings_stats to i32), i32 1160, i32 1472, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_set_link_ksettings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_set_link_ksettings._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_sw_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_sw_init.__key.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_check_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_check_options._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_validate_option._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_validate_option._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_validate_option._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_validate_option._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_validate_option._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_phy_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atl1_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atl1_nway_reset to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atl1_set_link_ksettings to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atl1_phy_setup_autoneg_adv to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atl1_phy_setup_autoneg_adv.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atl1_phy_reset to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @atl1_driver, ptr noundef null, ptr noundef nonnull @.str) #17
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atl1_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @pci_unregister_driver(ptr noundef nonnull @atl1_driver) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call1 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #20
  br label %err_request_regions

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.err_request_regions_crit_edge

if.end5.err_request_regions_crit_edge:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_request_regions

if.end9:                                          ; preds = %if.end5
  tail call void @pci_set_master(ptr noundef %pdev) #17
  %call10 = tail call ptr @alloc_etherdev_mqs(i32 noundef 976, i32 noundef 1, i32 noundef 1) #17
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.err_alloc_etherdev_crit_edge, label %if.end13

if.end9.err_alloc_etherdev_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_alloc_etherdev

if.end13:                                         ; preds = %if.end9
  %parent = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call10, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call10, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call10, ptr %add.ptr.i, align 8
  %pdev18 = getelementptr i8, ptr %call10, i32 2308
  %3 = ptrtoint ptr %pdev18 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pdev, ptr %pdev18, align 4
  %hw = getelementptr i8, ptr %call10, i32 3164
  %back = getelementptr i8, ptr %call10, i32 3168
  %4 = ptrtoint ptr %back to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr.i, ptr %back, align 4
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %5)
  %cmp1.i = icmp ugt i32 %5, 31
  br i1 %cmp1.i, label %if.end13.netif_msg_init.exit_crit_edge, label %if.end.i

if.end13.netif_msg_init.exit_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %netif_msg_init.exit

if.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.i = icmp eq i32 %5, 0
  br i1 %cmp2.i, label %if.end.i.netif_msg_init.exit_crit_edge, label %if.end4.i

if.end.i.netif_msg_init.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %netif_msg_init.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %notmask.i = shl nsw i32 -1, %5
  %sub.i = xor i32 %notmask.i, -1
  br label %netif_msg_init.exit

netif_msg_init.exit:                              ; preds = %if.end4.i, %if.end.i.netif_msg_init.exit_crit_edge, %if.end13.netif_msg_init.exit_crit_edge
  %retval.0.i = phi i32 [ %sub.i, %if.end4.i ], [ 63, %if.end13.netif_msg_init.exit_crit_edge ], [ 0, %if.end.i.netif_msg_init.exit_crit_edge ]
  %msg_enable = getelementptr i8, ptr %call10, i32 3112
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %retval.0.i, ptr %msg_enable, align 8
  %call20 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef 0) #17
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call20, ptr %hw, align 4
  %tobool24.not = icmp eq ptr %call20, null
  br i1 %tobool24.not, label %netif_msg_init.exit.err_pci_iomap_crit_edge, label %if.end26

netif_msg_init.exit.err_pci_iomap_crit_edge:      ; preds = %netif_msg_init.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_pci_iomap

if.end26:                                         ; preds = %netif_msg_init.exit
  %add.ptr = getelementptr i8, ptr %call20, i32 5122
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #17, !srcloc !262
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !263
  %dev_rev = getelementptr i8, ptr %call10, i32 3244
  %10 = ptrtoint ptr %dev_rev to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %dev_rev, align 4
  %count = getelementptr i8, ptr %call10, i32 3084
  %11 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 512, ptr %count, align 4
  %count31 = getelementptr i8, ptr %call10, i32 3058
  %12 = ptrtoint ptr %count31 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 512, ptr %count31, align 2
  %count32 = getelementptr i8, ptr %call10, i32 2986
  %13 = ptrtoint ptr %count32 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 256, ptr %count32, align 2
  %dev33 = getelementptr i8, ptr %call10, i32 3140
  %14 = ptrtoint ptr %dev33 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call10, ptr %dev33, align 4
  %mdio_read = getelementptr i8, ptr %call10, i32 3144
  %15 = ptrtoint ptr %mdio_read to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @mdio_read, ptr %mdio_read, align 8
  %mdio_write = getelementptr i8, ptr %call10, i32 3148
  %16 = ptrtoint ptr %mdio_write to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @mdio_write, ptr %mdio_write, align 4
  %phy_id_mask = getelementptr i8, ptr %call10, i32 3128
  %17 = ptrtoint ptr %phy_id_mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 31, ptr %phy_id_mask, align 8
  %reg_num_mask = getelementptr i8, ptr %call10, i32 3132
  %18 = ptrtoint ptr %reg_num_mask to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 31, ptr %reg_num_mask, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 16
  %19 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @atl1_netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 115
  %20 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 500, ptr %watchdog_timeo, align 4
  %napi = getelementptr i8, ptr %call10, i32 2600
  tail call void @netif_napi_add(ptr noundef nonnull %call10, ptr noundef %napi, ptr noundef nonnull @atl1_rings_clean, i32 noundef 64) #17
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 44
  %21 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @atl1_ethtool_ops, ptr %ethtool_ops, align 16
  %22 = load i32, ptr @atl1_probe.cards_found, align 4
  %bd_number = getelementptr i8, ptr %call10, i32 3156
  %23 = ptrtoint ptr %bd_number to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %bd_number, align 4
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 8
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 20
  %26 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mtu.i, align 4
  %add4.i = add i32 %27, 22
  %max_frame_size.i = getelementptr i8, ptr %call10, i32 3236
  %28 = ptrtoint ptr %max_frame_size.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add4.i, ptr %max_frame_size.i, align 4
  %min_frame_size.i = getelementptr i8, ptr %call10, i32 3240
  %29 = ptrtoint ptr %min_frame_size.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 64, ptr %min_frame_size.i, align 4
  %wol.i = getelementptr i8, ptr %call10, i32 2548
  %30 = ptrtoint ptr %wol.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %wol.i, align 4
  %31 = ptrtoint ptr %pdev18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev18, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %call.i = tail call i32 @device_set_wakeup_enable(ptr noundef %dev.i, i1 noundef zeroext false) #17
  %33 = ptrtoint ptr %max_frame_size.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max_frame_size.i, align 4
  %add6.i = add i32 %34, 7
  %and.i = and i32 %add6.i, -8
  %rx_buffer_len.i = getelementptr i8, ptr %call10, i32 2544
  %35 = ptrtoint ptr %rx_buffer_len.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and.i, ptr %rx_buffer_len.i, align 8
  %ict.i = getelementptr i8, ptr %call10, i32 3118
  %36 = ptrtoint ptr %ict.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -15536, ptr %ict.i, align 2
  %link_speed.i = getelementptr i8, ptr %call10, i32 2552
  %37 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -1, ptr %link_speed.i, align 8
  %link_duplex.i = getelementptr i8, ptr %call10, i32 2554
  %38 = ptrtoint ptr %link_duplex.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 2, ptr %link_duplex.i, align 2
  %phy_configured.i = getelementptr i8, ptr %call10, i32 3259
  %39 = ptrtoint ptr %phy_configured.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %phy_configured.i, align 1
  %preamble_len.i = getelementptr i8, ptr %call10, i32 3188
  %40 = ptrtoint ptr %preamble_len.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 7, ptr %preamble_len.i, align 4
  %ipgt.i = getelementptr i8, ptr %call10, i32 3191
  %41 = ptrtoint ptr %ipgt.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 96, ptr %ipgt.i, align 1
  %min_ifg.i = getelementptr i8, ptr %call10, i32 3192
  %42 = ptrtoint ptr %min_ifg.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 80, ptr %min_ifg.i, align 4
  %ipgr1.i = getelementptr i8, ptr %call10, i32 3193
  %43 = ptrtoint ptr %ipgr1.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 64, ptr %ipgr1.i, align 1
  %ipgr2.i = getelementptr i8, ptr %call10, i32 3194
  %44 = ptrtoint ptr %ipgr2.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 96, ptr %ipgr2.i, align 2
  %max_retry.i = getelementptr i8, ptr %call10, i32 3189
  %45 = ptrtoint ptr %max_retry.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 15, ptr %max_retry.i, align 1
  %lcol.i = getelementptr i8, ptr %call10, i32 3212
  %46 = ptrtoint ptr %lcol.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 55, ptr %lcol.i, align 4
  %jam_ipg.i = getelementptr i8, ptr %call10, i32 3190
  %47 = ptrtoint ptr %jam_ipg.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 7, ptr %jam_ipg.i, align 2
  %rfd_burst.i = getelementptr i8, ptr %call10, i32 3196
  %48 = ptrtoint ptr %rfd_burst.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 8, ptr %rfd_burst.i, align 4
  %rrd_burst.i = getelementptr i8, ptr %call10, i32 3198
  %49 = ptrtoint ptr %rrd_burst.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 8, ptr %rrd_burst.i, align 2
  %rfd_fetch_gap.i = getelementptr i8, ptr %call10, i32 3197
  %50 = ptrtoint ptr %rfd_fetch_gap.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %rfd_fetch_gap.i, align 1
  %div1.i = lshr i32 %add6.i, 3
  %conv.i = trunc i32 %div1.i to i16
  %rx_jumbo_th.i = getelementptr i8, ptr %call10, i32 3206
  %51 = ptrtoint ptr %rx_jumbo_th.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv.i, ptr %rx_jumbo_th.i, align 2
  %rx_jumbo_lkah.i = getelementptr i8, ptr %call10, i32 3208
  %52 = ptrtoint ptr %rx_jumbo_lkah.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 1, ptr %rx_jumbo_lkah.i, align 4
  %rrd_ret_timer.i = getelementptr i8, ptr %call10, i32 3210
  %53 = ptrtoint ptr %rrd_ret_timer.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 16, ptr %rrd_ret_timer.i, align 2
  %tpd_burst.i = getelementptr i8, ptr %call10, i32 3195
  %54 = ptrtoint ptr %tpd_burst.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 4, ptr %tpd_burst.i, align 1
  %tpd_fetch_th.i = getelementptr i8, ptr %call10, i32 3199
  %55 = ptrtoint ptr %tpd_fetch_th.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 16, ptr %tpd_fetch_th.i, align 1
  %txf_burst.i = getelementptr i8, ptr %call10, i32 3204
  %56 = ptrtoint ptr %txf_burst.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 256, ptr %txf_burst.i, align 4
  %tx_jumbo_task_th.i = getelementptr i8, ptr %call10, i32 3202
  %57 = ptrtoint ptr %tx_jumbo_task_th.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv.i, ptr %tx_jumbo_task_th.i, align 2
  %tpd_fetch_gap.i = getelementptr i8, ptr %call10, i32 3200
  %58 = ptrtoint ptr %tpd_fetch_gap.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %tpd_fetch_gap.i, align 4
  %rcb_value.i = getelementptr i8, ptr %call10, i32 3176
  %59 = ptrtoint ptr %rcb_value.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %rcb_value.i, align 4
  %dma_ord.i = getelementptr i8, ptr %call10, i32 3172
  %60 = ptrtoint ptr %dma_ord.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 2, ptr %dma_ord.i, align 4
  %dmar_block.i = getelementptr i8, ptr %call10, i32 3180
  %61 = ptrtoint ptr %dmar_block.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %dmar_block.i, align 4
  %dmaw_block.i = getelementptr i8, ptr %call10, i32 3184
  %62 = ptrtoint ptr %dmaw_block.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %dmaw_block.i, align 4
  %cmb_rrd.i = getelementptr i8, ptr %call10, i32 3216
  %63 = ptrtoint ptr %cmb_rrd.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 4, ptr %cmb_rrd.i, align 4
  %cmb_tpd.i = getelementptr i8, ptr %call10, i32 3214
  %64 = ptrtoint ptr %cmb_tpd.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 4, ptr %cmb_tpd.i, align 2
  %cmb_rx_timer.i = getelementptr i8, ptr %call10, i32 3218
  %65 = ptrtoint ptr %cmb_rx_timer.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 1, ptr %cmb_rx_timer.i, align 2
  %cmb_tx_timer.i = getelementptr i8, ptr %call10, i32 3220
  %66 = ptrtoint ptr %cmb_tx_timer.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 1, ptr %cmb_tx_timer.i, align 4
  %smb_timer.i = getelementptr i8, ptr %call10, i32 3224
  %67 = ptrtoint ptr %smb_timer.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 100000, ptr %smb_timer.i, align 4
  %lock.i = getelementptr i8, ptr %call10, i32 2556
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.79, ptr noundef nonnull @atl1_sw_init.__key, i16 noundef signext 3) #17
  %mb_lock.i = getelementptr i8, ptr %call10, i32 3004
  tail call void @__raw_spin_lock_init(ptr noundef %mb_lock.i, ptr noundef nonnull @.str.81, ptr noundef nonnull @atl1_sw_init.__key.80, i16 noundef signext 3) #17
  %features = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 23
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 24
  %68 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 65801, ptr %hw_features, align 8
  %69 = ptrtoint ptr %features to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 1099511628169, ptr %features, align 16
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 30
  %70 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 42, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 31
  %71 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 10218, ptr %max_mtu, align 4
  %72 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hw, align 4
  %add.ptr49 = getelementptr i8, ptr %73, i32 5132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !264
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr49, i16 0) #17, !srcloc !265
  %call51 = tail call fastcc i32 @atl1_reset_hw(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end26.err_common_crit_edge

if.end26.err_common_crit_edge:                    ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_common

if.end54:                                         ; preds = %if.end26
  %call56 = tail call fastcc i32 @atl1_read_mac_addr(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end54.if.end59_crit_edge, label %if.then58

if.end54.if.end59_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end59

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #19
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 55
  %74 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %addr_assign_type, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end54.if.end59_crit_edge
  %mac_addr = getelementptr i8, ptr %call10, i32 3247
  tail call void @dev_addr_mod(ptr noundef nonnull %call10, i32 noundef 0, ptr noundef %mac_addr, i32 noundef 6) #17
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 86
  %75 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev_addr, align 64
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  %79 = and i32 %78, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.i.not.i = icmp eq i32 %79, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end59.err_common_crit_edge

if.end59.err_common_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_common

is_valid_ether_addr.exit:                         ; preds = %if.end59
  %add.ptr.i.i = getelementptr i8, ptr %76, i32 4
  %80 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %81 to i32
  %or.i.i = or i32 %78, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.err_common_crit_edge, label %if.end63

is_valid_ether_addr.exit.err_common_crit_edge:    ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_common

if.end63:                                         ; preds = %is_valid_ether_addr.exit
  tail call fastcc void @atl1_check_options(ptr noundef %add.ptr.i)
  %call65 = tail call fastcc i32 @atl1_init_hw(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end63.err_common_crit_edge

if.end63.err_common_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_common

if.end68:                                         ; preds = %if.end63
  tail call fastcc void @atl1_pcie_patch(ptr noundef %add.ptr.i)
  tail call void @netif_carrier_off(ptr noundef nonnull %call10) #17
  %phy_config_timer = getelementptr i8, ptr %call10, i32 2912
  tail call void @init_timer_key(ptr noundef %phy_config_timer, ptr noundef nonnull @atl1_phy_config, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @atl1_probe.__key) #17
  %phy_timer_pending = getelementptr i8, ptr %call10, i32 2960
  %82 = ptrtoint ptr %phy_timer_pending to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %phy_timer_pending, align 8
  %reset_dev_task = getelementptr i8, ptr %call10, i32 2824
  tail call void @__init_work(ptr noundef %reset_dev_task, i32 noundef 0) #17
  %83 = ptrtoint ptr %reset_dev_task to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -64, ptr %reset_dev_task, align 8
  %lockdep_map = getelementptr i8, ptr %call10, i32 2840
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @atl1_probe.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry76 = getelementptr i8, ptr %call10, i32 2828
  %84 = ptrtoint ptr %entry76 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %entry76, ptr %entry76, align 4
  %prev.i = getelementptr i8, ptr %call10, i32 2832
  %85 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %entry76, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call10, i32 2836
  %86 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @atl1_reset_dev_task, ptr %func, align 4
  %link_chg_task = getelementptr i8, ptr %call10, i32 2868
  tail call void @__init_work(ptr noundef %link_chg_task, i32 noundef 0) #17
  %87 = ptrtoint ptr %link_chg_task to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -64, ptr %link_chg_task, align 4
  %lockdep_map86 = getelementptr i8, ptr %call10, i32 2884
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map86, ptr noundef nonnull @.str.10, ptr noundef nonnull @atl1_probe.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry88 = getelementptr i8, ptr %call10, i32 2872
  %88 = ptrtoint ptr %entry88 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %entry88, ptr %entry88, align 4
  %prev.i181 = getelementptr i8, ptr %call10, i32 2876
  %89 = ptrtoint ptr %prev.i181 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %entry88, ptr %prev.i181, align 4
  %func90 = getelementptr i8, ptr %call10, i32 2880
  %90 = ptrtoint ptr %func90 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @atlx_link_chg_task, ptr %func90, align 4
  %call93 = tail call i32 @register_netdev(ptr noundef nonnull %call10) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %if.end68.err_common_crit_edge

if.end68.err_common_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_common

if.end96:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #19
  %91 = load i32, ptr @atl1_probe.cards_found, align 4
  %inc = add i32 %91, 1
  store i32 %inc, ptr @atl1_probe.cards_found, align 4
  tail call fastcc void @atl1_via_workaround(ptr noundef %add.ptr.i)
  br label %cleanup

err_common:                                       ; preds = %if.end68.err_common_crit_edge, %if.end63.err_common_crit_edge, %is_valid_ether_addr.exit.err_common_crit_edge, %if.end59.err_common_crit_edge, %if.end26.err_common_crit_edge
  %err.0 = phi i32 [ %call93, %if.end68.err_common_crit_edge ], [ -5, %if.end26.err_common_crit_edge ], [ -5, %is_valid_ether_addr.exit.err_common_crit_edge ], [ -5, %if.end63.err_common_crit_edge ], [ -5, %if.end59.err_common_crit_edge ]
  %92 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %hw, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %93) #17
  br label %err_pci_iomap

err_pci_iomap:                                    ; preds = %err_common, %netif_msg_init.exit.err_pci_iomap_crit_edge
  %err.1 = phi i32 [ %err.0, %err_common ], [ -5, %netif_msg_init.exit.err_pci_iomap_crit_edge ]
  tail call void @free_netdev(ptr noundef nonnull %call10) #17
  br label %err_alloc_etherdev

err_alloc_etherdev:                               ; preds = %err_pci_iomap, %if.end9.err_alloc_etherdev_crit_edge
  %err.2 = phi i32 [ %err.1, %err_pci_iomap ], [ -12, %if.end9.err_alloc_etherdev_crit_edge ]
  tail call void @pci_release_regions(ptr noundef %pdev) #17
  br label %err_request_regions

err_request_regions:                              ; preds = %err_alloc_etherdev, %if.end5.err_request_regions_crit_edge, %do.end
  %err.3 = phi i32 [ %call1, %do.end ], [ %call6, %if.end5.err_request_regions_crit_edge ], [ %err.2, %err_alloc_etherdev ]
  tail call void @pci_disable_device(ptr noundef %pdev) #17
  br label %cleanup

cleanup:                                          ; preds = %err_request_regions, %if.end96, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %err_request_regions ], [ 0, %if.end96 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw = getelementptr i8, ptr %1, i32 3164
  %mac_addr = getelementptr i8, ptr %1, i32 3247
  %perm_mac_addr = getelementptr i8, ptr %1, i32 3253
  %2 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mac_addr, align 4
  %4 = ptrtoint ptr %perm_mac_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %perm_mac_addr, align 4
  %xor.i.i = xor i32 %5, %3
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 3251
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %1, i32 3257
  %8 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %9, %7
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.end.if.end13_crit_edge, label %if.then5

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %10 = call ptr @memcpy(ptr %mac_addr, ptr %perm_mac_addr, i32 6)
  %arrayidx.i = getelementptr i8, ptr %1, i32 3249
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %12 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx2.i = getelementptr i8, ptr %1, i32 3250
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %14 to i32
  %shl4.i = shl nuw nsw i32 %conv3.i, 16
  %or.i = or i32 %shl4.i, %shl.i
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr.i.i, align 1
  %conv7.i = zext i8 %16 to i32
  %shl8.i = shl nuw nsw i32 %conv7.i, 8
  %or9.i = or i32 %or.i, %shl8.i
  %arrayidx11.i = getelementptr i8, ptr %1, i32 3252
  %17 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %18 to i32
  %or13.i = or i32 %or9.i, %conv12.i
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 4
  %add.ptr.i30 = getelementptr i8, ptr %20, i32 5256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %21 = tail call i32 @llvm.bswap.i32(i32 %or13.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %21) #17, !srcloc !267
  %22 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mac_addr, align 1
  %conv16.i = zext i8 %23 to i32
  %shl17.i = shl nuw nsw i32 %conv16.i, 8
  %arrayidx19.i = getelementptr i8, ptr %1, i32 3248
  %24 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx19.i, align 1
  %conv20.i = zext i8 %25 to i32
  %or21.i = or i32 %shl17.i, %conv20.i
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 4
  %add.ptr24.i = getelementptr i8, ptr %27, i32 5260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %28 = tail call i32 @llvm.bswap.i32(i32 %or21.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %28) #17, !srcloc !267
  br label %if.end13

if.end13:                                         ; preds = %if.then5, %if.end.if.end13_crit_edge
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 5132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !264
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #17, !srcloc !265
  tail call void @unregister_netdev(ptr noundef nonnull %1) #17
  %31 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %32) #17
  tail call void @pci_release_regions(ptr noundef %pdev) #17
  tail call void @free_netdev(ptr noundef nonnull %1) #17
  tail call void @pci_disable_device(ptr noundef %pdev) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1_shutdown(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call2 = tail call i32 @atl1_suspend(ptr noundef %dev)
  %wol = getelementptr i8, ptr %1, i32 2548
  %2 = ptrtoint ptr %wol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool = icmp ne i32 %3, 0
  %call3 = tail call i32 @pci_wake_from_d3(ptr noundef %pdev, i1 noundef zeroext %tobool) #17
  %call4 = tail call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef 3) #17
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_read(ptr nocapture noundef readonly %netdev, i32 noundef %phy_id, i32 noundef %reg_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %netdev, i32 3164
  %conv = shl i32 %reg_num, 8
  %0 = and i32 %conv, 7936
  %or2.i = or i32 %0, 57344
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %add.ptr.i3 = getelementptr i8, ptr %2, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %or2.i) #17, !srcloc !267
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %add.ptr5.i = getelementptr i8, ptr %4, i32 5140
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 30
  br i1 %exitcond.not.i, label %for.cond.i.atl1_read_phy_reg.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.cond.i.atl1_read_phy_reg.exit_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atl1_read_phy_reg.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry
  %i.023.i = phi i32 [ 0, %entry ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 429496) #17
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %add.ptr8.i = getelementptr i8, ptr %8, i32 5140
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #17, !srcloc !268
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %and10.i = and i32 %10, 142606336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool.not.i, label %if.then13.i, label %for.cond.i

if.then13.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %phi.cast = and i32 %10, 65535
  br label %atl1_read_phy_reg.exit

atl1_read_phy_reg.exit:                           ; preds = %if.then13.i, %for.cond.i.atl1_read_phy_reg.exit_crit_edge
  %result.0 = phi i32 [ %phi.cast, %if.then13.i ], [ 65535, %for.cond.i.atl1_read_phy_reg.exit_crit_edge ]
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdio_write(ptr nocapture noundef readonly %netdev, i32 noundef %phy_id, i32 noundef %reg_num, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %netdev, i32 3164
  %conv.i = and i32 %val, 65535
  %and1.i = shl i32 %reg_num, 16
  %shl2.i = and i32 %and1.i, 2031616
  %or.i = or i32 %conv.i, %shl2.i
  %or4.i = or i32 %or.i, 12582912
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %add.ptr.i2 = getelementptr i8, ptr %1, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %2 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %2) #17, !srcloc !267
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 4
  %add.ptr7.i = getelementptr i8, ptr %4, i32 5140
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.023.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 429496) #17
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 4
  %add.ptr10.i = getelementptr i8, ptr %8, i32 5140
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %10 = and i32 %9, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  %inc.i = add nuw nsw i32 %i.023.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 30
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %atl1_write_phy_reg.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

atl1_write_phy_reg.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1_rings_clean(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -296
  %rrd_ring2.i = getelementptr i8, ptr %napi, i32 472
  %next_to_clean.i = getelementptr i8, ptr %napi, i32 488
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %next_to_clean.i, i32 noundef 4) #17
  %0 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %next_to_clean.i, align 4
  %conv.i = trunc i32 %1 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp272.i = icmp sgt i32 %budget, 0
  br i1 %cmp272.i, label %while.body.lr.ph.i, label %entry.while.end.i_crit_edge

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %entry
  %msg_enable.i = getelementptr i8, ptr %napi, i32 512
  %pdev.i = getelementptr i8, ptr %napi, i32 -292
  %rx_buffer_len.i = getelementptr i8, ptr %napi, i32 -56
  %count84.i = getelementptr i8, ptr %napi, i32 484
  %next_to_clean.i.i = getelementptr i8, ptr %napi, i32 464
  %buffer_info.i.i = getelementptr i8, ptr %napi, i32 468
  %count.i.i = getelementptr i8, ptr %napi, i32 458
  %hw_csum_err.i.i = getelementptr i8, ptr %napi, i32 496
  %hw_csum_good.i.i = getelementptr i8, ptr %napi, i32 504
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %count.0275.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %count.0.be.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %rrd_next_to_clean.0273.i = phi i16 [ %conv.i, %while.body.lr.ph.i ], [ %rrd_next_to_clean.0.be.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %2 = ptrtoint ptr %rrd_ring2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rrd_ring2.i, align 4
  %idxprom.i = zext i16 %rrd_next_to_clean.0273.i to i32
  %arrayidx.i = getelementptr %struct.rx_return_desc, ptr %3, i32 %idxprom.i
  %xsz.i = getelementptr %struct.rx_return_desc, ptr %3, i32 %idxprom.i, i32 3
  %4 = ptrtoint ptr %xsz.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xsz.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %while.body.i.while.end.i_crit_edge, label %chk_rrd.preheader.i, !prof !270

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

chk_rrd.preheader.i:                              ; preds = %while.body.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp7270.i = icmp eq i8 %7, 1
  br i1 %cmp7270.i, label %chk_rrd.preheader.i.rrd_ok.i_crit_edge, label %if.else.lr.ph.i, !prof !271

chk_rrd.preheader.i.rrd_ok.i_crit_edge:           ; preds = %chk_rrd.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rrd_ok.i

if.else.lr.ph.i:                                  ; preds = %chk_rrd.preheader.i
  %pkt_size.i = getelementptr inbounds %struct.anon.151, ptr %xsz.i, i32 0, i32 1
  %pkt_flg.i = getelementptr %struct.rx_return_desc, ptr %3, i32 %idxprom.i, i32 4
  %err_flg.i = getelementptr %struct.rx_return_desc, ptr %3, i32 %idxprom.i, i32 5
  %vlan_tag.i = getelementptr %struct.rx_return_desc, ptr %3, i32 %idxprom.i, i32 7
  %8 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool16.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool16.not.i, label %if.else.lr.ph.i.if.end55.i_crit_edge, label %do.end.i

if.else.lr.ph.i.if.end55.i_crit_edge:             ; preds = %if.else.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end55.i

do.end.i:                                         ; preds = %if.else.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #19
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev.i, ptr noundef nonnull @.str.45) #20
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 4
  %dev22.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %14 = ptrtoint ptr %rx_buffer_len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_buffer_len.i, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev22.i, ptr noundef nonnull @.str.48, i32 noundef %15) #20
  %16 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i, align 4
  %dev27.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 4
  %conv29.i = zext i8 %19 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev27.i, ptr noundef nonnull @.str.51, i32 noundef %conv29.i) #20
  %20 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev.i, align 4
  %dev34.i = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %22 = ptrtoint ptr %pkt_size.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %pkt_size.i, align 2
  %conv36.i = zext i16 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev34.i, ptr noundef nonnull @.str.54, i32 noundef %conv36.i) #20
  %24 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev.i, align 4
  %dev41.i = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %26 = ptrtoint ptr %pkt_flg.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %pkt_flg.i, align 4
  %conv42.i = zext i16 %27 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev41.i, ptr noundef nonnull @.str.57, i32 noundef %conv42.i) #20
  %28 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev.i, align 4
  %dev47.i = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %30 = ptrtoint ptr %err_flg.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %err_flg.i, align 2
  %conv48.i = zext i16 %31 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev47.i, ptr noundef nonnull @.str.60, i32 noundef %conv48.i) #20
  %32 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev.i, align 4
  %dev53.i = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %34 = ptrtoint ptr %vlan_tag.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vlan_tag.i, align 2
  %conv54.i = zext i16 %35 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev53.i, ptr noundef nonnull @.str.63, i32 noundef %conv54.i) #20
  br label %if.end55.i

if.end55.i:                                       ; preds = %do.end.i, %if.else.lr.ph.i.if.end55.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #17
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %38)
  %cmp7.i = icmp eq i8 %38, 1
  br i1 %cmp7.i, label %if.end55.i.rrd_ok.i_crit_edge, label %if.else.1.i, !prof !271

if.end55.i.rrd_ok.i_crit_edge:                    ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rrd_ok.i

if.else.1.i:                                      ; preds = %if.end55.i
  %39 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %msg_enable.i, align 8
  %and.1.i = and i32 %40, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool16.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool16.not.1.i, label %if.else.1.i.if.end65.i_crit_edge, label %do.end.1.i

if.else.1.i.if.end65.i_crit_edge:                 ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end65.i

do.end.1.i:                                       ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #19
  %41 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev.i, align 4
  %dev.1.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev.1.i, ptr noundef nonnull @.str.45) #20
  %43 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev.i, align 4
  %dev22.1.i = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %45 = ptrtoint ptr %rx_buffer_len.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_buffer_len.i, align 8
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev22.1.i, ptr noundef nonnull @.str.48, i32 noundef %46) #20
  %47 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev.i, align 4
  %dev27.1.i = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.i, align 4
  %conv29.1.i = zext i8 %50 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev27.1.i, ptr noundef nonnull @.str.51, i32 noundef %conv29.1.i) #20
  %51 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdev.i, align 4
  %dev34.1.i = getelementptr inbounds %struct.pci_dev, ptr %52, i32 0, i32 44
  %53 = ptrtoint ptr %pkt_size.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %pkt_size.i, align 2
  %conv36.1.i = zext i16 %54 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev34.1.i, ptr noundef nonnull @.str.54, i32 noundef %conv36.1.i) #20
  %55 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev.i, align 4
  %dev41.1.i = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  %57 = ptrtoint ptr %pkt_flg.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %pkt_flg.i, align 4
  %conv42.1.i = zext i16 %58 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev41.1.i, ptr noundef nonnull @.str.57, i32 noundef %conv42.1.i) #20
  %59 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev.i, align 4
  %dev47.1.i = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  %61 = ptrtoint ptr %err_flg.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %err_flg.i, align 2
  %conv48.1.i = zext i16 %62 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev47.1.i, ptr noundef nonnull @.str.60, i32 noundef %conv48.1.i) #20
  %63 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pdev.i, align 4
  %dev53.1.i = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 44
  %65 = ptrtoint ptr %vlan_tag.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %vlan_tag.i, align 2
  %conv54.1.i = zext i16 %66 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev53.1.i, ptr noundef nonnull @.str.63, i32 noundef %conv54.1.i) #20
  br label %if.end65.i

if.end65.i:                                       ; preds = %do.end.1.i, %if.else.1.i.if.end65.i_crit_edge
  %67 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %msg_enable.i, align 8
  %and67.i = and i32 %68, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i)
  %tobool68.not.i = icmp eq i32 %and67.i, 0
  br i1 %tobool68.not.i, label %if.end65.i.if.end75.i_crit_edge, label %do.end72.i

if.end65.i.if.end75.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end75.i

do.end72.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #19
  %69 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdev.i, align 4
  %dev74.i = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev74.i, ptr noundef nonnull @.str.66) #20
  br label %if.end75.i

if.end75.i:                                       ; preds = %do.end72.i, %if.end65.i.if.end75.i_crit_edge
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %72)
  %cmp78.i = icmp ugt i8 %72, 1
  br i1 %cmp78.i, label %if.then80.i, label %if.end75.i.if.end81.i_crit_edge

if.end75.i.if.end81.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end81.i

if.then80.i:                                      ; preds = %if.end75.i
  %73 = ptrtoint ptr %pkt_size.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %pkt_size.i, align 2
  %conv.i39 = zext i16 %74 to i32
  %75 = ptrtoint ptr %rx_buffer_len.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rx_buffer_len.i, align 8
  %add.i = add nsw i32 %conv.i39, -1
  %sub.i41 = add i32 %add.i, %76
  %div.i = udiv i32 %sub.i41, %76
  %conv4.i42 = zext i8 %72 to i32
  %conv5.i = and i32 %div.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i, i32 %conv4.i42)
  %cmp.i = icmp eq i32 %conv5.i, %conv4.i42
  br i1 %cmp.i, label %if.then.i46, label %if.then80.i.if.end81.i_crit_edge

if.then80.i.if.end81.i_crit_edge:                 ; preds = %if.then80.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end81.i

if.then.i46:                                      ; preds = %if.then80.i
  %buf_indx.i.i44 = getelementptr %struct.rx_return_desc, ptr %3, i32 %idxprom.i, i32 2
  %77 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %next_to_clean.i.i, align 4
  %conv17.i.i = zext i16 %78 to i32
  %79 = ptrtoint ptr %buf_indx.i.i44 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %buf_indx.i.i44, align 2
  %conv218.i.i = zext i16 %80 to i32
  %add19.i.i = add nuw nsw i32 %conv218.i.i, %conv4.i42
  call void @__sanitizer_cov_trace_cmp4(i32 %add19.i.i, i32 %conv17.i.i)
  %cmp.not20.i.i45 = icmp eq i32 %add19.i.i, %conv17.i.i
  br i1 %cmp.not20.i.i45, label %if.then.i46.if.end81.i_crit_edge, label %if.then.i46.while.body.i.i55_crit_edge

if.then.i46.while.body.i.i55_crit_edge:           ; preds = %if.then.i46
  br label %while.body.i.i55

if.then.i46.if.end81.i_crit_edge:                 ; preds = %if.then.i46
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end81.i

while.body.i.i55:                                 ; preds = %while.body.i.i55.while.body.i.i55_crit_edge, %if.then.i46.while.body.i.i55_crit_edge
  %conv21.i.i49 = phi i32 [ %conv.i.i, %while.body.i.i55.while.body.i.i55_crit_edge ], [ %conv17.i.i, %if.then.i46.while.body.i.i55_crit_edge ]
  %81 = ptrtoint ptr %buffer_info.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %buffer_info.i.i, align 4
  %alloced.i.i50 = getelementptr %struct.atl1_buffer, ptr %82, i32 %conv21.i.i49, i32 2
  %83 = ptrtoint ptr %alloced.i.i50 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 0, ptr %alloced.i.i50, align 2
  %84 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %next_to_clean.i.i, align 4
  %inc.i.i51 = add i16 %85, 1
  %86 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %count.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i.i51, i16 %87)
  %cmp9.i.i52 = icmp eq i16 %inc.i.i51, %87
  %spec.store.select.i.i53 = select i1 %cmp9.i.i52, i16 0, i16 %inc.i.i51
  %88 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %spec.store.select.i.i53, ptr %next_to_clean.i.i, align 4
  %conv.i.i = zext i16 %spec.store.select.i.i53 to i32
  %89 = ptrtoint ptr %buf_indx.i.i44 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %buf_indx.i.i44, align 2
  %conv2.i.i = zext i16 %90 to i32
  %add.i.i = add nuw nsw i32 %conv2.i.i, %conv4.i42
  %cmp.not.i.i54 = icmp eq i32 %add.i.i, %conv.i.i
  br i1 %cmp.not.i.i54, label %while.body.i.i55.if.end81.i_crit_edge, label %while.body.i.i55.while.body.i.i55_crit_edge

while.body.i.i55.while.body.i.i55_crit_edge:      ; preds = %while.body.i.i55
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i55

while.body.i.i55.if.end81.i_crit_edge:            ; preds = %while.body.i.i55
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end81.i

if.end81.i:                                       ; preds = %while.body.i.i55.if.end81.i_crit_edge, %if.then.i46.if.end81.i_crit_edge, %if.then80.i.if.end81.i_crit_edge, %if.end75.i.if.end81.i_crit_edge
  %91 = ptrtoint ptr %xsz.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %xsz.i, align 4
  %inc.i = add i16 %rrd_next_to_clean.0273.i, 1
  %92 = ptrtoint ptr %count84.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %count84.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %93)
  %cmp86.i = icmp eq i16 %inc.i, %93
  %spec.store.select.i = select i1 %cmp86.i, i16 0, i16 %inc.i
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end161.i, %if.then129.i, %if.end81.i
  %rrd_next_to_clean.0.be.i = phi i16 [ %spec.store.select190.i, %if.end161.i ], [ %spec.store.select190.i, %if.then129.i ], [ %spec.store.select.i, %if.end81.i ]
  %count.0.be.i = add nuw nsw i32 %count.0275.i, 1
  %exitcond.not.i = icmp eq i32 %count.0.be.i, %budget
  br i1 %exitcond.not.i, label %while.cond.backedge.i.while.end.i_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

while.cond.backedge.i.while.end.i_crit_edge:      ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

rrd_ok.i:                                         ; preds = %if.end55.i.rrd_ok.i_crit_edge, %chk_rrd.preheader.i.rrd_ok.i_crit_edge
  %buf_indx.i.i = getelementptr %struct.rx_return_desc, ptr %3, i32 %idxprom.i, i32 2
  %94 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %next_to_clean.i.i, align 4
  %96 = ptrtoint ptr %buf_indx.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %buf_indx.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %97, i16 %95)
  %cmp.not20.i.i = icmp eq i16 %97, %95
  br i1 %cmp.not20.i.i, label %rrd_ok.i.atl1_clean_alloc_flag.exit.i_crit_edge, label %rrd_ok.i.while.body.i.i_crit_edge

rrd_ok.i.while.body.i.i_crit_edge:                ; preds = %rrd_ok.i
  br label %while.body.i.i

rrd_ok.i.atl1_clean_alloc_flag.exit.i_crit_edge:  ; preds = %rrd_ok.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atl1_clean_alloc_flag.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %rrd_ok.i.while.body.i.i_crit_edge
  %conv21.i.in.i = phi i16 [ %spec.store.select.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %95, %rrd_ok.i.while.body.i.i_crit_edge ]
  %conv21.i.i = zext i16 %conv21.i.in.i to i32
  %98 = ptrtoint ptr %buffer_info.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %buffer_info.i.i, align 4
  %alloced.i.i = getelementptr %struct.atl1_buffer, ptr %99, i32 %conv21.i.i, i32 2
  %100 = ptrtoint ptr %alloced.i.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 0, ptr %alloced.i.i, align 2
  %101 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %next_to_clean.i.i, align 4
  %inc.i.i = add i16 %102, 1
  %103 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %count.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i.i, i16 %104)
  %cmp9.i.i = icmp eq i16 %inc.i.i, %104
  %spec.store.select.i.i = select i1 %cmp9.i.i, i16 0, i16 %inc.i.i
  %105 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %spec.store.select.i.i, ptr %next_to_clean.i.i, align 4
  %106 = ptrtoint ptr %buf_indx.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %buf_indx.i.i, align 2
  %cmp.not.i.i = icmp eq i16 %107, %spec.store.select.i.i
  br i1 %cmp.not.i.i, label %while.body.i.i.atl1_clean_alloc_flag.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i

while.body.i.i.atl1_clean_alloc_flag.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atl1_clean_alloc_flag.exit.i

atl1_clean_alloc_flag.exit.i:                     ; preds = %while.body.i.i.atl1_clean_alloc_flag.exit.i_crit_edge, %rrd_ok.i.atl1_clean_alloc_flag.exit.i_crit_edge
  %108 = ptrtoint ptr %buffer_info.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %buffer_info.i.i, align 4
  %110 = ptrtoint ptr %buf_indx.i.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %buf_indx.i.i, align 2
  %idxprom93.i = zext i16 %111 to i32
  %arrayidx94.i = getelementptr %struct.atl1_buffer, ptr %109, i32 %idxprom93.i
  %112 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %next_to_clean.i.i, align 4
  %inc96.i = add i16 %113, 1
  %114 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %count.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc96.i, i16 %115)
  %cmp100.i = icmp eq i16 %inc96.i, %115
  %spec.store.select262.i = select i1 %cmp100.i, i16 0, i16 %inc96.i
  %116 = ptrtoint ptr %next_to_clean.i.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %spec.store.select262.i, ptr %next_to_clean.i.i, align 4
  %inc105.i = add i16 %rrd_next_to_clean.0273.i, 1
  %117 = ptrtoint ptr %count84.i to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %count84.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %inc105.i, i16 %118)
  %cmp109.i = icmp eq i16 %inc105.i, %118
  %spec.store.select190.i = select i1 %cmp109.i, i16 0, i16 %inc105.i
  %pkt_flg114.i = getelementptr %struct.rx_return_desc, ptr %3, i32 %idxprom.i, i32 4
  %119 = ptrtoint ptr %pkt_flg114.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %pkt_flg114.i, align 4
  %121 = and i16 %120, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %121)
  %tobool117.not.i = icmp eq i16 %121, 0
  br i1 %tobool117.not.i, label %atl1_clean_alloc_flag.exit.i.if.end132.i_crit_edge, label %if.then124.i, !prof !271

atl1_clean_alloc_flag.exit.i.if.end132.i_crit_edge: ; preds = %atl1_clean_alloc_flag.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end132.i

if.then124.i:                                     ; preds = %atl1_clean_alloc_flag.exit.i
  %err_flg125.i = getelementptr %struct.rx_return_desc, ptr %3, i32 %idxprom.i, i32 5
  %122 = ptrtoint ptr %err_flg125.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %err_flg125.i, align 2
  %124 = and i16 %123, 448
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %124)
  %tobool128.not.i = icmp eq i16 %124, 0
  br i1 %tobool128.not.i, label %if.then129.i, label %if.then124.i.if.end132.i_crit_edge

if.then124.i.if.end132.i_crit_edge:               ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end132.i

if.then129.i:                                     ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #19
  %alloced.i = getelementptr %struct.atl1_buffer, ptr %109, i32 %idxprom93.i, i32 2
  %125 = ptrtoint ptr %alloced.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 0, ptr %alloced.i, align 2
  %126 = ptrtoint ptr %xsz.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %xsz.i, align 4
  br label %while.cond.backedge.i

if.end132.i:                                      ; preds = %if.then124.i.if.end132.i_crit_edge, %atl1_clean_alloc_flag.exit.i.if.end132.i_crit_edge
  %127 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pdev.i, align 4
  %dev134.i = getelementptr inbounds %struct.pci_dev, ptr %128, i32 0, i32 44
  %dma.i = getelementptr %struct.atl1_buffer, ptr %109, i32 %idxprom93.i, i32 3
  %129 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %dma.i, align 4
  %length135.i = getelementptr %struct.atl1_buffer, ptr %109, i32 %idxprom93.i, i32 1
  %131 = ptrtoint ptr %length135.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %length135.i, align 4
  %conv136.i = zext i16 %132 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev134.i, i32 noundef %130, i32 noundef %conv136.i, i32 noundef 2, i32 noundef 0) #17
  %133 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %dma.i, align 4
  %134 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx94.i, align 4
  %pkt_size140.i = getelementptr inbounds %struct.anon.151, ptr %xsz.i, i32 0, i32 1
  %136 = ptrtoint ptr %pkt_size140.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %pkt_size140.i, align 2
  %138 = tail call i16 @llvm.bswap.i16(i16 %137) #17
  %conv141.i = zext i16 %138 to i32
  %sub.i = add nsw i32 %conv141.i, -4
  %call142.i = tail call ptr @skb_put(ptr noundef %135, i32 noundef %sub.i) #17
  %139 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %pdev.i, align 4
  %141 = ptrtoint ptr %pkt_flg114.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %pkt_flg114.i, align 4
  %143 = and i16 %142, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %143)
  %tobool.not.i.i = icmp eq i16 %143, 0
  br i1 %tobool.not.i.i, label %if.end132.i.if.end12.i.i_crit_edge, label %if.then.i.i, !prof !271

if.end132.i.if.end12.i.i_crit_edge:               ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i.i

if.then.i.i:                                      ; preds = %if.end132.i
  %err_flg.i.i = getelementptr %struct.rx_return_desc, ptr %3, i32 %idxprom.i, i32 5
  %144 = ptrtoint ptr %err_flg.i.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %err_flg.i.i, align 2
  %146 = and i16 %145, 51
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %146)
  %tobool6.not.i.i = icmp eq i16 %146, 0
  br i1 %tobool6.not.i.i, label %if.then.i.i.if.end12.i.i_crit_edge, label %if.then7.i.i

if.then.i.i.if.end12.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i.i

if.then7.i.i:                                     ; preds = %if.then.i.i
  %147 = ptrtoint ptr %hw_csum_err.i.i to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %hw_csum_err.i.i, align 8
  %inc.i267.i = add i64 %148, 1
  store i64 %inc.i267.i, ptr %hw_csum_err.i.i, align 8
  %149 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %msg_enable.i, align 8
  %and8.i.i = and i32 %150, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.then7.i.i.atl1_rx_checksum.exit.i_crit_edge, label %do.end.i.i

if.then7.i.i.atl1_rx_checksum.exit.i_crit_edge:   ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atl1_rx_checksum.exit.i

do.end.i.i:                                       ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %140, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev.i.i, ptr noundef nonnull @.str.68) #20
  br label %atl1_rx_checksum.exit.i

if.end12.i.i:                                     ; preds = %if.then.i.i.if.end12.i.i_crit_edge, %if.end132.i.if.end12.i.i_crit_edge
  %151 = and i16 %142, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %151)
  %tobool16.not.i.i = icmp eq i16 %151, 0
  br i1 %tobool16.not.i.i, label %if.end12.i.i.atl1_rx_checksum.exit.i_crit_edge, label %if.end18.i.i

if.end12.i.i.atl1_rx_checksum.exit.i_crit_edge:   ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atl1_rx_checksum.exit.i

if.end18.i.i:                                     ; preds = %if.end12.i.i
  %err_flg19.i.i = getelementptr %struct.rx_return_desc, ptr %3, i32 %idxprom.i, i32 5
  %152 = ptrtoint ptr %err_flg19.i.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %err_flg19.i.i, align 2
  %154 = and i16 %153, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %154)
  %tobool22.not.i.i = icmp eq i16 %154, 0
  br i1 %tobool22.not.i.i, label %if.then31.i.i, label %if.end18.i.i.atl1_rx_checksum.exit.i_crit_edge, !prof !271

if.end18.i.i.atl1_rx_checksum.exit.i_crit_edge:   ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atl1_rx_checksum.exit.i

if.then31.i.i:                                    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %135, i32 0, i32 15
  %155 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %155)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  %156 = ptrtoint ptr %hw_csum_good.i.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %hw_csum_good.i.i, align 8
  %inc32.i.i = add i64 %157, 1
  store i64 %inc32.i.i, ptr %hw_csum_good.i.i, align 8
  br label %atl1_rx_checksum.exit.i

atl1_rx_checksum.exit.i:                          ; preds = %if.then31.i.i, %if.end18.i.i.atl1_rx_checksum.exit.i_crit_edge, %if.end12.i.i.atl1_rx_checksum.exit.i_crit_edge, %do.end.i.i, %if.then7.i.i.atl1_rx_checksum.exit.i_crit_edge
  %158 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %add.ptr, align 8
  %call143.i = tail call zeroext i16 @eth_type_trans(ptr noundef %135, ptr noundef %159) #17
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %135, i32 0, i32 15, i32 0, i32 18
  %160 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %call143.i, ptr %protocol.i, align 8
  %161 = ptrtoint ptr %pkt_flg114.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %pkt_flg114.i, align 4
  %163 = and i16 %162, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %163)
  %tobool147.not.i = icmp eq i16 %163, 0
  br i1 %tobool147.not.i, label %atl1_rx_checksum.exit.i.if.end161.i_crit_edge, label %if.then148.i

atl1_rx_checksum.exit.i.if.end161.i_crit_edge:    ; preds = %atl1_rx_checksum.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end161.i

if.then148.i:                                     ; preds = %atl1_rx_checksum.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %vlan_tag150.i = getelementptr %struct.rx_return_desc, ptr %3, i32 %idxprom.i, i32 7
  %164 = ptrtoint ptr %vlan_tag150.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %vlan_tag150.i, align 2
  %166 = lshr i16 %165, 4
  %and154.i = shl i16 %165, 13
  %or.i = or i16 %166, %and154.i
  %and157.i = shl i16 %165, 9
  %shl158.i = and i16 %and157.i, 4096
  %or159.i = or i16 %or.i, %shl158.i
  %vlan_proto1.i.i = getelementptr inbounds %struct.sk_buff, ptr %135, i32 0, i32 15, i32 0, i32 9
  %167 = ptrtoint ptr %vlan_proto1.i.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 -32512, ptr %vlan_proto1.i.i, align 8
  %vlan_tci2.i.i = getelementptr inbounds %struct.sk_buff, ptr %135, i32 0, i32 15, i32 0, i32 10
  %168 = ptrtoint ptr %vlan_tci2.i.i to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %or159.i, ptr %vlan_tci2.i.i, align 2
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %135, i32 0, i32 15, i32 0, i32 3
  %169 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %169, i32 4)
  %bf.load.i268.i = load i32, ptr %vlan_present.i.i, align 2
  %bf.set.i269.i = or i32 %bf.load.i268.i, -2147483648
  store i32 %bf.set.i269.i, ptr %vlan_present.i.i, align 2
  br label %if.end161.i

if.end161.i:                                      ; preds = %if.then148.i, %atl1_rx_checksum.exit.i.if.end161.i_crit_edge
  %call162.i = tail call i32 @netif_receive_skb(ptr noundef %135) #17
  %170 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr null, ptr %arrayidx94.i, align 4
  %alloced164.i = getelementptr %struct.atl1_buffer, ptr %109, i32 %idxprom93.i, i32 2
  %171 = ptrtoint ptr %alloced164.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 0, ptr %alloced164.i, align 2
  %172 = ptrtoint ptr %xsz.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 0, ptr %xsz.i, align 4
  br label %while.cond.backedge.i

while.end.i:                                      ; preds = %while.cond.backedge.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %rrd_next_to_clean.0.lcssa.i = phi i16 [ %conv.i, %entry.while.end.i_crit_edge ], [ %rrd_next_to_clean.0.be.i, %while.cond.backedge.i.while.end.i_crit_edge ], [ %rrd_next_to_clean.0273.i, %while.body.i.while.end.i_crit_edge ]
  %count.0.lcssa.i = phi i32 [ 0, %entry.while.end.i_crit_edge ], [ %budget, %while.cond.backedge.i.while.end.i_crit_edge ], [ %count.0275.i, %while.body.i.while.end.i_crit_edge ]
  %conv167.i = zext i16 %rrd_next_to_clean.0.lcssa.i to i32
  %call.i.i263.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_to_clean.i, i32 noundef 4) #17
  %173 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store volatile i32 %conv167.i, ptr %next_to_clean.i, align 4
  %call168.i = tail call fastcc zeroext i16 @atl1_alloc_rx_buffers(ptr noundef %add.ptr) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.lcssa.i)
  %tobool169.not.i = icmp eq i32 %count.0.lcssa.i, 0
  br i1 %tobool169.not.i, label %while.end.i.atl1_intr_rx.exit_crit_edge, label %if.then170.i

while.end.i.atl1_intr_rx.exit_crit_edge:          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atl1_intr_rx.exit

if.then170.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %mb_lock.i = getelementptr i8, ptr %napi, i32 404
  tail call void @_raw_spin_lock(ptr noundef %mb_lock.i) #17
  %next_to_use.i = getelementptr i8, ptr %napi, i32 396
  %call.i.i264.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %next_to_use.i, i32 noundef 4) #17
  %174 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load volatile i32, ptr %next_to_use.i, align 4
  %next_to_use173.i = getelementptr i8, ptr %napi, i32 460
  %call.i.i265.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %next_to_use173.i, i32 noundef 4) #17
  %176 = ptrtoint ptr %next_to_use173.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load volatile i32, ptr %next_to_use173.i, align 4
  %call.i.i266.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %next_to_clean.i, i32 noundef 4) #17
  %178 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load volatile i32, ptr %next_to_clean.i, align 4
  %and179.i = and i32 %177, 2047
  %and182.i = shl i32 %179, 11
  %shl183.i = and i32 %and182.i, 4192256
  %or184.i = or i32 %and179.i, %shl183.i
  %shl186.i = shl i32 %175, 22
  %or187.i = or i32 %or184.i, %shl186.i
  %hw.i = getelementptr i8, ptr %napi, i32 564
  %180 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %hw.i, align 4
  %add.ptr.i = getelementptr i8, ptr %181, i32 5616
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %182 = tail call i32 @llvm.bswap.i32(i32 %or187.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %182) #17, !srcloc !267
  tail call void @_raw_spin_unlock(ptr noundef %mb_lock.i) #17
  br label %atl1_intr_rx.exit

atl1_intr_rx.exit:                                ; preds = %if.then170.i, %while.end.i.atl1_intr_rx.exit_crit_edge
  %next_to_clean.i20 = getelementptr i8, ptr %napi, i32 392
  %call.i.i.i21 = tail call zeroext i1 @__kasan_check_read(ptr noundef %next_to_clean.i20, i32 noundef 4) #17
  %183 = ptrtoint ptr %next_to_clean.i20 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load volatile i32, ptr %next_to_clean.i20, align 4
  %conv.i22 = trunc i32 %184 to i16
  %cmb.i = getelementptr i8, ptr %napi, i32 668
  %185 = ptrtoint ptr %cmb.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %cmb.i, align 4
  %tpd_cons_idx.i = getelementptr inbounds %struct.coals_msg_block, ptr %186, i32 0, i32 4
  %187 = ptrtoint ptr %tpd_cons_idx.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %tpd_cons_idx.i, align 2
  %189 = tail call i16 @llvm.bswap.i16(i16 %188) #17
  %conv454.i = and i32 %184, 65535
  call void @__sanitizer_cov_trace_cmp2(i16 %189, i16 %conv.i22)
  %cmp.not55.i = icmp eq i16 %189, %conv.i22
  br i1 %cmp.not55.i, label %atl1_intr_rx.exit.while.end.i33_crit_edge, label %while.body.lr.ph.i24

atl1_intr_rx.exit.while.end.i33_crit_edge:        ; preds = %atl1_intr_rx.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i33

while.body.lr.ph.i24:                             ; preds = %atl1_intr_rx.exit
  %buffer_info6.i = getelementptr i8, ptr %napi, i32 400
  %pdev.i23 = getelementptr i8, ptr %napi, i32 -292
  %count16.i = getelementptr i8, ptr %napi, i32 386
  br label %while.body.i28

while.body.i28:                                   ; preds = %if.end14.i.while.body.i28_crit_edge, %while.body.lr.ph.i24
  %conv458.i = phi i32 [ %conv454.i, %while.body.lr.ph.i24 ], [ %conv4.i, %if.end14.i.while.body.i28_crit_edge ]
  %count.057.i = phi i32 [ 0, %while.body.lr.ph.i24 ], [ %inc22.i, %if.end14.i.while.body.i28_crit_edge ]
  %sw_tpd_next_to_clean.056.i = phi i16 [ %conv.i22, %while.body.lr.ph.i24 ], [ %spec.store.select.i31, %if.end14.i.while.body.i28_crit_edge ]
  %190 = ptrtoint ptr %buffer_info6.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %buffer_info6.i, align 4
  %arrayidx.i25 = getelementptr %struct.atl1_buffer, ptr %191, i32 %conv458.i
  %dma.i26 = getelementptr %struct.atl1_buffer, ptr %191, i32 %conv458.i, i32 3
  %192 = ptrtoint ptr %dma.i26 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %dma.i26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool.not.i27 = icmp eq i32 %193, 0
  br i1 %tobool.not.i27, label %while.body.i28.if.end.i_crit_edge, label %if.then.i

while.body.i28.if.end.i_crit_edge:                ; preds = %while.body.i28
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i28
  call void @__sanitizer_cov_trace_pc() #19
  %194 = ptrtoint ptr %pdev.i23 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %pdev.i23, align 4
  %dev.i29 = getelementptr inbounds %struct.pci_dev, ptr %195, i32 0, i32 44
  %length.i = getelementptr %struct.atl1_buffer, ptr %191, i32 %conv458.i, i32 1
  %196 = ptrtoint ptr %length.i to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %length.i, align 4
  %conv8.i = zext i16 %197 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i29, i32 noundef %193, i32 noundef %conv8.i, i32 noundef 1, i32 noundef 0) #17
  %198 = ptrtoint ptr %dma.i26 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 0, ptr %dma.i26, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i28.if.end.i_crit_edge
  %199 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %arrayidx.i25, align 4
  %tobool10.not.i = icmp eq ptr %200, null
  br i1 %tobool10.not.i, label %if.end.i.if.end14.i_crit_edge, label %if.then11.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %200, i32 noundef 0) #17
  %201 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr null, ptr %arrayidx.i25, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %if.end.i.if.end14.i_crit_edge
  %inc.i30 = add i16 %sw_tpd_next_to_clean.056.i, 1
  %202 = ptrtoint ptr %count16.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %count16.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i30, i16 %203)
  %cmp18.i = icmp eq i16 %inc.i30, %203
  %spec.store.select.i31 = select i1 %cmp18.i, i16 0, i16 %inc.i30
  %inc22.i = add i32 %count.057.i, 1
  %conv4.i = zext i16 %spec.store.select.i31 to i32
  %cmp.not.i = icmp eq i16 %189, %spec.store.select.i31
  br i1 %cmp.not.i, label %if.end14.i.while.end.i33_crit_edge, label %if.end14.i.while.body.i28_crit_edge

if.end14.i.while.body.i28_crit_edge:              ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i28

if.end14.i.while.end.i33_crit_edge:               ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i33

while.end.i33:                                    ; preds = %if.end14.i.while.end.i33_crit_edge, %atl1_intr_rx.exit.while.end.i33_crit_edge
  %count.0.lcssa.i32 = phi i32 [ 0, %atl1_intr_rx.exit.while.end.i33_crit_edge ], [ %inc22.i, %if.end14.i.while.end.i33_crit_edge ]
  %conv4.lcssa.i = phi i32 [ %conv454.i, %atl1_intr_rx.exit.while.end.i33_crit_edge ], [ %conv4.i, %if.end14.i.while.end.i33_crit_edge ]
  %call.i.i52.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_to_clean.i20, i32 noundef 4) #17
  %204 = ptrtoint ptr %next_to_clean.i20 to i32
  call void @__asan_store4_noabort(i32 %204)
  store volatile i32 %conv4.lcssa.i, ptr %next_to_clean.i20, align 4
  %205 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %add.ptr, align 8
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %206, i32 0, i32 103
  %207 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %208, i32 0, i32 13
  %209 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %210, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %while.end.i33.atl1_intr_tx.exit_crit_edge, label %land.lhs.true.i

while.end.i33.atl1_intr_tx.exit_crit_edge:        ; preds = %while.end.i33
  call void @__sanitizer_cov_trace_pc() #19
  br label %atl1_intr_tx.exit

land.lhs.true.i:                                  ; preds = %while.end.i33
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %206, i32 0, i32 6
  %211 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load volatile i32, ptr %state.i.i, align 4
  %213 = and i32 %212, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %tobool.not.i.i34 = icmp eq i32 %213, 0
  br i1 %tobool.not.i.i34, label %if.then30.i, label %land.lhs.true.i.atl1_intr_tx.exit_crit_edge

land.lhs.true.i.atl1_intr_tx.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atl1_intr_tx.exit

if.then30.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @netif_tx_wake_queue(ptr noundef %208) #17
  br label %atl1_intr_tx.exit

atl1_intr_tx.exit:                                ; preds = %if.then30.i, %land.lhs.true.i.atl1_intr_tx.exit_crit_edge, %while.end.i33.atl1_intr_tx.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.0.lcssa.i32)
  %tobool.not = icmp eq i32 %count.0.lcssa.i32, 0
  %spec.select = select i1 %tobool.not, i32 %count.0.lcssa.i, i32 %budget
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %budget)
  %cmp.not = icmp slt i32 %spec.select, %budget
  br i1 %cmp.not, label %if.end3, label %atl1_intr_tx.exit.cleanup_crit_edge

atl1_intr_tx.exit.cleanup_crit_edge:              ; preds = %atl1_intr_tx.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end3:                                          ; preds = %atl1_intr_tx.exit
  %call4 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %spec.select) #17
  %int_enabled = getelementptr i8, ptr %napi, i32 552
  %214 = ptrtoint ptr %int_enabled to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %int_enabled, align 8, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %215)
  %tobool5.not = icmp eq i8 %215, 0
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.then8, !prof !270

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %hw.i35 = getelementptr i8, ptr %napi, i32 564
  %216 = ptrtoint ptr %hw.i35 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %hw.i35, align 4
  %add.ptr.i36 = getelementptr i8, ptr %217, i32 5636
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 18624528) #17, !srcloc !267
  %218 = ptrtoint ptr %hw.i35 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %hw.i35, align 4
  %add.ptr3.i = getelementptr i8, ptr %219, i32 5636
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end3.cleanup_crit_edge, %atl1_intr_tx.exit.cleanup_crit_edge
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atl1_reset_hw(ptr nocapture noundef readonly %hw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.atl1_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 4
  %pdev1 = getelementptr inbounds %struct.atl1_adapter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 5120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #17, !srcloc !267
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 5120
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %add.ptr6 = getelementptr i8, ptr %10, i32 5132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !264
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6, i16 256) #17, !srcloc !265
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %add.ptr8 = getelementptr i8, ptr %12, i32 5132
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr8) #17, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !263
  tail call void @msleep(i32 noundef 1) #17
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %add.ptr11 = getelementptr i8, ptr %15, i32 5136
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 1) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !273
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !274
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %add.ptr11.1 = getelementptr i8, ptr %18, i32 5136
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.1) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.1 = icmp eq i32 %19, 0
  br i1 %tobool.not.1, label %if.end.cleanup_crit_edge, label %if.end.1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  tail call void @msleep(i32 noundef 1) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !273
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !274
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %add.ptr11.2 = getelementptr i8, ptr %21, i32 5136
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.2) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.2 = icmp eq i32 %22, 0
  br i1 %tobool.not.2, label %if.end.1.cleanup_crit_edge, label %if.end.2

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  tail call void @msleep(i32 noundef 1) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !273
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !274
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  %add.ptr11.3 = getelementptr i8, ptr %24, i32 5136
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.3) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.3 = icmp eq i32 %25, 0
  br i1 %tobool.not.3, label %if.end.2.cleanup_crit_edge, label %if.end.3

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.3:                                         ; preds = %if.end.2
  tail call void @msleep(i32 noundef 1) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !273
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !274
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 4
  %add.ptr11.4 = getelementptr i8, ptr %27, i32 5136
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.4) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.4 = icmp eq i32 %28, 0
  br i1 %tobool.not.4, label %if.end.3.cleanup_crit_edge, label %if.end.4

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.4:                                         ; preds = %if.end.3
  tail call void @msleep(i32 noundef 1) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !273
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !274
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 4
  %add.ptr11.5 = getelementptr i8, ptr %30, i32 5136
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.5) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.5 = icmp eq i32 %31, 0
  br i1 %tobool.not.5, label %if.end.4.cleanup_crit_edge, label %if.end.5

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.5:                                         ; preds = %if.end.4
  tail call void @msleep(i32 noundef 1) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !273
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !274
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw, align 4
  %add.ptr11.6 = getelementptr i8, ptr %33, i32 5136
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.6) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.6 = icmp eq i32 %34, 0
  br i1 %tobool.not.6, label %if.end.5.cleanup_crit_edge, label %if.end.6

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.6:                                         ; preds = %if.end.5
  tail call void @msleep(i32 noundef 1) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !273
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !274
  %35 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw, align 4
  %add.ptr11.7 = getelementptr i8, ptr %36, i32 5136
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.7) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.7 = icmp eq i32 %37, 0
  br i1 %tobool.not.7, label %if.end.6.cleanup_crit_edge, label %if.end.7

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.7:                                         ; preds = %if.end.6
  tail call void @msleep(i32 noundef 1) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !273
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !274
  %38 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw, align 4
  %add.ptr11.8 = getelementptr i8, ptr %39, i32 5136
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.8) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.8 = icmp eq i32 %40, 0
  br i1 %tobool.not.8, label %if.end.7.cleanup_crit_edge, label %if.end.8

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.8:                                         ; preds = %if.end.7
  tail call void @msleep(i32 noundef 1) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !273
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !274
  %41 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw, align 4
  %add.ptr11.9 = getelementptr i8, ptr %42, i32 5136
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.9) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.9 = icmp eq i32 %43, 0
  br i1 %tobool.not.9, label %if.end.8.cleanup_crit_edge, label %if.end.9

if.end.8.cleanup_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.9:                                         ; preds = %if.end.8
  tail call void @msleep(i32 noundef 1) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !273
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #17, !srcloc !274
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #17
  %msg_enable = getelementptr inbounds %struct.atl1_adapter, ptr %1, i32 0, i32 20
  %45 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %msg_enable, align 8
  %and = and i32 %46, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.end.9.cleanup_crit_edge, label %do.body23

if.end.9.cleanup_crit_edge:                       ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body23:                                        ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1_reset_hw.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1_reset_hw, %if.then28)) #17
          to label %cleanup [label %if.then28], !srcloc !275

if.then28:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #19
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atl1_reset_hw.__UNIQUE_ID_ddebug484, ptr noundef %dev, ptr noundef nonnull @.str.83, i32 noundef %44) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %do.body23, %if.end.9.cleanup_crit_edge, %if.end.8.cleanup_crit_edge, %if.end.7.cleanup_crit_edge, %if.end.6.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %44, %if.then28 ], [ %44, %if.end.9.cleanup_crit_edge ], [ %44, %do.body23 ], [ 0, %if.end.8.cleanup_crit_edge ], [ 0, %if.end.7.cleanup_crit_edge ], [ 0, %if.end.6.cleanup_crit_edge ], [ 0, %if.end.5.cleanup_crit_edge ], [ 0, %if.end.4.cleanup_crit_edge ], [ 0, %if.end.3.cleanup_crit_edge ], [ 0, %if.end.2.cleanup_crit_edge ], [ 0, %if.end.1.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atl1_read_mac_addr(ptr noundef %hw) unnamed_addr #2 align 64 {
entry:
  %eth_addr.i = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %eth_addr.i)
  %perm_mac_addr.i = getelementptr %struct.atl1_hw, ptr %hw, i32 0, i32 39
  %0 = call ptr @memset(ptr %eth_addr.i, i32 255, i32 6)
  %1 = ptrtoint ptr %perm_mac_addr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %perm_mac_addr.i, align 4
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

is_valid_ether_addr.exit.i:                       ; preds = %entry
  %add.ptr.i.i.i = getelementptr %struct.atl1_hw, ptr %hw, i32 0, i32 39, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %5 to i32
  %or.i.i.i = or i32 %2, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.if.end.i_crit_edge, label %is_valid_ether_addr.exit.i.atl1_get_permanent_address.exit.thread_crit_edge

is_valid_ether_addr.exit.i.atl1_get_permanent_address.exit.thread_crit_edge: ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atl1_get_permanent_address.exit.thread

is_valid_ether_addr.exit.i.if.end.i_crit_edge:    ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

if.end.i:                                         ; preds = %is_valid_ether_addr.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 512
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #17, !srcloc !268
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %and.i.i = and i32 %9, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.atl1_check_eeprom_exist.exit.i_crit_edge, label %if.then.i.i

if.end.i.atl1_check_eeprom_exist.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atl1_check_eeprom_exist.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %and1.i.i = and i32 %9, -8193
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %11, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %12 = tail call i32 @llvm.bswap.i32(i32 %and1.i.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %12) #17, !srcloc !267
  br label %atl1_check_eeprom_exist.exit.i

atl1_check_eeprom_exist.exit.i:                   ; preds = %if.then.i.i, %if.end.i.atl1_check_eeprom_exist.exit.i_crit_edge
  %13 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %14, i32 88
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr5.i.i) #17, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !263
  %.mask.i.i = and i16 %15, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 108, i16 %.mask.i.i)
  %cmp.i.not.i = icmp eq i16 %.mask.i.i, 108
  br i1 %cmp.i.not.i, label %atl1_check_eeprom_exist.exit.i.while.cond.i_crit_edge, label %atl1_check_eeprom_exist.exit.i.while.cond43.i.preheader_crit_edge

atl1_check_eeprom_exist.exit.i.while.cond43.i.preheader_crit_edge: ; preds = %atl1_check_eeprom_exist.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond43.i.preheader

atl1_check_eeprom_exist.exit.i.while.cond.i_crit_edge: ; preds = %atl1_check_eeprom_exist.exit.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end27.i, %atl1_check_eeprom_exist.exit.i.while.cond.i_crit_edge
  %addr.sroa.11.0.i = phi i32 [ %addr.sroa.11.2.i, %if.end27.i ], [ 0, %atl1_check_eeprom_exist.exit.i.while.cond.i_crit_edge ]
  %addr.sroa.0.0.i = phi i32 [ %addr.sroa.0.2.i, %if.end27.i ], [ 0, %atl1_check_eeprom_exist.exit.i.while.cond.i_crit_edge ]
  %i.0.i = phi i32 [ %add28.i, %if.end27.i ], [ 0, %atl1_check_eeprom_exist.exit.i.while.cond.i_crit_edge ]
  %reg.0.i = phi i16 [ %reg.1.i, %if.end27.i ], [ 0, %atl1_check_eeprom_exist.exit.i.while.cond.i_crit_edge ]
  %key_valid.0.off0.i = phi i1 [ %59, %if.end27.i ], [ false, %atl1_check_eeprom_exist.exit.i.while.cond.i_crit_edge ]
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %add.ptr.i136.i = getelementptr i8, ptr %17, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136.i, i32 0) #17, !srcloc !267
  %add.i = shl i32 %i.0.i, 16
  %and1.i137.i = add i32 %add.i, 16777216
  %shl.i.i = and i32 %and1.i137.i, 2147221504
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  %add.ptr3.i138.i = getelementptr i8, ptr %19, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %20 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i138.i, i32 %20) #17, !srcloc !267
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 4
  %add.ptr5.i139.i = getelementptr i8, ptr %22, i32 108
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i139.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  tail call void @msleep(i32 noundef 2) #17
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %25, i32 108
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %.mask.i140.i = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.i140.i)
  %tobool10.not.i.i = icmp eq i32 %.mask.i140.i, 0
  br i1 %tobool10.not.i.i, label %for.cond.i.i, label %while.cond.i.if.then5.i_crit_edge

while.cond.i.if.then5.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then5.i

for.cond.i.i:                                     ; preds = %while.cond.i
  tail call void @msleep(i32 noundef 2) #17
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  %add.ptr7.1.i.i = getelementptr i8, ptr %28, i32 108
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.1.i.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %.mask.1.i.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.1.i.i)
  %tobool10.not.1.i.i = icmp eq i32 %.mask.1.i.i, 0
  br i1 %tobool10.not.1.i.i, label %for.cond.1.i.i, label %for.cond.i.i.if.then5.i_crit_edge

for.cond.i.i.if.then5.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then5.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  tail call void @msleep(i32 noundef 2) #17
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 4
  %add.ptr7.2.i.i = getelementptr i8, ptr %31, i32 108
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.2.i.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %.mask.2.i.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.2.i.i)
  %tobool10.not.2.i.i = icmp eq i32 %.mask.2.i.i, 0
  br i1 %tobool10.not.2.i.i, label %for.cond.2.i.i, label %for.cond.1.i.i.if.then5.i_crit_edge

for.cond.1.i.i.if.then5.i_crit_edge:              ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then5.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  tail call void @msleep(i32 noundef 2) #17
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 4
  %add.ptr7.3.i.i = getelementptr i8, ptr %34, i32 108
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.3.i.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %.mask.3.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.3.i.i)
  %tobool10.not.3.i.i = icmp eq i32 %.mask.3.i.i, 0
  br i1 %tobool10.not.3.i.i, label %for.cond.3.i.i, label %for.cond.2.i.i.if.then5.i_crit_edge

for.cond.2.i.i.if.then5.i_crit_edge:              ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then5.i

for.cond.3.i.i:                                   ; preds = %for.cond.2.i.i
  tail call void @msleep(i32 noundef 2) #17
  %36 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw, align 4
  %add.ptr7.4.i.i = getelementptr i8, ptr %37, i32 108
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.4.i.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %.mask.4.i.i = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.4.i.i)
  %tobool10.not.4.i.i = icmp eq i32 %.mask.4.i.i, 0
  br i1 %tobool10.not.4.i.i, label %for.cond.4.i.i, label %for.cond.3.i.i.if.then5.i_crit_edge

for.cond.3.i.i.if.then5.i_crit_edge:              ; preds = %for.cond.3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then5.i

for.cond.4.i.i:                                   ; preds = %for.cond.3.i.i
  tail call void @msleep(i32 noundef 2) #17
  %39 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw, align 4
  %add.ptr7.5.i.i = getelementptr i8, ptr %40, i32 108
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.5.i.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %.mask.5.i.i = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.5.i.i)
  %tobool10.not.5.i.i = icmp eq i32 %.mask.5.i.i, 0
  br i1 %tobool10.not.5.i.i, label %for.cond.5.i.i, label %for.cond.4.i.i.if.then5.i_crit_edge

for.cond.4.i.i.if.then5.i_crit_edge:              ; preds = %for.cond.4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then5.i

for.cond.5.i.i:                                   ; preds = %for.cond.4.i.i
  tail call void @msleep(i32 noundef 2) #17
  %42 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw, align 4
  %add.ptr7.6.i.i = getelementptr i8, ptr %43, i32 108
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.6.i.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %.mask.6.i.i = and i32 %44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.6.i.i)
  %tobool10.not.6.i.i = icmp eq i32 %.mask.6.i.i, 0
  br i1 %tobool10.not.6.i.i, label %for.cond.6.i.i, label %for.cond.5.i.i.if.then5.i_crit_edge

for.cond.5.i.i.if.then5.i_crit_edge:              ; preds = %for.cond.5.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then5.i

for.cond.6.i.i:                                   ; preds = %for.cond.5.i.i
  tail call void @msleep(i32 noundef 2) #17
  %45 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw, align 4
  %add.ptr7.7.i.i = getelementptr i8, ptr %46, i32 108
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.7.i.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %.mask.7.i.i = and i32 %47, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.7.i.i)
  %tobool10.not.7.i.i = icmp eq i32 %.mask.7.i.i, 0
  br i1 %tobool10.not.7.i.i, label %for.cond.7.i.i, label %for.cond.6.i.i.if.then5.i_crit_edge

for.cond.6.i.i.if.then5.i_crit_edge:              ; preds = %for.cond.6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then5.i

for.cond.7.i.i:                                   ; preds = %for.cond.6.i.i
  tail call void @msleep(i32 noundef 2) #17
  %48 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw, align 4
  %add.ptr7.8.i.i = getelementptr i8, ptr %49, i32 108
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.8.i.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %.mask.8.i.i = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.8.i.i)
  %tobool10.not.8.i.i = icmp eq i32 %.mask.8.i.i, 0
  br i1 %tobool10.not.8.i.i, label %for.cond.8.i.i, label %for.cond.7.i.i.if.then5.i_crit_edge

for.cond.7.i.i.if.then5.i_crit_edge:              ; preds = %for.cond.7.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then5.i

for.cond.8.i.i:                                   ; preds = %for.cond.7.i.i
  tail call void @msleep(i32 noundef 2) #17
  %51 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw, align 4
  %add.ptr7.9.i.i = getelementptr i8, ptr %52, i32 108
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.9.i.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %.mask.9.i.i = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask.9.i.i)
  %tobool10.not.9.i.i = icmp eq i32 %.mask.9.i.i, 0
  br i1 %tobool10.not.9.i.i, label %for.cond.8.i.i.while.end.i_crit_edge, label %for.cond.8.i.i.if.then5.i_crit_edge

for.cond.8.i.i.if.then5.i_crit_edge:              ; preds = %for.cond.8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then5.i

for.cond.8.i.i.while.end.i_crit_edge:             ; preds = %for.cond.8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

if.then5.i:                                       ; preds = %for.cond.8.i.i.if.then5.i_crit_edge, %for.cond.7.i.i.if.then5.i_crit_edge, %for.cond.6.i.i.if.then5.i_crit_edge, %for.cond.5.i.i.if.then5.i_crit_edge, %for.cond.4.i.i.if.then5.i_crit_edge, %for.cond.3.i.i.if.then5.i_crit_edge, %for.cond.2.i.i.if.then5.i_crit_edge, %for.cond.1.i.i.if.then5.i_crit_edge, %for.cond.i.i.if.then5.i_crit_edge, %while.cond.i.if.then5.i_crit_edge
  %54 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw, align 4
  %add.ptr17.i.i = getelementptr i8, ptr %55, i32 112
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i) #17, !srcloc !268
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br i1 %key_valid.0.off0.i, label %if.then7.i, label %if.else18.i

if.then7.i:                                       ; preds = %if.then5.i
  %58 = zext i16 %reg.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values)
  switch i16 %reg.0.i, label %if.then7.i.if.end27.i_crit_edge [
    i16 5256, label %if.then9.i
    i16 5260, label %if.then14.i
  ]

if.then7.i.if.end27.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27.i

if.then9.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27.i

if.then14.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end27.i

if.else18.i:                                      ; preds = %if.then5.i
  %and.i = and i32 %57, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %and.i)
  %cmp19.i = icmp eq i32 %and.i, 90
  br i1 %cmp19.i, label %if.then21.i, label %if.else18.i.while.end.i_crit_edge

if.else18.i.while.end.i_crit_edge:                ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i

if.then21.i:                                      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #19
  %shr.i = lshr i32 %57, 16
  %conv22.i = trunc i32 %shr.i to i16
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then21.i, %if.then14.i, %if.then9.i, %if.then7.i.if.end27.i_crit_edge
  %addr.sroa.11.2.i = phi i32 [ %addr.sroa.11.0.i, %if.then21.i ], [ %addr.sroa.11.0.i, %if.then9.i ], [ %57, %if.then14.i ], [ %addr.sroa.11.0.i, %if.then7.i.if.end27.i_crit_edge ]
  %addr.sroa.0.2.i = phi i32 [ %addr.sroa.0.0.i, %if.then21.i ], [ %57, %if.then9.i ], [ %addr.sroa.0.0.i, %if.then14.i ], [ %addr.sroa.0.0.i, %if.then7.i.if.end27.i_crit_edge ]
  %reg.1.i = phi i16 [ %conv22.i, %if.then21.i ], [ %reg.0.i, %if.then9.i ], [ %reg.0.i, %if.then14.i ], [ %reg.0.i, %if.then7.i.if.end27.i_crit_edge ]
  %59 = xor i1 %key_valid.0.off0.i, true
  %add28.i = add i32 %i.0.i, 4
  br label %while.cond.i

while.end.i:                                      ; preds = %if.else18.i.while.end.i_crit_edge, %for.cond.8.i.i.while.end.i_crit_edge
  %60 = tail call i32 @llvm.bswap.i32(i32 %addr.sroa.0.0.i) #17
  %eth_addr.i.2.eth_addr.i.2.eth_addr.2.eth_addr.2..sroa_idx20 = getelementptr inbounds i8, ptr %eth_addr.i, i32 2
  %61 = ptrtoint ptr %eth_addr.i.2.eth_addr.i.2.eth_addr.2.eth_addr.2..sroa_idx20 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %60, ptr %eth_addr.i.2.eth_addr.i.2.eth_addr.2.eth_addr.2..sroa_idx20, align 2
  %addr.sroa.11.4.extract.shift.i = lshr i32 %addr.sroa.11.0.i, 16
  %addr.sroa.11.4.extract.trunc.i = trunc i32 %addr.sroa.11.4.extract.shift.i to i16
  %62 = tail call i16 @llvm.bswap.i16(i16 %addr.sroa.11.4.extract.trunc.i) #17
  %63 = ptrtoint ptr %eth_addr.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %eth_addr.i, align 4
  %eth_addr.i.0.eth_addr.i.0.eth_addr.0.eth_addr.0..i = load i32, ptr %eth_addr.i, align 4
  %64 = and i32 %eth_addr.i.0.eth_addr.i.0.eth_addr.0.eth_addr.0..i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.i.not.i141.i = icmp eq i32 %64, 0
  br i1 %tobool.i.not.i141.i, label %is_valid_ether_addr.exit147.i, label %while.end.i.while.cond43.i.preheader_crit_edge

while.end.i.while.cond43.i.preheader_crit_edge:   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond43.i.preheader

is_valid_ether_addr.exit147.i:                    ; preds = %while.end.i
  %eth_addr.i.4.eth_addr.i.4.eth_addr.4.eth_addr.4..sroa_idx22 = getelementptr inbounds i8, ptr %eth_addr.i, i32 4
  %65 = ptrtoint ptr %eth_addr.i.4.eth_addr.i.4.eth_addr.4.eth_addr.4..sroa_idx22 to i32
  call void @__asan_load2_noabort(i32 %65)
  %eth_addr.i.4.eth_addr.i.4.eth_addr.4.eth_addr.4..i = load i16, ptr %eth_addr.i.4.eth_addr.i.4.eth_addr.4.eth_addr.4..sroa_idx22, align 4
  %conv.i.i143.i = zext i16 %eth_addr.i.4.eth_addr.i.4.eth_addr.4.eth_addr.4..i to i32
  %or.i.i144.i = or i32 %eth_addr.i.0.eth_addr.i.0.eth_addr.0.eth_addr.0..i, %conv.i.i143.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i144.i)
  %cmp.i.i145.not.i = icmp eq i32 %or.i.i144.i, 0
  br i1 %cmp.i.i145.not.i, label %is_valid_ether_addr.exit147.i.while.cond43.i.preheader_crit_edge, label %is_valid_ether_addr.exit147.i.cleanup.sink.split.i_crit_edge

is_valid_ether_addr.exit147.i.cleanup.sink.split.i_crit_edge: ; preds = %is_valid_ether_addr.exit147.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split.i

is_valid_ether_addr.exit147.i.while.cond43.i.preheader_crit_edge: ; preds = %is_valid_ether_addr.exit147.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond43.i.preheader

while.cond43.i.preheader:                         ; preds = %is_valid_ether_addr.exit147.i.while.cond43.i.preheader_crit_edge, %while.end.i.while.cond43.i.preheader_crit_edge, %atl1_check_eeprom_exist.exit.i.while.cond43.i.preheader_crit_edge
  br label %while.cond43.i

while.cond43.i:                                   ; preds = %if.end74.i, %while.cond43.i.preheader
  %addr.sroa.11.3.i = phi i32 [ %addr.sroa.11.5.i, %if.end74.i ], [ 0, %while.cond43.i.preheader ]
  %addr.sroa.0.3.i = phi i32 [ %addr.sroa.0.5.i, %if.end74.i ], [ 0, %while.cond43.i.preheader ]
  %i.1.i = phi i32 [ %add75.i, %if.end74.i ], [ 0, %while.cond43.i.preheader ]
  %reg.2.i = phi i16 [ %reg.3.i, %if.end74.i ], [ 0, %while.cond43.i.preheader ]
  %key_valid.2.off0.i = phi i1 [ %123, %if.end74.i ], [ false, %while.cond43.i.preheader ]
  %add45.i = add i32 %i.1.i, 126976
  %66 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw, align 4
  %add.ptr.i148.i = getelementptr i8, ptr %67, i32 520
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148.i, i32 0) #17, !srcloc !267
  %68 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hw, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %69, i32 516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %70 = tail call i32 @llvm.bswap.i32(i32 %add45.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %70) #17, !srcloc !267
  %71 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hw, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %72, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 109330) #17, !srcloc !267
  %73 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %74, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 633618) #17, !srcloc !267
  %75 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %76, i32 512
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  tail call void @msleep(i32 noundef 1) #17
  %78 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %79, i32 512
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i) #17, !srcloc !268
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %and.i149.i = and i32 %81, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i149.i)
  %tobool.not.i150.i = icmp eq i32 %and.i149.i, 0
  br i1 %tobool.not.i150.i, label %while.cond43.i.for.end.i.i_crit_edge, label %for.cond.i151.i

while.cond43.i.for.end.i.i_crit_edge:             ; preds = %while.cond43.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i.i

for.cond.i151.i:                                  ; preds = %while.cond43.i
  tail call void @msleep(i32 noundef 1) #17
  %82 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hw, align 4
  %add.ptr10.1.i.i = getelementptr i8, ptr %83, i32 512
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.1.i.i) #17, !srcloc !268
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %and.1.i.i = and i32 %85, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %and.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.cond.i151.i.for.end.i.i_crit_edge, label %for.cond.1.i152.i

for.cond.i151.i.for.end.i.i_crit_edge:            ; preds = %for.cond.i151.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i.i

for.cond.1.i152.i:                                ; preds = %for.cond.i151.i
  tail call void @msleep(i32 noundef 1) #17
  %86 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hw, align 4
  %add.ptr10.2.i.i = getelementptr i8, ptr %87, i32 512
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.2.i.i) #17, !srcloc !268
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %and.2.i.i = and i32 %89, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %and.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.cond.1.i152.i.for.end.i.i_crit_edge, label %for.cond.2.i153.i

for.cond.1.i152.i.for.end.i.i_crit_edge:          ; preds = %for.cond.1.i152.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i.i

for.cond.2.i153.i:                                ; preds = %for.cond.1.i152.i
  tail call void @msleep(i32 noundef 1) #17
  %90 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hw, align 4
  %add.ptr10.3.i.i = getelementptr i8, ptr %91, i32 512
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.3.i.i) #17, !srcloc !268
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %and.3.i.i = and i32 %93, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %and.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %for.cond.2.i153.i.for.end.i.i_crit_edge, label %for.cond.3.i154.i

for.cond.2.i153.i.for.end.i.i_crit_edge:          ; preds = %for.cond.2.i153.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i.i

for.cond.3.i154.i:                                ; preds = %for.cond.2.i153.i
  tail call void @msleep(i32 noundef 1) #17
  %94 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hw, align 4
  %add.ptr10.4.i.i = getelementptr i8, ptr %95, i32 512
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.4.i.i) #17, !srcloc !268
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %and.4.i.i = and i32 %97, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i.i)
  %tobool.not.4.i.i = icmp eq i32 %and.4.i.i, 0
  br i1 %tobool.not.4.i.i, label %for.cond.3.i154.i.for.end.i.i_crit_edge, label %for.cond.4.i155.i

for.cond.3.i154.i.for.end.i.i_crit_edge:          ; preds = %for.cond.3.i154.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i.i

for.cond.4.i155.i:                                ; preds = %for.cond.3.i154.i
  tail call void @msleep(i32 noundef 1) #17
  %98 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %hw, align 4
  %add.ptr10.5.i.i = getelementptr i8, ptr %99, i32 512
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.5.i.i) #17, !srcloc !268
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %and.5.i.i = and i32 %101, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i.i)
  %tobool.not.5.i.i = icmp eq i32 %and.5.i.i, 0
  br i1 %tobool.not.5.i.i, label %for.cond.4.i155.i.for.end.i.i_crit_edge, label %for.cond.5.i156.i

for.cond.4.i155.i.for.end.i.i_crit_edge:          ; preds = %for.cond.4.i155.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i.i

for.cond.5.i156.i:                                ; preds = %for.cond.4.i155.i
  tail call void @msleep(i32 noundef 1) #17
  %102 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hw, align 4
  %add.ptr10.6.i.i = getelementptr i8, ptr %103, i32 512
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.6.i.i) #17, !srcloc !268
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %and.6.i.i = and i32 %105, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i.i)
  %tobool.not.6.i.i = icmp eq i32 %and.6.i.i, 0
  br i1 %tobool.not.6.i.i, label %for.cond.5.i156.i.for.end.i.i_crit_edge, label %for.cond.6.i157.i

for.cond.5.i156.i.for.end.i.i_crit_edge:          ; preds = %for.cond.5.i156.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i.i

for.cond.6.i157.i:                                ; preds = %for.cond.5.i156.i
  tail call void @msleep(i32 noundef 1) #17
  %106 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hw, align 4
  %add.ptr10.7.i.i = getelementptr i8, ptr %107, i32 512
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.7.i.i) #17, !srcloc !268
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %and.7.i.i = and i32 %109, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i.i)
  %tobool.not.7.i.i = icmp eq i32 %and.7.i.i, 0
  br i1 %tobool.not.7.i.i, label %for.cond.6.i157.i.for.end.i.i_crit_edge, label %for.cond.7.i158.i

for.cond.6.i157.i.for.end.i.i_crit_edge:          ; preds = %for.cond.6.i157.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i.i

for.cond.7.i158.i:                                ; preds = %for.cond.6.i157.i
  tail call void @msleep(i32 noundef 1) #17
  %110 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hw, align 4
  %add.ptr10.8.i.i = getelementptr i8, ptr %111, i32 512
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.8.i.i) #17, !srcloc !268
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %and.8.i.i = and i32 %113, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8.i.i)
  %tobool.not.8.i.i = icmp eq i32 %and.8.i.i, 0
  br i1 %tobool.not.8.i.i, label %for.cond.7.i158.i.for.end.i.i_crit_edge, label %for.cond.8.i159.i

for.cond.7.i158.i.for.end.i.i_crit_edge:          ; preds = %for.cond.7.i158.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i.i

for.cond.8.i159.i:                                ; preds = %for.cond.7.i158.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @msleep(i32 noundef 1) #17
  %114 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hw, align 4
  %add.ptr10.9.i.i = getelementptr i8, ptr %115, i32 512
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.9.i.i) #17, !srcloc !268
  %117 = tail call i32 @llvm.bswap.i32(i32 %116) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.cond.8.i159.i, %for.cond.7.i158.i.for.end.i.i_crit_edge, %for.cond.6.i157.i.for.end.i.i_crit_edge, %for.cond.5.i156.i.for.end.i.i_crit_edge, %for.cond.4.i155.i.for.end.i.i_crit_edge, %for.cond.3.i154.i.for.end.i.i_crit_edge, %for.cond.2.i153.i.for.end.i.i_crit_edge, %for.cond.1.i152.i.for.end.i.i_crit_edge, %for.cond.i151.i.for.end.i.i_crit_edge, %while.cond43.i.for.end.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %81, %while.cond43.i.for.end.i.i_crit_edge ], [ %85, %for.cond.i151.i.for.end.i.i_crit_edge ], [ %89, %for.cond.1.i152.i.for.end.i.i_crit_edge ], [ %93, %for.cond.2.i153.i.for.end.i.i_crit_edge ], [ %97, %for.cond.3.i154.i.for.end.i.i_crit_edge ], [ %101, %for.cond.4.i155.i.for.end.i.i_crit_edge ], [ %105, %for.cond.5.i156.i.for.end.i.i_crit_edge ], [ %109, %for.cond.6.i157.i.for.end.i.i_crit_edge ], [ %113, %for.cond.7.i158.i.for.end.i.i_crit_edge ], [ %117, %for.cond.8.i159.i ]
  %and12.i.i = and i32 %.lcssa.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool13.not.i.i = icmp eq i32 %and12.i.i, 0
  br i1 %tobool13.not.i.i, label %if.then47.i, label %for.end.i.i.while.end76.i_crit_edge

for.end.i.i.while.end76.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end76.i

if.then47.i:                                      ; preds = %for.end.i.i
  %118 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hw, align 4
  %add.ptr17.i160.i = getelementptr i8, ptr %119, i32 520
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i160.i) #17, !srcloc !268
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br i1 %key_valid.2.off0.i, label %if.then49.i, label %if.else63.i

if.then49.i:                                      ; preds = %if.then47.i
  %122 = zext i16 %reg.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.118)
  switch i16 %reg.2.i, label %if.then49.i.if.end74.i_crit_edge [
    i16 5256, label %if.then53.i
    i16 5260, label %if.then59.i
  ]

if.then49.i.if.end74.i_crit_edge:                 ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end74.i

if.then53.i:                                      ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end74.i

if.then59.i:                                      ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end74.i

if.else63.i:                                      ; preds = %if.then47.i
  %and64.i = and i32 %121, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %and64.i)
  %cmp65.i = icmp eq i32 %and64.i, 90
  br i1 %cmp65.i, label %if.then67.i, label %if.else63.i.while.end76.i_crit_edge

if.else63.i.while.end76.i_crit_edge:              ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end76.i

if.then67.i:                                      ; preds = %if.else63.i
  call void @__sanitizer_cov_trace_pc() #19
  %shr68.i = lshr i32 %121, 16
  %conv69.i = trunc i32 %shr68.i to i16
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then67.i, %if.then59.i, %if.then53.i, %if.then49.i.if.end74.i_crit_edge
  %addr.sroa.11.5.i = phi i32 [ %addr.sroa.11.3.i, %if.then67.i ], [ %addr.sroa.11.3.i, %if.then53.i ], [ %121, %if.then59.i ], [ %addr.sroa.11.3.i, %if.then49.i.if.end74.i_crit_edge ]
  %addr.sroa.0.5.i = phi i32 [ %addr.sroa.0.3.i, %if.then67.i ], [ %121, %if.then53.i ], [ %addr.sroa.0.3.i, %if.then59.i ], [ %addr.sroa.0.3.i, %if.then49.i.if.end74.i_crit_edge ]
  %reg.3.i = phi i16 [ %conv69.i, %if.then67.i ], [ %reg.2.i, %if.then53.i ], [ %reg.2.i, %if.then59.i ], [ %reg.2.i, %if.then49.i.if.end74.i_crit_edge ]
  %123 = xor i1 %key_valid.2.off0.i, true
  %add75.i = add i32 %i.1.i, 4
  br label %while.cond43.i

while.end76.i:                                    ; preds = %if.else63.i.while.end76.i_crit_edge, %for.end.i.i.while.end76.i_crit_edge
  %124 = tail call i32 @llvm.bswap.i32(i32 %addr.sroa.0.3.i) #17
  %eth_addr.i.2.eth_addr.i.2.eth_addr.2.eth_addr.2..sroa_idx = getelementptr inbounds i8, ptr %eth_addr.i, i32 2
  %125 = ptrtoint ptr %eth_addr.i.2.eth_addr.i.2.eth_addr.2.eth_addr.2..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %125, i32 4)
  store i32 %124, ptr %eth_addr.i.2.eth_addr.i.2.eth_addr.2.eth_addr.2..sroa_idx, align 2
  %addr.sroa.11.4.extract.shift121.i = lshr i32 %addr.sroa.11.3.i, 16
  %addr.sroa.11.4.extract.trunc122.i = trunc i32 %addr.sroa.11.4.extract.shift121.i to i16
  %126 = tail call i16 @llvm.bswap.i16(i16 %addr.sroa.11.4.extract.trunc122.i) #17
  %127 = ptrtoint ptr %eth_addr.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 %126, ptr %eth_addr.i, align 4
  %eth_addr.i.0.eth_addr.i.0.eth_addr.0.eth_addr.0.175.i = load i32, ptr %eth_addr.i, align 4
  %128 = and i32 %eth_addr.i.0.eth_addr.i.0.eth_addr.0.eth_addr.0.175.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool.i.not.i161.i = icmp eq i32 %128, 0
  br i1 %tobool.i.not.i161.i, label %is_valid_ether_addr.exit167.i, label %while.end76.i.if.end87.i_crit_edge

while.end76.i.if.end87.i_crit_edge:               ; preds = %while.end76.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end87.i

is_valid_ether_addr.exit167.i:                    ; preds = %while.end76.i
  %eth_addr.i.4.eth_addr.i.4.eth_addr.4.eth_addr.4..sroa_idx21 = getelementptr inbounds i8, ptr %eth_addr.i, i32 4
  %129 = ptrtoint ptr %eth_addr.i.4.eth_addr.i.4.eth_addr.4.eth_addr.4..sroa_idx21 to i32
  call void @__asan_load2_noabort(i32 %129)
  %eth_addr.i.4.eth_addr.i.4.eth_addr.4.eth_addr.4.180.i = load i16, ptr %eth_addr.i.4.eth_addr.i.4.eth_addr.4.eth_addr.4..sroa_idx21, align 4
  %conv.i.i163.i = zext i16 %eth_addr.i.4.eth_addr.i.4.eth_addr.4.eth_addr.4.180.i to i32
  %or.i.i164.i = or i32 %eth_addr.i.0.eth_addr.i.0.eth_addr.0.eth_addr.0.175.i, %conv.i.i163.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i164.i)
  %cmp.i.i165.not.i = icmp eq i32 %or.i.i164.i, 0
  br i1 %cmp.i.i165.not.i, label %is_valid_ether_addr.exit167.i.if.end87.i_crit_edge, label %is_valid_ether_addr.exit167.i.cleanup.sink.split.i_crit_edge

is_valid_ether_addr.exit167.i.cleanup.sink.split.i_crit_edge: ; preds = %is_valid_ether_addr.exit167.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split.i

is_valid_ether_addr.exit167.i.if.end87.i_crit_edge: ; preds = %is_valid_ether_addr.exit167.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end87.i

if.end87.i:                                       ; preds = %is_valid_ether_addr.exit167.i.if.end87.i_crit_edge, %while.end76.i.if.end87.i_crit_edge
  %130 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %131, i32 5256
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %133 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %hw, align 4
  %add.ptr91.i = getelementptr i8, ptr %134, i32 5260
  %135 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr91.i) #17, !srcloc !262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !263
  %136 = ptrtoint ptr %eth_addr.i.2.eth_addr.i.2.eth_addr.2.eth_addr.2..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %136, i32 4)
  store i32 %132, ptr %eth_addr.i.2.eth_addr.i.2.eth_addr.2.eth_addr.2..sroa_idx, align 2
  %137 = ptrtoint ptr %eth_addr.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 0, ptr %eth_addr.i, align 4
  %eth_addr.i.0.eth_addr.i.0.eth_addr.0.eth_addr.0.176.i = load i32, ptr %eth_addr.i, align 4
  %138 = and i32 %eth_addr.i.0.eth_addr.i.0.eth_addr.0.eth_addr.0.176.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool.i.not.i168.i = icmp eq i32 %138, 0
  br i1 %tobool.i.not.i168.i, label %is_valid_ether_addr.exit174.i, label %if.end87.i.if.then_crit_edge

if.end87.i.if.then_crit_edge:                     ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

is_valid_ether_addr.exit174.i:                    ; preds = %if.end87.i
  %eth_addr.i.4.eth_addr.i.4.eth_addr.4.eth_addr.4..sroa_idx = getelementptr inbounds i8, ptr %eth_addr.i, i32 4
  %139 = ptrtoint ptr %eth_addr.i.4.eth_addr.i.4.eth_addr.4.eth_addr.4..sroa_idx to i32
  call void @__asan_load2_noabort(i32 %139)
  %eth_addr.i.4.eth_addr.i.4.eth_addr.4.eth_addr.4.181.i = load i16, ptr %eth_addr.i.4.eth_addr.i.4.eth_addr.4.eth_addr.4..sroa_idx, align 4
  %conv.i.i170.i = zext i16 %eth_addr.i.4.eth_addr.i.4.eth_addr.4.eth_addr.4.181.i to i32
  %or.i.i171.i = or i32 %eth_addr.i.0.eth_addr.i.0.eth_addr.0.eth_addr.0.176.i, %conv.i.i170.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i171.i)
  %cmp.i.i172.not.i = icmp eq i32 %or.i.i171.i, 0
  br i1 %cmp.i.i172.not.i, label %is_valid_ether_addr.exit174.i.if.then_crit_edge, label %is_valid_ether_addr.exit174.i.cleanup.sink.split.i_crit_edge

is_valid_ether_addr.exit174.i.cleanup.sink.split.i_crit_edge: ; preds = %is_valid_ether_addr.exit174.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split.i

is_valid_ether_addr.exit174.i.if.then_crit_edge:  ; preds = %is_valid_ether_addr.exit174.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

cleanup.sink.split.i:                             ; preds = %is_valid_ether_addr.exit174.i.cleanup.sink.split.i_crit_edge, %is_valid_ether_addr.exit167.i.cleanup.sink.split.i_crit_edge, %is_valid_ether_addr.exit147.i.cleanup.sink.split.i_crit_edge
  %140 = call ptr @memcpy(ptr %perm_mac_addr.i, ptr %eth_addr.i, i32 6)
  br label %atl1_get_permanent_address.exit.thread

atl1_get_permanent_address.exit.thread:           ; preds = %cleanup.sink.split.i, %is_valid_ether_addr.exit.i.atl1_get_permanent_address.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %eth_addr.i)
  br label %if.end

if.then:                                          ; preds = %is_valid_ether_addr.exit174.i.if.then_crit_edge, %if.end87.i.if.then_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %eth_addr.i)
  tail call void @get_random_bytes(ptr noundef %perm_mac_addr.i, i32 noundef 6) #17
  %141 = ptrtoint ptr %perm_mac_addr.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %perm_mac_addr.i, align 1
  %143 = and i8 %142, -4
  %144 = or i8 %143, 2
  store i8 %144, ptr %perm_mac_addr.i, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %atl1_get_permanent_address.exit.thread
  %ret.0 = phi i32 [ 1, %if.then ], [ 0, %atl1_get_permanent_address.exit.thread ]
  %uglygep = getelementptr i8, ptr %hw, i32 83
  %145 = call ptr @memcpy(ptr %uglygep, ptr %perm_mac_addr.i, i32 6)
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atl1_check_options(ptr nocapture noundef %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 4
  %bd_number = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 25
  %2 = ptrtoint ptr %bd_number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bd_number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp sgt i32 %3, 3
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.84, i32 noundef %3) #20
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.88) #20
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = load i32, ptr @num_int_mod_timer, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp6 = icmp ugt i32 %4, %3
  br i1 %cmp6, label %if.then7, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.then7:                                         ; preds = %if.end
  %arrayidx = getelementptr [5 x i32], ptr @int_mod_timer, i32 0, i32 %3
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp.i = icmp eq i32 %6, -1
  br i1 %cmp.i, label %if.then7.if.end10_crit_edge, label %sw.bb7.i

if.then7.if.end10_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

sw.bb7.i:                                         ; preds = %if.then7
  %7 = add i32 %6, -65001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64951, i32 %7)
  %8 = icmp ult i32 %7, -64951
  %dev39.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  br i1 %8, label %do.end38.i, label %do.end13.i

do.end13.i:                                       ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev39.i, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.90, i32 noundef %6) #20
  %phi.cast = trunc i32 %6 to i16
  br label %if.end10

do.end38.i:                                       ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev39.i, ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.90, i32 noundef %6, ptr noundef nonnull @.str.91) #20
  br label %if.end10

if.end10:                                         ; preds = %do.end38.i, %do.end13.i, %if.then7.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %.sink = phi i16 [ 100, %do.end38.i ], [ %phi.cast, %do.end13.i ], [ 100, %if.then7.if.end10_crit_edge ], [ 100, %if.end.if.end10_crit_edge ]
  %imt9 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 21
  %9 = ptrtoint ptr %imt9 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %.sink, ptr %imt9, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atl1_init_hw(ptr noundef %hw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 5264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #17, !srcloc !267
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 5268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 0) #17, !srcloc !267
  %flash_vendor.i = getelementptr inbounds %struct.atl1_hw, ptr %hw, i32 0, i32 37
  %4 = ptrtoint ptr %flash_vendor.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %flash_vendor.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.i = icmp ugt i8 %5, 2
  br i1 %cmp.i, label %if.then.i, label %entry.atl1_init_flash_opcode.exit_crit_edge

entry.atl1_init_flash_opcode.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %atl1_init_flash_opcode.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %flash_vendor.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %flash_vendor.i, align 2
  br label %atl1_init_flash_opcode.exit

atl1_init_flash_opcode.exit:                      ; preds = %if.then.i, %entry.atl1_init_flash_opcode.exit_crit_edge
  %7 = ptrtoint ptr %flash_vendor.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %flash_vendor.i, align 2
  %idxprom.i = zext i8 %8 to i32
  %cmd_program.i = getelementptr [3 x %struct.atlx_spi_flash_dev], ptr @flash_table, i32 0, i32 %idxprom.i, i32 3
  %9 = ptrtoint ptr %cmd_program.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cmd_program.i, align 2
  %11 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 528
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !276
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %10) #17, !srcloc !277
  %13 = ptrtoint ptr %flash_vendor.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %flash_vendor.i, align 2
  %idxprom5.i = zext i8 %14 to i32
  %cmd_sector_erase.i = getelementptr [3 x %struct.atlx_spi_flash_dev], ptr @flash_table, i32 0, i32 %idxprom5.i, i32 8
  %15 = ptrtoint ptr %cmd_sector_erase.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cmd_sector_erase.i, align 1
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %add.ptr8.i = getelementptr i8, ptr %18, i32 529
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !276
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i, i8 %16) #17, !srcloc !277
  %19 = ptrtoint ptr %flash_vendor.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %flash_vendor.i, align 2
  %idxprom10.i = zext i8 %20 to i32
  %cmd_chip_erase.i = getelementptr [3 x %struct.atlx_spi_flash_dev], ptr @flash_table, i32 0, i32 %idxprom10.i, i32 9
  %21 = ptrtoint ptr %cmd_chip_erase.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cmd_chip_erase.i, align 4
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  %add.ptr13.i = getelementptr i8, ptr %24, i32 530
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !276
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13.i, i8 %22) #17, !srcloc !277
  %25 = ptrtoint ptr %flash_vendor.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %flash_vendor.i, align 2
  %idxprom15.i = zext i8 %26 to i32
  %cmd_rdid.i = getelementptr [3 x %struct.atlx_spi_flash_dev], ptr @flash_table, i32 0, i32 %idxprom15.i, i32 7
  %27 = ptrtoint ptr %cmd_rdid.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %cmd_rdid.i, align 2
  %29 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw, align 4
  %add.ptr18.i = getelementptr i8, ptr %30, i32 531
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !276
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18.i, i8 %28) #17, !srcloc !277
  %31 = ptrtoint ptr %flash_vendor.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %flash_vendor.i, align 2
  %idxprom20.i = zext i8 %32 to i32
  %cmd_wren.i = getelementptr [3 x %struct.atlx_spi_flash_dev], ptr @flash_table, i32 0, i32 %idxprom20.i, i32 4
  %33 = ptrtoint ptr %cmd_wren.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %cmd_wren.i, align 1
  %35 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw, align 4
  %add.ptr23.i = getelementptr i8, ptr %36, i32 532
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !276
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr23.i, i8 %34) #17, !srcloc !277
  %37 = ptrtoint ptr %flash_vendor.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %flash_vendor.i, align 2
  %idxprom25.i = zext i8 %38 to i32
  %cmd_rdsr.i = getelementptr [3 x %struct.atlx_spi_flash_dev], ptr @flash_table, i32 0, i32 %idxprom25.i, i32 6
  %39 = ptrtoint ptr %cmd_rdsr.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %cmd_rdsr.i, align 1
  %41 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw, align 4
  %add.ptr28.i = getelementptr i8, ptr %42, i32 533
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !276
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.i, i8 %40) #17, !srcloc !277
  %43 = ptrtoint ptr %flash_vendor.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %flash_vendor.i, align 2
  %idxprom30.i = zext i8 %44 to i32
  %cmd_wrsr.i = getelementptr [3 x %struct.atlx_spi_flash_dev], ptr @flash_table, i32 0, i32 %idxprom30.i, i32 1
  %45 = ptrtoint ptr %cmd_wrsr.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %cmd_wrsr.i, align 4
  %47 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw, align 4
  %add.ptr33.i = getelementptr i8, ptr %48, i32 534
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !276
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr33.i, i8 %46) #17, !srcloc !277
  %49 = ptrtoint ptr %flash_vendor.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %flash_vendor.i, align 2
  %idxprom35.i = zext i8 %50 to i32
  %cmd_read.i = getelementptr [3 x %struct.atlx_spi_flash_dev], ptr @flash_table, i32 0, i32 %idxprom35.i, i32 2
  %51 = ptrtoint ptr %cmd_read.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %cmd_read.i, align 1
  %53 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hw, align 4
  %add.ptr38.i = getelementptr i8, ptr %54, i32 535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !276
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr38.i, i8 %52) #17, !srcloc !277
  %phy_configured = getelementptr inbounds %struct.atl1_hw, ptr %hw, i32 0, i32 40
  %55 = ptrtoint ptr %phy_configured to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %phy_configured, align 1, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not = icmp eq i8 %56, 0
  br i1 %tobool.not, label %if.then, label %atl1_init_flash_opcode.exit.cleanup_crit_edge

atl1_init_flash_opcode.exit.cleanup_crit_edge:    ; preds = %atl1_init_flash_opcode.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %atl1_init_flash_opcode.exit
  %57 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw, align 4
  %add.ptr.i22 = getelementptr i8, ptr %58, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 840192) #17, !srcloc !267
  %59 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw, align 4
  %add.ptr7.i = getelementptr i8, ptr %60, i32 5140
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 30
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.then
  %i.023.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 429496) #17
  %63 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hw, align 4
  %add.ptr10.i = getelementptr i8, ptr %64, i32 5140
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %66 = and i32 %65, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i = icmp eq i32 %66, 0
  br i1 %tobool.not.i, label %if.end, label %for.cond.i

if.end:                                           ; preds = %for.body.i
  %67 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw, align 4
  %add.ptr.i.i = getelementptr i8, ptr %68, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 687922432) #17, !srcloc !267
  %69 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hw, align 4
  %add.ptr7.i.i = getelementptr i8, ptr %70, i32 5140
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.023.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 30
  br i1 %exitcond.not.i.i, label %for.cond.i.i.cleanup_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

for.cond.i.i.cleanup_crit_edge:                   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end
  %i.023.i.i = phi i32 [ 0, %if.end ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 429496) #17
  %73 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %74, i32 5140
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %76 = and i32 %75, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i.i = icmp eq i32 %76, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %for.cond.i.i

if.end.i:                                         ; preds = %for.body.i.i
  %77 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hw, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %78, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 56832) #17, !srcloc !267
  %79 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hw, align 4
  %add.ptr7.i5.i = getelementptr i8, ptr %80, i32 5140
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i5.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br label %for.body.i12.i

for.cond.i8.i:                                    ; preds = %for.body.i12.i
  %inc.i6.i = add nuw nsw i32 %i.023.i9.i, 1
  %exitcond.not.i7.i = icmp eq i32 %inc.i6.i, 30
  br i1 %exitcond.not.i7.i, label %for.cond.i8.i.cleanup_crit_edge, label %for.cond.i8.i.for.body.i12.i_crit_edge

for.cond.i8.i.for.body.i12.i_crit_edge:           ; preds = %for.cond.i8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i12.i

for.cond.i8.i.cleanup_crit_edge:                  ; preds = %for.cond.i8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.i12.i:                                   ; preds = %for.cond.i8.i.for.body.i12.i_crit_edge, %if.end.i
  %i.023.i9.i = phi i32 [ 0, %if.end.i ], [ %inc.i6.i, %for.cond.i8.i.for.body.i12.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 429496) #17
  %83 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hw, align 4
  %add.ptr10.i10.i = getelementptr i8, ptr %84, i32 5140
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i10.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %86 = and i32 %85, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i11.i = icmp eq i32 %86, 0
  br i1 %tobool.not.i11.i, label %if.end9, label %for.cond.i8.i

if.end9:                                          ; preds = %for.body.i12.i
  call void @__sanitizer_cov_trace_pc() #19
  %call10 = tail call fastcc i32 @atl1_setup_link(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %for.cond.i8.i.cleanup_crit_edge, %for.cond.i.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %atl1_init_flash_opcode.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %atl1_init_flash_opcode.exit.cleanup_crit_edge ], [ %call10, %if.end9 ], [ 2, %for.cond.i8.i.cleanup_crit_edge ], [ 2, %for.cond.i.i.cleanup_crit_edge ], [ 2, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atl1_pcie_patch(ptr nocapture noundef readonly %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4860
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 6619136) #17, !srcloc !267
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 4104
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %5 = or i32 %4, 8388608
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 4104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %5) #17, !srcloc !267
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1_phy_config(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %t, i32 252
  %lock = getelementptr i8, ptr %t, i32 -356
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #17
  %phy_timer_pending = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %phy_timer_pending to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %phy_timer_pending, align 8
  %mii_autoneg_adv_reg = getelementptr i8, ptr %t, i32 320
  %1 = ptrtoint ptr %mii_autoneg_adv_reg to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %mii_autoneg_adv_reg, align 4
  %conv.i = zext i16 %2 to i32
  %or4.i = or i32 %conv.i, 12845056
  %3 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw1, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %5 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #17, !srcloc !267
  %6 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw1, align 4
  %add.ptr7.i = getelementptr i8, ptr %7, i32 5140
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.023.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 429496) #17
  %10 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw1, align 4
  %add.ptr10.i = getelementptr i8, ptr %11, i32 5140
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %13 = and i32 %12, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  %inc.i = add nuw nsw i32 %i.023.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 30
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %atl1_write_phy_reg.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

atl1_write_phy_reg.exit:                          ; preds = %for.body.i
  %mii_1000t_ctrl_reg = getelementptr i8, ptr %t, i32 322
  %14 = ptrtoint ptr %mii_1000t_ctrl_reg to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %mii_1000t_ctrl_reg, align 2
  %conv.i18 = zext i16 %15 to i32
  %or4.i20 = or i32 %conv.i18, 13172736
  %16 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw1, align 4
  %add.ptr.i21 = getelementptr i8, ptr %17, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %18 = tail call i32 @llvm.bswap.i32(i32 %or4.i20) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %18) #17, !srcloc !267
  %19 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw1, align 4
  %add.ptr7.i22 = getelementptr i8, ptr %20, i32 5140
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i22) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br label %for.body.i29

for.body.i29:                                     ; preds = %for.body.i29.for.body.i29_crit_edge, %atl1_write_phy_reg.exit
  %i.023.i26 = phi i32 [ 0, %atl1_write_phy_reg.exit ], [ %inc.i23, %for.body.i29.for.body.i29_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 429496) #17
  %23 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw1, align 4
  %add.ptr10.i27 = getelementptr i8, ptr %24, i32 5140
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i27) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %26 = and i32 %25, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i28 = icmp eq i32 %26, 0
  %inc.i23 = add nuw nsw i32 %i.023.i26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %inc.i23)
  %exitcond.not.i24 = icmp eq i32 %inc.i23, 30
  %or.cond43 = select i1 %tobool.not.i28, i1 true, i1 %exitcond.not.i24
  br i1 %or.cond43, label %atl1_write_phy_reg.exit31, label %for.body.i29.for.body.i29_crit_edge

for.body.i29.for.body.i29_crit_edge:              ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i29

atl1_write_phy_reg.exit31:                        ; preds = %for.body.i29
  %27 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw1, align 4
  %add.ptr.i32 = getelementptr i8, ptr %28, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 9486336) #17, !srcloc !267
  %29 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw1, align 4
  %add.ptr7.i33 = getelementptr i8, ptr %30, i32 5140
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i33) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br label %for.body.i40

for.body.i40:                                     ; preds = %for.body.i40.for.body.i40_crit_edge, %atl1_write_phy_reg.exit31
  %i.023.i37 = phi i32 [ 0, %atl1_write_phy_reg.exit31 ], [ %inc.i34, %for.body.i40.for.body.i40_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 429496) #17
  %33 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw1, align 4
  %add.ptr10.i38 = getelementptr i8, ptr %34, i32 5140
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i38) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %36 = and i32 %35, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i39 = icmp eq i32 %36, 0
  %inc.i34 = add nuw nsw i32 %i.023.i37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %inc.i34)
  %exitcond.not.i35 = icmp eq i32 %inc.i34, 30
  %or.cond44 = select i1 %tobool.not.i39, i1 true, i1 %exitcond.not.i35
  br i1 %or.cond44, label %atl1_write_phy_reg.exit42, label %for.body.i40.for.body.i40_crit_edge

for.body.i40.for.body.i40_crit_edge:              ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i40

atl1_write_phy_reg.exit42:                        ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1_reset_dev_task(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -520
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  tail call void @netif_device_detach(ptr noundef %1) #17
  tail call fastcc void @atl1_down(ptr noundef %add.ptr)
  %call = tail call fastcc i32 @atl1_up(ptr noundef %add.ptr)
  tail call void @netif_device_attach(ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atlx_link_chg_task(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -564
  %lock = getelementptr i8, ptr %work, i32 -312
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #17
  tail call fastcc void @atl1_check_link(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atl1_via_workaround(ptr nocapture noundef readonly %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #17, !srcloc !262
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !263
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and1 = and i32 %conv, 64511
  %spec.select = select i1 %tobool.not, i32 %conv, i32 %and1
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %6 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %6) #17, !srcloc !267
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1_open(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call void @netif_carrier_off(ptr noundef %netdev) #17
  %call1 = tail call fastcc i32 @atl1_setup_ring_resources(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @atl1_up(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %err_up

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

err_up:                                           ; preds = %if.end
  %hw.i = getelementptr i8, ptr %netdev, i32 3164
  %call.i = tail call fastcc i32 @atl1_reset_hw(ptr noundef %hw.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %err_up.cleanup_crit_edge

err_up.cleanup_crit_edge:                         ; preds = %err_up
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i:                                         ; preds = %err_up
  call void @__sanitizer_cov_trace_pc() #19
  %call2.i = tail call fastcc i32 @atl1_init_hw(ptr noundef %hw.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %err_up.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call2, %err_up.cleanup_crit_edge ], [ %call2, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1_close(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call fastcc void @atl1_down(ptr noundef %add.ptr.i)
  %pdev1.i = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1.i, align 4
  %tpd_ring2.i = getelementptr i8, ptr %netdev, i32 2976
  %rfd_ring3.i = getelementptr i8, ptr %netdev, i32 3048
  %rrd_ring4.i = getelementptr i8, ptr %netdev, i32 3072
  %ring_header5.i = getelementptr i8, ptr %netdev, i32 2964
  tail call fastcc void @atl1_clean_tx_ring(ptr noundef %add.ptr.i) #17
  tail call fastcc void @atl1_clean_rx_ring(ptr noundef %add.ptr.i) #17
  %buffer_info.i = getelementptr i8, ptr %netdev, i32 3000
  %2 = ptrtoint ptr %buffer_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer_info.i, align 4
  tail call void @kfree(ptr noundef %3) #17
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %size.i = getelementptr i8, ptr %netdev, i32 2972
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i, align 4
  %6 = ptrtoint ptr %ring_header5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring_header5.i, align 4
  %dma.i = getelementptr i8, ptr %netdev, i32 2968
  %8 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef 0) #17
  %10 = ptrtoint ptr %buffer_info.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %buffer_info.i, align 4
  %11 = ptrtoint ptr %tpd_ring2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %tpd_ring2.i, align 4
  %dma8.i = getelementptr i8, ptr %netdev, i32 2980
  %12 = ptrtoint ptr %dma8.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %dma8.i, align 4
  %buffer_info9.i = getelementptr i8, ptr %netdev, i32 3068
  %13 = ptrtoint ptr %buffer_info9.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %buffer_info9.i, align 4
  %14 = ptrtoint ptr %rfd_ring3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %rfd_ring3.i, align 4
  %dma11.i = getelementptr i8, ptr %netdev, i32 3052
  %15 = ptrtoint ptr %dma11.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %dma11.i, align 4
  %16 = ptrtoint ptr %rrd_ring4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %rrd_ring4.i, align 4
  %dma13.i = getelementptr i8, ptr %netdev, i32 3076
  %17 = ptrtoint ptr %dma13.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %dma13.i, align 4
  %smb.i = getelementptr i8, ptr %netdev, i32 3260
  %18 = call ptr @memset(ptr %smb.i, i32 0, i32 16)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1_xmit_frame(ptr noundef %skb, ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tpd_ring1 = getelementptr i8, ptr %netdev, i32 2976
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !270

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %nr_frags6 = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %nr_frags6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr_frags6, align 2
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp7225.not = icmp eq i8 %7, 0
  br i1 %cmp7225.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %f.0227 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %count.0226 = phi i32 [ %add11, %for.body.for.body_crit_edge ], [ 1, %if.end.for.body_crit_edge ]
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %5, i32 0, i32 12, i32 %f.0227, i32 1
  %8 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bv_len.i, align 4
  %sub = add i32 %9, 12287
  %div = udiv i32 %sub, 12288
  %add11 = add i32 %div, %count.0226
  %inc = add nuw nsw i32 %f.0227, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 1, %if.end.for.end_crit_edge ], [ %add11, %for.body.for.end_crit_edge ]
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %gso_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool14.not = icmp eq i16 %11, 0
  br i1 %tobool14.not, label %for.end.if.end43_crit_edge, label %if.then15

for.end.if.end43_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43

if.then15:                                        ; preds = %for.end
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %12 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %13)
  %cmp17 = icmp eq i16 %13, 2048
  br i1 %cmp17, label %if.then19, label %if.then15.if.end43_crit_edge

if.then15.if.end43_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43

if.then19:                                        ; preds = %if.then15
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %14 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %16 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %17 to i32
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %doff.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load.i.i = load i16, ptr %doff.i.i, align 4
  %21 = lshr i16 %bf.load.i.i, 10
  %22 = and i16 %21, 60
  %mul.i.i = zext i16 %22 to i32
  %add22 = add i32 %sub.ptr.sub.i, %mul.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %add22)
  %cmp23 = icmp ult i32 %sub.i, %add22
  br i1 %cmp23, label %if.then31, label %if.end32, !prof !270

if.then31:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #17
  br label %cleanup

if.end32:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %add22)
  %cmp33.not = icmp eq i32 %sub.i, %add22
  br i1 %cmp33.not, label %if.end32.if.end43_crit_edge, label %if.then35

if.end32.if.end43_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  %sub36 = add i32 %sub.i, 12287
  %sub38 = sub i32 %sub36, %add22
  %div39 = udiv i32 %sub38, 12288
  %add40 = add i32 %div39, %count.0.lcssa
  br label %if.end43

if.end43:                                         ; preds = %if.then35, %if.end32.if.end43_crit_edge, %if.then15.if.end43_crit_edge, %for.end.if.end43_crit_edge
  %count.1 = phi i32 [ %add40, %if.then35 ], [ %count.0.lcssa, %if.end32.if.end43_crit_edge ], [ %count.0.lcssa, %if.then15.if.end43_crit_edge ], [ %count.0.lcssa, %for.end.if.end43_crit_edge ]
  %next_to_clean1.i = getelementptr i8, ptr %netdev, i32 2992
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %next_to_clean1.i, i32 noundef 4) #17
  %23 = ptrtoint ptr %next_to_clean1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %next_to_clean1.i, align 4
  %next_to_use2.i = getelementptr i8, ptr %netdev, i32 2996
  %call.i.i23.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %next_to_use2.i, i32 noundef 4) #17
  %25 = ptrtoint ptr %next_to_use2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %next_to_use2.i, align 4
  %conv5.i = and i32 %24, 65535
  %conv6.i = and i32 %26, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv5.i, i32 %conv6.i)
  %cmp.i = icmp ugt i32 %conv5.i, %conv6.i
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  %27 = xor i32 %conv6.i, -1
  %sub10.i = add nsw i32 %conv5.i, %27
  br label %atl1_tpd_avail.exit

cond.false.i:                                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  %count.i = getelementptr i8, ptr %netdev, i32 2986
  %28 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %count.i, align 2
  %conv11.i = zext i16 %29 to i32
  %30 = xor i32 %conv6.i, -1
  %add.i = add nsw i32 %conv5.i, %30
  %sub15.i = add nsw i32 %add.i, %conv11.i
  br label %atl1_tpd_avail.exit

atl1_tpd_avail.exit:                              ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %sub10.i, %cond.true.i ], [ %sub15.i, %cond.false.i ]
  %conv46 = and i32 %cond.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %count.1, i32 %conv46)
  %cmp47 = icmp sgt i32 %count.1, %conv46
  br i1 %cmp47, label %if.then49, label %if.end53

if.then49:                                        ; preds = %atl1_tpd_avail.exit
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %31 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %32, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #17
  %msg_enable = getelementptr i8, ptr %netdev, i32 3112
  %33 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %msg_enable, align 8
  %and = and i32 %34, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool50.not = icmp eq i32 %and, 0
  br i1 %tobool50.not, label %if.then49.cleanup_crit_edge, label %do.end

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end:                                           ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #19
  %pdev = getelementptr i8, ptr %netdev, i32 2308
  %35 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev, ptr noundef nonnull @.str.40) #20
  br label %cleanup

if.end53:                                         ; preds = %atl1_tpd_avail.exit
  %37 = ptrtoint ptr %tpd_ring1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tpd_ring1, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %next_to_use2.i, i32 noundef 4) #17
  %39 = ptrtoint ptr %next_to_use2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %next_to_use2.i, align 4
  %idxprom = and i32 %40, 65535
  %arrayidx56 = getelementptr %struct.tx_packet_desc, ptr %38, i32 %idxprom
  %41 = call ptr @memset(ptr %arrayidx56, i32 0, i32 16)
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %42 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %bf.load = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool57.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool57.not, label %if.end53.if.end71_crit_edge, label %if.then58

if.end53.if.end71_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end71

if.then58:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #19
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %43 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %vlan_tci, align 2
  %shl = shl i16 %44, 4
  %45 = lshr i16 %44, 13
  %or = or i16 %shl, %45
  %46 = lshr i16 %44, 9
  %and63 = and i16 %46, 8
  %or64 = or i16 %or, %and63
  %word3 = getelementptr %struct.tx_packet_desc, ptr %38, i32 %idxprom, i32 2
  %47 = ptrtoint ptr %word3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %word3, align 4
  %or66 = or i32 %48, 4
  store i32 %or66, ptr %word3, align 4
  %conv67 = zext i16 %or64 to i32
  %shl69 = shl nuw i32 %conv67, 16
  %word2 = getelementptr %struct.tx_packet_desc, ptr %38, i32 %idxprom, i32 1
  %49 = ptrtoint ptr %word2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %word2, align 8
  %or70 = or i32 %shl69, %50
  store i32 %or70, ptr %word2, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then58, %if.end53.if.end71_crit_edge
  %51 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %end.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool.not.i = icmp eq i16 %54, 0
  br i1 %tobool.not.i, label %if.end71.if.then78_crit_edge, label %if.then.i

if.end71.if.then78_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then78

if.then.i:                                        ; preds = %if.end71
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %55 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.then.i.if.end.i_crit_edge, label %skb_header_cloned.exit.i.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

skb_header_cloned.exit.i.i:                       ; preds = %if.then.i
  %dataref1.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %52, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i, i32 noundef 4) #17
  %56 = ptrtoint ptr %dataref1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %dataref1.i.i.i, align 4
  %and.i.i.i = and i32 %57, 65535
  %shr.i.i.i = ashr i32 %57, 16
  %sub.i.i.i = sub nsw i32 %and.i.i.i, %shr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %sub.i.i.i, 1
  br i1 %cmp.i.not.i.i, label %skb_header_cloned.exit.i.i.if.end.i_crit_edge, label %skb_cow_head.exit.i

skb_header_cloned.exit.i.i.if.end.i_crit_edge:    ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

skb_cow_head.exit.i:                              ; preds = %skb_header_cloned.exit.i.i
  %call4.i.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %cmp.i144 = icmp slt i32 %call4.i.i.i, 0
  br i1 %cmp.i144, label %skb_cow_head.exit.i.if.then75_crit_edge, label %skb_cow_head.exit.i.if.end.i_crit_edge

skb_cow_head.exit.i.if.end.i_crit_edge:           ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

skb_cow_head.exit.i.if.then75_crit_edge:          ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then75

if.end.i:                                         ; preds = %skb_cow_head.exit.i.if.end.i_crit_edge, %skb_header_cloned.exit.i.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %58 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %protocol.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %59)
  %cmp3.i = icmp eq i16 %59, 2048
  br i1 %cmp3.i, label %if.then5.i, label %if.end.i.if.then78_crit_edge

if.end.i.if.then78_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then78

if.then5.i:                                       ; preds = %if.end.i
  %head.i.i.i145 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %60 = ptrtoint ptr %head.i.i.i145 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %head.i.i.i145, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %62 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i146 = zext i16 %63 to i32
  %add.ptr.i.i.i147 = getelementptr i8, ptr %61, i32 %conv.i.i.i146
  %data.i148 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %64 = ptrtoint ptr %data.i148 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data.i148, align 4
  %sub.ptr.lhs.cast.i149 = ptrtoint ptr %add.ptr.i.i.i147 to i32
  %sub.ptr.rhs.cast.i150 = ptrtoint ptr %65 to i32
  %sub.ptr.sub.i151 = sub i32 %sub.ptr.lhs.cast.i149, %sub.ptr.rhs.cast.i150
  %tot_len.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i147, i32 0, i32 2
  %66 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %tot_len.i, align 2
  %conv7.i = zext i16 %67 to i32
  %add.i152 = add i32 %sub.ptr.sub.i151, %conv7.i
  %68 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i152, i32 %69)
  %cmp8.i = icmp ult i32 %add.i152, %69
  br i1 %cmp8.i, label %cond.true.i.i, label %if.then5.i.if.end12.i_crit_edge

if.then5.i.if.end12.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12.i

cond.true.i.i:                                    ; preds = %if.then5.i
  %70 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i.i1.i = icmp eq i32 %71, 0
  br i1 %tobool.not.i.i1.i, label %__skb_trim.exit.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i154 = tail call i32 @___pskb_trim(ptr noundef %skb, i32 noundef %add.i152) #17
  br label %if.end12.i

__skb_trim.exit.i.i.i:                            ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %72 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %add.i152, ptr %len.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %65, i32 %add.i152
  %tail.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %73 = ptrtoint ptr %tail.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %add.ptr.i.i.i.i.i.i, ptr %tail.i.i.i.i.i.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %__skb_trim.exit.i.i.i, %if.then.i.i.i, %if.then5.i.if.end12.i_crit_edge
  %74 = ptrtoint ptr %head.i.i.i145 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %head.i.i.i145, align 8
  %transport_header.i.i.i155 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %76 = ptrtoint ptr %transport_header.i.i.i155 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %transport_header.i.i.i155, align 2
  %conv.i.i3.i = zext i16 %77 to i32
  %add.ptr.i.i4.i = getelementptr i8, ptr %75, i32 %conv.i.i3.i
  %78 = ptrtoint ptr %data.i148 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i148, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i4.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %79 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %doff.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i4.i, i32 0, i32 4
  %80 = ptrtoint ptr %doff.i.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %bf.load.i.i5.i = load i16, ptr %doff.i.i.i, align 4
  %81 = lshr i16 %bf.load.i.i5.i, 10
  %82 = and i16 %81, 60
  %mul.i.i.i = zext i16 %82 to i32
  %add15.i = add i32 %sub.ptr.sub.i.i, %mul.i.i.i
  %83 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len.i, align 4
  %conv18.i = and i32 %add15.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %conv18.i)
  %cmp19.i = icmp eq i32 %84, %conv18.i
  %check.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i147, i32 0, i32 7
  %85 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 0, ptr %check.i, align 2
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i147, i32 0, i32 8
  %86 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %saddr.i, align 4
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i147, i32 0, i32 9
  %88 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %daddr.i, align 4
  br i1 %cmp19.i, label %if.then21.i, label %if.end38.i

if.then21.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #19
  %90 = ptrtoint ptr %head.i.i.i145 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %head.i.i.i145, align 8
  %92 = ptrtoint ptr %transport_header.i.i.i155 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %transport_header.i.i.i155, align 2
  %conv.i.i.i8.i = zext i16 %93 to i32
  %add.ptr.i.i.i9.i = getelementptr i8, ptr %91, i32 %conv.i.i.i8.i
  %doff.i.i10.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i9.i, i32 0, i32 4
  %94 = ptrtoint ptr %doff.i.i10.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %bf.load.i.i11.i = load i16, ptr %doff.i.i10.i, align 4
  %95 = lshr i16 %bf.load.i.i11.i, 10
  %96 = and i16 %95, 60
  %narrow.i = add nuw nsw i16 %96, 6
  %add.i.i.i = zext i16 %narrow.i to i32
  %97 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %89, i32 %87, i32 %add.i.i.i) #21, !srcloc !278
  %98 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %97) #21, !srcloc !279
  %neg.i.i.i = xor i32 %98, -1
  %shr.i.i13.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i14.i = trunc i32 %shr.i.i13.i to i16
  %neg.i = xor i16 %conv.i.i14.i, -1
  %check27.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i9.i, i32 0, i32 6
  %99 = ptrtoint ptr %check27.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %neg.i, ptr %check27.i, align 4
  %100 = ptrtoint ptr %add.ptr.i.i.i147 to i32
  call void @__asan_load1_noabort(i32 %100)
  %bf.load.i = load i8, ptr %add.ptr.i.i.i147, align 4
  %101 = and i8 %bf.load.i, 15
  %and.i = zext i8 %101 to i32
  %shl.i = shl nuw nsw i32 %and.i, 10
  %word3.i = getelementptr %struct.tx_packet_desc, ptr %38, i32 %idxprom, i32 2
  %102 = ptrtoint ptr %word3.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %word3.i, align 4
  %or.i = or i32 %shl.i, %103
  store i32 %or.i, ptr %word3.i, align 4
  %104 = ptrtoint ptr %head.i.i.i145 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %head.i.i.i145, align 8
  %106 = ptrtoint ptr %transport_header.i.i.i155 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %transport_header.i.i.i155, align 2
  %conv.i.i.i21.i = zext i16 %107 to i32
  %add.ptr.i.i.i22.i = getelementptr i8, ptr %105, i32 %conv.i.i.i21.i
  %doff.i.i23.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i22.i, i32 0, i32 4
  %108 = ptrtoint ptr %doff.i.i23.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %bf.load.i.i24.i = load i16, ptr %doff.i.i23.i, align 4
  %109 = lshr i16 %bf.load.i.i24.i, 10
  %mul.i.i25.i = zext i16 %109 to i32
  %110 = shl nuw nsw i32 %mul.i.i25.i, 12
  %shl31.i = and i32 %110, 245760
  %or33.i = or i32 %or.i, %shl31.i
  %or37.i = or i32 %or33.i, 96
  store i32 %or37.i, ptr %word3.i, align 4
  br label %if.end84

if.end38.i:                                       ; preds = %if.end12.i
  %111 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %89, i32 %87, i32 6) #21, !srcloc !278
  %112 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %111) #21, !srcloc !279
  %neg.i.i26.i = xor i32 %112, -1
  %shr.i.i27.i = lshr i32 %neg.i.i26.i, 16
  %conv.i.i28.i = trunc i32 %shr.i.i27.i to i16
  %neg44.i = xor i16 %conv.i.i28.i, -1
  %113 = ptrtoint ptr %head.i.i.i145 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %head.i.i.i145, align 8
  %115 = ptrtoint ptr %transport_header.i.i.i155 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %transport_header.i.i.i155, align 2
  %conv.i.i31.i = zext i16 %116 to i32
  %add.ptr.i.i32.i = getelementptr i8, ptr %114, i32 %conv.i.i31.i
  %check47.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i32.i, i32 0, i32 6
  %117 = ptrtoint ptr %check47.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %neg44.i, ptr %check47.i, align 4
  %118 = load ptr, ptr %head.i.i.i145, align 8
  %119 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i156 = zext i16 %120 to i32
  %add.ptr.i.i157 = getelementptr i8, ptr %118, i32 %conv.i.i156
  %sub.ptr.rhs.cast50.i = ptrtoint ptr %add.ptr.i.i157 to i32
  %sub.ptr.sub51.i = sub i32 %sub.ptr.lhs.cast.i149, %sub.ptr.rhs.cast50.i
  %trunc.i = trunc i32 %sub.ptr.sub51.i to i8
  %121 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.119)
  switch i8 %trunc.i, label %if.end38.i.if.then75_crit_edge [
    i8 8, label %if.then56.i
    i8 0, label %if.end38.i.if.end64.i_crit_edge
  ]

if.end38.i.if.end64.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end64.i

if.end38.i.if.then75_crit_edge:                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then75

if.then56.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #19
  %word357.i = getelementptr %struct.tx_packet_desc, ptr %38, i32 %idxprom, i32 2
  %122 = ptrtoint ptr %word357.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %word357.i, align 4
  %or58.i = or i32 %123, 512
  store i32 %or58.i, ptr %word357.i, align 4
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then56.i, %if.end38.i.if.end64.i_crit_edge
  %124 = ptrtoint ptr %add.ptr.i.i.i147 to i32
  call void @__asan_load1_noabort(i32 %124)
  %bf.load65.i = load i8, ptr %add.ptr.i.i.i147, align 4
  %125 = and i8 %bf.load65.i, 15
  %and68.i = zext i8 %125 to i32
  %shl69.i = shl nuw nsw i32 %and68.i, 10
  %word370.i = getelementptr %struct.tx_packet_desc, ptr %38, i32 %idxprom, i32 2
  %126 = ptrtoint ptr %word370.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %word370.i, align 4
  %or71.i = or i32 %shl69.i, %127
  store i32 %or71.i, ptr %word370.i, align 4
  %128 = ptrtoint ptr %head.i.i.i145 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %head.i.i.i145, align 8
  %130 = ptrtoint ptr %transport_header.i.i.i155 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %transport_header.i.i.i155, align 2
  %conv.i.i.i35.i = zext i16 %131 to i32
  %add.ptr.i.i.i36.i = getelementptr i8, ptr %129, i32 %conv.i.i.i35.i
  %doff.i.i37.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i36.i, i32 0, i32 4
  %132 = ptrtoint ptr %doff.i.i37.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %bf.load.i.i38.i = load i16, ptr %doff.i.i37.i, align 4
  %133 = lshr i16 %bf.load.i.i38.i, 10
  %mul.i.i39.i = zext i16 %133 to i32
  %134 = shl nuw nsw i32 %mul.i.i39.i, 12
  %shl75.i = and i32 %134, 245760
  %or77.i = or i32 %shl75.i, %or71.i
  store i32 %or77.i, ptr %word370.i, align 4
  %135 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %end.i, align 4
  %gso_size79.i = getelementptr inbounds %struct.skb_shared_info, ptr %136, i32 0, i32 4
  %137 = ptrtoint ptr %gso_size79.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %gso_size79.i, align 4
  %and81.i = zext i16 %138 to i32
  %shl82.i = shl i32 %and81.i, 19
  %or84.i = or i32 %or77.i, %shl82.i
  %or86.i = or i32 %or84.i, 16
  store i32 %or86.i, ptr %word370.i, align 4
  br label %if.end84

if.then75:                                        ; preds = %if.end38.i.if.then75_crit_edge, %skb_cow_head.exit.i.if.then75_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #17
  br label %cleanup

if.then78:                                        ; preds = %if.end.i.if.then78_crit_edge, %if.end71.if.then78_crit_edge
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %139 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %bf.load.i158 = load i16, ptr %ip_summed.i, align 8
  %140 = and i16 %bf.load.i158, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %140)
  %cmp.i159 = icmp eq i16 %140, 1536
  br i1 %cmp.i159, label %if.then.i163, label %if.then78.if.end84_crit_edge, !prof !271

if.then78.if.end84_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end84

if.then.i163:                                     ; preds = %if.then78
  %141 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %141, align 8
  %conv.i.i160 = zext i16 %143 to i32
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %144 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i161 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %146 = ptrtoint ptr %head.i.i.i161 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %head.i.i.i161, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %145 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %147 to i32
  %sub.ptr.sub.i.neg.i.i = sub i32 %conv.i.i160, %sub.ptr.lhs.cast.i.i.i
  %sub.i.i = add i32 %sub.ptr.sub.i.neg.i.i, %sub.ptr.rhs.cast.i.i.i
  %and.i162 = and i32 %sub.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i162)
  %tobool9.not.i = icmp eq i32 %and.i162, 0
  br i1 %tobool9.not.i, label %if.end20.i, label %if.then16.i, !prof !271

if.then16.i:                                      ; preds = %if.then.i163
  %msg_enable.i = getelementptr i8, ptr %netdev, i32 3112
  %148 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %msg_enable.i, align 8
  %and17.i = and i32 %149, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.then16.i.if.then82_crit_edge, label %do.end.i

if.then16.i.if.then82_crit_edge:                  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then82

do.end.i:                                         ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #19
  %pdev.i = getelementptr i8, ptr %netdev, i32 2308
  %150 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %151, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev.i, ptr noundef nonnull @.str.43) #20
  br label %if.then82

if.end20.i:                                       ; preds = %if.then.i163
  call void @__sanitizer_cov_trace_pc() #19
  %csum_offset.i = getelementptr inbounds %struct.anon.60, ptr %141, i32 0, i32 1
  %152 = ptrtoint ptr %csum_offset.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %csum_offset.i, align 2
  %conv6.i164 = zext i16 %153 to i32
  %add.i165 = add i32 %sub.i.i, %conv6.i164
  %conv4.i = shl i32 %sub.i.i, 16
  %shl.i166 = and i32 %conv4.i, 16711680
  %word3.i167 = getelementptr %struct.tx_packet_desc, ptr %38, i32 %idxprom, i32 2
  %154 = ptrtoint ptr %word3.i167 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %word3.i167, align 4
  %shl25.i = shl i32 %add.i165, 24
  %or.i168 = or i32 %shl.i166, %155
  %or27.i = or i32 %or.i168, %shl25.i
  %or29.i = or i32 %or27.i, 8
  store i32 %or29.i, ptr %word3.i167, align 4
  br label %if.end84

if.then82:                                        ; preds = %do.end.i, %if.then16.i.if.then82_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #17
  br label %cleanup

if.end84:                                         ; preds = %if.end20.i, %if.then78.if.end84_crit_edge, %if.end64.i, %if.then21.i
  %156 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %len.i, align 4
  %158 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %data_len.i, align 8
  %sub.i170 = sub i32 %157, %159
  %conv4.i171 = trunc i32 %sub.i170 to i16
  %160 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %end.i, align 4
  %nr_frags5.i = getelementptr inbounds %struct.skb_shared_info, ptr %161, i32 0, i32 2
  %162 = ptrtoint ptr %nr_frags5.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %nr_frags5.i, align 2
  %conv6.i173 = zext i8 %163 to i32
  %call.i.i.i174 = tail call zeroext i1 @__kasan_check_read(ptr noundef %next_to_use2.i, i32 noundef 4) #17
  %164 = ptrtoint ptr %next_to_use2.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load volatile i32, ptr %next_to_use2.i, align 4
  %conv9.i = trunc i32 %165 to i16
  %buffer_info10.i = getelementptr i8, ptr %netdev, i32 3000
  %166 = ptrtoint ptr %buffer_info10.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %buffer_info10.i, align 4
  %idxprom.i = and i32 %165, 65535
  %arrayidx.i = getelementptr %struct.atl1_buffer, ptr %167, i32 %idxprom.i
  %168 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i175 = icmp eq ptr %169, null
  br i1 %tobool.not.i175, label %do.end19.i, label %do.body14.i, !prof !271

do.body14.i:                                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/atheros/atlx/atl1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2202, 0\0A.popsection", ""() #17, !srcloc !280
  unreachable

do.end19.i:                                       ; preds = %if.end84
  %170 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr null, ptr %arrayidx.i, align 4
  %word3.i176 = getelementptr %struct.tx_packet_desc, ptr %38, i32 %idxprom, i32 2
  %171 = ptrtoint ptr %word3.i176 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %word3.i176, align 4
  %173 = and i32 %172, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %tobool21.not.i = icmp eq i32 %173, 0
  br i1 %tobool21.not.i, label %if.else.i, label %if.then22.i

if.then22.i:                                      ; preds = %do.end19.i
  %head.i.i.i177 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %174 = ptrtoint ptr %head.i.i.i177 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %head.i.i.i177, align 8
  %transport_header.i.i.i178 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %176 = ptrtoint ptr %transport_header.i.i.i178 to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %transport_header.i.i.i178, align 2
  %conv.i.i.i179 = zext i16 %177 to i32
  %add.ptr.i.i.i180 = getelementptr i8, ptr %175, i32 %conv.i.i.i179
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %178 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i181 = ptrtoint ptr %add.ptr.i.i.i180 to i32
  %sub.ptr.rhs.cast.i.i182 = ptrtoint ptr %179 to i32
  %sub.ptr.sub.i.i183 = sub i32 %sub.ptr.lhs.cast.i.i181, %sub.ptr.rhs.cast.i.i182
  %doff.i.i.i184 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i180, i32 0, i32 4
  %180 = ptrtoint ptr %doff.i.i.i184 to i32
  call void @__asan_load2_noabort(i32 %180)
  %bf.load.i.i.i185 = load i16, ptr %doff.i.i.i184, align 4
  %181 = lshr i16 %bf.load.i.i.i185, 10
  %182 = and i16 %181, 60
  %mul.i.i.i186 = zext i16 %182 to i32
  %add.i187 = add i32 %sub.ptr.sub.i.i183, %mul.i.i.i186
  %183 = trunc i32 %add.i187 to i16
  %conv26.i = and i16 %183, 255
  %length.i = getelementptr %struct.atl1_buffer, ptr %167, i32 %idxprom.i, i32 1
  %184 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %conv26.i, ptr %length.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %185 = load ptr, ptr @mem_map, align 4
  %186 = load ptr, ptr %data.i.i, align 4
  %187 = ptrtoint ptr %186 to i32
  %sub27.i = add i32 %187, 1073741824
  %shr28.i = lshr i32 %sub27.i, 12
  %add.ptr.i188 = getelementptr %struct.page, ptr %185, i32 %shr28.i
  %and32.i = and i32 %187, 4095
  %pdev.i189 = getelementptr i8, ptr %netdev, i32 2308
  %188 = ptrtoint ptr %pdev.i189 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %pdev.i189, align 4
  %dev.i190 = getelementptr inbounds %struct.pci_dev, ptr %189, i32 0, i32 44
  %conv33.i = and i32 %add.i187, 255
  %call34.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i190, ptr noundef %add.ptr.i188, i32 noundef %and32.i, i32 noundef %conv33.i, i32 noundef 1, i32 noundef 0) #17
  %dma.i = getelementptr %struct.atl1_buffer, ptr %167, i32 %idxprom.i, i32 3
  %190 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %call34.i, ptr %dma.i, align 4
  %inc.i = add i16 %conv9.i, 1
  %count.i191 = getelementptr i8, ptr %netdev, i32 2986
  %191 = ptrtoint ptr %count.i191 to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %count.i191, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i, i16 %192)
  %cmp.i192 = icmp eq i16 %inc.i, %192
  %spec.store.select.i = select i1 %cmp.i192, i16 0, i16 %inc.i
  %conv40.i = and i32 %sub.i170, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv40.i, i32 %conv33.i)
  %cmp42.i = icmp ugt i32 %conv40.i, %conv33.i
  br i1 %cmp42.i, label %if.then44.i, label %if.then22.i.if.end122.i_crit_edge

if.then22.i.if.end122.i_crit_edge:                ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end122.i

if.then44.i:                                      ; preds = %if.then22.i
  %sub47.i = sub i32 %sub.i170, %conv33.i
  %conv49.i = and i32 %sub47.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv49.i)
  %193 = icmp eq i32 %conv49.i, 0
  br i1 %193, label %if.then44.i.if.end122.i_crit_edge, label %for.body.preheader.i

if.then44.i.if.end122.i_crit_edge:                ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end122.i

for.body.preheader.i:                             ; preds = %if.then44.i
  %sub51.i = add nuw nsw i32 %conv49.i, 12287
  %div.i = udiv i32 %sub51.i, 12288
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.0290.i = phi i32 [ %inc98.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %data_len.0.in289.i = phi i32 [ %sub67.i, %for.body.i.for.body.i_crit_edge ], [ %sub47.i, %for.body.preheader.i ]
  %next_to_use.0288.i = phi i16 [ %spec.store.select205.i, %for.body.i.for.body.i_crit_edge ], [ %spec.store.select.i, %for.body.preheader.i ]
  %194 = ptrtoint ptr %buffer_info10.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %buffer_info10.i, align 4
  %idxprom55.i = zext i16 %next_to_use.0288.i to i32
  %arrayidx56.i = getelementptr %struct.atl1_buffer, ptr %195, i32 %idxprom55.i
  %196 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr null, ptr %arrayidx56.i, align 4
  %conv58.i = and i32 %data_len.0.in289.i, 65535
  %197 = tail call i32 @llvm.umax.i32(i32 %conv58.i, i32 12288) #17
  %conv62.i = trunc i32 %197 to i16
  %length63.i = getelementptr %struct.atl1_buffer, ptr %195, i32 %idxprom55.i, i32 1
  %198 = ptrtoint ptr %length63.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %conv62.i, ptr %length63.i, align 4
  %sub67.i = sub nsw i32 %conv58.i, %197
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %199 = load ptr, ptr @mem_map, align 4
  %200 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %data.i.i, align 4
  %mul.i = mul nuw nsw i32 %i.0290.i, 12288
  %add71.i = or i32 %mul.i, %conv33.i
  %add.ptr72.i = getelementptr i8, ptr %201, i32 %add71.i
  %202 = ptrtoint ptr %add.ptr72.i to i32
  %sub73.i = add i32 %202, 1073741824
  %shr74.i = lshr i32 %sub73.i, 12
  %add.ptr77.i = getelementptr %struct.page, ptr %199, i32 %shr74.i
  %and83.i = and i32 %202, 4095
  %203 = ptrtoint ptr %pdev.i189 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %pdev.i189, align 4
  %dev85.i = getelementptr inbounds %struct.pci_dev, ptr %204, i32 0, i32 44
  %call88.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev85.i, ptr noundef %add.ptr77.i, i32 noundef %and83.i, i32 noundef %197, i32 noundef 1, i32 noundef 0) #17
  %dma89.i = getelementptr %struct.atl1_buffer, ptr %195, i32 %idxprom55.i, i32 3
  %205 = ptrtoint ptr %dma89.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %call88.i, ptr %dma89.i, align 4
  %inc90.i = add i16 %next_to_use.0288.i, 1
  %206 = ptrtoint ptr %count.i191 to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %count.i191, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc90.i, i16 %207)
  %cmp94.i = icmp eq i16 %inc90.i, %207
  %spec.store.select205.i = select i1 %cmp94.i, i16 0, i16 %inc90.i
  %inc98.i = add nuw nsw i32 %i.0290.i, 1
  %exitcond.not.i = icmp eq i32 %inc98.i, %div.i
  br i1 %exitcond.not.i, label %for.body.i.if.end122.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.body.i.if.end122.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end122.i

if.else.i:                                        ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #19
  %length100.i = getelementptr %struct.atl1_buffer, ptr %167, i32 %idxprom.i, i32 1
  %208 = ptrtoint ptr %length100.i to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 %conv4.i171, ptr %length100.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %209 = load ptr, ptr @mem_map, align 4
  %data101.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %210 = ptrtoint ptr %data101.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %data101.i, align 4
  %212 = ptrtoint ptr %211 to i32
  %sub102.i = add i32 %212, 1073741824
  %shr103.i = lshr i32 %sub102.i, 12
  %add.ptr106.i = getelementptr %struct.page, ptr %209, i32 %shr103.i
  %and108.i = and i32 %212, 4095
  %pdev109.i = getelementptr i8, ptr %netdev, i32 2308
  %213 = ptrtoint ptr %pdev109.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %pdev109.i, align 4
  %dev110.i = getelementptr inbounds %struct.pci_dev, ptr %214, i32 0, i32 44
  %conv111.i = and i32 %sub.i170, 65535
  %call112.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev110.i, ptr noundef %add.ptr106.i, i32 noundef %and108.i, i32 noundef %conv111.i, i32 noundef 1, i32 noundef 0) #17
  %dma113.i = getelementptr %struct.atl1_buffer, ptr %167, i32 %idxprom.i, i32 3
  %215 = ptrtoint ptr %dma113.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %call112.i, ptr %dma113.i, align 4
  %inc114.i = add i16 %conv9.i, 1
  %count116.i = getelementptr i8, ptr %netdev, i32 2986
  %216 = ptrtoint ptr %count116.i to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %count116.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc114.i, i16 %217)
  %cmp118.i = icmp eq i16 %inc114.i, %217
  %spec.store.select206.i = select i1 %cmp118.i, i16 0, i16 %inc114.i
  br label %if.end122.i

if.end122.i:                                      ; preds = %if.else.i, %for.body.i.if.end122.i_crit_edge, %if.then44.i.if.end122.i_crit_edge, %if.then22.i.if.end122.i_crit_edge
  %buffer_info.1.i = phi ptr [ %arrayidx.i, %if.then22.i.if.end122.i_crit_edge ], [ %arrayidx.i, %if.else.i ], [ %arrayidx.i, %if.then44.i.if.end122.i_crit_edge ], [ %arrayidx56.i, %for.body.i.if.end122.i_crit_edge ]
  %next_to_use.1.i = phi i16 [ %spec.store.select.i, %if.then22.i.if.end122.i_crit_edge ], [ %spec.store.select206.i, %if.else.i ], [ %spec.store.select.i, %if.then44.i.if.end122.i_crit_edge ], [ %spec.store.select205.i, %for.body.i.if.end122.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %cmp124299.not.i = icmp eq i8 %163, 0
  br i1 %cmp124299.not.i, label %if.end122.i.atl1_tx_map.exit_crit_edge, label %for.body126.lr.ph.i

if.end122.i.atl1_tx_map.exit_crit_edge:           ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atl1_tx_map.exit

for.body126.lr.ph.i:                              ; preds = %if.end122.i
  %pdev182.i = getelementptr i8, ptr %netdev, i32 2308
  %count192.i = getelementptr i8, ptr %netdev, i32 2986
  br label %for.body126.i

for.body126.i:                                    ; preds = %for.end200.i.for.body126.i_crit_edge, %for.body126.lr.ph.i
  %next_to_use.2303.i = phi i16 [ %next_to_use.1.i, %for.body126.lr.ph.i ], [ %next_to_use.3.lcssa.i, %for.end200.i.for.body126.i_crit_edge ]
  %f.0301.i = phi i32 [ 0, %for.body126.lr.ph.i ], [ %inc202.i, %for.end200.i.for.body126.i_crit_edge ]
  %buffer_info.2300.i = phi ptr [ %buffer_info.1.i, %for.body126.lr.ph.i ], [ %buffer_info.3.lcssa.i, %for.end200.i.for.body126.i_crit_edge ]
  %218 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %end.i, align 4
  %arrayidx128.i = getelementptr %struct.skb_shared_info, ptr %219, i32 0, i32 12, i32 %f.0301.i
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %219, i32 0, i32 12, i32 %f.0301.i, i32 1
  %220 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %bv_len.i.i, align 4
  %conv133.i = and i32 %221, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv133.i)
  %222 = icmp eq i32 %conv133.i, 0
  br i1 %222, label %for.body126.i.for.end200.i_crit_edge, label %for.body143.lr.ph.i

for.body126.i.for.end200.i_crit_edge:             ; preds = %for.body126.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end200.i

for.body143.lr.ph.i:                              ; preds = %for.body126.i
  %sub135.i = add nuw nsw i32 %conv133.i, 12287
  %div136.i = udiv i32 %sub135.i, 12288
  %bv_offset.i.i.i = getelementptr %struct.skb_shared_info, ptr %219, i32 0, i32 12, i32 %f.0301.i, i32 2
  br label %for.body143.i

for.body143.i:                                    ; preds = %do.end165.i.for.body143.i_crit_edge, %for.body143.lr.ph.i
  %indvars.iv.i = phi i32 [ 0, %for.body143.lr.ph.i ], [ %indvars.iv.next.i, %do.end165.i.for.body143.i_crit_edge ]
  %next_to_use.3294.i = phi i16 [ %next_to_use.2303.i, %for.body143.lr.ph.i ], [ %spec.store.select207.i, %do.end165.i.for.body143.i_crit_edge ]
  %buf_len.0.in293.i = phi i32 [ %221, %for.body143.lr.ph.i ], [ %sub180.i, %do.end165.i.for.body143.i_crit_edge ]
  %223 = ptrtoint ptr %buffer_info10.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %buffer_info10.i, align 4
  %idxprom145.i = zext i16 %next_to_use.3294.i to i32
  %arrayidx146.i = getelementptr %struct.atl1_buffer, ptr %224, i32 %idxprom145.i
  %225 = ptrtoint ptr %arrayidx146.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %arrayidx146.i, align 4
  %tobool149.not.i = icmp eq ptr %226, null
  br i1 %tobool149.not.i, label %do.end165.i, label %do.body157.i, !prof !271

do.body157.i:                                     ; preds = %for.body143.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/atheros/atlx/atl1.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2268, 0\0A.popsection", ""() #17, !srcloc !281
  unreachable

do.end165.i:                                      ; preds = %for.body143.i
  %227 = ptrtoint ptr %arrayidx146.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr null, ptr %arrayidx146.i, align 4
  %conv167.i = and i32 %buf_len.0.in293.i, 65535
  %228 = tail call i32 @llvm.umin.i32(i32 %conv167.i, i32 12288) #17
  %conv175.i = trunc i32 %228 to i16
  %length176.i = getelementptr %struct.atl1_buffer, ptr %224, i32 %idxprom145.i, i32 1
  %229 = ptrtoint ptr %length176.i to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 %conv175.i, ptr %length176.i, align 4
  %sub180.i = sub nsw i32 %conv167.i, %228
  %230 = ptrtoint ptr %pdev182.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %pdev182.i, align 4
  %dev183.i = getelementptr inbounds %struct.pci_dev, ptr %231, i32 0, i32 44
  %mul185.i = mul nuw nsw i32 %indvars.iv.i, 12288
  %232 = ptrtoint ptr %arrayidx128.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %arrayidx128.i, align 4
  %234 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %bv_offset.i.i.i, align 4
  %add.i.i = add i32 %235, %mul185.i
  %call2.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev183.i, ptr noundef %233, i32 noundef %add.i.i, i32 noundef %228, i32 noundef 1, i32 noundef 0) #17
  %dma189.i = getelementptr %struct.atl1_buffer, ptr %224, i32 %idxprom145.i, i32 3
  %236 = ptrtoint ptr %dma189.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %call2.i.i, ptr %dma189.i, align 4
  %inc190.i = add i16 %next_to_use.3294.i, 1
  %237 = ptrtoint ptr %count192.i to i32
  call void @__asan_load2_noabort(i32 %237)
  %238 = load i16, ptr %count192.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc190.i, i16 %238)
  %cmp194.i = icmp eq i16 %inc190.i, %238
  %spec.store.select207.i = select i1 %cmp194.i, i16 0, i16 %inc190.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond307.not.i = icmp eq i32 %indvars.iv.next.i, %div136.i
  br i1 %exitcond307.not.i, label %do.end165.i.for.end200.i_crit_edge, label %do.end165.i.for.body143.i_crit_edge

do.end165.i.for.body143.i_crit_edge:              ; preds = %do.end165.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body143.i

do.end165.i.for.end200.i_crit_edge:               ; preds = %do.end165.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end200.i

for.end200.i:                                     ; preds = %do.end165.i.for.end200.i_crit_edge, %for.body126.i.for.end200.i_crit_edge
  %buffer_info.3.lcssa.i = phi ptr [ %buffer_info.2300.i, %for.body126.i.for.end200.i_crit_edge ], [ %arrayidx146.i, %do.end165.i.for.end200.i_crit_edge ]
  %next_to_use.3.lcssa.i = phi i16 [ %next_to_use.2303.i, %for.body126.i.for.end200.i_crit_edge ], [ %spec.store.select207.i, %do.end165.i.for.end200.i_crit_edge ]
  %inc202.i = add nuw nsw i32 %f.0301.i, 1
  %exitcond308.not.i = icmp eq i32 %inc202.i, %conv6.i173
  br i1 %exitcond308.not.i, label %for.end200.i.atl1_tx_map.exit_crit_edge, label %for.end200.i.for.body126.i_crit_edge

for.end200.i.for.body126.i_crit_edge:             ; preds = %for.end200.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body126.i

for.end200.i.atl1_tx_map.exit_crit_edge:          ; preds = %for.end200.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atl1_tx_map.exit

atl1_tx_map.exit:                                 ; preds = %for.end200.i.atl1_tx_map.exit_crit_edge, %if.end122.i.atl1_tx_map.exit_crit_edge
  %buffer_info.2.lcssa.i = phi ptr [ %buffer_info.1.i, %if.end122.i.atl1_tx_map.exit_crit_edge ], [ %buffer_info.3.lcssa.i, %for.end200.i.atl1_tx_map.exit_crit_edge ]
  %239 = ptrtoint ptr %buffer_info.2.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %skb, ptr %buffer_info.2.lcssa.i, align 4
  %conv85 = trunc i32 %count.1 to i16
  %call.i.i.i194 = tail call zeroext i1 @__kasan_check_read(ptr noundef %next_to_use2.i, i32 noundef 4) #17
  %240 = ptrtoint ptr %next_to_use2.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load volatile i32, ptr %next_to_use2.i, align 4
  %conv.i = trunc i32 %241 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv85)
  %cmp66.not.i = icmp eq i16 %conv85, 0
  br i1 %cmp66.not.i, label %atl1_tx_map.exit.atl1_tx_queue.exit_crit_edge, label %for.body.lr.ph.i

atl1_tx_map.exit.atl1_tx_queue.exit_crit_edge:    ; preds = %atl1_tx_map.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %atl1_tx_queue.exit

for.body.lr.ph.i:                                 ; preds = %atl1_tx_map.exit
  %conv4.i195 = and i32 %count.1, 65535
  %sub.i196 = add nsw i32 %conv4.i195, -1
  %count35.i = getelementptr i8, ptr %netdev, i32 2986
  %242 = ptrtoint ptr %buffer_info10.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %buffer_info10.i, align 4
  %idxprom.peel.i = and i32 %241, 65535
  %244 = ptrtoint ptr %tpd_ring1 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %tpd_ring1, align 8
  %arrayidx9.peel.i = getelementptr %struct.tx_packet_desc, ptr %245, i32 %idxprom.peel.i
  %cmp10.not.peel.i = icmp eq ptr %arrayidx9.peel.i, %arrayidx56
  br i1 %cmp10.not.peel.i, label %for.body.lr.ph.i.if.end.peel.i_crit_edge, label %if.then.peel.i

for.body.lr.ph.i.if.end.peel.i_crit_edge:         ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.peel.i

if.then.peel.i:                                   ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #19
  %246 = call ptr @memcpy(ptr %arrayidx9.peel.i, ptr %arrayidx56, i32 16)
  br label %if.end.peel.i

if.end.peel.i:                                    ; preds = %if.then.peel.i, %for.body.lr.ph.i.if.end.peel.i_crit_edge
  %dma.peel.i = getelementptr %struct.atl1_buffer, ptr %243, i32 %idxprom.peel.i, i32 3
  %247 = ptrtoint ptr %dma.peel.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %dma.peel.i, align 4
  %conv12.peel.i = zext i32 %248 to i64
  %249 = tail call i64 @llvm.bswap.i64(i64 %conv12.peel.i) #17
  %250 = ptrtoint ptr %arrayidx9.peel.i to i32
  call void @__asan_store8_noabort(i32 %250)
  store i64 %249, ptr %arrayidx9.peel.i, align 8
  %word2.peel.i = getelementptr %struct.tx_packet_desc, ptr %245, i32 %idxprom.peel.i, i32 1
  %251 = ptrtoint ptr %word2.peel.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %word2.peel.i, align 8
  %and.peel.i = and i32 %252, -16384
  store i32 %and.peel.i, ptr %word2.peel.i, align 8
  %length.peel.i = getelementptr %struct.atl1_buffer, ptr %243, i32 %idxprom.peel.i, i32 1
  %253 = ptrtoint ptr %length.peel.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %length.peel.i, align 4
  %255 = and i16 %254, -193
  %256 = tail call i16 @llvm.bswap.i16(i16 %255) #17
  %and14.peel.i = zext i16 %256 to i32
  %or.peel.i = or i32 %and.peel.i, %and14.peel.i
  %257 = ptrtoint ptr %word2.peel.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %or.peel.i, ptr %word2.peel.i, align 8
  %word3.peel.i = getelementptr %struct.tx_packet_desc, ptr %245, i32 %idxprom.peel.i, i32 2
  %258 = ptrtoint ptr %word3.peel.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %word3.peel.i, align 4
  %260 = and i32 %259, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %260)
  %tobool.not.peel.i = icmp eq i32 %260, 0
  br i1 %tobool.not.peel.i, label %if.end.peel.i.if.end25.peel.i_crit_edge, label %if.then19.peel.i

if.end.peel.i.if.end25.peel.i_crit_edge:          ; preds = %if.end.peel.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25.peel.i

if.then19.peel.i:                                 ; preds = %if.end.peel.i
  call void @__sanitizer_cov_trace_pc() #19
  %or21.peel.i = or i32 %259, 262144
  %261 = ptrtoint ptr %word3.peel.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %or21.peel.i, ptr %word3.peel.i, align 4
  br label %if.end25.peel.i

if.end25.peel.i:                                  ; preds = %if.then19.peel.i, %if.end.peel.i.if.end25.peel.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i196)
  %cmp28.peel.i = icmp eq i32 %sub.i196, 0
  br i1 %cmp28.peel.i, label %if.then30.peel.i, label %if.end25.peel.i.if.end33.peel.i_crit_edge

if.end25.peel.i.if.end33.peel.i_crit_edge:        ; preds = %if.end25.peel.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33.peel.i

if.then30.peel.i:                                 ; preds = %if.end25.peel.i
  call void @__sanitizer_cov_trace_pc() #19
  %262 = ptrtoint ptr %word3.peel.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %word3.peel.i, align 4
  %or32.peel.i = or i32 %263, 1
  store i32 %or32.peel.i, ptr %word3.peel.i, align 4
  br label %if.end33.peel.i

if.end33.peel.i:                                  ; preds = %if.then30.peel.i, %if.end25.peel.i.if.end33.peel.i_crit_edge
  %inc.peel.i = add i16 %conv.i, 1
  %264 = ptrtoint ptr %count35.i to i32
  call void @__asan_load2_noabort(i32 %264)
  %265 = load i16, ptr %count35.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.peel.i, i16 %265)
  %cmp37.peel.i = icmp eq i16 %inc.peel.i, %265
  %spec.store.select.peel.i = select i1 %cmp37.peel.i, i16 0, i16 %inc.peel.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %conv85)
  %exitcond.peel.not.i = icmp eq i16 %conv85, 1
  br i1 %exitcond.peel.not.i, label %if.end33.peel.i.atl1_tx_queue.exit_crit_edge, label %if.end33.peel.i.for.body.i199_crit_edge

if.end33.peel.i.for.body.i199_crit_edge:          ; preds = %if.end33.peel.i
  br label %for.body.i199

if.end33.peel.i.atl1_tx_queue.exit_crit_edge:     ; preds = %if.end33.peel.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atl1_tx_queue.exit

for.body.i199:                                    ; preds = %if.end33.i.for.body.i199_crit_edge, %if.end33.peel.i.for.body.i199_crit_edge
  %indvars.iv.i197 = phi i32 [ %indvars.iv.next.i211, %if.end33.i.for.body.i199_crit_edge ], [ 1, %if.end33.peel.i.for.body.i199_crit_edge ]
  %next_to_use.068.i = phi i16 [ %spec.store.select.i210, %if.end33.i.for.body.i199_crit_edge ], [ %spec.store.select.peel.i, %if.end33.peel.i.for.body.i199_crit_edge ]
  %266 = ptrtoint ptr %buffer_info10.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %buffer_info10.i, align 4
  %idxprom.i198 = zext i16 %next_to_use.068.i to i32
  %268 = ptrtoint ptr %tpd_ring1 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %tpd_ring1, align 8
  %arrayidx9.i = getelementptr %struct.tx_packet_desc, ptr %269, i32 %idxprom.i198
  %cmp10.not.i = icmp eq ptr %arrayidx9.i, %arrayidx56
  br i1 %cmp10.not.i, label %for.body.i199.if.end.i207_crit_edge, label %if.then.i200

for.body.i199.if.end.i207_crit_edge:              ; preds = %for.body.i199
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i207

if.then.i200:                                     ; preds = %for.body.i199
  call void @__sanitizer_cov_trace_pc() #19
  %270 = call ptr @memcpy(ptr %arrayidx9.i, ptr %arrayidx56, i32 16)
  br label %if.end.i207

if.end.i207:                                      ; preds = %if.then.i200, %for.body.i199.if.end.i207_crit_edge
  %dma.i201 = getelementptr %struct.atl1_buffer, ptr %267, i32 %idxprom.i198, i32 3
  %271 = ptrtoint ptr %dma.i201 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %dma.i201, align 4
  %conv12.i = zext i32 %272 to i64
  %273 = tail call i64 @llvm.bswap.i64(i64 %conv12.i) #17
  %274 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store8_noabort(i32 %274)
  store i64 %273, ptr %arrayidx9.i, align 8
  %word2.i = getelementptr %struct.tx_packet_desc, ptr %269, i32 %idxprom.i198, i32 1
  %275 = ptrtoint ptr %word2.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %word2.i, align 8
  %and.i202 = and i32 %276, -16384
  store i32 %and.i202, ptr %word2.i, align 8
  %length.i203 = getelementptr %struct.atl1_buffer, ptr %267, i32 %idxprom.i198, i32 1
  %277 = ptrtoint ptr %length.i203 to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %length.i203, align 4
  %279 = and i16 %278, -193
  %280 = tail call i16 @llvm.bswap.i16(i16 %279) #17
  %and14.i = zext i16 %280 to i32
  %or.i204 = or i32 %and.i202, %and14.i
  %281 = ptrtoint ptr %word2.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %or.i204, ptr %word2.i, align 8
  %word3.i205 = getelementptr %struct.tx_packet_desc, ptr %269, i32 %idxprom.i198, i32 2
  %282 = ptrtoint ptr %word3.i205 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %word3.i205, align 4
  %284 = and i32 %283, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %tobool.not.i206 = icmp eq i32 %284, 0
  br i1 %tobool.not.i206, label %if.end.i207.if.end25.i_crit_edge, label %if.else.i208

if.end.i207.if.end25.i_crit_edge:                 ; preds = %if.end.i207
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25.i

if.else.i208:                                     ; preds = %if.end.i207
  call void @__sanitizer_cov_trace_pc() #19
  %and23.i = and i32 %283, -262145
  %285 = ptrtoint ptr %word3.i205 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %and23.i, ptr %word3.i205, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else.i208, %if.end.i207.if.end25.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i196, i32 %indvars.iv.i197)
  %cmp28.i = icmp eq i32 %sub.i196, %indvars.iv.i197
  br i1 %cmp28.i, label %if.then30.i, label %if.end25.i.if.end33.i_crit_edge

if.end25.i.if.end33.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33.i

if.then30.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #19
  %286 = ptrtoint ptr %word3.i205 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %word3.i205, align 4
  %or32.i = or i32 %287, 1
  store i32 %or32.i, ptr %word3.i205, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then30.i, %if.end25.i.if.end33.i_crit_edge
  %inc.i209 = add i16 %next_to_use.068.i, 1
  %288 = ptrtoint ptr %count35.i to i32
  call void @__asan_load2_noabort(i32 %288)
  %289 = load i16, ptr %count35.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc.i209, i16 %289)
  %cmp37.i = icmp eq i16 %inc.i209, %289
  %spec.store.select.i210 = select i1 %cmp37.i, i16 0, i16 %inc.i209
  %indvars.iv.next.i211 = add nuw nsw i32 %indvars.iv.i197, 1
  %exitcond.not.i212 = icmp eq i32 %indvars.iv.next.i211, %conv4.i195
  br i1 %exitcond.not.i212, label %if.end33.i.atl1_tx_queue.exit_crit_edge, label %if.end33.i.for.body.i199_crit_edge, !llvm.loop !282

if.end33.i.for.body.i199_crit_edge:               ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i199

if.end33.i.atl1_tx_queue.exit_crit_edge:          ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atl1_tx_queue.exit

atl1_tx_queue.exit:                               ; preds = %if.end33.i.atl1_tx_queue.exit_crit_edge, %if.end33.peel.i.atl1_tx_queue.exit_crit_edge, %atl1_tx_map.exit.atl1_tx_queue.exit_crit_edge
  %next_to_use.0.lcssa.i = phi i16 [ %conv.i, %atl1_tx_map.exit.atl1_tx_queue.exit_crit_edge ], [ %spec.store.select.peel.i, %if.end33.peel.i.atl1_tx_queue.exit_crit_edge ], [ %spec.store.select.i210, %if.end33.i.atl1_tx_queue.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !284
  tail call void @arm_heavy_mb() #17
  %conv43.i = zext i16 %next_to_use.0.lcssa.i to i32
  %call.i.i65.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_to_use2.i, i32 noundef 4) #17
  %290 = ptrtoint ptr %next_to_use2.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store volatile i32 %conv43.i, ptr %next_to_use2.i, align 4
  %mb_lock.i = getelementptr i8, ptr %netdev, i32 3004
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mb_lock.i) #17
  %call.i.i.i213 = tail call zeroext i1 @__kasan_check_read(ptr noundef %next_to_use2.i, i32 noundef 4) #17
  %291 = ptrtoint ptr %next_to_use2.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load volatile i32, ptr %next_to_use2.i, align 4
  %next_to_use6.i = getelementptr i8, ptr %netdev, i32 3060
  %call.i.i20.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %next_to_use6.i, i32 noundef 4) #17
  %293 = ptrtoint ptr %next_to_use6.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load volatile i32, ptr %next_to_use6.i, align 4
  %next_to_clean.i = getelementptr i8, ptr %netdev, i32 3088
  %call.i.i21.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %next_to_clean.i, i32 noundef 4) #17
  %295 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load volatile i32, ptr %next_to_clean.i, align 4
  %and.i214 = and i32 %294, 2047
  %and9.i = shl i32 %296, 11
  %shl10.i = and i32 %and9.i, 4192256
  %or.i215 = or i32 %and.i214, %shl10.i
  %shl12.i = shl i32 %292, 22
  %or13.i = or i32 %or.i215, %shl12.i
  %hw.i = getelementptr i8, ptr %netdev, i32 3164
  %297 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %hw.i, align 4
  %add.ptr.i216 = getelementptr i8, ptr %298, i32 5616
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %299 = tail call i32 @llvm.bswap.i32(i32 %or13.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i216, i32 %299) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mb_lock.i, i32 noundef %call2.i) #17
  br label %cleanup

cleanup:                                          ; preds = %atl1_tx_queue.exit, %if.then82, %if.then75, %do.end, %if.then49.cleanup_crit_edge, %if.then31, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then31 ], [ 0, %if.then75 ], [ 0, %atl1_tx_queue.exit ], [ 0, %if.then82 ], [ 16, %do.end ], [ 16, %if.then49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atlx_set_multi(ptr noundef readonly %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 3164
  %0 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 5248
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #17, !srcloc !268
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or = or i32 %3, 32768
  %and10 = and i32 %3, -33587201
  %and4 = shl i32 %5, 16
  %6 = and i32 %and4, 33554432
  %7 = or i32 %6, %and10
  %rctl.0 = select i1 %tobool.not, i32 %7, i32 %or
  %8 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw1, align 4
  %add.ptr13 = getelementptr i8, ptr %9, i32 5248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %10 = tail call i32 @llvm.bswap.i32(i32 %rctl.0) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %10) #17, !srcloc !267
  %11 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw1, align 4
  %add.ptr15 = getelementptr i8, ptr %12, i32 5264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 0) #17, !srcloc !267
  %13 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw1, align 4
  %add.ptr18 = getelementptr i8, ptr %14, i32 5268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #17, !srcloc !267
  %mc = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66
  %15 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %15)
  %ha.047 = load ptr, ptr %mc, align 4
  %cmp.not48 = icmp eq ptr %ha.047, %mc
  br i1 %cmp.not48, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %atl1_hash_mc_addr.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %ha.049 = phi ptr [ %ha.0, %atl1_hash_mc_addr.exit.for.body_crit_edge ], [ %ha.047, %entry.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.049, i32 0, i32 2
  %call.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #22
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body
  %i.02.i = phi i32 [ 0, %for.body ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %value.01.i = phi i32 [ 0, %for.body ], [ %or.i, %for.body.i.for.body.i_crit_edge ]
  %shr.i = lshr i32 %call.i, %i.02.i
  %and.i = and i32 %shr.i, 1
  %sub.i = sub nuw nsw i32 31, %i.02.i
  %shl.i = shl nuw i32 %and.i, %sub.i
  %or.i = or i32 %shl.i, %value.01.i
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %atl1_hash_mc_addr.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

atl1_hash_mc_addr.exit:                           ; preds = %for.body.i
  %shr1.i = lshr i32 %or.i, 26
  %and2.i = and i32 %shr1.i, 31
  %16 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw1, align 4
  %add.ptr.i44 = getelementptr i8, ptr %17, i32 5264
  %18 = lshr i32 %or.i, 29
  %shl.i45 = and i32 %18, 4
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i44, i32 %shl.i45
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #17, !srcloc !268
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %shl4.i = shl nuw i32 1, %and2.i
  %or.i46 = or i32 %20, %shl4.i
  %21 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw1, align 4
  %add.ptr6.i = getelementptr i8, ptr %22, i32 5264
  %add.ptr8.i = getelementptr i8, ptr %add.ptr6.i, i32 %shl.i45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i46) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %23) #17, !srcloc !267
  %24 = ptrtoint ptr %ha.049 to i32
  call void @__asan_load4_noabort(i32 %24)
  %ha.0 = load ptr, ptr %ha.049, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp.not, label %atl1_hash_mc_addr.exit.for.end_crit_edge, label %atl1_hash_mc_addr.exit.for.body_crit_edge

atl1_hash_mc_addr.exit.for.body_crit_edge:        ; preds = %atl1_hash_mc_addr.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

atl1_hash_mc_addr.exit.for.end_crit_edge:         ; preds = %atl1_hash_mc_addr.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %atl1_hash_mc_addr.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1_set_mac(ptr noundef %netdev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sa_data, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %if.end
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end4

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #17
  %hw = getelementptr i8, ptr %netdev, i32 3164
  %mac_addr = getelementptr i8, ptr %netdev, i32 3247
  %addr_len = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 56
  %7 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %8 to i32
  %9 = call ptr @memcpy(ptr %mac_addr, ptr %sa_data, i32 %conv)
  %arrayidx.i = getelementptr i8, ptr %netdev, i32 3249
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %11 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx2.i = getelementptr i8, ptr %netdev, i32 3250
  %12 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %13 to i32
  %shl4.i = shl nuw nsw i32 %conv3.i, 16
  %or.i = or i32 %shl4.i, %shl.i
  %arrayidx6.i = getelementptr i8, ptr %netdev, i32 3251
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %15 to i32
  %shl8.i = shl nuw nsw i32 %conv7.i, 8
  %or9.i = or i32 %or.i, %shl8.i
  %arrayidx11.i = getelementptr i8, ptr %netdev, i32 3252
  %16 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx11.i, align 1
  %conv12.i = zext i8 %17 to i32
  %or13.i = or i32 %or9.i, %conv12.i
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  %add.ptr.i18 = getelementptr i8, ptr %19, i32 5256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %20 = tail call i32 @llvm.bswap.i32(i32 %or13.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %20) #17, !srcloc !267
  %21 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %mac_addr, align 1
  %conv16.i = zext i8 %22 to i32
  %shl17.i = shl nuw nsw i32 %conv16.i, 8
  %arrayidx19.i = getelementptr i8, ptr %netdev, i32 3248
  %23 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx19.i, align 1
  %conv20.i = zext i8 %24 to i32
  %or21.i = or i32 %shl17.i, %conv20.i
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  %add.ptr24.i = getelementptr i8, ptr %26, i32 5260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %27 = tail call i32 @llvm.bswap.i32(i32 %or21.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %27) #17, !srcloc !267
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -16, %entry.cleanup_crit_edge ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atlx_ioctl(ptr noundef %netdev, ptr noundef %ifr, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd.off = add i32 %cmd, -35143
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cmd.off)
  %switch = icmp ult i32 %cmd.off, 3
  br i1 %switch, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

sw.bb:                                            ; preds = %entry
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %sw.bb.return_crit_edge, label %do.body3.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

do.body3.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  %lock.i = getelementptr i8, ptr %netdev, i32 2556
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #17
  %mii.i = getelementptr i8, ptr %netdev, i32 3120
  %ifr_ifru.i.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %call9.i = tail call i32 @generic_mii_ioctl(ptr noundef %mii.i, ptr noundef %ifr_ifru.i.i, i32 noundef %cmd, ptr noundef null) #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call5.i) #17
  br label %return

return:                                           ; preds = %do.body3.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ %call9.i, %do.body3.i ], [ -22, %sw.bb.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1_change_mtu(ptr noundef %netdev, i32 noundef %new_mtu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add2 = add i32 %new_mtu, 22
  %max_frame_size = getelementptr i8, ptr %netdev, i32 3236
  %0 = ptrtoint ptr %max_frame_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %add2, ptr %max_frame_size, align 4
  %add3 = add i32 %new_mtu, 29
  %1 = lshr i32 %add3, 3
  %conv = trunc i32 %1 to i16
  %tx_jumbo_task_th = getelementptr i8, ptr %netdev, i32 3202
  %2 = ptrtoint ptr %tx_jumbo_task_th to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %tx_jumbo_task_th, align 2
  %and = and i32 %add3, -8
  %rx_buffer_len = getelementptr i8, ptr %netdev, i32 2544
  %3 = ptrtoint ptr %rx_buffer_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and, ptr %rx_buffer_len, align 8
  %rx_jumbo_th = getelementptr i8, ptr %netdev, i32 3206
  %4 = ptrtoint ptr %rx_jumbo_th to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %rx_jumbo_th, align 2
  %mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %5 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %new_mtu, ptr %mtu, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call fastcc void @atl1_down(ptr noundef %add.ptr.i)
  %call10 = tail call fastcc i32 @atl1_up(ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atlx_tx_timeout(ptr noundef %netdev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %reset_dev_task = getelementptr i8, ptr %netdev, i32 2824
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %reset_dev_task) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1_poll_controller(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #17
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call = tail call i32 @atl1_intr(i32 noundef %3, ptr noundef %netdev)
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @atlx_fix_features(ptr nocapture noundef readnone %netdev, i64 noundef %features) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %and1 = and i64 %features, -129
  %and = lshr i64 %features, 1
  %0 = and i64 %and, 128
  %features.addr.0 = or i64 %0, %and1
  ret i64 %features.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atlx_set_features(ptr noundef %netdev, i64 noundef %features) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %features1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %xor = xor i64 %1, %features
  %and = and i64 %xor, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %lock.i = getelementptr i8, ptr %netdev, i32 2556
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #17
  %hw.i = getelementptr i8, ptr %netdev, i32 3164
  %2 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 5248
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %5 = and i32 %4, -4194305
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #17
  %7 = trunc i64 %features to i32
  %8 = shl i32 %7, 6
  %9 = and i32 %8, 16384
  %storemerge.i.i = or i32 %6, %9
  %10 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %11, i32 5248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %12 = tail call i32 @llvm.bswap.i32(i32 %storemerge.i.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %12) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atl1_setup_ring_resources(ptr noundef %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tpd_ring1 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 14
  %rfd_ring2 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 16
  %rrd_ring3 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 17
  %pdev5 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %pdev5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev5, align 4
  %count = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %count, align 2
  %conv = zext i16 %3 to i32
  %count6 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 16, i32 3
  %4 = ptrtoint ptr %count6 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %count6, align 2
  %conv7 = zext i16 %5 to i32
  %add = add nuw nsw i32 %conv7, %conv
  %mul = mul nuw nsw i32 %add, 12
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3520) #23
  %buffer_info = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 14, i32 7
  %6 = ptrtoint ptr %buffer_info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i.i, ptr %buffer_info, align 4
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end14, !prof !270

if.then:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 20
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 8
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.then.err_nomem_crit_edge, label %do.end

if.then.err_nomem_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_nomem

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %mul) #20
  br label %err_nomem

if.end14:                                         ; preds = %entry
  %ring_header4 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 13
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %count, align 2
  %conv17 = zext i16 %10 to i32
  %add.ptr = getelementptr %struct.atl1_buffer, ptr %call9.i.i, i32 %conv17
  %buffer_info18 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 16, i32 6
  %11 = ptrtoint ptr %buffer_info18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr, ptr %buffer_info18, align 4
  %12 = ptrtoint ptr %count6 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %count6, align 2
  %conv23 = zext i16 %13 to i32
  %mul24 = mul nuw nsw i32 %conv23, 12
  %count26 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 17, i32 3
  %14 = ptrtoint ptr %count26 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %count26, align 4
  %conv27 = zext i16 %15 to i32
  %reass.add = add nuw nsw i32 %conv27, %conv17
  %reass.mul = shl nuw nsw i32 %reass.add, 4
  %add29 = add nuw nsw i32 %mul24, 252
  %add32 = add nuw nsw i32 %add29, %reass.mul
  %size33 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 13, i32 2
  %16 = ptrtoint ptr %size33 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add32, ptr %size33, align 4
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %dma = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 13, i32 1
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev34, i32 noundef %add32, ptr noundef %dma, i32 noundef 3264, i32 noundef 0) #17
  %17 = ptrtoint ptr %ring_header4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %ring_header4, align 4
  %tobool38.not = icmp eq ptr %call.i, null
  br i1 %tobool38.not, label %if.then47, label %if.end57, !prof !270

if.then47:                                        ; preds = %if.end14
  %msg_enable48 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 20
  %18 = ptrtoint ptr %msg_enable48 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable48, align 8
  %and49 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.then47.err_nomem_crit_edge, label %do.end54

if.then47.err_nomem_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_nomem

do.end54:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34, ptr noundef nonnull @.str.14) #20
  br label %err_nomem

if.end57:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  %20 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma, align 4
  %dma59 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 14, i32 1
  %and61 = and i32 %21, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  %phi.cast = sub nuw nsw i32 8, %and61
  %spec.select294 = select i1 %tobool62.not, i32 0, i32 %phi.cast
  %add68 = add i32 %spec.select294, %21
  %22 = ptrtoint ptr %dma59 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add68, ptr %dma59, align 4
  %add.ptr71 = getelementptr i8, ptr %call.i, i32 %spec.select294
  %23 = ptrtoint ptr %tpd_ring1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr71, ptr %tpd_ring1, align 4
  %24 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %count, align 2
  %mul75 = shl i16 %25, 4
  %size77 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 14, i32 2
  %26 = ptrtoint ptr %size77 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %mul75, ptr %size77, align 4
  %conv80 = zext i16 %mul75 to i32
  %add81 = add i32 %add68, %conv80
  %dma82 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 16, i32 1
  %and84 = and i32 %add81, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  %phi.cast280 = sub nuw nsw i32 8, %and84
  %spec.select = select i1 %tobool85.not, i32 0, i32 %phi.cast280
  %add96 = add i32 %spec.select, %add81
  %27 = ptrtoint ptr %dma82 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add96, ptr %dma82, align 4
  %add101 = or i32 %spec.select, %conv80
  %add.ptr102 = getelementptr i8, ptr %add.ptr71, i32 %add101
  %28 = ptrtoint ptr %rfd_ring2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr102, ptr %rfd_ring2, align 4
  %29 = ptrtoint ptr %count6 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %count6, align 2
  %mul106 = mul i16 %30, 12
  %size108 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 16, i32 2
  %31 = ptrtoint ptr %size108 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %mul106, ptr %size108, align 4
  %conv111 = zext i16 %mul106 to i32
  %add112 = add i32 %add96, %conv111
  %dma113 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 17, i32 1
  %and115 = and i32 %add112, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  %phi.cast282 = sub nuw nsw i32 8, %and115
  %cond123 = select i1 %tobool116.not, i32 0, i32 %phi.cast282
  %add127 = add i32 %cond123, %add112
  %32 = ptrtoint ptr %dma113 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add127, ptr %dma113, align 4
  %add132 = add nuw nsw i32 %cond123, %conv111
  %add.ptr133 = getelementptr i8, ptr %add.ptr102, i32 %add132
  %33 = ptrtoint ptr %rrd_ring3 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr133, ptr %rrd_ring3, align 4
  %34 = ptrtoint ptr %count26 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %count26, align 4
  %conv136 = zext i16 %35 to i32
  %mul137 = shl nuw nsw i32 %conv136, 4
  %size138 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 17, i32 2
  %36 = ptrtoint ptr %size138 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul137, ptr %size138, align 4
  %add141 = add i32 %add127, %mul137
  %cmb = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 29
  %dma142 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 29, i32 1
  %and145 = and i32 %add141, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  %phi.cast284 = sub nuw nsw i32 8, %and145
  %cond154 = select i1 %tobool146.not, i32 0, i32 %phi.cast284
  %add159 = add i32 %cond154, %add141
  %37 = ptrtoint ptr %dma142 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add159, ptr %dma142, align 4
  %add163 = or i32 %cond154, %mul137
  %add.ptr164 = getelementptr i8, ptr %add.ptr133, i32 %add163
  %38 = ptrtoint ptr %cmb to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr164, ptr %cmb, align 4
  %add169 = add i32 %add159, 12
  %smb = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 28
  %dma170 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 28, i32 1
  %and173 = and i32 %add169, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  %phi.cast286 = sub nuw nsw i32 8, %and173
  %cond182 = select i1 %tobool174.not, i32 0, i32 %phi.cast286
  %add187 = add i32 %cond182, %add169
  %39 = ptrtoint ptr %dma170 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %add187, ptr %dma170, align 4
  %add191 = add nuw nsw i32 %cond182, 12
  %add.ptr192 = getelementptr i8, ptr %add.ptr164, i32 %add191
  %40 = ptrtoint ptr %smb to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr192, ptr %smb, align 4
  br label %cleanup

err_nomem:                                        ; preds = %do.end54, %if.then47.err_nomem_crit_edge, %do.end, %if.then.err_nomem_crit_edge
  %41 = ptrtoint ptr %buffer_info to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buffer_info, align 4
  tail call void @kfree(ptr noundef %42) #17
  br label %cleanup

cleanup:                                          ; preds = %err_nomem, %if.end57
  %retval.0 = phi i32 [ -12, %err_nomem ], [ 0, %if.end57 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atl1_up(ptr noundef %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  tail call void @atlx_set_multi(ptr noundef %1)
  %next_to_use.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 14, i32 6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_to_use.i, i32 noundef 4) #17
  %2 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %next_to_use.i, align 4
  %next_to_clean.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 14, i32 5
  %call.i.i13.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_to_clean.i, i32 noundef 4) #17
  %3 = ptrtoint ptr %next_to_clean.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 0, ptr %next_to_clean.i, align 4
  %next_to_clean4.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 16, i32 5
  %4 = ptrtoint ptr %next_to_clean4.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %next_to_clean4.i, align 4
  %next_to_use5.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 16, i32 4
  %call.i.i14.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_to_use5.i, i32 noundef 4) #17
  %5 = ptrtoint ptr %next_to_use5.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 0, ptr %next_to_use5.i, align 4
  %next_to_use6.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 17, i32 4
  %6 = ptrtoint ptr %next_to_use6.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %next_to_use6.i, align 2
  %next_to_clean7.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 17, i32 5
  %call.i.i15.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_to_clean7.i, i32 noundef 4) #17
  %7 = ptrtoint ptr %next_to_clean7.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %next_to_clean7.i, align 4
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 8
  %features.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 23
  %10 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %features.i, align 16
  %lock.i.i = getelementptr i8, ptr %9, i32 2556
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #17
  %hw.i.i = getelementptr i8, ptr %9, i32 3164
  %12 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 5248
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %15 = and i32 %14, -4194305
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #17
  %17 = trunc i64 %11 to i32
  %18 = shl i32 %17, 6
  %19 = and i32 %18, 16384
  %storemerge.i.i.i = or i32 %16, %19
  %20 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw.i.i, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %21, i32 5248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %22 = tail call i32 @llvm.bswap.i32(i32 %storemerge.i.i.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 %22) #17, !srcloc !267
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call3.i.i) #17
  %call = tail call fastcc zeroext i16 @atl1_alloc_rx_buffers(ptr noundef %adapter)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !270

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw1.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27
  %23 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 5632
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #17, !srcloc !267
  %mac_addr.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 38
  %arrayidx.i = getelementptr %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 38, i32 2
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %26 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %arrayidx4.i = getelementptr %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 38, i32 3
  %27 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %28 to i32
  %shl6.i = shl nuw nsw i32 %conv5.i, 16
  %or.i = or i32 %shl6.i, %shl.i
  %arrayidx8.i = getelementptr %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 38, i32 4
  %29 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %30 to i32
  %shl10.i = shl nuw nsw i32 %conv9.i, 8
  %or11.i = or i32 %or.i, %shl10.i
  %arrayidx13.i = getelementptr %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 38, i32 5
  %31 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %32 to i32
  %or15.i = or i32 %or11.i, %conv14.i
  %33 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw1.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %34, i32 5256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %35 = tail call i32 @llvm.bswap.i32(i32 %or15.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %35) #17, !srcloc !267
  %36 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %mac_addr.i, align 1
  %conv20.i = zext i8 %37 to i32
  %shl21.i = shl nuw nsw i32 %conv20.i, 8
  %arrayidx23.i = getelementptr %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 38, i32 1
  %38 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx23.i, align 1
  %conv24.i = zext i8 %39 to i32
  %or25.i = or i32 %shl21.i, %conv24.i
  %40 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw1.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %41, i32 5260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %42 = tail call i32 @llvm.bswap.i32(i32 %or25.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %42) #17, !srcloc !267
  %dma.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 14, i32 1
  %43 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw1.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %44, i32 5440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 0) #17, !srcloc !267
  %dma32.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 16, i32 1
  %45 = ptrtoint ptr %dma32.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma32.i, align 4
  %47 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw1.i, align 4
  %add.ptr37.i = getelementptr i8, ptr %48, i32 5444
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %49 = tail call i32 @llvm.bswap.i32(i32 %46) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 %49) #17, !srcloc !267
  %dma38.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 17, i32 1
  %50 = ptrtoint ptr %dma38.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dma38.i, align 4
  %52 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw1.i, align 4
  %add.ptr43.i = getelementptr i8, ptr %53, i32 5448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %54 = tail call i32 @llvm.bswap.i32(i32 %51) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i, i32 %54) #17, !srcloc !267
  %55 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dma.i, align 4
  %57 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw1.i, align 4
  %add.ptr50.i = getelementptr i8, ptr %58, i32 5452
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %59 = tail call i32 @llvm.bswap.i32(i32 %56) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i, i32 %59) #17, !srcloc !267
  %dma51.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 29, i32 1
  %60 = ptrtoint ptr %dma51.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dma51.i, align 4
  %62 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw1.i, align 4
  %add.ptr56.i = getelementptr i8, ptr %63, i32 5456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %64 = tail call i32 @llvm.bswap.i32(i32 %61) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56.i, i32 %64) #17, !srcloc !267
  %dma57.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 28, i32 1
  %65 = ptrtoint ptr %dma57.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dma57.i, align 4
  %67 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw1.i, align 4
  %add.ptr62.i = getelementptr i8, ptr %68, i32 5460
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %69 = tail call i32 @llvm.bswap.i32(i32 %66) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62.i, i32 %69) #17, !srcloc !267
  %count.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 17, i32 3
  %70 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %count.i, align 4
  %conv64.i = zext i16 %71 to i32
  %shl65.i = shl nuw i32 %conv64.i, 16
  %count67.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 16, i32 3
  %72 = ptrtoint ptr %count67.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %count67.i, align 2
  %conv68.i = zext i16 %73 to i32
  %add.i = or i32 %shl65.i, %conv68.i
  %74 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hw1.i, align 4
  %add.ptr70.i = getelementptr i8, ptr %75, i32 5464
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %76 = tail call i32 @llvm.bswap.i32(i32 %add.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70.i, i32 %76) #17, !srcloc !267
  %count72.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 14, i32 3
  %77 = ptrtoint ptr %count72.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %count72.i, align 2
  %conv73.i = zext i16 %78 to i32
  %79 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hw1.i, align 4
  %add.ptr75.i = getelementptr i8, ptr %80, i32 5468
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %81 = tail call i32 @llvm.bswap.i32(i32 %conv73.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75.i, i32 %81) #17, !srcloc !267
  %82 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hw1.i, align 4
  %add.ptr77.i = getelementptr i8, ptr %83, i32 5428
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77.i, i32 16777216) #17, !srcloc !267
  %call.i.i.i60 = tail call zeroext i1 @__kasan_check_read(ptr noundef %next_to_use.i, i32 noundef 4) #17
  %84 = ptrtoint ptr %next_to_use.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %next_to_use.i, align 4
  %shl80.i = shl i32 %85, 22
  %call.i.i346.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %next_to_clean7.i, i32 noundef 4) #17
  %86 = ptrtoint ptr %next_to_clean7.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %next_to_clean7.i, align 4
  %and83.i = shl i32 %87, 11
  %shl84.i = and i32 %and83.i, 4192256
  %or85.i = or i32 %shl84.i, %shl80.i
  %call.i.i347.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %next_to_use5.i, i32 noundef 4) #17
  %88 = ptrtoint ptr %next_to_use5.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %next_to_use5.i, align 4
  %and89.i = and i32 %89, 2047
  %or91.i = or i32 %or85.i, %and89.i
  %90 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hw1.i, align 4
  %add.ptr93.i = getelementptr i8, ptr %91, i32 5616
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %92 = tail call i32 @llvm.bswap.i32(i32 %or91.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93.i, i32 %92) #17, !srcloc !267
  %ipgt.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 9
  %93 = ptrtoint ptr %ipgt.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %ipgt.i, align 1
  %95 = and i8 %94, 127
  %and95.i = zext i8 %95 to i32
  %min_ifg.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 10
  %96 = ptrtoint ptr %min_ifg.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %min_ifg.i, align 4
  %conv97.i = zext i8 %97 to i32
  %shl99.i = shl nuw nsw i32 %conv97.i, 8
  %or100.i = or i32 %shl99.i, %and95.i
  %ipgr1.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 11
  %98 = ptrtoint ptr %ipgr1.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %ipgr1.i, align 1
  %100 = and i8 %99, 127
  %and102.i = zext i8 %100 to i32
  %shl103.i = shl nuw nsw i32 %and102.i, 16
  %or104.i = or i32 %shl103.i, %or100.i
  %ipgr2.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 12
  %101 = ptrtoint ptr %ipgr2.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %ipgr2.i, align 2
  %103 = and i8 %102, 127
  %and106.i = zext i8 %103 to i32
  %shl107.i = shl nuw nsw i32 %and106.i, 24
  %or108.i = or i32 %or104.i, %shl107.i
  %104 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hw1.i, align 4
  %add.ptr110.i = getelementptr i8, ptr %105, i32 5252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %106 = tail call i32 @llvm.bswap.i32(i32 %or108.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110.i, i32 %106) #17, !srcloc !267
  %lcol.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 24
  %107 = ptrtoint ptr %lcol.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %lcol.i, align 4
  %109 = and i16 %108, 1023
  %and112.i = zext i16 %109 to i32
  %max_retry.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 7
  %110 = ptrtoint ptr %max_retry.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %max_retry.i, align 1
  %112 = and i8 %111, 15
  %and114.i = zext i8 %112 to i32
  %shl115.i = shl nuw nsw i32 %and114.i, 12
  %or116.i = or i32 %shl115.i, %and112.i
  %jam_ipg.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 8
  %113 = ptrtoint ptr %jam_ipg.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %jam_ipg.i, align 2
  %115 = and i8 %114, 15
  %and120.i = zext i8 %115 to i32
  %shl121.i = shl nuw nsw i32 %and120.i, 24
  %or118.i = or i32 %or116.i, %shl121.i
  %or122.i = or i32 %or118.i, 10551296
  %116 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hw1.i, align 4
  %add.ptr124.i = getelementptr i8, ptr %117, i32 5272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %118 = tail call i32 @llvm.bswap.i32(i32 %or122.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124.i, i32 %118) #17, !srcloc !267
  %imt.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 21
  %119 = ptrtoint ptr %imt.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %imt.i, align 4
  %121 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hw1.i, align 4
  %add.ptr126.i = getelementptr i8, ptr %122, i32 5128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !264
  tail call void @arm_heavy_mb() #17
  %123 = tail call i16 @llvm.bswap.i16(i16 %120) #17
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr126.i, i16 %123) #17, !srcloc !265
  %124 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %hw1.i, align 4
  %add.ptr128.i = getelementptr i8, ptr %125, i32 5120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128.i, i32 67108864) #17, !srcloc !267
  %ict.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 22
  %126 = ptrtoint ptr %ict.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %ict.i, align 2
  %128 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %hw1.i, align 4
  %add.ptr130.i = getelementptr i8, ptr %129, i32 5134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !264
  tail call void @arm_heavy_mb() #17
  %130 = tail call i16 @llvm.bswap.i16(i16 %127) #17
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr130.i, i16 %130) #17, !srcloc !265
  %max_frame_size.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 34
  %131 = ptrtoint ptr %max_frame_size.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %max_frame_size.i, align 4
  %133 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %hw1.i, align 4
  %add.ptr132.i = getelementptr i8, ptr %134, i32 5276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %135 = tail call i32 @llvm.bswap.i32(i32 %132) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr132.i, i32 %135) #17, !srcloc !267
  %rx_jumbo_th.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 21
  %136 = ptrtoint ptr %rx_jumbo_th.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %rx_jumbo_th.i, align 2
  %138 = and i16 %137, 2047
  %rx_jumbo_lkah.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 22
  %139 = ptrtoint ptr %rx_jumbo_lkah.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %rx_jumbo_lkah.i, align 4
  %141 = shl i16 %140, 11
  %142 = and i16 %141, 30720
  %or139345.i = or i16 %142, %138
  %or139.i = zext i16 %or139345.i to i32
  %rrd_ret_timer.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 23
  %143 = ptrtoint ptr %rrd_ret_timer.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %rrd_ret_timer.i, align 2
  %conv140.i = zext i16 %144 to i32
  %shl142.i = shl nuw i32 %conv140.i, 16
  %or143.i = or i32 %shl142.i, %or139.i
  %145 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %hw1.i, align 4
  %add.ptr145.i = getelementptr i8, ptr %146, i32 5540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %147 = tail call i32 @llvm.bswap.i32(i32 %or143.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr145.i, i32 %147) #17, !srcloc !267
  %dev_rev.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 36
  %148 = ptrtoint ptr %dev_rev.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %dev_rev.i, align 4
  %150 = zext i16 %149 to i64
  call void @__sanitizer_cov_trace_switch(i64 %150, ptr @__sancov_gen_cov_switch_values.120)
  switch i16 %149, label %sw.default.i [
    i16 -32767, label %if.end.sw.bb.i_crit_edge
    i16 -28671, label %if.end.sw.bb.i_crit_edge65
    i16 -28670, label %if.end.sw.bb.i_crit_edge66
    i16 -28669, label %if.end.sw.bb.i_crit_edge67
  ]

if.end.sw.bb.i_crit_edge67:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge66:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge65:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end.sw.bb.i_crit_edge, %if.end.sw.bb.i_crit_edge65, %if.end.sw.bb.i_crit_edge66, %if.end.sw.bb.i_crit_edge67
  %151 = ptrtoint ptr %count67.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %count67.i, align 2
  %conv.i.i = zext i16 %152 to i32
  %div35.i.i = lshr i32 %conv.i.i, 4
  %153 = tail call i32 @llvm.umax.i32(i32 %div35.i.i, i32 2) #17
  %mul.i.i = mul nuw nsw i32 %conv.i.i, 7
  %div236.i.i = lshr i32 %mul.i.i, 3
  %shl.i.i = shl nuw nsw i32 %153, 16
  %and3.i.i = and i32 %div236.i.i, 4095
  %or.i.i = or i32 %shl.i.i, %and3.i.i
  %154 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %hw1.i, align 4
  %add.ptr.i.i62 = getelementptr i8, ptr %155, i32 5544
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %156 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i62, i32 %156) #17, !srcloc !267
  %157 = ptrtoint ptr %count.i to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %count.i, align 4
  %conv6.i.i = zext i16 %158 to i32
  %div737.i.i = lshr i32 %conv6.i.i, 4
  %mul8.i.i = mul nuw nsw i32 %conv6.i.i, 7
  %div938.i.i = lshr i32 %mul8.i.i, 3
  %159 = tail call i32 @llvm.umax.i32(i32 %div737.i.i, i32 2) #17
  %and14.i.i = and i32 %div938.i.i, 4095
  %shl17.i.i = shl nuw nsw i32 %159, 16
  %or18.i.i = or i32 %and14.i.i, %shl17.i.i
  %160 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %hw1.i, align 4
  %add.ptr21.i.i = getelementptr i8, ptr %161, i32 5548
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %162 = tail call i32 @llvm.bswap.i32(i32 %or18.i.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i.i, i32 %162) #17, !srcloc !267
  br label %atl1_configure.exit

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %163 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %hw1.i, align 4
  %add.ptr.i348.i = getelementptr i8, ptr %164, i32 5412
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i348.i) #17, !srcloc !268
  %166 = tail call i32 @llvm.bswap.i32(i32 %165) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %div48.i.i = lshr i32 %166, 4
  %167 = tail call i32 @llvm.umax.i32(i32 %div48.i.i, i32 192) #17
  %mul.i349.i = mul i32 %166, 7
  %div149.i.i = lshr i32 %mul.i349.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div149.i.i, i32 %167)
  %cmp2.i.i = icmp ult i32 %div149.i.i, %167
  %add.i.i = add nuw nsw i32 %167, 16
  %spec.select.i.i = select i1 %cmp2.i.i, i32 %add.i.i, i32 %div149.i.i
  %and.i.i = shl i32 %spec.select.i.i, 16
  %shl.i350.i = and i32 %and.i.i, 268369920
  %and5.i.i = and i32 %167, 4095
  %or.i351.i = or i32 %shl.i350.i, %and5.i.i
  %168 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %hw1.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %169, i32 5544
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %170 = tail call i32 @llvm.bswap.i32(i32 %or.i351.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i.i, i32 %170) #17, !srcloc !267
  %171 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %hw1.i, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %172, i32 5388
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i.i) #17, !srcloc !268
  %174 = tail call i32 @llvm.bswap.i32(i32 %173) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %div1250.i.i = lshr i32 %174, 3
  %mul13.i.i = mul i32 %174, 7
  %div1451.i.i = lshr i32 %mul13.i.i, 3
  %175 = tail call i32 @llvm.umax.i32(i32 %div1250.i.i, i32 2) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %div1451.i.i, i32 %175)
  %cmp18.i.i = icmp ult i32 %div1451.i.i, %175
  %add20.i.i = add nuw nsw i32 %175, 3
  %hi.1.i.i = select i1 %cmp18.i.i, i32 %add20.i.i, i32 %div1451.i.i
  %and22.i.i = and i32 %hi.1.i.i, 4095
  %and24.i.i = shl i32 %175, 16
  %shl25.i.i = and i32 %and24.i.i, 268369920
  %or26.i.i = or i32 %and22.i.i, %shl25.i.i
  %176 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %hw1.i, align 4
  %add.ptr28.i.i = getelementptr i8, ptr %177, i32 5548
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %178 = tail call i32 @llvm.bswap.i32(i32 %or26.i.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i.i, i32 %178) #17, !srcloc !267
  br label %atl1_configure.exit

atl1_configure.exit:                              ; preds = %sw.default.i, %sw.bb.i
  %tpd_burst.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 13
  %179 = ptrtoint ptr %tpd_burst.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %tpd_burst.i, align 1
  %181 = and i8 %180, 31
  %and148.i = zext i8 %181 to i32
  %txf_burst.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 20
  %182 = ptrtoint ptr %txf_burst.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %txf_burst.i, align 4
  %conv150.i = zext i16 %183 to i32
  %shl152.i = shl nuw i32 %conv150.i, 16
  %or153.i = or i32 %shl152.i, %and148.i
  %tpd_fetch_th.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 17
  %184 = ptrtoint ptr %tpd_fetch_th.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %tpd_fetch_th.i, align 1
  %186 = and i8 %185, 63
  %and155.i = zext i8 %186 to i32
  %shl156.i = shl nuw nsw i32 %and155.i, 8
  %or157.i = or i32 %shl156.i, %or153.i
  %or159.i = or i32 %or157.i, 96
  %187 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %hw1.i, align 4
  %add.ptr161.i = getelementptr i8, ptr %188, i32 5504
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %189 = tail call i32 @llvm.bswap.i32(i32 %or159.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr161.i, i32 %189) #17, !srcloc !267
  %tx_jumbo_task_th.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 19
  %190 = ptrtoint ptr %tx_jumbo_task_th.i to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %tx_jumbo_task_th.i, align 2
  %192 = and i16 %191, 2047
  %and163.i = zext i16 %192 to i32
  %tpd_fetch_gap.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 18
  %193 = ptrtoint ptr %tpd_fetch_gap.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %tpd_fetch_gap.i, align 4
  %195 = and i8 %194, 31
  %and166.i = zext i8 %195 to i32
  %shl167.i = shl nuw nsw i32 %and166.i, 16
  %or168.i = or i32 %shl167.i, %and163.i
  %196 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %hw1.i, align 4
  %add.ptr170.i = getelementptr i8, ptr %197, i32 5508
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %198 = tail call i32 @llvm.bswap.i32(i32 %or168.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr170.i, i32 %198) #17, !srcloc !267
  %rfd_burst.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 14
  %199 = ptrtoint ptr %rfd_burst.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %rfd_burst.i, align 4
  %conv171.i = zext i8 %200 to i32
  %rrd_burst.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 16
  %201 = ptrtoint ptr %rrd_burst.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %rrd_burst.i, align 2
  %conv174.i = zext i8 %202 to i32
  %shl176.i = shl nuw nsw i32 %conv174.i, 8
  %or177.i = or i32 %shl176.i, %conv171.i
  %rfd_fetch_gap.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 15
  %203 = ptrtoint ptr %rfd_fetch_gap.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %rfd_fetch_gap.i, align 1
  %205 = and i8 %204, 31
  %and179.i = zext i8 %205 to i32
  %shl180.i = shl nuw nsw i32 %and179.i, 16
  %or181.i = or i32 %shl180.i, %or177.i
  %or183.i = or i32 %or181.i, -1073741824
  %206 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %hw1.i, align 4
  %add.ptr185.i = getelementptr i8, ptr %207, i32 5536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %208 = tail call i32 @llvm.bswap.i32(i32 %or183.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr185.i, i32 %208) #17, !srcloc !267
  %dmar_block.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 4
  %209 = ptrtoint ptr %dmar_block.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %dmar_block.i, align 4
  %and186.i = shl i32 %210, 4
  %shl187.i = and i32 %and186.i, 112
  %dmaw_block.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 5
  %211 = ptrtoint ptr %dmaw_block.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %dmaw_block.i, align 4
  %and188.i = shl i32 %212, 7
  %shl189.i = and i32 %and188.i, 896
  %dma_ord.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 2
  %213 = ptrtoint ptr %dma_ord.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %dma_ord.i, align 4
  %rcb_value.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 3
  %215 = ptrtoint ptr %rcb_value.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %rcb_value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %216)
  %cmp.i = icmp eq i32 %216, 1
  %spec.select.v.i = select i1 %cmp.i, i32 3080, i32 3072
  %or190.i = or i32 %214, %shl187.i
  %or192.i = or i32 %or190.i, %shl189.i
  %spec.select.i = or i32 %or192.i, %spec.select.v.i
  %217 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %hw1.i, align 4
  %add.ptr197.i = getelementptr i8, ptr %218, i32 5568
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %219 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr197.i, i32 %219) #17, !srcloc !267
  %cmb_tpd.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 25
  %220 = ptrtoint ptr %cmb_tpd.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %cmb_tpd.i, align 2
  %222 = ptrtoint ptr %count72.i to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %count72.i, align 2
  %224 = tail call i16 @llvm.umax.i16(i16 %221, i16 %223) #17
  %cond.i = zext i16 %224 to i32
  %shl209.i = shl nuw i32 %cond.i, 16
  %cmb_rrd.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 26
  %225 = ptrtoint ptr %cmb_rrd.i to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %cmb_rrd.i, align 4
  %conv210.i = zext i16 %226 to i32
  %or211.i = or i32 %shl209.i, %conv210.i
  %227 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %hw1.i, align 4
  %add.ptr213.i = getelementptr i8, ptr %228, i32 5588
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %229 = tail call i32 @llvm.bswap.i32(i32 %or211.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr213.i, i32 %229) #17, !srcloc !267
  %cmb_rx_timer.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 27
  %230 = ptrtoint ptr %cmb_rx_timer.i to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %cmb_rx_timer.i, align 2
  %conv214.i = zext i16 %231 to i32
  %cmb_tx_timer.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 28
  %232 = ptrtoint ptr %cmb_tx_timer.i to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %cmb_tx_timer.i, align 4
  %conv215.i = zext i16 %233 to i32
  %shl216.i = shl nuw i32 %conv215.i, 16
  %or217.i = or i32 %shl216.i, %conv214.i
  %234 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %hw1.i, align 4
  %add.ptr219.i = getelementptr i8, ptr %235, i32 5592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %236 = tail call i32 @llvm.bswap.i32(i32 %or217.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr219.i, i32 %236) #17, !srcloc !267
  %smb_timer.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 29
  %237 = ptrtoint ptr %smb_timer.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %smb_timer.i, align 4
  %239 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %hw1.i, align 4
  %add.ptr221.i = getelementptr i8, ptr %240, i32 5604
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %241 = tail call i32 @llvm.bswap.i32(i32 %238) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr221.i, i32 %241) #17, !srcloc !267
  %242 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %hw1.i, align 4
  %add.ptr223.i = getelementptr i8, ptr %243, i32 5584
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr223.i, i32 201326592) #17, !srcloc !267
  %244 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %hw1.i, align 4
  %add.ptr226.i = getelementptr i8, ptr %245, i32 5632
  %246 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr226.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %247 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %hw1.i, align 4
  %add.ptr236.i = getelementptr i8, ptr %248, i32 5632
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr236.i, i32 -193) #17, !srcloc !267
  %249 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %hw1.i, align 4
  %add.ptr239.i = getelementptr i8, ptr %250, i32 5632
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr239.i, i32 0) #17, !srcloc !267
  %251 = and i32 %246, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %tobool6.not = icmp eq i32 %251, 0
  br i1 %tobool6.not, label %if.end14, label %atl1_configure.exit.err_up_crit_edge, !prof !271

atl1_configure.exit.err_up_crit_edge:             ; preds = %atl1_configure.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_up

if.end14:                                         ; preds = %atl1_configure.exit
  %pdev = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 1
  %252 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %pdev, align 4
  %call15 = tail call i32 @pci_enable_msi(ptr noundef %253) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end14.if.end22_crit_edge, label %if.then17

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22

if.then17:                                        ; preds = %if.end14
  %msg_enable = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 20
  %254 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %msg_enable, align 8
  %and = and i32 %255, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.then17.if.end22_crit_edge, label %do.end

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22

do.end:                                           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #19
  %256 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %257, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call15) #20
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.then17.if.end22_crit_edge, %if.end14.if.end22_crit_edge
  %irq_flags.0 = phi i32 [ 0, %if.end14.if.end22_crit_edge ], [ 128, %do.end ], [ 128, %if.then17.if.end22_crit_edge ]
  %258 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %pdev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %259, i32 0, i32 46
  %260 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %261, ptr noundef nonnull @atl1_intr, ptr noundef null, i32 noundef %irq_flags.0, ptr noundef %1, ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool25.not = icmp eq i32 %call.i, 0
  br i1 %tobool25.not, label %if.end33, label %if.end22.err_up_crit_edge, !prof !271

if.end22.err_up_crit_edge:                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_up

if.end33:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  %napi = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 8
  tail call void @napi_enable(ptr noundef %napi) #17
  %262 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %hw1.i, align 4
  %add.ptr.i.i64 = getelementptr i8, ptr %263, i32 5636
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i64, i32 18624528) #17, !srcloc !267
  %264 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %hw1.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %265, i32 5636
  %266 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %int_enabled.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 24
  %267 = ptrtoint ptr %int_enabled.i to i32
  call void @__asan_store1_noabort(i32 %267)
  store i8 1, ptr %int_enabled.i, align 8
  tail call fastcc void @atl1_check_link(ptr noundef %adapter)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %268 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %269, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #17
  br label %cleanup

err_up:                                           ; preds = %if.end22.err_up_crit_edge, %atl1_configure.exit.err_up_crit_edge
  %err.0 = phi i32 [ %call.i, %if.end22.err_up_crit_edge ], [ -5, %atl1_configure.exit.err_up_crit_edge ]
  %pdev35 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 1
  %270 = ptrtoint ptr %pdev35 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %pdev35, align 4
  tail call void @pci_disable_msi(ptr noundef %271) #17
  tail call fastcc void @atl1_clean_rx_ring(ptr noundef %adapter)
  br label %cleanup

cleanup:                                          ; preds = %err_up, %if.end33, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_up ], [ 0, %if.end33 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @atl1_alloc_rx_buffers(ptr noundef %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rfd_ring1 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 16
  %pdev2 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev2, align 4
  %next_to_use = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 16, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %next_to_use, i32 noundef 4) #17
  %2 = ptrtoint ptr %next_to_use to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %next_to_use, align 4
  %count = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 16, i32 3
  %buffer_info6 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 16, i32 6
  %4 = ptrtoint ptr %buffer_info6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer_info6, align 4
  %idxprom = and i32 %3, 65535
  %alloced108 = getelementptr %struct.atl1_buffer, ptr %5, i32 %idxprom, i32 2
  %6 = ptrtoint ptr %alloced108 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %alloced108, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not109 = icmp eq i16 %7, 0
  br i1 %tobool.not109, label %land.rhs.lr.ph, label %entry.if.end65_crit_edge

entry.if.end65_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end65

land.rhs.lr.ph:                                   ; preds = %entry
  %conv = trunc i32 %3 to i16
  %arrayidx = getelementptr %struct.atl1_buffer, ptr %5, i32 %idxprom
  %inc = add i16 %conv, 1
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc, i16 %9)
  %cmp = icmp eq i16 %inc, %9
  %spec.store.select = select i1 %cmp, i16 0, i16 %inc
  %idxprom8 = zext i16 %spec.store.select to i32
  %arrayidx9 = getelementptr %struct.atl1_buffer, ptr %5, i32 %idxprom8
  %rx_buffer_len = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 3
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  br label %land.rhs

land.rhs:                                         ; preds = %if.end53.land.rhs_crit_edge, %land.rhs.lr.ph
  %alloced116 = phi ptr [ %alloced108, %land.rhs.lr.ph ], [ %alloced, %if.end53.land.rhs_crit_edge ]
  %next_next.0115 = phi i16 [ %spec.store.select, %land.rhs.lr.ph ], [ %next_next.1, %if.end53.land.rhs_crit_edge ]
  %rfd_next_to_use.0114 = phi i16 [ %conv, %land.rhs.lr.ph ], [ %next_next.0115, %if.end53.land.rhs_crit_edge ]
  %num_alloc.0112 = phi i16 [ 0, %land.rhs.lr.ph ], [ %inc60, %if.end53.land.rhs_crit_edge ]
  %next_info.0111 = phi ptr [ %arrayidx9, %land.rhs.lr.ph ], [ %arrayidx59, %if.end53.land.rhs_crit_edge ]
  %buffer_info.0110 = phi ptr [ %arrayidx, %land.rhs.lr.ph ], [ %arrayidx56, %if.end53.land.rhs_crit_edge ]
  %alloced10 = getelementptr inbounds %struct.atl1_buffer, ptr %next_info.0111, i32 0, i32 2
  %10 = ptrtoint ptr %alloced10 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %alloced10, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool11.not = icmp eq i16 %11, 0
  br i1 %tobool11.not, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %12 = ptrtoint ptr %buffer_info.0110 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer_info.0110, align 4
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  %14 = ptrtoint ptr %alloced116 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %alloced116, align 2
  br label %next

if.end16:                                         ; preds = %while.body
  %15 = ptrtoint ptr %rfd_ring1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rfd_ring1, align 4
  %17 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter, align 8
  %19 = ptrtoint ptr %rx_buffer_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_buffer_len, align 8
  %add.i.i = add i32 %20, 2
  %call.i.i103 = tail call ptr @__netdev_alloc_skb(ptr noundef %18, i32 noundef %add.i.i, i32 noundef 2592) #17
  %tobool.not.i.i = icmp eq ptr %call.i.i103, null
  br i1 %tobool.not.i.i, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  %rx_dropped = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 2, i32 9
  %21 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %rx_dropped, align 8
  %inc26 = add i64 %22, 1
  store i64 %inc26, ptr %rx_dropped, align 8
  br label %while.end

if.end27:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i103, i32 0, i32 19
  %23 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i103, i32 0, i32 16
  %25 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %26, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %idxprom17 = zext i16 %rfd_next_to_use.0114 to i32
  %arrayidx18 = getelementptr %struct.rx_free_desc, ptr %16, i32 %idxprom17
  %27 = ptrtoint ptr %alloced116 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %alloced116, align 2
  %28 = ptrtoint ptr %buffer_info.0110 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i.i103, ptr %buffer_info.0110, align 4
  %29 = ptrtoint ptr %rx_buffer_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_buffer_len, align 8
  %conv31 = trunc i32 %30 to i16
  %length = getelementptr inbounds %struct.atl1_buffer, ptr %buffer_info.0110, i32 0, i32 1
  %31 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv31, ptr %length, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %32 = load ptr, ptr @mem_map, align 4
  %33 = load ptr, ptr %data.i.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  %sub = add i32 %34, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %32, i32 %shr
  %and = and i32 %34, 4095
  %35 = load i32, ptr %rx_buffer_len, align 8
  %call35 = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr, i32 noundef %and, i32 noundef %35, i32 noundef 2, i32 noundef 0) #17
  %dma = getelementptr inbounds %struct.atl1_buffer, ptr %buffer_info.0110, i32 0, i32 3
  %36 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call35, ptr %dma, align 4
  %conv37 = zext i32 %call35 to i64
  %37 = tail call i64 @llvm.bswap.i64(i64 %conv37)
  %38 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_storeN_noabort(i32 %38, i32 8)
  store i64 %37, ptr %arrayidx18, align 1
  %39 = ptrtoint ptr %rx_buffer_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_buffer_len, align 8
  %conv39 = trunc i32 %40 to i16
  %41 = tail call i16 @llvm.bswap.i16(i16 %conv39)
  %buf_len = getelementptr %struct.rx_free_desc, ptr %16, i32 %idxprom17, i32 1
  %42 = ptrtoint ptr %buf_len to i32
  call void @__asan_storeN_noabort(i32 %42, i32 2)
  store i16 %41, ptr %buf_len, align 1
  %coalese = getelementptr %struct.rx_free_desc, ptr %16, i32 %idxprom17, i32 2
  %43 = ptrtoint ptr %coalese to i32
  call void @__asan_storeN_noabort(i32 %43, i32 2)
  store i16 0, ptr %coalese, align 1
  br label %next

next:                                             ; preds = %if.end27, %if.then14
  %inc40 = add i16 %next_next.0115, 1
  %44 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc40, i16 %45)
  %cmp44 = icmp eq i16 %inc40, %45
  br i1 %cmp44, label %if.then52, label %next.if.end53_crit_edge, !prof !270

next.if.end53_crit_edge:                          ; preds = %next
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end53

if.then52:                                        ; preds = %next
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %next.if.end53_crit_edge
  %next_next.1 = phi i16 [ 0, %if.then52 ], [ %inc40, %next.if.end53_crit_edge ]
  %46 = ptrtoint ptr %buffer_info6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buffer_info6, align 4
  %idxprom55 = zext i16 %next_next.0115 to i32
  %arrayidx56 = getelementptr %struct.atl1_buffer, ptr %47, i32 %idxprom55
  %idxprom58 = zext i16 %next_next.1 to i32
  %arrayidx59 = getelementptr %struct.atl1_buffer, ptr %47, i32 %idxprom58
  %inc60 = add i16 %num_alloc.0112, 1
  %alloced = getelementptr %struct.atl1_buffer, ptr %47, i32 %idxprom55, i32 2
  %48 = ptrtoint ptr %alloced to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %alloced, align 2
  %tobool.not = icmp eq i16 %49, 0
  br i1 %tobool.not, label %if.end53.land.rhs_crit_edge, label %if.end53.while.end_crit_edge

if.end53.while.end_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

if.end53.land.rhs_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.rhs

while.end:                                        ; preds = %if.end53.while.end_crit_edge, %if.then25, %land.rhs.while.end_crit_edge
  %num_alloc.0107 = phi i16 [ %num_alloc.0112, %if.then25 ], [ %num_alloc.0112, %land.rhs.while.end_crit_edge ], [ %inc60, %if.end53.while.end_crit_edge ]
  %rfd_next_to_use.0105 = phi i16 [ %rfd_next_to_use.0114, %if.then25 ], [ %rfd_next_to_use.0114, %land.rhs.while.end_crit_edge ], [ %next_next.0115, %if.end53.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %num_alloc.0107)
  %tobool61.not = icmp eq i16 %num_alloc.0107, 0
  br i1 %tobool61.not, label %while.end.if.end65_crit_edge, label %do.body

while.end.if.end65_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end65

do.body:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !285
  tail call void @arm_heavy_mb() #17
  %conv64 = zext i16 %rfd_next_to_use.0105 to i32
  %call.i.i102 = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_to_use, i32 noundef 4) #17
  %50 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile i32 %conv64, ptr %next_to_use, align 4
  br label %if.end65

if.end65:                                         ; preds = %do.body, %while.end.if.end65_crit_edge, %entry.if.end65_crit_edge
  %num_alloc.0107125 = phi i16 [ %num_alloc.0107, %do.body ], [ 0, %while.end.if.end65_crit_edge ], [ 0, %entry.if.end65_crit_edge ]
  ret i16 %num_alloc.0107125
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1_intr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %data, i32 2304
  %cmb = getelementptr i8, ptr %data, i32 3268
  %0 = ptrtoint ptr %cmb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmb, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %3, 3145728
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and, ptr %1, align 4
  %and5 = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8

if.then7:                                         ; preds = %if.end
  %lock.i = getelementptr i8, ptr %data, i32 2556
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #17
  %hw.i = getelementptr i8, ptr %data, i32 3164
  %5 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 62208) #17, !srcloc !267
  %7 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %8, i32 5140
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then7
  %i.023.i.i = phi i32 [ 0, %if.then7 ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 429496) #17
  %11 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw.i, align 4
  %add.ptr8.i.i = getelementptr i8, ptr %12, i32 5140
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %14 = and i32 %13, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  %inc.i.i = add nuw nsw i32 %i.023.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %inc.i.i)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 30
  %or.cond.i = select i1 %tobool.not.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i, label %atlx_clear_phy_int.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

atlx_clear_phy_int.exit:                          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #17
  br label %if.end8

if.end8:                                          ; preds = %atlx_clear_phy_int.exit, %if.end.if.end8_crit_edge
  %or = or i32 %3, -2147483648
  %hw = getelementptr i8, ptr %data, i32 3164
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 5632
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %17 = tail call i32 @llvm.bswap.i32(i32 %or) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %17) #17, !srcloc !267
  %and9 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 8
  %smb2.i = getelementptr i8, ptr %data, i32 3260
  %20 = ptrtoint ptr %smb2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %smb2.i, align 4
  %rx_frag.i = getelementptr inbounds %struct.stats_msg_block, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %rx_frag.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_frag.i, align 4
  %rx_fcs_err.i = getelementptr inbounds %struct.stats_msg_block, ptr %21, i32 0, i32 5
  %24 = ptrtoint ptr %rx_fcs_err.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_fcs_err.i, align 4
  %add.i = add i32 %25, %23
  %rx_len_err.i = getelementptr inbounds %struct.stats_msg_block, ptr %21, i32 0, i32 6
  %26 = ptrtoint ptr %rx_len_err.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_len_err.i, align 4
  %add4.i = add i32 %add.i, %27
  %rx_sz_ov.i = getelementptr inbounds %struct.stats_msg_block, ptr %21, i32 0, i32 17
  %28 = ptrtoint ptr %rx_sz_ov.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_sz_ov.i, align 4
  %add5.i = add i32 %add4.i, %29
  %rx_rxf_ov.i = getelementptr inbounds %struct.stats_msg_block, ptr %21, i32 0, i32 18
  %30 = ptrtoint ptr %rx_rxf_ov.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_rxf_ov.i, align 4
  %add6.i = add i32 %add5.i, %31
  %rx_rrd_ov.i = getelementptr inbounds %struct.stats_msg_block, ptr %21, i32 0, i32 19
  %32 = ptrtoint ptr %rx_rrd_ov.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_rrd_ov.i, align 4
  %add7.i = add i32 %add6.i, %33
  %rx_align_err.i = getelementptr inbounds %struct.stats_msg_block, ptr %21, i32 0, i32 20
  %34 = ptrtoint ptr %rx_align_err.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_align_err.i, align 4
  %add8.i = add i32 %add7.i, %35
  %conv.i = zext i32 %add8.i to i64
  %tx_late_col.i = getelementptr inbounds %struct.stats_msg_block, ptr %21, i32 0, i32 41
  %36 = ptrtoint ptr %tx_late_col.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_late_col.i, align 4
  %tx_abort_col.i = getelementptr inbounds %struct.stats_msg_block, ptr %21, i32 0, i32 42
  %38 = ptrtoint ptr %tx_abort_col.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_abort_col.i, align 4
  %add9.i = add i32 %39, %37
  %tx_underrun.i = getelementptr inbounds %struct.stats_msg_block, ptr %21, i32 0, i32 43
  %40 = ptrtoint ptr %tx_underrun.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_underrun.i, align 4
  %add10.i = add i32 %add9.i, %41
  %tx_trunc.i = getelementptr inbounds %struct.stats_msg_block, ptr %21, i32 0, i32 46
  %42 = ptrtoint ptr %tx_trunc.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_trunc.i, align 4
  %add11.i = add i32 %add10.i, %43
  %conv12.i = zext i32 %add11.i to i64
  %44 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %21, align 4
  %conv13.i = zext i32 %45 to i64
  %add14.i = add nuw nsw i64 %conv13.i, %conv.i
  %soft_stats.i = getelementptr i8, ptr %data, i32 2312
  %46 = ptrtoint ptr %soft_stats.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %soft_stats.i, align 8
  %add15.i = add i64 %add14.i, %47
  store i64 %add15.i, ptr %soft_stats.i, align 8
  %tx_ok.i = getelementptr inbounds %struct.stats_msg_block, ptr %21, i32 0, i32 24
  %48 = ptrtoint ptr %tx_ok.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_ok.i, align 4
  %conv16.i = zext i32 %49 to i64
  %add17.i = add nuw nsw i64 %conv16.i, %conv12.i
  %tx_packets.i = getelementptr i8, ptr %data, i32 2320
  %50 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %tx_packets.i, align 8
  %add19.i = add i64 %add17.i, %51
  store i64 %add19.i, ptr %tx_packets.i, align 8
  %rx_byte_cnt.i = getelementptr inbounds %struct.stats_msg_block, ptr %21, i32 0, i32 7
  %52 = ptrtoint ptr %rx_byte_cnt.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_byte_cnt.i, align 4
  %conv20.i = zext i32 %53 to i64
  %rx_bytes.i = getelementptr i8, ptr %data, i32 2328
  %54 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %rx_bytes.i, align 8
  %add22.i = add i64 %55, %conv20.i
  store i64 %add22.i, ptr %rx_bytes.i, align 8
  %tx_byte_cnt.i = getelementptr inbounds %struct.stats_msg_block, ptr %21, i32 0, i32 31
  %56 = ptrtoint ptr %tx_byte_cnt.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tx_byte_cnt.i, align 4
  %conv23.i = zext i32 %57 to i64
  %tx_bytes.i = getelementptr i8, ptr %data, i32 2336
  %58 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %tx_bytes.i, align 8
  %add25.i = add i64 %59, %conv23.i
  store i64 %add25.i, ptr %tx_bytes.i, align 8
  %rx_mcast.i = getelementptr inbounds %struct.stats_msg_block, ptr %21, i32 0, i32 2
  %60 = ptrtoint ptr %rx_mcast.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx_mcast.i, align 4
  %conv26.i = zext i32 %61 to i64
  %multicast.i = getelementptr i8, ptr %data, i32 2344
  %62 = ptrtoint ptr %multicast.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %multicast.i, align 8
  %add28.i = add i64 %63, %conv26.i
  store i64 %add28.i, ptr %multicast.i, align 8
  %tx_1_col.i = getelementptr inbounds %struct.stats_msg_block, ptr %21, i32 0, i32 39
  %64 = ptrtoint ptr %tx_1_col.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tx_1_col.i, align 4
  %tx_2_col.i = getelementptr inbounds %struct.stats_msg_block, ptr %21, i32 0, i32 40
  %66 = ptrtoint ptr %tx_2_col.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tx_2_col.i, align 4
  %add29.i = add i32 %67, %65
  %68 = load i32, ptr %tx_late_col.i, align 4
  %add31.i = add i32 %add29.i, %68
  %69 = load i32, ptr %tx_abort_col.i, align 4
  %add33.i = add i32 %add31.i, %69
  %conv34.i = zext i32 %add33.i to i64
  %collisions.i = getelementptr i8, ptr %data, i32 2352
  %70 = ptrtoint ptr %collisions.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %collisions.i, align 8
  %add36.i = add i64 %71, %conv34.i
  store i64 %add36.i, ptr %collisions.i, align 8
  %rx_errors.i = getelementptr i8, ptr %data, i32 2360
  %72 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %rx_errors.i, align 8
  %add38.i = add i64 %73, %conv.i
  store i64 %add38.i, ptr %rx_errors.i, align 8
  %74 = load i32, ptr %rx_rxf_ov.i, align 4
  %conv40.i = zext i32 %74 to i64
  %rx_fifo_errors.i = getelementptr i8, ptr %data, i32 2400
  %75 = ptrtoint ptr %rx_fifo_errors.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %rx_fifo_errors.i, align 8
  %add42.i = add i64 %76, %conv40.i
  store i64 %add42.i, ptr %rx_fifo_errors.i, align 8
  %77 = load i32, ptr %rx_len_err.i, align 4
  %conv44.i = zext i32 %77 to i64
  %rx_length_errors.i = getelementptr i8, ptr %data, i32 2368
  %78 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %rx_length_errors.i, align 8
  %add46.i = add i64 %79, %conv44.i
  store i64 %add46.i, ptr %rx_length_errors.i, align 8
  %80 = load i32, ptr %rx_fcs_err.i, align 4
  %conv48.i = zext i32 %80 to i64
  %rx_crc_errors.i = getelementptr i8, ptr %data, i32 2376
  %81 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %rx_crc_errors.i, align 8
  %add50.i = add i64 %82, %conv48.i
  store i64 %add50.i, ptr %rx_crc_errors.i, align 8
  %83 = load i32, ptr %rx_align_err.i, align 4
  %conv52.i = zext i32 %83 to i64
  %rx_frame_errors.i = getelementptr i8, ptr %data, i32 2392
  %84 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %rx_frame_errors.i, align 8
  %add54.i = add i64 %85, %conv52.i
  store i64 %add54.i, ptr %rx_frame_errors.i, align 8
  %rx_pause.i = getelementptr inbounds %struct.stats_msg_block, ptr %21, i32 0, i32 3
  %86 = ptrtoint ptr %rx_pause.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rx_pause.i, align 4
  %conv55.i = zext i32 %87 to i64
  %rx_pause57.i = getelementptr i8, ptr %data, i32 2520
  %88 = ptrtoint ptr %rx_pause57.i to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %rx_pause57.i, align 8
  %add58.i = add i64 %89, %conv55.i
  store i64 %add58.i, ptr %rx_pause57.i, align 8
  %90 = load i32, ptr %rx_rrd_ov.i, align 4
  %conv60.i = zext i32 %90 to i64
  %rx_rrd_ov62.i = getelementptr i8, ptr %data, i32 2528
  %91 = ptrtoint ptr %rx_rrd_ov62.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %rx_rrd_ov62.i, align 8
  %add63.i = add i64 %92, %conv60.i
  store i64 %add63.i, ptr %rx_rrd_ov62.i, align 8
  %93 = load i32, ptr %rx_sz_ov.i, align 4
  %conv65.i = zext i32 %93 to i64
  %rx_trunc.i = getelementptr i8, ptr %data, i32 2536
  %94 = ptrtoint ptr %rx_trunc.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %rx_trunc.i, align 8
  %add67.i = add i64 %95, %conv65.i
  store i64 %add67.i, ptr %rx_trunc.i, align 8
  %tx_errors.i = getelementptr i8, ptr %data, i32 2416
  %96 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %tx_errors.i, align 8
  %add69.i = add i64 %97, %conv12.i
  store i64 %add69.i, ptr %tx_errors.i, align 8
  %98 = load i32, ptr %tx_underrun.i, align 4
  %conv71.i = zext i32 %98 to i64
  %tx_fifo_errors.i = getelementptr i8, ptr %data, i32 2424
  %99 = ptrtoint ptr %tx_fifo_errors.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %tx_fifo_errors.i, align 8
  %add73.i = add i64 %100, %conv71.i
  store i64 %add73.i, ptr %tx_fifo_errors.i, align 8
  %101 = load i32, ptr %tx_abort_col.i, align 4
  %conv75.i = zext i32 %101 to i64
  %tx_aborted_errors.i = getelementptr i8, ptr %data, i32 2432
  %102 = ptrtoint ptr %tx_aborted_errors.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %tx_aborted_errors.i, align 8
  %add77.i = add i64 %103, %conv75.i
  store i64 %add77.i, ptr %tx_aborted_errors.i, align 8
  %104 = load i32, ptr %tx_late_col.i, align 4
  %conv79.i = zext i32 %104 to i64
  %tx_window_errors.i = getelementptr i8, ptr %data, i32 2440
  %105 = ptrtoint ptr %tx_window_errors.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %tx_window_errors.i, align 8
  %add81.i = add i64 %106, %conv79.i
  store i64 %add81.i, ptr %tx_window_errors.i, align 8
  %107 = load i32, ptr %tx_abort_col.i, align 4
  %conv83.i = zext i32 %107 to i64
  %excecol.i = getelementptr i8, ptr %data, i32 2464
  %108 = ptrtoint ptr %excecol.i to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %excecol.i, align 8
  %add85.i = add i64 %109, %conv83.i
  store i64 %add85.i, ptr %excecol.i, align 8
  %tx_defer.i = getelementptr inbounds %struct.stats_msg_block, ptr %21, i32 0, i32 30
  %110 = ptrtoint ptr %tx_defer.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %tx_defer.i, align 4
  %conv86.i = zext i32 %111 to i64
  %deffer.i = getelementptr i8, ptr %data, i32 2472
  %112 = ptrtoint ptr %deffer.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %deffer.i, align 8
  %add88.i = add i64 %113, %conv86.i
  store i64 %add88.i, ptr %deffer.i, align 8
  %114 = load i32, ptr %tx_1_col.i, align 4
  %conv90.i = zext i32 %114 to i64
  %scc.i = getelementptr i8, ptr %data, i32 2480
  %115 = ptrtoint ptr %scc.i to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %scc.i, align 8
  %add92.i = add i64 %116, %conv90.i
  store i64 %add92.i, ptr %scc.i, align 8
  %117 = load i32, ptr %tx_2_col.i, align 4
  %conv94.i = zext i32 %117 to i64
  %mcc.i = getelementptr i8, ptr %data, i32 2488
  %118 = ptrtoint ptr %mcc.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %mcc.i, align 8
  %add96.i = add i64 %119, %conv94.i
  store i64 %add96.i, ptr %mcc.i, align 8
  %120 = load i32, ptr %tx_late_col.i, align 4
  %conv98.i = zext i32 %120 to i64
  %latecol.i = getelementptr i8, ptr %data, i32 2496
  %121 = ptrtoint ptr %latecol.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %latecol.i, align 8
  %add100.i = add i64 %122, %conv98.i
  store i64 %add100.i, ptr %latecol.i, align 8
  %123 = load i32, ptr %tx_underrun.i, align 4
  %conv102.i = zext i32 %123 to i64
  %tx_underrun104.i = getelementptr i8, ptr %data, i32 2504
  %124 = ptrtoint ptr %tx_underrun104.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %tx_underrun104.i, align 8
  %add105.i = add i64 %125, %conv102.i
  store i64 %add105.i, ptr %tx_underrun104.i, align 8
  %126 = load i32, ptr %tx_trunc.i, align 4
  %conv107.i = zext i32 %126 to i64
  %tx_trunc109.i = getelementptr i8, ptr %data, i32 2512
  %127 = ptrtoint ptr %tx_trunc109.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %tx_trunc109.i, align 8
  %add110.i = add i64 %128, %conv107.i
  store i64 %add110.i, ptr %tx_trunc109.i, align 8
  %tx_pause.i = getelementptr inbounds %struct.stats_msg_block, ptr %21, i32 0, i32 27
  %129 = ptrtoint ptr %tx_pause.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %tx_pause.i, align 4
  %conv111.i = zext i32 %130 to i64
  %tx_pause113.i = getelementptr i8, ptr %data, i32 2456
  %131 = ptrtoint ptr %tx_pause113.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %tx_pause113.i, align 8
  %add114.i = add i64 %132, %conv111.i
  store i64 %add114.i, ptr %tx_pause113.i, align 8
  %conv117.i = trunc i64 %add22.i to i32
  %stats.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36
  %rx_bytes118.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36, i32 2
  %133 = ptrtoint ptr %rx_bytes118.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %conv117.i, ptr %rx_bytes118.i, align 8
  %134 = load i64, ptr %tx_bytes.i, align 8
  %conv121.i = trunc i64 %134 to i32
  %tx_bytes123.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36, i32 3
  %135 = ptrtoint ptr %tx_bytes123.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %conv121.i, ptr %tx_bytes123.i, align 4
  %136 = load i64, ptr %multicast.i, align 8
  %conv126.i = trunc i64 %136 to i32
  %multicast128.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36, i32 8
  %137 = ptrtoint ptr %multicast128.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %conv126.i, ptr %multicast128.i, align 8
  %138 = load i64, ptr %collisions.i, align 8
  %conv131.i = trunc i64 %138 to i32
  %collisions133.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36, i32 9
  %139 = ptrtoint ptr %collisions133.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %conv131.i, ptr %collisions133.i, align 4
  %140 = load i64, ptr %rx_errors.i, align 8
  %conv136.i = trunc i64 %140 to i32
  %rx_errors138.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36, i32 4
  %141 = ptrtoint ptr %rx_errors138.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %conv136.i, ptr %rx_errors138.i, align 8
  %142 = load i64, ptr %rx_length_errors.i, align 8
  %conv141.i = trunc i64 %142 to i32
  %rx_length_errors143.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36, i32 10
  %143 = ptrtoint ptr %rx_length_errors143.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %conv141.i, ptr %rx_length_errors143.i, align 8
  %144 = load i64, ptr %rx_crc_errors.i, align 8
  %conv146.i = trunc i64 %144 to i32
  %rx_crc_errors148.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36, i32 12
  %145 = ptrtoint ptr %rx_crc_errors148.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %conv146.i, ptr %rx_crc_errors148.i, align 8
  %146 = load i64, ptr %rx_frame_errors.i, align 8
  %conv151.i = trunc i64 %146 to i32
  %rx_frame_errors153.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36, i32 13
  %147 = ptrtoint ptr %rx_frame_errors153.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %conv151.i, ptr %rx_frame_errors153.i, align 4
  %148 = load i64, ptr %rx_fifo_errors.i, align 8
  %conv156.i = trunc i64 %148 to i32
  %rx_fifo_errors158.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36, i32 14
  %149 = ptrtoint ptr %rx_fifo_errors158.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %conv156.i, ptr %rx_fifo_errors158.i, align 8
  %150 = load i64, ptr %rx_rrd_ov62.i, align 8
  %conv161.i = trunc i64 %150 to i32
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36, i32 6
  %151 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %conv161.i, ptr %rx_dropped.i, align 8
  %152 = load i64, ptr %tx_errors.i, align 8
  %conv165.i = trunc i64 %152 to i32
  %tx_errors167.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36, i32 5
  %153 = ptrtoint ptr %tx_errors167.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %conv165.i, ptr %tx_errors167.i, align 4
  %154 = load i64, ptr %tx_fifo_errors.i, align 8
  %conv170.i = trunc i64 %154 to i32
  %tx_fifo_errors172.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36, i32 18
  %155 = ptrtoint ptr %tx_fifo_errors172.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %conv170.i, ptr %tx_fifo_errors172.i, align 8
  %156 = load i64, ptr %tx_aborted_errors.i, align 8
  %conv175.i = trunc i64 %156 to i32
  %tx_aborted_errors177.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36, i32 16
  %157 = ptrtoint ptr %tx_aborted_errors177.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %conv175.i, ptr %tx_aborted_errors177.i, align 8
  %158 = load i64, ptr %tx_window_errors.i, align 8
  %conv180.i = trunc i64 %158 to i32
  %tx_window_errors182.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36, i32 20
  %159 = ptrtoint ptr %tx_window_errors182.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %conv180.i, ptr %tx_window_errors182.i, align 8
  %tx_carrier_errors.i = getelementptr i8, ptr %data, i32 2448
  %160 = ptrtoint ptr %tx_carrier_errors.i to i32
  call void @__asan_load8_noabort(i32 %160)
  %161 = load i64, ptr %tx_carrier_errors.i, align 8
  %conv184.i = trunc i64 %161 to i32
  %tx_carrier_errors186.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36, i32 17
  %162 = ptrtoint ptr %tx_carrier_errors186.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %conv184.i, ptr %tx_carrier_errors186.i, align 4
  %163 = load i64, ptr %soft_stats.i, align 8
  %conv189.i = trunc i64 %163 to i32
  %164 = ptrtoint ptr %stats.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %conv189.i, ptr %stats.i, align 8
  %165 = load i64, ptr %tx_packets.i, align 8
  %conv194.i = trunc i64 %165 to i32
  %tx_packets196.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 36, i32 1
  %166 = ptrtoint ptr %tx_packets196.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %conv194.i, ptr %tx_packets196.i, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end8.if.end12_crit_edge
  %and13 = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end24_crit_edge, label %if.then15

if.end12.if.end24_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end24

if.then15:                                        ; preds = %if.end12
  %msg_enable = getelementptr i8, ptr %data, i32 3112
  %167 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %msg_enable, align 8
  %and16 = and i32 %168, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then15.if.end19_crit_edge, label %do.end

if.then15.if.end19_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

do.end:                                           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #19
  %pdev = getelementptr i8, ptr %data, i32 2308
  %169 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %170, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %3) #20
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.then15.if.end19_crit_edge
  %171 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %add.ptr.i, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %172, i32 0, i32 6
  %173 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %174, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end19.if.end24_crit_edge, label %if.then21

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end24

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  %int_enabled.i = getelementptr i8, ptr %data, i32 3152
  %175 = ptrtoint ptr %int_enabled.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 0, ptr %int_enabled.i, align 8
  %176 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %hw, align 4
  %add.ptr.i.i113 = getelementptr i8, ptr %177, i32 5636
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i113, i32 0) #17, !srcloc !267
  %178 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %hw, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %179, i32 5636
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %pdev.i = getelementptr i8, ptr %data, i32 2308
  %181 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %pdev.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %182, i32 0, i32 46
  %183 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %irq.i, align 4
  tail call void @synchronize_irq(i32 noundef %184) #17
  %reset_dev_task = getelementptr i8, ptr %data, i32 2824
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %185 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %185, ptr noundef %reset_dev_task) #17
  br label %cleanup

if.end24:                                         ; preds = %if.end19.if.end24_crit_edge, %if.end12.if.end24_crit_edge
  %and25 = and i32 %3, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end40, label %if.then27

if.then27:                                        ; preds = %if.end24
  %msg_enable28 = getelementptr i8, ptr %data, i32 3112
  %186 = ptrtoint ptr %msg_enable28 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %msg_enable28, align 8
  %and29 = and i32 %187, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.then27.if.end37_crit_edge, label %do.end34

if.then27.if.end37_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end37

do.end34:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #19
  %pdev35 = getelementptr i8, ptr %data, i32 2308
  %188 = ptrtoint ptr %pdev35 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %pdev35, align 4
  %dev36 = getelementptr inbounds %struct.pci_dev, ptr %189, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev36, ptr noundef nonnull @.str.23, i32 noundef %3) #20
  br label %if.end37

if.end37:                                         ; preds = %do.end34, %if.then27.if.end37_crit_edge
  %int_enabled.i114 = getelementptr i8, ptr %data, i32 3152
  %190 = ptrtoint ptr %int_enabled.i114 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 0, ptr %int_enabled.i114, align 8
  %191 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %hw, align 4
  %add.ptr.i.i116 = getelementptr i8, ptr %192, i32 5636
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i116, i32 0) #17, !srcloc !267
  %193 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %hw, align 4
  %add.ptr3.i.i117 = getelementptr i8, ptr %194, i32 5636
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i117) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %pdev.i118 = getelementptr i8, ptr %data, i32 2308
  %196 = ptrtoint ptr %pdev.i118 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %pdev.i118, align 4
  %irq.i119 = getelementptr inbounds %struct.pci_dev, ptr %197, i32 0, i32 46
  %198 = ptrtoint ptr %irq.i119 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %irq.i119, align 4
  tail call void @synchronize_irq(i32 noundef %199) #17
  %reset_dev_task38 = getelementptr i8, ptr %data, i32 2824
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %200 = load ptr, ptr @system_wq, align 4
  %call.i.i120 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %200, ptr noundef %reset_dev_task38) #17
  br label %cleanup

if.end40:                                         ; preds = %if.end24
  br i1 %tobool6.not, label %if.end40.if.end44_crit_edge, label %if.then43

if.end40.if.end44_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end44

if.then43:                                        ; preds = %if.end40
  %tx_carrier_errors = getelementptr i8, ptr %data, i32 2448
  %201 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %tx_carrier_errors, align 8
  %inc = add i64 %202, 1
  store i64 %inc, ptr %tx_carrier_errors, align 8
  %203 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %add.ptr.i, align 8
  %lock.i121 = getelementptr i8, ptr %data, i32 2556
  tail call void @_raw_spin_lock(ptr noundef %lock.i121) #17
  %phy_timer_pending.i = getelementptr i8, ptr %data, i32 2960
  %205 = ptrtoint ptr %phy_timer_pending.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 0, ptr %phy_timer_pending.i, align 8
  %206 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %hw, align 4
  %add.ptr.i.i123 = getelementptr i8, ptr %207, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i123, i32 57600) #17, !srcloc !267
  %208 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %hw, align 4
  %add.ptr5.i.i124 = getelementptr i8, ptr %209, i32 5140
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i124) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br label %for.body.i.i130

for.cond.i.i:                                     ; preds = %for.body.i.i130
  %inc.i.i125 = add nuw nsw i32 %i.023.i.i127, 1
  %exitcond.not.i.i126 = icmp eq i32 %inc.i.i125, 30
  br i1 %exitcond.not.i.i126, label %for.cond.i.i.atl1_read_phy_reg.exit.i_crit_edge, label %for.cond.i.i.for.body.i.i130_crit_edge

for.cond.i.i.for.body.i.i130_crit_edge:           ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i130

for.cond.i.i.atl1_read_phy_reg.exit.i_crit_edge:  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atl1_read_phy_reg.exit.i

for.body.i.i130:                                  ; preds = %for.cond.i.i.for.body.i.i130_crit_edge, %if.then43
  %i.023.i.i127 = phi i32 [ 0, %if.then43 ], [ %inc.i.i125, %for.cond.i.i.for.body.i.i130_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %211 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %211(i32 noundef 429496) #17
  %212 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %hw, align 4
  %add.ptr8.i.i128 = getelementptr i8, ptr %213, i32 5140
  %214 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i.i128) #17, !srcloc !268
  %215 = tail call i32 @llvm.bswap.i32(i32 %214) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %and10.i.i = and i32 %215, 142606336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool.not.i.i129 = icmp eq i32 %and10.i.i, 0
  br i1 %tobool.not.i.i129, label %if.then13.i.i, label %for.cond.i.i

if.then13.i.i:                                    ; preds = %for.body.i.i130
  call void @__sanitizer_cov_trace_pc() #19
  %conv14.i.i = trunc i32 %215 to i16
  br label %atl1_read_phy_reg.exit.i

atl1_read_phy_reg.exit.i:                         ; preds = %if.then13.i.i, %for.cond.i.i.atl1_read_phy_reg.exit.i_crit_edge
  %phy_data.0.i = phi i16 [ %conv14.i.i, %if.then13.i.i ], [ 0, %for.cond.i.i.atl1_read_phy_reg.exit.i_crit_edge ]
  %216 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %hw, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %217, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 57600) #17, !srcloc !267
  %218 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %hw, align 4
  %add.ptr5.i20.i = getelementptr i8, ptr %219, i32 5140
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i20.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br label %for.body.i28.i

for.cond.i23.i:                                   ; preds = %for.body.i28.i
  %inc.i21.i = add nuw nsw i32 %i.023.i24.i, 1
  %exitcond.not.i22.i = icmp eq i32 %inc.i21.i, 30
  br i1 %exitcond.not.i22.i, label %for.cond.i23.i.atl1_read_phy_reg.exit32.i_crit_edge, label %for.cond.i23.i.for.body.i28.i_crit_edge

for.cond.i23.i.for.body.i28.i_crit_edge:          ; preds = %for.cond.i23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i28.i

for.cond.i23.i.atl1_read_phy_reg.exit32.i_crit_edge: ; preds = %for.cond.i23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atl1_read_phy_reg.exit32.i

for.body.i28.i:                                   ; preds = %for.cond.i23.i.for.body.i28.i_crit_edge, %atl1_read_phy_reg.exit.i
  %i.023.i24.i = phi i32 [ 0, %atl1_read_phy_reg.exit.i ], [ %inc.i21.i, %for.cond.i23.i.for.body.i28.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %221 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %221(i32 noundef 429496) #17
  %222 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %hw, align 4
  %add.ptr8.i25.i = getelementptr i8, ptr %223, i32 5140
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i25.i) #17, !srcloc !268
  %225 = tail call i32 @llvm.bswap.i32(i32 %224) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %and10.i26.i = and i32 %225, 142606336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i26.i)
  %tobool.not.i27.i = icmp eq i32 %and10.i26.i, 0
  br i1 %tobool.not.i27.i, label %if.then13.i30.i, label %for.cond.i23.i

if.then13.i30.i:                                  ; preds = %for.body.i28.i
  call void @__sanitizer_cov_trace_pc() #19
  %conv14.i29.i = trunc i32 %225 to i16
  br label %atl1_read_phy_reg.exit32.i

atl1_read_phy_reg.exit32.i:                       ; preds = %if.then13.i30.i, %for.cond.i23.i.atl1_read_phy_reg.exit32.i_crit_edge
  %phy_data.1.i = phi i16 [ %conv14.i29.i, %if.then13.i30.i ], [ %phy_data.0.i, %for.cond.i23.i.atl1_read_phy_reg.exit32.i_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock.i121) #17
  %226 = and i16 %phy_data.1.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %226)
  %tobool.not.i = icmp eq i16 %226, 0
  br i1 %tobool.not.i, label %if.then.i, label %atl1_read_phy_reg.exit32.i.atl1_check_for_link.exit_crit_edge

atl1_read_phy_reg.exit32.i.atl1_check_for_link.exit_crit_edge: ; preds = %atl1_read_phy_reg.exit32.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atl1_check_for_link.exit

if.then.i:                                        ; preds = %atl1_read_phy_reg.exit32.i
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %204, i32 0, i32 6
  %227 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load volatile i32, ptr %state.i.i, align 4
  %229 = and i32 %228, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %229)
  %tobool.not.i33.i = icmp eq i32 %229, 0
  br i1 %tobool.not.i33.i, label %do.end.i, label %if.then.i.atl1_check_for_link.exit_crit_edge

if.then.i.atl1_check_for_link.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atl1_check_for_link.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %pdev.i131 = getelementptr i8, ptr %data, i32 2308
  %230 = ptrtoint ptr %pdev.i131 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %pdev.i131, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %231, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.28, ptr noundef %204) #20
  %link_speed.i = getelementptr i8, ptr %data, i32 2552
  %232 = ptrtoint ptr %link_speed.i to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 -1, ptr %link_speed.i, align 8
  tail call void @netif_carrier_off(ptr noundef %204) #17
  br label %atl1_check_for_link.exit

atl1_check_for_link.exit:                         ; preds = %do.end.i, %if.then.i.atl1_check_for_link.exit_crit_edge, %atl1_read_phy_reg.exit32.i.atl1_check_for_link.exit_crit_edge
  %link_chg_task.i = getelementptr i8, ptr %data, i32 2868
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %233 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %233, ptr noundef %link_chg_task.i) #17
  br label %if.end44

if.end44:                                         ; preds = %atl1_check_for_link.exit, %if.end40.if.end44_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %if.end44.if.end57_crit_edge, label %land.lhs.true

if.end44.if.end57_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end57

land.lhs.true:                                    ; preds = %if.end44
  %napi.i = getelementptr i8, ptr %data, i32 2600
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi.i) #17
  br i1 %call.i, label %if.end.i, label %land.lhs.true.if.end57_crit_edge

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end57

if.end.i:                                         ; preds = %land.lhs.true
  tail call void @__napi_schedule(ptr noundef %napi.i) #17
  %int_enabled.i132 = getelementptr i8, ptr %data, i32 3152
  %234 = ptrtoint ptr %int_enabled.i132 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %int_enabled.i132, align 8, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %235)
  %tobool.not.i133 = icmp eq i8 %235, 0
  br i1 %tobool.not.i133, label %if.end.i.if.then49_crit_edge, label %if.end3.i

if.end.i.if.then49_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then49

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %236 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %hw, align 4
  %add.ptr.i.i135 = getelementptr i8, ptr %237, i32 5636
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i135, i32 18612240) #17, !srcloc !267
  %238 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %hw, align 4
  %add.ptr3.i.i136 = getelementptr i8, ptr %239, i32 5636
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i136) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br label %if.then49

if.then49:                                        ; preds = %if.end3.i, %if.end.i.if.then49_crit_edge
  %241 = ptrtoint ptr %cmb to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %cmb, align 4
  %243 = ptrtoint ptr %242 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %242, align 4
  %and53 = and i32 %244, -3145729
  store i32 %and53, ptr %242, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then49, %land.lhs.true.if.end57_crit_edge, %if.end44.if.end57_crit_edge
  %and58 = and i32 %3, 824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end57.if.end74_crit_edge, label %if.then62, !prof !271

if.end57.if.end74_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end74

if.then62:                                        ; preds = %if.end57
  %msg_enable63 = getelementptr i8, ptr %data, i32 3112
  %245 = ptrtoint ptr %msg_enable63 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %msg_enable63, align 8
  %and64 = and i32 %246, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.then62.if.end72_crit_edge, label %do.end69

if.then62.if.end72_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end72

do.end69:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #19
  %pdev70 = getelementptr i8, ptr %data, i32 2308
  %247 = ptrtoint ptr %pdev70 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %pdev70, align 4
  %dev71 = getelementptr inbounds %struct.pci_dev, ptr %248, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.21, ptr noundef %dev71, ptr noundef nonnull @.str.26, i32 noundef %3) #20
  br label %if.end72

if.end72:                                         ; preds = %do.end69, %if.then62.if.end72_crit_edge
  %call73 = tail call fastcc i32 @atl1_sched_rings_clean(ptr noundef %add.ptr.i)
  br label %if.end74

if.end74:                                         ; preds = %if.end72, %if.end57.if.end74_crit_edge
  %249 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %hw, align 4
  %add.ptr77 = getelementptr i8, ptr %250, i32 5632
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 96) #17, !srcloc !267
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %if.end37, %if.then21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then21 ], [ 1, %if.end37 ], [ 1, %if.end74 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atl1_check_link(ptr noundef %adapter) unnamed_addr #2 align 64 {
entry:
  %speed = alloca i16, align 2
  %duplex = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %speed) #17
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %speed, align 2, !annotation !286
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %duplex) #17
  %3 = ptrtoint ptr %duplex to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %duplex, align 2, !annotation !286
  %4 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw1, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 57600) #17, !srcloc !267
  %6 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw1, align 4
  %add.ptr5.i = getelementptr i8, ptr %7, i32 5140
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 30
  br i1 %exitcond.not.i, label %for.cond.i.atl1_read_phy_reg.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.cond.i.atl1_read_phy_reg.exit_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atl1_read_phy_reg.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry
  %i.023.i = phi i32 [ 0, %entry ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 429496) #17
  %10 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw1, align 4
  %add.ptr8.i = getelementptr i8, ptr %11, i32 5140
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #17, !srcloc !268
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %and10.i = and i32 %13, 142606336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool.not.i, label %if.then13.i, label %for.cond.i

if.then13.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %conv14.i = trunc i32 %13 to i16
  br label %atl1_read_phy_reg.exit

atl1_read_phy_reg.exit:                           ; preds = %if.then13.i, %for.cond.i.atl1_read_phy_reg.exit_crit_edge
  %phy_data.0 = phi i16 [ %conv14.i, %if.then13.i ], [ -1, %for.cond.i.atl1_read_phy_reg.exit_crit_edge ]
  %14 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw1, align 4
  %add.ptr.i9 = getelementptr i8, ptr %15, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 57600) #17, !srcloc !267
  %16 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw1, align 4
  %add.ptr5.i10 = getelementptr i8, ptr %17, i32 5140
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i10) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br label %for.body.i18

for.cond.i13:                                     ; preds = %for.body.i18
  %inc.i11 = add nuw nsw i32 %i.023.i14, 1
  %exitcond.not.i12 = icmp eq i32 %inc.i11, 30
  br i1 %exitcond.not.i12, label %for.cond.i13.atl1_read_phy_reg.exit22_crit_edge, label %for.cond.i13.for.body.i18_crit_edge

for.cond.i13.for.body.i18_crit_edge:              ; preds = %for.cond.i13
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i18

for.cond.i13.atl1_read_phy_reg.exit22_crit_edge:  ; preds = %for.cond.i13
  call void @__sanitizer_cov_trace_pc() #19
  br label %atl1_read_phy_reg.exit22

for.body.i18:                                     ; preds = %for.cond.i13.for.body.i18_crit_edge, %atl1_read_phy_reg.exit
  %i.023.i14 = phi i32 [ 0, %atl1_read_phy_reg.exit ], [ %inc.i11, %for.cond.i13.for.body.i18_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 429496) #17
  %20 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw1, align 4
  %add.ptr8.i15 = getelementptr i8, ptr %21, i32 5140
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i15) #17, !srcloc !268
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %and10.i16 = and i32 %23, 142606336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i16)
  %tobool.not.i17 = icmp eq i32 %and10.i16, 0
  br i1 %tobool.not.i17, label %if.then13.i20, label %for.cond.i13

if.then13.i20:                                    ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #19
  %conv14.i19 = trunc i32 %23 to i16
  br label %atl1_read_phy_reg.exit22

atl1_read_phy_reg.exit22:                         ; preds = %if.then13.i20, %for.cond.i13.atl1_read_phy_reg.exit22_crit_edge
  %phy_data.1 = phi i16 [ %conv14.i19, %if.then13.i20 ], [ %phy_data.0, %for.cond.i13.atl1_read_phy_reg.exit22_crit_edge ]
  %24 = and i16 %phy_data.1, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.not = icmp eq i16 %24, 0
  br i1 %tobool.not, label %if.then, label %if.end10

if.then:                                          ; preds = %atl1_read_phy_reg.exit22
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %state.i, align 4
  %27 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i23 = icmp eq i32 %27, 0
  br i1 %tobool.not.i23, label %if.then5, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then5:                                         ; preds = %if.then
  %msg_enable = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 20
  %28 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %msg_enable, align 8
  %and6 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.then5.if.end_crit_edge, label %do.end

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #19
  %pdev = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 1
  %30 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.31) #20
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then5.if.end_crit_edge
  %link_speed = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 5
  %32 = ptrtoint ptr %link_speed to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 -1, ptr %link_speed, align 8
  tail call void @netif_carrier_off(ptr noundef %1) #17
  br label %cleanup

if.end10:                                         ; preds = %atl1_read_phy_reg.exit22
  %call11 = call fastcc i32 @atl1_get_speed_and_duplex(ptr noundef %hw1, ptr noundef nonnull %speed, ptr noundef nonnull %duplex)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %media_type = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 30
  %33 = ptrtoint ptr %media_type to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %media_type, align 4
  %35 = zext i16 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.121)
  switch i16 %34, label %if.end14.if.then64_crit_edge [
    i16 1, label %sw.bb
    i16 2, label %sw.bb23
    i16 3, label %sw.bb33
    i16 4, label %sw.bb43
    i16 5, label %sw.bb53
  ]

if.end14.if.then64_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then64

sw.bb:                                            ; preds = %if.end14
  %36 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %speed, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1000, i16 %37)
  %cmp.not = icmp eq i16 %37, 1000
  br i1 %cmp.not, label %lor.lhs.false, label %sw.bb.if.end98_crit_edge

sw.bb.if.end98_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end98

lor.lhs.false:                                    ; preds = %sw.bb
  %38 = ptrtoint ptr %duplex to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %duplex, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %39)
  %cmp19.not = icmp eq i16 %39, 2
  br i1 %cmp19.not, label %lor.lhs.false.if.then64_crit_edge, label %lor.lhs.false.if.end98_crit_edge

lor.lhs.false.if.end98_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end98

lor.lhs.false.if.then64_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then64

sw.bb23:                                          ; preds = %if.end14
  %40 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %speed, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %41)
  %cmp25.not = icmp eq i16 %41, 100
  br i1 %cmp25.not, label %lor.lhs.false27, label %sw.bb23.if.end98_crit_edge

sw.bb23.if.end98_crit_edge:                       ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end98

lor.lhs.false27:                                  ; preds = %sw.bb23
  %42 = ptrtoint ptr %duplex to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %duplex, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %43)
  %cmp29.not = icmp eq i16 %43, 2
  br i1 %cmp29.not, label %lor.lhs.false27.if.then64_crit_edge, label %lor.lhs.false27.if.end98_crit_edge

lor.lhs.false27.if.end98_crit_edge:               ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end98

lor.lhs.false27.if.then64_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then64

sw.bb33:                                          ; preds = %if.end14
  %44 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %speed, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %45)
  %cmp35.not = icmp eq i16 %45, 100
  br i1 %cmp35.not, label %lor.lhs.false37, label %sw.bb33.if.end98_crit_edge

sw.bb33.if.end98_crit_edge:                       ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end98

lor.lhs.false37:                                  ; preds = %sw.bb33
  %46 = ptrtoint ptr %duplex to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %duplex, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %47)
  %cmp39.not = icmp eq i16 %47, 1
  br i1 %cmp39.not, label %lor.lhs.false37.if.then64_crit_edge, label %lor.lhs.false37.if.end98_crit_edge

lor.lhs.false37.if.end98_crit_edge:               ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end98

lor.lhs.false37.if.then64_crit_edge:              ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then64

sw.bb43:                                          ; preds = %if.end14
  %48 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %speed, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %49)
  %cmp45.not = icmp eq i16 %49, 10
  br i1 %cmp45.not, label %lor.lhs.false47, label %sw.bb43.if.end98_crit_edge

sw.bb43.if.end98_crit_edge:                       ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end98

lor.lhs.false47:                                  ; preds = %sw.bb43
  %50 = ptrtoint ptr %duplex to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %duplex, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %51)
  %cmp49.not = icmp eq i16 %51, 2
  br i1 %cmp49.not, label %lor.lhs.false47.if.then64_crit_edge, label %lor.lhs.false47.if.end98_crit_edge

lor.lhs.false47.if.end98_crit_edge:               ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end98

lor.lhs.false47.if.then64_crit_edge:              ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then64

sw.bb53:                                          ; preds = %if.end14
  %52 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %speed, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %53)
  %cmp55.not = icmp eq i16 %53, 10
  br i1 %cmp55.not, label %lor.lhs.false57, label %sw.bb53.if.end98_crit_edge

sw.bb53.if.end98_crit_edge:                       ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end98

lor.lhs.false57:                                  ; preds = %sw.bb53
  %54 = ptrtoint ptr %duplex to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %duplex, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %55)
  %cmp59.not = icmp eq i16 %55, 1
  br i1 %cmp59.not, label %lor.lhs.false57.if.then64_crit_edge, label %lor.lhs.false57.if.end98_crit_edge

lor.lhs.false57.if.end98_crit_edge:               ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end98

lor.lhs.false57.if.then64_crit_edge:              ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then64

if.then64:                                        ; preds = %lor.lhs.false57.if.then64_crit_edge, %lor.lhs.false47.if.then64_crit_edge, %lor.lhs.false37.if.then64_crit_edge, %lor.lhs.false27.if.then64_crit_edge, %lor.lhs.false.if.then64_crit_edge, %if.end14.if.then64_crit_edge
  %link_speed65 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 5
  %56 = ptrtoint ptr %link_speed65 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %link_speed65, align 8
  %58 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %speed, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %57, i16 %59)
  %cmp68.not = icmp eq i16 %57, %59
  br i1 %cmp68.not, label %lor.lhs.false70, label %if.then64.if.then75_crit_edge

if.then64.if.then75_crit_edge:                    ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then75

lor.lhs.false70:                                  ; preds = %if.then64
  %link_duplex = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 6
  %60 = ptrtoint ptr %link_duplex to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %link_duplex, align 2
  %62 = ptrtoint ptr %duplex to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %duplex, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %61, i16 %63)
  %cmp73.not = icmp eq i16 %61, %63
  br i1 %cmp73.not, label %lor.lhs.false70.if.end94_crit_edge, label %lor.lhs.false70.if.then75_crit_edge

lor.lhs.false70.if.then75_crit_edge:              ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then75

lor.lhs.false70.if.end94_crit_edge:               ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end94

if.then75:                                        ; preds = %lor.lhs.false70.if.then75_crit_edge, %if.then64.if.then75_crit_edge
  %64 = ptrtoint ptr %link_speed65 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %59, ptr %link_speed65, align 8
  %65 = ptrtoint ptr %duplex to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %duplex, align 2
  %link_duplex77 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 6
  %67 = ptrtoint ptr %link_duplex77 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %link_duplex77, align 2
  %68 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %adapter, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %66)
  %cmp.i = icmp eq i16 %66, 2
  %spec.store.select.i = select i1 %cmp.i, i32 35, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1000, i16 %59)
  %cmp5.i = icmp eq i16 %59, 1000
  %cond.i = select i1 %cmp5.i, i32 2097152, i32 1048576
  %or7.i = or i32 %cond.i, %spec.store.select.i
  %preamble_len.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27, i32 6
  %70 = ptrtoint ptr %preamble_len.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %preamble_len.i, align 4
  %72 = and i8 %71, 15
  %and.i = zext i8 %72 to i32
  %shl12.i = shl nuw nsw i32 %and.i, 10
  %or9.i = or i32 %shl12.i, %or7.i
  %features.i = getelementptr inbounds %struct.net_device, ptr %69, i32 0, i32 23
  %73 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %features.i, align 16
  %75 = trunc i64 %74 to i32
  %76 = shl i32 %75, 6
  %77 = and i32 %76, 16384
  %or13.i = or i32 %or9.i, %77
  %flags.i = getelementptr inbounds %struct.net_device, ptr %69, i32 0, i32 14
  %78 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags.i, align 8
  %and15.i = and i32 %79, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool.not.i24 = icmp eq i32 %and15.i, 0
  %and19.i = and i32 %79, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  %spec.select.v.i = select i1 %tobool20.not.i, i32 67109068, i32 100663500
  %spec.select.v.sink.i = select i1 %tobool.not.i24, i32 %spec.select.v.i, i32 67141836
  %spec.select.i = or i32 %spec.select.v.sink.i, %or13.i
  %80 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw1, align 4
  %add.ptr.i25 = getelementptr i8, ptr %81, i32 5248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %82 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %82) #17, !srcloc !267
  %msg_enable78 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 20
  %83 = ptrtoint ptr %msg_enable78 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %msg_enable78, align 8
  %and79 = and i32 %84, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79)
  %tobool80.not = icmp eq i32 %and79, 0
  br i1 %tobool80.not, label %if.then75.if.end94_crit_edge, label %do.end84

if.then75.if.end94_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end94

do.end84:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #19
  %pdev85 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 1
  %85 = ptrtoint ptr %pdev85 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pdev85, align 4
  %dev86 = getelementptr inbounds %struct.pci_dev, ptr %86, i32 0, i32 44
  %87 = ptrtoint ptr %link_speed65 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %link_speed65, align 8
  %conv88 = zext i16 %88 to i32
  %89 = ptrtoint ptr %link_duplex77 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %link_duplex77, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %90)
  %cmp91 = icmp eq i16 %90, 2
  %cond = select i1 %cmp91, ptr @.str.36, ptr @.str.37
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev86, ptr noundef nonnull @.str.34, ptr noundef %1, i32 noundef %conv88, ptr noundef nonnull %cond) #20
  br label %if.end94

if.end94:                                         ; preds = %do.end84, %if.then75.if.end94_crit_edge, %lor.lhs.false70.if.end94_crit_edge
  %state.i26 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %91 = ptrtoint ptr %state.i26 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %state.i26, align 4
  %93 = and i32 %92, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i27 = icmp eq i32 %93, 0
  br i1 %tobool.not.i27, label %if.end94.cleanup_crit_edge, label %if.then96

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then96:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @netif_carrier_on(ptr noundef %1) #17
  br label %cleanup

if.end98:                                         ; preds = %lor.lhs.false57.if.end98_crit_edge, %sw.bb53.if.end98_crit_edge, %lor.lhs.false47.if.end98_crit_edge, %sw.bb43.if.end98_crit_edge, %lor.lhs.false37.if.end98_crit_edge, %sw.bb33.if.end98_crit_edge, %lor.lhs.false27.if.end98_crit_edge, %sw.bb23.if.end98_crit_edge, %lor.lhs.false.if.end98_crit_edge, %sw.bb.if.end98_crit_edge
  %state.i28 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %94 = ptrtoint ptr %state.i28 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %state.i28, align 4
  %96 = and i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i29 = icmp eq i32 %96, 0
  br i1 %tobool.not.i29, label %if.then100, label %if.end98.if.end102_crit_edge

if.end98.if.end102_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end102

if.then100:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #19
  %link_speed101 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 5
  %97 = ptrtoint ptr %link_speed101 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 -1, ptr %link_speed101, align 8
  tail call void @netif_carrier_off(ptr noundef %1) #17
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %98 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %99, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #17
  br label %if.end102

if.end102:                                        ; preds = %if.then100, %if.end98.if.end102_crit_edge
  %100 = ptrtoint ptr %media_type to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %media_type, align 4
  %102 = zext i16 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.122)
  switch i16 %101, label %sw.default [
    i16 0, label %if.end102.if.end119_crit_edge
    i16 1, label %if.end102.if.end119_crit_edge56
    i16 2, label %if.end102.sw.epilog117_crit_edge
    i16 3, label %sw.bb115
    i16 4, label %sw.bb116
  ]

if.end102.sw.epilog117_crit_edge:                 ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog117

if.end102.if.end119_crit_edge56:                  ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end119

if.end102.if.end119_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end119

sw.bb115:                                         ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog117

sw.bb116:                                         ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog117

sw.default:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog117

sw.epilog117:                                     ; preds = %sw.default, %sw.bb116, %sw.bb115, %if.end102.sw.epilog117_crit_edge
  %phy_data.2 = phi i32 [ 12615680, %sw.default ], [ 12615936, %sw.bb116 ], [ 12623872, %sw.bb115 ], [ 12624128, %if.end102.sw.epilog117_crit_edge ]
  %103 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hw1, align 4
  %add.ptr.i30 = getelementptr i8, ptr %104, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %105 = tail call i32 @llvm.bswap.i32(i32 %phy_data.2) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %105) #17, !srcloc !267
  %106 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hw1, align 4
  %add.ptr7.i = getelementptr i8, ptr %107, i32 5140
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br label %for.body.i36

for.body.i36:                                     ; preds = %for.body.i36.for.body.i36_crit_edge, %sw.epilog117
  %i.023.i34 = phi i32 [ 0, %sw.epilog117 ], [ %inc.i31, %for.body.i36.for.body.i36_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %109(i32 noundef 429496) #17
  %110 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hw1, align 4
  %add.ptr10.i = getelementptr i8, ptr %111, i32 5140
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %113 = and i32 %112, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool.not.i35 = icmp eq i32 %113, 0
  %inc.i31 = add nuw nsw i32 %i.023.i34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %inc.i31)
  %exitcond.not.i32 = icmp eq i32 %inc.i31, 30
  %or.cond = select i1 %tobool.not.i35, i1 true, i1 %exitcond.not.i32
  br i1 %or.cond, label %for.body.i36.cleanup_crit_edge, label %for.body.i36.for.body.i36_crit_edge

for.body.i36.for.body.i36_crit_edge:              ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i36

for.body.i36.cleanup_crit_edge:                   ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end119:                                        ; preds = %if.end102.if.end119_crit_edge, %if.end102.if.end119_crit_edge56
  %phy_timer_pending = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 12
  %114 = ptrtoint ptr %phy_timer_pending to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %phy_timer_pending, align 8, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool120.not = icmp eq i8 %115, 0
  br i1 %tobool120.not, label %if.then121, label %if.end119.cleanup_crit_edge

if.end119.cleanup_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then121:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #19
  %116 = ptrtoint ptr %phy_timer_pending to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 1, ptr %phy_timer_pending, align 8
  %phy_config_timer = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %117 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %117, 300
  %call123 = tail call i32 @round_jiffies(i32 noundef %add) #17
  %call124 = tail call i32 @mod_timer(ptr noundef %phy_config_timer, i32 noundef %call123) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then121, %if.end119.cleanup_crit_edge, %for.body.i36.cleanup_crit_edge, %if.then96, %if.end94.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %duplex) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %speed) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atl1_clean_rx_ring(ptr noundef %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 16, i32 3
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp42.not = icmp eq i16 %1, 0
  br i1 %cmp42.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pdev3 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 1
  %2 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev3, align 4
  %buffer_info5 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 16, i32 6
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %buffer_info5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer_info5, align 4
  %arrayidx = getelementptr %struct.atl1_buffer, ptr %5, i32 %i.043
  %dma = getelementptr %struct.atl1_buffer, ptr %5, i32 %i.043, i32 3
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %length = getelementptr %struct.atl1_buffer, ptr %5, i32 %i.043, i32 1
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %length, align 4
  %conv7 = zext i16 %9 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %7, i32 noundef %conv7, i32 noundef 2, i32 noundef 0) #17
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %dma, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %if.end.for.inc_crit_edge, label %if.then10

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @consume_skb(ptr noundef nonnull %12) #17
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.end.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.043, 1
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %count, align 2
  %conv = zext i16 %15 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end.loopexit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  %phi.cast = zext i16 %15 to i32
  %phi.bo = mul nuw nsw i32 %phi.cast, 12
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ %phi.bo, %for.end.loopexit ], [ 0, %entry.for.end_crit_edge ]
  %rfd_ring1 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 16
  %buffer_info16 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 16, i32 6
  %16 = ptrtoint ptr %buffer_info16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer_info16, align 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 %.lcssa)
  %19 = ptrtoint ptr %rfd_ring1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rfd_ring1, align 4
  %size17 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 16, i32 2
  %21 = ptrtoint ptr %size17 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %size17, align 4
  %conv18 = zext i16 %22 to i32
  %23 = call ptr @memset(ptr %20, i32 0, i32 %conv18)
  %next_to_clean = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 16, i32 5
  %24 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %next_to_clean, align 4
  %next_to_use = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 16, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_to_use, i32 noundef 4) #17
  %25 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile i32 0, ptr %next_to_use, align 4
  %next_to_use19 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 17, i32 4
  %26 = ptrtoint ptr %next_to_use19 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %next_to_use19, align 2
  %next_to_clean20 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 17, i32 5
  %call.i.i40 = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_to_clean20, i32 noundef 4) #17
  %27 = ptrtoint ptr %next_to_clean20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 0, ptr %next_to_clean20, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atl1_sched_rings_clean(ptr noundef %adapter) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %napi = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 8
  %call = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #17
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  tail call void @__napi_schedule(ptr noundef %napi) #17
  %int_enabled = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 24
  %0 = ptrtoint ptr %int_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %int_enabled, align 8, !range !272
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %hw.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27
  %2 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 5636
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 18612240) #17, !srcloc !267
  %4 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %5, i32 5636
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.end3 ], [ 0, %entry.return_crit_edge ], [ 1, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atl1_get_speed_and_duplex(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %speed, ptr nocapture noundef writeonly %duplex) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.atl1_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 4
  %pdev1 = getelementptr inbounds %struct.atl1_adapter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 61696) #17, !srcloc !267
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %add.ptr5.i = getelementptr i8, ptr %7, i32 5140
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 30
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry
  %i.023.i = phi i32 [ 0, %entry ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 429496) #17
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %add.ptr8.i = getelementptr i8, ptr %11, i32 5140
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #17, !srcloc !268
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %and10.i = and i32 %13, 142606336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool.not.i, label %if.end, label %for.cond.i

if.end:                                           ; preds = %for.body.i
  %conv14.i = trunc i32 %13 to i16
  %14 = and i16 %conv14.i, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool3.not = icmp eq i16 %14, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %and7 = and i16 %conv14.i, -16384
  %15 = zext i16 %and7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.123)
  switch i16 %and7, label %sw.default [
    i16 -32768, label %if.end5.sw.epilog_crit_edge
    i16 16384, label %sw.bb8
    i16 0, label %sw.bb9
  ]

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.default:                                       ; preds = %if.end5
  %msg_enable = getelementptr inbounds %struct.atl1_adapter, ptr %1, i32 0, i32 20
  %16 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable, align 8
  %and10 = and i32 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %sw.default.cleanup_crit_edge, label %do.body

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1_get_speed_and_duplex.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1_get_speed_and_duplex, %if.then17)) #17
          to label %cleanup [label %if.then17], !srcloc !275

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atl1_get_speed_and_duplex.__UNIQUE_ID_ddebug488, ptr noundef %dev, ptr noundef nonnull @.str.39) #17
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb8, %if.end5.sw.epilog_crit_edge
  %.sink = phi i16 [ 10, %sw.bb9 ], [ 100, %sw.bb8 ], [ 1000, %if.end5.sw.epilog_crit_edge ]
  %18 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %.sink, ptr %speed, align 2
  %19 = and i16 %conv14.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool22.not = icmp eq i16 %19, 0
  %. = select i1 %tobool22.not, i16 1, i16 2
  %20 = ptrtoint ptr %duplex to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %., ptr %duplex, align 2
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then17, %do.body, %sw.default.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 8, %if.end.cleanup_crit_edge ], [ 7, %if.then17 ], [ 7, %sw.default.cleanup_crit_edge ], [ 7, %do.body ], [ 2, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atl1_down(ptr noundef %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %napi = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 8
  tail call void @napi_disable(ptr noundef %napi) #17
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #17
  %phy_config_timer = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 11
  %call = tail call i32 @del_timer_sync(ptr noundef %phy_config_timer) #17
  %phy_timer_pending = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 12
  %4 = ptrtoint ptr %phy_timer_pending to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %phy_timer_pending, align 8
  %int_enabled.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 24
  %5 = ptrtoint ptr %int_enabled.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %int_enabled.i, align 8
  %hw.i.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 27
  %6 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 5636
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #17, !srcloc !267
  %8 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %9, i32 5636
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %pdev.i = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 1
  %11 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev.i, align 4
  %irq.i = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 46
  %13 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq.i, align 4
  tail call void @synchronize_irq(i32 noundef %14) #17
  %15 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev.i, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 46
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %18, ptr noundef %1) #17
  %19 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev.i, align 4
  tail call void @pci_disable_msi(ptr noundef %20) #17
  %call4 = tail call fastcc i32 @atl1_reset_hw(ptr noundef %hw.i.i)
  %cmb = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 29
  %21 = ptrtoint ptr %cmb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cmb, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %22, align 4
  %link_speed = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 5
  %24 = ptrtoint ptr %link_speed to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %link_speed, align 8
  %link_duplex = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 6
  %25 = ptrtoint ptr %link_duplex to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -1, ptr %link_duplex, align 2
  tail call void @netif_carrier_off(ptr noundef %1) #17
  tail call fastcc void @atl1_clean_tx_ring(ptr noundef %adapter)
  tail call fastcc void @atl1_clean_rx_ring(ptr noundef %adapter)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atl1_clean_tx_ring(ptr noundef %adapter) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 14, i32 3
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp53.not = icmp eq i16 %1, 0
  br i1 %cmp53.not, label %entry.for.end23_crit_edge, label %for.body.lr.ph

entry.for.end23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end23

for.body.lr.ph:                                   ; preds = %entry
  %pdev2 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 1
  %2 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev2, align 4
  %buffer_info4 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 14, i32 7
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  br label %for.body

for.cond8.preheader:                              ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp1157.not = icmp eq i16 %12, 0
  br i1 %cmp1157.not, label %for.cond8.preheader.for.end23_crit_edge, label %for.body13.lr.ph

for.cond8.preheader.for.end23_crit_edge:          ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end23

for.body13.lr.ph:                                 ; preds = %for.cond8.preheader
  %buffer_info14 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 14, i32 7
  br label %for.body13

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %buffer_info4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer_info4, align 4
  %dma = getelementptr %struct.atl1_buffer, ptr %5, i32 %i.054, i32 3
  %6 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %length = getelementptr %struct.atl1_buffer, ptr %5, i32 %i.054, i32 1
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %length, align 4
  %conv6 = zext i16 %9 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %7, i32 noundef %conv6, i32 noundef 1, i32 noundef 0) #17
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %dma, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.054, 1
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %count, align 2
  %conv = zext i16 %12 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.cond8.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body13:                                       ; preds = %for.inc21.for.body13_crit_edge, %for.body13.lr.ph
  %i.158 = phi i32 [ 0, %for.body13.lr.ph ], [ %inc22, %for.inc21.for.body13_crit_edge ]
  %13 = ptrtoint ptr %buffer_info14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer_info14, align 4
  %arrayidx15 = getelementptr %struct.atl1_buffer, ptr %14, i32 %i.158
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx15, align 4
  %tobool16.not = icmp eq ptr %16, null
  br i1 %tobool16.not, label %for.body13.for.inc21_crit_edge, label %if.then17

for.body13.for.inc21_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc21

if.then17:                                        ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %16, i32 noundef 1) #17
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx15, align 4
  br label %for.inc21

for.inc21:                                        ; preds = %if.then17, %for.body13.for.inc21_crit_edge
  %inc22 = add nuw nsw i32 %i.158, 1
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %count, align 2
  %conv10 = zext i16 %19 to i32
  %cmp11 = icmp ult i32 %inc22, %conv10
  br i1 %cmp11, label %for.inc21.for.body13_crit_edge, label %for.end23.loopexit

for.inc21.for.body13_crit_edge:                   ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body13

for.end23.loopexit:                               ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #19
  %phi.cast = zext i16 %19 to i32
  %phi.bo = mul nuw nsw i32 %phi.cast, 12
  br label %for.end23

for.end23:                                        ; preds = %for.end23.loopexit, %for.cond8.preheader.for.end23_crit_edge, %entry.for.end23_crit_edge
  %.lcssa = phi i32 [ %phi.bo, %for.end23.loopexit ], [ 0, %for.cond8.preheader.for.end23_crit_edge ], [ 0, %entry.for.end23_crit_edge ]
  %tpd_ring1 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 14
  %buffer_info26 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 14, i32 7
  %20 = ptrtoint ptr %buffer_info26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer_info26, align 4
  %22 = call ptr @memset(ptr %21, i32 0, i32 %.lcssa)
  %23 = ptrtoint ptr %tpd_ring1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tpd_ring1, align 4
  %size27 = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 14, i32 2
  %25 = ptrtoint ptr %size27 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %size27, align 4
  %conv28 = zext i16 %26 to i32
  %27 = call ptr @memset(ptr %24, i32 0, i32 %conv28)
  %next_to_use = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 14, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_to_use, i32 noundef 4) #17
  %28 = ptrtoint ptr %next_to_use to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile i32 0, ptr %next_to_use, align 4
  %next_to_clean = getelementptr inbounds %struct.atl1_adapter, ptr %adapter, i32 0, i32 14, i32 5
  %call.i.i51 = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_to_clean, i32 noundef 4) #17
  %29 = ptrtoint ptr %next_to_clean to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 0, ptr %next_to_clean, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_mii_ioctl(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1_get_drvinfo(ptr nocapture noundef readonly %netdev, ptr noundef %drvinfo) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #17
  %pdev = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 4
  %call4 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i.i, i32 noundef 32) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atl1_get_regs_len(ptr nocapture noundef readnone %netdev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 6152
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1_get_regs(ptr nocapture noundef readonly %netdev, ptr nocapture noundef readnone %regs, ptr nocapture noundef writeonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %hw1 = getelementptr i8, ptr %netdev, i32 3164
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.031 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = zext i32 %i.031 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %i.031, label %sw.caserange [
    i32 14, label %for.body.for.inc_crit_edge
    i32 1522, label %for.body.for.inc_crit_edge34
    i32 1523, label %for.body.for.inc_crit_edge35
    i32 1524, label %for.body.for.inc_crit_edge36
    i32 1525, label %for.body.for.inc_crit_edge37
    i32 1526, label %for.body.for.inc_crit_edge38
    i32 1527, label %for.body.for.inc_crit_edge39
    i32 1528, label %for.body.for.inc_crit_edge40
    i32 1529, label %for.body.for.inc_crit_edge41
    i32 1530, label %for.body.for.inc_crit_edge42
    i32 1531, label %for.body.for.inc_crit_edge43
    i32 1532, label %for.body.for.inc_crit_edge44
    i32 1533, label %for.body.for.inc_crit_edge45
    i32 1534, label %for.body.for.inc_crit_edge46
    i32 1535, label %for.body.for.inc_crit_edge47
    i32 1410, label %for.body.for.inc_crit_edge48
    i32 1411, label %for.body.for.inc_crit_edge49
    i32 1412, label %for.body.for.inc_crit_edge50
    i32 1413, label %for.body.for.inc_crit_edge51
    i32 1414, label %for.body.for.inc_crit_edge52
    i32 1415, label %for.body.for.inc_crit_edge53
    i32 1416, label %for.body.for.inc_crit_edge54
    i32 1417, label %for.body.for.inc_crit_edge55
    i32 1418, label %for.body.for.inc_crit_edge56
    i32 1419, label %for.body.for.inc_crit_edge57
    i32 1420, label %for.body.for.inc_crit_edge58
    i32 1421, label %for.body.for.inc_crit_edge59
    i32 1422, label %for.body.for.inc_crit_edge60
    i32 1423, label %for.body.for.inc_crit_edge61
    i32 1424, label %for.body.for.inc_crit_edge62
    i32 1425, label %for.body.for.inc_crit_edge63
    i32 1426, label %for.body.for.inc_crit_edge64
    i32 1427, label %for.body.for.inc_crit_edge65
    i32 1428, label %for.body.for.inc_crit_edge66
    i32 1429, label %for.body.for.inc_crit_edge67
    i32 1430, label %for.body.for.inc_crit_edge68
    i32 1431, label %for.body.for.inc_crit_edge69
    i32 1432, label %for.body.for.inc_crit_edge70
    i32 1433, label %for.body.for.inc_crit_edge71
    i32 1434, label %for.body.for.inc_crit_edge72
    i32 1435, label %for.body.for.inc_crit_edge73
    i32 1436, label %for.body.for.inc_crit_edge74
    i32 1437, label %for.body.for.inc_crit_edge75
    i32 1438, label %for.body.for.inc_crit_edge76
    i32 1439, label %for.body.for.inc_crit_edge77
    i32 1440, label %for.body.for.inc_crit_edge78
    i32 1441, label %for.body.for.inc_crit_edge79
    i32 1442, label %for.body.for.inc_crit_edge80
    i32 1443, label %for.body.for.inc_crit_edge81
    i32 1444, label %for.body.for.inc_crit_edge82
    i32 1445, label %for.body.for.inc_crit_edge83
    i32 1446, label %for.body.for.inc_crit_edge84
    i32 1447, label %for.body.for.inc_crit_edge85
    i32 1448, label %for.body.for.inc_crit_edge86
    i32 1449, label %for.body.for.inc_crit_edge87
    i32 1450, label %for.body.for.inc_crit_edge88
    i32 1451, label %for.body.for.inc_crit_edge89
    i32 1452, label %for.body.for.inc_crit_edge90
    i32 1453, label %for.body.for.inc_crit_edge91
    i32 1454, label %for.body.for.inc_crit_edge92
    i32 1455, label %for.body.for.inc_crit_edge93
    i32 1456, label %for.body.for.inc_crit_edge94
    i32 1457, label %for.body.for.inc_crit_edge95
    i32 1458, label %for.body.for.inc_crit_edge96
    i32 1459, label %for.body.for.inc_crit_edge97
    i32 1460, label %for.body.for.inc_crit_edge98
    i32 1461, label %for.body.for.inc_crit_edge99
    i32 1462, label %for.body.for.inc_crit_edge100
    i32 1463, label %for.body.for.inc_crit_edge101
    i32 1464, label %for.body.for.inc_crit_edge102
    i32 1465, label %for.body.for.inc_crit_edge103
    i32 1466, label %for.body.for.inc_crit_edge104
    i32 1467, label %for.body.for.inc_crit_edge105
    i32 1468, label %for.body.for.inc_crit_edge106
    i32 1469, label %for.body.for.inc_crit_edge107
    i32 1470, label %for.body.for.inc_crit_edge108
    i32 1471, label %for.body.for.inc_crit_edge109
    i32 1402, label %for.body.for.inc_crit_edge110
    i32 1403, label %for.body.for.inc_crit_edge111
    i32 1393, label %for.body.for.inc_crit_edge112
    i32 1394, label %for.body.for.inc_crit_edge113
    i32 1395, label %for.body.for.inc_crit_edge114
    i32 1388, label %for.body.for.inc_crit_edge115
    i32 1389, label %for.body.for.inc_crit_edge116
    i32 1390, label %for.body.for.inc_crit_edge117
    i32 1391, label %for.body.for.inc_crit_edge118
    i32 1378, label %for.body.for.inc_crit_edge119
    i32 1379, label %for.body.for.inc_crit_edge120
    i32 1380, label %for.body.for.inc_crit_edge121
    i32 1381, label %for.body.for.inc_crit_edge122
    i32 1382, label %for.body.for.inc_crit_edge123
    i32 1383, label %for.body.for.inc_crit_edge124
    i32 1368, label %for.body.for.inc_crit_edge125
    i32 1369, label %for.body.for.inc_crit_edge126
    i32 1370, label %for.body.for.inc_crit_edge127
    i32 1371, label %for.body.for.inc_crit_edge128
    i32 1372, label %for.body.for.inc_crit_edge129
    i32 1373, label %for.body.for.inc_crit_edge130
    i32 1374, label %for.body.for.inc_crit_edge131
    i32 1375, label %for.body.for.inc_crit_edge132
    i32 1358, label %for.body.for.inc_crit_edge133
    i32 1359, label %for.body.for.inc_crit_edge134
    i32 1323, label %for.body.for.inc_crit_edge135
    i32 1324, label %for.body.for.inc_crit_edge136
    i32 1325, label %for.body.for.inc_crit_edge137
    i32 1326, label %for.body.for.inc_crit_edge138
    i32 1327, label %for.body.for.inc_crit_edge139
    i32 1328, label %for.body.for.inc_crit_edge140
    i32 1329, label %for.body.for.inc_crit_edge141
    i32 1330, label %for.body.for.inc_crit_edge142
    i32 1331, label %for.body.for.inc_crit_edge143
    i32 1332, label %for.body.for.inc_crit_edge144
    i32 1333, label %for.body.for.inc_crit_edge145
    i32 1334, label %for.body.for.inc_crit_edge146
    i32 1335, label %for.body.for.inc_crit_edge147
    i32 1336, label %for.body.for.inc_crit_edge148
    i32 1337, label %for.body.for.inc_crit_edge149
    i32 1338, label %for.body.for.inc_crit_edge150
    i32 1339, label %for.body.for.inc_crit_edge151
    i32 1340, label %for.body.for.inc_crit_edge152
    i32 1341, label %for.body.for.inc_crit_edge153
    i32 1342, label %for.body.for.inc_crit_edge154
    i32 1343, label %for.body.for.inc_crit_edge155
    i32 1290, label %for.body.for.inc_crit_edge156
    i32 1291, label %for.body.for.inc_crit_edge157
    i32 1292, label %for.body.for.inc_crit_edge158
    i32 1293, label %for.body.for.inc_crit_edge159
    i32 1294, label %for.body.for.inc_crit_edge160
    i32 1295, label %for.body.for.inc_crit_edge161
    i32 1296, label %for.body.for.inc_crit_edge162
    i32 1297, label %for.body.for.inc_crit_edge163
    i32 1298, label %for.body.for.inc_crit_edge164
    i32 1299, label %for.body.for.inc_crit_edge165
    i32 1300, label %for.body.for.inc_crit_edge166
    i32 1301, label %for.body.for.inc_crit_edge167
    i32 1302, label %for.body.for.inc_crit_edge168
    i32 1303, label %for.body.for.inc_crit_edge169
    i32 1304, label %for.body.for.inc_crit_edge170
    i32 1305, label %for.body.for.inc_crit_edge171
    i32 1306, label %for.body.for.inc_crit_edge172
    i32 1307, label %for.body.for.inc_crit_edge173
    i32 1308, label %for.body.for.inc_crit_edge174
    i32 1309, label %for.body.for.inc_crit_edge175
    i32 1310, label %for.body.for.inc_crit_edge176
    i32 1311, label %for.body.for.inc_crit_edge177
    i32 1216, label %for.body.for.inc_crit_edge178
    i32 1217, label %for.body.for.inc_crit_edge179
    i32 1218, label %for.body.for.inc_crit_edge180
    i32 1219, label %for.body.for.inc_crit_edge181
    i32 1220, label %for.body.for.inc_crit_edge182
    i32 1221, label %for.body.for.inc_crit_edge183
    i32 1222, label %for.body.for.inc_crit_edge184
    i32 1223, label %for.body.for.inc_crit_edge185
    i32 1224, label %for.body.for.inc_crit_edge186
    i32 1225, label %for.body.for.inc_crit_edge187
    i32 1226, label %for.body.for.inc_crit_edge188
    i32 1227, label %for.body.for.inc_crit_edge189
    i32 1228, label %for.body.for.inc_crit_edge190
    i32 1229, label %for.body.for.inc_crit_edge191
    i32 1230, label %for.body.for.inc_crit_edge192
    i32 1231, label %for.body.for.inc_crit_edge193
    i32 1232, label %for.body.for.inc_crit_edge194
    i32 1233, label %for.body.for.inc_crit_edge195
    i32 1234, label %for.body.for.inc_crit_edge196
    i32 1235, label %for.body.for.inc_crit_edge197
    i32 1236, label %for.body.for.inc_crit_edge198
    i32 1237, label %for.body.for.inc_crit_edge199
    i32 1238, label %for.body.for.inc_crit_edge200
    i32 1239, label %for.body.for.inc_crit_edge201
    i32 1240, label %for.body.for.inc_crit_edge202
    i32 1241, label %for.body.for.inc_crit_edge203
    i32 1242, label %for.body.for.inc_crit_edge204
    i32 1243, label %for.body.for.inc_crit_edge205
    i32 1244, label %for.body.for.inc_crit_edge206
    i32 1245, label %for.body.for.inc_crit_edge207
    i32 1246, label %for.body.for.inc_crit_edge208
    i32 1247, label %for.body.for.inc_crit_edge209
    i32 1248, label %for.body.for.inc_crit_edge210
    i32 1249, label %for.body.for.inc_crit_edge211
    i32 1250, label %for.body.for.inc_crit_edge212
    i32 1251, label %for.body.for.inc_crit_edge213
    i32 1252, label %for.body.for.inc_crit_edge214
    i32 1253, label %for.body.for.inc_crit_edge215
    i32 1254, label %for.body.for.inc_crit_edge216
    i32 1255, label %for.body.for.inc_crit_edge217
    i32 1256, label %for.body.for.inc_crit_edge218
    i32 1257, label %for.body.for.inc_crit_edge219
    i32 1258, label %for.body.for.inc_crit_edge220
    i32 1259, label %for.body.for.inc_crit_edge221
    i32 1260, label %for.body.for.inc_crit_edge222
    i32 1261, label %for.body.for.inc_crit_edge223
    i32 1262, label %for.body.for.inc_crit_edge224
    i32 1263, label %for.body.for.inc_crit_edge225
    i32 1264, label %for.body.for.inc_crit_edge226
    i32 1265, label %for.body.for.inc_crit_edge227
    i32 1266, label %for.body.for.inc_crit_edge228
    i32 1267, label %for.body.for.inc_crit_edge229
    i32 1268, label %for.body.for.inc_crit_edge230
    i32 1269, label %for.body.for.inc_crit_edge231
    i32 1270, label %for.body.for.inc_crit_edge232
    i32 1271, label %for.body.for.inc_crit_edge233
    i32 1272, label %for.body.for.inc_crit_edge234
    i32 1273, label %for.body.for.inc_crit_edge235
    i32 1274, label %for.body.for.inc_crit_edge236
    i32 1275, label %for.body.for.inc_crit_edge237
    i32 1276, label %for.body.for.inc_crit_edge238
    i32 1277, label %for.body.for.inc_crit_edge239
    i32 1278, label %for.body.for.inc_crit_edge240
    i32 1279, label %for.body.for.inc_crit_edge241
    i32 1206, label %for.body.for.inc_crit_edge242
    i32 1207, label %for.body.for.inc_crit_edge243
    i32 1208, label %for.body.for.inc_crit_edge244
    i32 1209, label %for.body.for.inc_crit_edge245
    i32 1210, label %for.body.for.inc_crit_edge246
    i32 1211, label %for.body.for.inc_crit_edge247
    i32 1212, label %for.body.for.inc_crit_edge248
    i32 1213, label %for.body.for.inc_crit_edge249
    i32 1200, label %for.body.for.inc_crit_edge250
    i32 1201, label %for.body.for.inc_crit_edge251
    i32 1194, label %for.body.for.inc_crit_edge252
    i32 1195, label %for.body.for.inc_crit_edge253
    i32 1091, label %for.body.for.inc_crit_edge254
    i32 1092, label %for.body.for.inc_crit_edge255
    i32 1093, label %for.body.for.inc_crit_edge256
    i32 1094, label %for.body.for.inc_crit_edge257
    i32 1095, label %for.body.for.inc_crit_edge258
    i32 1096, label %for.body.for.inc_crit_edge259
    i32 1097, label %for.body.for.inc_crit_edge260
    i32 1098, label %for.body.for.inc_crit_edge261
    i32 1099, label %for.body.for.inc_crit_edge262
    i32 1100, label %for.body.for.inc_crit_edge263
    i32 1101, label %for.body.for.inc_crit_edge264
    i32 1102, label %for.body.for.inc_crit_edge265
    i32 1103, label %for.body.for.inc_crit_edge266
    i32 1104, label %for.body.for.inc_crit_edge267
    i32 1105, label %for.body.for.inc_crit_edge268
    i32 1106, label %for.body.for.inc_crit_edge269
    i32 1107, label %for.body.for.inc_crit_edge270
    i32 1108, label %for.body.for.inc_crit_edge271
    i32 1109, label %for.body.for.inc_crit_edge272
    i32 1110, label %for.body.for.inc_crit_edge273
    i32 1111, label %for.body.for.inc_crit_edge274
    i32 1112, label %for.body.for.inc_crit_edge275
    i32 1113, label %for.body.for.inc_crit_edge276
    i32 1114, label %for.body.for.inc_crit_edge277
    i32 1115, label %for.body.for.inc_crit_edge278
    i32 1116, label %for.body.for.inc_crit_edge279
    i32 1117, label %for.body.for.inc_crit_edge280
    i32 1118, label %for.body.for.inc_crit_edge281
    i32 1119, label %for.body.for.inc_crit_edge282
    i32 1120, label %for.body.for.inc_crit_edge283
    i32 1121, label %for.body.for.inc_crit_edge284
    i32 1122, label %for.body.for.inc_crit_edge285
    i32 1123, label %for.body.for.inc_crit_edge286
    i32 1124, label %for.body.for.inc_crit_edge287
    i32 1125, label %for.body.for.inc_crit_edge288
    i32 1126, label %for.body.for.inc_crit_edge289
    i32 1127, label %for.body.for.inc_crit_edge290
    i32 1128, label %for.body.for.inc_crit_edge291
    i32 1129, label %for.body.for.inc_crit_edge292
    i32 1130, label %for.body.for.inc_crit_edge293
    i32 1131, label %for.body.for.inc_crit_edge294
    i32 1132, label %for.body.for.inc_crit_edge295
    i32 1133, label %for.body.for.inc_crit_edge296
    i32 1134, label %for.body.for.inc_crit_edge297
    i32 1135, label %for.body.for.inc_crit_edge298
    i32 1136, label %for.body.for.inc_crit_edge299
    i32 1137, label %for.body.for.inc_crit_edge300
    i32 1138, label %for.body.for.inc_crit_edge301
    i32 1139, label %for.body.for.inc_crit_edge302
    i32 1140, label %for.body.for.inc_crit_edge303
    i32 1141, label %for.body.for.inc_crit_edge304
    i32 1142, label %for.body.for.inc_crit_edge305
    i32 1143, label %for.body.for.inc_crit_edge306
    i32 1144, label %for.body.for.inc_crit_edge307
    i32 1145, label %for.body.for.inc_crit_edge308
    i32 1146, label %for.body.for.inc_crit_edge309
    i32 1147, label %for.body.for.inc_crit_edge310
    i32 1148, label %for.body.for.inc_crit_edge311
    i32 1149, label %for.body.for.inc_crit_edge312
    i32 1150, label %for.body.for.inc_crit_edge313
    i32 1151, label %for.body.for.inc_crit_edge314
    i32 1027, label %for.body.for.inc_crit_edge315
    i32 1028, label %for.body.for.inc_crit_edge316
    i32 1029, label %for.body.for.inc_crit_edge317
    i32 1030, label %for.body.for.inc_crit_edge318
    i32 1031, label %for.body.for.inc_crit_edge319
    i32 1032, label %for.body.for.inc_crit_edge320
    i32 1033, label %for.body.for.inc_crit_edge321
    i32 1034, label %for.body.for.inc_crit_edge322
    i32 1035, label %for.body.for.inc_crit_edge323
    i32 1036, label %for.body.for.inc_crit_edge324
    i32 1037, label %for.body.for.inc_crit_edge325
    i32 1038, label %for.body.for.inc_crit_edge326
    i32 1039, label %for.body.for.inc_crit_edge327
    i32 1040, label %for.body.for.inc_crit_edge328
    i32 1041, label %for.body.for.inc_crit_edge329
    i32 1042, label %for.body.for.inc_crit_edge330
    i32 1043, label %for.body.for.inc_crit_edge331
    i32 1044, label %for.body.for.inc_crit_edge332
    i32 1045, label %for.body.for.inc_crit_edge333
    i32 1046, label %for.body.for.inc_crit_edge334
    i32 1047, label %for.body.for.inc_crit_edge335
    i32 1048, label %for.body.for.inc_crit_edge336
    i32 1049, label %for.body.for.inc_crit_edge337
    i32 1050, label %for.body.for.inc_crit_edge338
    i32 1051, label %for.body.for.inc_crit_edge339
    i32 1052, label %for.body.for.inc_crit_edge340
    i32 1053, label %for.body.for.inc_crit_edge341
    i32 1054, label %for.body.for.inc_crit_edge342
    i32 1055, label %for.body.for.inc_crit_edge343
    i32 1056, label %for.body.for.inc_crit_edge344
    i32 1057, label %for.body.for.inc_crit_edge345
    i32 1058, label %for.body.for.inc_crit_edge346
    i32 1059, label %for.body.for.inc_crit_edge347
    i32 1060, label %for.body.for.inc_crit_edge348
    i32 1061, label %for.body.for.inc_crit_edge349
    i32 1062, label %for.body.for.inc_crit_edge350
    i32 1063, label %for.body.for.inc_crit_edge351
    i32 1064, label %for.body.for.inc_crit_edge352
    i32 1065, label %for.body.for.inc_crit_edge353
    i32 1066, label %for.body.for.inc_crit_edge354
    i32 1067, label %for.body.for.inc_crit_edge355
    i32 1068, label %for.body.for.inc_crit_edge356
    i32 1069, label %for.body.for.inc_crit_edge357
    i32 1070, label %for.body.for.inc_crit_edge358
    i32 1071, label %for.body.for.inc_crit_edge359
    i32 1072, label %for.body.for.inc_crit_edge360
    i32 1073, label %for.body.for.inc_crit_edge361
    i32 1074, label %for.body.for.inc_crit_edge362
    i32 1075, label %for.body.for.inc_crit_edge363
    i32 1076, label %for.body.for.inc_crit_edge364
    i32 1077, label %for.body.for.inc_crit_edge365
    i32 1078, label %for.body.for.inc_crit_edge366
    i32 1079, label %for.body.for.inc_crit_edge367
    i32 1080, label %for.body.for.inc_crit_edge368
    i32 1081, label %for.body.for.inc_crit_edge369
    i32 1082, label %for.body.for.inc_crit_edge370
    i32 1083, label %for.body.for.inc_crit_edge371
    i32 1084, label %for.body.for.inc_crit_edge372
    i32 1085, label %for.body.for.inc_crit_edge373
    i32 1086, label %for.body.for.inc_crit_edge374
    i32 1087, label %for.body.for.inc_crit_edge375
    i32 75, label %for.body.for.inc_crit_edge376
    i32 76, label %for.body.for.inc_crit_edge377
    i32 77, label %for.body.for.inc_crit_edge378
    i32 78, label %for.body.for.inc_crit_edge379
    i32 79, label %for.body.for.inc_crit_edge380
    i32 80, label %for.body.for.inc_crit_edge381
    i32 81, label %for.body.for.inc_crit_edge382
    i32 82, label %for.body.for.inc_crit_edge383
    i32 83, label %for.body.for.inc_crit_edge384
    i32 84, label %for.body.for.inc_crit_edge385
    i32 85, label %for.body.for.inc_crit_edge386
    i32 86, label %for.body.for.inc_crit_edge387
    i32 87, label %for.body.for.inc_crit_edge388
    i32 88, label %for.body.for.inc_crit_edge389
    i32 89, label %for.body.for.inc_crit_edge390
    i32 90, label %for.body.for.inc_crit_edge391
    i32 91, label %for.body.for.inc_crit_edge392
    i32 92, label %for.body.for.inc_crit_edge393
    i32 93, label %for.body.for.inc_crit_edge394
    i32 94, label %for.body.for.inc_crit_edge395
    i32 95, label %for.body.for.inc_crit_edge396
    i32 96, label %for.body.for.inc_crit_edge397
    i32 97, label %for.body.for.inc_crit_edge398
    i32 98, label %for.body.for.inc_crit_edge399
    i32 99, label %for.body.for.inc_crit_edge400
    i32 100, label %for.body.for.inc_crit_edge401
    i32 101, label %for.body.for.inc_crit_edge402
    i32 102, label %for.body.for.inc_crit_edge403
    i32 103, label %for.body.for.inc_crit_edge404
    i32 104, label %for.body.for.inc_crit_edge405
    i32 105, label %for.body.for.inc_crit_edge406
    i32 106, label %for.body.for.inc_crit_edge407
    i32 107, label %for.body.for.inc_crit_edge408
    i32 108, label %for.body.for.inc_crit_edge409
    i32 109, label %for.body.for.inc_crit_edge410
    i32 110, label %for.body.for.inc_crit_edge411
    i32 111, label %for.body.for.inc_crit_edge412
    i32 112, label %for.body.for.inc_crit_edge413
    i32 113, label %for.body.for.inc_crit_edge414
    i32 114, label %for.body.for.inc_crit_edge415
    i32 115, label %for.body.for.inc_crit_edge416
    i32 116, label %for.body.for.inc_crit_edge417
    i32 117, label %for.body.for.inc_crit_edge418
    i32 118, label %for.body.for.inc_crit_edge419
    i32 119, label %for.body.for.inc_crit_edge420
    i32 120, label %for.body.for.inc_crit_edge421
    i32 121, label %for.body.for.inc_crit_edge422
    i32 122, label %for.body.for.inc_crit_edge423
    i32 123, label %for.body.for.inc_crit_edge424
    i32 124, label %for.body.for.inc_crit_edge425
    i32 125, label %for.body.for.inc_crit_edge426
    i32 126, label %for.body.for.inc_crit_edge427
    i32 127, label %for.body.for.inc_crit_edge428
    i32 34, label %for.body.for.inc_crit_edge429
    i32 35, label %for.body.for.inc_crit_edge430
    i32 36, label %for.body.for.inc_crit_edge431
    i32 37, label %for.body.for.inc_crit_edge432
    i32 38, label %for.body.for.inc_crit_edge433
    i32 39, label %for.body.for.inc_crit_edge434
    i32 40, label %for.body.for.inc_crit_edge435
    i32 41, label %for.body.for.inc_crit_edge436
    i32 42, label %for.body.for.inc_crit_edge437
    i32 43, label %for.body.for.inc_crit_edge438
    i32 44, label %for.body.for.inc_crit_edge439
    i32 45, label %for.body.for.inc_crit_edge440
    i32 46, label %for.body.for.inc_crit_edge441
    i32 47, label %for.body.for.inc_crit_edge442
    i32 48, label %for.body.for.inc_crit_edge443
    i32 49, label %for.body.for.inc_crit_edge444
    i32 50, label %for.body.for.inc_crit_edge445
    i32 51, label %for.body.for.inc_crit_edge446
    i32 52, label %for.body.for.inc_crit_edge447
    i32 53, label %for.body.for.inc_crit_edge448
    i32 54, label %for.body.for.inc_crit_edge449
    i32 55, label %for.body.for.inc_crit_edge450
    i32 56, label %for.body.for.inc_crit_edge451
    i32 57, label %for.body.for.inc_crit_edge452
    i32 58, label %for.body.for.inc_crit_edge453
    i32 59, label %for.body.for.inc_crit_edge454
    i32 60, label %for.body.for.inc_crit_edge455
    i32 61, label %for.body.for.inc_crit_edge456
    i32 62, label %for.body.for.inc_crit_edge457
    i32 63, label %for.body.for.inc_crit_edge458
    i32 29, label %for.body.for.inc_crit_edge459
    i32 30, label %for.body.for.inc_crit_edge460
    i32 31, label %for.body.for.inc_crit_edge461
    i32 6, label %for.body.for.inc_crit_edge462
    i32 7, label %for.body.for.inc_crit_edge463
    i32 8, label %for.body.for.inc_crit_edge464
    i32 9, label %for.body.for.inc_crit_edge465
  ]

for.body.for.inc_crit_edge465:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge464:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge463:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge462:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge461:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge460:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge459:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge458:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge457:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge456:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge455:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge454:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge453:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge452:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge451:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge450:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge449:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge448:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge447:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge446:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge445:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge444:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge443:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge442:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge441:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge440:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge439:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge438:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge437:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge436:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge435:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge434:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge433:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge432:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge431:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge430:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge429:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge428:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge427:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge426:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge425:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge424:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge423:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge422:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge421:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge420:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge419:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge418:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge417:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge416:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge415:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge414:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge413:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge412:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge411:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge410:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge409:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge408:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge407:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge406:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge405:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge404:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge403:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge402:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge401:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge400:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge399:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge398:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge397:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge396:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge395:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge394:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge393:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge392:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge391:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge390:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge389:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge388:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge387:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge386:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge385:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge384:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge383:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge382:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge381:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge380:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge379:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge378:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge377:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge376:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge375:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge374:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge373:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge372:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge371:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge370:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge369:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge368:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge367:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge366:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge365:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge364:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge363:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge362:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge361:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge360:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge359:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge358:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge357:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge356:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge355:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge354:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge353:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge352:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge351:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge350:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge349:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge348:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge347:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge346:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge345:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge344:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge343:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge342:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge341:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge340:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge339:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge338:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge337:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge336:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge335:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge334:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge333:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge332:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge331:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge330:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge329:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge328:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge327:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge326:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge325:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge324:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge323:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge322:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge321:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge320:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge319:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge318:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge317:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge316:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge315:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge314:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge313:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge312:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge311:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge310:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge309:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge308:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge307:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge306:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge305:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge304:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge303:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge302:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge301:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge300:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge299:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge298:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge297:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge296:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge295:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge294:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge293:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge292:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge291:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge290:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge289:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge288:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge287:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge286:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge285:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge284:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge283:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge282:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge281:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge280:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge279:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge278:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge277:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge276:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge275:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge274:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge273:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge272:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge271:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge270:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge269:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge268:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge267:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge266:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge265:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge264:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge263:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge262:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge261:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge260:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge259:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge258:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge257:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge256:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge255:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge254:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge253:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge252:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge251:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge250:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge249:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge248:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge247:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge246:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge245:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge244:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge243:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge242:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge241:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge240:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge239:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge238:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge237:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge236:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge235:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge234:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge233:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge232:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge231:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge230:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge229:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge228:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge227:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge226:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge225:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge224:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge223:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge222:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge221:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge220:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge219:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge218:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge217:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge216:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge215:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge214:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge213:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge212:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge211:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge210:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge209:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge208:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge207:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge206:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge205:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge204:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge203:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge202:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge201:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge200:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge199:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge198:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge197:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge196:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge195:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge194:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge193:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge192:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge191:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge190:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge189:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge188:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge187:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge186:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge185:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge184:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge183:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge182:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge181:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge180:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge179:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge178:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge177:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge176:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge175:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge174:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge173:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge172:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge171:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge170:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge169:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge168:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge167:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge166:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge165:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge164:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge163:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge162:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge161:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge160:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge159:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge158:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge157:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge156:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge155:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge154:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge153:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge152:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge151:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge150:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge149:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge148:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge147:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge146:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge145:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge144:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge143:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge142:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge141:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge140:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge139:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge138:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge137:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge136:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge135:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge134:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge133:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge132:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge131:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge130:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge129:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge128:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge127:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge126:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge125:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge124:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge123:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge122:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge121:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge120:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge119:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge118:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge117:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge116:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge115:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge114:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge113:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge112:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge111:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge110:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge109:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge108:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge107:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge106:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge105:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge104:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge103:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge102:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge101:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge100:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge99:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge98:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge97:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge96:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge95:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge94:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge93:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge92:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge91:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge90:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge89:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge88:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge87:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge86:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge85:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge84:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge83:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge82:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge81:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge80:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge79:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge78:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge77:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge76:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge75:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge74:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge73:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge72:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge71:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge70:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge69:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge68:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge67:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge66:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge65:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge64:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge63:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge62:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge61:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge60:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge59:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge58:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge57:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge56:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge55:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge54:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge53:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge52:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge51:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge50:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge49:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge48:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge47:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge46:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge45:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge44:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge43:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge42:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge41:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge40:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge39:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge38:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge37:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge36:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge35:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge34:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

sw.caserange:                                     ; preds = %for.body
  %1 = add nsw i32 %i.031, -136
  call void @__sanitizer_cov_trace_const_cmp4(i32 888, i32 %1)
  %inbounds = icmp ult i32 %1, 888
  br i1 %inbounds, label %sw.caserange.for.inc_crit_edge, label %sw.default

sw.caserange.for.inc_crit_edge:                   ; preds = %sw.caserange
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

sw.default:                                       ; preds = %sw.caserange
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw1, align 4
  %mul = shl nuw nsw i32 %i.031, 2
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #17, !srcloc !268
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br label %for.inc

for.inc:                                          ; preds = %sw.default, %sw.caserange.for.inc_crit_edge, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge34, %for.body.for.inc_crit_edge35, %for.body.for.inc_crit_edge36, %for.body.for.inc_crit_edge37, %for.body.for.inc_crit_edge38, %for.body.for.inc_crit_edge39, %for.body.for.inc_crit_edge40, %for.body.for.inc_crit_edge41, %for.body.for.inc_crit_edge42, %for.body.for.inc_crit_edge43, %for.body.for.inc_crit_edge44, %for.body.for.inc_crit_edge45, %for.body.for.inc_crit_edge46, %for.body.for.inc_crit_edge47, %for.body.for.inc_crit_edge48, %for.body.for.inc_crit_edge49, %for.body.for.inc_crit_edge50, %for.body.for.inc_crit_edge51, %for.body.for.inc_crit_edge52, %for.body.for.inc_crit_edge53, %for.body.for.inc_crit_edge54, %for.body.for.inc_crit_edge55, %for.body.for.inc_crit_edge56, %for.body.for.inc_crit_edge57, %for.body.for.inc_crit_edge58, %for.body.for.inc_crit_edge59, %for.body.for.inc_crit_edge60, %for.body.for.inc_crit_edge61, %for.body.for.inc_crit_edge62, %for.body.for.inc_crit_edge63, %for.body.for.inc_crit_edge64, %for.body.for.inc_crit_edge65, %for.body.for.inc_crit_edge66, %for.body.for.inc_crit_edge67, %for.body.for.inc_crit_edge68, %for.body.for.inc_crit_edge69, %for.body.for.inc_crit_edge70, %for.body.for.inc_crit_edge71, %for.body.for.inc_crit_edge72, %for.body.for.inc_crit_edge73, %for.body.for.inc_crit_edge74, %for.body.for.inc_crit_edge75, %for.body.for.inc_crit_edge76, %for.body.for.inc_crit_edge77, %for.body.for.inc_crit_edge78, %for.body.for.inc_crit_edge79, %for.body.for.inc_crit_edge80, %for.body.for.inc_crit_edge81, %for.body.for.inc_crit_edge82, %for.body.for.inc_crit_edge83, %for.body.for.inc_crit_edge84, %for.body.for.inc_crit_edge85, %for.body.for.inc_crit_edge86, %for.body.for.inc_crit_edge87, %for.body.for.inc_crit_edge88, %for.body.for.inc_crit_edge89, %for.body.for.inc_crit_edge90, %for.body.for.inc_crit_edge91, %for.body.for.inc_crit_edge92, %for.body.for.inc_crit_edge93, %for.body.for.inc_crit_edge94, %for.body.for.inc_crit_edge95, %for.body.for.inc_crit_edge96, %for.body.for.inc_crit_edge97, %for.body.for.inc_crit_edge98, %for.body.for.inc_crit_edge99, %for.body.for.inc_crit_edge100, %for.body.for.inc_crit_edge101, %for.body.for.inc_crit_edge102, %for.body.for.inc_crit_edge103, %for.body.for.inc_crit_edge104, %for.body.for.inc_crit_edge105, %for.body.for.inc_crit_edge106, %for.body.for.inc_crit_edge107, %for.body.for.inc_crit_edge108, %for.body.for.inc_crit_edge109, %for.body.for.inc_crit_edge110, %for.body.for.inc_crit_edge111, %for.body.for.inc_crit_edge112, %for.body.for.inc_crit_edge113, %for.body.for.inc_crit_edge114, %for.body.for.inc_crit_edge115, %for.body.for.inc_crit_edge116, %for.body.for.inc_crit_edge117, %for.body.for.inc_crit_edge118, %for.body.for.inc_crit_edge119, %for.body.for.inc_crit_edge120, %for.body.for.inc_crit_edge121, %for.body.for.inc_crit_edge122, %for.body.for.inc_crit_edge123, %for.body.for.inc_crit_edge124, %for.body.for.inc_crit_edge125, %for.body.for.inc_crit_edge126, %for.body.for.inc_crit_edge127, %for.body.for.inc_crit_edge128, %for.body.for.inc_crit_edge129, %for.body.for.inc_crit_edge130, %for.body.for.inc_crit_edge131, %for.body.for.inc_crit_edge132, %for.body.for.inc_crit_edge133, %for.body.for.inc_crit_edge134, %for.body.for.inc_crit_edge135, %for.body.for.inc_crit_edge136, %for.body.for.inc_crit_edge137, %for.body.for.inc_crit_edge138, %for.body.for.inc_crit_edge139, %for.body.for.inc_crit_edge140, %for.body.for.inc_crit_edge141, %for.body.for.inc_crit_edge142, %for.body.for.inc_crit_edge143, %for.body.for.inc_crit_edge144, %for.body.for.inc_crit_edge145, %for.body.for.inc_crit_edge146, %for.body.for.inc_crit_edge147, %for.body.for.inc_crit_edge148, %for.body.for.inc_crit_edge149, %for.body.for.inc_crit_edge150, %for.body.for.inc_crit_edge151, %for.body.for.inc_crit_edge152, %for.body.for.inc_crit_edge153, %for.body.for.inc_crit_edge154, %for.body.for.inc_crit_edge155, %for.body.for.inc_crit_edge156, %for.body.for.inc_crit_edge157, %for.body.for.inc_crit_edge158, %for.body.for.inc_crit_edge159, %for.body.for.inc_crit_edge160, %for.body.for.inc_crit_edge161, %for.body.for.inc_crit_edge162, %for.body.for.inc_crit_edge163, %for.body.for.inc_crit_edge164, %for.body.for.inc_crit_edge165, %for.body.for.inc_crit_edge166, %for.body.for.inc_crit_edge167, %for.body.for.inc_crit_edge168, %for.body.for.inc_crit_edge169, %for.body.for.inc_crit_edge170, %for.body.for.inc_crit_edge171, %for.body.for.inc_crit_edge172, %for.body.for.inc_crit_edge173, %for.body.for.inc_crit_edge174, %for.body.for.inc_crit_edge175, %for.body.for.inc_crit_edge176, %for.body.for.inc_crit_edge177, %for.body.for.inc_crit_edge178, %for.body.for.inc_crit_edge179, %for.body.for.inc_crit_edge180, %for.body.for.inc_crit_edge181, %for.body.for.inc_crit_edge182, %for.body.for.inc_crit_edge183, %for.body.for.inc_crit_edge184, %for.body.for.inc_crit_edge185, %for.body.for.inc_crit_edge186, %for.body.for.inc_crit_edge187, %for.body.for.inc_crit_edge188, %for.body.for.inc_crit_edge189, %for.body.for.inc_crit_edge190, %for.body.for.inc_crit_edge191, %for.body.for.inc_crit_edge192, %for.body.for.inc_crit_edge193, %for.body.for.inc_crit_edge194, %for.body.for.inc_crit_edge195, %for.body.for.inc_crit_edge196, %for.body.for.inc_crit_edge197, %for.body.for.inc_crit_edge198, %for.body.for.inc_crit_edge199, %for.body.for.inc_crit_edge200, %for.body.for.inc_crit_edge201, %for.body.for.inc_crit_edge202, %for.body.for.inc_crit_edge203, %for.body.for.inc_crit_edge204, %for.body.for.inc_crit_edge205, %for.body.for.inc_crit_edge206, %for.body.for.inc_crit_edge207, %for.body.for.inc_crit_edge208, %for.body.for.inc_crit_edge209, %for.body.for.inc_crit_edge210, %for.body.for.inc_crit_edge211, %for.body.for.inc_crit_edge212, %for.body.for.inc_crit_edge213, %for.body.for.inc_crit_edge214, %for.body.for.inc_crit_edge215, %for.body.for.inc_crit_edge216, %for.body.for.inc_crit_edge217, %for.body.for.inc_crit_edge218, %for.body.for.inc_crit_edge219, %for.body.for.inc_crit_edge220, %for.body.for.inc_crit_edge221, %for.body.for.inc_crit_edge222, %for.body.for.inc_crit_edge223, %for.body.for.inc_crit_edge224, %for.body.for.inc_crit_edge225, %for.body.for.inc_crit_edge226, %for.body.for.inc_crit_edge227, %for.body.for.inc_crit_edge228, %for.body.for.inc_crit_edge229, %for.body.for.inc_crit_edge230, %for.body.for.inc_crit_edge231, %for.body.for.inc_crit_edge232, %for.body.for.inc_crit_edge233, %for.body.for.inc_crit_edge234, %for.body.for.inc_crit_edge235, %for.body.for.inc_crit_edge236, %for.body.for.inc_crit_edge237, %for.body.for.inc_crit_edge238, %for.body.for.inc_crit_edge239, %for.body.for.inc_crit_edge240, %for.body.for.inc_crit_edge241, %for.body.for.inc_crit_edge242, %for.body.for.inc_crit_edge243, %for.body.for.inc_crit_edge244, %for.body.for.inc_crit_edge245, %for.body.for.inc_crit_edge246, %for.body.for.inc_crit_edge247, %for.body.for.inc_crit_edge248, %for.body.for.inc_crit_edge249, %for.body.for.inc_crit_edge250, %for.body.for.inc_crit_edge251, %for.body.for.inc_crit_edge252, %for.body.for.inc_crit_edge253, %for.body.for.inc_crit_edge254, %for.body.for.inc_crit_edge255, %for.body.for.inc_crit_edge256, %for.body.for.inc_crit_edge257, %for.body.for.inc_crit_edge258, %for.body.for.inc_crit_edge259, %for.body.for.inc_crit_edge260, %for.body.for.inc_crit_edge261, %for.body.for.inc_crit_edge262, %for.body.for.inc_crit_edge263, %for.body.for.inc_crit_edge264, %for.body.for.inc_crit_edge265, %for.body.for.inc_crit_edge266, %for.body.for.inc_crit_edge267, %for.body.for.inc_crit_edge268, %for.body.for.inc_crit_edge269, %for.body.for.inc_crit_edge270, %for.body.for.inc_crit_edge271, %for.body.for.inc_crit_edge272, %for.body.for.inc_crit_edge273, %for.body.for.inc_crit_edge274, %for.body.for.inc_crit_edge275, %for.body.for.inc_crit_edge276, %for.body.for.inc_crit_edge277, %for.body.for.inc_crit_edge278, %for.body.for.inc_crit_edge279, %for.body.for.inc_crit_edge280, %for.body.for.inc_crit_edge281, %for.body.for.inc_crit_edge282, %for.body.for.inc_crit_edge283, %for.body.for.inc_crit_edge284, %for.body.for.inc_crit_edge285, %for.body.for.inc_crit_edge286, %for.body.for.inc_crit_edge287, %for.body.for.inc_crit_edge288, %for.body.for.inc_crit_edge289, %for.body.for.inc_crit_edge290, %for.body.for.inc_crit_edge291, %for.body.for.inc_crit_edge292, %for.body.for.inc_crit_edge293, %for.body.for.inc_crit_edge294, %for.body.for.inc_crit_edge295, %for.body.for.inc_crit_edge296, %for.body.for.inc_crit_edge297, %for.body.for.inc_crit_edge298, %for.body.for.inc_crit_edge299, %for.body.for.inc_crit_edge300, %for.body.for.inc_crit_edge301, %for.body.for.inc_crit_edge302, %for.body.for.inc_crit_edge303, %for.body.for.inc_crit_edge304, %for.body.for.inc_crit_edge305, %for.body.for.inc_crit_edge306, %for.body.for.inc_crit_edge307, %for.body.for.inc_crit_edge308, %for.body.for.inc_crit_edge309, %for.body.for.inc_crit_edge310, %for.body.for.inc_crit_edge311, %for.body.for.inc_crit_edge312, %for.body.for.inc_crit_edge313, %for.body.for.inc_crit_edge314, %for.body.for.inc_crit_edge315, %for.body.for.inc_crit_edge316, %for.body.for.inc_crit_edge317, %for.body.for.inc_crit_edge318, %for.body.for.inc_crit_edge319, %for.body.for.inc_crit_edge320, %for.body.for.inc_crit_edge321, %for.body.for.inc_crit_edge322, %for.body.for.inc_crit_edge323, %for.body.for.inc_crit_edge324, %for.body.for.inc_crit_edge325, %for.body.for.inc_crit_edge326, %for.body.for.inc_crit_edge327, %for.body.for.inc_crit_edge328, %for.body.for.inc_crit_edge329, %for.body.for.inc_crit_edge330, %for.body.for.inc_crit_edge331, %for.body.for.inc_crit_edge332, %for.body.for.inc_crit_edge333, %for.body.for.inc_crit_edge334, %for.body.for.inc_crit_edge335, %for.body.for.inc_crit_edge336, %for.body.for.inc_crit_edge337, %for.body.for.inc_crit_edge338, %for.body.for.inc_crit_edge339, %for.body.for.inc_crit_edge340, %for.body.for.inc_crit_edge341, %for.body.for.inc_crit_edge342, %for.body.for.inc_crit_edge343, %for.body.for.inc_crit_edge344, %for.body.for.inc_crit_edge345, %for.body.for.inc_crit_edge346, %for.body.for.inc_crit_edge347, %for.body.for.inc_crit_edge348, %for.body.for.inc_crit_edge349, %for.body.for.inc_crit_edge350, %for.body.for.inc_crit_edge351, %for.body.for.inc_crit_edge352, %for.body.for.inc_crit_edge353, %for.body.for.inc_crit_edge354, %for.body.for.inc_crit_edge355, %for.body.for.inc_crit_edge356, %for.body.for.inc_crit_edge357, %for.body.for.inc_crit_edge358, %for.body.for.inc_crit_edge359, %for.body.for.inc_crit_edge360, %for.body.for.inc_crit_edge361, %for.body.for.inc_crit_edge362, %for.body.for.inc_crit_edge363, %for.body.for.inc_crit_edge364, %for.body.for.inc_crit_edge365, %for.body.for.inc_crit_edge366, %for.body.for.inc_crit_edge367, %for.body.for.inc_crit_edge368, %for.body.for.inc_crit_edge369, %for.body.for.inc_crit_edge370, %for.body.for.inc_crit_edge371, %for.body.for.inc_crit_edge372, %for.body.for.inc_crit_edge373, %for.body.for.inc_crit_edge374, %for.body.for.inc_crit_edge375, %for.body.for.inc_crit_edge376, %for.body.for.inc_crit_edge377, %for.body.for.inc_crit_edge378, %for.body.for.inc_crit_edge379, %for.body.for.inc_crit_edge380, %for.body.for.inc_crit_edge381, %for.body.for.inc_crit_edge382, %for.body.for.inc_crit_edge383, %for.body.for.inc_crit_edge384, %for.body.for.inc_crit_edge385, %for.body.for.inc_crit_edge386, %for.body.for.inc_crit_edge387, %for.body.for.inc_crit_edge388, %for.body.for.inc_crit_edge389, %for.body.for.inc_crit_edge390, %for.body.for.inc_crit_edge391, %for.body.for.inc_crit_edge392, %for.body.for.inc_crit_edge393, %for.body.for.inc_crit_edge394, %for.body.for.inc_crit_edge395, %for.body.for.inc_crit_edge396, %for.body.for.inc_crit_edge397, %for.body.for.inc_crit_edge398, %for.body.for.inc_crit_edge399, %for.body.for.inc_crit_edge400, %for.body.for.inc_crit_edge401, %for.body.for.inc_crit_edge402, %for.body.for.inc_crit_edge403, %for.body.for.inc_crit_edge404, %for.body.for.inc_crit_edge405, %for.body.for.inc_crit_edge406, %for.body.for.inc_crit_edge407, %for.body.for.inc_crit_edge408, %for.body.for.inc_crit_edge409, %for.body.for.inc_crit_edge410, %for.body.for.inc_crit_edge411, %for.body.for.inc_crit_edge412, %for.body.for.inc_crit_edge413, %for.body.for.inc_crit_edge414, %for.body.for.inc_crit_edge415, %for.body.for.inc_crit_edge416, %for.body.for.inc_crit_edge417, %for.body.for.inc_crit_edge418, %for.body.for.inc_crit_edge419, %for.body.for.inc_crit_edge420, %for.body.for.inc_crit_edge421, %for.body.for.inc_crit_edge422, %for.body.for.inc_crit_edge423, %for.body.for.inc_crit_edge424, %for.body.for.inc_crit_edge425, %for.body.for.inc_crit_edge426, %for.body.for.inc_crit_edge427, %for.body.for.inc_crit_edge428, %for.body.for.inc_crit_edge429, %for.body.for.inc_crit_edge430, %for.body.for.inc_crit_edge431, %for.body.for.inc_crit_edge432, %for.body.for.inc_crit_edge433, %for.body.for.inc_crit_edge434, %for.body.for.inc_crit_edge435, %for.body.for.inc_crit_edge436, %for.body.for.inc_crit_edge437, %for.body.for.inc_crit_edge438, %for.body.for.inc_crit_edge439, %for.body.for.inc_crit_edge440, %for.body.for.inc_crit_edge441, %for.body.for.inc_crit_edge442, %for.body.for.inc_crit_edge443, %for.body.for.inc_crit_edge444, %for.body.for.inc_crit_edge445, %for.body.for.inc_crit_edge446, %for.body.for.inc_crit_edge447, %for.body.for.inc_crit_edge448, %for.body.for.inc_crit_edge449, %for.body.for.inc_crit_edge450, %for.body.for.inc_crit_edge451, %for.body.for.inc_crit_edge452, %for.body.for.inc_crit_edge453, %for.body.for.inc_crit_edge454, %for.body.for.inc_crit_edge455, %for.body.for.inc_crit_edge456, %for.body.for.inc_crit_edge457, %for.body.for.inc_crit_edge458, %for.body.for.inc_crit_edge459, %for.body.for.inc_crit_edge460, %for.body.for.inc_crit_edge461, %for.body.for.inc_crit_edge462, %for.body.for.inc_crit_edge463, %for.body.for.inc_crit_edge464, %for.body.for.inc_crit_edge465
  %.sink = phi i32 [ %5, %sw.default ], [ 0, %for.body.for.inc_crit_edge ], [ 0, %for.body.for.inc_crit_edge34 ], [ 0, %for.body.for.inc_crit_edge35 ], [ 0, %for.body.for.inc_crit_edge36 ], [ 0, %for.body.for.inc_crit_edge37 ], [ 0, %for.body.for.inc_crit_edge38 ], [ 0, %for.body.for.inc_crit_edge39 ], [ 0, %for.body.for.inc_crit_edge40 ], [ 0, %for.body.for.inc_crit_edge41 ], [ 0, %for.body.for.inc_crit_edge42 ], [ 0, %for.body.for.inc_crit_edge43 ], [ 0, %for.body.for.inc_crit_edge44 ], [ 0, %for.body.for.inc_crit_edge45 ], [ 0, %for.body.for.inc_crit_edge46 ], [ 0, %for.body.for.inc_crit_edge47 ], [ 0, %for.body.for.inc_crit_edge48 ], [ 0, %for.body.for.inc_crit_edge49 ], [ 0, %for.body.for.inc_crit_edge50 ], [ 0, %for.body.for.inc_crit_edge51 ], [ 0, %for.body.for.inc_crit_edge52 ], [ 0, %for.body.for.inc_crit_edge53 ], [ 0, %for.body.for.inc_crit_edge54 ], [ 0, %for.body.for.inc_crit_edge55 ], [ 0, %for.body.for.inc_crit_edge56 ], [ 0, %for.body.for.inc_crit_edge57 ], [ 0, %for.body.for.inc_crit_edge58 ], [ 0, %for.body.for.inc_crit_edge59 ], [ 0, %for.body.for.inc_crit_edge60 ], [ 0, %for.body.for.inc_crit_edge61 ], [ 0, %for.body.for.inc_crit_edge62 ], [ 0, %for.body.for.inc_crit_edge63 ], [ 0, %for.body.for.inc_crit_edge64 ], [ 0, %for.body.for.inc_crit_edge65 ], [ 0, %for.body.for.inc_crit_edge66 ], [ 0, %for.body.for.inc_crit_edge67 ], [ 0, %for.body.for.inc_crit_edge68 ], [ 0, %for.body.for.inc_crit_edge69 ], [ 0, %for.body.for.inc_crit_edge70 ], [ 0, %for.body.for.inc_crit_edge71 ], [ 0, %for.body.for.inc_crit_edge72 ], [ 0, %for.body.for.inc_crit_edge73 ], [ 0, %for.body.for.inc_crit_edge74 ], [ 0, %for.body.for.inc_crit_edge75 ], [ 0, %for.body.for.inc_crit_edge76 ], [ 0, %for.body.for.inc_crit_edge77 ], [ 0, %for.body.for.inc_crit_edge78 ], [ 0, %for.body.for.inc_crit_edge79 ], [ 0, %for.body.for.inc_crit_edge80 ], [ 0, %for.body.for.inc_crit_edge81 ], [ 0, %for.body.for.inc_crit_edge82 ], [ 0, %for.body.for.inc_crit_edge83 ], [ 0, %for.body.for.inc_crit_edge84 ], [ 0, %for.body.for.inc_crit_edge85 ], [ 0, %for.body.for.inc_crit_edge86 ], [ 0, %for.body.for.inc_crit_edge87 ], [ 0, %for.body.for.inc_crit_edge88 ], [ 0, %for.body.for.inc_crit_edge89 ], [ 0, %for.body.for.inc_crit_edge90 ], [ 0, %for.body.for.inc_crit_edge91 ], [ 0, %for.body.for.inc_crit_edge92 ], [ 0, %for.body.for.inc_crit_edge93 ], [ 0, %for.body.for.inc_crit_edge94 ], [ 0, %for.body.for.inc_crit_edge95 ], [ 0, %for.body.for.inc_crit_edge96 ], [ 0, %for.body.for.inc_crit_edge97 ], [ 0, %for.body.for.inc_crit_edge98 ], [ 0, %for.body.for.inc_crit_edge99 ], [ 0, %for.body.for.inc_crit_edge100 ], [ 0, %for.body.for.inc_crit_edge101 ], [ 0, %for.body.for.inc_crit_edge102 ], [ 0, %for.body.for.inc_crit_edge103 ], [ 0, %for.body.for.inc_crit_edge104 ], [ 0, %for.body.for.inc_crit_edge105 ], [ 0, %for.body.for.inc_crit_edge106 ], [ 0, %for.body.for.inc_crit_edge107 ], [ 0, %for.body.for.inc_crit_edge108 ], [ 0, %for.body.for.inc_crit_edge109 ], [ 0, %for.body.for.inc_crit_edge110 ], [ 0, %for.body.for.inc_crit_edge111 ], [ 0, %for.body.for.inc_crit_edge112 ], [ 0, %for.body.for.inc_crit_edge113 ], [ 0, %for.body.for.inc_crit_edge114 ], [ 0, %for.body.for.inc_crit_edge115 ], [ 0, %for.body.for.inc_crit_edge116 ], [ 0, %for.body.for.inc_crit_edge117 ], [ 0, %for.body.for.inc_crit_edge118 ], [ 0, %for.body.for.inc_crit_edge119 ], [ 0, %for.body.for.inc_crit_edge120 ], [ 0, %for.body.for.inc_crit_edge121 ], [ 0, %for.body.for.inc_crit_edge122 ], [ 0, %for.body.for.inc_crit_edge123 ], [ 0, %for.body.for.inc_crit_edge124 ], [ 0, %for.body.for.inc_crit_edge125 ], [ 0, %for.body.for.inc_crit_edge126 ], [ 0, %for.body.for.inc_crit_edge127 ], [ 0, %for.body.for.inc_crit_edge128 ], [ 0, %for.body.for.inc_crit_edge129 ], [ 0, %for.body.for.inc_crit_edge130 ], [ 0, %for.body.for.inc_crit_edge131 ], [ 0, %for.body.for.inc_crit_edge132 ], [ 0, %for.body.for.inc_crit_edge133 ], [ 0, %for.body.for.inc_crit_edge134 ], [ 0, %for.body.for.inc_crit_edge135 ], [ 0, %for.body.for.inc_crit_edge136 ], [ 0, %for.body.for.inc_crit_edge137 ], [ 0, %for.body.for.inc_crit_edge138 ], [ 0, %for.body.for.inc_crit_edge139 ], [ 0, %for.body.for.inc_crit_edge140 ], [ 0, %for.body.for.inc_crit_edge141 ], [ 0, %for.body.for.inc_crit_edge142 ], [ 0, %for.body.for.inc_crit_edge143 ], [ 0, %for.body.for.inc_crit_edge144 ], [ 0, %for.body.for.inc_crit_edge145 ], [ 0, %for.body.for.inc_crit_edge146 ], [ 0, %for.body.for.inc_crit_edge147 ], [ 0, %for.body.for.inc_crit_edge148 ], [ 0, %for.body.for.inc_crit_edge149 ], [ 0, %for.body.for.inc_crit_edge150 ], [ 0, %for.body.for.inc_crit_edge151 ], [ 0, %for.body.for.inc_crit_edge152 ], [ 0, %for.body.for.inc_crit_edge153 ], [ 0, %for.body.for.inc_crit_edge154 ], [ 0, %for.body.for.inc_crit_edge155 ], [ 0, %for.body.for.inc_crit_edge156 ], [ 0, %for.body.for.inc_crit_edge157 ], [ 0, %for.body.for.inc_crit_edge158 ], [ 0, %for.body.for.inc_crit_edge159 ], [ 0, %for.body.for.inc_crit_edge160 ], [ 0, %for.body.for.inc_crit_edge161 ], [ 0, %for.body.for.inc_crit_edge162 ], [ 0, %for.body.for.inc_crit_edge163 ], [ 0, %for.body.for.inc_crit_edge164 ], [ 0, %for.body.for.inc_crit_edge165 ], [ 0, %for.body.for.inc_crit_edge166 ], [ 0, %for.body.for.inc_crit_edge167 ], [ 0, %for.body.for.inc_crit_edge168 ], [ 0, %for.body.for.inc_crit_edge169 ], [ 0, %for.body.for.inc_crit_edge170 ], [ 0, %for.body.for.inc_crit_edge171 ], [ 0, %for.body.for.inc_crit_edge172 ], [ 0, %for.body.for.inc_crit_edge173 ], [ 0, %for.body.for.inc_crit_edge174 ], [ 0, %for.body.for.inc_crit_edge175 ], [ 0, %for.body.for.inc_crit_edge176 ], [ 0, %for.body.for.inc_crit_edge177 ], [ 0, %for.body.for.inc_crit_edge178 ], [ 0, %for.body.for.inc_crit_edge179 ], [ 0, %for.body.for.inc_crit_edge180 ], [ 0, %for.body.for.inc_crit_edge181 ], [ 0, %for.body.for.inc_crit_edge182 ], [ 0, %for.body.for.inc_crit_edge183 ], [ 0, %for.body.for.inc_crit_edge184 ], [ 0, %for.body.for.inc_crit_edge185 ], [ 0, %for.body.for.inc_crit_edge186 ], [ 0, %for.body.for.inc_crit_edge187 ], [ 0, %for.body.for.inc_crit_edge188 ], [ 0, %for.body.for.inc_crit_edge189 ], [ 0, %for.body.for.inc_crit_edge190 ], [ 0, %for.body.for.inc_crit_edge191 ], [ 0, %for.body.for.inc_crit_edge192 ], [ 0, %for.body.for.inc_crit_edge193 ], [ 0, %for.body.for.inc_crit_edge194 ], [ 0, %for.body.for.inc_crit_edge195 ], [ 0, %for.body.for.inc_crit_edge196 ], [ 0, %for.body.for.inc_crit_edge197 ], [ 0, %for.body.for.inc_crit_edge198 ], [ 0, %for.body.for.inc_crit_edge199 ], [ 0, %for.body.for.inc_crit_edge200 ], [ 0, %for.body.for.inc_crit_edge201 ], [ 0, %for.body.for.inc_crit_edge202 ], [ 0, %for.body.for.inc_crit_edge203 ], [ 0, %for.body.for.inc_crit_edge204 ], [ 0, %for.body.for.inc_crit_edge205 ], [ 0, %for.body.for.inc_crit_edge206 ], [ 0, %for.body.for.inc_crit_edge207 ], [ 0, %for.body.for.inc_crit_edge208 ], [ 0, %for.body.for.inc_crit_edge209 ], [ 0, %for.body.for.inc_crit_edge210 ], [ 0, %for.body.for.inc_crit_edge211 ], [ 0, %for.body.for.inc_crit_edge212 ], [ 0, %for.body.for.inc_crit_edge213 ], [ 0, %for.body.for.inc_crit_edge214 ], [ 0, %for.body.for.inc_crit_edge215 ], [ 0, %for.body.for.inc_crit_edge216 ], [ 0, %for.body.for.inc_crit_edge217 ], [ 0, %for.body.for.inc_crit_edge218 ], [ 0, %for.body.for.inc_crit_edge219 ], [ 0, %for.body.for.inc_crit_edge220 ], [ 0, %for.body.for.inc_crit_edge221 ], [ 0, %for.body.for.inc_crit_edge222 ], [ 0, %for.body.for.inc_crit_edge223 ], [ 0, %for.body.for.inc_crit_edge224 ], [ 0, %for.body.for.inc_crit_edge225 ], [ 0, %for.body.for.inc_crit_edge226 ], [ 0, %for.body.for.inc_crit_edge227 ], [ 0, %for.body.for.inc_crit_edge228 ], [ 0, %for.body.for.inc_crit_edge229 ], [ 0, %for.body.for.inc_crit_edge230 ], [ 0, %for.body.for.inc_crit_edge231 ], [ 0, %for.body.for.inc_crit_edge232 ], [ 0, %for.body.for.inc_crit_edge233 ], [ 0, %for.body.for.inc_crit_edge234 ], [ 0, %for.body.for.inc_crit_edge235 ], [ 0, %for.body.for.inc_crit_edge236 ], [ 0, %for.body.for.inc_crit_edge237 ], [ 0, %for.body.for.inc_crit_edge238 ], [ 0, %for.body.for.inc_crit_edge239 ], [ 0, %for.body.for.inc_crit_edge240 ], [ 0, %for.body.for.inc_crit_edge241 ], [ 0, %for.body.for.inc_crit_edge242 ], [ 0, %for.body.for.inc_crit_edge243 ], [ 0, %for.body.for.inc_crit_edge244 ], [ 0, %for.body.for.inc_crit_edge245 ], [ 0, %for.body.for.inc_crit_edge246 ], [ 0, %for.body.for.inc_crit_edge247 ], [ 0, %for.body.for.inc_crit_edge248 ], [ 0, %for.body.for.inc_crit_edge249 ], [ 0, %for.body.for.inc_crit_edge250 ], [ 0, %for.body.for.inc_crit_edge251 ], [ 0, %for.body.for.inc_crit_edge252 ], [ 0, %for.body.for.inc_crit_edge253 ], [ 0, %for.body.for.inc_crit_edge254 ], [ 0, %for.body.for.inc_crit_edge255 ], [ 0, %for.body.for.inc_crit_edge256 ], [ 0, %for.body.for.inc_crit_edge257 ], [ 0, %for.body.for.inc_crit_edge258 ], [ 0, %for.body.for.inc_crit_edge259 ], [ 0, %for.body.for.inc_crit_edge260 ], [ 0, %for.body.for.inc_crit_edge261 ], [ 0, %for.body.for.inc_crit_edge262 ], [ 0, %for.body.for.inc_crit_edge263 ], [ 0, %for.body.for.inc_crit_edge264 ], [ 0, %for.body.for.inc_crit_edge265 ], [ 0, %for.body.for.inc_crit_edge266 ], [ 0, %for.body.for.inc_crit_edge267 ], [ 0, %for.body.for.inc_crit_edge268 ], [ 0, %for.body.for.inc_crit_edge269 ], [ 0, %for.body.for.inc_crit_edge270 ], [ 0, %for.body.for.inc_crit_edge271 ], [ 0, %for.body.for.inc_crit_edge272 ], [ 0, %for.body.for.inc_crit_edge273 ], [ 0, %for.body.for.inc_crit_edge274 ], [ 0, %for.body.for.inc_crit_edge275 ], [ 0, %for.body.for.inc_crit_edge276 ], [ 0, %for.body.for.inc_crit_edge277 ], [ 0, %for.body.for.inc_crit_edge278 ], [ 0, %for.body.for.inc_crit_edge279 ], [ 0, %for.body.for.inc_crit_edge280 ], [ 0, %for.body.for.inc_crit_edge281 ], [ 0, %for.body.for.inc_crit_edge282 ], [ 0, %for.body.for.inc_crit_edge283 ], [ 0, %for.body.for.inc_crit_edge284 ], [ 0, %for.body.for.inc_crit_edge285 ], [ 0, %for.body.for.inc_crit_edge286 ], [ 0, %for.body.for.inc_crit_edge287 ], [ 0, %for.body.for.inc_crit_edge288 ], [ 0, %for.body.for.inc_crit_edge289 ], [ 0, %sw.caserange.for.inc_crit_edge ], [ 0, %for.body.for.inc_crit_edge290 ], [ 0, %for.body.for.inc_crit_edge291 ], [ 0, %for.body.for.inc_crit_edge292 ], [ 0, %for.body.for.inc_crit_edge293 ], [ 0, %for.body.for.inc_crit_edge294 ], [ 0, %for.body.for.inc_crit_edge295 ], [ 0, %for.body.for.inc_crit_edge296 ], [ 0, %for.body.for.inc_crit_edge297 ], [ 0, %for.body.for.inc_crit_edge298 ], [ 0, %for.body.for.inc_crit_edge299 ], [ 0, %for.body.for.inc_crit_edge300 ], [ 0, %for.body.for.inc_crit_edge301 ], [ 0, %for.body.for.inc_crit_edge302 ], [ 0, %for.body.for.inc_crit_edge303 ], [ 0, %for.body.for.inc_crit_edge304 ], [ 0, %for.body.for.inc_crit_edge305 ], [ 0, %for.body.for.inc_crit_edge306 ], [ 0, %for.body.for.inc_crit_edge307 ], [ 0, %for.body.for.inc_crit_edge308 ], [ 0, %for.body.for.inc_crit_edge309 ], [ 0, %for.body.for.inc_crit_edge310 ], [ 0, %for.body.for.inc_crit_edge311 ], [ 0, %for.body.for.inc_crit_edge312 ], [ 0, %for.body.for.inc_crit_edge313 ], [ 0, %for.body.for.inc_crit_edge314 ], [ 0, %for.body.for.inc_crit_edge315 ], [ 0, %for.body.for.inc_crit_edge316 ], [ 0, %for.body.for.inc_crit_edge317 ], [ 0, %for.body.for.inc_crit_edge318 ], [ 0, %for.body.for.inc_crit_edge319 ], [ 0, %for.body.for.inc_crit_edge320 ], [ 0, %for.body.for.inc_crit_edge321 ], [ 0, %for.body.for.inc_crit_edge322 ], [ 0, %for.body.for.inc_crit_edge323 ], [ 0, %for.body.for.inc_crit_edge324 ], [ 0, %for.body.for.inc_crit_edge325 ], [ 0, %for.body.for.inc_crit_edge326 ], [ 0, %for.body.for.inc_crit_edge327 ], [ 0, %for.body.for.inc_crit_edge328 ], [ 0, %for.body.for.inc_crit_edge329 ], [ 0, %for.body.for.inc_crit_edge330 ], [ 0, %for.body.for.inc_crit_edge331 ], [ 0, %for.body.for.inc_crit_edge332 ], [ 0, %for.body.for.inc_crit_edge333 ], [ 0, %for.body.for.inc_crit_edge334 ], [ 0, %for.body.for.inc_crit_edge335 ], [ 0, %for.body.for.inc_crit_edge336 ], [ 0, %for.body.for.inc_crit_edge337 ], [ 0, %for.body.for.inc_crit_edge338 ], [ 0, %for.body.for.inc_crit_edge339 ], [ 0, %for.body.for.inc_crit_edge340 ], [ 0, %for.body.for.inc_crit_edge341 ], [ 0, %for.body.for.inc_crit_edge342 ], [ 0, %for.body.for.inc_crit_edge343 ], [ 0, %for.body.for.inc_crit_edge344 ], [ 0, %for.body.for.inc_crit_edge345 ], [ 0, %for.body.for.inc_crit_edge346 ], [ 0, %for.body.for.inc_crit_edge347 ], [ 0, %for.body.for.inc_crit_edge348 ], [ 0, %for.body.for.inc_crit_edge349 ], [ 0, %for.body.for.inc_crit_edge350 ], [ 0, %for.body.for.inc_crit_edge351 ], [ 0, %for.body.for.inc_crit_edge352 ], [ 0, %for.body.for.inc_crit_edge353 ], [ 0, %for.body.for.inc_crit_edge354 ], [ 0, %for.body.for.inc_crit_edge355 ], [ 0, %for.body.for.inc_crit_edge356 ], [ 0, %for.body.for.inc_crit_edge357 ], [ 0, %for.body.for.inc_crit_edge358 ], [ 0, %for.body.for.inc_crit_edge359 ], [ 0, %for.body.for.inc_crit_edge360 ], [ 0, %for.body.for.inc_crit_edge361 ], [ 0, %for.body.for.inc_crit_edge362 ], [ 0, %for.body.for.inc_crit_edge363 ], [ 0, %for.body.for.inc_crit_edge364 ], [ 0, %for.body.for.inc_crit_edge365 ], [ 0, %for.body.for.inc_crit_edge366 ], [ 0, %for.body.for.inc_crit_edge367 ], [ 0, %for.body.for.inc_crit_edge368 ], [ 0, %for.body.for.inc_crit_edge369 ], [ 0, %for.body.for.inc_crit_edge370 ], [ 0, %for.body.for.inc_crit_edge371 ], [ 0, %for.body.for.inc_crit_edge372 ], [ 0, %for.body.for.inc_crit_edge373 ], [ 0, %for.body.for.inc_crit_edge374 ], [ 0, %for.body.for.inc_crit_edge375 ], [ 0, %for.body.for.inc_crit_edge376 ], [ 0, %for.body.for.inc_crit_edge377 ], [ 0, %for.body.for.inc_crit_edge378 ], [ 0, %for.body.for.inc_crit_edge379 ], [ 0, %for.body.for.inc_crit_edge380 ], [ 0, %for.body.for.inc_crit_edge381 ], [ 0, %for.body.for.inc_crit_edge382 ], [ 0, %for.body.for.inc_crit_edge383 ], [ 0, %for.body.for.inc_crit_edge384 ], [ 0, %for.body.for.inc_crit_edge385 ], [ 0, %for.body.for.inc_crit_edge386 ], [ 0, %for.body.for.inc_crit_edge387 ], [ 0, %for.body.for.inc_crit_edge388 ], [ 0, %for.body.for.inc_crit_edge389 ], [ 0, %for.body.for.inc_crit_edge390 ], [ 0, %for.body.for.inc_crit_edge391 ], [ 0, %for.body.for.inc_crit_edge392 ], [ 0, %for.body.for.inc_crit_edge393 ], [ 0, %for.body.for.inc_crit_edge394 ], [ 0, %for.body.for.inc_crit_edge395 ], [ 0, %for.body.for.inc_crit_edge396 ], [ 0, %for.body.for.inc_crit_edge397 ], [ 0, %for.body.for.inc_crit_edge398 ], [ 0, %for.body.for.inc_crit_edge399 ], [ 0, %for.body.for.inc_crit_edge400 ], [ 0, %for.body.for.inc_crit_edge401 ], [ 0, %for.body.for.inc_crit_edge402 ], [ 0, %for.body.for.inc_crit_edge403 ], [ 0, %for.body.for.inc_crit_edge404 ], [ 0, %for.body.for.inc_crit_edge405 ], [ 0, %for.body.for.inc_crit_edge406 ], [ 0, %for.body.for.inc_crit_edge407 ], [ 0, %for.body.for.inc_crit_edge408 ], [ 0, %for.body.for.inc_crit_edge409 ], [ 0, %for.body.for.inc_crit_edge410 ], [ 0, %for.body.for.inc_crit_edge411 ], [ 0, %for.body.for.inc_crit_edge412 ], [ 0, %for.body.for.inc_crit_edge413 ], [ 0, %for.body.for.inc_crit_edge414 ], [ 0, %for.body.for.inc_crit_edge415 ], [ 0, %for.body.for.inc_crit_edge416 ], [ 0, %for.body.for.inc_crit_edge417 ], [ 0, %for.body.for.inc_crit_edge418 ], [ 0, %for.body.for.inc_crit_edge419 ], [ 0, %for.body.for.inc_crit_edge420 ], [ 0, %for.body.for.inc_crit_edge421 ], [ 0, %for.body.for.inc_crit_edge422 ], [ 0, %for.body.for.inc_crit_edge423 ], [ 0, %for.body.for.inc_crit_edge424 ], [ 0, %for.body.for.inc_crit_edge425 ], [ 0, %for.body.for.inc_crit_edge426 ], [ 0, %for.body.for.inc_crit_edge427 ], [ 0, %for.body.for.inc_crit_edge428 ], [ 0, %for.body.for.inc_crit_edge429 ], [ 0, %for.body.for.inc_crit_edge430 ], [ 0, %for.body.for.inc_crit_edge431 ], [ 0, %for.body.for.inc_crit_edge432 ], [ 0, %for.body.for.inc_crit_edge433 ], [ 0, %for.body.for.inc_crit_edge434 ], [ 0, %for.body.for.inc_crit_edge435 ], [ 0, %for.body.for.inc_crit_edge436 ], [ 0, %for.body.for.inc_crit_edge437 ], [ 0, %for.body.for.inc_crit_edge438 ], [ 0, %for.body.for.inc_crit_edge439 ], [ 0, %for.body.for.inc_crit_edge440 ], [ 0, %for.body.for.inc_crit_edge441 ], [ 0, %for.body.for.inc_crit_edge442 ], [ 0, %for.body.for.inc_crit_edge443 ], [ 0, %for.body.for.inc_crit_edge444 ], [ 0, %for.body.for.inc_crit_edge445 ], [ 0, %for.body.for.inc_crit_edge446 ], [ 0, %for.body.for.inc_crit_edge447 ], [ 0, %for.body.for.inc_crit_edge448 ], [ 0, %for.body.for.inc_crit_edge449 ], [ 0, %for.body.for.inc_crit_edge450 ], [ 0, %for.body.for.inc_crit_edge451 ], [ 0, %for.body.for.inc_crit_edge452 ], [ 0, %for.body.for.inc_crit_edge453 ], [ 0, %for.body.for.inc_crit_edge454 ], [ 0, %for.body.for.inc_crit_edge455 ], [ 0, %for.body.for.inc_crit_edge456 ], [ 0, %for.body.for.inc_crit_edge457 ], [ 0, %for.body.for.inc_crit_edge458 ], [ 0, %for.body.for.inc_crit_edge459 ], [ 0, %for.body.for.inc_crit_edge460 ], [ 0, %for.body.for.inc_crit_edge461 ], [ 0, %for.body.for.inc_crit_edge462 ], [ 0, %for.body.for.inc_crit_edge463 ], [ 0, %for.body.for.inc_crit_edge464 ], [ 0, %for.body.for.inc_crit_edge465 ]
  %arrayidx = getelementptr i32, ptr %p, i32 %i.031
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, 1538
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @atl1_get_wol(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %wol) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 32, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %wolopts, align 4
  %wol1 = getelementptr i8, ptr %netdev, i32 2548
  %2 = ptrtoint ptr %wol1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wol1, align 4
  %and = shl i32 %3, 4
  %4 = and i32 %and, 32
  store i32 %4, ptr %wolopts, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1_set_wol(ptr nocapture noundef %netdev, ptr nocapture noundef readonly %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  %and = and i32 %1, 95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %wol1 = getelementptr i8, ptr %netdev, i32 2548
  %2 = ptrtoint ptr %wol1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %wol1, align 4
  %3 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wolopts, align 4
  %and3 = lshr i32 %4, 4
  %5 = and i32 %and3, 2
  store i32 %5, ptr %wol1, align 4
  %pdev = getelementptr i8, ptr %netdev, i32 2308
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool9 = icmp ne i32 %5, 0
  %call10 = tail call i32 @device_set_wakeup_enable(ptr noundef %dev, i1 noundef zeroext %tobool9) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atl1_get_msglevel(ptr nocapture noundef readonly %netdev) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 3112
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @atl1_set_msglevel(ptr nocapture noundef writeonly %netdev, i32 noundef %value) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 3112
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %msg_enable, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1_nway_reset(ptr noundef %netdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %hw1 = getelementptr i8, ptr %netdev, i32 3164
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

if.then:                                          ; preds = %entry
  tail call fastcc void @atl1_down(ptr noundef %add.ptr.i)
  %media_type = getelementptr i8, ptr %netdev, i32 3228
  %2 = ptrtoint ptr %media_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %3)
  %4 = icmp ult i16 %3, 5
  br i1 %4, label %switch.lookup, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %5 = sext i16 %3 to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.atl1_nway_reset, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end

if.end:                                           ; preds = %switch.lookup, %if.then.if.end_crit_edge
  %phy_data.0 = phi i32 [ %switch.load, %switch.lookup ], [ 12615680, %if.then.if.end_crit_edge ]
  %7 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw1, align 4
  %add.ptr.i22 = getelementptr i8, ptr %8, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %9 = tail call i32 @llvm.bswap.i32(i32 %phy_data.0) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %9) #17, !srcloc !267
  %10 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw1, align 4
  %add.ptr7.i = getelementptr i8, ptr %11, i32 5140
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %i.023.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 429496) #17
  %14 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw1, align 4
  %add.ptr10.i = getelementptr i8, ptr %15, i32 5140
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %17 = and i32 %16, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  %inc.i = add nuw nsw i32 %i.023.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 30
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %atl1_write_phy_reg.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

atl1_write_phy_reg.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %call14 = tail call fastcc i32 @atl1_up(ptr noundef %add.ptr.i)
  br label %if.end15

if.end15:                                         ; preds = %atl1_write_phy_reg.exit, %entry.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @atl1_get_ringparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %0 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2048, ptr %rx_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %1 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1024, ptr %tx_max_pending, align 4
  %count = getelementptr i8, ptr %netdev, i32 3058
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %count, align 2
  %conv = zext i16 %3 to i32
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %rx_pending, align 4
  %count1 = getelementptr i8, ptr %netdev, i32 2986
  %5 = ptrtoint ptr %count1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %count1, align 2
  %conv2 = zext i16 %6 to i32
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %7 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv2, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1_set_ringparam(ptr noundef %netdev, ptr nocapture noundef readonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  %tpd_old = alloca %struct.atl1_tpd_ring, align 4
  %tpd_new = alloca %struct.atl1_tpd_ring, align 4
  %rfd_old = alloca %struct.atl1_rfd_ring, align 4
  %rfd_new = alloca %struct.atl1_rfd_ring, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %tpd_ring = getelementptr i8, ptr %netdev, i32 2976
  %rrd_ring = getelementptr i8, ptr %netdev, i32 3072
  %rfd_ring = getelementptr i8, ptr %netdev, i32 3048
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tpd_old)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tpd_new)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rfd_old)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rfd_new)
  %0 = call ptr @memcpy(ptr %tpd_old, ptr %tpd_ring, i32 28)
  %1 = call ptr @memcpy(ptr %rfd_old, ptr %rfd_ring, i32 24)
  %2 = ptrtoint ptr %rrd_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %rrd_old.sroa.0.0.copyload = load ptr, ptr %rrd_ring, align 8
  %rrd_old.sroa.6.0.rrd_ring3.sroa_idx = getelementptr i8, ptr %netdev, i32 3076
  %3 = ptrtoint ptr %rrd_old.sroa.6.0.rrd_ring3.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %rrd_old.sroa.6.0.copyload = load i32, ptr %rrd_old.sroa.6.0.rrd_ring3.sroa_idx, align 4
  %rrd_old.sroa.7.0.rrd_ring3.sroa_idx = getelementptr i8, ptr %netdev, i32 3080
  %4 = ptrtoint ptr %rrd_old.sroa.7.0.rrd_ring3.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %rrd_old.sroa.7.0.copyload = load i32, ptr %rrd_old.sroa.7.0.rrd_ring3.sroa_idx, align 8
  %rrd_old.sroa.8.0.rrd_ring3.sroa_idx = getelementptr i8, ptr %netdev, i32 3084
  %5 = ptrtoint ptr %rrd_old.sroa.8.0.rrd_ring3.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %5)
  %rrd_old.sroa.8.0.copyload = load i16, ptr %rrd_old.sroa.8.0.rrd_ring3.sroa_idx, align 4
  %rrd_old.sroa.9.0.rrd_ring3.sroa_idx = getelementptr i8, ptr %netdev, i32 3086
  %6 = ptrtoint ptr %rrd_old.sroa.9.0.rrd_ring3.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %6)
  %rrd_old.sroa.9.0.copyload = load i16, ptr %rrd_old.sroa.9.0.rrd_ring3.sroa_idx, align 2
  %rrd_old.sroa.10.0.rrd_ring3.sroa_idx = getelementptr i8, ptr %netdev, i32 3088
  %7 = ptrtoint ptr %rrd_old.sroa.10.0.rrd_ring3.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %rrd_old.sroa.10.0.copyload = load i32, ptr %rrd_old.sroa.10.0.rrd_ring3.sroa_idx, align 8
  %ring_header = getelementptr i8, ptr %netdev, i32 2964
  %8 = ptrtoint ptr %ring_header to i32
  call void @__asan_load4_noabort(i32 %8)
  %rhdr_old.sroa.0.0.copyload = load ptr, ptr %ring_header, align 4
  %rhdr_old.sroa.6.0.ring_header.sroa_idx = getelementptr i8, ptr %netdev, i32 2968
  %9 = ptrtoint ptr %rhdr_old.sroa.6.0.ring_header.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %rhdr_old.sroa.6.0.copyload = load i32, ptr %rhdr_old.sroa.6.0.ring_header.sroa_idx, align 4
  %rhdr_old.sroa.7.0.ring_header.sroa_idx = getelementptr i8, ptr %netdev, i32 2972
  %10 = ptrtoint ptr %rhdr_old.sroa.7.0.ring_header.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %rhdr_old.sroa.7.0.copyload = load i32, ptr %rhdr_old.sroa.7.0.ring_header.sroa_idx, align 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call fastcc void @atl1_down(ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %15 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_pending, align 4
  %17 = tail call i32 @llvm.umax.i32(i32 %16, i32 128)
  %18 = trunc i32 %17 to i16
  %count = getelementptr i8, ptr %netdev, i32 3058
  %19 = tail call i16 @llvm.umin.i16(i16 %18, i16 2048)
  %add = add nuw nsw i16 %19, 3
  %and = and i16 %add, 8188
  %20 = ptrtoint ptr %count to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %and, ptr %count, align 2
  %21 = ptrtoint ptr %rrd_old.sroa.8.0.rrd_ring3.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %and, ptr %rrd_old.sroa.8.0.rrd_ring3.sroa_idx, align 4
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %22 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_pending, align 4
  %24 = tail call i32 @llvm.umax.i32(i32 %23, i32 64)
  %25 = trunc i32 %24 to i16
  %count32 = getelementptr i8, ptr %netdev, i32 2986
  %26 = tail call i16 @llvm.umin.i16(i16 %25, i16 1024)
  %add47 = add nuw nsw i16 %26, 3
  %and48 = and i16 %add47, 4092
  %27 = ptrtoint ptr %count32 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %and48, ptr %count32, align 2
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 8
  %state.i184 = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %state.i184 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %state.i184, align 4
  %and1.i.i185 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i185)
  %tobool.i186.not = icmp eq i32 %and1.i.i185, 0
  br i1 %tobool.i186.not, label %if.end.if.end77_crit_edge, label %if.then53

if.end.if.end77_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end77

if.then53:                                        ; preds = %if.end
  %call54 = tail call fastcc i32 @atl1_setup_ring_resources(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool.not = icmp eq i32 %call54, 0
  br i1 %tobool.not, label %if.end56, label %err_setup_ring

if.end56:                                         ; preds = %if.then53
  %32 = call ptr @memcpy(ptr %rfd_new, ptr %rfd_ring, i32 24)
  %33 = ptrtoint ptr %rrd_ring to i32
  call void @__asan_load4_noabort(i32 %33)
  %rrd_new.sroa.0.0.copyload = load ptr, ptr %rrd_ring, align 8
  %34 = ptrtoint ptr %rrd_old.sroa.6.0.rrd_ring3.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %34)
  %rrd_new.sroa.5.0.copyload = load i32, ptr %rrd_old.sroa.6.0.rrd_ring3.sroa_idx, align 4
  %35 = ptrtoint ptr %rrd_old.sroa.7.0.rrd_ring3.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %35)
  %rrd_new.sroa.6.0.copyload = load i32, ptr %rrd_old.sroa.7.0.rrd_ring3.sroa_idx, align 8
  %36 = ptrtoint ptr %rrd_old.sroa.8.0.rrd_ring3.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %36)
  %rrd_new.sroa.7.0.copyload = load i16, ptr %rrd_old.sroa.8.0.rrd_ring3.sroa_idx, align 4
  %37 = ptrtoint ptr %rrd_old.sroa.9.0.rrd_ring3.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %37)
  %rrd_new.sroa.8.0.copyload = load i16, ptr %rrd_old.sroa.9.0.rrd_ring3.sroa_idx, align 2
  %38 = ptrtoint ptr %rrd_old.sroa.10.0.rrd_ring3.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %38)
  %rrd_new.sroa.9.0.copyload = load i32, ptr %rrd_old.sroa.10.0.rrd_ring3.sroa_idx, align 8
  %39 = call ptr @memcpy(ptr %tpd_new, ptr %tpd_ring, i32 28)
  %40 = ptrtoint ptr %ring_header to i32
  call void @__asan_load4_noabort(i32 %40)
  %rhdr_new.sroa.0.0.copyload = load ptr, ptr %ring_header, align 4
  %41 = ptrtoint ptr %rhdr_old.sroa.6.0.ring_header.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %41)
  %rhdr_new.sroa.5.0.copyload = load i32, ptr %rhdr_old.sroa.6.0.ring_header.sroa_idx, align 4
  %42 = ptrtoint ptr %rhdr_old.sroa.7.0.ring_header.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %42)
  %rhdr_new.sroa.6.0.copyload = load i32, ptr %rhdr_old.sroa.7.0.ring_header.sroa_idx, align 4
  %43 = call ptr @memcpy(ptr %rfd_ring, ptr %rfd_old, i32 24)
  store ptr %rrd_old.sroa.0.0.copyload, ptr %rrd_ring, align 8
  store i32 %rrd_old.sroa.6.0.copyload, ptr %rrd_old.sroa.6.0.rrd_ring3.sroa_idx, align 4
  store i32 %rrd_old.sroa.7.0.copyload, ptr %rrd_old.sroa.7.0.rrd_ring3.sroa_idx, align 8
  store i16 %rrd_old.sroa.8.0.copyload, ptr %rrd_old.sroa.8.0.rrd_ring3.sroa_idx, align 4
  store i16 %rrd_old.sroa.9.0.copyload, ptr %rrd_old.sroa.9.0.rrd_ring3.sroa_idx, align 2
  store i32 %rrd_old.sroa.10.0.copyload, ptr %rrd_old.sroa.10.0.rrd_ring3.sroa_idx, align 8
  %44 = call ptr @memcpy(ptr %tpd_ring, ptr %tpd_old, i32 28)
  store ptr %rhdr_old.sroa.0.0.copyload, ptr %ring_header, align 4
  store i32 %rhdr_old.sroa.6.0.copyload, ptr %rhdr_old.sroa.6.0.ring_header.sroa_idx, align 4
  store i32 %rhdr_old.sroa.7.0.copyload, ptr %rhdr_old.sroa.7.0.ring_header.sroa_idx, align 4
  %smb65 = getelementptr i8, ptr %netdev, i32 3260
  %45 = ptrtoint ptr %smb65 to i32
  call void @__asan_load4_noabort(i32 %45)
  %smb.sroa.0.0.copyload = load ptr, ptr %smb65, align 4
  %smb.sroa.5.0.smb65.sroa_idx = getelementptr i8, ptr %netdev, i32 3264
  %46 = ptrtoint ptr %smb.sroa.5.0.smb65.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %46)
  %smb.sroa.5.0.copyload = load i32, ptr %smb.sroa.5.0.smb65.sroa_idx, align 4
  %cmb66 = getelementptr i8, ptr %netdev, i32 3268
  %47 = ptrtoint ptr %cmb66 to i32
  call void @__asan_load4_noabort(i32 %47)
  %cmb.sroa.0.0.copyload = load ptr, ptr %cmb66, align 4
  %cmb.sroa.5.0.cmb66.sroa_idx = getelementptr i8, ptr %netdev, i32 3272
  %48 = ptrtoint ptr %cmb.sroa.5.0.cmb66.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %48)
  %cmb.sroa.5.0.copyload = load i32, ptr %cmb.sroa.5.0.cmb66.sroa_idx, align 4
  %pdev1.i = getelementptr i8, ptr %netdev, i32 2308
  %49 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev1.i, align 4
  tail call fastcc void @atl1_clean_tx_ring(ptr noundef %add.ptr.i) #17
  tail call fastcc void @atl1_clean_rx_ring(ptr noundef %add.ptr.i) #17
  %buffer_info.i = getelementptr i8, ptr %netdev, i32 3000
  %51 = ptrtoint ptr %buffer_info.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buffer_info.i, align 4
  tail call void @kfree(ptr noundef %52) #17
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 44
  %53 = ptrtoint ptr %rhdr_old.sroa.7.0.ring_header.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rhdr_old.sroa.7.0.ring_header.sroa_idx, align 4
  %55 = ptrtoint ptr %ring_header to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ring_header, align 4
  %57 = ptrtoint ptr %rhdr_old.sroa.6.0.ring_header.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rhdr_old.sroa.6.0.ring_header.sroa_idx, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %54, ptr noundef %56, i32 noundef %58, i32 noundef 0) #17
  %59 = call ptr @memcpy(ptr %rfd_ring, ptr %rfd_new, i32 24)
  %60 = ptrtoint ptr %rrd_ring to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %rrd_new.sroa.0.0.copyload, ptr %rrd_ring, align 8
  %61 = ptrtoint ptr %rrd_old.sroa.6.0.rrd_ring3.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %rrd_new.sroa.5.0.copyload, ptr %rrd_old.sroa.6.0.rrd_ring3.sroa_idx, align 4
  %62 = ptrtoint ptr %rrd_old.sroa.7.0.rrd_ring3.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %rrd_new.sroa.6.0.copyload, ptr %rrd_old.sroa.7.0.rrd_ring3.sroa_idx, align 8
  %63 = ptrtoint ptr %rrd_old.sroa.8.0.rrd_ring3.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %rrd_new.sroa.7.0.copyload, ptr %rrd_old.sroa.8.0.rrd_ring3.sroa_idx, align 4
  %64 = ptrtoint ptr %rrd_old.sroa.9.0.rrd_ring3.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %rrd_new.sroa.8.0.copyload, ptr %rrd_old.sroa.9.0.rrd_ring3.sroa_idx, align 2
  %65 = ptrtoint ptr %rrd_old.sroa.10.0.rrd_ring3.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %rrd_new.sroa.9.0.copyload, ptr %rrd_old.sroa.10.0.rrd_ring3.sroa_idx, align 8
  %66 = call ptr @memcpy(ptr %tpd_ring, ptr %tpd_new, i32 28)
  %67 = ptrtoint ptr %ring_header to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %rhdr_new.sroa.0.0.copyload, ptr %ring_header, align 4
  %68 = ptrtoint ptr %rhdr_old.sroa.6.0.ring_header.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %rhdr_new.sroa.5.0.copyload, ptr %rhdr_old.sroa.6.0.ring_header.sroa_idx, align 4
  %69 = ptrtoint ptr %rhdr_old.sroa.7.0.ring_header.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %rhdr_new.sroa.6.0.copyload, ptr %rhdr_old.sroa.7.0.ring_header.sroa_idx, align 4
  %70 = ptrtoint ptr %smb65 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %smb.sroa.0.0.copyload, ptr %smb65, align 4
  %71 = ptrtoint ptr %smb.sroa.5.0.smb65.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %smb.sroa.5.0.copyload, ptr %smb.sroa.5.0.smb65.sroa_idx, align 4
  %72 = ptrtoint ptr %cmb66 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %cmb.sroa.0.0.copyload, ptr %cmb66, align 4
  %73 = ptrtoint ptr %cmb.sroa.5.0.cmb66.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %cmb.sroa.5.0.copyload, ptr %cmb.sroa.5.0.cmb66.sroa_idx, align 4
  %call73 = tail call fastcc i32 @atl1_up(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end56.if.end77_crit_edge, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end56.if.end77_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end77

if.end77:                                         ; preds = %if.end56.if.end77_crit_edge, %if.end.if.end77_crit_edge
  br label %cleanup

err_setup_ring:                                   ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #19
  %74 = call ptr @memcpy(ptr %rfd_ring, ptr %rfd_old, i32 24)
  %75 = ptrtoint ptr %rrd_ring to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %rrd_old.sroa.0.0.copyload, ptr %rrd_ring, align 8
  %76 = ptrtoint ptr %rrd_old.sroa.6.0.rrd_ring3.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %rrd_old.sroa.6.0.copyload, ptr %rrd_old.sroa.6.0.rrd_ring3.sroa_idx, align 4
  %77 = ptrtoint ptr %rrd_old.sroa.7.0.rrd_ring3.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %rrd_old.sroa.7.0.copyload, ptr %rrd_old.sroa.7.0.rrd_ring3.sroa_idx, align 8
  %78 = ptrtoint ptr %rrd_old.sroa.8.0.rrd_ring3.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %rrd_old.sroa.8.0.copyload, ptr %rrd_old.sroa.8.0.rrd_ring3.sroa_idx, align 4
  %79 = ptrtoint ptr %rrd_old.sroa.9.0.rrd_ring3.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %rrd_old.sroa.9.0.copyload, ptr %rrd_old.sroa.9.0.rrd_ring3.sroa_idx, align 2
  %80 = ptrtoint ptr %rrd_old.sroa.10.0.rrd_ring3.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %rrd_old.sroa.10.0.copyload, ptr %rrd_old.sroa.10.0.rrd_ring3.sroa_idx, align 8
  %81 = call ptr @memcpy(ptr %tpd_ring, ptr %tpd_old, i32 28)
  %82 = ptrtoint ptr %ring_header to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %rhdr_old.sroa.0.0.copyload, ptr %ring_header, align 4
  %83 = ptrtoint ptr %rhdr_old.sroa.6.0.ring_header.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %rhdr_old.sroa.6.0.copyload, ptr %rhdr_old.sroa.6.0.ring_header.sroa_idx, align 4
  %84 = ptrtoint ptr %rhdr_old.sroa.7.0.ring_header.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %rhdr_old.sroa.7.0.copyload, ptr %rhdr_old.sroa.7.0.ring_header.sroa_idx, align 4
  %call82 = tail call fastcc i32 @atl1_up(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %err_setup_ring, %if.end77, %if.end56.cleanup_crit_edge
  %retval.0 = phi i32 [ %call54, %err_setup_ring ], [ 0, %if.end77 ], [ %call73, %if.end56.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rfd_new)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rfd_old)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tpd_new)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tpd_old)
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @atl1_get_pauseparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %epause) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %media_type = getelementptr i8, ptr %netdev, i32 3228
  %0 = ptrtoint ptr %media_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %switch = icmp ult i16 %1, 2
  %spec.select = zext i1 %switch to i32
  %2 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %2, align 4
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 2
  %4 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %rx_pause, align 4
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 3
  %5 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %tx_pause, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atl1_set_pauseparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %epause) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %media_type = getelementptr i8, ptr %netdev, i32 3228
  %0 = ptrtoint ptr %media_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %switch = icmp ult i16 %1, 2
  %spec.select = zext i1 %switch to i32
  %2 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %2, align 4
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 2
  %4 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %rx_pause, align 4
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %epause, i32 0, i32 3
  %5 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %tx_pause, align 4
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1_get_strings(ptr nocapture noundef readnone %netdev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %entry.for.body_crit_edge, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %p.04 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %data, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [29 x %struct.atl1_stats], ptr @atl1_gstrings_stats, i32 0, i32 %i.05
  %0 = call ptr @memcpy(ptr %p.04, ptr %arrayidx, i32 32)
  %add.ptr = getelementptr i8, ptr %p.04, i32 32
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 29
  br i1 %exitcond.not, label %for.body.sw.epilog_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body.sw.epilog_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atl1_get_ethtool_stats(ptr nocapture noundef readonly %netdev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  br label %cond.true

cond.true:                                        ; preds = %cond.true.cond.true_crit_edge, %entry
  %i.09 = phi i32 [ 0, %entry ], [ %inc, %cond.true.cond.true_crit_edge ]
  %stat_offset = getelementptr [29 x %struct.atl1_stats], ptr @atl1_gstrings_stats, i32 0, i32 %i.09, i32 2
  %0 = ptrtoint ptr %stat_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stat_offset, align 4
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %1
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr, align 8
  %arrayidx3 = getelementptr i64, ptr %data, i32 %i.09
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %arrayidx3, align 8
  %inc = add nuw nsw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, 29
  br i1 %exitcond.not, label %for.end, label %cond.true.cond.true_crit_edge

cond.true.cond.true_crit_edge:                    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true

for.end:                                          ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atl1_get_sset_count(ptr nocapture noundef readnone %netdev, i32 noundef %sset) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  %. = select i1 %cond, i32 29, i32 -95
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1_get_link_ksettings(ptr nocapture noundef readonly %netdev, ptr noundef %cmd) #2 align 64 {
entry:
  %link_speed = alloca i16, align 2
  %link_duplex = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %media_type = getelementptr i8, ptr %netdev, i32 3228
  %0 = ptrtoint ptr %media_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %media_type, align 4
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %2 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %port, align 1
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %3 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %phy_address, align 2
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.then19, label %if.else32

if.then19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %hw1 = getelementptr i8, ptr %netdev, i32 3164
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %link_speed) #17
  %9 = ptrtoint ptr %link_speed to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %link_speed, align 2, !annotation !286
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %link_duplex) #17
  %10 = ptrtoint ptr %link_duplex to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %link_duplex, align 2, !annotation !286
  %call20 = call fastcc i32 @atl1_get_speed_and_duplex(ptr noundef %hw1, ptr noundef nonnull %link_speed, ptr noundef nonnull %link_duplex)
  %11 = ptrtoint ptr %link_speed to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %link_speed, align 2
  %conv21 = zext i16 %12 to i32
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %13 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv21, ptr %speed, align 4
  %14 = ptrtoint ptr %link_duplex to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %link_duplex, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %15)
  %cmp24 = icmp eq i16 %15, 2
  %spec.select = zext i1 %cmp24 to i8
  %16 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %spec.select, ptr %16, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %link_duplex) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %link_speed) #17
  br label %if.end37

if.else32:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %speed34 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %18 = ptrtoint ptr %speed34 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %speed34, align 4
  %duplex36 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %19 = ptrtoint ptr %duplex36 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -1, ptr %duplex36, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else32, %if.then19
  %20 = ptrtoint ptr %media_type to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %21)
  %switch77 = icmp ult i16 %21, 2
  %spec.select79 = zext i1 %switch77 to i8
  %22 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %spec.select79, ptr %22, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %switch = icmp ult i16 %1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp9 = icmp eq i16 %1, 0
  %. = select i1 %cmp9, i32 239, i32 224
  %advertising.0 = select i1 %switch, i32 %., i32 128
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef 239) #17
  %advertising55 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising55, i32 noundef %advertising.0) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1_set_link_ksettings(ptr noundef %netdev, ptr nocapture noundef readonly %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %hw1 = getelementptr i8, ptr %netdev, i32 3164
  %media_type = getelementptr i8, ptr %netdev, i32 3228
  %0 = ptrtoint ptr %media_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %media_type, align 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.then:                                          ; preds = %entry
  %msg_enable = getelementptr i8, ptr %netdev, i32 3112
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 8
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end10_crit_edge, label %do.body

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1_set_link_ksettings.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1_set_link_ksettings, %if.then9)) #17
          to label %if.end10 [label %if.then9], !srcloc !275

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %pdev = getelementptr i8, ptr %netdev, i32 2308
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atl1_set_link_ksettings.__UNIQUE_ID_ddebug489, ptr noundef %dev, ptr noundef nonnull @.str.71) #17
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %do.body, %if.then.if.end10_crit_edge
  tail call fastcc void @atl1_down(ptr noundef %add.ptr.i)
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %entry.if.end11_crit_edge
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %10 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp = icmp eq i8 %11, 1
  br i1 %cmp, label %if.end11.if.end64_crit_edge, label %if.else

if.end11.if.end64_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end64

if.else:                                          ; preds = %if.end11
  %speed16 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %12 = ptrtoint ptr %speed16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed16, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %13, label %if.else51 [
    i32 1000, label %if.then19
    i32 100, label %if.then40
  ]

if.then19:                                        ; preds = %if.else
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %15 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp22.not = icmp eq i8 %16, 1
  br i1 %cmp22.not, label %if.then19.if.end64_crit_edge, label %if.then24

if.then19.if.end64_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end64

if.then24:                                        ; preds = %if.then19
  %msg_enable25 = getelementptr i8, ptr %netdev, i32 3112
  %17 = ptrtoint ptr %msg_enable25 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_enable25, align 8
  %and26 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.then24.if.end98.thread_crit_edge, label %if.then24.if.end98.thread.sink.split_crit_edge

if.then24.if.end98.thread.sink.split_crit_edge:   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end98.thread.sink.split

if.then24.if.end98.thread_crit_edge:              ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end98.thread

if.then40:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %duplex42 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %19 = ptrtoint ptr %duplex42 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %duplex42, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp44 = icmp eq i8 %20, 1
  %. = select i1 %cmp44, i16 2, i16 3
  br label %if.end64

if.else51:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %duplex53 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %21 = ptrtoint ptr %duplex53 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %duplex53, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp55 = icmp eq i8 %22, 1
  %.228 = select i1 %cmp55, i16 4, i16 5
  br label %if.end64

if.end64:                                         ; preds = %if.else51, %if.then40, %if.then19.if.end64_crit_edge, %if.end11.if.end64_crit_edge
  %.sink = phi i16 [ 0, %if.end11.if.end64_crit_edge ], [ 1, %if.then19.if.end64_crit_edge ], [ %., %if.then40 ], [ %.228, %if.else51 ]
  %23 = ptrtoint ptr %media_type to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %.sink, ptr %media_type, align 4
  %call65 = tail call fastcc i32 @atl1_phy_setup_autoneg_adv(ptr noundef %hw1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end78, label %if.then67

if.then67:                                        ; preds = %if.end64
  %msg_enable68 = getelementptr i8, ptr %netdev, i32 3112
  %24 = ptrtoint ptr %msg_enable68 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable68, align 8
  %and69 = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.then67.if.end98.thread_crit_edge, label %if.then67.if.end98.thread.sink.split_crit_edge

if.then67.if.end98.thread.sink.split_crit_edge:   ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end98.thread.sink.split

if.then67.if.end98.thread_crit_edge:              ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end98.thread

if.end78:                                         ; preds = %if.end64
  %26 = ptrtoint ptr %media_type to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %27)
  %28 = icmp ult i16 %27, 5
  br i1 %28, label %switch.lookup, label %if.end78.if.end93_crit_edge

if.end78.if.end93_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end93

switch.lookup:                                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #19
  %29 = sext i16 %27 to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.atl1_set_link_ksettings, i32 0, i32 %29
  %30 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %30)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end93

if.end93:                                         ; preds = %switch.lookup, %if.end78.if.end93_crit_edge
  %phy_data.0 = phi i32 [ %switch.load, %switch.lookup ], [ 12615680, %if.end78.if.end93_crit_edge ]
  %31 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw1, align 4
  %add.ptr.i200 = getelementptr i8, ptr %32, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %33 = tail call i32 @llvm.bswap.i32(i32 %phy_data.0) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i200, i32 %33) #17, !srcloc !267
  %34 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw1, align 4
  %add.ptr7.i = getelementptr i8, ptr %35, i32 5140
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end93
  %i.023.i = phi i32 [ 0, %if.end93 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 429496) #17
  %38 = ptrtoint ptr %hw1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw1, align 4
  %add.ptr10.i = getelementptr i8, ptr %39, i32 5140
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %41 = and i32 %40, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i = icmp eq i32 %41, 0
  %inc.i = add nuw nsw i32 %i.023.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 30
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %if.end98, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

if.end98:                                         ; preds = %for.body.i
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i, align 8
  %state.i201 = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %state.i201 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %state.i201, align 4
  %and1.i.i202 = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i202)
  %tobool.i203.not = icmp eq i32 %and1.i.i202, 0
  br i1 %tobool.i203.not, label %if.then128, label %if.end98.if.then101_crit_edge

if.end98.if.then101_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then101

if.end98.thread.sink.split:                       ; preds = %if.then67.if.end98.thread.sink.split_crit_edge, %if.then24.if.end98.thread.sink.split_crit_edge
  %.str.72.sink = phi ptr [ @.str.72, %if.then24.if.end98.thread.sink.split_crit_edge ], [ @.str.75, %if.then67.if.end98.thread.sink.split_crit_edge ]
  %pdev32 = getelementptr i8, ptr %netdev, i32 2308
  %46 = ptrtoint ptr %pdev32 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pdev32, align 4
  %dev33 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev33, ptr noundef nonnull %.str.72.sink) #20
  br label %if.end98.thread

if.end98.thread:                                  ; preds = %if.end98.thread.sink.split, %if.then67.if.end98.thread_crit_edge, %if.then24.if.end98.thread_crit_edge
  %48 = ptrtoint ptr %media_type to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %1, ptr %media_type, align 4
  %49 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr.i, align 8
  %state.i201217 = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 6
  %51 = ptrtoint ptr %state.i201217 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %state.i201217, align 4
  %and1.i.i202218 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i202218)
  %tobool.i203219.not = icmp eq i32 %and1.i.i202218, 0
  br i1 %tobool.i203219.not, label %if.end98.thread.cleanup155_crit_edge, label %if.end98.thread.if.then101_crit_edge

if.end98.thread.if.then101_crit_edge:             ; preds = %if.end98.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then101

if.end98.thread.cleanup155_crit_edge:             ; preds = %if.end98.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup155

if.then101:                                       ; preds = %if.end98.thread.if.then101_crit_edge, %if.end98.if.then101_crit_edge
  %ret_val.2211223 = phi i32 [ -22, %if.end98.thread.if.then101_crit_edge ], [ 0, %if.end98.if.then101_crit_edge ]
  %msg_enable102 = getelementptr i8, ptr %netdev, i32 3112
  %53 = ptrtoint ptr %msg_enable102 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %msg_enable102, align 8
  %and103 = and i32 %54, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.then101.if.end124_crit_edge, label %do.body106

if.then101.if.end124_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end124

do.body106:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1_set_link_ksettings.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1_set_link_ksettings, %if.then118)) #17
          to label %if.end124 [label %if.then118], !srcloc !275

if.then118:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #19
  %pdev119 = getelementptr i8, ptr %netdev, i32 2308
  %55 = ptrtoint ptr %pdev119 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev119, align 4
  %dev120 = getelementptr inbounds %struct.pci_dev, ptr %56, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atl1_set_link_ksettings.__UNIQUE_ID_ddebug490, ptr noundef %dev120, ptr noundef nonnull @.str.77) #17
  br label %if.end124

if.end124:                                        ; preds = %if.then118, %do.body106, %if.then101.if.end124_crit_edge
  %call125 = tail call fastcc i32 @atl1_up(ptr noundef %add.ptr.i)
  br label %cleanup155

if.then128:                                       ; preds = %if.end98
  %msg_enable129 = getelementptr i8, ptr %netdev, i32 3112
  %57 = ptrtoint ptr %msg_enable129 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %msg_enable129, align 8
  %and130 = and i32 %58, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %if.then128.if.end151_crit_edge, label %do.body133

if.then128.if.end151_crit_edge:                   ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end151

do.body133:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1_set_link_ksettings.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1_set_link_ksettings, %if.then145)) #17
          to label %if.end151 [label %if.then145], !srcloc !275

if.then145:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #19
  %pdev146 = getelementptr i8, ptr %netdev, i32 2308
  %59 = ptrtoint ptr %pdev146 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev146, align 4
  %dev147 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atl1_set_link_ksettings.__UNIQUE_ID_ddebug491, ptr noundef %dev147, ptr noundef nonnull @.str.78) #17
  br label %if.end151

if.end151:                                        ; preds = %if.then145, %do.body133, %if.then128.if.end151_crit_edge
  %call.i = tail call fastcc i32 @atl1_reset_hw(ptr noundef %hw1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i204 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i204, label %if.end.i, label %if.end151.cleanup155_crit_edge

if.end151.cleanup155_crit_edge:                   ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup155

if.end.i:                                         ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #19
  %call2.i = tail call fastcc i32 @atl1_init_hw(ptr noundef %hw1) #17
  br label %cleanup155

cleanup155:                                       ; preds = %if.end.i, %if.end151.cleanup155_crit_edge, %if.end124, %if.end98.thread.cleanup155_crit_edge
  %ret_val.2211221 = phi i32 [ %ret_val.2211223, %if.end124 ], [ 0, %if.end151.cleanup155_crit_edge ], [ 0, %if.end.i ], [ -22, %if.end98.thread.cleanup155_crit_edge ]
  ret i32 %ret_val.2211221
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atl1_phy_setup_autoneg_adv(ptr nocapture noundef %hw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %media_type = getelementptr inbounds %struct.atl1_hw, ptr %hw, i32 0, i32 30
  %0 = ptrtoint ptr %media_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %1)
  %2 = icmp ult i16 %1, 5
  br i1 %2, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %3 = sext i16 %1 to i32
  %switch.gep = getelementptr inbounds [5 x i16], ptr @switch.table.atl1_phy_setup_autoneg_adv, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %4)
  %switch.load = load i16, ptr %switch.gep, align 2
  %5 = sext i16 %1 to i32
  %switch.gep80 = getelementptr inbounds [5 x i16], ptr @switch.table.atl1_phy_setup_autoneg_adv.117, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep80 to i32
  call void @__asan_load2_noabort(i32 %6)
  %switch.load81 = load i16, ptr %switch.gep80, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %mii_autoneg_adv_reg.0 = phi i16 [ %switch.load, %switch.lookup ], [ 3104, %entry.sw.epilog_crit_edge ]
  %mii_1000t_ctrl_reg.0 = phi i16 [ %switch.load81, %switch.lookup ], [ 0, %entry.sw.epilog_crit_edge ]
  %mii_autoneg_adv_reg33 = getelementptr inbounds %struct.atl1_hw, ptr %hw, i32 0, i32 32
  %7 = ptrtoint ptr %mii_autoneg_adv_reg33 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %mii_autoneg_adv_reg.0, ptr %mii_autoneg_adv_reg33, align 4
  %mii_1000t_ctrl_reg34 = getelementptr inbounds %struct.atl1_hw, ptr %hw, i32 0, i32 33
  %8 = ptrtoint ptr %mii_1000t_ctrl_reg34 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %mii_1000t_ctrl_reg.0, ptr %mii_1000t_ctrl_reg34, align 2
  %conv.i = zext i16 %mii_autoneg_adv_reg.0 to i32
  %or4.i = or i32 %conv.i, 12845056
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %11 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #17, !srcloc !267
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %add.ptr7.i = getelementptr i8, ptr %13, i32 5140
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 30
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %sw.epilog
  %i.023.i = phi i32 [ 0, %sw.epilog ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 429496) #17
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %add.ptr10.i = getelementptr i8, ptr %17, i32 5140
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %19 = and i32 %18, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %if.end, label %for.cond.i

if.end:                                           ; preds = %for.body.i
  %conv.i60 = zext i16 %mii_1000t_ctrl_reg.0 to i32
  %or4.i62 = or i32 %conv.i60, 13172736
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 4
  %add.ptr.i63 = getelementptr i8, ptr %21, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %22 = tail call i32 @llvm.bswap.i32(i32 %or4.i62) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %22) #17, !srcloc !267
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 4
  %add.ptr7.i64 = getelementptr i8, ptr %24, i32 5140
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i64) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br label %for.body.i71

for.cond.i67:                                     ; preds = %for.body.i71
  %inc.i65 = add nuw nsw i32 %i.023.i68, 1
  %exitcond.not.i66 = icmp eq i32 %inc.i65, 30
  br i1 %exitcond.not.i66, label %for.cond.i67.cleanup_crit_edge, label %for.cond.i67.for.body.i71_crit_edge

for.cond.i67.for.body.i71_crit_edge:              ; preds = %for.cond.i67
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i71

for.cond.i67.cleanup_crit_edge:                   ; preds = %for.cond.i67
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.i71:                                     ; preds = %for.cond.i67.for.body.i71_crit_edge, %if.end
  %i.023.i68 = phi i32 [ 0, %if.end ], [ %inc.i65, %for.cond.i67.for.body.i71_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 429496) #17
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 4
  %add.ptr10.i69 = getelementptr i8, ptr %28, i32 5140
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i69) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %30 = and i32 %29, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i70 = icmp eq i32 %30, 0
  br i1 %tobool.not.i70, label %for.body.i71.cleanup_crit_edge, label %for.cond.i67

for.body.i71.cleanup_crit_edge:                   ; preds = %for.body.i71
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %for.body.i71.cleanup_crit_edge, %for.cond.i67.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %for.cond.i67.cleanup_crit_edge ], [ 0, %for.body.i71.cleanup_crit_edge ], [ 2, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atl1_setup_link(ptr nocapture noundef %hw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.atl1_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 4
  %pdev1 = getelementptr inbounds %struct.atl1_adapter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  %call = tail call fastcc i32 @atl1_phy_setup_autoneg_adv(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end11, label %if.then

if.then:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.atl1_adapter, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 8
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1_setup_link.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1_setup_link, %if.then9)) #17
          to label %cleanup [label %if.then9], !srcloc !275

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atl1_setup_link.__UNIQUE_ID_ddebug486, ptr noundef %dev, ptr noundef nonnull @.str.110) #17
  br label %cleanup

if.end11:                                         ; preds = %entry
  %call12 = tail call fastcc i32 @atl1_phy_reset(ptr noundef %hw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end37, label %if.then14

if.then14:                                        ; preds = %if.end11
  %msg_enable15 = getelementptr inbounds %struct.atl1_adapter, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %msg_enable15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable15, align 8
  %and16 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.then14.cleanup_crit_edge, label %do.body19

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body19:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1_setup_link.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1_setup_link, %if.then31)) #17
          to label %cleanup [label %if.then31], !srcloc !275

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #19
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atl1_setup_link.__UNIQUE_ID_ddebug487, ptr noundef %dev32, ptr noundef nonnull @.str.111) #17
  br label %cleanup

if.end37:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  %phy_configured = getelementptr inbounds %struct.atl1_hw, ptr %hw, i32 0, i32 40
  %8 = ptrtoint ptr %phy_configured to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %phy_configured, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then31, %do.body19, %if.then14.cleanup_crit_edge, %if.then9, %do.body, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37 ], [ %call, %if.then9 ], [ %call, %if.then.cleanup_crit_edge ], [ %call12, %if.then31 ], [ %call12, %if.then14.cleanup_crit_edge ], [ %call, %do.body ], [ %call12, %do.body19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atl1_phy_reset(ptr nocapture noundef readonly %hw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %back = getelementptr inbounds %struct.atl1_hw, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %back to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back, align 4
  %pdev1 = getelementptr inbounds %struct.atl1_adapter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev1, align 4
  %media_type = getelementptr inbounds %struct.atl1_hw, ptr %hw, i32 0, i32 30
  %4 = ptrtoint ptr %media_type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %media_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %5)
  %6 = icmp ult i16 %5, 5
  br i1 %6, label %switch.lookup, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %7 = sext i16 %5 to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.atl1_phy_reset, i32 0, i32 %7
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end

if.end:                                           ; preds = %switch.lookup, %entry.if.end_crit_edge
  %phy_data.0 = phi i32 [ %switch.load, %switch.lookup ], [ 12615680, %entry.if.end_crit_edge ]
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %11 = tail call i32 @llvm.bswap.i32(i32 %phy_data.0) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #17, !srcloc !267
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %add.ptr7.i = getelementptr i8, ptr %13, i32 5140
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 30
  br i1 %exitcond.not.i, label %if.then12, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end
  %i.023.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 429496) #17
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %add.ptr10.i = getelementptr i8, ptr %17, i32 5140
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %19 = and i32 %18, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %for.body.i.cleanup45_crit_edge, label %for.cond.i

for.body.i.cleanup45_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup45

if.then12:                                        ; preds = %for.cond.i
  %msg_enable = getelementptr inbounds %struct.atl1_adapter, ptr %1, i32 0, i32 20
  %20 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable, align 8
  %and = and i32 %21, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.then12.for.body_crit_edge, label %do.body

if.then12.for.body_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

do.body:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atl1_phy_reset.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atl1_phy_reset, %if.then19)) #17
          to label %for.body [label %if.then19], !srcloc !275

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atl1_phy_reset.__UNIQUE_ID_ddebug485, ptr noundef %dev, ptr noundef nonnull @.str.113) #17
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, 25
  br i1 %exitcond.not, label %if.then32, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.then19, %do.body, %if.then12.for.body_crit_edge
  %i.064 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %do.body ], [ 0, %if.then19 ], [ 0, %if.then12.for.body_crit_edge ]
  tail call void @msleep(i32 noundef 1) #17
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 5140
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %25 = and i32 %24, 32776
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool26.not = icmp eq i32 %25, 0
  br i1 %tobool26.not, label %for.body.cleanup45_crit_edge, label %for.cond

for.body.cleanup45_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup45

if.then32:                                        ; preds = %for.cond
  %26 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msg_enable, align 8
  %and34 = and i32 %27, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.then32.cleanup45_crit_edge, label %do.end39

if.then32.cleanup45_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup45

do.end39:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #19
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev40, ptr noundef nonnull @.str.114) #20
  br label %cleanup45

cleanup45:                                        ; preds = %do.end39, %if.then32.cleanup45_crit_edge, %for.body.cleanup45_crit_edge, %for.body.i.cleanup45_crit_edge
  %retval.1 = phi i32 [ 2, %do.end39 ], [ 2, %if.then32.cleanup45_crit_edge ], [ 0, %for.body.cleanup45_crit_edge ], [ 0, %for.body.i.cleanup45_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hw2 = getelementptr i8, ptr %1, i32 3164
  %wol = getelementptr i8, ptr %1, i32 2548
  %2 = ptrtoint ptr %wol to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wol, align 4
  tail call void @netif_device_detach(ptr noundef %1) #17
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call fastcc void @atl1_down(ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw2, align 4
  %add.ptr.i129 = getelementptr i8, ptr %7, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129, i32 57600) #17, !srcloc !267
  %8 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw2, align 4
  %add.ptr5.i = getelementptr i8, ptr %9, i32 5140
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 30
  br i1 %exitcond.not.i, label %for.cond.i.atl1_read_phy_reg.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.cond.i.atl1_read_phy_reg.exit_crit_edge:      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atl1_read_phy_reg.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end
  %i.023.i = phi i32 [ 0, %if.end ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 429496) #17
  %12 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw2, align 4
  %add.ptr8.i = getelementptr i8, ptr %13, i32 5140
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #17, !srcloc !268
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %and10.i = and i32 %15, 142606336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool.not.i, label %for.body.i.atl1_read_phy_reg.exit_crit_edge, label %for.cond.i

for.body.i.atl1_read_phy_reg.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %atl1_read_phy_reg.exit

atl1_read_phy_reg.exit:                           ; preds = %for.body.i.atl1_read_phy_reg.exit_crit_edge, %for.cond.i.atl1_read_phy_reg.exit_crit_edge
  %ctrl.sroa.0.0 = phi i32 [ 0, %for.cond.i.atl1_read_phy_reg.exit_crit_edge ], [ %15, %for.body.i.atl1_read_phy_reg.exit_crit_edge ]
  %16 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw2, align 4
  %add.ptr.i130 = getelementptr i8, ptr %17, i32 5140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 57600) #17, !srcloc !267
  %18 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw2, align 4
  %add.ptr5.i131 = getelementptr i8, ptr %19, i32 5140
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i131) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br label %for.body.i139

for.cond.i134:                                    ; preds = %for.body.i139
  %inc.i132 = add nuw nsw i32 %i.023.i135, 1
  %exitcond.not.i133 = icmp eq i32 %inc.i132, 30
  br i1 %exitcond.not.i133, label %for.cond.i134.atl1_read_phy_reg.exit143_crit_edge, label %for.cond.i134.for.body.i139_crit_edge

for.cond.i134.for.body.i139_crit_edge:            ; preds = %for.cond.i134
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i139

for.cond.i134.atl1_read_phy_reg.exit143_crit_edge: ; preds = %for.cond.i134
  call void @__sanitizer_cov_trace_pc() #19
  br label %atl1_read_phy_reg.exit143

for.body.i139:                                    ; preds = %for.cond.i134.for.body.i139_crit_edge, %atl1_read_phy_reg.exit
  %i.023.i135 = phi i32 [ 0, %atl1_read_phy_reg.exit ], [ %inc.i132, %for.cond.i134.for.body.i139_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 429496) #17
  %22 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw2, align 4
  %add.ptr8.i136 = getelementptr i8, ptr %23, i32 5140
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i136) #17, !srcloc !268
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %and10.i137 = and i32 %25, 142606336
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i137)
  %tobool.not.i138 = icmp eq i32 %and10.i137, 0
  br i1 %tobool.not.i138, label %for.body.i139.atl1_read_phy_reg.exit143_crit_edge, label %for.cond.i134

for.body.i139.atl1_read_phy_reg.exit143_crit_edge: ; preds = %for.body.i139
  call void @__sanitizer_cov_trace_pc() #19
  br label %atl1_read_phy_reg.exit143

atl1_read_phy_reg.exit143:                        ; preds = %for.body.i139.atl1_read_phy_reg.exit143_crit_edge, %for.cond.i134.atl1_read_phy_reg.exit143_crit_edge
  %ctrl.sroa.0.1 = phi i32 [ %ctrl.sroa.0.0, %for.cond.i134.atl1_read_phy_reg.exit143_crit_edge ], [ %25, %for.body.i139.atl1_read_phy_reg.exit143_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool9.not = icmp eq i32 %3, 0
  br i1 %tobool9.not, label %disable_wol, label %if.else

if.else:                                          ; preds = %atl1_read_phy_reg.exit143
  call void @__sanitizer_cov_trace_pc() #19
  %ctrl.sroa.0.0.insert.ext = shl i32 %ctrl.sroa.0.1, 16
  %or61 = or i32 %ctrl.sroa.0.0.insert.ext, 48
  %26 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw2, align 4
  %add.ptr63 = getelementptr i8, ptr %27, i32 5280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  %28 = tail call i32 @llvm.bswap.i32(i32 %or61) #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %28) #17, !srcloc !267
  %29 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw2, align 4
  %add.ptr65 = getelementptr i8, ptr %30, i32 5280
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %32 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw2, align 4
  %add.ptr68 = getelementptr i8, ptr %33, i32 5248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 0) #17, !srcloc !267
  %34 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw2, align 4
  %add.ptr70 = getelementptr i8, ptr %35, i32 5248
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br label %cleanup

disable_wol:                                      ; preds = %atl1_read_phy_reg.exit143
  call void @__sanitizer_cov_trace_pc() #19
  %37 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw2, align 4
  %add.ptr74 = getelementptr i8, ptr %38, i32 5280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 0) #17, !srcloc !267
  %39 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw2, align 4
  %add.ptr76 = getelementptr i8, ptr %40, i32 5280
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %42 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw2, align 4
  %add.ptr79 = getelementptr i8, ptr %43, i32 4096
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  %45 = or i32 %44, 67108864
  %46 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw2, align 4
  %add.ptr83 = getelementptr i8, ptr %47, i32 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 %45) #17, !srcloc !267
  %48 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw2, align 4
  %add.ptr85 = getelementptr i8, ptr %49, i32 4096
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr85) #17, !srcloc !268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !269
  br label %cleanup

cleanup:                                          ; preds = %disable_wol, %if.else
  %51 = getelementptr i8, ptr %1, i32 3259
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %51, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_wake_from_d3(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atl1_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hw = getelementptr i8, ptr %1, i32 3164
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 5280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #17, !srcloc !266
  tail call void @arm_heavy_mb() #17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #17, !srcloc !267
  %call3 = tail call fastcc i32 @atl1_reset_hw(ptr noundef %hw)
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %cmb = getelementptr i8, ptr %1, i32 3268
  %6 = ptrtoint ptr %cmb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cmb, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %7, align 4
  %call6 = tail call fastcc i32 @atl1_up(ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @netif_device_attach(ptr noundef %1) #17
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

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
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 132)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind readnone }
attributes #22 = { nounwind readonly willreturn }
attributes #23 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !21, !22, !24, !26, !27, !29, !30, !32, !34, !36, !38, !39, !40, !41, !42, !43, !44, !46, !47, !49, !50, !52, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !70, !72, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !155, !157, !159, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !177, !178, !180, !181, !183, !184, !186, !187, !188, !190, !191, !192, !193, !194, !196, !197, !198, !200, !202, !204, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !225, !227, !229, !231, !233, !234, !235, !237, !238, !240, !241, !242, !244, !245, !246, !248, !249, !250, !251}
!llvm.module.flags = !{!253, !254, !255, !256, !257, !258, !259, !260}
!llvm.ident = !{!261}

!0 = !{ptr @__UNIQUE_ID_description476, !1, !"__UNIQUE_ID_description476", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.h", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_author477, !3, !"__UNIQUE_ID_author477", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 68, i32 1}
!4 = !{ptr @__UNIQUE_ID_file478, !5, !"__UNIQUE_ID_file478", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 71, i32 1}
!6 = !{ptr @__UNIQUE_ID_license479, !5, !"__UNIQUE_ID_license479", i1 false, i1 false}
!7 = !{ptr @__param_int_mod_timer, !8, !"__param_int_mod_timer", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 99, i32 1}
!9 = !{ptr @__UNIQUE_ID_int_mod_timertype480, !8, !"__UNIQUE_ID_int_mod_timertype480", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_int_mod_timer481, !11, !"__UNIQUE_ID_int_mod_timer481", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 101, i32 1}
!12 = !{ptr @__param_debug, !13, !"__param_debug", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 230, i32 1}
!14 = !{ptr @__UNIQUE_ID_debugtype482, !13, !"__UNIQUE_ID_debugtype482", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_debug483, !16, !"__UNIQUE_ID_debug483", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 231, i32 1}
!17 = !{ptr @__initcall__kmod_atl1__496_3649_atl1_driver_init6, !18, !"__initcall__kmod_atl1__496_3649_atl1_driver_init6", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 3649, i32 1}
!19 = !{ptr @__exitcall_atl1_driver_exit, !18, !"__exitcall_atl1_driver_exit", i1 false, i1 false}
!20 = !{ptr @__param_str_int_mod_timer, !8, !"__param_str_int_mod_timer", i1 false, i1 false}
!21 = !{ptr @__param_arr_int_mod_timer, !8, !"__param_arr_int_mod_timer", i1 false, i1 false}
!22 = !{ptr @num_int_mod_timer, !23, !"num_int_mod_timer", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 98, i32 21}
!24 = !{ptr @int_mod_timer, !25, !"int_mod_timer", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 97, i32 12}
!26 = !{ptr @__param_str_debug, !13, !"__param_str_debug", i1 false, i1 false}
!27 = !{ptr @debug, !28, !"debug", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 229, i32 12}
!29 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @atl1_driver, !31, !"atl1_driver", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 3116, i32 26}
!32 = !{ptr @atl1_pci_tbl, !33, !"atl1_pci_tbl", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 219, i32 35}
!34 = !{ptr @atl1_probe.cards_found, !35, !"cards_found", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 2910, i32 13}
!36 = !{ptr @.str.1, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 2929, i32 3}
!38 = !{ptr @.str.2, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.3, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @atl1_probe._entry, !37, !"_entry", i1 false, i1 false}
!43 = !{ptr @atl1_probe._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @atl1_probe.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 3050, i32 2}
!46 = !{ptr @.str.6, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @atl1_probe.__key.7, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 3053, i32 2}
!49 = !{ptr @.str.8, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @atl1_probe.__key.9, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 3055, i32 2}
!52 = !{ptr @.str.10, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @atl1_netdev_ops, !54, !"atl1_netdev_ops", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 2878, i32 36}
!55 = !{ptr @.str.11, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 1033, i32 4}
!57 = !{ptr @.str.12, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @atl1_setup_ring_resources._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @atl1_setup_ring_resources._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 1057, i32 4}
!62 = !{ptr @atl1_setup_ring_resources._entry.13, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @atl1_setup_ring_resources._entry_ptr.15, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 2615, i32 4}
!66 = !{ptr @.str.17, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @atl1_up._entry, !65, !"_entry", i1 false, i1 false}
!69 = !{ptr @atl1_up._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 2503, i32 4}
!72 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @atl1_intr._entry, !71, !"_entry", i1 false, i1 false}
!75 = !{ptr @atl1_intr._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.23, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 2515, i32 4}
!78 = !{ptr @atl1_intr._entry.22, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @atl1_intr._entry_ptr.24, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 2540, i32 4}
!82 = !{ptr @atl1_intr._entry.25, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @atl1_intr._entry_ptr.27, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/atheros/atlx/atlx.c", i32 95, i32 4}
!86 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @atl1_check_for_link._entry, !85, !"_entry", i1 false, i1 false}
!89 = !{ptr @atl1_check_for_link._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 1294, i32 5}
!92 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @atl1_check_link._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @atl1_check_link._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 1337, i32 5}
!97 = !{ptr @atl1_check_link._entry.33, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @atl1_check_link._entry_ptr.35, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 892, i32 4}
!103 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @atl1_get_speed_and_duplex.__UNIQUE_ID_ddebug488, !102, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 2388, i32 4}
!107 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @atl1_xmit_frame._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @atl1_xmit_frame._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = distinct !{null, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 2169, i32 5}
!114 = !{ptr @.str.44, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @atl1_tx_csum._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @atl1_tx_csum._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 1924, i32 5}
!119 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @atl1_intr_rx._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @atl1_intr_rx._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.48, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 1926, i32 5}
!124 = !{ptr @atl1_intr_rx._entry.47, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @atl1_intr_rx._entry_ptr.49, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 1929, i32 5}
!128 = !{ptr @atl1_intr_rx._entry.50, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @atl1_intr_rx._entry_ptr.52, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 1932, i32 5}
!132 = !{ptr @atl1_intr_rx._entry.53, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @atl1_intr_rx._entry_ptr.55, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 1935, i32 5}
!136 = !{ptr @atl1_intr_rx._entry.56, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @atl1_intr_rx._entry_ptr.58, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.60, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 1938, i32 5}
!140 = !{ptr @atl1_intr_rx._entry.59, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @atl1_intr_rx._entry_ptr.61, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.63, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 1941, i32 5}
!144 = !{ptr @atl1_intr_rx._entry.62, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @atl1_intr_rx._entry_ptr.64, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.66, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 1954, i32 5}
!148 = !{ptr @atl1_intr_rx._entry.65, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @atl1_intr_rx._entry_ptr.67, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.68, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 1806, i32 5}
!152 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @atl1_rx_checksum._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @atl1_rx_checksum._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @atl1_ethtool_ops, !156, !"atl1_ethtool_ops", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 3628, i32 33}
!157 = !{ptr @atl1_gstrings_stats, !158, !"atl1_gstrings_stats", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 3134, i32 26}
!159 = !{ptr @.str.70, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 3259, i32 4}
!161 = !{ptr @.str.71, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @atl1_set_link_ksettings.__UNIQUE_ID_ddebug489, !160, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!163 = !{ptr @.str.72, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 3271, i32 6}
!165 = !{ptr @.str.73, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @atl1_set_link_ksettings._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @atl1_set_link_ksettings._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.75, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 3293, i32 4}
!170 = !{ptr @atl1_set_link_ksettings._entry.74, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @atl1_set_link_ksettings._entry_ptr.76, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.77, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 3327, i32 4}
!174 = !{ptr @atl1_set_link_ksettings.__UNIQUE_ID_ddebug490, !173, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!175 = !{ptr @.str.78, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 3332, i32 4}
!177 = !{ptr @atl1_set_link_ksettings.__UNIQUE_ID_ddebug491, !176, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!178 = !{ptr @atl1_sw_init.__key, !179, !"__key", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 973, i32 2}
!180 = !{ptr @.str.79, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @atl1_sw_init.__key.80, !182, !"__key", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 974, i32 2}
!183 = !{ptr @.str.81, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.82, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 282, i32 4}
!186 = !{ptr @.str.83, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @atl1_reset_hw.__UNIQUE_ID_ddebug484, !185, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!188 = !{ptr @.str.84, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 193, i32 3}
!190 = !{ptr @.str.85, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.86, !189, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @atl1_check_options._entry, !189, !"_entry", i1 false, i1 false}
!193 = !{ptr @atl1_check_options._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.88, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 194, i32 3}
!196 = !{ptr @atl1_check_options._entry.87, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @atl1_check_options._entry_ptr.89, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.90, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 199, i32 12}
!200 = !{ptr @.str.91, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 200, i32 11}
!202 = !{ptr @.str.92, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 139, i32 4}
!204 = !{ptr @.str.93, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @atl1_validate_option._entry, !203, !"_entry", i1 false, i1 false}
!206 = !{ptr @atl1_validate_option._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.95, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 142, i32 4}
!209 = !{ptr @atl1_validate_option._entry.94, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @atl1_validate_option._entry_ptr.96, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.98, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 148, i32 4}
!213 = !{ptr @atl1_validate_option._entry.97, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @atl1_validate_option._entry_ptr.99, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.101, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 161, i32 7}
!217 = !{ptr @atl1_validate_option._entry.100, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @atl1_validate_option._entry_ptr.102, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.104, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 173, i32 2}
!221 = !{ptr @atl1_validate_option._entry.103, !220, !"_entry", i1 false, i1 false}
!222 = !{ptr @atl1_validate_option._entry_ptr.105, !220, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.106, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/ethernet/atheros/atlx/atlx.c", i32 37, i32 3}
!225 = !{ptr @.str.107, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/atheros/atlx/atlx.c", i32 38, i32 3}
!227 = !{ptr @.str.108, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/ethernet/atheros/atlx/atlx.c", i32 39, i32 3}
!229 = !{ptr @flash_table, !230, !"flash_table", i1 false, i1 false}
!230 = !{!"../drivers/net/ethernet/atheros/atlx/atlx.c", i32 35, i32 34}
!231 = !{ptr @.str.109, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 785, i32 4}
!233 = !{ptr @.str.110, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @atl1_setup_link.__UNIQUE_ID_ddebug486, !232, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!235 = !{ptr @.str.111, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 793, i32 4}
!237 = !{ptr @atl1_setup_link.__UNIQUE_ID_ddebug487, !236, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!238 = !{ptr @.str.112, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 670, i32 4}
!240 = !{ptr @.str.113, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @atl1_phy_reset.__UNIQUE_ID_ddebug485, !239, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!242 = !{ptr @.str.114, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 681, i32 5}
!244 = !{ptr @atl1_phy_reset._entry, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @atl1_phy_reset._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.115, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 2781, i32 5}
!248 = !{ptr @.str.116, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @atl1_suspend._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @atl1_suspend._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @atl1_pm_ops, !252, !"atl1_pm_ops", i1 false, i1 false}
!252 = !{!"../drivers/net/ethernet/atheros/atlx/atl1.c", i32 2855, i32 8}
!253 = !{i32 1, !"wchar_size", i32 2}
!254 = !{i32 1, !"min_enum_size", i32 4}
!255 = !{i32 8, !"branch-target-enforcement", i32 0}
!256 = !{i32 8, !"sign-return-address", i32 0}
!257 = !{i32 8, !"sign-return-address-all", i32 0}
!258 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!259 = !{i32 7, !"uwtable", i32 1}
!260 = !{i32 7, !"frame-pointer", i32 2}
!261 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!262 = !{i64 6328667}
!263 = !{i64 2153869242}
!264 = !{i64 2153870659}
!265 = !{i64 6328467}
!266 = !{i64 2153871209}
!267 = !{i64 6329087}
!268 = !{i64 6329505}
!269 = !{i64 2153869854}
!270 = !{!"branch_weights", i32 1, i32 2000}
!271 = !{!"branch_weights", i32 2000, i32 1}
!272 = !{i8 0, i8 2}
!273 = !{i64 2157770882}
!274 = !{i64 2157770724}
!275 = !{i64 2148861291, i64 2148861296, i64 2148861309, i64 2148861353, i64 2148861387, i64 2148861408}
!276 = !{i64 2153870235}
!277 = !{i64 6328890}
!278 = !{i64 6971872, i64 6971913, i64 6971958}
!279 = !{i64 6970770}
!280 = !{i64 2157822074, i64 2157822580, i64 2157822111, i64 2157822167, i64 2157822201, i64 2157822225, i64 2157822266, i64 2157822287, i64 2157822315, i64 2157822349}
!281 = !{i64 2157825943, i64 2157826449, i64 2157825980, i64 2157826036, i64 2157826070, i64 2157826094, i64 2157826135, i64 2157826156, i64 2157826184, i64 2157826218}
!282 = distinct !{!282, !283}
!283 = !{!"llvm.loop.peeled.count", i32 1}
!284 = !{i64 2157827830}
!285 = !{i64 2157805708}
!286 = !{!"auto-init"}
