; ModuleID = '/llk/IR_all_yes/drivers/net/fddi/skfp/skfddi.c_pt.bc'
source_filename = "../drivers/net/fddi/skfp/skfddi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.22 }
%union.anon.22 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.s_smt_os = type { ptr, ptr, i32, [4 x i8], %struct.pci_dev, i32, [8 x i8], i32, i32, ptr, i32, i32, %struct.sk_buff_head, i32, i8, %struct.fddi_statistics, ptr, i32, i32, %struct.hw_modul, %struct.spinlock, [4 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.114, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.114 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.fddi_statistics = type { %struct.net_device_stats, [8 x i8], i32, i32, i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i32, i32, i32, [6 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [6 x i8], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hw_modul = type { %struct.s_mbuf_pool, %struct.hwm_r, ptr, i16, i16, i16, i16, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.s_mbuf_pool = type { ptr, ptr }
%struct.hwm_r = type { i32, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.s_smc = type { %struct.s_smt_os, %struct.s_smt_hw, %struct.smt_config, %struct.smt_values, %struct.s_ecm, %struct.s_rmt, %struct.s_cfm, %struct.s_pcm, [2 x %struct.s_phy], %struct.s_queue, %struct.s_timer, %struct.s_srf, [14 x %struct.s_srf_evc], %struct.fddi_mib, %struct.s_ess }
%struct.s_smt_hw = type { ptr, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i8, %struct.fddi_addr, %struct.fddi_addr, %struct.fddi_addr, %struct.mac_parameter, %struct.mac_counter, i16, %struct.s_smt_fp }
%struct.fddi_addr = type { [6 x i8] }
%struct.mac_parameter = type { i32, i32 }
%struct.mac_counter = type { i32, i32 }
%struct.s_smt_fp = type { i16, i16, i16, i16, i16, i16, i16, %struct.err_st, %struct.fddi_mac_sf, [2 x ptr], [2 x ptr], [2 x %struct.s_smt_tx_queue], [2 x %struct.s_smt_rx_queue], %struct.s_smt_fifo_conf, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.115, %struct.fddi_addr, i32, i32, i32 }
%struct.err_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fddi_mac_sf = type { i8, %struct.fddi_addr, %struct.fddi_addr, [32 x i8] }
%struct.s_smt_tx_queue = type { ptr, ptr, ptr, i16, i16, ptr, ptr }
%struct.s_smt_rx_queue = type { ptr, ptr, ptr, i16, i16, ptr, ptr }
%struct.s_smt_fifo_conf = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.anon.115 = type { [32 x %struct.s_fpmc] }
%struct.s_fpmc = type { %struct.fddi_addr, i8, i8 }
%struct.smt_config = type { i8, i8, i8, i8, [1 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.smt_values = type { i32, i32, i32, [5 x i32], i32, i16, i16, i32, i32, %struct.smt_timer, [1 x i32] }
%struct.smt_timer = type { ptr, ptr, i32, i32, i16, i16 }
%struct.s_ecm = type { i8, i8, i8, i8, i32, [2 x i8], %struct.smt_timer }
%struct.s_rmt = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.smt_timer, %struct.smt_timer, %struct.smt_timer, i8, i8, i8, i8 }
%struct.s_cfm = type { i8, [3 x i8] }
%struct.s_pcm = type { [3 x i8] }
%struct.s_phy = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], [10 x i8], [10 x i32], %struct.smt_timer, %struct.smt_timer, %struct.smt_timer, i8, i8, i8, [1 x i8], i32, %struct.lem_counter, %struct.s_plc }
%struct.lem_counter = type { i16, i32, i16 }
%struct.s_plc = type { i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.s_queue = type { [64 x %struct.event_queue], ptr, ptr }
%struct.event_queue = type { i16, i16 }
%struct.s_timer = type { ptr, %struct.smt_timer }
%struct.s_srf = type { i32, i8, i8, i8, i32, i16 }
%struct.s_srf_evc = type { i8, i8, i8, i16, ptr, ptr }
%struct.fddi_mib = type { [8 x i8], %struct.smt_sid, i32, i32, i32, i32, i32, i16, %struct.smt_sid, i16, i16, i16, [32 x i8], [32 x i8], i16, i8, i8, i8, i8, i16, i16, i16, i16, i8, i32, [2 x i16], i16, i8, i16, i16, i16, i8, i8, [8 x i8], [8 x i8], %struct.SetCountType, %struct.smt_sid, [1 x %struct.fddi_mib_m], [2 x %struct.fddi_mib_a], [2 x %struct.fddi_mib_p], %struct.anon.117 }
%struct.SetCountType = type { i32, [8 x i8] }
%struct.smt_sid = type { [2 x i8], %struct.fddi_addr }
%struct.fddi_mib_m = type { i16, i32, i32, i8, i8, i8, i8, i16, %struct.fddi_addr, %struct.fddi_addr, %struct.fddi_addr, %struct.fddi_addr, i16, i16, i16, i16, %struct.fddi_addr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.fddi_mib_a = type { i16, i32, i32, i32, i32, i32, i32, i32 }
%struct.fddi_mib_p = type { i16, i16, i8, %struct.anon.116, i16, [4 x i8], i16, i8, i8, i16, i16, i16, i16, i8, i32, i32, i32, i32, i32, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8 }
%struct.anon.116 = type { i8, i8 }
%struct.anon.117 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.s_ess = type { i8, i8, i8, i8, ptr, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.page = type { i32, %union.anon.26, %union.anon.100, %struct.atomic_t, i32 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.100 = type { %struct.atomic_t }
%struct.s_smt_fp_txd = type { i32, i32, i32, i32, ptr, ptr, %struct.s_txd_os }
%struct.s_txd_os = type { ptr, i32 }
%struct.s_smt_fp_rxd = type { i32, i32, i32, i32, ptr, ptr, %struct.s_rxd_os }
%struct.s_rxd_os = type { ptr, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.s_skfp_ioctl = type { i16, i16, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }

@__UNIQUE_ID_file341 = internal constant [37 x i8] c"skfp.file=drivers/net/fddi/skfp/skfp\00", section ".modinfo", align 1
@__UNIQUE_ID_license342 = internal constant [17 x i8] c"skfp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author343 = internal constant [51 x i8] c"skfp.author=Mirko Lindner <mlindner@syskonnect.de>\00", section ".modinfo", align 1
@llc_restart_tx.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"skfp\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"llc_restart_tx\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/fddi/skfp/skfddi.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"[llc_restart_tx]\0A\00", [46 x i8] zeroinitializer }, align 32
@mac_drv_get_space.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 1, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mac_drv_get_space\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mac_drv_get_space (%d bytes), \00", [33 x i8] zeroinitializer }, align 32
@mac_drv_get_space._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 1316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unexpected SMT memory size requested: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@mac_drv_get_space._entry_ptr = internal global ptr @mac_drv_get_space._entry, section ".printk_index", align 4
@mac_drv_get_space.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.7, i8 1, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mac_drv_get_space end\0A\00", [41 x i8] zeroinitializer }, align 32
@mac_drv_get_space.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.8, i8 1, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"virt addr: %lx\0A\00", [16 x i8] zeroinitializer }, align 32
@mac_drv_get_space.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.9, i8 1, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bus  addr: %lx\0A\00", [16 x i8] zeroinitializer }, align 32
@mac_drv_get_desc_mem.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 1, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mac_drv_get_desc_mem\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mac_drv_get_desc_mem\0A\00", [42 x i8] zeroinitializer }, align 32
@mac_drv_get_desc_mem.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.12, i8 1, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Allocate %u bytes alignment gap \00", [63 x i8] zeroinitializer }, align 32
@mac_drv_get_desc_mem.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.13, i8 1, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"for descriptor memory.\0A\00", [40 x i8] zeroinitializer }, align 32
@mac_drv_get_desc_mem._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.2, i32 1366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"fddi: Unable to align descriptor memory.\0A\00", [54 x i8] zeroinitializer }, align 32
@mac_drv_get_desc_mem._entry_ptr = internal global ptr @mac_drv_get_desc_mem._entry, section ".printk_index", align 4
@mac_drv_tx_complete.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 1, i8 118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mac_drv_tx_complete\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"entering mac_drv_tx_complete\0A\00", [34 x i8] zeroinitializer }, align 32
@mac_drv_tx_complete.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.17, i8 1, i8 119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TXD with no skb assigned.\0A\00", [37 x i8] zeroinitializer }, align 32
@mac_drv_tx_complete.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.18, i8 1, i8 123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"leaving mac_drv_tx_complete\0A\00", [35 x i8] zeroinitializer }, align 32
@mac_drv_rx_complete.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 1, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mac_drv_rx_complete\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"entering mac_drv_rx_complete (len=%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@mac_drv_rx_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 1574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fddi: Multi-fragment receive!\0A\00", [33 x i8] zeroinitializer }, align 32
@mac_drv_rx_complete._entry_ptr = internal global ptr @mac_drv_rx_complete._entry, section ".printk_index", align 4
@mac_drv_rx_complete.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.22, i8 1, i8 -117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"No skb in rxd\0A\00", [17 x i8] zeroinitializer }, align 32
@mac_drv_rx_complete.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.23, i8 1, i8 -110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RIF found\0A\00", [21 x i8] zeroinitializer }, align 32
@mac_drv_rx_complete._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.19, ptr @.str.2, i32 1617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fddi: Invalid RIF.\0A\00", [44 x i8] zeroinitializer }, align 32
@mac_drv_rx_complete._entry_ptr.26 = internal global ptr @mac_drv_rx_complete._entry.24, section ".printk_index", align 4
@mac_drv_rx_complete.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.27, i8 1, i8 -99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Rx: re-queue RXD.\0A\00", [45 x i8] zeroinitializer }, align 32
@mac_drv_requeue_rxd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 1693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fddi: Multi-fragment requeue!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mac_drv_requeue_rxd\00", [44 x i8] zeroinitializer }, align 32
@mac_drv_requeue_rxd._entry_ptr = internal global ptr @mac_drv_requeue_rxd._entry, section ".printk_index", align 4
@mac_drv_requeue_rxd.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 1, i8 -86, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Requeue with no skb in rxd!\0A\00", [35 x i8] zeroinitializer }, align 32
@mac_drv_requeue_rxd.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.31, i8 1, i8 -83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Queueing invalid buffer!\0A\00", [38 x i8] zeroinitializer }, align 32
@mac_drv_fill_rxd.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 1, i8 -72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mac_drv_fill_rxd\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"entering mac_drv_fill_rxd\0A\00", [37 x i8] zeroinitializer }, align 32
@mac_drv_fill_rxd.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.34, i8 1, i8 -70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c".\0A\00", [29 x i8] zeroinitializer }, align 32
@mac_drv_fill_rxd.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.31, i8 1, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mac_drv_fill_rxd.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.35, i8 1, i8 -62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"leaving mac_drv_fill_rxd\0A\00", [38 x i8] zeroinitializer }, align 32
@mac_drv_clear_rxd.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 1, i8 -56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mac_drv_clear_rxd\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"entering mac_drv_clear_rxd\0A\00", [36 x i8] zeroinitializer }, align 32
@mac_drv_clear_rxd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 1830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fddi: Multi-fragment clear!\0A\00", [35 x i8] zeroinitializer }, align 32
@mac_drv_clear_rxd._entry_ptr = internal global ptr @mac_drv_clear_rxd._entry, section ".printk_index", align 4
@mac_drv_rx_init.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 1, i8 -42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mac_drv_rx_init\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"entering mac_drv_rx_init(len=%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@mac_drv_rx_init.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.41, i8 1, i8 -40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"fddi: Discard invalid local SMT frame\0A\00", [57 x i8] zeroinitializer }, align 32
@mac_drv_rx_init.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.42, i8 1, i8 -40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"  len=%d, la_len=%d, (ULONG) look_ahead=%08lXh.\0A\00", [47 x i8] zeroinitializer }, align 32
@mac_drv_rx_init.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.43, i8 1, i8 -39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"fddi: Local SMT: skb memory exhausted.\0A\00", [56 x i8] zeroinitializer }, align 32
@ring_status_indication.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 1, i8 -26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ring_status_indication\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ring_status_indication( \00", [39 x i8] zeroinitializer }, align 32
@ring_status_indication.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.46, i8 1, i8 -26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RS_RES15 \00", [22 x i8] zeroinitializer }, align 32
@ring_status_indication.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.47, i8 1, i8 -25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RS_HARDERROR \00", [18 x i8] zeroinitializer }, align 32
@ring_status_indication.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.48, i8 1, i8 -25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RS_SOFTERROR \00", [18 x i8] zeroinitializer }, align 32
@ring_status_indication.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.49, i8 1, i8 -24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RS_BEACON \00", [21 x i8] zeroinitializer }, align 32
@ring_status_indication.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.50, i8 1, i8 -24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RS_PATHTEST \00", [19 x i8] zeroinitializer }, align 32
@ring_status_indication.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.51, i8 1, i8 -23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RS_SELFTEST \00", [19 x i8] zeroinitializer }, align 32
@ring_status_indication.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.52, i8 1, i8 -23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RS_RES9 \00", [23 x i8] zeroinitializer }, align 32
@ring_status_indication.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.53, i8 1, i8 -22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RS_DISCONNECT \00", [17 x i8] zeroinitializer }, align 32
@ring_status_indication.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.54, i8 1, i8 -22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RS_RES7 \00", [23 x i8] zeroinitializer }, align 32
@ring_status_indication.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.55, i8 1, i8 -21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RS_DUPADDR \00", [20 x i8] zeroinitializer }, align 32
@ring_status_indication.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.56, i8 1, i8 -21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RS_NORINGOP \00", [19 x i8] zeroinitializer }, align 32
@ring_status_indication.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.57, i8 1, i8 -20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RS_VERSION \00", [20 x i8] zeroinitializer }, align 32
@ring_status_indication.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.58, i8 1, i8 -20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RS_STUCKBYPASSS \00", [47 x i8] zeroinitializer }, align 32
@ring_status_indication.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.59, i8 1, i8 -19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RS_EVENT \00", [22 x i8] zeroinitializer }, align 32
@ring_status_indication.__UNIQUE_ID_ddebug405 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.60, i8 1, i8 -19, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RS_RINGOPCHANGE \00", [47 x i8] zeroinitializer }, align 32
@ring_status_indication.__UNIQUE_ID_ddebug406 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.61, i8 1, i8 -18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RS_RES0 \00", [23 x i8] zeroinitializer }, align 32
@ring_status_indication.__UNIQUE_ID_ddebug407 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.62, i8 1, i8 -18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"]\0A\00", [29 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@smt_stat_counter.__UNIQUE_ID_ddebug408 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 1, i8 -7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"smt_stat_counter\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"smt_stat_counter\0A\00", [46 x i8] zeroinitializer }, align 32
@smt_stat_counter.__UNIQUE_ID_ddebug409 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.65, i8 1, i8 -6, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Ring operational change.\0A\00", [38 x i8] zeroinitializer }, align 32
@smt_stat_counter.__UNIQUE_ID_ddebug410 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.66, i8 1, i8 -6, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Receive fifo overflow.\0A\00", [40 x i8] zeroinitializer }, align 32
@smt_stat_counter.__UNIQUE_ID_ddebug411 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.67, i8 1, i8 -5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unknown status (%d).\0A\00", [42 x i8] zeroinitializer }, align 32
@drv_reset_indication.__UNIQUE_ID_ddebug412 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.69, i8 2, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drv_reset_indication\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"entering drv_reset_indication\0A\00", [33 x i8] zeroinitializer }, align 32
@__initcall__kmod_skfp__413_2233_skfddi_pci_driver_init6 = internal global ptr @skfddi_pci_driver_init, section ".initcall6.init", align 4
@skfddi_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.78, ptr @skfddi_pci_tbl, ptr @skfp_init_one, ptr @skfp_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_skfddi_pci_driver_exit = internal global ptr @skfddi_pci_driver_exit, section ".exitcall.exit", align 4
@send_queued_packets.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.71, i8 1, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"send_queued_packets\00", [44 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"send queued packets\0A\00", [43 x i8] zeroinitializer }, align 32
@send_queued_packets.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.72, i8 1, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"queue empty\0A\00", [19 x i8] zeroinitializer }, align 32
@send_queued_packets.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.73, i8 1, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Tx attempt while ring down.\0A\00", [35 x i8] zeroinitializer }, align 32
@send_queued_packets.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.74, i8 1, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: out of TXDs.\0A\00", [46 x i8] zeroinitializer }, align 32
@send_queued_packets.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.2, ptr @.str.75, i8 1, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: out of transmit resources\00", [34 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.76 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"skfddi\00", [25 x i8] zeroinitializer }, align 32
@skfddi_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4424, i32 16384, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@skfp_init_one.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.2, ptr @.str.80, i8 0, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"skfp_init_one\00", [18 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"entering skfp_init_one\0A\00", [40 x i8] zeroinitializer }, align 32
@num_boards = internal global { i32, [28 x i8] } zeroinitializer, align 32
@skfp_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@skfp_init_one._entry_ptr = internal global ptr @skfp_init_one._entry, section ".printk_index", align 4
@.str.82 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"SysKonnect FDDI PCI Adapter driver v2.07 for\0A  SK-55xx/SK-58xx adapters (SK-NET FDDI-FP/UP/LP)\00", [33 x i8] zeroinitializer }, align 32
@skfp_init_one._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.79, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013skfp: region is not an MMIO resource\0A\00", [56 x i8] zeroinitializer }, align 32
@skfp_init_one._entry_ptr.85 = internal global ptr @skfp_init_one._entry.83, section ".printk_index", align 4
@skfp_init_one._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.79, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013skfp:  Unable to map register, FDDI adapter will be disabled.\0A\00", [63 x i8] zeroinitializer }, align 32
@skfp_init_one._entry_ptr.88 = internal global ptr @skfp_init_one._entry.86, section ".printk_index", align 4
@skfp_init_one._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.79, ptr @.str.2, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013skfp: Unable to allocate fddi device, FDDI adapter will be disabled.\0A\00", [56 x i8] zeroinitializer }, align 32
@skfp_init_one._entry_ptr.91 = internal global ptr @skfp_init_one._entry.89, section ".printk_index", align 4
@skfp_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @skfp_open, ptr @skfp_close, ptr @skfp_send_pkt, ptr null, ptr null, ptr null, ptr @skfp_ctl_set_multicast_list, ptr @skfp_ctl_set_mac_address, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @skfp_siocdevprivate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @skfp_ctl_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@skfp_init_one._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.79, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: SysKonnect FDDI PCI adapter found (SK-%04X)\0A\00", [47 x i8] zeroinitializer }, align 32
@skfp_init_one._entry_ptr.94 = internal global ptr @skfp_init_one._entry.92, section ".printk_index", align 4
@skfp_init_one._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.79, ptr @.str.2, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: FDDI PCI adapter found\0A\00", [36 x i8] zeroinitializer }, align 32
@skfp_init_one._entry_ptr.97 = internal global ptr @skfp_init_one._entry.95, section ".printk_index", align 4
@skfp_open.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.98, ptr @.str.2, ptr @.str.99, i8 0, i8 121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"skfp_open\00", [22 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"entering skfp_open\0A\00", [44 x i8] zeroinitializer }, align 32
@ResetAdapter.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.2, ptr @.str.101, i8 1, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ResetAdapter\00", [19 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"[fddi: ResetAdapter]\0A\00", [42 x i8] zeroinitializer }, align 32
@skfp_ctl_set_multicast_list_wo_lock.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.2, ptr @.str.103, i8 0, i8 -42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"skfp_ctl_set_multicast_list_wo_lock\00", [60 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PROMISCUOUS MODE ENABLED\0A\00", [38 x i8] zeroinitializer }, align 32
@skfp_ctl_set_multicast_list_wo_lock.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.2, ptr @.str.104, i8 0, i8 -41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PROMISCUOUS MODE DISABLED\0A\00", [37 x i8] zeroinitializer }, align 32
@skfp_ctl_set_multicast_list_wo_lock.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.2, ptr @.str.105, i8 0, i8 -39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ENABLE ALL MC ADDRESSES\0A\00", [39 x i8] zeroinitializer }, align 32
@skfp_ctl_set_multicast_list_wo_lock.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.2, ptr @.str.106, i8 0, i8 -36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ENABLE MC ADDRESS: %pMF\0A\00", [39 x i8] zeroinitializer }, align 32
@skfp_ctl_set_multicast_list_wo_lock.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.2, ptr @.str.105, i8 0, i8 -34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@skfp_ctl_set_multicast_list_wo_lock.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.102, ptr @.str.2, ptr @.str.107, i8 0, i8 -33, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DISABLE ALL MC ADDRESSES\0A\00", [38 x i8] zeroinitializer }, align 32
@skfp_send_pkt.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.2, ptr @.str.109, i8 1, i8 6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"skfp_send_pkt\00", [18 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"skfp_send_pkt\0A\00", [17 x i8] zeroinitializer }, align 32
@skfp_siocdevprivate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.2, i32 987, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ioctl for %s: unknown cmd: %04x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"skfp_siocdevprivate\00", [44 x i8] zeroinitializer }, align 32
@skfp_siocdevprivate._entry_ptr = internal global ptr @skfp_siocdevprivate._entry, section ".printk_index", align 4
@.str.114 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.115 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@skfp_driver_init.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.2, ptr @.str.117, i8 0, i8 96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"skfp_driver_init\00", [47 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"entering skfp_driver_init\0A\00", [37 x i8] zeroinitializer }, align 32
@skfp_driver_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.118 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&bp->DriverLock\00", [16 x i8] zeroinitializer }, align 32
@skfp_driver_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.116, ptr @.str.2, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not allocate mem for \00", [36 x i8] zeroinitializer }, align 32
@skfp_driver_init._entry_ptr = internal global ptr @skfp_driver_init._entry, section ".printk_index", align 4
@skfp_driver_init._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.116, ptr @.str.2, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LocalRxBuffer: %d byte\0A\00", [40 x i8] zeroinitializer }, align 32
@skfp_driver_init._entry_ptr.122 = internal global ptr @skfp_driver_init._entry.120, section ".printk_index", align 4
@skfp_driver_init.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.2, ptr @.str.123, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Memory for HWM: %ld\0A\00", [43 x i8] zeroinitializer }, align 32
@skfp_driver_init._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.116, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@skfp_driver_init._entry_ptr.125 = internal global ptr @skfp_driver_init._entry.124, section ".printk_index", align 4
@skfp_driver_init._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.116, ptr @.str.2, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hardware module: %ld byte\0A\00", [37 x i8] zeroinitializer }, align 32
@skfp_driver_init._entry_ptr.128 = internal global ptr @skfp_driver_init._entry.126, section ".printk_index", align 4
@skfp_driver_init.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.2, ptr @.str.129, i8 0, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mac_drv_init()..\0A\00", [46 x i8] zeroinitializer }, align 32
@skfp_driver_init.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.2, ptr @.str.130, i8 0, i8 108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mac_drv_init() failed\0A\00", [41 x i8] zeroinitializer }, align 32
@skfp_driver_init.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.2, ptr @.str.131, i8 0, i8 109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HW-Addr: %pMF\0A\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 16, i64 21760, i64 22528]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 16, i64 5, i64 6]
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1282, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1312, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1316, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1321, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1322, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1323, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1353, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1362, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1363, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1366, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1498, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1502, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1518, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1571, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1574, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1580, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1610, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1617, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1655, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1693, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1704, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1718, i32 5 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1763, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1771, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1800, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1826, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1830, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1883, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1888, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1889, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1895, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1945, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1947, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1949, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1951, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1953, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1955, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1957, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1959, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1961, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1963, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1965, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1967, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1969, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1971, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1973, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1975, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1977, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1978, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 2021, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 2024, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 2027, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 2031, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 2220, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant [18 x i8] c"skfddi_pci_driver\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 2226, i32 26 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1118, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1124, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1155, i32 5 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1157, i32 5 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1159, i32 5 }
@___asan_gen_.381 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.381, i32 326, i32 6 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 2227, i32 11 }
@___asan_gen_.386 = private unnamed_addr constant [15 x i8] c"skfddi_pci_tbl\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 151, i32 35 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 210, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant [11 x i8] c"num_boards\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 161, i32 12 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 213, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 67, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 227, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 243, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 251, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant [16 x i8] c"skfp_netdev_ops\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 163, i32 36 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 290, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 294, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 486, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1236, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 857, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 862, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 870, i32 4 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 881, i32 6 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 892, i32 4 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 1049, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 987, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 156, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1984, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 385, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 393, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 400, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 401, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 407, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 416, i32 4 }
@___asan_gen_.524 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 417, i32 4 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 430, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 432, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.537 = private constant [34 x i8] c"../drivers/net/fddi/skfp/skfddi.c\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.537, i32 436, i32 2 }
@llvm.compiler.used = appending global [158 x ptr] [ptr @__UNIQUE_ID_author343, ptr @__UNIQUE_ID_file341, ptr @__UNIQUE_ID_license342, ptr @__exitcall_skfddi_pci_driver_exit, ptr @__initcall__kmod_skfp__413_2233_skfddi_pci_driver_init6, ptr @mac_drv_clear_rxd._entry, ptr @mac_drv_clear_rxd._entry_ptr, ptr @mac_drv_get_desc_mem._entry, ptr @mac_drv_get_desc_mem._entry_ptr, ptr @mac_drv_get_space._entry, ptr @mac_drv_get_space._entry_ptr, ptr @mac_drv_requeue_rxd._entry, ptr @mac_drv_requeue_rxd._entry_ptr, ptr @mac_drv_rx_complete._entry, ptr @mac_drv_rx_complete._entry.24, ptr @mac_drv_rx_complete._entry_ptr, ptr @mac_drv_rx_complete._entry_ptr.26, ptr @skfddi_pci_driver_exit, ptr @skfp_driver_init._entry, ptr @skfp_driver_init._entry.120, ptr @skfp_driver_init._entry.124, ptr @skfp_driver_init._entry.126, ptr @skfp_driver_init._entry_ptr, ptr @skfp_driver_init._entry_ptr.122, ptr @skfp_driver_init._entry_ptr.125, ptr @skfp_driver_init._entry_ptr.128, ptr @skfp_init_one._entry, ptr @skfp_init_one._entry.83, ptr @skfp_init_one._entry.86, ptr @skfp_init_one._entry.89, ptr @skfp_init_one._entry.92, ptr @skfp_init_one._entry.95, ptr @skfp_init_one._entry_ptr, ptr @skfp_init_one._entry_ptr.85, ptr @skfp_init_one._entry_ptr.88, ptr @skfp_init_one._entry_ptr.91, ptr @skfp_init_one._entry_ptr.94, ptr @skfp_init_one._entry_ptr.97, ptr @skfp_siocdevprivate._entry, ptr @skfp_siocdevprivate._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @skfddi_pci_driver, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @skfddi_pci_tbl, ptr @.str.79, ptr @.str.80, ptr @num_boards, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @skfp_netdev_ops, ptr @.str.93, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.114, ptr @skb_queue_head_init.__key, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @skfp_driver_init.__key, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @.str.123, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @.str.131], section "llvm.metadata"
@0 = internal global [135 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_drv_get_space._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_drv_get_desc_mem._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_drv_rx_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_drv_rx_complete._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_drv_requeue_rxd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_drv_clear_rxd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skfddi_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skfddi_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_boards to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skfp_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skfp_init_one._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skfp_init_one._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skfp_init_one._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skfp_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skfp_init_one._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skfp_init_one._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skfp_siocdevprivate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skfp_driver_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skfp_driver_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skfp_driver_init._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skfp_driver_init._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skfp_driver_init._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @llc_restart_tx(ptr noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llc_restart_tx.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llc_restart_tx, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llc_restart_tx.__UNIQUE_ID_ddebug364, ptr noundef nonnull @.str.3) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %DriverLock = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 20
  tail call void @_raw_spin_unlock(ptr noundef %DriverLock) #11
  tail call fastcc void @send_queued_packets(ptr noundef %smc)
  tail call void @_raw_spin_lock(ptr noundef %DriverLock) #11
  %0 = ptrtoint ptr %smc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smc, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_queued_packets(ptr noundef %smc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_queued_packets.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_queued_packets, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @send_queued_packets.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.71) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %SendSkbQueue = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 12
  %call3217 = tail call ptr @skb_dequeue(ptr noundef %SendSkbQueue) #11
  %tobool4.not218 = icmp eq ptr %call3217, null
  br i1 %tobool4.not218, label %do.end.do.body6_crit_edge, label %do.body24.lr.ph

do.end.do.body6_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6

do.body24.lr.ph:                                  ; preds = %do.end
  %DriverLock = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 20
  %ess = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 14
  %fddiESSSynchTxMode = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 7
  %QueueSkb = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 11
  %fddi_canon_addr = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 20
  %dev126 = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 4, i32 44
  %init_name.i.i = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 4, i32 44, i32 3
  br label %do.body24

do.body6:                                         ; preds = %if.end147.do.body6_crit_edge, %do.end.do.body6_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_queued_packets.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_queued_packets, %if.then18)) #11
          to label %cleanup [label %if.then18], !srcloc !341

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @send_queued_packets.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.72) #11
  br label %cleanup

do.body24:                                        ; preds = %if.end147.do.body24_crit_edge, %do.body24.lr.ph
  %call3219 = phi ptr [ %call3217, %do.body24.lr.ph ], [ %call3, %if.end147.do.body24_crit_edge ]
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %DriverLock) #11
  %data = getelementptr inbounds %struct.sk_buff, ptr %call3219, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %conv32 = zext i8 %3 to i32
  %and.lobit = lshr i32 %conv32, 7
  %4 = xor i32 %and.lobit, 1
  %and35 = and i32 %conv32, 120
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %and35)
  %cmp36 = icmp eq i32 %and35, 80
  br i1 %cmp36, label %if.then38, label %do.body24.if.end50_crit_edge

do.body24.if.end50_crit_edge:                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then38:                                        ; preds = %do.body24
  %5 = ptrtoint ptr %ess to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ess, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool39.not = icmp eq i8 %6, 0
  br i1 %tobool39.not, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  %and42 = and i8 %3, 127
  br label %if.end50

if.else:                                          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %fddiESSSynchTxMode to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %fddiESSSynchTxMode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool44.not = icmp eq i16 %8, 0
  %or = or i8 %3, -128
  %spec.select = select i1 %tobool44.not, i8 %3, i8 %or
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then40, %do.body24.if.end50_crit_edge
  %fc.0 = phi i8 [ %and42, %if.then40 ], [ %3, %do.body24.if.end50_crit_edge ], [ %spec.select, %if.else ]
  %len = getelementptr inbounds %struct.sk_buff, ptr %call3219, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %call51 = tail call i32 @hwm_tx_init(ptr noundef %smc, i8 noundef zeroext %fc.0, i32 noundef 1, i32 noundef %10, i32 noundef %4) #11
  %and52 = and i32 %call51, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %cmp53 = icmp eq i32 %and52, 0
  br i1 %cmp53, label %if.then55, label %if.end121

if.then55:                                        ; preds = %if.end50
  %and56 = and i32 %call51, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %cmp57.not = icmp eq i32 %and56, 0
  br i1 %cmp57.not, label %if.else76, label %do.body60

do.body60:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_queued_packets.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_queued_packets, %if.then72)) #11
          to label %if.end118 [label %if.then72], !srcloc !341

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @send_queued_packets.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.73) #11
  br label %if.end118

if.else76:                                        ; preds = %if.then55
  %and77 = and i32 %call51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %cmp78.not = icmp eq i32 %and77, 0
  br i1 %cmp78.not, label %do.body98, label %do.body81

do.body81:                                        ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_queued_packets.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_queued_packets, %if.then93)) #11
          to label %if.end118 [label %if.then93], !srcloc !341

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %smc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %smc, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @send_queued_packets.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.74, ptr noundef %12) #11
  br label %if.end118

do.body98:                                        ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_queued_packets.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_queued_packets, %if.then110)) #11
          to label %if.end118 [label %if.then110], !srcloc !341

if.then110:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %smc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %smc, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @send_queued_packets.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.75, ptr noundef %14) #11
  br label %if.end118

if.end118:                                        ; preds = %if.then110, %do.body98, %if.then93, %do.body81, %if.then72, %do.body60
  tail call void @skb_queue_head(ptr noundef %SendSkbQueue, ptr noundef nonnull %call3219) #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %DriverLock, i32 noundef %call27) #11
  br label %cleanup

if.end121:                                        ; preds = %if.end50
  %15 = ptrtoint ptr %QueueSkb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %QueueSkb, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %QueueSkb, align 4
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %arrayidx.i = getelementptr i8, ptr %18, i32 7
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp.not.i = icmp ult i8 %20, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.end121.CheckSourceAddress.exit_crit_edge

if.end121.CheckSourceAddress.exit_crit_edge:      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  br label %CheckSourceAddress.exit

if.end.i:                                         ; preds = %if.end121
  %arrayidx2.i = getelementptr i8, ptr %18, i32 11
  %21 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp5.not.i = icmp eq i8 %22, 0
  br i1 %cmp5.not.i, label %if.end8.i, label %if.end.i.CheckSourceAddress.exit_crit_edge

if.end.i.CheckSourceAddress.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %CheckSourceAddress.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %23 = call ptr @memcpy(ptr %arrayidx.i, ptr %fddi_canon_addr, i32 6)
  %arrayidx15.i = getelementptr i8, ptr %18, i32 8
  %24 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx15.i, align 1
  %or22.i = or i8 %25, %20
  store i8 %or22.i, ptr %arrayidx15.i, align 1
  br label %CheckSourceAddress.exit

CheckSourceAddress.exit:                          ; preds = %if.end8.i, %if.end.i.CheckSourceAddress.exit_crit_edge, %if.end121.CheckSourceAddress.exit_crit_edge
  %arrayidx125 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 11, i32 %4
  %26 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx125, align 4
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %29) #11
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %CheckSourceAddress.exit
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !342

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev126) #11
  %32 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %dev126 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev126, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %35, %if.end.i.i ], [ %33, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.77, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %CheckSourceAddress.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %dev126, ptr noundef %29, i32 noundef %31) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %36 = load ptr, ptr @mem_map, align 4
  %37 = ptrtoint ptr %29 to i32
  %sub.i = add i32 %37, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %36, i32 %shr.i
  %and.i = and i32 %37, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev126, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %31, i32 noundef 1, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i209 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %and130 = and i32 %call51, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %if.then143.critedge, label %if.then132

if.then132:                                       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %txd_os = getelementptr inbounds %struct.s_smt_fp_txd, ptr %27, i32 0, i32 6
  %38 = ptrtoint ptr %txd_os to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call3219, ptr %txd_os, align 4
  %dma_addr = getelementptr inbounds %struct.s_smt_fp_txd, ptr %27, i32 0, i32 6, i32 1
  %39 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %retval.0.i209, ptr %dma_addr, align 4
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %42 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len, align 4
  %or140.c = or i32 %call51, 26
  tail call void @hwm_tx_frag(ptr noundef %smc, ptr noundef %41, i32 noundef %retval.0.i209, i32 noundef %43, i32 noundef %or140.c) #11
  br label %if.end147

if.then143.critedge:                              ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 4
  %46 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len, align 4
  %or140.c196 = or i32 %call51, 26
  tail call void @hwm_tx_frag(ptr noundef %smc, ptr noundef %45, i32 noundef %retval.0.i209, i32 noundef %47, i32 noundef %or140.c196) #11
  %48 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev126, i32 noundef %retval.0.i209, i32 noundef %49, i32 noundef 1, i32 noundef 0) #11
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %call3219, i32 noundef 1) #11
  br label %if.end147

if.end147:                                        ; preds = %if.then143.critedge, %if.then132
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %DriverLock, i32 noundef %call27) #11
  %call3 = tail call ptr @skb_dequeue(ptr noundef %SendSkbQueue) #11
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end147.do.body6_crit_edge, label %if.end147.do.body24_crit_edge

if.end147.do.body24_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body24

if.end147.do.body6_crit_edge:                     ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6

cleanup:                                          ; preds = %if.end118, %if.then18, %do.body6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mac_drv_get_space(ptr nocapture noundef %smc, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac_drv_get_space.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac_drv_get_space, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mac_drv_get_space.__UNIQUE_ID_ddebug365, ptr noundef nonnull @.str.5, i32 noundef %size) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %SharedMemAddr = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 9
  %0 = ptrtoint ptr %SharedMemAddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %SharedMemAddr, align 4
  %SharedMemHeap = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 8
  %2 = ptrtoint ptr %SharedMemHeap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %SharedMemHeap, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %add = add i32 %3, %size
  %SharedMemSize = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 7
  %4 = ptrtoint ptr %SharedMemSize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %SharedMemSize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp = icmp ugt i32 %add, %5
  br i1 %cmp, label %do.end10, label %if.end13

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %size) #14
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %6 = ptrtoint ptr %SharedMemHeap to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %SharedMemHeap, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac_drv_get_space.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac_drv_get_space, %if.then29)) #11
          to label %do.body33 [label %if.then29], !srcloc !341

if.then29:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mac_drv_get_space.__UNIQUE_ID_ddebug366, ptr noundef nonnull @.str.7) #11
  br label %do.body33

do.body33:                                        ; preds = %if.then29, %if.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac_drv_get_space.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac_drv_get_space, %if.then45)) #11
          to label %do.body49 [label %if.then45], !srcloc !341

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %add.ptr to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mac_drv_get_space.__UNIQUE_ID_ddebug367, ptr noundef nonnull @.str.8, i32 noundef %7) #11
  br label %do.body49

do.body49:                                        ; preds = %if.then45, %do.body33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac_drv_get_space.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac_drv_get_space, %if.then61)) #11
          to label %cleanup [label %if.then61], !srcloc !341

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #13
  %SharedMemDMA = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 10
  %8 = ptrtoint ptr %SharedMemDMA to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %SharedMemDMA, align 8
  %10 = ptrtoint ptr %SharedMemAddr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %SharedMemAddr, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i32
  %sub.ptr.sub = add i32 %9, %sub.ptr.lhs.cast
  %add65 = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mac_drv_get_space.__UNIQUE_ID_ddebug368, ptr noundef nonnull @.str.9, i32 noundef %add65) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %do.body49, %do.end10
  %retval.0 = phi ptr [ null, %do.end10 ], [ %add.ptr, %if.then61 ], [ %add.ptr, %do.body49 ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mac_drv_get_desc_mem(ptr nocapture noundef %smc, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac_drv_get_desc_mem.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac_drv_get_desc_mem, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mac_drv_get_desc_mem.__UNIQUE_ID_ddebug369, ptr noundef nonnull @.str.11) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call ptr @mac_drv_get_space(ptr noundef %smc, i32 noundef %size)
  %0 = ptrtoint ptr %call3 to i32
  %sub = sub i32 0, %0
  %rem = and i32 %sub, 15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac_drv_get_desc_mem.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac_drv_get_desc_mem, %if.then16)) #11
          to label %do.body20 [label %if.then16], !srcloc !341

if.then16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mac_drv_get_desc_mem.__UNIQUE_ID_ddebug370, ptr noundef nonnull @.str.12, i32 noundef %rem) #11
  br label %do.body20

do.body20:                                        ; preds = %if.then16, %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac_drv_get_desc_mem.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac_drv_get_desc_mem, %if.then32)) #11
          to label %do.end35 [label %if.then32], !srcloc !341

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mac_drv_get_desc_mem.__UNIQUE_ID_ddebug371, ptr noundef nonnull @.str.13) #11
  br label %do.end35

do.end35:                                         ; preds = %if.then32, %do.body20
  %call36 = tail call ptr @mac_drv_get_space(ptr noundef %smc, i32 noundef %rem)
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %do.end41, label %if.end44

do.end41:                                         ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #13
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #14
  br label %cleanup

if.end44:                                         ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %call3, i32 %rem
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %do.end41
  %retval.0 = phi ptr [ %add.ptr, %if.end44 ], [ null, %do.end41 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mac_drv_virt2phys(ptr nocapture noundef readonly %smc, ptr noundef %virt) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %SharedMemDMA = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 10
  %0 = ptrtoint ptr %SharedMemDMA to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %SharedMemDMA, align 8
  %SharedMemAddr = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 9
  %2 = ptrtoint ptr %SharedMemAddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %SharedMemAddr, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %virt to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = add i32 %1, %sub.ptr.lhs.cast
  %add = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  ret i32 %add
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dma_master(ptr nocapture noundef readonly %smc, ptr noundef %virt, i32 noundef %len, i32 noundef %flag) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %SharedMemDMA = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 10
  %0 = ptrtoint ptr %SharedMemDMA to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %SharedMemDMA, align 8
  %SharedMemAddr = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 9
  %2 = ptrtoint ptr %SharedMemAddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %SharedMemAddr, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %virt to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = add i32 %1, %sub.ptr.lhs.cast
  %add = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dma_complete(ptr noundef %smc, ptr noundef %descr, i32 noundef %flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flag, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then:                                          ; preds = %entry
  %rxd_os = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %descr, i32 0, i32 6
  %0 = ptrtoint ptr %rxd_os to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rxd_os, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then.if.end10_crit_edge, label %land.lhs.true

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

land.lhs.true:                                    ; preds = %if.then
  %dma_addr = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %descr, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %dma_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end10_crit_edge, label %if.then4

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %MaxFrameSize5 = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 13
  %4 = ptrtoint ptr %MaxFrameSize5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %MaxFrameSize5, align 8
  %dev = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 4, i32 44
  %6 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %dma_addr, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %7, i32 noundef %5, i32 noundef 2, i32 noundef 0) #11
  %8 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %dma_addr, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then4, %land.lhs.true.if.end10_crit_edge, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mac_drv_tx_complete(ptr noundef %smc, ptr noundef %txd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac_drv_tx_complete.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac_drv_tx_complete, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mac_drv_tx_complete.__UNIQUE_ID_ddebug372, ptr noundef nonnull @.str.16) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %txd_os = getelementptr inbounds %struct.s_smt_fp_txd, ptr %txd, i32 0, i32 6
  %0 = ptrtoint ptr %txd_os to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %txd_os, align 4
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.body6, label %if.end22

do.body6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac_drv_tx_complete.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac_drv_tx_complete, %if.then18)) #11
          to label %cleanup [label %if.then18], !srcloc !341

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mac_drv_tx_complete.__UNIQUE_ID_ddebug373, ptr noundef nonnull @.str.17) #11
  br label %cleanup

if.end22:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %txd_os to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr null, ptr %txd_os, align 4
  %dev = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 4, i32 44
  %dma_addr = getelementptr inbounds %struct.s_smt_fp_txd, ptr %txd, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dma_addr, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %4, i32 noundef %6, i32 noundef 1, i32 noundef 0) #11
  %7 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %dma_addr, align 4
  %tx_packets = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 15, i32 0, i32 1
  %8 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %tx_packets, align 4
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 15, i32 0, i32 3
  %12 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %13, %11
  store i32 %add, ptr %tx_bytes, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %1, i32 noundef 1) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac_drv_tx_complete.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac_drv_tx_complete, %if.then45)) #11
          to label %cleanup [label %if.then45], !srcloc !341

if.then45:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mac_drv_tx_complete.__UNIQUE_ID_ddebug374, ptr noundef nonnull @.str.18) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end22, %if.then18, %do.body6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mac_drv_rx_complete(ptr noundef %smc, ptr noundef %rxd, i32 noundef %frag_count, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac_drv_rx_complete.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac_drv_rx_complete, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mac_drv_rx_complete.__UNIQUE_ID_ddebug375, ptr noundef nonnull @.str.20, i32 noundef %len) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %frag_count)
  %cmp.not = icmp eq i32 %frag_count, 1
  br i1 %cmp.not, label %if.end9, label %do.end6

do.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #14
  br label %do.body98

if.end9:                                          ; preds = %do.end
  %rxd_os = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %rxd, i32 0, i32 6
  %0 = ptrtoint ptr %rxd_os to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rxd_os, align 4
  %tobool11.not = icmp eq ptr %1, null
  br i1 %tobool11.not, label %do.body13, label %if.end30

do.body13:                                        ; preds = %if.end9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac_drv_rx_complete.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac_drv_rx_complete, %if.then25)) #11
          to label %do.end28 [label %if.then25], !srcloc !341

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mac_drv_rx_complete.__UNIQUE_ID_ddebug376, ptr noundef nonnull @.str.22) #11
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %do.body13
  %rx_errors = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 15, i32 0, i32 4
  %2 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %3, 1
  store i32 %inc, ptr %rx_errors, align 8
  br label %do.body98

if.end30:                                         ; preds = %if.end9
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 7
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp31 = icmp eq i8 %8, 0
  br i1 %cmp31, label %if.end30.if.end69_crit_edge, label %if.else

if.end30.if.end69_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69

if.else:                                          ; preds = %if.end30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac_drv_rx_complete.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac_drv_rx_complete, %if.then46)) #11
          to label %do.end49 [label %if.then46], !srcloc !341

if.then46:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mac_drv_rx_complete.__UNIQUE_ID_ddebug377, ptr noundef nonnull @.str.23) #11
  br label %do.end49

do.end49:                                         ; preds = %if.then46, %if.else
  %add.ptr = getelementptr i8, ptr %5, i32 13
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr, align 2
  %11 = and i16 %10, 31
  %and51 = zext i16 %11 to i32
  %add = add nuw nsw i32 %and51, 13
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %len)
  %cmp52 = icmp sgt i32 %add, %len
  br i1 %cmp52, label %cleanup, label %if.end60

if.end60:                                         ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %14 = and i8 %13, -2
  store i8 %14, ptr %arrayidx, align 1
  %add.ptr65 = getelementptr i8, ptr %add.ptr, i32 %and51
  %incdec.ptr = getelementptr i8, ptr %5, i32 12
  %15 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr, align 1
  %incdec.ptr67 = getelementptr i8, ptr %add.ptr65, i32 -1
  %17 = ptrtoint ptr %incdec.ptr67 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %incdec.ptr67, align 1
  %incdec.ptr.1 = getelementptr i8, ptr %5, i32 11
  %18 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr.1, align 1
  %incdec.ptr67.1 = getelementptr i8, ptr %incdec.ptr67, i32 -1
  %20 = ptrtoint ptr %incdec.ptr67.1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %incdec.ptr67.1, align 1
  %incdec.ptr.2 = getelementptr i8, ptr %5, i32 10
  %21 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %incdec.ptr.2, align 1
  %incdec.ptr67.2 = getelementptr i8, ptr %incdec.ptr67.1, i32 -1
  %23 = ptrtoint ptr %incdec.ptr67.2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %incdec.ptr67.2, align 1
  %incdec.ptr.3 = getelementptr i8, ptr %5, i32 9
  %24 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %incdec.ptr.3, align 1
  %incdec.ptr67.3 = getelementptr i8, ptr %incdec.ptr67.2, i32 -1
  %26 = ptrtoint ptr %incdec.ptr67.3 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %incdec.ptr67.3, align 1
  %incdec.ptr.4 = getelementptr i8, ptr %5, i32 8
  %27 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %incdec.ptr.4, align 1
  %incdec.ptr67.4 = getelementptr i8, ptr %incdec.ptr67.3, i32 -1
  %29 = ptrtoint ptr %incdec.ptr67.4 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %incdec.ptr67.4, align 1
  %incdec.ptr.5 = getelementptr i8, ptr %5, i32 7
  %30 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %incdec.ptr.5, align 1
  %incdec.ptr67.5 = getelementptr i8, ptr %incdec.ptr67.4, i32 -1
  %32 = ptrtoint ptr %incdec.ptr67.5 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %incdec.ptr67.5, align 1
  %incdec.ptr.6 = getelementptr i8, ptr %5, i32 6
  %33 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %incdec.ptr.6, align 1
  %incdec.ptr67.6 = getelementptr i8, ptr %incdec.ptr67.5, i32 -1
  %35 = ptrtoint ptr %incdec.ptr67.6 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %incdec.ptr67.6, align 1
  %incdec.ptr.7 = getelementptr i8, ptr %5, i32 5
  %36 = ptrtoint ptr %incdec.ptr.7 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %incdec.ptr.7, align 1
  %incdec.ptr67.7 = getelementptr i8, ptr %incdec.ptr67.6, i32 -1
  %38 = ptrtoint ptr %incdec.ptr67.7 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %incdec.ptr67.7, align 1
  %incdec.ptr.8 = getelementptr i8, ptr %5, i32 4
  %39 = ptrtoint ptr %incdec.ptr.8 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %incdec.ptr.8, align 1
  %incdec.ptr67.8 = getelementptr i8, ptr %incdec.ptr67.7, i32 -1
  %41 = ptrtoint ptr %incdec.ptr67.8 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %incdec.ptr67.8, align 1
  %incdec.ptr.9 = getelementptr i8, ptr %5, i32 3
  %42 = ptrtoint ptr %incdec.ptr.9 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %incdec.ptr.9, align 1
  %incdec.ptr67.9 = getelementptr i8, ptr %incdec.ptr67.8, i32 -1
  %44 = ptrtoint ptr %incdec.ptr67.9 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %incdec.ptr67.9, align 1
  %incdec.ptr.10 = getelementptr i8, ptr %5, i32 2
  %45 = ptrtoint ptr %incdec.ptr.10 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %incdec.ptr.10, align 1
  %incdec.ptr67.10 = getelementptr i8, ptr %incdec.ptr67.9, i32 -1
  %47 = ptrtoint ptr %incdec.ptr67.10 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %incdec.ptr67.10, align 1
  %incdec.ptr.11 = getelementptr i8, ptr %5, i32 1
  %48 = ptrtoint ptr %incdec.ptr.11 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %incdec.ptr.11, align 1
  %incdec.ptr67.11 = getelementptr i8, ptr %incdec.ptr67.10, i32 -1
  %50 = ptrtoint ptr %incdec.ptr67.11 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %incdec.ptr67.11, align 1
  %51 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %5, align 1
  %incdec.ptr67.12 = getelementptr i8, ptr %incdec.ptr67.11, i32 -1
  %53 = ptrtoint ptr %incdec.ptr67.12 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %incdec.ptr67.12, align 1
  %call68 = tail call ptr @skb_pull(ptr noundef nonnull %1, i32 noundef %and51) #11
  %sub = sub i32 %len, %and51
  br label %if.end69

cleanup:                                          ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #13
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #14
  br label %do.body98

if.end69:                                         ; preds = %if.end60, %if.end30.if.end69_crit_edge
  %virt.2 = phi ptr [ %5, %if.end30.if.end69_crit_edge ], [ %incdec.ptr67.12, %if.end60 ]
  %len.addr.1 = phi i32 [ %len, %if.end30.if.end69_crit_edge ], [ %sub, %if.end60 ]
  %MacStat71 = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 15
  %54 = ptrtoint ptr %MacStat71 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %MacStat71, align 8
  %inc73 = add i32 %55, 1
  store i32 %inc73, ptr %MacStat71, align 8
  %rx_bytes = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 15, i32 0, i32 2
  %56 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_bytes, align 8
  %add77 = add i32 %57, %len.addr.1
  store i32 %add77, ptr %rx_bytes, align 8
  %arrayidx78 = getelementptr i8, ptr %virt.2, i32 1
  %58 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx78, align 1
  %60 = and i8 %59, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool81.not = icmp eq i8 %60, 0
  br i1 %tobool81.not, label %if.end69.if.end87_crit_edge, label %if.then82

if.end69.if.end87_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87

if.then82:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #13
  %multicast = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 15, i32 0, i32 8
  %61 = ptrtoint ptr %multicast to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %multicast, align 8
  %inc86 = add i32 %62, 1
  store i32 %inc86, ptr %multicast, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.then82, %if.end69.if.end87_crit_edge
  %63 = ptrtoint ptr %rxd_os to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr null, ptr %rxd_os, align 4
  tail call void @skb_trim(ptr noundef nonnull %1, i32 noundef %len.addr.1) #11
  %64 = ptrtoint ptr %smc to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %smc, align 8
  %call90 = tail call zeroext i16 @fddi_type_trans(ptr noundef nonnull %1, ptr noundef %65) #11
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 18
  %66 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %call90, ptr %protocol, align 8
  %call91 = tail call i32 @netif_rx(ptr noundef nonnull %1) #11
  %rx_used = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 12, i32 0, i32 4
  %67 = ptrtoint ptr %rx_used to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %rx_used, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %68)
  %cmp94 = icmp ult i16 %68, 6
  br i1 %cmp94, label %if.then96, label %if.end87.cleanup119_crit_edge

if.end87.cleanup119_crit_edge:                    ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup119

if.then96:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mac_drv_fill_rxd(ptr noundef %smc)
  br label %cleanup119

do.body98:                                        ; preds = %cleanup, %do.end28, %do.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac_drv_rx_complete.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac_drv_rx_complete, %if.then110)) #11
          to label %do.end113 [label %if.then110], !srcloc !341

if.then110:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mac_drv_rx_complete.__UNIQUE_ID_ddebug378, ptr noundef nonnull @.str.27) #11
  br label %do.end113

do.end113:                                        ; preds = %if.then110, %do.body98
  tail call void @mac_drv_requeue_rxd(ptr noundef %smc, ptr noundef %rxd, i32 noundef %frag_count)
  %rx_errors117 = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 15, i32 0, i32 4
  %69 = ptrtoint ptr %rx_errors117 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rx_errors117, align 8
  %inc118 = add i32 %70, 1
  store i32 %inc118, ptr %rx_errors117, align 8
  br label %cleanup119

cleanup119:                                       ; preds = %do.end113, %if.then96, %if.end87.cleanup119_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @fddi_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mac_drv_fill_rxd(ptr noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac_drv_fill_rxd.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac_drv_fill_rxd, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mac_drv_fill_rxd.__UNIQUE_ID_ddebug381, ptr noundef nonnull @.str.33) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %MaxFrameSize3 = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 13
  %0 = ptrtoint ptr %MaxFrameSize3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %MaxFrameSize3, align 8
  %rx_q = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 12
  %rx_free = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 12, i32 0, i32 3
  %2 = ptrtoint ptr %rx_free to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %rx_free, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp100 = icmp ugt i16 %3, 1
  br i1 %cmp100, label %do.body5.lr.ph, label %do.end.do.body52_crit_edge

do.end.do.body52_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body52

do.body5.lr.ph:                                   ; preds = %do.end
  %add = add i32 %1, 3
  %dev = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 4, i32 44
  %init_name.i.i = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 4, i32 44, i32 3
  %LocalRxBuffer = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 16
  %LocalRxBufferDMA = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 17
  br label %do.body5

do.body5:                                         ; preds = %if.end49.do.body5_crit_edge, %do.body5.lr.ph
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac_drv_fill_rxd.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac_drv_fill_rxd, %if.then17)) #11
          to label %do.end20 [label %if.then17], !srcloc !341

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mac_drv_fill_rxd.__UNIQUE_ID_ddebug382, ptr noundef nonnull @.str.34) #11
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %do.body5
  %4 = ptrtoint ptr %rx_q to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_q, align 4
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool26.not = icmp eq ptr %call.i, null
  br i1 %tobool26.not, label %do.body31, label %if.then27

if.then27:                                        ; preds = %do.end20
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 3
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %9, i32 3
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call28 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %1) #11
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %call.i93 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %11) #11
  br i1 %call.i93, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then27
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !342

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #11
  %12 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %15, %if.end.i.i ], [ %13, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.77, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %11, i32 noundef %1) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %16 = load ptr, ptr @mem_map, align 4
  %17 = ptrtoint ptr %11 to i32
  %sub.i = add i32 %17, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i94 = getelementptr %struct.page, ptr %16, i32 %shr.i
  %and.i = and i32 %17, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i94, i32 noundef %and.i, i32 noundef %1, i32 noundef 2, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i95 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %dma_addr = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %5, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 %retval.0.i95, ptr %dma_addr, align 4
  br label %if.end49

do.body31:                                        ; preds = %do.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac_drv_fill_rxd.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac_drv_fill_rxd, %if.then43)) #11
          to label %do.end46 [label %if.then43], !srcloc !341

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mac_drv_fill_rxd.__UNIQUE_ID_ddebug383, ptr noundef nonnull @.str.31) #11
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %do.body31
  %19 = ptrtoint ptr %LocalRxBuffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %LocalRxBuffer, align 8
  %21 = ptrtoint ptr %LocalRxBufferDMA to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %LocalRxBufferDMA, align 4
  br label %if.end49

if.end49:                                         ; preds = %do.end46, %dma_map_single_attrs.exit
  %b_addr.0 = phi i32 [ %retval.0.i95, %dma_map_single_attrs.exit ], [ %22, %do.end46 ]
  %v_addr.0 = phi ptr [ %11, %dma_map_single_attrs.exit ], [ %20, %do.end46 ]
  %rxd_os50 = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %5, i32 0, i32 6
  %23 = ptrtoint ptr %rxd_os50 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %call.i, ptr %rxd_os50, align 4
  tail call void @hwm_rx_frag(ptr noundef %smc, ptr noundef %v_addr.0, i32 noundef %b_addr.0, i32 noundef %1, i32 noundef 24) #11
  %24 = ptrtoint ptr %rx_free to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %rx_free, align 4
  %cmp = icmp ugt i16 %25, 1
  br i1 %cmp, label %if.end49.do.body5_crit_edge, label %if.end49.do.body52_crit_edge

if.end49.do.body52_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body52

if.end49.do.body5_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body5

do.body52:                                        ; preds = %if.end49.do.body52_crit_edge, %do.end.do.body52_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac_drv_fill_rxd.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac_drv_fill_rxd, %if.then64)) #11
          to label %do.end67 [label %if.then64], !srcloc !341

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mac_drv_fill_rxd.__UNIQUE_ID_ddebug384, ptr noundef nonnull @.str.35) #11
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %do.body52
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mac_drv_requeue_rxd(ptr noundef %smc, ptr noundef %rxd, i32 noundef %frag_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %frag_count)
  %cmp.not = icmp eq i32 %frag_count, 1
  br i1 %cmp.not, label %entry.for.body.lr.ph_crit_edge, label %if.end

entry.for.body.lr.ph_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.lr.ph

if.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frag_count)
  %cmp2111 = icmp sgt i32 %frag_count, 0
  br i1 %cmp2111, label %if.end.for.body.lr.ph_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.for.body.lr.ph_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end.for.body.lr.ph_crit_edge, %entry.for.body.lr.ph_crit_edge
  %.in = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 13
  %0 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %.in, align 8
  %rx_q = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 12
  %dev51 = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 4, i32 44
  %init_name.i.i95 = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 4, i32 44, i32 3
  %add = add i32 %1, 3
  %LocalRxBuffer = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 16
  %LocalRxBufferDMA = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %if.end55.for.body_crit_edge, %for.body.lr.ph
  %frag_count.addr.0113 = phi i32 [ %frag_count, %for.body.lr.ph ], [ %dec, %if.end55.for.body_crit_edge ]
  %src_rxd.0112 = phi ptr [ %rxd, %for.body.lr.ph ], [ %3, %if.end55.for.body_crit_edge ]
  %rxd_next = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %src_rxd.0112, i32 0, i32 5
  %2 = ptrtoint ptr %rxd_next to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %rxd_next, align 4
  %4 = ptrtoint ptr %rx_q to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_q, align 4
  %rxd_os = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %src_rxd.0112, i32 0, i32 6
  %6 = ptrtoint ptr %rxd_os to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %rxd_os, align 4
  %cmp4 = icmp eq ptr %7, null
  br i1 %cmp4, label %do.body6, label %if.else45

do.body6:                                         ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac_drv_requeue_rxd.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac_drv_requeue_rxd, %if.then11)) #11
          to label %do.end14 [label %if.then11], !srcloc !341

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mac_drv_requeue_rxd.__UNIQUE_ID_ddebug379, ptr noundef nonnull @.str.30) #11
  br label %do.end14

do.end14:                                         ; preds = %if.then11, %do.body6
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool16.not = icmp eq ptr %call.i, null
  br i1 %tobool16.not, label %do.body24, label %if.then17

if.then17:                                        ; preds = %do.end14
  %rxd_os18 = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %rxd_os18 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call.i, ptr %rxd_os18, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 3
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %11 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %12, i32 3
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call20 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %1) #11
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %call.i88 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %14) #11
  br i1 %call.i88, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then17
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !342

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev51) #11
  %15 = ptrtoint ptr %init_name.i.i95 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i.i95, align 8
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev51, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %18, %if.end.i.i ], [ %16, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.77, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #11
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %dev51, ptr noundef %14, i32 noundef %1) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %19 = load ptr, ptr @mem_map, align 4
  %20 = ptrtoint ptr %14 to i32
  %sub.i = add i32 %20, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i89 = getelementptr %struct.page, ptr %19, i32 %shr.i
  %and.i = and i32 %20, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev51, ptr noundef %add.ptr.i89, i32 noundef %and.i, i32 noundef %1, i32 noundef 2, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i90 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %dma_addr = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %5, i32 0, i32 6, i32 1
  %21 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 %retval.0.i90, ptr %dma_addr, align 4
  br label %if.end55

do.body24:                                        ; preds = %do.end14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac_drv_requeue_rxd.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac_drv_requeue_rxd, %if.then36)) #11
          to label %do.end39 [label %if.then36], !srcloc !341

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mac_drv_requeue_rxd.__UNIQUE_ID_ddebug380, ptr noundef nonnull @.str.31) #11
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %do.body24
  %rxd_os40 = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %5, i32 0, i32 6
  %22 = ptrtoint ptr %rxd_os40 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr null, ptr %rxd_os40, align 4
  %23 = ptrtoint ptr %LocalRxBuffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %LocalRxBuffer, align 8
  %25 = ptrtoint ptr %LocalRxBufferDMA to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %LocalRxBufferDMA, align 4
  br label %if.end55

if.else45:                                        ; preds = %for.body
  %rxd_os46 = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %5, i32 0, i32 6
  %27 = ptrtoint ptr %rxd_os46 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %7, ptr %rxd_os46, align 4
  %data48 = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 19
  %28 = ptrtoint ptr %data48 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data48, align 4
  %call.i91 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %29) #11
  br i1 %call.i91, label %land.rhs.i93, label %if.end39.i106

land.rhs.i93:                                     ; preds = %if.else45
  %.b1.i92 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i92, label %land.rhs.i93.dma_map_single_attrs.exit108_crit_edge, label %if.then.i97, !prof !342

land.rhs.i93.dma_map_single_attrs.exit108_crit_edge: ; preds = %land.rhs.i93
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_map_single_attrs.exit108

if.then.i97:                                      ; preds = %land.rhs.i93
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i94 = tail call ptr @dev_driver_string(ptr noundef %dev51) #11
  %30 = ptrtoint ptr %init_name.i.i95 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %init_name.i.i95, align 8
  %tobool.not.i.i96 = icmp eq ptr %31, null
  br i1 %tobool.not.i.i96, label %if.end.i.i98, label %if.then.i97.dev_name.exit.i100_crit_edge

if.then.i97.dev_name.exit.i100_crit_edge:         ; preds = %if.then.i97
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i100

if.end.i.i98:                                     ; preds = %if.then.i97
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev51, align 4
  br label %dev_name.exit.i100

dev_name.exit.i100:                               ; preds = %if.end.i.i98, %if.then.i97.dev_name.exit.i100_crit_edge
  %retval.0.i.i99 = phi ptr [ %33, %if.end.i.i98 ], [ %31, %if.then.i97.dev_name.exit.i100_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.76, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.77, ptr noundef %call16.i94, ptr noundef %retval.0.i.i99) #11
  br label %dma_map_single_attrs.exit108

if.end39.i106:                                    ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @debug_dma_map_single(ptr noundef %dev51, ptr noundef %29, i32 noundef %1) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %34 = load ptr, ptr @mem_map, align 4
  %35 = ptrtoint ptr %29 to i32
  %sub.i101 = add i32 %35, 1073741824
  %shr.i102 = lshr i32 %sub.i101, 12
  %add.ptr.i103 = getelementptr %struct.page, ptr %34, i32 %shr.i102
  %and.i104 = and i32 %35, 4095
  %call41.i105 = tail call i32 @dma_map_page_attrs(ptr noundef %dev51, ptr noundef %add.ptr.i103, i32 noundef %and.i104, i32 noundef %1, i32 noundef 2, i32 noundef 0) #11
  br label %dma_map_single_attrs.exit108

dma_map_single_attrs.exit108:                     ; preds = %if.end39.i106, %dev_name.exit.i100, %land.rhs.i93.dma_map_single_attrs.exit108_crit_edge
  %retval.0.i107 = phi i32 [ %call41.i105, %if.end39.i106 ], [ -1, %dev_name.exit.i100 ], [ -1, %land.rhs.i93.dma_map_single_attrs.exit108_crit_edge ]
  %dma_addr54 = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %5, i32 0, i32 6, i32 1
  %36 = ptrtoint ptr %dma_addr54 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile i32 %retval.0.i107, ptr %dma_addr54, align 4
  br label %if.end55

if.end55:                                         ; preds = %dma_map_single_attrs.exit108, %do.end39, %dma_map_single_attrs.exit
  %v_addr.0 = phi ptr [ %14, %dma_map_single_attrs.exit ], [ %24, %do.end39 ], [ %29, %dma_map_single_attrs.exit108 ]
  %b_addr.0 = phi i32 [ %retval.0.i90, %dma_map_single_attrs.exit ], [ %26, %do.end39 ], [ %retval.0.i107, %dma_map_single_attrs.exit108 ]
  tail call void @hwm_rx_frag(ptr noundef %smc, ptr noundef %v_addr.0, i32 noundef %b_addr.0, i32 noundef %1, i32 noundef 24) #11
  %dec = add nsw i32 %frag_count.addr.0113, -1
  %cmp2 = icmp sgt i32 %frag_count.addr.0113, 1
  br i1 %cmp2, label %if.end55.for.body_crit_edge, label %if.end55.for.end_crit_edge

if.end55.for.end_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end55.for.body_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end55.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwm_rx_frag(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mac_drv_clear_rxd(ptr noundef %smc, ptr noundef %rxd, i32 noundef %frag_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac_drv_clear_rxd.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac_drv_clear_rxd, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mac_drv_clear_rxd.__UNIQUE_ID_ddebug385, ptr noundef nonnull @.str.37) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %frag_count)
  %cmp.not = icmp eq i32 %frag_count, 1
  br i1 %cmp.not, label %do.end.for.body.lr.ph_crit_edge, label %if.end9

do.end.for.body.lr.ph_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.lr.ph

if.end9:                                          ; preds = %do.end
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frag_count)
  %cmp1027 = icmp sgt i32 %frag_count, 0
  br i1 %cmp1027, label %if.end9.for.body.lr.ph_crit_edge, label %if.end9.for.end_crit_edge

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end9.for.body.lr.ph_crit_edge:                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end9.for.body.lr.ph_crit_edge, %do.end.for.body.lr.ph_crit_edge
  %MaxFrameSize14 = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 13
  %dev = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 4, i32 44
  br label %for.body

for.body:                                         ; preds = %if.end18.for.body_crit_edge, %for.body.lr.ph
  %rxd.addr.029 = phi ptr [ %rxd, %for.body.lr.ph ], [ %8, %if.end18.for.body_crit_edge ]
  %frag_count.addr.028 = phi i32 [ %frag_count, %for.body.lr.ph ], [ %dec, %if.end18.for.body_crit_edge ]
  %rxd_os = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %rxd.addr.029, i32 0, i32 6
  %0 = ptrtoint ptr %rxd_os to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %rxd_os, align 4
  %cmp12.not = icmp eq ptr %1, null
  br i1 %cmp12.not, label %for.body.if.end18_crit_edge, label %if.then13

for.body.if.end18_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then13:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %MaxFrameSize14 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %MaxFrameSize14, align 8
  %dma_addr = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %rxd.addr.029, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %dma_addr, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %5, i32 noundef %3, i32 noundef 2, i32 noundef 0) #11
  tail call void @consume_skb(ptr noundef nonnull %1) #11
  %6 = ptrtoint ptr %rxd_os to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr null, ptr %rxd_os, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %for.body.if.end18_crit_edge
  %rxd_next = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %rxd.addr.029, i32 0, i32 5
  %7 = ptrtoint ptr %rxd_next to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %rxd_next, align 4
  %dec = add nsw i32 %frag_count.addr.028, -1
  %cmp10 = icmp sgt i32 %frag_count.addr.028, 1
  br i1 %cmp10, label %if.end18.for.body_crit_edge, label %if.end18.for.end_crit_edge

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end18.for.end_crit_edge, %if.end9.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mac_drv_rx_init(ptr nocapture noundef readonly %smc, i32 noundef %len, i32 noundef %fc, ptr noundef %look_ahead, i32 noundef %la_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac_drv_rx_init.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac_drv_rx_init, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mac_drv_rx_init.__UNIQUE_ID_ddebug386, ptr noundef nonnull @.str.40, i32 noundef %len) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %len, i32 %la_len)
  %cmp.not = icmp ne i32 %len, %la_len
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %len)
  %cmp3 = icmp slt i32 %len, 13
  %or.cond = or i1 %cmp3, %cmp.not
  %tobool5.not = icmp eq ptr %look_ahead, null
  %or.cond78 = or i1 %tobool5.not, %or.cond
  br i1 %or.cond78, label %do.body7, label %if.end39

do.body7:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac_drv_rx_init.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac_drv_rx_init, %if.then19)) #11
          to label %do.body23 [label %if.then19], !srcloc !341

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mac_drv_rx_init.__UNIQUE_ID_ddebug387, ptr noundef nonnull @.str.41) #11
  br label %do.body23

do.body23:                                        ; preds = %if.then19, %do.body7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac_drv_rx_init.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac_drv_rx_init, %if.then35)) #11
          to label %cleanup [label %if.then35], !srcloc !341

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %look_ahead to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mac_drv_rx_init.__UNIQUE_ID_ddebug388, ptr noundef nonnull @.str.42, i32 noundef %len, i32 noundef %la_len, i32 noundef %0) #11
  br label %cleanup

if.end39:                                         ; preds = %do.end
  %add = add nuw i32 %len, 3
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #11
  %tobool41.not = icmp eq ptr %call.i, null
  br i1 %tobool41.not, label %do.body43, label %if.end59

do.body43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mac_drv_rx_init.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mac_drv_rx_init, %if.then55)) #11
          to label %cleanup [label %if.then55], !srcloc !341

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mac_drv_rx_init.__UNIQUE_ID_ddebug389, ptr noundef nonnull @.str.43) #11
  br label %cleanup

if.end59:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 3
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %3 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %4, i32 3
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call60 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %len) #11
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %7 = call ptr @memcpy(ptr %6, ptr %look_ahead, i32 %len)
  %8 = ptrtoint ptr %smc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %smc, align 8
  %call61 = tail call zeroext i16 @fddi_type_trans(ptr noundef nonnull %call.i, ptr noundef %9) #11
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %10 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %call61, ptr %protocol, align 8
  %call62 = tail call i32 @netif_rx(ptr noundef nonnull %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.then55, %do.body43, %if.then35, %do.body23
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @smt_timer_poll(ptr nocapture noundef %smc) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ring_status_indication(ptr nocapture noundef readnone %smc, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ring_status_indication.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ring_status_indication, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ring_status_indication.__UNIQUE_ID_ddebug390, ptr noundef nonnull @.str.45) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %status, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.end.if.end20_crit_edge, label %do.body5

do.end.if.end20_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

do.body5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ring_status_indication.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ring_status_indication, %if.then17)) #11
          to label %if.end20 [label %if.then17], !srcloc !341

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ring_status_indication.__UNIQUE_ID_ddebug391, ptr noundef nonnull @.str.46) #11
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %do.body5, %do.end.if.end20_crit_edge
  %and21 = and i32 %status, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end39_crit_edge, label %do.body24

if.end20.if.end39_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

do.body24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ring_status_indication.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ring_status_indication, %if.then36)) #11
          to label %if.end39 [label %if.then36], !srcloc !341

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ring_status_indication.__UNIQUE_ID_ddebug392, ptr noundef nonnull @.str.47) #11
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %do.body24, %if.end20.if.end39_crit_edge
  %and40 = and i32 %status, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end58_crit_edge, label %do.body43

if.end39.if.end58_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

do.body43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ring_status_indication.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ring_status_indication, %if.then55)) #11
          to label %if.end58 [label %if.then55], !srcloc !341

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ring_status_indication.__UNIQUE_ID_ddebug393, ptr noundef nonnull @.str.48) #11
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %do.body43, %if.end39.if.end58_crit_edge
  %and59 = and i32 %status, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end58.if.end77_crit_edge, label %do.body62

if.end58.if.end77_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

do.body62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ring_status_indication.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ring_status_indication, %if.then74)) #11
          to label %if.end77 [label %if.then74], !srcloc !341

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ring_status_indication.__UNIQUE_ID_ddebug394, ptr noundef nonnull @.str.49) #11
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %do.body62, %if.end58.if.end77_crit_edge
  %and78 = and i32 %status, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end77.if.end96_crit_edge, label %do.body81

if.end77.if.end96_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

do.body81:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ring_status_indication.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ring_status_indication, %if.then93)) #11
          to label %if.end96 [label %if.then93], !srcloc !341

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ring_status_indication.__UNIQUE_ID_ddebug395, ptr noundef nonnull @.str.50) #11
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %do.body81, %if.end77.if.end96_crit_edge
  %and97 = and i32 %status, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end96.if.end115_crit_edge, label %do.body100

if.end96.if.end115_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end115

do.body100:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ring_status_indication.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ring_status_indication, %if.then112)) #11
          to label %if.end115 [label %if.then112], !srcloc !341

if.then112:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ring_status_indication.__UNIQUE_ID_ddebug396, ptr noundef nonnull @.str.51) #11
  br label %if.end115

if.end115:                                        ; preds = %if.then112, %do.body100, %if.end96.if.end115_crit_edge
  %and116 = and i32 %status, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end115.if.end134_crit_edge, label %do.body119

if.end115.if.end134_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end134

do.body119:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ring_status_indication.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ring_status_indication, %if.then131)) #11
          to label %if.end134 [label %if.then131], !srcloc !341

if.then131:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ring_status_indication.__UNIQUE_ID_ddebug397, ptr noundef nonnull @.str.52) #11
  br label %if.end134

if.end134:                                        ; preds = %if.then131, %do.body119, %if.end115.if.end134_crit_edge
  %and135 = and i32 %status, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %if.end134.if.end153_crit_edge, label %do.body138

if.end134.if.end153_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end153

do.body138:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ring_status_indication.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ring_status_indication, %if.then150)) #11
          to label %if.end153 [label %if.then150], !srcloc !341

if.then150:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ring_status_indication.__UNIQUE_ID_ddebug398, ptr noundef nonnull @.str.53) #11
  br label %if.end153

if.end153:                                        ; preds = %if.then150, %do.body138, %if.end134.if.end153_crit_edge
  %and154 = and i32 %status, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  br i1 %tobool155.not, label %if.end153.if.end172_crit_edge, label %do.body157

if.end153.if.end172_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end172

do.body157:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ring_status_indication.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ring_status_indication, %if.then169)) #11
          to label %if.end172 [label %if.then169], !srcloc !341

if.then169:                                       ; preds = %do.body157
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ring_status_indication.__UNIQUE_ID_ddebug399, ptr noundef nonnull @.str.54) #11
  br label %if.end172

if.end172:                                        ; preds = %if.then169, %do.body157, %if.end153.if.end172_crit_edge
  %and173 = and i32 %status, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173)
  %tobool174.not = icmp eq i32 %and173, 0
  br i1 %tobool174.not, label %if.end172.if.end191_crit_edge, label %do.body176

if.end172.if.end191_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end191

do.body176:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ring_status_indication.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ring_status_indication, %if.then188)) #11
          to label %if.end191 [label %if.then188], !srcloc !341

if.then188:                                       ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ring_status_indication.__UNIQUE_ID_ddebug400, ptr noundef nonnull @.str.55) #11
  br label %if.end191

if.end191:                                        ; preds = %if.then188, %do.body176, %if.end172.if.end191_crit_edge
  %and192 = and i32 %status, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192)
  %tobool193.not = icmp eq i32 %and192, 0
  br i1 %tobool193.not, label %if.end191.if.end210_crit_edge, label %do.body195

if.end191.if.end210_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end210

do.body195:                                       ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ring_status_indication.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ring_status_indication, %if.then207)) #11
          to label %if.end210 [label %if.then207], !srcloc !341

if.then207:                                       ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ring_status_indication.__UNIQUE_ID_ddebug401, ptr noundef nonnull @.str.56) #11
  br label %if.end210

if.end210:                                        ; preds = %if.then207, %do.body195, %if.end191.if.end210_crit_edge
  %and211 = and i32 %status, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211)
  %tobool212.not = icmp eq i32 %and211, 0
  br i1 %tobool212.not, label %if.end210.if.end229_crit_edge, label %do.body214

if.end210.if.end229_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end229

do.body214:                                       ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ring_status_indication.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ring_status_indication, %if.then226)) #11
          to label %if.end229 [label %if.then226], !srcloc !341

if.then226:                                       ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ring_status_indication.__UNIQUE_ID_ddebug402, ptr noundef nonnull @.str.57) #11
  br label %if.end229

if.end229:                                        ; preds = %if.then226, %do.body214, %if.end210.if.end229_crit_edge
  %and230 = and i32 %status, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and230)
  %tobool231.not = icmp eq i32 %and230, 0
  br i1 %tobool231.not, label %if.end229.if.end248_crit_edge, label %do.body233

if.end229.if.end248_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end248

do.body233:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ring_status_indication.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ring_status_indication, %if.then245)) #11
          to label %if.end248 [label %if.then245], !srcloc !341

if.then245:                                       ; preds = %do.body233
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ring_status_indication.__UNIQUE_ID_ddebug403, ptr noundef nonnull @.str.58) #11
  br label %if.end248

if.end248:                                        ; preds = %if.then245, %do.body233, %if.end229.if.end248_crit_edge
  %and249 = and i32 %status, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and249)
  %tobool250.not = icmp eq i32 %and249, 0
  br i1 %tobool250.not, label %if.end248.if.end267_crit_edge, label %do.body252

if.end248.if.end267_crit_edge:                    ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end267

do.body252:                                       ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ring_status_indication.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ring_status_indication, %if.then264)) #11
          to label %if.end267 [label %if.then264], !srcloc !341

if.then264:                                       ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ring_status_indication.__UNIQUE_ID_ddebug404, ptr noundef nonnull @.str.59) #11
  br label %if.end267

if.end267:                                        ; preds = %if.then264, %do.body252, %if.end248.if.end267_crit_edge
  %and268 = and i32 %status, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and268)
  %tobool269.not = icmp eq i32 %and268, 0
  br i1 %tobool269.not, label %if.end267.if.end286_crit_edge, label %do.body271

if.end267.if.end286_crit_edge:                    ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end286

do.body271:                                       ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ring_status_indication.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ring_status_indication, %if.then283)) #11
          to label %if.end286 [label %if.then283], !srcloc !341

if.then283:                                       ; preds = %do.body271
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ring_status_indication.__UNIQUE_ID_ddebug405, ptr noundef nonnull @.str.60) #11
  br label %if.end286

if.end286:                                        ; preds = %if.then283, %do.body271, %if.end267.if.end286_crit_edge
  %and287 = and i32 %status, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and287)
  %tobool288.not = icmp eq i32 %and287, 0
  br i1 %tobool288.not, label %if.end286.do.body306_crit_edge, label %do.body290

if.end286.do.body306_crit_edge:                   ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body306

do.body290:                                       ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ring_status_indication.__UNIQUE_ID_ddebug406, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ring_status_indication, %if.then302)) #11
          to label %do.body306 [label %if.then302], !srcloc !341

if.then302:                                       ; preds = %do.body290
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ring_status_indication.__UNIQUE_ID_ddebug406, ptr noundef nonnull @.str.61) #11
  br label %do.body306

do.body306:                                       ; preds = %if.then302, %do.body290, %if.end286.do.body306_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ring_status_indication.__UNIQUE_ID_ddebug407, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ring_status_indication, %if.then318)) #11
          to label %do.end320 [label %if.then318], !srcloc !341

if.then318:                                       ; preds = %do.body306
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ring_status_indication.__UNIQUE_ID_ddebug407, ptr noundef nonnull @.str.62) #11
  br label %do.end320

do.end320:                                        ; preds = %if.then318, %do.body306
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @smt_get_time() local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smt_stat_counter(ptr nocapture noundef %smc, i32 noundef %stat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smt_stat_counter.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smt_stat_counter, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smt_stat_counter.__UNIQUE_ID_ddebug408, ptr noundef nonnull @.str.64) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = zext i32 %stat to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %stat, label %do.body34 [
    i32 0, label %do.body3
    i32 1, label %do.body19
  ]

do.body3:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smt_stat_counter.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smt_stat_counter, %if.then15)) #11
          to label %sw.epilog [label %if.then15], !srcloc !341

if.then15:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smt_stat_counter.__UNIQUE_ID_ddebug409, ptr noundef nonnull @.str.65) #11
  br label %sw.epilog

do.body19:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smt_stat_counter.__UNIQUE_ID_ddebug410, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smt_stat_counter, %if.then31)) #11
          to label %do.end33 [label %if.then31], !srcloc !341

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smt_stat_counter.__UNIQUE_ID_ddebug410, ptr noundef nonnull @.str.66) #11
  br label %do.end33

do.end33:                                         ; preds = %if.then31, %do.body19
  %rx_errors = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 15, i32 0, i32 4
  %1 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %2, 1
  store i32 %inc, ptr %rx_errors, align 8
  br label %sw.epilog

do.body34:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smt_stat_counter.__UNIQUE_ID_ddebug411, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@smt_stat_counter, %if.then46)) #11
          to label %sw.epilog [label %if.then46], !srcloc !341

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @smt_stat_counter.__UNIQUE_ID_ddebug411, ptr noundef nonnull @.str.67, i32 noundef %stat) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then46, %do.body34, %do.end33, %if.then15, %do.body3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cfm_state_change(ptr nocapture noundef %smc, i32 noundef %c_state) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ecm_state_change(ptr nocapture noundef %smc, i32 noundef %e_state) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @rmt_state_change(ptr nocapture noundef %smc, i32 noundef %r_state) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drv_reset_indication(ptr nocapture noundef writeonly %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @drv_reset_indication.__UNIQUE_ID_ddebug412, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@drv_reset_indication, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @drv_reset_indication.__UNIQUE_ID_ddebug412, ptr noundef nonnull @.str.69) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ResetRequested = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 14
  %0 = ptrtoint ptr %ResetRequested to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %ResetRequested, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @skfddi_pci_driver_init() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @skfddi_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @skfddi_pci_driver_exit() #7 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @skfddi_pci_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwm_tx_init(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwm_tx_frag(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skfp_init_one(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skfp_init_one.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@skfp_init_one, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @skfp_init_one.__UNIQUE_ID_ddebug344, ptr noundef nonnull @.str.80) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = load i32, ptr @num_boards, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %do.end6, label %do.end.if.end9_crit_edge

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

do.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82) #14
  br label %if.end9

if.end9:                                          ; preds = %do.end6, %do.end.if.end9_crit_edge
  %call10 = tail call i32 @pci_enable_device(ptr noundef %pdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call14 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.78) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.err_out1_crit_edge

if.end13.err_out1_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out1

if.end17:                                         ; preds = %if.end13
  tail call void @pci_set_master(ptr noundef %pdev) #11
  %flags = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #14
  br label %err_out2

if.end25:                                         ; preds = %if.end17
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %3 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %resource, align 8
  %call28 = tail call ptr @ioremap(i32 noundef %4, i32 noundef 16384) #11
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %do.end33, label %if.end36

do.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #14
  br label %err_out2

if.end36:                                         ; preds = %if.end25
  %call37 = tail call ptr @alloc_fddidev(i32 noundef 5480) #11
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %do.end42, label %if.end45

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #14
  br label %err_out3

if.end45:                                         ; preds = %if.end36
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %irq46 = getelementptr inbounds %struct.net_device, ptr %call37, i32 0, i32 64
  %7 = ptrtoint ptr %irq46 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %irq46, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call37, i32 0, i32 16
  %8 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @skfp_netdev_ops, ptr %netdev_ops, align 8
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.net_device, ptr %call37, i32 0, i32 133, i32 1
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev47, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call37, i32 2304
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call37, ptr %add.ptr.i, align 8
  %bus_type = getelementptr i8, ptr %call37, i32 2312
  %11 = ptrtoint ptr %bus_type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %bus_type, align 8
  %pdev53 = getelementptr i8, ptr %call37, i32 2320
  %12 = call ptr @memcpy(ptr %pdev53, ptr %pdev, i32 2040)
  %QueueSkb = getelementptr i8, ptr %call37, i32 4388
  %13 = ptrtoint ptr %QueueSkb to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 20, ptr %QueueSkb, align 4
  %MaxFrameSize = getelementptr i8, ptr %call37, i32 4448
  %14 = ptrtoint ptr %MaxFrameSize to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4550, ptr %MaxFrameSize, align 8
  store ptr %call37, ptr %add.ptr.i, align 8
  %hw = getelementptr i8, ptr %call37, i32 5184
  %slot = getelementptr i8, ptr %call37, i32 5194
  %15 = ptrtoint ptr %slot to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %slot, align 2
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call28, ptr %hw, align 8
  %ResetRequested = getelementptr i8, ptr %call37, i32 4452
  %17 = ptrtoint ptr %ResetRequested to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %ResetRequested, align 4
  %SendSkbQueue = getelementptr i8, ptr %call37, i32 4392
  %lock.i = getelementptr i8, ptr %call37, i32 4404
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.115, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %18 = ptrtoint ptr %SendSkbQueue to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %SendSkbQueue, ptr %SendSkbQueue, align 4
  %prev.i.i = getelementptr i8, ptr %call37, i32 4396
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %SendSkbQueue, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr i8, ptr %call37, i32 4400
  %20 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %qlen.i.i, align 4
  %21 = ptrtoint ptr %call28 to i32
  %base_addr = getelementptr inbounds %struct.net_device, ptr %call37, i32 0, i32 5
  %22 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %base_addr, align 32
  %call61 = tail call fastcc i32 @skfp_driver_init(ptr noundef nonnull %call37)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end45.err_out4_crit_edge

if.end45.err_out4_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out4

if.end64:                                         ; preds = %if.end45
  %call65 = tail call i32 @register_netdev(ptr noundef nonnull %call37) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %err_out5

if.end68:                                         ; preds = %if.end64
  %23 = load i32, ptr @num_boards, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr @num_boards, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call37, ptr %driver_data.i.i, align 4
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %25 = ptrtoint ptr %subsystem_device to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %subsystem_device, align 2
  %27 = and i16 %26, -256
  %28 = zext i16 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.132)
  switch i16 %27, label %do.end87 [
    i16 21760, label %if.end68.do.end80_crit_edge
    i16 22528, label %if.end68.do.end80_crit_edge160
  ]

if.end68.do.end80_crit_edge160:                   ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end80

if.end68.do.end80_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end80

do.end80:                                         ; preds = %if.end68.do.end80_crit_edge, %if.end68.do.end80_crit_edge160
  %conv83 = zext i16 %26 to i32
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull %call37, i32 noundef %conv83) #14
  br label %cleanup

do.end87:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull %call37) #14
  br label %cleanup

err_out5:                                         ; preds = %if.end64
  %SharedMemAddr = getelementptr i8, ptr %call37, i32 4380
  %29 = ptrtoint ptr %SharedMemAddr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %SharedMemAddr, align 4
  %tobool94.not = icmp eq ptr %30, null
  br i1 %tobool94.not, label %err_out5.if.end101_crit_edge, label %if.then95

err_out5.if.end101_crit_edge:                     ; preds = %err_out5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

if.then95:                                        ; preds = %err_out5
  call void @__sanitizer_cov_trace_pc() #13
  %SharedMemSize = getelementptr i8, ptr %call37, i32 4372
  %31 = ptrtoint ptr %SharedMemSize to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %SharedMemSize, align 4
  %SharedMemDMA = getelementptr i8, ptr %call37, i32 4384
  %33 = ptrtoint ptr %SharedMemDMA to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %SharedMemDMA, align 8
  tail call void @dma_free_attrs(ptr noundef %dev47, i32 noundef %32, ptr noundef nonnull %30, i32 noundef %34, i32 noundef 0) #11
  br label %if.end101

if.end101:                                        ; preds = %if.then95, %err_out5.if.end101_crit_edge
  %LocalRxBuffer = getelementptr i8, ptr %call37, i32 5032
  %35 = ptrtoint ptr %LocalRxBuffer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %LocalRxBuffer, align 8
  %LocalRxBufferDMA = getelementptr i8, ptr %call37, i32 5036
  %37 = ptrtoint ptr %LocalRxBufferDMA to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %LocalRxBufferDMA, align 4
  tail call void @dma_free_attrs(ptr noundef %dev47, i32 noundef 4550, ptr noundef %36, i32 noundef %38, i32 noundef 0) #11
  br label %err_out4

err_out4:                                         ; preds = %if.end101, %if.end45.err_out4_crit_edge
  %err.0 = phi i32 [ %call61, %if.end45.err_out4_crit_edge ], [ %call65, %if.end101 ]
  tail call void @free_netdev(ptr noundef nonnull %call37) #11
  br label %err_out3

err_out3:                                         ; preds = %err_out4, %do.end42
  %err.1 = phi i32 [ %err.0, %err_out4 ], [ -12, %do.end42 ]
  tail call void @iounmap(ptr noundef nonnull %call28) #11
  br label %err_out2

err_out2:                                         ; preds = %err_out3, %do.end33, %do.end22
  %err.2 = phi i32 [ %err.1, %err_out3 ], [ -5, %do.end33 ], [ -5, %do.end22 ]
  tail call void @pci_release_regions(ptr noundef %pdev) #11
  br label %err_out1

err_out1:                                         ; preds = %err_out2, %if.end13.err_out1_crit_edge
  %err.3 = phi i32 [ %call14, %if.end13.err_out1_crit_edge ], [ %err.2, %err_out2 ]
  tail call void @pci_disable_device(ptr noundef %pdev) #11
  br label %cleanup

cleanup:                                          ; preds = %err_out1, %do.end87, %do.end80, %if.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %err_out1 ], [ %call10, %if.end9.cleanup_crit_edge ], [ 0, %do.end87 ], [ 0, %do.end80 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @skfp_remove_one(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_netdev(ptr noundef %1) #11
  %SharedMemAddr = getelementptr i8, ptr %1, i32 4380
  %2 = ptrtoint ptr %SharedMemAddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %SharedMemAddr, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %SharedMemSize = getelementptr i8, ptr %1, i32 4372
  %4 = ptrtoint ptr %SharedMemSize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %SharedMemSize, align 4
  %SharedMemDMA = getelementptr i8, ptr %1, i32 4384
  %6 = ptrtoint ptr %SharedMemDMA to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %SharedMemDMA, align 8
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %5, ptr noundef nonnull %3, i32 noundef %7, i32 noundef 0) #11
  %8 = ptrtoint ptr %SharedMemAddr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %SharedMemAddr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %LocalRxBuffer = getelementptr i8, ptr %1, i32 5032
  %9 = ptrtoint ptr %LocalRxBuffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %LocalRxBuffer, align 8
  %tobool9.not = icmp eq ptr %10, null
  br i1 %tobool9.not, label %if.end.if.end17_crit_edge, label %if.then10

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %LocalRxBufferDMA = getelementptr i8, ptr %1, i32 5036
  %11 = ptrtoint ptr %LocalRxBufferDMA to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %LocalRxBufferDMA, align 4
  tail call void @dma_free_attrs(ptr noundef %dev11, i32 noundef 4550, ptr noundef nonnull %10, i32 noundef %12, i32 noundef 0) #11
  %13 = ptrtoint ptr %LocalRxBuffer to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %LocalRxBuffer, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then10, %if.end.if.end17_crit_edge
  %hw = getelementptr i8, ptr %1, i32 5184
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 8
  tail call void @iounmap(ptr noundef %15) #11
  tail call void @pci_release_regions(ptr noundef %pdev) #11
  tail call void @free_netdev(ptr noundef %1) #11
  tail call void @pci_disable_device(ptr noundef %pdev) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_fddidev(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @skfp_driver_init(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skfp_driver_init.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@skfp_driver_init, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @skfp_driver_init.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.117) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %base_addr4 = getelementptr i8, ptr %dev, i32 4360
  %2 = ptrtoint ptr %base_addr4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %base_addr4, align 8
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq, align 4
  %conv = trunc i32 %4 to i16
  %irq5 = getelementptr i8, ptr %dev, i32 5190
  %5 = ptrtoint ptr %irq5 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %irq5, align 2
  %DriverLock = getelementptr i8, ptr %dev, i32 5136
  tail call void @__raw_spin_lock_init(ptr noundef %DriverLock, ptr noundef nonnull @.str.118, ptr noundef nonnull @skfp_driver_init.__key, i16 noundef signext 3) #11
  %dev10 = getelementptr i8, ptr %dev, i32 2456
  %LocalRxBufferDMA = getelementptr i8, ptr %dev, i32 5036
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev10, i32 noundef 4550, ptr noundef %LocalRxBufferDMA, i32 noundef 2592, i32 noundef 0) #11
  %LocalRxBuffer = getelementptr i8, ptr %dev, i32 5032
  %6 = ptrtoint ptr %LocalRxBuffer to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %LocalRxBuffer, align 8
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %do.end17, label %if.end25

do.end17:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119) #14
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, i32 noundef 4550) #14
  br label %fail

if.end25:                                         ; preds = %do.end
  %call26 = tail call i32 @mac_drv_check_space() #11
  %SharedMemSize = getelementptr i8, ptr %dev, i32 4372
  %7 = ptrtoint ptr %SharedMemSize to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call26, ptr %SharedMemSize, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skfp_driver_init.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@skfp_driver_init, %if.then39)) #11
          to label %do.end43 [label %if.then39], !srcloc !341

if.then39:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %SharedMemSize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %SharedMemSize, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @skfp_driver_init.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.123, i32 noundef %9) #11
  br label %do.end43

do.end43:                                         ; preds = %if.then39, %if.end25
  %10 = ptrtoint ptr %SharedMemSize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %SharedMemSize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %if.else, label %if.then46

if.then46:                                        ; preds = %do.end43
  %add = add i32 %11, 16
  %12 = ptrtoint ptr %SharedMemSize to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %SharedMemSize, align 4
  %SharedMemDMA = getelementptr i8, ptr %dev, i32 4384
  %call.i200 = tail call ptr @dma_alloc_attrs(ptr noundef %dev10, i32 noundef %add, ptr noundef %SharedMemDMA, i32 noundef 2592, i32 noundef 0) #11
  %SharedMemAddr = getelementptr i8, ptr %dev, i32 4380
  %13 = ptrtoint ptr %SharedMemAddr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i200, ptr %SharedMemAddr, align 4
  %tobool53.not = icmp eq ptr %call.i200, null
  br i1 %tobool53.not, label %do.end57, label %if.then46.if.end68_crit_edge

if.then46.if.end68_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

do.end57:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119) #14
  %14 = ptrtoint ptr %SharedMemSize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %SharedMemSize, align 4
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, i32 noundef %15) #14
  br label %fail

if.else:                                          ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #13
  %SharedMemAddr67 = getelementptr i8, ptr %dev, i32 4380
  %16 = ptrtoint ptr %SharedMemAddr67 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %SharedMemAddr67, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.else, %if.then46.if.end68_crit_edge
  %SharedMemHeap = getelementptr i8, ptr %dev, i32 4376
  %17 = ptrtoint ptr %SharedMemHeap to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %SharedMemHeap, align 8
  tail call void @card_stop(ptr noundef %add.ptr.i) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skfp_driver_init.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@skfp_driver_init, %if.then81)) #11
          to label %do.end84 [label %if.then81], !srcloc !341

if.then81:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @skfp_driver_init.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.129) #11
  br label %do.end84

do.end84:                                         ; preds = %if.then81, %if.end68
  %call85 = tail call i32 @mac_drv_init(ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86.not = icmp eq i32 %call85, 0
  br i1 %cmp86.not, label %if.end105, label %do.body89

do.body89:                                        ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skfp_driver_init.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@skfp_driver_init, %if.then101)) #11
          to label %fail [label %if.then101], !srcloc !341

if.then101:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @skfp_driver_init.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.130) #11
  br label %fail

if.end105:                                        ; preds = %do.end84
  tail call void @read_address(ptr noundef %add.ptr.i, ptr noundef null) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skfp_driver_init.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@skfp_driver_init, %if.then118)) #11
          to label %do.end122 [label %if.then118], !srcloc !341

if.then118:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #13
  %fddi_canon_addr = getelementptr i8, ptr %dev, i32 5242
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @skfp_driver_init.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.131, ptr noundef %fddi_canon_addr) #11
  br label %do.end122

do.end122:                                        ; preds = %if.then118, %if.end105
  %fddi_canon_addr124 = getelementptr i8, ptr %dev, i32 5242
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %fddi_canon_addr124, i32 noundef 6) #11
  tail call void @smt_reset_defaults(ptr noundef %add.ptr.i, i32 noundef 0) #11
  br label %cleanup

fail:                                             ; preds = %if.then101, %do.body89, %do.end57, %do.end17
  %SharedMemAddr127 = getelementptr i8, ptr %dev, i32 4380
  %18 = ptrtoint ptr %SharedMemAddr127 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %SharedMemAddr127, align 4
  %tobool128.not = icmp eq ptr %19, null
  br i1 %tobool128.not, label %fail.if.end136_crit_edge, label %if.then129

fail.if.end136_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end136

if.then129:                                       ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #13
  %SharedMemSize132 = getelementptr i8, ptr %dev, i32 4372
  %20 = ptrtoint ptr %SharedMemSize132 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %SharedMemSize132, align 4
  %SharedMemDMA134 = getelementptr i8, ptr %dev, i32 4384
  %22 = ptrtoint ptr %SharedMemDMA134 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %SharedMemDMA134, align 8
  tail call void @dma_free_attrs(ptr noundef %dev10, i32 noundef %21, ptr noundef nonnull %19, i32 noundef %23, i32 noundef 0) #11
  %24 = ptrtoint ptr %SharedMemAddr127 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %SharedMemAddr127, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.then129, %fail.if.end136_crit_edge
  %25 = ptrtoint ptr %LocalRxBuffer to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %LocalRxBuffer, align 8
  %tobool138.not = icmp eq ptr %26, null
  br i1 %tobool138.not, label %if.end136.cleanup_crit_edge, label %if.then139

if.end136.cleanup_crit_edge:                      ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then139:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %LocalRxBufferDMA to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %LocalRxBufferDMA, align 4
  tail call void @dma_free_attrs(ptr noundef %dev10, i32 noundef 4550, ptr noundef nonnull %26, i32 noundef %28, i32 noundef 0) #11
  %29 = ptrtoint ptr %LocalRxBuffer to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %LocalRxBuffer, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then139, %if.end136.cleanup_crit_edge, %do.end122
  %retval.0 = phi i32 [ 0, %do.end122 ], [ -5, %if.then139 ], [ -5, %if.end136.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skfp_open(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skfp_open.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@skfp_open, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @skfp_open.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.99) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @skfp_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @read_address(ptr noundef %add.ptr.i, ptr noundef null) #11
  %hw = getelementptr i8, ptr %dev, i32 5184
  %fddi_canon_addr = getelementptr i8, ptr %dev, i32 5242
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %fddi_canon_addr, i32 noundef 6) #11
  %call9 = tail call i32 @init_smt(ptr noundef %add.ptr.i, ptr noundef null) #11
  %call10 = tail call zeroext i16 @smt_online(ptr noundef %add.ptr.i, i32 noundef 1) #11
  %is_imask = getelementptr i8, ptr %dev, i32 5204
  %2 = ptrtoint ptr %is_imask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %is_imask, align 4
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !343
  tail call void @arm_heavy_mb() #11
  %6 = tail call i32 @llvm.bswap.i32(i32 %3) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #11, !srcloc !344
  tail call void @mac_clear_multicast(ptr noundef %add.ptr.i) #11
  tail call void @mac_drv_rx_mode(ptr noundef %add.ptr.i, i32 noundef 4) #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %7 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %8, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skfp_close(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %hw = getelementptr i8, ptr %dev, i32 5184
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !343
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #11, !srcloc !344
  tail call void @smt_reset_defaults(ptr noundef %add.ptr.i, i32 noundef 1) #11
  tail call void @card_stop(ptr noundef %add.ptr.i) #11
  tail call void @mac_drv_clear_tx_queue(ptr noundef %add.ptr.i) #11
  tail call void @mac_drv_clear_rx_queue(ptr noundef %add.ptr.i) #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %dev) #11
  %SendSkbQueue = getelementptr i8, ptr %dev, i32 4392
  tail call void @skb_queue_purge(ptr noundef %SendSkbQueue) #11
  %QueueSkb = getelementptr i8, ptr %dev, i32 4388
  %6 = ptrtoint ptr %QueueSkb to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 20, ptr %QueueSkb, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skfp_send_pkt(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skfp_send_pkt.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@skfp_send_pkt, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @skfp_send_pkt.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.109) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %2 = add i32 %1, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 4479, i32 %2)
  %3 = icmp ult i32 %2, 4479
  br i1 %3, label %if.end7, label %if.then6

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %tx_errors = getelementptr i8, ptr %dev, i32 4476
  %4 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %tx_errors, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  tail call void @consume_skb(ptr noundef %skb) #11
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %QueueSkb = getelementptr i8, ptr %dev, i32 4388
  %8 = ptrtoint ptr %QueueSkb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %QueueSkb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp8 = icmp eq i32 %9, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %_tx.i.i30 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i.i30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i30, align 128
  %state.i.i31 = getelementptr inbounds %struct.netdev_queue, ptr %11, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i31) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %dec = add i32 %9, -1
  %12 = ptrtoint ptr %QueueSkb to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %dec, ptr %QueueSkb, align 4
  %SendSkbQueue = getelementptr i8, ptr %dev, i32 4392
  tail call void @skb_queue_tail(ptr noundef %SendSkbQueue, ptr noundef %skb) #11
  tail call fastcc void @send_queued_packets(ptr noundef %add.ptr.i)
  %13 = ptrtoint ptr %QueueSkb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %QueueSkb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp14 = icmp eq i32 %14, 0
  br i1 %cmp14, label %if.then15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %_tx.i.i33 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %15 = ptrtoint ptr %_tx.i.i33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_tx.i.i33, align 128
  %state.i.i34 = getelementptr inbounds %struct.netdev_queue, ptr %16, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i34) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end10.cleanup_crit_edge, %if.then9, %if.then6
  %retval.0 = phi i32 [ 16, %if.then9 ], [ 0, %if.then6 ], [ 0, %if.then15 ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @skfp_ctl_set_multicast_list(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %DriverLock = getelementptr i8, ptr %dev, i32 5136
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %DriverLock) #11
  tail call fastcc void @skfp_ctl_set_multicast_list_wo_lock(ptr noundef %dev)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %DriverLock, i32 noundef %call3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skfp_ctl_set_mac_address(ptr noundef %dev, ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %0 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr_len.i, align 1
  %conv.i = zext i8 %1 to i32
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef %conv.i) #11
  %DriverLock = getelementptr i8, ptr %dev, i32 5136
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %DriverLock) #11
  tail call fastcc void @ResetAdapter(ptr noundef %add.ptr.i)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %DriverLock, i32 noundef %call3) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skfp_siocdevprivate(ptr noundef %dev, ptr nocapture noundef readnone %rq, ptr noundef %data, i32 noundef %cmd) #0 align 64 {
entry:
  %ioc = alloca %struct.s_skfp_ioctl, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ioc) #11
  %0 = getelementptr inbounds %struct.s_skfp_ioctl, ptr %ioc, i32 0, i32 1
  %1 = getelementptr inbounds %struct.s_skfp_ioctl, ptr %ioc, i32 0, i32 2
  %2 = ptrtoint ptr %ioc to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %ioc, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.114, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 8, i32 -1226833920) #15, !srcloc !345
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !342

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ioc, i32 noundef 8) #11
  %4 = call i32 @llvm.read_register.i32(metadata !331) #11
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #10, !srcloc !346
  %and.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !347
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !348
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ioc, ptr noundef %data, i32 noundef 8) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #11, !srcloc !347
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !348
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !342

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 8, %entry.if.then11.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 8, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %ioc, i32 %sub.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %8 = ptrtoint ptr %ioc to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ioc, align 8
  %10 = zext i16 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.133)
  switch i16 %9, label %do.end [
    i16 5, label %sw.bb
    i16 6, label %sw.bb12
  ]

sw.bb:                                            ; preds = %if.end
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 576, ptr %0, align 2
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %MacStat.i = getelementptr i8, ptr %dev, i32 4456
  %port_bs_flag.i = getelementptr i8, ptr %dev, i32 4936
  %14 = ptrtoint ptr %port_bs_flag.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4660, ptr %port_bs_flag.i, align 8
  %arrayidx4.i = getelementptr i8, ptr %dev, i32 4940
  %15 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 22136, ptr %arrayidx4.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.114, i32 noundef 174) #11
  %call.i.i25 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i25, label %sw.bb.cleanup_crit_edge, label %if.end.i.i28

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i28:                                     ; preds = %sw.bb
  %16 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 576, i32 -1226833920) #15, !srcloc !349
  %asmresult.i.i27 = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i27)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i27, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i28.cleanup_crit_edge

if.end.i.i28.cleanup_crit_edge:                   ; preds = %if.end.i.i28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i28
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i29 = call zeroext i1 @__kasan_check_read(ptr noundef %MacStat.i, i32 noundef 576) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %13, ptr noundef %MacStat.i, i32 noundef 576) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool11.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool11.not, i32 0, i32 -14
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  %call13 = call zeroext i1 @capable(i32 noundef 12) #11
  br i1 %call13, label %if.else, label %sw.bb12.cleanup_crit_edge

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  %MacStat = getelementptr i8, ptr %dev, i32 4456
  %17 = call ptr @memset(ptr %MacStat, i32 0, i32 576)
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %9 to i32
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %dev, i32 noundef %conv) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.else, %sw.bb12.cleanup_crit_edge, %copy_to_user.exit, %if.end.i.i28.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -95, %do.end ], [ 0, %if.else ], [ -1, %sw.bb12.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %sw.bb.cleanup_crit_edge ], [ -14, %if.end.i.i28.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ioc) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal ptr @skfp_ctl_get_stats(ptr noundef writeonly %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %MacStat = getelementptr i8, ptr %dev, i32 4456
  %port_bs_flag = getelementptr i8, ptr %dev, i32 4936
  %0 = ptrtoint ptr %port_bs_flag to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4660, ptr %port_bs_flag, align 8
  %arrayidx4 = getelementptr i8, ptr %dev, i32 4940
  %1 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 22136, ptr %arrayidx4, align 4
  ret ptr %MacStat
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skfp_interrupt(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %hw = getelementptr i8, ptr %dev_id, i32 5184
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !350
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !351
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 8
  %add.ptr4 = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #11, !srcloc !350
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !351
  %is_imask = getelementptr i8, ptr %dev_id, i32 5204
  %7 = ptrtoint ptr %is_imask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %is_imask, align 4
  %and = and i32 %8, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp7 = icmp eq i32 %and, 0
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 8
  %add.ptr12 = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !343
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 0) #11, !srcloc !344
  %DriverLock = getelementptr i8, ptr %dev_id, i32 5136
  tail call void @_raw_spin_lock(ptr noundef %DriverLock) #11
  tail call void @fddi_isr(ptr noundef %add.ptr.i) #11
  %ResetRequested = getelementptr i8, ptr %dev_id, i32 4452
  %11 = ptrtoint ptr %ResetRequested to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ResetRequested, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.end9.if.end17_crit_edge, label %if.then14

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @ResetAdapter(ptr noundef %add.ptr.i)
  %13 = ptrtoint ptr %ResetRequested to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %ResetRequested, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end9.if.end17_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %DriverLock) #11
  %14 = ptrtoint ptr %is_imask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %is_imask, align 4
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 8
  %add.ptr23 = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !343
  tail call void @arm_heavy_mb() #11
  %18 = tail call i32 @llvm.bswap.i32(i32 %15) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %18) #11, !srcloc !344
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end17 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @read_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_smt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @smt_online(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mac_clear_multicast(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mac_drv_rx_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fddi_isr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ResetAdapter(ptr noundef %smc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ResetAdapter.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ResetAdapter, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ResetAdapter.__UNIQUE_ID_ddebug363, ptr noundef nonnull @.str.101) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @card_stop(ptr noundef %smc) #11
  tail call void @mac_drv_clear_tx_queue(ptr noundef %smc) #11
  tail call void @mac_drv_clear_rx_queue(ptr noundef %smc) #11
  tail call void @smt_reset_defaults(ptr noundef %smc, i32 noundef 1) #11
  %0 = ptrtoint ptr %smc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smc, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %call3 = tail call i32 @init_smt(ptr noundef %smc, ptr noundef %3) #11
  %call4 = tail call zeroext i16 @smt_online(ptr noundef %smc, i32 noundef 1) #11
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %is_imask = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 8
  %4 = ptrtoint ptr %is_imask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %is_imask, align 4
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !343
  tail call void @arm_heavy_mb() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %5) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #11, !srcloc !344
  %9 = ptrtoint ptr %smc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %smc, align 8
  tail call fastcc void @skfp_ctl_set_multicast_list_wo_lock(ptr noundef %10)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @card_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mac_drv_clear_tx_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mac_drv_clear_rx_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_reset_defaults(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @skfp_ctl_set_multicast_list_wo_lock(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mac_drv_rx_mode(ptr noundef %add.ptr.i, i32 noundef 3) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skfp_ctl_set_multicast_list_wo_lock.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@skfp_ctl_set_multicast_list_wo_lock, %if.then5)) #11
          to label %if.end117 [label %if.then5], !srcloc !341

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @skfp_ctl_set_multicast_list_wo_lock.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.103) #11
  br label %if.end117

if.else:                                          ; preds = %entry
  tail call void @mac_drv_rx_mode(ptr noundef %add.ptr.i, i32 noundef 4) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skfp_ctl_set_multicast_list_wo_lock.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@skfp_ctl_set_multicast_list_wo_lock, %if.then18)) #11
          to label %do.end21 [label %if.then18], !srcloc !341

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @skfp_ctl_set_multicast_list_wo_lock.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.104) #11
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %if.else
  tail call void @mac_clear_multicast(ptr noundef %add.ptr.i) #11
  tail call void @mac_drv_rx_mode(ptr noundef %add.ptr.i, i32 noundef 2) #11
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and23 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.else42, label %if.then25

if.then25:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mac_drv_rx_mode(ptr noundef %add.ptr.i, i32 noundef 1) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skfp_ctl_set_multicast_list_wo_lock.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@skfp_ctl_set_multicast_list_wo_lock, %if.then38)) #11
          to label %if.end116 [label %if.then38], !srcloc !341

if.then38:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @skfp_ctl_set_multicast_list_wo_lock.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.105) #11
  br label %if.end116

if.else42:                                        ; preds = %do.end21
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %do.body99, label %if.then43

if.then43:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %5)
  %cmp46 = icmp slt i32 %5, 33
  br i1 %cmp46, label %for.cond.preheader, label %if.else80

for.cond.preheader:                               ; preds = %if.then43
  %6 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %6)
  %ha.0155 = load ptr, ptr %mc, align 4
  %cmp53.not156 = icmp eq ptr %ha.0155, %mc
  br i1 %cmp53.not156, label %for.cond.preheader.if.end116_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end116_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end116

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %ha.0157 = phi ptr [ %ha.0, %for.inc.for.body_crit_edge ], [ %ha.0155, %for.cond.preheader.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0157, i32 0, i32 2
  %call56 = tail call i32 @mac_add_multicast(ptr noundef %add.ptr.i, ptr noundef %addr, i32 noundef 1) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skfp_ctl_set_multicast_list_wo_lock.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@skfp_ctl_set_multicast_list_wo_lock, %if.then69)) #11
          to label %for.inc [label %if.then69], !srcloc !341

if.then69:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @skfp_ctl_set_multicast_list_wo_lock.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.106, ptr noundef %addr) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then69, %for.body
  %7 = ptrtoint ptr %ha.0157 to i32
  call void @__asan_load4_noabort(i32 %7)
  %ha.0 = load ptr, ptr %ha.0157, align 4
  %cmp53.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp53.not, label %for.inc.if.end116_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.if.end116_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end116

if.else80:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mac_drv_rx_mode(ptr noundef %add.ptr.i, i32 noundef 1) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skfp_ctl_set_multicast_list_wo_lock.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@skfp_ctl_set_multicast_list_wo_lock, %if.then93)) #11
          to label %if.end116 [label %if.then93], !srcloc !341

if.then93:                                        ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @skfp_ctl_set_multicast_list_wo_lock.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.105) #11
  br label %if.end116

do.body99:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skfp_ctl_set_multicast_list_wo_lock.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@skfp_ctl_set_multicast_list_wo_lock, %if.then111)) #11
          to label %if.end116 [label %if.then111], !srcloc !341

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @skfp_ctl_set_multicast_list_wo_lock.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.107) #11
  br label %if.end116

if.end116:                                        ; preds = %if.then111, %do.body99, %if.then93, %if.else80, %for.inc.if.end116_crit_edge, %for.cond.preheader.if.end116_crit_edge, %if.then38, %if.then25
  tail call void @mac_update_multicast(ptr noundef %add.ptr.i) #11
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.then5, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mac_add_multicast(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mac_update_multicast(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mac_drv_check_space() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mac_drv_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 135)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 135)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !32, !34, !35, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !65, !66, !68, !69, !70, !72, !73, !75, !76, !77, !78, !80, !81, !83, !84, !86, !87, !88, !90, !91, !93, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !175, !176, !178, !179, !181, !182, !184, !185, !187, !188, !189, !191, !192, !194, !195, !196, !198, !199, !201, !202, !204, !205, !207, !208, !210, !211, !212, !214, !216, !218, !220, !221, !222, !224, !225, !226, !228, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !252, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !267, !269, !270, !272, !273, !275, !277, !278, !280, !281, !282, !284, !285, !286, !287, !289, !290, !292, !294, !296, !297, !299, !300, !301, !303, !304, !306, !307, !308, !310, !311, !312, !314, !315, !317, !318, !320, !321, !322, !324, !325, !327, !328, !330}
!llvm.named.register.sp = !{!331}
!llvm.module.flags = !{!332, !333, !334, !335, !336, !337, !338, !339}
!llvm.ident = !{!340}

!0 = !{ptr @__UNIQUE_ID_file341, !1, !"__UNIQUE_ID_file341", i1 false, i1 false}
!1 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 156, i32 1}
!2 = !{ptr @__UNIQUE_ID_license342, !1, !"__UNIQUE_ID_license342", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author343, !4, !"__UNIQUE_ID_author343", i1 false, i1 false}
!4 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 157, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1282, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @llc_restart_tx.__UNIQUE_ID_ddebug364, !6, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1312, i32 2}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mac_drv_get_space.__UNIQUE_ID_ddebug365, !12, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1316, i32 3}
!17 = !{ptr @mac_drv_get_space._entry, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @mac_drv_get_space._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1321, i32 2}
!21 = !{ptr @mac_drv_get_space.__UNIQUE_ID_ddebug366, !20, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1322, i32 2}
!24 = !{ptr @mac_drv_get_space.__UNIQUE_ID_ddebug367, !23, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1323, i32 2}
!27 = !{ptr @mac_drv_get_space.__UNIQUE_ID_ddebug368, !26, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1353, i32 2}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @mac_drv_get_desc_mem.__UNIQUE_ID_ddebug369, !29, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1362, i32 2}
!34 = !{ptr @mac_drv_get_desc_mem.__UNIQUE_ID_ddebug370, !33, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1363, i32 2}
!37 = !{ptr @mac_drv_get_desc_mem.__UNIQUE_ID_ddebug371, !36, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1366, i32 3}
!40 = !{ptr @mac_drv_get_desc_mem._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @mac_drv_get_desc_mem._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1498, i32 2}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @mac_drv_tx_complete.__UNIQUE_ID_ddebug372, !43, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1502, i32 3}
!48 = !{ptr @mac_drv_tx_complete.__UNIQUE_ID_ddebug373, !47, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1518, i32 2}
!51 = !{ptr @mac_drv_tx_complete.__UNIQUE_ID_ddebug374, !50, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1571, i32 2}
!54 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @mac_drv_rx_complete.__UNIQUE_ID_ddebug375, !53, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1574, i32 3}
!58 = !{ptr @mac_drv_rx_complete._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mac_drv_rx_complete._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1580, i32 3}
!62 = !{ptr @mac_drv_rx_complete.__UNIQUE_ID_ddebug376, !61, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1610, i32 3}
!65 = !{ptr @mac_drv_rx_complete.__UNIQUE_ID_ddebug377, !64, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1617, i32 4}
!68 = !{ptr @mac_drv_rx_complete._entry.24, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @mac_drv_rx_complete._entry_ptr.26, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1655, i32 2}
!72 = !{ptr @mac_drv_rx_complete.__UNIQUE_ID_ddebug378, !71, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1693, i32 3}
!75 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @mac_drv_requeue_rxd._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @mac_drv_requeue_rxd._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1704, i32 4}
!80 = !{ptr @mac_drv_requeue_rxd.__UNIQUE_ID_ddebug379, !79, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1718, i32 5}
!83 = !{ptr @mac_drv_requeue_rxd.__UNIQUE_ID_ddebug380, !82, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1763, i32 2}
!86 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @mac_drv_fill_rxd.__UNIQUE_ID_ddebug381, !85, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1771, i32 3}
!90 = !{ptr @mac_drv_fill_rxd.__UNIQUE_ID_ddebug382, !89, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!91 = !{ptr @mac_drv_fill_rxd.__UNIQUE_ID_ddebug383, !92, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!92 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1789, i32 4}
!93 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1800, i32 2}
!95 = !{ptr @mac_drv_fill_rxd.__UNIQUE_ID_ddebug384, !94, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1826, i32 2}
!98 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @mac_drv_clear_rxd.__UNIQUE_ID_ddebug385, !97, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1830, i32 3}
!102 = !{ptr @mac_drv_clear_rxd._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @mac_drv_clear_rxd._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.39, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1883, i32 2}
!106 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @mac_drv_rx_init.__UNIQUE_ID_ddebug386, !105, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!108 = !{ptr @.str.41, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1888, i32 3}
!110 = !{ptr @mac_drv_rx_init.__UNIQUE_ID_ddebug387, !109, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!111 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1889, i32 3}
!113 = !{ptr @mac_drv_rx_init.__UNIQUE_ID_ddebug388, !112, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!114 = !{ptr @.str.43, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1895, i32 3}
!116 = !{ptr @mac_drv_rx_init.__UNIQUE_ID_ddebug389, !115, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!117 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1945, i32 2}
!119 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @ring_status_indication.__UNIQUE_ID_ddebug390, !118, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!121 = !{ptr @.str.46, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1947, i32 3}
!123 = !{ptr @ring_status_indication.__UNIQUE_ID_ddebug391, !122, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!124 = !{ptr @.str.47, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1949, i32 3}
!126 = !{ptr @ring_status_indication.__UNIQUE_ID_ddebug392, !125, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!127 = !{ptr @.str.48, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1951, i32 3}
!129 = !{ptr @ring_status_indication.__UNIQUE_ID_ddebug393, !128, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!130 = !{ptr @.str.49, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1953, i32 3}
!132 = !{ptr @ring_status_indication.__UNIQUE_ID_ddebug394, !131, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!133 = !{ptr @.str.50, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1955, i32 3}
!135 = !{ptr @ring_status_indication.__UNIQUE_ID_ddebug395, !134, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!136 = !{ptr @.str.51, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1957, i32 3}
!138 = !{ptr @ring_status_indication.__UNIQUE_ID_ddebug396, !137, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!139 = !{ptr @.str.52, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1959, i32 3}
!141 = !{ptr @ring_status_indication.__UNIQUE_ID_ddebug397, !140, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!142 = !{ptr @.str.53, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1961, i32 3}
!144 = !{ptr @ring_status_indication.__UNIQUE_ID_ddebug398, !143, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!145 = !{ptr @.str.54, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1963, i32 3}
!147 = !{ptr @ring_status_indication.__UNIQUE_ID_ddebug399, !146, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!148 = !{ptr @.str.55, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1965, i32 3}
!150 = !{ptr @ring_status_indication.__UNIQUE_ID_ddebug400, !149, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!151 = !{ptr @.str.56, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1967, i32 3}
!153 = !{ptr @ring_status_indication.__UNIQUE_ID_ddebug401, !152, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!154 = !{ptr @.str.57, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1969, i32 3}
!156 = !{ptr @ring_status_indication.__UNIQUE_ID_ddebug402, !155, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!157 = !{ptr @.str.58, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1971, i32 3}
!159 = !{ptr @ring_status_indication.__UNIQUE_ID_ddebug403, !158, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!160 = !{ptr @.str.59, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1973, i32 3}
!162 = !{ptr @ring_status_indication.__UNIQUE_ID_ddebug404, !161, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!163 = !{ptr @.str.60, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1975, i32 3}
!165 = !{ptr @ring_status_indication.__UNIQUE_ID_ddebug405, !164, !"__UNIQUE_ID_ddebug405", i1 false, i1 false}
!166 = !{ptr @.str.61, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1977, i32 3}
!168 = !{ptr @ring_status_indication.__UNIQUE_ID_ddebug406, !167, !"__UNIQUE_ID_ddebug406", i1 false, i1 false}
!169 = !{ptr @.str.62, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1978, i32 2}
!171 = !{ptr @ring_status_indication.__UNIQUE_ID_ddebug407, !170, !"__UNIQUE_ID_ddebug407", i1 false, i1 false}
!172 = !{ptr @.str.63, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 2021, i32 2}
!174 = !{ptr @.str.64, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @smt_stat_counter.__UNIQUE_ID_ddebug408, !173, !"__UNIQUE_ID_ddebug408", i1 false, i1 false}
!176 = !{ptr @.str.65, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 2024, i32 3}
!178 = !{ptr @smt_stat_counter.__UNIQUE_ID_ddebug409, !177, !"__UNIQUE_ID_ddebug409", i1 false, i1 false}
!179 = !{ptr @.str.66, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 2027, i32 3}
!181 = !{ptr @smt_stat_counter.__UNIQUE_ID_ddebug410, !180, !"__UNIQUE_ID_ddebug410", i1 false, i1 false}
!182 = !{ptr @.str.67, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 2031, i32 3}
!184 = !{ptr @smt_stat_counter.__UNIQUE_ID_ddebug411, !183, !"__UNIQUE_ID_ddebug411", i1 false, i1 false}
!185 = !{ptr @.str.68, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 2220, i32 2}
!187 = !{ptr @.str.69, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @drv_reset_indication.__UNIQUE_ID_ddebug412, !186, !"__UNIQUE_ID_ddebug412", i1 false, i1 false}
!189 = !{ptr @__initcall__kmod_skfp__413_2233_skfddi_pci_driver_init6, !190, !"__initcall__kmod_skfp__413_2233_skfddi_pci_driver_init6", i1 false, i1 false}
!190 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 2233, i32 1}
!191 = !{ptr @__exitcall_skfddi_pci_driver_exit, !190, !"__exitcall_skfddi_pci_driver_exit", i1 false, i1 false}
!192 = !{ptr @.str.70, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1118, i32 2}
!194 = !{ptr @.str.71, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @send_queued_packets.__UNIQUE_ID_ddebug358, !193, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!196 = !{ptr @.str.72, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1124, i32 4}
!198 = !{ptr @send_queued_packets.__UNIQUE_ID_ddebug359, !197, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!199 = !{ptr @.str.73, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1155, i32 5}
!201 = !{ptr @send_queued_packets.__UNIQUE_ID_ddebug360, !200, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!202 = !{ptr @.str.74, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1157, i32 5}
!204 = !{ptr @send_queued_packets.__UNIQUE_ID_ddebug361, !203, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!205 = !{ptr @.str.75, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1159, i32 5}
!207 = !{ptr @send_queued_packets.__UNIQUE_ID_ddebug362, !206, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!208 = distinct !{null, !209, !"__already_done", i1 false, i1 false}
!209 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!210 = !{ptr @.str.76, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.77, !209, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.78, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 2227, i32 11}
!214 = !{ptr @skfddi_pci_driver, !215, !"skfddi_pci_driver", i1 false, i1 false}
!215 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 2226, i32 26}
!216 = !{ptr @skfddi_pci_tbl, !217, !"skfddi_pci_tbl", i1 false, i1 false}
!217 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 151, i32 35}
!218 = !{ptr @.str.79, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 210, i32 2}
!220 = !{ptr @.str.80, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @skfp_init_one.__UNIQUE_ID_ddebug344, !219, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!222 = !{ptr @.str.81, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 213, i32 3}
!224 = !{ptr @skfp_init_one._entry, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @skfp_init_one._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.82, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 67, i32 2}
!228 = !{ptr @.str.84, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 227, i32 3}
!230 = !{ptr @skfp_init_one._entry.83, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @skfp_init_one._entry_ptr.85, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.87, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 243, i32 3}
!234 = !{ptr @skfp_init_one._entry.86, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @skfp_init_one._entry_ptr.88, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.90, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 251, i32 3}
!238 = !{ptr @skfp_init_one._entry.89, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @skfp_init_one._entry_ptr.91, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.93, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 290, i32 3}
!242 = !{ptr @skfp_init_one._entry.92, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @skfp_init_one._entry_ptr.94, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.96, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 294, i32 3}
!246 = !{ptr @skfp_init_one._entry.95, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @skfp_init_one._entry_ptr.97, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @num_boards, !249, !"num_boards", i1 false, i1 false}
!249 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 161, i32 12}
!250 = !{ptr @skfp_netdev_ops, !251, !"skfp_netdev_ops", i1 false, i1 false}
!251 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 163, i32 36}
!252 = !{ptr @.str.98, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 486, i32 2}
!254 = !{ptr @.str.99, !253, !"<string literal>", i1 false, i1 false}
!255 = !{ptr @skfp_open.__UNIQUE_ID_ddebug350, !253, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!256 = !{ptr @.str.100, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1236, i32 2}
!258 = !{ptr @.str.101, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @ResetAdapter.__UNIQUE_ID_ddebug363, !257, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!260 = !{ptr @.str.102, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 857, i32 3}
!262 = !{ptr @.str.103, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @skfp_ctl_set_multicast_list_wo_lock.__UNIQUE_ID_ddebug351, !261, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!264 = !{ptr @.str.104, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 862, i32 3}
!266 = !{ptr @skfp_ctl_set_multicast_list_wo_lock.__UNIQUE_ID_ddebug352, !265, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!267 = !{ptr @.str.105, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 870, i32 4}
!269 = !{ptr @skfp_ctl_set_multicast_list_wo_lock.__UNIQUE_ID_ddebug353, !268, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!270 = !{ptr @.str.106, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 881, i32 6}
!272 = !{ptr @skfp_ctl_set_multicast_list_wo_lock.__UNIQUE_ID_ddebug354, !271, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!273 = !{ptr @skfp_ctl_set_multicast_list_wo_lock.__UNIQUE_ID_ddebug355, !274, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!274 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 888, i32 5}
!275 = !{ptr @.str.107, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 892, i32 4}
!277 = !{ptr @skfp_ctl_set_multicast_list_wo_lock.__UNIQUE_ID_ddebug356, !276, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!278 = !{ptr @.str.108, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 1049, i32 2}
!280 = !{ptr @.str.109, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @skfp_send_pkt.__UNIQUE_ID_ddebug357, !279, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!282 = !{ptr @.str.110, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 987, i32 3}
!284 = !{ptr @.str.111, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @skfp_siocdevprivate._entry, !283, !"_entry", i1 false, i1 false}
!286 = !{ptr @skfp_siocdevprivate._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!287 = distinct !{null, !288, !"__already_done", i1 false, i1 false}
!288 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!289 = distinct !{null, !288, !"<string literal>", i1 false, i1 false}
!290 = distinct !{null, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!292 = !{ptr @.str.114, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!294 = !{ptr @skb_queue_head_init.__key, !295, !"__key", i1 false, i1 false}
!295 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!296 = !{ptr @.str.115, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @.str.116, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 385, i32 2}
!299 = !{ptr @.str.117, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @skfp_driver_init.__UNIQUE_ID_ddebug345, !298, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!301 = !{ptr @skfp_driver_init.__key, !302, !"__key", i1 false, i1 false}
!302 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 393, i32 2}
!303 = !{ptr @.str.118, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @.str.119, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 400, i32 3}
!306 = !{ptr @skfp_driver_init._entry, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @skfp_driver_init._entry_ptr, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.121, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 401, i32 3}
!310 = !{ptr @skfp_driver_init._entry.120, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @skfp_driver_init._entry_ptr.122, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.123, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 407, i32 2}
!314 = !{ptr @skfp_driver_init.__UNIQUE_ID_ddebug346, !313, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!315 = !{ptr @skfp_driver_init._entry.124, !316, !"_entry", i1 false, i1 false}
!316 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 416, i32 4}
!317 = !{ptr @skfp_driver_init._entry_ptr.125, !316, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.127, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 417, i32 4}
!320 = !{ptr @skfp_driver_init._entry.126, !319, !"_entry", i1 false, i1 false}
!321 = !{ptr @skfp_driver_init._entry_ptr.128, !319, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.129, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 430, i32 2}
!324 = !{ptr @skfp_driver_init.__UNIQUE_ID_ddebug347, !323, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!325 = !{ptr @.str.130, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 432, i32 3}
!327 = !{ptr @skfp_driver_init.__UNIQUE_ID_ddebug348, !326, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!328 = !{ptr @.str.131, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/net/fddi/skfp/skfddi.c", i32 436, i32 2}
!330 = !{ptr @skfp_driver_init.__UNIQUE_ID_ddebug349, !329, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!331 = !{!"sp"}
!332 = !{i32 1, !"wchar_size", i32 2}
!333 = !{i32 1, !"min_enum_size", i32 4}
!334 = !{i32 8, !"branch-target-enforcement", i32 0}
!335 = !{i32 8, !"sign-return-address", i32 0}
!336 = !{i32 8, !"sign-return-address-all", i32 0}
!337 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!338 = !{i32 7, !"uwtable", i32 1}
!339 = !{i32 7, !"frame-pointer", i32 2}
!340 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!341 = !{i64 2149022757, i64 2149022762, i64 2149022775, i64 2149022819, i64 2149022853, i64 2149022874}
!342 = !{!"branch_weights", i32 2000, i32 1}
!343 = !{i64 2153089101}
!344 = !{i64 5546979}
!345 = !{i64 2152325634, i64 2152325659}
!346 = !{i64 4821189}
!347 = !{i64 4821386}
!348 = !{i64 2152306619}
!349 = !{i64 2152326315, i64 2152326340}
!350 = !{i64 5547397}
!351 = !{i64 2153087746}
