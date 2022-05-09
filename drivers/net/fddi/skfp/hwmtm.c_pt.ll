; ModuleID = '/llk/IR_all_yes/drivers/net/fddi/skfp/hwmtm.c_pt.bc'
source_filename = "../drivers/net/fddi/skfp/hwmtm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.s_smt_os = type { ptr, ptr, i32, [4 x i8], %struct.pci_dev, i32, [8 x i8], i32, i32, ptr, i32, i32, %struct.sk_buff_head, i32, i8, %struct.fddi_statistics, ptr, i32, i32, %struct.hw_modul, %struct.spinlock, [4 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.114, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
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
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
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
%struct.s_mbuf = type { ptr, i16, i32, i32, [4504 x i8] }
%union.s_fp_descr = type { %struct.s_smt_fp_txd }
%struct.s_smt_fp_txd = type { i32, i32, i32, i32, ptr, ptr, %struct.s_txd_os }
%struct.s_txd_os = type { ptr, i32 }
%struct.s_smt_fp_rxd = type { i32, i32, i32, i32, ptr, ptr, %struct.s_rxd_os }
%struct.s_rxd_os = type { ptr, i32 }

@smt_free_mbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016SMT PANIC: code: %d, msg: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"smt_free_mbuf\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/net/fddi/skfp/hwmtm.c\00", [34 x i8] zeroinitializer }, align 32
@smt_free_mbuf._entry_ptr = internal global ptr @smt_free_mbuf._entry, section ".printk_index", align 4
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"HWM: smt_free_mbuf() called with NULL pointer\00", [50 x i8] zeroinitializer }, align 32
@mac_drv_repair_descr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mac_drv_repair_descr\00", [43 x i8] zeroinitializer }, align 32
@mac_drv_repair_descr._entry_ptr = internal global ptr @mac_drv_repair_descr._entry, section ".printk_index", align 4
@.str.5 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"HWM: mac_drv_repair_descr was called although the hardware wasn't stopped\00", [54 x i8] zeroinitializer }, align 32
@fddi_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fddi_isr\00", [23 x i8] zeroinitializer }, align 32
@fddi_isr._entry_ptr = internal global ptr @fddi_isr._entry, section ".printk_index", align 4
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HWM: Parity error rx queue 1\00", [35 x i8] zeroinitializer }, align 32
@fddi_isr._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 791, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fddi_isr._entry_ptr.9 = internal global ptr @fddi_isr._entry.8, section ".printk_index", align 4
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HWM: Encoding error rx queue 1\00", [33 x i8] zeroinitializer }, align 32
@fddi_isr._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fddi_isr._entry_ptr.12 = internal global ptr @fddi_isr._entry.11, section ".printk_index", align 4
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"HWM: Encoding error async tx queue\00", [61 x i8] zeroinitializer }, align 32
@fddi_isr._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 801, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@fddi_isr._entry_ptr.15 = internal global ptr @fddi_isr._entry.14, section ".printk_index", align 4
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HWM: Encoding error sync tx queue\00", [62 x i8] zeroinitializer }, align 32
@process_receive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.17, ptr @.str.2, i32 1092, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"process_receive\00", [16 x i8] zeroinitializer }, align 32
@process_receive._entry_ptr = internal global ptr @process_receive._entry, section ".printk_index", align 4
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"HWM: Out of RxD condition detected\00", [61 x i8] zeroinitializer }, align 32
@mac_drv_clear_rx_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.19, ptr @.str.2, i32 1465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mac_drv_clear_rx_queue\00", [41 x i8] zeroinitializer }, align 32
@mac_drv_clear_rx_queue._entry_ptr = internal global ptr @mac_drv_clear_rx_queue._entry, section ".printk_index", align 4
@.str.20 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"HWM: mac_drv_clear_rx_queue was called although the hardware wasn't stopped\00", [52 x i8] zeroinitializer }, align 32
@hwm_tx_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.21, ptr @.str.2, i32 1566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hwm_tx_init\00", [20 x i8] zeroinitializer }, align 32
@hwm_tx_init._entry_ptr = internal global ptr @hwm_tx_init._entry, section ".printk_index", align 4
@.str.22 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"HWM: A protocol layer has tried to send a frame with an invalid frame control\00", [50 x i8] zeroinitializer }, align 32
@mac_drv_clear_tx_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.23, ptr @.str.2, i32 2032, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mac_drv_clear_tx_queue\00", [41 x i8] zeroinitializer }, align 32
@mac_drv_clear_tx_queue._entry_ptr = internal global ptr @mac_drv_clear_tx_queue._entry, section ".printk_index", align 4
@.str.24 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"HWM: mac_drv_clear_tx_queue was called although the hardware wasn't stopped\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 65, i64 79, i64 194]
@__sancov_gen_cov_switch_values.25 = internal global [11 x i64] [i64 9, i64 32, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 8, i64 65, i64 66, i64 67, i64 79]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 67, i64 194]
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 523, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 552, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 786, i32 5 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 791, i32 5 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 796, i32 5 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 801, i32 5 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 1092, i32 5 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 1465, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 1566, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private constant [33 x i8] c"../drivers/net/fddi/skfp/hwmtm.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 2032, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @fddi_isr._entry, ptr @fddi_isr._entry.11, ptr @fddi_isr._entry.14, ptr @fddi_isr._entry.8, ptr @fddi_isr._entry_ptr, ptr @fddi_isr._entry_ptr.12, ptr @fddi_isr._entry_ptr.15, ptr @fddi_isr._entry_ptr.9, ptr @hwm_tx_init._entry, ptr @hwm_tx_init._entry_ptr, ptr @mac_drv_clear_rx_queue._entry, ptr @mac_drv_clear_rx_queue._entry_ptr, ptr @mac_drv_clear_tx_queue._entry, ptr @mac_drv_clear_tx_queue._entry_ptr, ptr @mac_drv_repair_descr._entry, ptr @mac_drv_repair_descr._entry_ptr, ptr @process_receive._entry, ptr @process_receive._entry_ptr, ptr @smt_free_mbuf._entry, ptr @smt_free_mbuf._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smt_free_mbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_drv_repair_descr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fddi_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fddi_isr._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fddi_isr._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fddi_isr._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_receive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_drv_clear_rx_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hwm_tx_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_drv_clear_tx_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mac_drv_check_space() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 19360
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mac_drv_init(ptr noundef %smc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mac_drv_get_desc_mem(ptr noundef %smc, i32 noundef 1280) #8
  %descr_p = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 2
  %0 = ptrtoint ptr %descr_p to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %descr_p, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hwm = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19
  %call1 = tail call ptr @mac_drv_get_space(ptr noundef %smc, i32 noundef 18080) #8
  %1 = ptrtoint ptr %hwm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %hwm, align 4
  %tobool4.not = icmp eq ptr %call1, null
  %. = zext i1 %tobool4.not to i32
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mac_drv_get_desc_mem(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mac_drv_get_space(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @init_driver_fplus(ptr nocapture noundef writeonly %smc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fp = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25
  %0 = ptrtoint ptr %fp to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -18045, ptr %fp, align 4
  %mdr3init = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 1
  %1 = ptrtoint ptr %mdr3init to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 129, ptr %mdr3init, align 2
  %frselreg_init = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 2
  %2 = ptrtoint ptr %frselreg_init to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -16384, ptr %frselreg_init, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @init_fddi_driver(ptr noundef %smc, ptr noundef %mac_addr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @init_board(ptr noundef %smc, ptr noundef %mac_addr) #8
  %call = tail call i32 @init_fplus(ptr noundef %smc) #8
  %hwm = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19
  %0 = ptrtoint ptr %hwm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwm, align 4
  %mb_free = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 0, i32 1
  %2 = ptrtoint ptr %mb_free to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %mb_free, align 4
  %sm_use_count = getelementptr inbounds %struct.s_mbuf, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %sm_use_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %sm_use_count, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then3.i

if.then3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %sm_use_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %sm_use_count, align 4
  %5 = ptrtoint ptr %mb_free to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mb_free, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %1, align 4
  store ptr %1, ptr %mb_free, align 4
  br label %smt_free_mbuf.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 503, ptr noundef nonnull @.str.3) #11
  br label %smt_free_mbuf.exit

smt_free_mbuf.exit:                               ; preds = %do.end.i, %if.then3.i
  %incdec.ptr = getelementptr %struct.s_mbuf, ptr %1, i32 1
  %sm_use_count.1 = getelementptr %struct.s_mbuf, ptr %1, i32 1, i32 3
  %8 = ptrtoint ptr %sm_use_count.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %sm_use_count.1, align 4
  %tobool.not.i.1 = icmp eq ptr %incdec.ptr, null
  br i1 %tobool.not.i.1, label %do.end.i.1, label %if.then3.i.1

if.then3.i.1:                                     ; preds = %smt_free_mbuf.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %sm_use_count.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %sm_use_count.1, align 4
  %10 = ptrtoint ptr %mb_free to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mb_free, align 4
  %12 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %incdec.ptr, align 4
  store ptr %incdec.ptr, ptr %mb_free, align 4
  br label %smt_free_mbuf.exit.1

do.end.i.1:                                       ; preds = %smt_free_mbuf.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 503, ptr noundef nonnull @.str.3) #11
  br label %smt_free_mbuf.exit.1

smt_free_mbuf.exit.1:                             ; preds = %do.end.i.1, %if.then3.i.1
  %incdec.ptr.1 = getelementptr %struct.s_mbuf, ptr %1, i32 2
  %sm_use_count.2 = getelementptr %struct.s_mbuf, ptr %1, i32 2, i32 3
  %13 = ptrtoint ptr %sm_use_count.2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %sm_use_count.2, align 4
  %tobool.not.i.2 = icmp eq ptr %incdec.ptr.1, null
  br i1 %tobool.not.i.2, label %do.end.i.2, label %if.then3.i.2

if.then3.i.2:                                     ; preds = %smt_free_mbuf.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %sm_use_count.2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %sm_use_count.2, align 4
  %15 = ptrtoint ptr %mb_free to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mb_free, align 4
  %17 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %incdec.ptr.1, align 4
  store ptr %incdec.ptr.1, ptr %mb_free, align 4
  br label %smt_free_mbuf.exit.2

do.end.i.2:                                       ; preds = %smt_free_mbuf.exit.1
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 503, ptr noundef nonnull @.str.3) #11
  br label %smt_free_mbuf.exit.2

smt_free_mbuf.exit.2:                             ; preds = %do.end.i.2, %if.then3.i.2
  %incdec.ptr.2 = getelementptr %struct.s_mbuf, ptr %1, i32 3
  %sm_use_count.3 = getelementptr %struct.s_mbuf, ptr %1, i32 3, i32 3
  %18 = ptrtoint ptr %sm_use_count.3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %sm_use_count.3, align 4
  %tobool.not.i.3 = icmp eq ptr %incdec.ptr.2, null
  br i1 %tobool.not.i.3, label %do.end.i.3, label %if.then3.i.3

if.then3.i.3:                                     ; preds = %smt_free_mbuf.exit.2
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %sm_use_count.3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %sm_use_count.3, align 4
  %20 = ptrtoint ptr %mb_free to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mb_free, align 4
  %22 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %incdec.ptr.2, align 4
  store ptr %incdec.ptr.2, ptr %mb_free, align 4
  br label %smt_free_mbuf.exit.3

do.end.i.3:                                       ; preds = %smt_free_mbuf.exit.2
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 503, ptr noundef nonnull @.str.3) #11
  br label %smt_free_mbuf.exit.3

smt_free_mbuf.exit.3:                             ; preds = %do.end.i.3, %if.then3.i.3
  %llc_rx_tail = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 8
  %23 = ptrtoint ptr %llc_rx_tail to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %llc_rx_tail, align 4
  %llc_rx_pipe = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 7
  %24 = ptrtoint ptr %llc_rx_pipe to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %llc_rx_pipe, align 4
  %txd_tx_tail = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 11
  %25 = ptrtoint ptr %txd_tx_tail to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %txd_tx_tail, align 4
  %txd_tx_pipe = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 10
  %26 = ptrtoint ptr %txd_tx_pipe to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %txd_tx_pipe, align 4
  %pass_DB = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 5
  %27 = ptrtoint ptr %pass_DB to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %pass_DB, align 4
  %pass_NSA = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 4
  %28 = ptrtoint ptr %pass_NSA to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %pass_NSA, align 2
  %pass_SMT = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 3
  %29 = ptrtoint ptr %pass_SMT to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %pass_SMT, align 4
  %pass_llc_promisc = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 6
  %30 = ptrtoint ptr %pass_llc_promisc to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %pass_llc_promisc, align 2
  %queued_txd_mb = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 12
  %31 = ptrtoint ptr %queued_txd_mb to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %queued_txd_mb, align 4
  %queued_rx_frames = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 9
  %32 = ptrtoint ptr %queued_rx_frames to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %queued_rx_frames, align 4
  %detec_count = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 21
  %33 = ptrtoint ptr %detec_count to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %detec_count, align 4
  %rx_break = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 13
  %34 = ptrtoint ptr %rx_break to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %rx_break, align 4
  %rx_len_error = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 22
  %35 = ptrtoint ptr %rx_len_error to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %rx_len_error, align 4
  %isr_flag = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 15
  %36 = ptrtoint ptr %isr_flag to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %isr_flag, align 4
  %descr_p = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 2
  %37 = ptrtoint ptr %descr_p to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %descr_p, align 4
  %39 = ptrtoint ptr %38 to i32
  %and = and i32 %39, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp34.not = icmp eq i32 %and, 0
  br i1 %cmp34.not, label %smt_free_mbuf.exit.3.if.end_crit_edge, label %if.then

smt_free_mbuf.exit.3.if.end_crit_edge:            ; preds = %smt_free_mbuf.exit.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %smt_free_mbuf.exit.3
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub nuw nsw i32 16, %and
  %add.ptr = getelementptr i8, ptr %38, i32 %sub
  %40 = ptrtoint ptr %descr_p to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr, ptr %descr_p, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %smt_free_mbuf.exit.3.if.end_crit_edge
  %41 = ptrtoint ptr %descr_p to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %descr_p, align 4
  %add.ptr.i = getelementptr i8, ptr %42, i32 352
  %hw.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %arrayidx.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 9, i32 1
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i, align 4
  %incdec.ptr.i.i = getelementptr i8, ptr %42, i32 384
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 21760, ptr %add.ptr.i, align 4
  %rxd_next.i.i = getelementptr i8, ptr %42, i32 372
  %46 = ptrtoint ptr %rxd_next.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %incdec.ptr.i.i, ptr %rxd_next.i.i, align 4
  %call.i.i = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i.i) #8
  %47 = tail call i32 @llvm.bswap.i32(i32 %call.i.i) #8
  %rxd_nrdadr.i.i = getelementptr i8, ptr %42, i32 364
  %48 = ptrtoint ptr %rxd_nrdadr.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile i32 %47, ptr %rxd_nrdadr.i.i, align 4
  %incdec.ptr.i.1.i = getelementptr i8, ptr %42, i32 416
  %49 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 21760, ptr %incdec.ptr.i.i, align 4
  %rxd_next.i.1.i = getelementptr i8, ptr %42, i32 404
  %50 = ptrtoint ptr %rxd_next.i.1.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %incdec.ptr.i.1.i, ptr %rxd_next.i.1.i, align 4
  %call.i.1.i = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i.1.i) #8
  %51 = tail call i32 @llvm.bswap.i32(i32 %call.i.1.i) #8
  %rxd_nrdadr.i.1.i = getelementptr i8, ptr %42, i32 396
  %52 = ptrtoint ptr %rxd_nrdadr.i.1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 %51, ptr %rxd_nrdadr.i.1.i, align 4
  %incdec.ptr.i.2.i = getelementptr i8, ptr %42, i32 448
  %53 = ptrtoint ptr %incdec.ptr.i.1.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 21760, ptr %incdec.ptr.i.1.i, align 4
  %rxd_next.i.2.i = getelementptr i8, ptr %42, i32 436
  %54 = ptrtoint ptr %rxd_next.i.2.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %incdec.ptr.i.2.i, ptr %rxd_next.i.2.i, align 4
  %call.i.2.i = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i.2.i) #8
  %55 = tail call i32 @llvm.bswap.i32(i32 %call.i.2.i) #8
  %rxd_nrdadr.i.2.i = getelementptr i8, ptr %42, i32 428
  %56 = ptrtoint ptr %rxd_nrdadr.i.2.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile i32 %55, ptr %rxd_nrdadr.i.2.i, align 4
  %incdec.ptr.i.3.i = getelementptr i8, ptr %42, i32 480
  %57 = ptrtoint ptr %incdec.ptr.i.2.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 21760, ptr %incdec.ptr.i.2.i, align 4
  %rxd_next.i.3.i = getelementptr i8, ptr %42, i32 468
  %58 = ptrtoint ptr %rxd_next.i.3.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %incdec.ptr.i.3.i, ptr %rxd_next.i.3.i, align 4
  %call.i.3.i = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i.3.i) #8
  %59 = tail call i32 @llvm.bswap.i32(i32 %call.i.3.i) #8
  %rxd_nrdadr.i.3.i = getelementptr i8, ptr %42, i32 460
  %60 = ptrtoint ptr %rxd_nrdadr.i.3.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile i32 %59, ptr %rxd_nrdadr.i.3.i, align 4
  %incdec.ptr.i.4.i = getelementptr i8, ptr %42, i32 512
  %61 = ptrtoint ptr %incdec.ptr.i.3.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile i32 21760, ptr %incdec.ptr.i.3.i, align 4
  %rxd_next.i.4.i = getelementptr i8, ptr %42, i32 500
  %62 = ptrtoint ptr %rxd_next.i.4.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %incdec.ptr.i.4.i, ptr %rxd_next.i.4.i, align 4
  %call.i.4.i = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i.4.i) #8
  %63 = tail call i32 @llvm.bswap.i32(i32 %call.i.4.i) #8
  %rxd_nrdadr.i.4.i = getelementptr i8, ptr %42, i32 492
  %64 = ptrtoint ptr %rxd_nrdadr.i.4.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile i32 %63, ptr %rxd_nrdadr.i.4.i, align 4
  %incdec.ptr.i.5.i = getelementptr i8, ptr %42, i32 544
  %65 = ptrtoint ptr %incdec.ptr.i.4.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile i32 21760, ptr %incdec.ptr.i.4.i, align 4
  %rxd_next.i.5.i = getelementptr i8, ptr %42, i32 532
  %66 = ptrtoint ptr %rxd_next.i.5.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %incdec.ptr.i.5.i, ptr %rxd_next.i.5.i, align 4
  %call.i.5.i = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i.5.i) #8
  %67 = tail call i32 @llvm.bswap.i32(i32 %call.i.5.i) #8
  %rxd_nrdadr.i.5.i = getelementptr i8, ptr %42, i32 524
  %68 = ptrtoint ptr %rxd_nrdadr.i.5.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 %67, ptr %rxd_nrdadr.i.5.i, align 4
  %incdec.ptr.i.6.i = getelementptr i8, ptr %42, i32 576
  %69 = ptrtoint ptr %incdec.ptr.i.5.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 21760, ptr %incdec.ptr.i.5.i, align 4
  %rxd_next.i.6.i = getelementptr i8, ptr %42, i32 564
  %70 = ptrtoint ptr %rxd_next.i.6.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %incdec.ptr.i.6.i, ptr %rxd_next.i.6.i, align 4
  %call.i.6.i = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i.6.i) #8
  %71 = tail call i32 @llvm.bswap.i32(i32 %call.i.6.i) #8
  %rxd_nrdadr.i.6.i = getelementptr i8, ptr %42, i32 556
  %72 = ptrtoint ptr %rxd_nrdadr.i.6.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile i32 %71, ptr %rxd_nrdadr.i.6.i, align 4
  %incdec.ptr.i.7.i = getelementptr i8, ptr %42, i32 608
  %73 = ptrtoint ptr %incdec.ptr.i.6.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile i32 21760, ptr %incdec.ptr.i.6.i, align 4
  %rxd_next.i.7.i = getelementptr i8, ptr %42, i32 596
  %74 = ptrtoint ptr %rxd_next.i.7.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %incdec.ptr.i.7.i, ptr %rxd_next.i.7.i, align 4
  %call.i.7.i = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i.7.i) #8
  %75 = tail call i32 @llvm.bswap.i32(i32 %call.i.7.i) #8
  %rxd_nrdadr.i.7.i = getelementptr i8, ptr %42, i32 588
  %76 = ptrtoint ptr %rxd_nrdadr.i.7.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 %75, ptr %rxd_nrdadr.i.7.i, align 4
  %incdec.ptr.i.8.i = getelementptr i8, ptr %42, i32 640
  %77 = ptrtoint ptr %incdec.ptr.i.7.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile i32 21760, ptr %incdec.ptr.i.7.i, align 4
  %rxd_next.i.8.i = getelementptr i8, ptr %42, i32 628
  %78 = ptrtoint ptr %rxd_next.i.8.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %incdec.ptr.i.8.i, ptr %rxd_next.i.8.i, align 4
  %call.i.8.i = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i.8.i) #8
  %79 = tail call i32 @llvm.bswap.i32(i32 %call.i.8.i) #8
  %rxd_nrdadr.i.8.i = getelementptr i8, ptr %42, i32 620
  %80 = ptrtoint ptr %rxd_nrdadr.i.8.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile i32 %79, ptr %rxd_nrdadr.i.8.i, align 4
  %incdec.ptr.i.9.i = getelementptr i8, ptr %42, i32 672
  %81 = ptrtoint ptr %incdec.ptr.i.8.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile i32 21760, ptr %incdec.ptr.i.8.i, align 4
  %rxd_next.i.9.i = getelementptr i8, ptr %42, i32 660
  %82 = ptrtoint ptr %rxd_next.i.9.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %incdec.ptr.i.9.i, ptr %rxd_next.i.9.i, align 4
  %call.i.9.i = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i.9.i) #8
  %83 = tail call i32 @llvm.bswap.i32(i32 %call.i.9.i) #8
  %rxd_nrdadr.i.9.i = getelementptr i8, ptr %42, i32 652
  %84 = ptrtoint ptr %rxd_nrdadr.i.9.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile i32 %83, ptr %rxd_nrdadr.i.9.i, align 4
  %incdec.ptr.i.10.i = getelementptr i8, ptr %42, i32 704
  %85 = ptrtoint ptr %incdec.ptr.i.9.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile i32 21760, ptr %incdec.ptr.i.9.i, align 4
  %rxd_next.i.10.i = getelementptr i8, ptr %42, i32 692
  %86 = ptrtoint ptr %rxd_next.i.10.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %incdec.ptr.i.10.i, ptr %rxd_next.i.10.i, align 4
  %call.i.10.i = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i.10.i) #8
  %87 = tail call i32 @llvm.bswap.i32(i32 %call.i.10.i) #8
  %rxd_nrdadr.i.10.i = getelementptr i8, ptr %42, i32 684
  %88 = ptrtoint ptr %rxd_nrdadr.i.10.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile i32 %87, ptr %rxd_nrdadr.i.10.i, align 4
  %incdec.ptr.i.11.i = getelementptr i8, ptr %42, i32 736
  %89 = ptrtoint ptr %incdec.ptr.i.10.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile i32 21760, ptr %incdec.ptr.i.10.i, align 4
  %rxd_next.i.11.i = getelementptr i8, ptr %42, i32 724
  %90 = ptrtoint ptr %rxd_next.i.11.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %incdec.ptr.i.11.i, ptr %rxd_next.i.11.i, align 4
  %call.i.11.i = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i.11.i) #8
  %91 = tail call i32 @llvm.bswap.i32(i32 %call.i.11.i) #8
  %rxd_nrdadr.i.11.i = getelementptr i8, ptr %42, i32 716
  %92 = ptrtoint ptr %rxd_nrdadr.i.11.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile i32 %91, ptr %rxd_nrdadr.i.11.i, align 4
  %incdec.ptr.i.12.i = getelementptr i8, ptr %42, i32 768
  %93 = ptrtoint ptr %incdec.ptr.i.11.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile i32 21760, ptr %incdec.ptr.i.11.i, align 4
  %rxd_next.i.12.i = getelementptr i8, ptr %42, i32 756
  %94 = ptrtoint ptr %rxd_next.i.12.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %incdec.ptr.i.12.i, ptr %rxd_next.i.12.i, align 4
  %call.i.12.i = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i.12.i) #8
  %95 = tail call i32 @llvm.bswap.i32(i32 %call.i.12.i) #8
  %rxd_nrdadr.i.12.i = getelementptr i8, ptr %42, i32 748
  %96 = ptrtoint ptr %rxd_nrdadr.i.12.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile i32 %95, ptr %rxd_nrdadr.i.12.i, align 4
  %tx.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 9
  %97 = ptrtoint ptr %incdec.ptr.i.12.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile i32 21760, ptr %incdec.ptr.i.12.i, align 4
  %rxd_next3.i.i = getelementptr i8, ptr %42, i32 788
  %98 = ptrtoint ptr %rxd_next3.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %add.ptr.i, ptr %rxd_next3.i.i, align 4
  %call4.i.i = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %add.ptr.i) #8
  %99 = tail call i32 @llvm.bswap.i32(i32 %call4.i.i) #8
  %rxd_nrdadr5.i.i = getelementptr i8, ptr %42, i32 780
  %100 = ptrtoint ptr %rxd_nrdadr5.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile i32 %99, ptr %rxd_nrdadr5.i.i, align 4
  %101 = ptrtoint ptr %rxd_nrdadr.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %rxd_nrdadr.i.i, align 4
  %tx_curr_get.i = getelementptr inbounds %struct.s_smt_tx_queue, ptr %44, i32 0, i32 2
  %103 = ptrtoint ptr %tx_curr_get.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %incdec.ptr.i.i, ptr %tx_curr_get.i, align 4
  %104 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %incdec.ptr.i.i, ptr %44, align 4
  %tx_free.i = getelementptr inbounds %struct.s_smt_tx_queue, ptr %44, i32 0, i32 3
  %105 = ptrtoint ptr %tx_free.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 14, ptr %tx_free.i, align 4
  %tx_used.i = getelementptr inbounds %struct.s_smt_tx_queue, ptr %44, i32 0, i32 4
  %106 = ptrtoint ptr %tx_used.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %tx_used.i, align 2
  %107 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hw.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %108, i32 656
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %102) #8, !srcloc !59
  %add.ptr4.i = getelementptr i8, ptr %42, i32 800
  %109 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %tx.i, align 4
  %incdec.ptr.i45.i = getelementptr i8, ptr %42, i32 832
  %111 = ptrtoint ptr %add.ptr4.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile i32 21760, ptr %add.ptr4.i, align 4
  %rxd_next.i46.i = getelementptr i8, ptr %42, i32 820
  %112 = ptrtoint ptr %rxd_next.i46.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %incdec.ptr.i45.i, ptr %rxd_next.i46.i, align 4
  %call.i47.i = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i45.i) #8
  %113 = tail call i32 @llvm.bswap.i32(i32 %call.i47.i) #8
  %rxd_nrdadr.i48.i = getelementptr i8, ptr %42, i32 812
  %114 = ptrtoint ptr %rxd_nrdadr.i48.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile i32 %113, ptr %rxd_nrdadr.i48.i, align 4
  %incdec.ptr.i45.1.i = getelementptr i8, ptr %42, i32 864
  %115 = ptrtoint ptr %incdec.ptr.i45.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile i32 21760, ptr %incdec.ptr.i45.i, align 4
  %rxd_next.i46.1.i = getelementptr i8, ptr %42, i32 852
  %116 = ptrtoint ptr %rxd_next.i46.1.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %incdec.ptr.i45.1.i, ptr %rxd_next.i46.1.i, align 4
  %call.i47.1.i = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i45.1.i) #8
  %117 = tail call i32 @llvm.bswap.i32(i32 %call.i47.1.i) #8
  %rxd_nrdadr.i48.1.i = getelementptr i8, ptr %42, i32 844
  %118 = ptrtoint ptr %rxd_nrdadr.i48.1.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile i32 %117, ptr %rxd_nrdadr.i48.1.i, align 4
  %incdec.ptr.i45.2.i = getelementptr i8, ptr %42, i32 896
  %119 = ptrtoint ptr %incdec.ptr.i45.1.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile i32 21760, ptr %incdec.ptr.i45.1.i, align 4
  %rxd_next.i46.2.i = getelementptr i8, ptr %42, i32 884
  %120 = ptrtoint ptr %rxd_next.i46.2.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile ptr %incdec.ptr.i45.2.i, ptr %rxd_next.i46.2.i, align 4
  %call.i47.2.i = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i45.2.i) #8
  %121 = tail call i32 @llvm.bswap.i32(i32 %call.i47.2.i) #8
  %rxd_nrdadr.i48.2.i = getelementptr i8, ptr %42, i32 876
  %122 = ptrtoint ptr %rxd_nrdadr.i48.2.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile i32 %121, ptr %rxd_nrdadr.i48.2.i, align 4
  %incdec.ptr.i45.3.i = getelementptr i8, ptr %42, i32 928
  %123 = ptrtoint ptr %incdec.ptr.i45.2.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile i32 21760, ptr %incdec.ptr.i45.2.i, align 4
  %rxd_next.i46.3.i = getelementptr i8, ptr %42, i32 916
  %124 = ptrtoint ptr %rxd_next.i46.3.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %incdec.ptr.i45.3.i, ptr %rxd_next.i46.3.i, align 4
  %call.i47.3.i = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i45.3.i) #8
  %125 = tail call i32 @llvm.bswap.i32(i32 %call.i47.3.i) #8
  %rxd_nrdadr.i48.3.i = getelementptr i8, ptr %42, i32 908
  %126 = ptrtoint ptr %rxd_nrdadr.i48.3.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store volatile i32 %125, ptr %rxd_nrdadr.i48.3.i, align 4
  %incdec.ptr.i45.4.i = getelementptr i8, ptr %42, i32 960
  %127 = ptrtoint ptr %incdec.ptr.i45.3.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile i32 21760, ptr %incdec.ptr.i45.3.i, align 4
  %rxd_next.i46.4.i = getelementptr i8, ptr %42, i32 948
  %128 = ptrtoint ptr %rxd_next.i46.4.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %incdec.ptr.i45.4.i, ptr %rxd_next.i46.4.i, align 4
  %call.i47.4.i = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i45.4.i) #8
  %129 = tail call i32 @llvm.bswap.i32(i32 %call.i47.4.i) #8
  %rxd_nrdadr.i48.4.i = getelementptr i8, ptr %42, i32 940
  %130 = ptrtoint ptr %rxd_nrdadr.i48.4.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile i32 %129, ptr %rxd_nrdadr.i48.4.i, align 4
  %incdec.ptr.i45.5.i = getelementptr i8, ptr %42, i32 992
  %131 = ptrtoint ptr %incdec.ptr.i45.4.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store volatile i32 21760, ptr %incdec.ptr.i45.4.i, align 4
  %rxd_next.i46.5.i = getelementptr i8, ptr %42, i32 980
  %132 = ptrtoint ptr %rxd_next.i46.5.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile ptr %incdec.ptr.i45.5.i, ptr %rxd_next.i46.5.i, align 4
  %call.i47.5.i = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i45.5.i) #8
  %133 = tail call i32 @llvm.bswap.i32(i32 %call.i47.5.i) #8
  %rxd_nrdadr.i48.5.i = getelementptr i8, ptr %42, i32 972
  %134 = ptrtoint ptr %rxd_nrdadr.i48.5.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile i32 %133, ptr %rxd_nrdadr.i48.5.i, align 4
  %incdec.ptr.i45.6.i = getelementptr i8, ptr %42, i32 1024
  %135 = ptrtoint ptr %incdec.ptr.i45.5.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile i32 21760, ptr %incdec.ptr.i45.5.i, align 4
  %rxd_next.i46.6.i = getelementptr i8, ptr %42, i32 1012
  %136 = ptrtoint ptr %rxd_next.i46.6.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store volatile ptr %incdec.ptr.i45.6.i, ptr %rxd_next.i46.6.i, align 4
  %call.i47.6.i = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i45.6.i) #8
  %137 = tail call i32 @llvm.bswap.i32(i32 %call.i47.6.i) #8
  %rxd_nrdadr.i48.6.i = getelementptr i8, ptr %42, i32 1004
  %138 = ptrtoint ptr %rxd_nrdadr.i48.6.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile i32 %137, ptr %rxd_nrdadr.i48.6.i, align 4
  %incdec.ptr.i45.7.i = getelementptr i8, ptr %42, i32 1056
  %139 = ptrtoint ptr %incdec.ptr.i45.6.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile i32 21760, ptr %incdec.ptr.i45.6.i, align 4
  %rxd_next.i46.7.i = getelementptr i8, ptr %42, i32 1044
  %140 = ptrtoint ptr %rxd_next.i46.7.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %incdec.ptr.i45.7.i, ptr %rxd_next.i46.7.i, align 4
  %call.i47.7.i = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i45.7.i) #8
  %141 = tail call i32 @llvm.bswap.i32(i32 %call.i47.7.i) #8
  %rxd_nrdadr.i48.7.i = getelementptr i8, ptr %42, i32 1036
  %142 = ptrtoint ptr %rxd_nrdadr.i48.7.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile i32 %141, ptr %rxd_nrdadr.i48.7.i, align 4
  %incdec.ptr.i45.8.i = getelementptr i8, ptr %42, i32 1088
  %143 = ptrtoint ptr %incdec.ptr.i45.7.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile i32 21760, ptr %incdec.ptr.i45.7.i, align 4
  %rxd_next.i46.8.i = getelementptr i8, ptr %42, i32 1076
  %144 = ptrtoint ptr %rxd_next.i46.8.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %incdec.ptr.i45.8.i, ptr %rxd_next.i46.8.i, align 4
  %call.i47.8.i = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i45.8.i) #8
  %145 = tail call i32 @llvm.bswap.i32(i32 %call.i47.8.i) #8
  %rxd_nrdadr.i48.8.i = getelementptr i8, ptr %42, i32 1068
  %146 = ptrtoint ptr %rxd_nrdadr.i48.8.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store volatile i32 %145, ptr %rxd_nrdadr.i48.8.i, align 4
  %incdec.ptr.i45.9.i = getelementptr i8, ptr %42, i32 1120
  %147 = ptrtoint ptr %incdec.ptr.i45.8.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile i32 21760, ptr %incdec.ptr.i45.8.i, align 4
  %rxd_next.i46.9.i = getelementptr i8, ptr %42, i32 1108
  %148 = ptrtoint ptr %rxd_next.i46.9.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store volatile ptr %incdec.ptr.i45.9.i, ptr %rxd_next.i46.9.i, align 4
  %call.i47.9.i = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i45.9.i) #8
  %149 = tail call i32 @llvm.bswap.i32(i32 %call.i47.9.i) #8
  %rxd_nrdadr.i48.9.i = getelementptr i8, ptr %42, i32 1100
  %150 = ptrtoint ptr %rxd_nrdadr.i48.9.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile i32 %149, ptr %rxd_nrdadr.i48.9.i, align 4
  %incdec.ptr.i45.10.i = getelementptr i8, ptr %42, i32 1152
  %151 = ptrtoint ptr %incdec.ptr.i45.9.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store volatile i32 21760, ptr %incdec.ptr.i45.9.i, align 4
  %rxd_next.i46.10.i = getelementptr i8, ptr %42, i32 1140
  %152 = ptrtoint ptr %rxd_next.i46.10.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile ptr %incdec.ptr.i45.10.i, ptr %rxd_next.i46.10.i, align 4
  %call.i47.10.i = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i45.10.i) #8
  %153 = tail call i32 @llvm.bswap.i32(i32 %call.i47.10.i) #8
  %rxd_nrdadr.i48.10.i = getelementptr i8, ptr %42, i32 1132
  %154 = ptrtoint ptr %rxd_nrdadr.i48.10.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile i32 %153, ptr %rxd_nrdadr.i48.10.i, align 4
  %incdec.ptr.i45.11.i = getelementptr i8, ptr %42, i32 1184
  %155 = ptrtoint ptr %incdec.ptr.i45.10.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile i32 21760, ptr %incdec.ptr.i45.10.i, align 4
  %rxd_next.i46.11.i = getelementptr i8, ptr %42, i32 1172
  %156 = ptrtoint ptr %rxd_next.i46.11.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store volatile ptr %incdec.ptr.i45.11.i, ptr %rxd_next.i46.11.i, align 4
  %call.i47.11.i = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i45.11.i) #8
  %157 = tail call i32 @llvm.bswap.i32(i32 %call.i47.11.i) #8
  %rxd_nrdadr.i48.11.i = getelementptr i8, ptr %42, i32 1164
  %158 = ptrtoint ptr %rxd_nrdadr.i48.11.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store volatile i32 %157, ptr %rxd_nrdadr.i48.11.i, align 4
  %incdec.ptr.i45.12.i = getelementptr i8, ptr %42, i32 1216
  %159 = ptrtoint ptr %incdec.ptr.i45.11.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store volatile i32 21760, ptr %incdec.ptr.i45.11.i, align 4
  %rxd_next.i46.12.i = getelementptr i8, ptr %42, i32 1204
  %160 = ptrtoint ptr %rxd_next.i46.12.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store volatile ptr %incdec.ptr.i45.12.i, ptr %rxd_next.i46.12.i, align 4
  %call.i47.12.i = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i45.12.i) #8
  %161 = tail call i32 @llvm.bswap.i32(i32 %call.i47.12.i) #8
  %rxd_nrdadr.i48.12.i = getelementptr i8, ptr %42, i32 1196
  %162 = ptrtoint ptr %rxd_nrdadr.i48.12.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store volatile i32 %161, ptr %rxd_nrdadr.i48.12.i, align 4
  %163 = ptrtoint ptr %incdec.ptr.i45.12.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store volatile i32 21760, ptr %incdec.ptr.i45.12.i, align 4
  %rxd_next3.i52.i = getelementptr i8, ptr %42, i32 1236
  %164 = ptrtoint ptr %rxd_next3.i52.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store volatile ptr %add.ptr4.i, ptr %rxd_next3.i52.i, align 4
  %call4.i53.i = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %add.ptr4.i) #8
  %165 = tail call i32 @llvm.bswap.i32(i32 %call4.i53.i) #8
  %rxd_nrdadr5.i54.i = getelementptr i8, ptr %42, i32 1228
  %166 = ptrtoint ptr %rxd_nrdadr5.i54.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store volatile i32 %165, ptr %rxd_nrdadr5.i54.i, align 4
  %167 = ptrtoint ptr %rxd_nrdadr.i48.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load volatile i32, ptr %rxd_nrdadr.i48.i, align 4
  %tx_curr_get13.i = getelementptr inbounds %struct.s_smt_tx_queue, ptr %110, i32 0, i32 2
  %169 = ptrtoint ptr %tx_curr_get13.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %incdec.ptr.i45.i, ptr %tx_curr_get13.i, align 4
  %170 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %incdec.ptr.i45.i, ptr %110, align 4
  %tx_free15.i = getelementptr inbounds %struct.s_smt_tx_queue, ptr %110, i32 0, i32 3
  %171 = ptrtoint ptr %tx_free15.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 14, ptr %tx_free15.i, align 4
  %tx_used16.i = getelementptr inbounds %struct.s_smt_tx_queue, ptr %110, i32 0, i32 4
  %172 = ptrtoint ptr %tx_used16.i to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 0, ptr %tx_used16.i, align 2
  %173 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %hw.i, align 8
  %add.ptr19.i = getelementptr i8, ptr %174, i32 720
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %168) #8, !srcloc !59
  %175 = ptrtoint ptr %descr_p to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %descr_p, align 4
  %rx.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 10
  %177 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %rx.i, align 4
  %incdec.ptr.i.i73 = getelementptr %union.s_fp_descr, ptr %176, i32 1
  %179 = ptrtoint ptr %176 to i32
  call void @__asan_store4_noabort(i32 %179)
  store volatile i32 21760, ptr %176, align 4
  %rxd_next.i.i74 = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %176, i32 0, i32 5
  %180 = ptrtoint ptr %rxd_next.i.i74 to i32
  call void @__asan_store4_noabort(i32 %180)
  store volatile ptr %incdec.ptr.i.i73, ptr %rxd_next.i.i74, align 4
  %call.i.i75 = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i.i73) #8
  %181 = tail call i32 @llvm.bswap.i32(i32 %call.i.i75) #8
  %rxd_nrdadr.i.i76 = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %176, i32 0, i32 3
  %182 = ptrtoint ptr %rxd_nrdadr.i.i76 to i32
  call void @__asan_store4_noabort(i32 %182)
  store volatile i32 %181, ptr %rxd_nrdadr.i.i76, align 4
  %incdec.ptr.i.1.i77 = getelementptr %union.s_fp_descr, ptr %176, i32 2
  %183 = ptrtoint ptr %incdec.ptr.i.i73 to i32
  call void @__asan_store4_noabort(i32 %183)
  store volatile i32 21760, ptr %incdec.ptr.i.i73, align 4
  %rxd_next.i.1.i78 = getelementptr %union.s_fp_descr, ptr %176, i32 1, i32 0, i32 5
  %184 = ptrtoint ptr %rxd_next.i.1.i78 to i32
  call void @__asan_store4_noabort(i32 %184)
  store volatile ptr %incdec.ptr.i.1.i77, ptr %rxd_next.i.1.i78, align 4
  %call.i.1.i79 = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i.1.i77) #8
  %185 = tail call i32 @llvm.bswap.i32(i32 %call.i.1.i79) #8
  %rxd_nrdadr.i.1.i80 = getelementptr %union.s_fp_descr, ptr %176, i32 1, i32 0, i32 3
  %186 = ptrtoint ptr %rxd_nrdadr.i.1.i80 to i32
  call void @__asan_store4_noabort(i32 %186)
  store volatile i32 %185, ptr %rxd_nrdadr.i.1.i80, align 4
  %incdec.ptr.i.2.i81 = getelementptr %union.s_fp_descr, ptr %176, i32 3
  %187 = ptrtoint ptr %incdec.ptr.i.1.i77 to i32
  call void @__asan_store4_noabort(i32 %187)
  store volatile i32 21760, ptr %incdec.ptr.i.1.i77, align 4
  %rxd_next.i.2.i82 = getelementptr %union.s_fp_descr, ptr %176, i32 2, i32 0, i32 5
  %188 = ptrtoint ptr %rxd_next.i.2.i82 to i32
  call void @__asan_store4_noabort(i32 %188)
  store volatile ptr %incdec.ptr.i.2.i81, ptr %rxd_next.i.2.i82, align 4
  %call.i.2.i83 = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i.2.i81) #8
  %189 = tail call i32 @llvm.bswap.i32(i32 %call.i.2.i83) #8
  %rxd_nrdadr.i.2.i84 = getelementptr %union.s_fp_descr, ptr %176, i32 2, i32 0, i32 3
  %190 = ptrtoint ptr %rxd_nrdadr.i.2.i84 to i32
  call void @__asan_store4_noabort(i32 %190)
  store volatile i32 %189, ptr %rxd_nrdadr.i.2.i84, align 4
  %incdec.ptr.i.3.i85 = getelementptr %union.s_fp_descr, ptr %176, i32 4
  %191 = ptrtoint ptr %incdec.ptr.i.2.i81 to i32
  call void @__asan_store4_noabort(i32 %191)
  store volatile i32 21760, ptr %incdec.ptr.i.2.i81, align 4
  %rxd_next.i.3.i86 = getelementptr %union.s_fp_descr, ptr %176, i32 3, i32 0, i32 5
  %192 = ptrtoint ptr %rxd_next.i.3.i86 to i32
  call void @__asan_store4_noabort(i32 %192)
  store volatile ptr %incdec.ptr.i.3.i85, ptr %rxd_next.i.3.i86, align 4
  %call.i.3.i87 = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i.3.i85) #8
  %193 = tail call i32 @llvm.bswap.i32(i32 %call.i.3.i87) #8
  %rxd_nrdadr.i.3.i88 = getelementptr %union.s_fp_descr, ptr %176, i32 3, i32 0, i32 3
  %194 = ptrtoint ptr %rxd_nrdadr.i.3.i88 to i32
  call void @__asan_store4_noabort(i32 %194)
  store volatile i32 %193, ptr %rxd_nrdadr.i.3.i88, align 4
  %incdec.ptr.i.4.i89 = getelementptr %union.s_fp_descr, ptr %176, i32 5
  %195 = ptrtoint ptr %incdec.ptr.i.3.i85 to i32
  call void @__asan_store4_noabort(i32 %195)
  store volatile i32 21760, ptr %incdec.ptr.i.3.i85, align 4
  %rxd_next.i.4.i90 = getelementptr %union.s_fp_descr, ptr %176, i32 4, i32 0, i32 5
  %196 = ptrtoint ptr %rxd_next.i.4.i90 to i32
  call void @__asan_store4_noabort(i32 %196)
  store volatile ptr %incdec.ptr.i.4.i89, ptr %rxd_next.i.4.i90, align 4
  %call.i.4.i91 = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i.4.i89) #8
  %197 = tail call i32 @llvm.bswap.i32(i32 %call.i.4.i91) #8
  %rxd_nrdadr.i.4.i92 = getelementptr %union.s_fp_descr, ptr %176, i32 4, i32 0, i32 3
  %198 = ptrtoint ptr %rxd_nrdadr.i.4.i92 to i32
  call void @__asan_store4_noabort(i32 %198)
  store volatile i32 %197, ptr %rxd_nrdadr.i.4.i92, align 4
  %incdec.ptr.i.5.i93 = getelementptr %union.s_fp_descr, ptr %176, i32 6
  %199 = ptrtoint ptr %incdec.ptr.i.4.i89 to i32
  call void @__asan_store4_noabort(i32 %199)
  store volatile i32 21760, ptr %incdec.ptr.i.4.i89, align 4
  %rxd_next.i.5.i94 = getelementptr %union.s_fp_descr, ptr %176, i32 5, i32 0, i32 5
  %200 = ptrtoint ptr %rxd_next.i.5.i94 to i32
  call void @__asan_store4_noabort(i32 %200)
  store volatile ptr %incdec.ptr.i.5.i93, ptr %rxd_next.i.5.i94, align 4
  %call.i.5.i95 = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i.5.i93) #8
  %201 = tail call i32 @llvm.bswap.i32(i32 %call.i.5.i95) #8
  %rxd_nrdadr.i.5.i96 = getelementptr %union.s_fp_descr, ptr %176, i32 5, i32 0, i32 3
  %202 = ptrtoint ptr %rxd_nrdadr.i.5.i96 to i32
  call void @__asan_store4_noabort(i32 %202)
  store volatile i32 %201, ptr %rxd_nrdadr.i.5.i96, align 4
  %incdec.ptr.i.6.i97 = getelementptr %union.s_fp_descr, ptr %176, i32 7
  %203 = ptrtoint ptr %incdec.ptr.i.5.i93 to i32
  call void @__asan_store4_noabort(i32 %203)
  store volatile i32 21760, ptr %incdec.ptr.i.5.i93, align 4
  %rxd_next.i.6.i98 = getelementptr %union.s_fp_descr, ptr %176, i32 6, i32 0, i32 5
  %204 = ptrtoint ptr %rxd_next.i.6.i98 to i32
  call void @__asan_store4_noabort(i32 %204)
  store volatile ptr %incdec.ptr.i.6.i97, ptr %rxd_next.i.6.i98, align 4
  %call.i.6.i99 = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i.6.i97) #8
  %205 = tail call i32 @llvm.bswap.i32(i32 %call.i.6.i99) #8
  %rxd_nrdadr.i.6.i100 = getelementptr %union.s_fp_descr, ptr %176, i32 6, i32 0, i32 3
  %206 = ptrtoint ptr %rxd_nrdadr.i.6.i100 to i32
  call void @__asan_store4_noabort(i32 %206)
  store volatile i32 %205, ptr %rxd_nrdadr.i.6.i100, align 4
  %incdec.ptr.i.7.i101 = getelementptr %union.s_fp_descr, ptr %176, i32 8
  %207 = ptrtoint ptr %incdec.ptr.i.6.i97 to i32
  call void @__asan_store4_noabort(i32 %207)
  store volatile i32 21760, ptr %incdec.ptr.i.6.i97, align 4
  %rxd_next.i.7.i102 = getelementptr %union.s_fp_descr, ptr %176, i32 7, i32 0, i32 5
  %208 = ptrtoint ptr %rxd_next.i.7.i102 to i32
  call void @__asan_store4_noabort(i32 %208)
  store volatile ptr %incdec.ptr.i.7.i101, ptr %rxd_next.i.7.i102, align 4
  %call.i.7.i103 = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i.7.i101) #8
  %209 = tail call i32 @llvm.bswap.i32(i32 %call.i.7.i103) #8
  %rxd_nrdadr.i.7.i104 = getelementptr %union.s_fp_descr, ptr %176, i32 7, i32 0, i32 3
  %210 = ptrtoint ptr %rxd_nrdadr.i.7.i104 to i32
  call void @__asan_store4_noabort(i32 %210)
  store volatile i32 %209, ptr %rxd_nrdadr.i.7.i104, align 4
  %incdec.ptr.i.8.i105 = getelementptr %union.s_fp_descr, ptr %176, i32 9
  %211 = ptrtoint ptr %incdec.ptr.i.7.i101 to i32
  call void @__asan_store4_noabort(i32 %211)
  store volatile i32 21760, ptr %incdec.ptr.i.7.i101, align 4
  %rxd_next.i.8.i106 = getelementptr %union.s_fp_descr, ptr %176, i32 8, i32 0, i32 5
  %212 = ptrtoint ptr %rxd_next.i.8.i106 to i32
  call void @__asan_store4_noabort(i32 %212)
  store volatile ptr %incdec.ptr.i.8.i105, ptr %rxd_next.i.8.i106, align 4
  %call.i.8.i107 = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i.8.i105) #8
  %213 = tail call i32 @llvm.bswap.i32(i32 %call.i.8.i107) #8
  %rxd_nrdadr.i.8.i108 = getelementptr %union.s_fp_descr, ptr %176, i32 8, i32 0, i32 3
  %214 = ptrtoint ptr %rxd_nrdadr.i.8.i108 to i32
  call void @__asan_store4_noabort(i32 %214)
  store volatile i32 %213, ptr %rxd_nrdadr.i.8.i108, align 4
  %incdec.ptr.i.9.i109 = getelementptr %union.s_fp_descr, ptr %176, i32 10
  %215 = ptrtoint ptr %incdec.ptr.i.8.i105 to i32
  call void @__asan_store4_noabort(i32 %215)
  store volatile i32 21760, ptr %incdec.ptr.i.8.i105, align 4
  %rxd_next.i.9.i110 = getelementptr %union.s_fp_descr, ptr %176, i32 9, i32 0, i32 5
  %216 = ptrtoint ptr %rxd_next.i.9.i110 to i32
  call void @__asan_store4_noabort(i32 %216)
  store volatile ptr %incdec.ptr.i.9.i109, ptr %rxd_next.i.9.i110, align 4
  %call.i.9.i111 = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %incdec.ptr.i.9.i109) #8
  %217 = tail call i32 @llvm.bswap.i32(i32 %call.i.9.i111) #8
  %rxd_nrdadr.i.9.i112 = getelementptr %union.s_fp_descr, ptr %176, i32 9, i32 0, i32 3
  %218 = ptrtoint ptr %rxd_nrdadr.i.9.i112 to i32
  call void @__asan_store4_noabort(i32 %218)
  store volatile i32 %217, ptr %rxd_nrdadr.i.9.i112, align 4
  %219 = ptrtoint ptr %incdec.ptr.i.9.i109 to i32
  call void @__asan_store4_noabort(i32 %219)
  store volatile i32 21760, ptr %incdec.ptr.i.9.i109, align 4
  %rxd_next3.i.i114 = getelementptr %union.s_fp_descr, ptr %176, i32 10, i32 0, i32 5
  %220 = ptrtoint ptr %rxd_next3.i.i114 to i32
  call void @__asan_store4_noabort(i32 %220)
  store volatile ptr %176, ptr %rxd_next3.i.i114, align 4
  %call4.i.i115 = tail call i32 @mac_drv_virt2phys(ptr noundef %smc, ptr noundef %176) #8
  %221 = tail call i32 @llvm.bswap.i32(i32 %call4.i.i115) #8
  %rxd_nrdadr5.i.i116 = getelementptr %union.s_fp_descr, ptr %176, i32 10, i32 0, i32 3
  %222 = ptrtoint ptr %rxd_nrdadr5.i.i116 to i32
  call void @__asan_store4_noabort(i32 %222)
  store volatile i32 %221, ptr %rxd_nrdadr5.i.i116, align 4
  %223 = ptrtoint ptr %rxd_nrdadr.i.i76 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load volatile i32, ptr %rxd_nrdadr.i.i76, align 4
  %rx_curr_get.i = getelementptr inbounds %struct.s_smt_rx_queue, ptr %178, i32 0, i32 2
  %225 = ptrtoint ptr %rx_curr_get.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %incdec.ptr.i.i73, ptr %rx_curr_get.i, align 4
  %226 = ptrtoint ptr %178 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %incdec.ptr.i.i73, ptr %178, align 4
  %rx_free.i = getelementptr inbounds %struct.s_smt_rx_queue, ptr %178, i32 0, i32 3
  %227 = ptrtoint ptr %rx_free.i to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 11, ptr %rx_free.i, align 4
  %rx_used.i = getelementptr inbounds %struct.s_smt_rx_queue, ptr %178, i32 0, i32 4
  %228 = ptrtoint ptr %rx_used.i to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 0, ptr %rx_used.i, align 2
  %229 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %hw.i, align 8
  %add.ptr.i117 = getelementptr i8, ptr %230, i32 528
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 %224) #8, !srcloc !59
  tail call void @mac_drv_fill_rxd(ptr noundef %smc) #8
  tail call void @init_plc(ptr noundef %smc) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_board(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @init_fplus(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smt_free_mbuf(ptr nocapture noundef %smc, ptr noundef %mb) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mb, null
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  %sm_use_count = getelementptr inbounds %struct.s_mbuf, ptr %mb, i32 0, i32 3
  %0 = ptrtoint ptr %sm_use_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sm_use_count, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %sm_use_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %mb_free = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 0, i32 1
  %2 = ptrtoint ptr %mb_free to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mb_free, align 4
  %4 = ptrtoint ptr %mb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %mb, align 4
  store ptr %mb, ptr %mb_free, align 4
  br label %if.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 503, ptr noundef nonnull @.str.3) #11
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.then3, %if.then.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mac_drv_fill_rxd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_plc(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @smt_get_mbuf(ptr nocapture noundef %smc) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mb_free = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 0, i32 1
  %0 = ptrtoint ptr %mb_free to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mb_free, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %mb_free to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %mb_free, align 4
  %m_off = getelementptr inbounds %struct.s_mbuf, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %m_off to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 8, ptr %m_off, align 4
  %sm_use_count = getelementptr inbounds %struct.s_mbuf, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %sm_use_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %sm_use_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mac_drv_repair_descr(ptr nocapture noundef readonly %smc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %hw_state = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 11
  %0 = ptrtoint ptr %hw_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hw_state, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not = icmp eq i16 %1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 513, ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 9
  %arrayidx = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 9, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tx_curr_get.i = getelementptr inbounds %struct.s_smt_tx_queue, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %tx_curr_get.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_curr_get.i, align 4
  %tx_used1.i = getelementptr inbounds %struct.s_smt_tx_queue, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %tx_used1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tx_used1.i, align 2
  %conv.i = zext i16 %7 to i32
  %tx_free.i = getelementptr inbounds %struct.s_smt_tx_queue, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %tx_free.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %tx_free.i, align 4
  %conv2.i = zext i16 %9 to i32
  %add.i = add nsw i32 %conv.i, -1
  %i.01.i = add nsw i32 %add.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.01.i)
  %tobool.not2.i = icmp eq i32 %i.01.i, 0
  br i1 %tobool.not2.i, label %if.end.for.end.i_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.04.i = phi i32 [ %i.0.i, %for.body.i.for.body.i_crit_edge ], [ %i.01.i, %if.end.for.body.i_crit_edge ]
  %t.03.i = phi ptr [ %11, %for.body.i.for.body.i_crit_edge ], [ %5, %if.end.for.body.i_crit_edge ]
  %txd_next.i = getelementptr inbounds %struct.s_smt_fp_txd, ptr %t.03.i, i32 0, i32 5
  %10 = ptrtoint ptr %txd_next.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %txd_next.i, align 4
  %i.0.i = add i32 %i.04.i, -1
  %tobool.not.i = icmp eq i32 %i.0.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %t.0.lcssa.i = phi ptr [ %5, %if.end.for.end.i_crit_edge ], [ %11, %for.body.i.for.end.i_crit_edge ]
  %txd_ntdadr.i = getelementptr inbounds %struct.s_smt_fp_txd, ptr %t.0.lcssa.i, i32 0, i32 3
  %12 = ptrtoint ptr %txd_ntdadr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %txd_ntdadr.i, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool4.not5.i = icmp eq i16 %7, 0
  br i1 %tobool4.not5.i, label %for.end.i.repair_txd_ring.exit_crit_edge, label %for.end.i.while.body.i_crit_edge

for.end.i.while.body.i_crit_edge:                 ; preds = %for.end.i
  br label %while.body.i

for.end.i.repair_txd_ring.exit_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %repair_txd_ring.exit

while.body.i:                                     ; preds = %if.end11.i.while.body.i_crit_edge, %for.end.i.while.body.i_crit_edge
  %t.18.i = phi ptr [ %24, %if.end11.i.while.body.i_crit_edge ], [ %5, %for.end.i.while.body.i_crit_edge ]
  %phys.07.i = phi i32 [ %22, %if.end11.i.while.body.i_crit_edge ], [ %14, %for.end.i.while.body.i_crit_edge ]
  %tx_used.06.i = phi i32 [ %dec14.i, %if.end11.i.while.body.i_crit_edge ], [ %conv.i, %for.end.i.while.body.i_crit_edge ]
  %15 = ptrtoint ptr %t.18.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %t.18.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %tobool5.not.i = icmp sgt i32 %17, -1
  br i1 %tobool5.not.i, label %while.body.i.if.end11.i_crit_edge, label %if.then.i

while.body.i.if.end11.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then.i:                                        ; preds = %while.body.i
  %and6.i = and i32 %17, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.else.i, label %if.then.i.repair_txd_ring.exit_crit_edge

if.then.i.repair_txd_ring.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %repair_txd_ring.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %t.18.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %t.18.i, align 4
  %and10.i = and i32 %19, -129
  store volatile i32 %and10.i, ptr %t.18.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i, %while.body.i.if.end11.i_crit_edge
  %txd_ntdadr12.i = getelementptr inbounds %struct.s_smt_fp_txd, ptr %t.18.i, i32 0, i32 3
  %20 = ptrtoint ptr %txd_ntdadr12.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %txd_ntdadr12.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  %txd_next13.i = getelementptr inbounds %struct.s_smt_fp_txd, ptr %t.18.i, i32 0, i32 5
  %23 = ptrtoint ptr %txd_next13.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %txd_next13.i, align 4
  %dec14.i = add nsw i32 %tx_used.06.i, -1
  %tobool4.not.i = icmp eq i32 %dec14.i, 0
  br i1 %tobool4.not.i, label %if.end11.i.repair_txd_ring.exit_crit_edge, label %if.end11.i.while.body.i_crit_edge

if.end11.i.while.body.i_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end11.i.repair_txd_ring.exit_crit_edge:        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %repair_txd_ring.exit

repair_txd_ring.exit:                             ; preds = %if.end11.i.repair_txd_ring.exit_crit_edge, %if.then.i.repair_txd_ring.exit_crit_edge, %for.end.i.repair_txd_ring.exit_crit_edge
  %phys.0.lcssa.i = phi i32 [ %14, %for.end.i.repair_txd_ring.exit_crit_edge ], [ %22, %if.end11.i.repair_txd_ring.exit_crit_edge ], [ %phys.07.i, %if.then.i.repair_txd_ring.exit_crit_edge ]
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %26, i32 656
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  %27 = tail call i32 @llvm.bswap.i32(i32 %phys.0.lcssa.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %27) #8, !srcloc !59
  %tx_used = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 11, i32 1, i32 4
  %28 = ptrtoint ptr %tx_used to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %tx_used, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.not = icmp eq i16 %29, 0
  br i1 %tobool.not, label %repair_txd_ring.exit.if.end12_crit_edge, label %if.then8

repair_txd_ring.exit.if.end12_crit_edge:          ; preds = %repair_txd_ring.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then8:                                         ; preds = %repair_txd_ring.exit
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 8
  %add.ptr11 = getelementptr i8, ptr %31, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 268435456) #8, !srcloc !59
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %repair_txd_ring.exit.if.end12_crit_edge
  %32 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx, align 4
  %tx_curr_get.i58 = getelementptr inbounds %struct.s_smt_tx_queue, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %tx_curr_get.i58 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx_curr_get.i58, align 4
  %tx_used1.i59 = getelementptr inbounds %struct.s_smt_tx_queue, ptr %33, i32 0, i32 4
  %36 = ptrtoint ptr %tx_used1.i59 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %tx_used1.i59, align 2
  %conv.i60 = zext i16 %37 to i32
  %tx_free.i61 = getelementptr inbounds %struct.s_smt_tx_queue, ptr %33, i32 0, i32 3
  %38 = ptrtoint ptr %tx_free.i61 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %tx_free.i61, align 4
  %conv2.i62 = zext i16 %39 to i32
  %add.i63 = add nsw i32 %conv.i60, -1
  %i.01.i64 = add nsw i32 %add.i63, %conv2.i62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.01.i64)
  %tobool.not2.i65 = icmp eq i32 %i.01.i64, 0
  br i1 %tobool.not2.i65, label %if.end12.for.end.i75_crit_edge, label %if.end12.for.body.i71_crit_edge

if.end12.for.body.i71_crit_edge:                  ; preds = %if.end12
  br label %for.body.i71

if.end12.for.end.i75_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i75

for.body.i71:                                     ; preds = %for.body.i71.for.body.i71_crit_edge, %if.end12.for.body.i71_crit_edge
  %i.04.i66 = phi i32 [ %i.0.i69, %for.body.i71.for.body.i71_crit_edge ], [ %i.01.i64, %if.end12.for.body.i71_crit_edge ]
  %t.03.i67 = phi ptr [ %41, %for.body.i71.for.body.i71_crit_edge ], [ %35, %if.end12.for.body.i71_crit_edge ]
  %txd_next.i68 = getelementptr inbounds %struct.s_smt_fp_txd, ptr %t.03.i67, i32 0, i32 5
  %40 = ptrtoint ptr %txd_next.i68 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %txd_next.i68, align 4
  %i.0.i69 = add i32 %i.04.i66, -1
  %tobool.not.i70 = icmp eq i32 %i.0.i69, 0
  br i1 %tobool.not.i70, label %for.body.i71.for.end.i75_crit_edge, label %for.body.i71.for.body.i71_crit_edge

for.body.i71.for.body.i71_crit_edge:              ; preds = %for.body.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i71

for.body.i71.for.end.i75_crit_edge:               ; preds = %for.body.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i75

for.end.i75:                                      ; preds = %for.body.i71.for.end.i75_crit_edge, %if.end12.for.end.i75_crit_edge
  %t.0.lcssa.i72 = phi ptr [ %35, %if.end12.for.end.i75_crit_edge ], [ %41, %for.body.i71.for.end.i75_crit_edge ]
  %txd_ntdadr.i73 = getelementptr inbounds %struct.s_smt_fp_txd, ptr %t.0.lcssa.i72, i32 0, i32 3
  %42 = ptrtoint ptr %txd_ntdadr.i73 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %txd_ntdadr.i73, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool4.not5.i74 = icmp eq i16 %37, 0
  br i1 %tobool4.not5.i74, label %for.end.i75.repair_txd_ring.exit92_crit_edge, label %for.end.i75.while.body.i80_crit_edge

for.end.i75.while.body.i80_crit_edge:             ; preds = %for.end.i75
  br label %while.body.i80

for.end.i75.repair_txd_ring.exit92_crit_edge:     ; preds = %for.end.i75
  call void @__sanitizer_cov_trace_pc() #10
  br label %repair_txd_ring.exit92

while.body.i80:                                   ; preds = %if.end11.i90.while.body.i80_crit_edge, %for.end.i75.while.body.i80_crit_edge
  %t.18.i76 = phi ptr [ %54, %if.end11.i90.while.body.i80_crit_edge ], [ %35, %for.end.i75.while.body.i80_crit_edge ]
  %phys.07.i77 = phi i32 [ %52, %if.end11.i90.while.body.i80_crit_edge ], [ %44, %for.end.i75.while.body.i80_crit_edge ]
  %tx_used.06.i78 = phi i32 [ %dec14.i88, %if.end11.i90.while.body.i80_crit_edge ], [ %conv.i60, %for.end.i75.while.body.i80_crit_edge ]
  %45 = ptrtoint ptr %t.18.i76 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %t.18.i76, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %47)
  %tobool5.not.i79 = icmp sgt i32 %47, -1
  br i1 %tobool5.not.i79, label %while.body.i80.if.end11.i90_crit_edge, label %if.then.i83

while.body.i80.if.end11.i90_crit_edge:            ; preds = %while.body.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i90

if.then.i83:                                      ; preds = %while.body.i80
  %and6.i81 = and i32 %47, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i81)
  %tobool7.not.i82 = icmp eq i32 %and6.i81, 0
  br i1 %tobool7.not.i82, label %if.else.i85, label %if.then.i83.repair_txd_ring.exit92_crit_edge

if.then.i83.repair_txd_ring.exit92_crit_edge:     ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #10
  br label %repair_txd_ring.exit92

if.else.i85:                                      ; preds = %if.then.i83
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %t.18.i76 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %t.18.i76, align 4
  %and10.i84 = and i32 %49, -129
  store volatile i32 %and10.i84, ptr %t.18.i76, align 4
  br label %if.end11.i90

if.end11.i90:                                     ; preds = %if.else.i85, %while.body.i80.if.end11.i90_crit_edge
  %txd_ntdadr12.i86 = getelementptr inbounds %struct.s_smt_fp_txd, ptr %t.18.i76, i32 0, i32 3
  %50 = ptrtoint ptr %txd_ntdadr12.i86 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %txd_ntdadr12.i86, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #8
  %txd_next13.i87 = getelementptr inbounds %struct.s_smt_fp_txd, ptr %t.18.i76, i32 0, i32 5
  %53 = ptrtoint ptr %txd_next13.i87 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %txd_next13.i87, align 4
  %dec14.i88 = add nsw i32 %tx_used.06.i78, -1
  %tobool4.not.i89 = icmp eq i32 %dec14.i88, 0
  br i1 %tobool4.not.i89, label %if.end11.i90.repair_txd_ring.exit92_crit_edge, label %if.end11.i90.while.body.i80_crit_edge

if.end11.i90.while.body.i80_crit_edge:            ; preds = %if.end11.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i80

if.end11.i90.repair_txd_ring.exit92_crit_edge:    ; preds = %if.end11.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %repair_txd_ring.exit92

repair_txd_ring.exit92:                           ; preds = %if.end11.i90.repair_txd_ring.exit92_crit_edge, %if.then.i83.repair_txd_ring.exit92_crit_edge, %for.end.i75.repair_txd_ring.exit92_crit_edge
  %phys.0.lcssa.i91 = phi i32 [ %44, %for.end.i75.repair_txd_ring.exit92_crit_edge ], [ %52, %if.end11.i90.repair_txd_ring.exit92_crit_edge ], [ %phys.07.i77, %if.then.i83.repair_txd_ring.exit92_crit_edge ]
  %55 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw, align 8
  %add.ptr20 = getelementptr i8, ptr %56, i32 720
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  %57 = tail call i32 @llvm.bswap.i32(i32 %phys.0.lcssa.i91) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %57) #8, !srcloc !59
  %tx_used25 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 11, i32 0, i32 4
  %58 = ptrtoint ptr %tx_used25 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %tx_used25, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool26.not = icmp eq i16 %59, 0
  br i1 %tobool26.not, label %repair_txd_ring.exit92.if.end31_crit_edge, label %if.then27

repair_txd_ring.exit92.if.end31_crit_edge:        ; preds = %repair_txd_ring.exit92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then27:                                        ; preds = %repair_txd_ring.exit92
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw, align 8
  %add.ptr30 = getelementptr i8, ptr %61, i32 124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 268435456) #8, !srcloc !59
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %repair_txd_ring.exit92.if.end31_crit_edge
  %rx = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 10
  %62 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rx, align 4
  %rx_curr_get.i = getelementptr inbounds %struct.s_smt_rx_queue, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %rx_curr_get.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rx_curr_get.i, align 4
  %rx_used1.i = getelementptr inbounds %struct.s_smt_rx_queue, ptr %63, i32 0, i32 4
  %66 = ptrtoint ptr %rx_used1.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %rx_used1.i, align 2
  %rxd_next.i = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %65, i32 0, i32 5
  %68 = ptrtoint ptr %rxd_next.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %rxd_next.i, align 4
  %rxd_next.1.i = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %rxd_next.1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile ptr, ptr %rxd_next.1.i, align 4
  %rxd_next.2.i = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %71, i32 0, i32 5
  %72 = ptrtoint ptr %rxd_next.2.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %rxd_next.2.i, align 4
  %rxd_next.3.i = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %73, i32 0, i32 5
  %74 = ptrtoint ptr %rxd_next.3.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %rxd_next.3.i, align 4
  %rxd_next.4.i = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %rxd_next.4.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %rxd_next.4.i, align 4
  %rxd_next.5.i = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %rxd_next.5.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile ptr, ptr %rxd_next.5.i, align 4
  %rxd_next.6.i = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %79, i32 0, i32 5
  %80 = ptrtoint ptr %rxd_next.6.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %rxd_next.6.i, align 4
  %rxd_next.7.i = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %81, i32 0, i32 5
  %82 = ptrtoint ptr %rxd_next.7.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile ptr, ptr %rxd_next.7.i, align 4
  %rxd_next.8.i = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %rxd_next.8.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile ptr, ptr %rxd_next.8.i, align 4
  %rxd_next.9.i = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %85, i32 0, i32 5
  %86 = ptrtoint ptr %rxd_next.9.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile ptr, ptr %rxd_next.9.i, align 4
  %rxd_nrdadr.i = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %rxd_nrdadr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %rxd_nrdadr.i, align 4
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool3.not3.i = icmp eq i16 %67, 0
  br i1 %tobool3.not3.i, label %if.end31.repair_rxd_ring.exit_crit_edge, label %while.body.preheader.i

if.end31.repair_rxd_ring.exit_crit_edge:          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %repair_rxd_ring.exit

while.body.preheader.i:                           ; preds = %if.end31
  %conv.i93 = zext i16 %67 to i32
  br label %while.body.i95

while.body.i95:                                   ; preds = %if.end10.i.while.body.i95_crit_edge, %while.body.preheader.i
  %r.16.i = phi ptr [ %100, %if.end10.i.while.body.i95_crit_edge ], [ %65, %while.body.preheader.i ]
  %phys.05.i = phi i32 [ %98, %if.end10.i.while.body.i95_crit_edge ], [ %90, %while.body.preheader.i ]
  %rx_used.04.i = phi i32 [ %dec13.i, %if.end10.i.while.body.i95_crit_edge ], [ %conv.i93, %while.body.preheader.i ]
  %91 = ptrtoint ptr %r.16.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load volatile i32, ptr %r.16.i, align 4
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %93)
  %tobool4.not.i94 = icmp sgt i32 %93, -1
  br i1 %tobool4.not.i94, label %while.body.i95.if.end10.i_crit_edge, label %if.then.i96

while.body.i95.if.end10.i_crit_edge:              ; preds = %while.body.i95
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then.i96:                                      ; preds = %while.body.i95
  %and5.i = and i32 %93, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.else.i97, label %if.then.i96.repair_rxd_ring.exit_crit_edge

if.then.i96.repair_rxd_ring.exit_crit_edge:       ; preds = %if.then.i96
  call void @__sanitizer_cov_trace_pc() #10
  br label %repair_rxd_ring.exit

if.else.i97:                                      ; preds = %if.then.i96
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %r.16.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %r.16.i, align 4
  %and9.i = and i32 %95, -129
  store volatile i32 %and9.i, ptr %r.16.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i97, %while.body.i95.if.end10.i_crit_edge
  %rxd_nrdadr11.i = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %r.16.i, i32 0, i32 3
  %96 = ptrtoint ptr %rxd_nrdadr11.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %rxd_nrdadr11.i, align 4
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #8
  %rxd_next12.i = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %r.16.i, i32 0, i32 5
  %99 = ptrtoint ptr %rxd_next12.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile ptr, ptr %rxd_next12.i, align 4
  %dec13.i = add nsw i32 %rx_used.04.i, -1
  %tobool3.not.i = icmp eq i32 %dec13.i, 0
  br i1 %tobool3.not.i, label %if.end10.i.repair_rxd_ring.exit_crit_edge, label %if.end10.i.while.body.i95_crit_edge

if.end10.i.while.body.i95_crit_edge:              ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i95

if.end10.i.repair_rxd_ring.exit_crit_edge:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %repair_rxd_ring.exit

repair_rxd_ring.exit:                             ; preds = %if.end10.i.repair_rxd_ring.exit_crit_edge, %if.then.i96.repair_rxd_ring.exit_crit_edge, %if.end31.repair_rxd_ring.exit_crit_edge
  %phys.0.lcssa.i98 = phi i32 [ %90, %if.end31.repair_rxd_ring.exit_crit_edge ], [ %98, %if.end10.i.repair_rxd_ring.exit_crit_edge ], [ %phys.05.i, %if.then.i96.repair_rxd_ring.exit_crit_edge ]
  %101 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hw, align 8
  %add.ptr38 = getelementptr i8, ptr %102, i32 528
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  %103 = tail call i32 @llvm.bswap.i32(i32 %phys.0.lcssa.i98) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %103) #8, !srcloc !59
  %104 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hw, align 8
  %add.ptr41 = getelementptr i8, ptr %105, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 268435456) #8, !srcloc !59
  br label %cleanup

cleanup:                                          ; preds = %repair_rxd_ring.exit, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fddi_isr(ptr noundef %smc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %isr_flag = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 15
  %0 = ptrtoint ptr %isr_flag to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %isr_flag, align 4
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 8
  %add.ptr189 = getelementptr i8, ptr %2, i32 8
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr189) #8, !srcloc !60
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  %and190 = and i32 %4, 8368179
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190)
  %tobool.not191 = icmp eq i32 %and190, 0
  br i1 %tobool.not191, label %entry.while.end135_crit_edge, label %while.body.lr.ph

entry.while.end135_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end135

while.body.lr.ph:                                 ; preds = %entry
  %detec_count = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 21
  %llc_rx_pipe.i = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 7
  %queued_rx_frames.i = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 9
  %r.i = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 1
  %mb_pos.i = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 1, i32 1
  %mb_free.i.i = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 0, i32 1
  %ev_get = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 9, i32 2
  %ev_put = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 9, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end134.while.body_crit_edge, %while.body.lr.ph
  %5 = phi i32 [ %4, %while.body.lr.ph ], [ %77, %if.end134.while.body_crit_edge ]
  %and1 = and i32 %5, 8359953
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %while.body.if.end107_crit_edge, label %if.then

while.body.if.end107_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

if.then:                                          ; preds = %while.body
  %and3 = and i32 %5, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %if.then5

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @plc1_irq(ptr noundef %smc) #8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %and6 = and i32 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @plc2_irq(ptr noundef %smc) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %and10 = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end22_crit_edge, label %if.then12

if.end9.if.end22_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %add.ptr15 = getelementptr i8, ptr %7, i32 1024
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr15) #8, !srcloc !62
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %add.ptr19 = getelementptr i8, ptr %11, i32 1028
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr19) #8, !srcloc !62
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void @mac1_irq(ptr noundef %smc, i16 noundef zeroext %9, i16 noundef zeroext %13) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then12, %if.end9.if.end22_crit_edge
  %and23 = and i32 %5, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end36_crit_edge, label %if.then25

if.end22.if.end36_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 8
  %add.ptr28 = getelementptr i8, ptr %15, i32 1032
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr28) #8, !srcloc !62
  %17 = tail call i16 @llvm.bswap.i16(i16 %16) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 8
  %add.ptr32 = getelementptr i8, ptr %19, i32 1036
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr32) #8, !srcloc !62
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void @mac2_irq(ptr noundef %smc, i16 noundef zeroext %17, i16 noundef zeroext %21) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then25, %if.end22.if.end36_crit_edge
  %and37 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end49_crit_edge, label %if.then39

if.end36.if.end49_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 8
  %add.ptr42 = getelementptr i8, ptr %23, i32 1412
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr42) #8, !srcloc !62
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 8
  %add.ptr46 = getelementptr i8, ptr %27, i32 1416
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr46) #8, !srcloc !62
  %29 = tail call i16 @llvm.bswap.i16(i16 %28) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void @mac3_irq(ptr noundef %smc, i16 noundef zeroext %25, i16 noundef zeroext %29) #8
  br label %if.end49

if.end49:                                         ; preds = %if.then39, %if.end36.if.end49_crit_edge
  %and50 = and i32 %5, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end49.if.end57_crit_edge, label %if.then52

if.end49.if.end57_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then52:                                        ; preds = %if.end49
  tail call void @timer_irq(ptr noundef %smc) #8
  %30 = ptrtoint ptr %detec_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %detec_count, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %detec_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc)
  %cmp = icmp sgt i32 %inc, 4
  br i1 %cmp, label %if.then55, label %if.then52.if.end57_crit_edge

if.then52.if.end57_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then55:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @process_receive(ptr noundef %smc)
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.then52.if.end57_crit_edge, %if.end49.if.end57_crit_edge
  %and58 = and i32 %5, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.end57.if.end61_crit_edge, label %if.then60

if.end57.if.end61_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rtm_irq(ptr noundef %smc) #8
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end57.if.end61_crit_edge
  %and62 = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end61.if.end70_crit_edge, label %if.then64

if.end61.if.end70_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

if.then64:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw, align 8
  %add.ptr67 = getelementptr i8, ptr %33, i32 540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 134217728) #8, !srcloc !59
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 504, ptr noundef nonnull @.str.7) #11
  br label %if.end70

if.end70:                                         ; preds = %if.then64, %if.end61.if.end70_crit_edge
  %and71 = and i32 %5, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end70.if.end82_crit_edge, label %if.then73

if.end70.if.end82_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 8
  %add.ptr76 = getelementptr i8, ptr %35, i32 540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 16777216) #8, !srcloc !59
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 505, ptr noundef nonnull @.str.10) #11
  br label %if.end82

if.end82:                                         ; preds = %if.then73, %if.end70.if.end82_crit_edge
  %and83 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end82.if.end94_crit_edge, label %if.then85

if.end82.if.end94_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

if.then85:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw, align 8
  %add.ptr88 = getelementptr i8, ptr %37, i32 668
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 16777216) #8, !srcloc !59
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 506, ptr noundef nonnull @.str.13) #11
  br label %if.end94

if.end94:                                         ; preds = %if.then85, %if.end82.if.end94_crit_edge
  %and95 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end94.if.end107_crit_edge, label %if.then97

if.end94.if.end107_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

if.then97:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw, align 8
  %add.ptr100 = getelementptr i8, ptr %39, i32 732
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 16777216) #8, !srcloc !59
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 507, ptr noundef nonnull @.str.16) #11
  br label %if.end107

if.end107:                                        ; preds = %if.then97, %if.end94.if.end107_crit_edge, %while.body.if.end107_crit_edge
  %and108 = and i32 %5, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  br i1 %tobool109.not, label %if.end107.if.end118_crit_edge, label %if.then110

if.end107.if.end118_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw, align 8
  %add.ptr114 = getelementptr i8, ptr %41, i32 732
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114, i32 33554432) #8, !srcloc !59
  %42 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw, align 8
  %add.ptr117 = getelementptr i8, ptr %43, i32 668
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr117, i32 33554432) #8, !srcloc !59
  tail call fastcc void @mac_drv_clear_txd(ptr noundef %smc)
  tail call void @llc_restart_tx(ptr noundef %smc) #8
  br label %if.end118

if.end118:                                        ; preds = %if.then110, %if.end107.if.end118_crit_edge
  %and119 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.end118.if.end126_crit_edge, label %if.then121

if.end118.if.end126_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end126

if.then121:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw, align 8
  %add.ptr125 = getelementptr i8, ptr %45, i32 540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr125, i32 33554432) #8, !srcloc !59
  tail call void @process_receive(ptr noundef %smc)
  br label %if.end126

if.end126:                                        ; preds = %if.then121, %if.end118.if.end126_crit_edge
  %46 = ptrtoint ptr %llc_rx_pipe.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %llc_rx_pipe.i, align 4
  %tobool.not.i188 = icmp eq ptr %47, null
  br i1 %tobool.not.i188, label %if.end126.while.end_crit_edge, label %if.end126.if.then.i.i_crit_edge

if.end126.if.then.i.i_crit_edge:                  ; preds = %if.end126
  br label %if.then.i.i

if.end126.while.end_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.then.i.i:                                      ; preds = %smt_to_llc.exit.if.then.i.i_crit_edge, %if.end126.if.then.i.i_crit_edge
  %48 = phi ptr [ %69, %smt_to_llc.exit.if.then.i.i_crit_edge ], [ %47, %if.end126.if.then.i.i_crit_edge ]
  %49 = ptrtoint ptr %queued_rx_frames.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %queued_rx_frames.i, align 4
  %dec.i = add i32 %50, -1
  store i32 %dec.i, ptr %queued_rx_frames.i, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %48, align 4
  %53 = ptrtoint ptr %llc_rx_pipe.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %llc_rx_pipe.i, align 4
  %m_len.i = getelementptr inbounds %struct.s_mbuf, ptr %48, i32 0, i32 2
  %54 = ptrtoint ptr %m_len.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %m_len.i, align 4
  %56 = ptrtoint ptr %r.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %r.i, align 4
  %m_data.i = getelementptr inbounds %struct.s_mbuf, ptr %48, i32 0, i32 4
  %m_off.i = getelementptr inbounds %struct.s_mbuf, ptr %48, i32 0, i32 1
  %57 = ptrtoint ptr %m_off.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %m_off.i, align 4
  %conv.i = sext i16 %58 to i32
  %add.ptr.i = getelementptr i8, ptr %m_data.i, i32 %conv.i
  %59 = ptrtoint ptr %mb_pos.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr.i, ptr %mb_pos.i, align 4
  %60 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %add.ptr.i, align 1
  %62 = load i32, ptr %m_len.i, align 4
  %conv9.i = zext i8 %61 to i32
  %call.i = tail call i32 @mac_drv_rx_init(ptr noundef %smc, i32 noundef %62, i32 noundef %conv9.i, ptr noundef %add.ptr.i, i32 noundef %62) #8
  %sm_use_count.i.i = getelementptr inbounds %struct.s_mbuf, ptr %48, i32 0, i32 3
  %63 = ptrtoint ptr %sm_use_count.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sm_use_count.i.i, align 4
  %dec.i.i = add i32 %64, -1
  store i32 %dec.i.i, ptr %sm_use_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool2.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %if.then.i.i.smt_to_llc.exit_crit_edge

if.then.i.i.smt_to_llc.exit_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smt_to_llc.exit

if.then3.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %mb_free.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mb_free.i.i, align 4
  %67 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %48, align 4
  store ptr %48, ptr %mb_free.i.i, align 4
  br label %smt_to_llc.exit

smt_to_llc.exit:                                  ; preds = %if.then3.i.i, %if.then.i.i.smt_to_llc.exit_crit_edge
  %68 = ptrtoint ptr %llc_rx_pipe.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %llc_rx_pipe.i, align 4
  %tobool.not.i = icmp eq ptr %69, null
  br i1 %tobool.not.i, label %smt_to_llc.exit.while.end_crit_edge, label %smt_to_llc.exit.if.then.i.i_crit_edge

smt_to_llc.exit.if.then.i.i_crit_edge:            ; preds = %smt_to_llc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i

smt_to_llc.exit.while.end_crit_edge:              ; preds = %smt_to_llc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %smt_to_llc.exit.while.end_crit_edge, %if.end126.while.end_crit_edge
  %70 = ptrtoint ptr %ev_get to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ev_get, align 4
  %72 = ptrtoint ptr %ev_put to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ev_put, align 4
  %cmp132.not = icmp eq ptr %71, %73
  br i1 %cmp132.not, label %while.end.if.end134_crit_edge, label %if.then133

while.end.if.end134_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

if.then133:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @ev_dispatcher(ptr noundef %smc) #8
  br label %if.end134

if.end134:                                        ; preds = %if.then133, %while.end.if.end134_crit_edge
  %74 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %75, i32 8
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !60
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  %and = and i32 %77, 8368179
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end134.while.end135_crit_edge, label %if.end134.while.body_crit_edge

if.end134.while.body_crit_edge:                   ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end134.while.end135_crit_edge:                 ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end135

while.end135:                                     ; preds = %if.end134.while.end135_crit_edge, %entry.while.end135_crit_edge
  %78 = ptrtoint ptr %isr_flag to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %isr_flag, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @plc1_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @plc2_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mac1_irq(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mac2_irq(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mac3_irq(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @timer_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @process_receive(ptr noundef %smc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %detec_count = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 21
  %0 = ptrtoint ptr %detec_count to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %detec_count, align 4
  %rx = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 10
  %1 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %rx, align 4
  %rx_curr_get = getelementptr inbounds %struct.s_smt_rx_queue, ptr %2, i32 0, i32 2
  %rx_used1 = getelementptr inbounds %struct.s_smt_rx_queue, ptr %2, i32 0, i32 4
  %rx_free = getelementptr inbounds %struct.s_smt_rx_queue, ptr %2, i32 0, i32 3
  %err_stats = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 7
  %fddiMACCopied_Ct = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 33
  %err_abort = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 7, i32 1
  %err_e_indicator = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 7, i32 2
  %err_crc = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 7, i32 3
  %err_imp_frame = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 7, i32 7
  %rx_len_error = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 22
  %fddi_canon_addr = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 20
  %arrayidx124 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 20, i32 0, i32 5
  %arrayidx133 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 20, i32 0, i32 4
  %arrayidx143 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 20, i32 0, i32 3
  %arrayidx153 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 20, i32 0, i32 2
  %arrayidx163 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 20, i32 0, i32 1
  %pass_llc_promisc = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 6
  %mb_free.i = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 0, i32 1
  %pass_DB = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 5
  %err_smt_frame306 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 7, i32 6
  %pass_NSA = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 4
  %pass_SMT316 = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 3
  %err_mac_frame = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 7, i32 5
  %err_no_buf = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 7, i32 8
  %err_too_long = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 7, i32 9
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %3 = ptrtoint ptr %rx_curr_get to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_curr_get, align 4
  %5 = ptrtoint ptr %rx_used1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %rx_used1, align 2
  br label %do.body

do.body:                                          ; preds = %if.end20.do.body_crit_edge, %for.cond
  %rx_used.0 = phi i16 [ %6, %for.cond ], [ %dec, %if.end20.do.body_crit_edge ]
  %r.0 = phi ptr [ %4, %for.cond ], [ %19, %if.end20.do.body_crit_edge ]
  %frag_count.0 = phi i32 [ 0, %for.cond ], [ %inc, %if.end20.do.body_crit_edge ]
  %n.0 = phi i32 [ 0, %for.cond ], [ %add, %if.end20.do.body_crit_edge ]
  %7 = ptrtoint ptr %r.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %r.0, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool.not = icmp sgt i32 %9, -1
  br i1 %tobool.not, label %if.end, label %do.body.rx_end_crit_edge

do.body.rx_end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx_end

if.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rx_used.0)
  %tobool3.not = icmp eq i16 %rx_used.0, 0
  br i1 %tobool3.not, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 509, ptr noundef nonnull @.str.18) #11
  %hw_state = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 11
  %10 = ptrtoint ptr %hw_state to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %hw_state, align 2
  tail call void @mac_drv_clear_rx_queue(ptr noundef %smc)
  %11 = ptrtoint ptr %hw_state to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %hw_state, align 2
  tail call void @mac_drv_fill_rxd(ptr noundef %smc) #8
  %12 = ptrtoint ptr %detec_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %detec_count, align 4
  br label %rx_end

if.end13:                                         ; preds = %if.end
  %rxd_rfsw = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %r.0, i32 0, i32 1
  %13 = ptrtoint ptr %rxd_rfsw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %rxd_rfsw, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %and15 = shl i32 %9, 5
  %16 = xor i32 %and15, %9
  %17 = and i32 %16, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not = icmp eq i32 %17, 0
  br i1 %cmp.not, label %if.end13.if.end20_crit_edge, label %if.then16

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frag_count.0)
  %tobool17.not = icmp eq i32 %frag_count.0, 0
  br i1 %tobool17.not, label %if.then16.if.end20_crit_edge, label %if.then16.land.rhs.preheader_crit_edge

if.then16.land.rhs.preheader_crit_edge:           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.preheader

if.then16.if.end20_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end20:                                         ; preds = %if.then16.if.end20_crit_edge, %if.end13.if.end20_crit_edge
  %rfsw.0 = phi i32 [ 0, %if.then16.if.end20_crit_edge ], [ %15, %if.end13.if.end20_crit_edge ]
  %and21 = and i32 %9, 65535
  %add = add i32 %and21, %n.0
  %rxd_next = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %r.0, i32 0, i32 5
  %18 = ptrtoint ptr %rxd_next to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %rxd_next, align 4
  %inc = add nuw nsw i32 %frag_count.0, 1
  %dec = add i16 %rx_used.0, -1
  %and23 = and i32 %9, 536870912
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end20.do.body_crit_edge, label %do.end25

if.end20.do.body_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %tobool27.not520 = icmp eq i16 %dec, 0
  br i1 %tobool27.not520, label %do.end25.while.end_crit_edge, label %do.end25.land.rhs.preheader_crit_edge

do.end25.land.rhs.preheader_crit_edge:            ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.preheader

do.end25.while.end_crit_edge:                     ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs.preheader:                               ; preds = %do.end25.land.rhs.preheader_crit_edge, %if.then16.land.rhs.preheader_crit_edge
  %n.1548 = phi i32 [ %add, %do.end25.land.rhs.preheader_crit_edge ], [ %n.0, %if.then16.land.rhs.preheader_crit_edge ]
  %frag_count.1546 = phi i32 [ %inc, %do.end25.land.rhs.preheader_crit_edge ], [ %frag_count.0, %if.then16.land.rhs.preheader_crit_edge ]
  %r.1545 = phi ptr [ %19, %do.end25.land.rhs.preheader_crit_edge ], [ %r.0, %if.then16.land.rhs.preheader_crit_edge ]
  %rfsw.1543 = phi i32 [ %rfsw.0, %do.end25.land.rhs.preheader_crit_edge ], [ 0, %if.then16.land.rhs.preheader_crit_edge ]
  %rx_used.1542 = phi i16 [ %dec, %do.end25.land.rhs.preheader_crit_edge ], [ %rx_used.0, %if.then16.land.rhs.preheader_crit_edge ]
  %20 = add i32 %frag_count.1546, 1
  %21 = add i16 %rx_used.1542, -1
  %22 = zext i16 %21 to i32
  %23 = add i32 %20, %22
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.preheader
  %frag_count.2523 = phi i32 [ %inc34, %while.body.land.rhs_crit_edge ], [ %frag_count.1546, %land.rhs.preheader ]
  %r.2522 = phi ptr [ %27, %while.body.land.rhs_crit_edge ], [ %r.1545, %land.rhs.preheader ]
  %rx_used.2521 = phi i16 [ %dec35, %while.body.land.rhs_crit_edge ], [ %rx_used.1542, %land.rhs.preheader ]
  %24 = ptrtoint ptr %r.2522 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %r.2522, align 4
  %and29 = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %rxd_next33 = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %r.2522, i32 0, i32 5
  %26 = ptrtoint ptr %rxd_next33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %rxd_next33, align 4
  %inc34 = add nuw nsw i32 %frag_count.2523, 1
  %dec35 = add i16 %rx_used.2521, -1
  %tobool27.not = icmp eq i16 %dec35, 0
  br i1 %tobool27.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge, %do.end25.while.end_crit_edge
  %n.1549 = phi i32 [ %add, %do.end25.while.end_crit_edge ], [ %n.1548, %while.body.while.end_crit_edge ], [ %n.1548, %land.rhs.while.end_crit_edge ]
  %frag_count.1547 = phi i32 [ %inc, %do.end25.while.end_crit_edge ], [ %frag_count.1546, %while.body.while.end_crit_edge ], [ %frag_count.1546, %land.rhs.while.end_crit_edge ]
  %rfsw.1544 = phi i32 [ %rfsw.0, %do.end25.while.end_crit_edge ], [ %rfsw.1543, %while.body.while.end_crit_edge ], [ %rfsw.1543, %land.rhs.while.end_crit_edge ]
  %rx_used.2.lcssa = phi i16 [ 0, %do.end25.while.end_crit_edge ], [ %rx_used.2521, %land.rhs.while.end_crit_edge ], [ 0, %while.body.while.end_crit_edge ]
  %r.2.lcssa = phi ptr [ %19, %do.end25.while.end_crit_edge ], [ %r.2522, %land.rhs.while.end_crit_edge ], [ %27, %while.body.while.end_crit_edge ]
  %frag_count.2.lcssa = phi i32 [ %inc, %do.end25.while.end_crit_edge ], [ %frag_count.2523, %land.rhs.while.end_crit_edge ], [ %23, %while.body.while.end_crit_edge ]
  %28 = ptrtoint ptr %rx_curr_get to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %r.2.lcssa, ptr %rx_curr_get, align 4
  %29 = ptrtoint ptr %rx_free to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %rx_free, align 4
  %31 = trunc i32 %frag_count.2.lcssa to i16
  %conv41 = add i16 %30, %31
  store i16 %conv41, ptr %rx_free, align 4
  %32 = ptrtoint ptr %rx_used1 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %rx_used.2.lcssa, ptr %rx_used1, align 2
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %4, align 4
  %and44 = and i32 %34, -65
  store volatile i32 %and44, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frag_count.2.lcssa)
  %tobool46.not529 = icmp eq i32 %frag_count.2.lcssa, 0
  br i1 %tobool46.not529, label %while.end.for.end_crit_edge, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  br label %for.body

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.end.for.body_crit_edge
  %i.0531 = phi i32 [ %dec49, %for.body.for.body_crit_edge ], [ %frag_count.2.lcssa, %while.end.for.body_crit_edge ]
  %r.3530 = phi ptr [ %36, %for.body.for.body_crit_edge ], [ %4, %while.end.for.body_crit_edge ]
  tail call void @dma_complete(ptr noundef %smc, ptr noundef %r.3530, i32 noundef 2) #8
  %rxd_next48 = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %r.3530, i32 0, i32 5
  %35 = ptrtoint ptr %rxd_next48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %rxd_next48, align 4
  %dec49 = add nsw i32 %i.0531, -1
  %tobool46.not = icmp eq i32 %dec49, 0
  br i1 %tobool46.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %while.end.for.end_crit_edge
  %37 = ptrtoint ptr %err_stats to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %err_stats, align 4
  %inc52 = add i32 %38, 1
  store i32 %inc52, ptr %err_stats, align 4
  %39 = ptrtoint ptr %fddiMACCopied_Ct to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fddiMACCopied_Ct, align 4
  %inc54 = add i32 %40, 1
  store i32 %inc54, ptr %fddiMACCopied_Ct, align 4
  %and55 = and i32 %rfsw.1544, 65535
  %sub = add nsw i32 %and55, -4
  %and57 = and i32 %rfsw.1544, 1226833920
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end96, label %if.then59

if.then59:                                        ; preds = %for.end
  %and60 = and i32 %rfsw.1544, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.then59.if.end68_crit_edge, label %if.then62

if.then59.if.end68_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then62:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %err_abort to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %err_abort, align 4
  %inc67 = add i32 %42, 1
  store i32 %inc67, ptr %err_abort, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then62, %if.then59.if.end68_crit_edge
  %and69 = and i32 %rfsw.1544, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end68.if.end77_crit_edge, label %if.then71

if.end68.if.end77_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %err_e_indicator to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %err_e_indicator, align 4
  %inc76 = add i32 %44, 1
  store i32 %inc76, ptr %err_e_indicator, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then71, %if.end68.if.end77_crit_edge
  %and78 = and i32 %rfsw.1544, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end77.if.end86_crit_edge, label %if.then80

if.end77.if.end86_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %err_crc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %err_crc, align 4
  %inc85 = add i32 %46, 1
  store i32 %inc85, ptr %err_crc, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then80, %if.end77.if.end86_crit_edge
  %and87 = and i32 %rfsw.1544, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.end86.abort_frame_crit_edge, label %if.end86.abort_frame.sink.split_crit_edge

if.end86.abort_frame.sink.split_crit_edge:        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort_frame.sink.split

if.end86.abort_frame_crit_edge:                   ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort_frame

if.end96:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4495, i32 %and55)
  %cmp97 = icmp ugt i32 %and55, 4495
  br i1 %cmp97, label %if.end96.abort_frame.sink.split_crit_edge, label %if.end105

if.end96.abort_frame.sink.split_crit_edge:        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort_frame.sink.split

if.end105:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and55)
  %cmp106 = icmp ult i32 %and55, 9
  br i1 %cmp106, label %if.end105.abort_frame_crit_edge, label %if.end110

if.end105.abort_frame_crit_edge:                  ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort_frame

if.end110:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_cmp4(i32 %and55, i32 %n.1549)
  %cmp112.not = icmp eq i32 %and55, %n.1549
  br i1 %cmp112.not, label %if.end119, label %if.end110.abort_frame.sink.split_crit_edge

if.end110.abort_frame.sink.split_crit_edge:       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort_frame.sink.split

if.end119:                                        ; preds = %if.end110
  %rxd_virt = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %4, i32 0, i32 4
  %47 = ptrtoint ptr %rxd_virt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %rxd_virt, align 4
  %arrayidx121 = getelementptr i8, ptr %48, i32 12
  %49 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx121, align 1
  %51 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx124, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %50, i8 %52)
  %cmp126 = icmp eq i8 %50, %52
  br i1 %cmp126, label %land.lhs.true, label %if.end119.if.end179_crit_edge

if.end119.if.end179_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end179

land.lhs.true:                                    ; preds = %if.end119
  %arrayidx128 = getelementptr i8, ptr %48, i32 11
  %53 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx128, align 1
  %55 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx133, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %54, i8 %56)
  %cmp135 = icmp eq i8 %54, %56
  br i1 %cmp135, label %land.lhs.true137, label %land.lhs.true.if.end179_crit_edge

land.lhs.true.if.end179_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end179

land.lhs.true137:                                 ; preds = %land.lhs.true
  %arrayidx138 = getelementptr i8, ptr %48, i32 10
  %57 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx138, align 1
  %59 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx143, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %58, i8 %60)
  %cmp145 = icmp eq i8 %58, %60
  br i1 %cmp145, label %land.lhs.true147, label %land.lhs.true137.if.end179_crit_edge

land.lhs.true137.if.end179_crit_edge:             ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end179

land.lhs.true147:                                 ; preds = %land.lhs.true137
  %arrayidx148 = getelementptr i8, ptr %48, i32 9
  %61 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx148, align 1
  %63 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx153, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %62, i8 %64)
  %cmp155 = icmp eq i8 %62, %64
  br i1 %cmp155, label %land.lhs.true157, label %land.lhs.true147.if.end179_crit_edge

land.lhs.true147.if.end179_crit_edge:             ; preds = %land.lhs.true147
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end179

land.lhs.true157:                                 ; preds = %land.lhs.true147
  %arrayidx158 = getelementptr i8, ptr %48, i32 8
  %65 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx158, align 1
  %67 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx163, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %66, i8 %68)
  %cmp165 = icmp eq i8 %66, %68
  br i1 %cmp165, label %land.lhs.true167, label %land.lhs.true157.if.end179_crit_edge

land.lhs.true157.if.end179_crit_edge:             ; preds = %land.lhs.true157
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end179

land.lhs.true167:                                 ; preds = %land.lhs.true157
  %arrayidx168 = getelementptr i8, ptr %48, i32 7
  %69 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx168, align 1
  %71 = and i8 %70, -2
  %72 = ptrtoint ptr %fddi_canon_addr to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %fddi_canon_addr, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %71, i8 %73)
  %cmp176 = icmp eq i8 %71, %73
  br i1 %cmp176, label %land.lhs.true167.abort_frame_crit_edge, label %land.lhs.true167.if.end179_crit_edge

land.lhs.true167.if.end179_crit_edge:             ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end179

land.lhs.true167.abort_frame_crit_edge:           ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort_frame

if.end179:                                        ; preds = %land.lhs.true167.if.end179_crit_edge, %land.lhs.true157.if.end179_crit_edge, %land.lhs.true147.if.end179_crit_edge, %land.lhs.true137.if.end179_crit_edge, %land.lhs.true.if.end179_crit_edge, %if.end119.if.end179_crit_edge
  %and180 = and i32 %rfsw.1544, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and180)
  %tobool181.not = icmp eq i32 %and180, 0
  br i1 %tobool181.not, label %if.else, label %if.then182

if.then182:                                       ; preds = %if.end179
  %74 = ptrtoint ptr %pass_llc_promisc to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %pass_llc_promisc, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool185.not = icmp eq i16 %75, 0
  br i1 %tobool185.not, label %if.then186, label %if.then182.if.end254_crit_edge

if.then182.if.end254_crit_edge:                   ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end254

if.then186:                                       ; preds = %if.then182
  %arrayidx187 = getelementptr i8, ptr %48, i32 1
  %76 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx187, align 1
  %78 = and i8 %77, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool190.not = icmp eq i8 %78, 0
  br i1 %tobool190.not, label %if.then191, label %if.then186.if.end254_crit_edge

if.then186.if.end254_crit_edge:                   ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end254

if.then191:                                       ; preds = %if.then186
  %arrayidx192 = getelementptr i8, ptr %48, i32 6
  %79 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx192, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %80, i8 %52)
  %cmp199.not = icmp eq i8 %80, %52
  br i1 %cmp199.not, label %lor.lhs.false, label %if.then191.abort_frame_crit_edge

if.then191.abort_frame_crit_edge:                 ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort_frame

lor.lhs.false:                                    ; preds = %if.then191
  %arrayidx201 = getelementptr i8, ptr %48, i32 5
  %81 = ptrtoint ptr %arrayidx201 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx201, align 1
  %83 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx133, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %82, i8 %84)
  %cmp208.not = icmp eq i8 %82, %84
  br i1 %cmp208.not, label %lor.lhs.false210, label %lor.lhs.false.abort_frame_crit_edge

lor.lhs.false.abort_frame_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort_frame

lor.lhs.false210:                                 ; preds = %lor.lhs.false
  %arrayidx211 = getelementptr i8, ptr %48, i32 4
  %85 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx211, align 1
  %87 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx143, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %86, i8 %88)
  %cmp218.not = icmp eq i8 %86, %88
  br i1 %cmp218.not, label %lor.lhs.false220, label %lor.lhs.false210.abort_frame_crit_edge

lor.lhs.false210.abort_frame_crit_edge:           ; preds = %lor.lhs.false210
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort_frame

lor.lhs.false220:                                 ; preds = %lor.lhs.false210
  %arrayidx221 = getelementptr i8, ptr %48, i32 3
  %89 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx221, align 1
  %91 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx153, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %90, i8 %92)
  %cmp228.not = icmp eq i8 %90, %92
  br i1 %cmp228.not, label %lor.lhs.false230, label %lor.lhs.false220.abort_frame_crit_edge

lor.lhs.false220.abort_frame_crit_edge:           ; preds = %lor.lhs.false220
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort_frame

lor.lhs.false230:                                 ; preds = %lor.lhs.false220
  %arrayidx231 = getelementptr i8, ptr %48, i32 2
  %93 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx231, align 1
  %95 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx163, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %94, i8 %96)
  %cmp238.not = icmp eq i8 %94, %96
  br i1 %cmp238.not, label %lor.lhs.false240, label %lor.lhs.false230.abort_frame_crit_edge

lor.lhs.false230.abort_frame_crit_edge:           ; preds = %lor.lhs.false230
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort_frame

lor.lhs.false240:                                 ; preds = %lor.lhs.false230
  %97 = ptrtoint ptr %fddi_canon_addr to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %fddi_canon_addr, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %77, i8 %98)
  %cmp248.not = icmp eq i8 %77, %98
  br i1 %cmp248.not, label %lor.lhs.false240.if.end254_crit_edge, label %lor.lhs.false240.abort_frame_crit_edge

lor.lhs.false240.abort_frame_crit_edge:           ; preds = %lor.lhs.false240
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort_frame

lor.lhs.false240.if.end254_crit_edge:             ; preds = %lor.lhs.false240
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end254

if.end254:                                        ; preds = %lor.lhs.false240.if.end254_crit_edge, %if.then186.if.end254_crit_edge, %if.then182.if.end254_crit_edge
  tail call void @mac_drv_rx_complete(ptr noundef %smc, ptr noundef %4, i32 noundef %frag_count.2.lcssa, i32 noundef %sub) #8
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %abort_frame, %if.else348, %if.then343, %if.then3.i, %if.then.i508.for.cond.backedge_crit_edge, %if.end326, %if.end301, %if.end254
  br label %for.cond

if.else:                                          ; preds = %if.end179
  %99 = ptrtoint ptr %mb_free.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mb_free.i, align 4
  %tobool.not.i = icmp eq ptr %100, null
  br i1 %tobool.not.i, label %if.else.abort_frame.sink.split_crit_edge, label %if.end264

if.else.abort_frame.sink.split_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort_frame.sink.split

if.end264:                                        ; preds = %if.else
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %103 = ptrtoint ptr %mb_free.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %102, ptr %mb_free.i, align 4
  %m_off.i = getelementptr inbounds %struct.s_mbuf, ptr %100, i32 0, i32 1
  %104 = ptrtoint ptr %m_off.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 8, ptr %m_off.i, align 4
  %sm_use_count.i = getelementptr inbounds %struct.s_mbuf, ptr %100, i32 0, i32 3
  %105 = ptrtoint ptr %sm_use_count.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1, ptr %sm_use_count.i, align 4
  %m_data = getelementptr inbounds %struct.s_mbuf, ptr %100, i32 0, i32 4
  %add.ptr266 = getelementptr %struct.s_mbuf, ptr %100, i32 0, i32 4, i32 7
  br label %for.body269

for.body269:                                      ; preds = %for.body269.for.body269_crit_edge, %if.end264
  %i.1535 = phi i32 [ %dec277, %for.body269.for.body269_crit_edge ], [ %frag_count.1547, %if.end264 ]
  %r.4534 = phi ptr [ %114, %for.body269.for.body269_crit_edge ], [ %4, %if.end264 ]
  %data.0533 = phi ptr [ %add.ptr274, %for.body269.for.body269_crit_edge ], [ %add.ptr266, %if.end264 ]
  %106 = ptrtoint ptr %r.4534 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %r.4534, align 4
  %108 = and i32 %107, -65536
  %109 = tail call i32 @llvm.bswap.i32(i32 %108)
  %rxd_virt273 = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %r.4534, i32 0, i32 4
  %110 = ptrtoint ptr %rxd_virt273 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile ptr, ptr %rxd_virt273, align 4
  %112 = call ptr @memcpy(ptr %data.0533, ptr %111, i32 %109)
  %add.ptr274 = getelementptr i8, ptr %data.0533, i32 %109
  %rxd_next276 = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %r.4534, i32 0, i32 5
  %113 = ptrtoint ptr %rxd_next276 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile ptr, ptr %rxd_next276, align 4
  %dec277 = add nsw i32 %i.1535, -1
  %tobool268.not = icmp eq i32 %dec277, 0
  br i1 %tobool268.not, label %for.end278, label %for.body269.for.body269_crit_edge

for.body269.for.body269_crit_edge:                ; preds = %for.body269
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body269

for.end278:                                       ; preds = %for.body269
  %115 = ptrtoint ptr %m_off.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %m_off.i, align 4
  %conv282 = sext i16 %116 to i32
  %add.ptr283 = getelementptr i8, ptr %m_data, i32 -1
  %add.ptr284 = getelementptr i8, ptr %add.ptr283, i32 %conv282
  %117 = ptrtoint ptr %add.ptr284 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %add.ptr284, align 1
  %119 = ptrtoint ptr %m_data to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %m_data, align 4
  %sub287 = add nsw i32 %n.1549, -5
  %m_len = getelementptr inbounds %struct.s_mbuf, ptr %100, i32 0, i32 2
  %120 = ptrtoint ptr %m_len to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %sub287, ptr %m_len, align 4
  %121 = zext i8 %118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values)
  switch i8 %118, label %if.then.i514 [
    i8 65, label %sw.bb
    i8 79, label %sw.bb302
    i8 -62, label %sw.bb328
  ]

sw.bb:                                            ; preds = %for.end278
  %122 = ptrtoint ptr %err_smt_frame306 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %err_smt_frame306, align 4
  %inc292 = add i32 %123, 1
  store i32 %inc292, ptr %err_smt_frame306, align 4
  %124 = ptrtoint ptr %pass_SMT316 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %pass_SMT316, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %125)
  %tobool296.not = icmp eq i16 %125, 0
  br i1 %tobool296.not, label %if.else299, label %if.then297

if.then297:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mac_drv_rx_complete(ptr noundef %smc, ptr noundef %4, i32 noundef %frag_count.2.lcssa, i32 noundef %sub) #8
  br label %if.end301

if.else299:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mac_drv_requeue_rxd(ptr noundef %smc, ptr noundef %4, i32 noundef %frag_count.2.lcssa) #8
  br label %if.end301

if.end301:                                        ; preds = %if.else299, %if.then297
  %shr = lshr i32 %rfsw.1544, 25
  tail call void @smt_received_pack(ptr noundef %smc, ptr noundef nonnull %100, i32 noundef %shr) #8
  br label %for.cond.backedge

sw.bb302:                                         ; preds = %for.end278
  %126 = ptrtoint ptr %err_smt_frame306 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %err_smt_frame306, align 4
  %inc307 = add i32 %127, 1
  store i32 %inc307, ptr %err_smt_frame306, align 4
  %128 = ptrtoint ptr %pass_NSA to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %pass_NSA, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %tobool312.not = icmp eq i16 %129, 0
  br i1 %tobool312.not, label %lor.lhs.false313, label %sw.bb302.if.then322_crit_edge

sw.bb302.if.then322_crit_edge:                    ; preds = %sw.bb302
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then322

lor.lhs.false313:                                 ; preds = %sw.bb302
  %130 = ptrtoint ptr %pass_SMT316 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %pass_SMT316, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %tobool318.not = icmp ne i16 %131, 0
  %and320 = and i32 %rfsw.1544, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and320)
  %tobool321.not = icmp eq i32 %and320, 0
  %or.cond = select i1 %tobool318.not, i1 %tobool321.not, i1 false
  br i1 %or.cond, label %lor.lhs.false313.if.then322_crit_edge, label %if.else324

lor.lhs.false313.if.then322_crit_edge:            ; preds = %lor.lhs.false313
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then322

if.then322:                                       ; preds = %lor.lhs.false313.if.then322_crit_edge, %sw.bb302.if.then322_crit_edge
  tail call void @mac_drv_rx_complete(ptr noundef %smc, ptr noundef %4, i32 noundef %frag_count.2.lcssa, i32 noundef %sub) #8
  br label %if.end326

if.else324:                                       ; preds = %lor.lhs.false313
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mac_drv_requeue_rxd(ptr noundef %smc, ptr noundef %4, i32 noundef %frag_count.2.lcssa) #8
  br label %if.end326

if.end326:                                        ; preds = %if.else324, %if.then322
  %shr327 = lshr i32 %rfsw.1544, 25
  tail call void @smt_received_pack(ptr noundef %smc, ptr noundef nonnull %100, i32 noundef %shr327) #8
  br label %for.cond.backedge

sw.bb328:                                         ; preds = %for.end278
  %132 = ptrtoint ptr %pass_DB to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %pass_DB, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %133)
  %tobool331.not = icmp eq i16 %133, 0
  br i1 %tobool331.not, label %if.else334, label %if.then332

if.then332:                                       ; preds = %sw.bb328
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mac_drv_rx_complete(ptr noundef %smc, ptr noundef %4, i32 noundef %frag_count.2.lcssa, i32 noundef %sub) #8
  br label %if.then.i508

if.else334:                                       ; preds = %sw.bb328
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mac_drv_requeue_rxd(ptr noundef %smc, ptr noundef %4, i32 noundef %frag_count.2.lcssa) #8
  br label %if.then.i508

if.then.i508:                                     ; preds = %if.else334, %if.then332
  %134 = ptrtoint ptr %sm_use_count.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %sm_use_count.i, align 4
  %dec.i = add i32 %135, -1
  store i32 %dec.i, ptr %sm_use_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.then.i508.for.cond.backedge_crit_edge

if.then.i508.for.cond.backedge_crit_edge:         ; preds = %if.then.i508
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.then3.i:                                       ; preds = %if.then.i508
  call void @__sanitizer_cov_trace_pc() #10
  %136 = ptrtoint ptr %mb_free.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mb_free.i, align 4
  %138 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %137, ptr %100, align 4
  store ptr %100, ptr %mb_free.i, align 4
  br label %for.cond.backedge

if.then.i514:                                     ; preds = %for.end278
  %139 = ptrtoint ptr %sm_use_count.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %sm_use_count.i, align 4
  %dec.i512 = add i32 %140, -1
  store i32 %dec.i512, ptr %sm_use_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i512)
  %tobool2.not.i513 = icmp eq i32 %dec.i512, 0
  br i1 %tobool2.not.i513, label %if.then3.i516, label %if.then.i514.smt_free_mbuf.exit519_crit_edge

if.then.i514.smt_free_mbuf.exit519_crit_edge:     ; preds = %if.then.i514
  call void @__sanitizer_cov_trace_pc() #10
  br label %smt_free_mbuf.exit519

if.then3.i516:                                    ; preds = %if.then.i514
  call void @__sanitizer_cov_trace_pc() #10
  %141 = ptrtoint ptr %mb_free.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %mb_free.i, align 4
  %143 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %142, ptr %100, align 4
  store ptr %100, ptr %mb_free.i, align 4
  br label %smt_free_mbuf.exit519

smt_free_mbuf.exit519:                            ; preds = %if.then3.i516, %if.then.i514.smt_free_mbuf.exit519_crit_edge
  tail call void @mac_drv_requeue_rxd(ptr noundef %smc, ptr noundef %4, i32 noundef %frag_count.2.lcssa) #8
  %144 = and i8 %118, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %144)
  %cmp341 = icmp eq i8 %144, -64
  br i1 %cmp341, label %if.then343, label %if.else348

if.then343:                                       ; preds = %smt_free_mbuf.exit519
  call void @__sanitizer_cov_trace_pc() #10
  %145 = ptrtoint ptr %err_mac_frame to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %err_mac_frame, align 4
  %inc347 = add i32 %146, 1
  store i32 %inc347, ptr %err_mac_frame, align 4
  br label %for.cond.backedge

if.else348:                                       ; preds = %smt_free_mbuf.exit519
  call void @__sanitizer_cov_trace_pc() #10
  %147 = ptrtoint ptr %err_imp_frame to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %err_imp_frame, align 4
  %inc353 = add i32 %148, 1
  store i32 %inc353, ptr %err_imp_frame, align 4
  br label %for.cond.backedge

abort_frame.sink.split:                           ; preds = %if.else.abort_frame.sink.split_crit_edge, %if.end110.abort_frame.sink.split_crit_edge, %if.end96.abort_frame.sink.split_crit_edge, %if.end86.abort_frame.sink.split_crit_edge
  %err_imp_frame.sink562 = phi ptr [ %err_imp_frame, %if.end86.abort_frame.sink.split_crit_edge ], [ %err_too_long, %if.end96.abort_frame.sink.split_crit_edge ], [ %rx_len_error, %if.end110.abort_frame.sink.split_crit_edge ], [ %err_no_buf, %if.else.abort_frame.sink.split_crit_edge ]
  %149 = ptrtoint ptr %err_imp_frame.sink562 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %err_imp_frame.sink562, align 4
  %inc94 = add i32 %150, 1
  store i32 %inc94, ptr %err_imp_frame.sink562, align 4
  br label %abort_frame

abort_frame:                                      ; preds = %abort_frame.sink.split, %lor.lhs.false240.abort_frame_crit_edge, %lor.lhs.false230.abort_frame_crit_edge, %lor.lhs.false220.abort_frame_crit_edge, %lor.lhs.false210.abort_frame_crit_edge, %lor.lhs.false.abort_frame_crit_edge, %if.then191.abort_frame_crit_edge, %land.lhs.true167.abort_frame_crit_edge, %if.end105.abort_frame_crit_edge, %if.end86.abort_frame_crit_edge
  tail call void @mac_drv_requeue_rxd(ptr noundef %smc, ptr noundef %4, i32 noundef %frag_count.2.lcssa) #8
  br label %for.cond.backedge

rx_end:                                           ; preds = %do.end, %do.body.rx_end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtm_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mac_drv_clear_txd(ptr noundef %smc) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %txd_tx_pipe.i = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 10
  %queued_txd_mb.i = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 12
  %mb_free.i = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 0, i32 1
  %arrayidx = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 9, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tx_curr_get = getelementptr inbounds %struct.s_smt_tx_queue, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %tx_curr_get to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_curr_get, align 4
  %tx_used = getelementptr inbounds %struct.s_smt_tx_queue, ptr %1, i32 0, i32 4
  %tx_free = getelementptr inbounds %struct.s_smt_tx_queue, ptr %1, i32 0, i32 3
  br label %for.cond1

for.cond1:                                        ; preds = %if.end18, %entry
  %t2.1 = phi ptr [ null, %entry ], [ %t2.2.lcssa, %if.end18 ]
  %t1.0 = phi ptr [ %3, %entry ], [ %t1.2.lcssa, %if.end18 ]
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %for.cond1
  %frag_count.0 = phi i32 [ 0, %for.cond1 ], [ %inc, %if.end.do.body_crit_edge ]
  %t1.1 = phi ptr [ %t1.0, %for.cond1 ], [ %46, %if.end.do.body_crit_edge ]
  %4 = ptrtoint ptr %t1.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %t1.1, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool.not = icmp sgt i32 %6, -1
  br i1 %tobool.not, label %lor.lhs.false, label %do.body.if.then_crit_edge

do.body.if.then_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %do.body
  %7 = ptrtoint ptr %tx_used to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %tx_used, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool3.not = icmp eq i16 %8, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %do.body.if.then_crit_edge
  %arrayidx.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 9, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.1, align 4
  %tx_curr_get.1 = getelementptr inbounds %struct.s_smt_tx_queue, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %tx_curr_get.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_curr_get.1, align 4
  %tx_used.1 = getelementptr inbounds %struct.s_smt_tx_queue, ptr %10, i32 0, i32 4
  %tx_free.1 = getelementptr inbounds %struct.s_smt_tx_queue, ptr %10, i32 0, i32 3
  br label %for.cond1.1

for.cond1.1:                                      ; preds = %if.end18.1, %if.then
  %t2.1.1 = phi ptr [ %t2.1, %if.then ], [ %t2.2.lcssa.1, %if.end18.1 ]
  %t1.0.1 = phi ptr [ %12, %if.then ], [ %t1.2.lcssa.1, %if.end18.1 ]
  br label %do.body.1

do.body.1:                                        ; preds = %if.end.1.do.body.1_crit_edge, %for.cond1.1
  %frag_count.0.1 = phi i32 [ 0, %for.cond1.1 ], [ %inc.1, %if.end.1.do.body.1_crit_edge ]
  %t1.1.1 = phi ptr [ %t1.0.1, %for.cond1.1 ], [ %19, %if.end.1.do.body.1_crit_edge ]
  %13 = ptrtoint ptr %t1.1.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %t1.1.1, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %tobool.not.1 = icmp sgt i32 %15, -1
  br i1 %tobool.not.1, label %lor.lhs.false.1, label %do.body.1.if.then.1_crit_edge

do.body.1.if.then.1_crit_edge:                    ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.1

lor.lhs.false.1:                                  ; preds = %do.body.1
  %16 = ptrtoint ptr %tx_used.1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %tx_used.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool3.not.1 = icmp eq i16 %17, 0
  br i1 %tobool3.not.1, label %lor.lhs.false.1.if.then.1_crit_edge, label %if.end.1

lor.lhs.false.1.if.then.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.1

if.end.1:                                         ; preds = %lor.lhs.false.1
  %txd_next.1 = getelementptr inbounds %struct.s_smt_fp_txd, ptr %t1.1.1, i32 0, i32 5
  %18 = ptrtoint ptr %txd_next.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %txd_next.1, align 4
  %inc.1 = add i32 %frag_count.0.1, 1
  %and5.1 = and i32 %15, 536870912
  %tobool6.not.1 = icmp eq i32 %and5.1, 0
  br i1 %tobool6.not.1, label %if.end.1.do.body.1_crit_edge, label %do.end.1

if.end.1.do.body.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.1

do.end.1:                                         ; preds = %if.end.1
  %20 = ptrtoint ptr %tx_curr_get.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_curr_get.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.1)
  %tobool9.not55.1 = icmp eq i32 %inc.1, 0
  br i1 %tobool9.not55.1, label %do.end.1.for.end.1_crit_edge, label %do.end.1.for.body10.1_crit_edge

do.end.1.for.body10.1_crit_edge:                  ; preds = %do.end.1
  br label %for.body10.1

do.end.1.for.end.1_crit_edge:                     ; preds = %do.end.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.1

for.body10.1:                                     ; preds = %for.body10.1.for.body10.1_crit_edge, %do.end.1.for.body10.1_crit_edge
  %t1.257.1 = phi ptr [ %26, %for.body10.1.for.body10.1_crit_edge ], [ %21, %do.end.1.for.body10.1_crit_edge ]
  %n.056.1 = phi i32 [ %dec.1, %for.body10.1.for.body10.1_crit_edge ], [ %inc.1, %do.end.1.for.body10.1_crit_edge ]
  %22 = ptrtoint ptr %t1.257.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %t1.257.1, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %and12.1 = lshr i32 %24, 18
  %shr.1 = and i32 %and12.1, 128
  %or.1 = or i32 %shr.1, 1
  tail call void @dma_complete(ptr noundef %smc, ptr noundef %t1.257.1, i32 noundef %or.1) #8
  %txd_next13.1 = getelementptr inbounds %struct.s_smt_fp_txd, ptr %t1.257.1, i32 0, i32 5
  %25 = ptrtoint ptr %txd_next13.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %txd_next13.1, align 4
  %dec.1 = add i32 %n.056.1, -1
  %tobool9.not.1 = icmp eq i32 %dec.1, 0
  br i1 %tobool9.not.1, label %for.body10.1.for.end.1_crit_edge, label %for.body10.1.for.body10.1_crit_edge

for.body10.1.for.body10.1_crit_edge:              ; preds = %for.body10.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10.1

for.body10.1.for.end.1_crit_edge:                 ; preds = %for.body10.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.1

for.end.1:                                        ; preds = %for.body10.1.for.end.1_crit_edge, %do.end.1.for.end.1_crit_edge
  %tbctrl.0.lcssa.1 = phi i32 [ %15, %do.end.1.for.end.1_crit_edge ], [ %24, %for.body10.1.for.end.1_crit_edge ]
  %t2.2.lcssa.1 = phi ptr [ %t2.1.1, %do.end.1.for.end.1_crit_edge ], [ %t1.257.1, %for.body10.1.for.end.1_crit_edge ]
  %t1.2.lcssa.1 = phi ptr [ %21, %do.end.1.for.end.1_crit_edge ], [ %26, %for.body10.1.for.end.1_crit_edge ]
  %and14.1 = and i32 %tbctrl.0.lcssa.1, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.1)
  %tobool15.not.1 = icmp eq i32 %and14.1, 0
  br i1 %tobool15.not.1, label %if.else.1, label %if.then16.1

if.then16.1:                                      ; preds = %for.end.1
  %27 = ptrtoint ptr %txd_tx_pipe.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %txd_tx_pipe.i, align 4
  %tobool.not.i.1 = icmp eq ptr %28, null
  br i1 %tobool.not.i.1, label %do.end.i.1, label %if.then.i53.1

if.then.i53.1:                                    ; preds = %if.then16.1
  %29 = ptrtoint ptr %queued_txd_mb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %queued_txd_mb.i, align 4
  %dec.i.1 = add i32 %30, -1
  store i32 %dec.i.1, ptr %queued_txd_mb.i, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  %33 = ptrtoint ptr %txd_tx_pipe.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %txd_tx_pipe.i, align 4
  %sm_use_count.i.1 = getelementptr inbounds %struct.s_mbuf, ptr %28, i32 0, i32 3
  %34 = ptrtoint ptr %sm_use_count.i.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sm_use_count.i.1, align 4
  %dec.i52.1 = add i32 %35, -1
  store i32 %dec.i52.1, ptr %sm_use_count.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i52.1)
  %tobool2.not.i.1 = icmp eq i32 %dec.i52.1, 0
  br i1 %tobool2.not.i.1, label %if.then3.i.1, label %if.then.i53.1.if.end18.1_crit_edge

if.then.i53.1.if.end18.1_crit_edge:               ; preds = %if.then.i53.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.1

if.then3.i.1:                                     ; preds = %if.then.i53.1
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %mb_free.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mb_free.i, align 4
  %38 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %28, align 4
  store ptr %28, ptr %mb_free.i, align 4
  br label %if.end18.1

do.end.i.1:                                       ; preds = %if.then16.1
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 503, ptr noundef nonnull @.str.3) #11
  br label %if.end18.1

if.else.1:                                        ; preds = %for.end.1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mac_drv_tx_complete(ptr noundef %smc, ptr noundef %t2.2.lcssa.1) #8
  br label %if.end18.1

if.end18.1:                                       ; preds = %if.else.1, %do.end.i.1, %if.then3.i.1, %if.then.i53.1.if.end18.1_crit_edge
  %39 = ptrtoint ptr %tx_curr_get.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %t1.2.lcssa.1, ptr %tx_curr_get.1, align 4
  %40 = ptrtoint ptr %tx_free.1 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %tx_free.1, align 4
  %42 = trunc i32 %inc.1 to i16
  %conv20.1 = add i16 %41, %42
  store i16 %conv20.1, ptr %tx_free.1, align 4
  %43 = ptrtoint ptr %tx_used.1 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %tx_used.1, align 2
  %conv23.1 = sub i16 %44, %42
  store i16 %conv23.1, ptr %tx_used.1, align 2
  br label %for.cond1.1

if.then.1:                                        ; preds = %lor.lhs.false.1.if.then.1_crit_edge, %do.body.1.if.then.1_crit_edge
  ret void

if.end:                                           ; preds = %lor.lhs.false
  %txd_next = getelementptr inbounds %struct.s_smt_fp_txd, ptr %t1.1, i32 0, i32 5
  %45 = ptrtoint ptr %txd_next to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %txd_next, align 4
  %inc = add i32 %frag_count.0, 1
  %and5 = and i32 %6, 536870912
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.do.body_crit_edge, label %do.end

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %if.end
  %47 = ptrtoint ptr %tx_curr_get to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tx_curr_get, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool9.not55 = icmp eq i32 %inc, 0
  br i1 %tobool9.not55, label %do.end.for.end_crit_edge, label %do.end.for.body10_crit_edge

do.end.for.body10_crit_edge:                      ; preds = %do.end
  br label %for.body10

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %do.end.for.body10_crit_edge
  %t1.257 = phi ptr [ %53, %for.body10.for.body10_crit_edge ], [ %48, %do.end.for.body10_crit_edge ]
  %n.056 = phi i32 [ %dec, %for.body10.for.body10_crit_edge ], [ %inc, %do.end.for.body10_crit_edge ]
  %49 = ptrtoint ptr %t1.257 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %t1.257, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %and12 = lshr i32 %51, 18
  %shr = and i32 %and12, 128
  %or = or i32 %shr, 1
  tail call void @dma_complete(ptr noundef %smc, ptr noundef %t1.257, i32 noundef %or) #8
  %txd_next13 = getelementptr inbounds %struct.s_smt_fp_txd, ptr %t1.257, i32 0, i32 5
  %52 = ptrtoint ptr %txd_next13 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %txd_next13, align 4
  %dec = add i32 %n.056, -1
  %tobool9.not = icmp eq i32 %dec, 0
  br i1 %tobool9.not, label %for.body10.for.end_crit_edge, label %for.body10.for.body10_crit_edge

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10

for.body10.for.end_crit_edge:                     ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body10.for.end_crit_edge, %do.end.for.end_crit_edge
  %tbctrl.0.lcssa = phi i32 [ %6, %do.end.for.end_crit_edge ], [ %51, %for.body10.for.end_crit_edge ]
  %t2.2.lcssa = phi ptr [ %t2.1, %do.end.for.end_crit_edge ], [ %t1.257, %for.body10.for.end_crit_edge ]
  %t1.2.lcssa = phi ptr [ %48, %do.end.for.end_crit_edge ], [ %53, %for.body10.for.end_crit_edge ]
  %and14 = and i32 %tbctrl.0.lcssa, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %for.end
  %54 = ptrtoint ptr %txd_tx_pipe.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %txd_tx_pipe.i, align 4
  %tobool.not.i = icmp eq ptr %55, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i53

if.then.i53:                                      ; preds = %if.then16
  %56 = ptrtoint ptr %queued_txd_mb.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %queued_txd_mb.i, align 4
  %dec.i = add i32 %57, -1
  store i32 %dec.i, ptr %queued_txd_mb.i, align 4
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %55, align 4
  %60 = ptrtoint ptr %txd_tx_pipe.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %txd_tx_pipe.i, align 4
  %sm_use_count.i = getelementptr inbounds %struct.s_mbuf, ptr %55, i32 0, i32 3
  %61 = ptrtoint ptr %sm_use_count.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %sm_use_count.i, align 4
  %dec.i52 = add i32 %62, -1
  store i32 %dec.i52, ptr %sm_use_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i52)
  %tobool2.not.i = icmp eq i32 %dec.i52, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.then.i53.if.end18_crit_edge

if.then.i53.if.end18_crit_edge:                   ; preds = %if.then.i53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then3.i:                                       ; preds = %if.then.i53
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %mb_free.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mb_free.i, align 4
  %65 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %55, align 4
  store ptr %55, ptr %mb_free.i, align 4
  br label %if.end18

do.end.i:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 503, ptr noundef nonnull @.str.3) #11
  br label %if.end18

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mac_drv_tx_complete(ptr noundef %smc, ptr noundef %t2.2.lcssa) #8
  br label %if.end18

if.end18:                                         ; preds = %if.else, %do.end.i, %if.then3.i, %if.then.i53.if.end18_crit_edge
  %66 = ptrtoint ptr %tx_curr_get to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %t1.2.lcssa, ptr %tx_curr_get, align 4
  %67 = ptrtoint ptr %tx_free to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %tx_free, align 4
  %69 = trunc i32 %inc to i16
  %conv20 = add i16 %68, %69
  store i16 %conv20, ptr %tx_free, align 4
  %70 = ptrtoint ptr %tx_used to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %tx_used, align 2
  %conv23 = sub i16 %71, %69
  store i16 %conv23, ptr %tx_used, align 2
  br label %for.cond1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_restart_tx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ev_dispatcher(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mac_drv_rx_mode(ptr noundef %smc, i32 noundef %mode) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %mode, label %sw.default [
    i32 21, label %sw.bb
    i32 22, label %sw.bb1
    i32 23, label %sw.bb5
    i32 24, label %sw.bb8
    i32 25, label %sw.bb12
    i32 26, label %sw.bb15
    i32 27, label %sw.bb19
    i32 28, label %sw.bb31
    i32 29, label %sw.bb35
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pass_SMT = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 3
  %1 = ptrtoint ptr %pass_SMT to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1, ptr %pass_SMT, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pass_SMT4 = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 3
  %2 = ptrtoint ptr %pass_SMT4 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %pass_SMT4, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pass_NSA = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 4
  %3 = ptrtoint ptr %pass_NSA to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1, ptr %pass_NSA, align 2
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pass_NSA11 = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 4
  %4 = ptrtoint ptr %pass_NSA11 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %pass_NSA11, align 2
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pass_DB = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 5
  %5 = ptrtoint ptr %pass_DB to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %pass_DB, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pass_DB18 = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 5
  %6 = ptrtoint ptr %pass_DB18 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %pass_DB18, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pass_NSA22 = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 4
  %7 = ptrtoint ptr %pass_NSA22 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %pass_NSA22, align 2
  %pass_SMT25 = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 3
  %8 = ptrtoint ptr %pass_SMT25 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %pass_SMT25, align 4
  %pass_DB28 = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 5
  %9 = ptrtoint ptr %pass_DB28 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %pass_DB28, align 4
  %pass_llc_promisc = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 6
  %10 = ptrtoint ptr %pass_llc_promisc to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1, ptr %pass_llc_promisc, align 2
  tail call void @mac_set_rx_mode(ptr noundef %smc, i32 noundef 6) #8
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pass_llc_promisc34 = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 6
  %11 = ptrtoint ptr %pass_llc_promisc34 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %pass_llc_promisc34, align 2
  br label %sw.epilog

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pass_llc_promisc38 = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 6
  %12 = ptrtoint ptr %pass_llc_promisc38 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %pass_llc_promisc38, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mac_set_rx_mode(ptr noundef %smc, i32 noundef %mode) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb35, %sw.bb31, %sw.bb19, %sw.bb15, %sw.bb12, %sw.bb8, %sw.bb5, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mac_set_rx_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mac_drv_clear_rx_queue(ptr noundef %smc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_state = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 11
  %0 = ptrtoint ptr %hw_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hw_state, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not = icmp eq i16 %1, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 512, ptr noundef nonnull @.str.20) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 10
  %2 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx, align 4
  %rx_curr_get = getelementptr inbounds %struct.s_smt_rx_queue, ptr %3, i32 0, i32 2
  %rx_used = getelementptr inbounds %struct.s_smt_rx_queue, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %rx_used to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %rx_used, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not69 = icmp eq i16 %5, 0
  br i1 %tobool.not69, label %if.end.cleanup_crit_edge, label %while.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end
  %6 = ptrtoint ptr %rx_curr_get to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_curr_get, align 4
  %rx_free = getelementptr inbounds %struct.s_smt_rx_queue, ptr %3, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %for.end.while.body_crit_edge, %while.body.lr.ph
  %r.070 = phi ptr [ %7, %while.body.lr.ph ], [ %r.2.lcssa, %for.end.while.body_crit_edge ]
  %8 = ptrtoint ptr %r.070 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %r.070, align 4
  %and = and i32 %9, -129
  store volatile i32 %and, ptr %r.070, align 4
  %r.1.in57 = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %r.070, i32 0, i32 5
  %10 = ptrtoint ptr %r.1.in57 to i32
  call void @__asan_load4_noabort(i32 %10)
  %r.158 = load volatile ptr, ptr %r.1.in57, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %cmp6.not59 = icmp eq ptr %r.158, %12
  br i1 %cmp6.not59, label %while.end.thread, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  br label %land.rhs

while.end.thread:                                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %rx_curr_get to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_curr_get, align 4
  br label %for.body.preheader

land.rhs:                                         ; preds = %while.body11.land.rhs_crit_edge, %while.body.land.rhs_crit_edge
  %r.161 = phi ptr [ %r.1, %while.body11.land.rhs_crit_edge ], [ %r.158, %while.body.land.rhs_crit_edge ]
  %frag_count.060 = phi i32 [ %inc, %while.body11.land.rhs_crit_edge ], [ 1, %while.body.land.rhs_crit_edge ]
  %15 = ptrtoint ptr %r.161 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %r.161, align 4
  %and9 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %while.body11, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body11:                                     ; preds = %land.rhs
  %17 = ptrtoint ptr %r.161 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %r.161, align 4
  %and14 = and i32 %18, -129
  store volatile i32 %and14, ptr %r.161, align 4
  %inc = add i32 %frag_count.060, 1
  %r.1.in = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %r.161, i32 0, i32 5
  %19 = ptrtoint ptr %r.1.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %r.1 = load volatile ptr, ptr %r.1.in, align 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %cmp6.not = icmp eq ptr %r.1, %21
  br i1 %cmp6.not, label %while.body11.while.end_crit_edge, label %while.body11.land.rhs_crit_edge

while.body11.land.rhs_crit_edge:                  ; preds = %while.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.body11.while.end_crit_edge:                 ; preds = %while.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body11.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %frag_count.0.lcssa = phi i32 [ %frag_count.060, %land.rhs.while.end_crit_edge ], [ %inc, %while.body11.while.end_crit_edge ]
  %r.1.lcssa = phi ptr [ %r.161, %land.rhs.while.end_crit_edge ], [ %r.1, %while.body11.while.end_crit_edge ]
  %22 = ptrtoint ptr %rx_curr_get to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_curr_get, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frag_count.0.lcssa)
  %tobool18.not65 = icmp eq i32 %frag_count.0.lcssa, 0
  br i1 %tobool18.not65, label %while.end.for.end_crit_edge, label %while.end.for.body.preheader_crit_edge

while.end.for.body.preheader_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %while.end.for.body.preheader_crit_edge, %while.end.thread
  %24 = phi ptr [ %14, %while.end.thread ], [ %23, %while.end.for.body.preheader_crit_edge ]
  %r.1.lcssa76 = phi ptr [ %r.158, %while.end.thread ], [ %r.1.lcssa, %while.end.for.body.preheader_crit_edge ]
  %frag_count.0.lcssa74 = phi i32 [ 1, %while.end.thread ], [ %frag_count.0.lcssa, %while.end.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %r.267 = phi ptr [ %26, %for.body.for.body_crit_edge ], [ %24, %for.body.preheader ]
  %i.066 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %frag_count.0.lcssa74, %for.body.preheader ]
  tail call void @dma_complete(ptr noundef %smc, ptr noundef %r.267, i32 noundef 2) #8
  %rxd_next20 = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %r.267, i32 0, i32 5
  %25 = ptrtoint ptr %rxd_next20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %rxd_next20, align 4
  %dec = add i32 %i.066, -1
  %tobool18.not = icmp eq i32 %dec, 0
  br i1 %tobool18.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %while.end.for.end_crit_edge
  %r.1.lcssa77 = phi ptr [ %r.1.lcssa, %while.end.for.end_crit_edge ], [ %r.1.lcssa76, %for.body.for.end_crit_edge ]
  %frag_count.0.lcssa75 = phi i32 [ 0, %while.end.for.end_crit_edge ], [ %frag_count.0.lcssa74, %for.body.for.end_crit_edge ]
  %r.2.lcssa = phi ptr [ %23, %while.end.for.end_crit_edge ], [ %26, %for.body.for.end_crit_edge ]
  %27 = ptrtoint ptr %rx_curr_get to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_curr_get, align 4
  tail call void @mac_drv_clear_rxd(ptr noundef %smc, ptr noundef %28, i32 noundef %frag_count.0.lcssa75) #8
  %29 = ptrtoint ptr %rx_curr_get to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %r.1.lcssa77, ptr %rx_curr_get, align 4
  %30 = ptrtoint ptr %rx_used to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %rx_used, align 2
  %32 = trunc i32 %frag_count.0.lcssa75 to i16
  %conv26 = sub i16 %31, %32
  store i16 %conv26, ptr %rx_used, align 2
  %33 = ptrtoint ptr %rx_free to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %rx_free, align 4
  %conv28 = add i16 %34, %32
  store i16 %conv28, ptr %rx_free, align 4
  %tobool.not = icmp eq i16 %31, %32
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_complete(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mac_drv_rx_complete(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mac_drv_requeue_rxd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_received_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hwm_rx_frag(ptr nocapture noundef %smc, ptr noundef %virt, i32 noundef %phys, i32 noundef %len, i32 noundef %frame_status) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %rx_q = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 12
  %0 = ptrtoint ptr %rx_q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_q, align 4
  %rxd_virt = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rxd_virt to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %virt, ptr %rxd_virt, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %phys)
  %rxd_rbadr = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %rxd_rbadr to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 %3, ptr %rxd_rbadr, align 4
  %and = shl i32 %frame_status, 26
  %shl = and i32 %and, 1610612736
  %and1 = shl i32 %frame_status, 21
  %shl2 = and i32 %and1, 33554432
  %or = or i32 %shl2, %len
  %or5 = or i32 %or, %shl
  %or6 = or i32 %or5, -2007695360
  %5 = tail call i32 @llvm.bswap.i32(i32 %or6)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 %5, ptr %1, align 4
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 268435456) #8, !srcloc !59
  %rx_free = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 12, i32 0, i32 3
  %9 = ptrtoint ptr %rx_free to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %rx_free, align 4
  %dec = add i16 %10, -1
  store i16 %dec, ptr %rx_free, align 4
  %rx_used = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 12, i32 0, i32 4
  %11 = ptrtoint ptr %rx_used to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %rx_used, align 2
  %inc = add i16 %12, 1
  store i16 %inc, ptr %rx_used, align 2
  %rxd_next = getelementptr inbounds %struct.s_smt_fp_rxd, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %rxd_next to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %rxd_next, align 4
  %15 = ptrtoint ptr %rx_q to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %rx_q, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mac_drv_clear_rxd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hwm_tx_init(ptr noundef %smc, i8 noundef zeroext %fc, i32 noundef %frag_count, i32 noundef %frame_len, i32 noundef %frame_status) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %frame_status, 1
  %arrayidx = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 9, i32 %and
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tx_p = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 16
  %2 = ptrtoint ptr %tx_p to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %tx_p, align 4
  %sub = shl i32 %frame_len, 27
  %and1 = add i32 %sub, 402653184
  %shl = and i32 %and1, 402653184
  %or = or i32 %shl, 1073741824
  %tx_descr = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 17
  %3 = ptrtoint ptr %tx_descr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or, ptr %tx_descr, align 4
  %tx_len = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 18
  %4 = ptrtoint ptr %tx_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %frame_len, ptr %tx_len, align 4
  %5 = and i8 %fc, 120
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %5)
  %cmp = icmp eq i8 %5, 80
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or8 = or i32 %frame_status, 32
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = zext i8 %fc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %fc, label %do.end [
    i8 65, label %if.else.sw.bb_crit_edge
    i8 79, label %if.else.sw.bb_crit_edge62
    i8 67, label %sw.bb11
    i8 66, label %sw.bb13
  ]

if.else.sw.bb_crit_edge62:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.else.sw.bb_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %if.else.sw.bb_crit_edge, %if.else.sw.bb_crit_edge62
  %or10 = or i32 %frame_status, 32
  br label %if.end

sw.bb11:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %or12 = or i32 %frame_status, 4
  br label %if.end

sw.bb13:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %or14 = or i32 %frame_status, 36
  br label %if.end

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 510, ptr noundef nonnull @.str.22) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb13, %sw.bb11, %sw.bb, %if.then
  %frame_status.addr.0 = phi i32 [ %or8, %if.then ], [ %frame_status, %do.end ], [ %or14, %sw.bb13 ], [ %or12, %sw.bb11 ], [ %or10, %sw.bb ]
  %mac_ring_is_up = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 24
  %7 = ptrtoint ptr %mac_ring_is_up to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mac_ring_is_up, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  %and18 = and i32 %frame_status.addr.0, -97
  %or19 = or i32 %and18, 64
  %frame_status.addr.1 = select i1 %tobool.not, i32 %or19, i32 %frame_status.addr.0
  %9 = ptrtoint ptr %tx_p to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_p, align 4
  %tx_free = getelementptr inbounds %struct.s_smt_tx_queue, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %tx_free to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %tx_free, align 4
  %conv25 = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv25, i32 %frag_count)
  %cmp26 = icmp slt i32 %conv25, %frag_count
  br i1 %cmp26, label %if.then28, label %if.end.if.end41_crit_edge

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then28:                                        ; preds = %if.end
  tail call fastcc void @mac_drv_clear_txd(ptr noundef %smc)
  %13 = ptrtoint ptr %tx_p to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_p, align 4
  %tx_free32 = getelementptr inbounds %struct.s_smt_tx_queue, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %tx_free32 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tx_free32, align 4
  %conv33 = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv33, i32 %frag_count)
  %cmp34 = icmp slt i32 %conv33, %frag_count
  br i1 %cmp34, label %if.then36, label %if.then28.if.end41_crit_edge

if.then28.if.end41_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then36:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  %and38 = and i32 %frame_status.addr.1, -161
  %or39 = or i32 %and38, 128
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %if.then28.if.end41_crit_edge, %if.end.if.end41_crit_edge
  %frame_status.addr.2 = phi i32 [ %or39, %if.then36 ], [ %frame_status.addr.1, %if.then28.if.end41_crit_edge ], [ %frame_status.addr.1, %if.end.if.end41_crit_edge ]
  ret i32 %frame_status.addr.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hwm_tx_frag(ptr noundef %smc, ptr noundef %virt, i32 noundef %phys, i32 noundef %len, i32 noundef %frame_status) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %frame_status, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then:                                          ; preds = %entry
  %tx_p = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 16
  %0 = ptrtoint ptr %tx_p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_p, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %txd_virt = getelementptr inbounds %struct.s_smt_fp_txd, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %txd_virt to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %virt, ptr %txd_virt, align 4
  %tx_descr = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 17
  %5 = ptrtoint ptr %tx_descr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_descr, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %txd_txdscr = getelementptr inbounds %struct.s_smt_fp_txd, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %txd_txdscr to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %7, ptr %txd_txdscr, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %phys)
  %txd_tbadr = getelementptr inbounds %struct.s_smt_fp_txd, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %txd_tbadr to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %9, ptr %txd_tbadr, align 4
  %and4 = shl i32 %frame_status, 26
  %shl = and i32 %and4, 1744830464
  %or5 = or i32 %shl, %len
  %or6 = or i32 %or5, -2141913088
  %11 = tail call i32 @llvm.bswap.i32(i32 %or6)
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile i32 %11, ptr %3, align 4
  %tx_bmu_ctl = getelementptr inbounds %struct.s_smt_tx_queue, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %tx_bmu_ctl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tx_bmu_ctl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 268435456) #8, !srcloc !59
  %tx_free = getelementptr inbounds %struct.s_smt_tx_queue, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %tx_free to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %tx_free, align 4
  %dec = add i16 %16, -1
  store i16 %dec, ptr %tx_free, align 4
  %tx_used = getelementptr inbounds %struct.s_smt_tx_queue, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %tx_used to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %tx_used, align 2
  %inc = add i16 %18, 1
  store i16 %inc, ptr %tx_used, align 2
  %txd_next = getelementptr inbounds %struct.s_smt_fp_txd, ptr %3, i32 0, i32 5
  %19 = ptrtoint ptr %txd_next to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %txd_next, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %1, align 4
  %and8 = and i32 %frame_status, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.then.if.end12_crit_edge, label %if.then10

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %fddiMACTransmit_Ct = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 34
  %22 = ptrtoint ptr %fddiMACTransmit_Ct to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fddiMACTransmit_Ct, align 4
  %inc11 = add i32 %23, 1
  store i32 %inc11, ptr %fddiMACTransmit_Ct, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then.if.end12_crit_edge, %entry.if.end12_crit_edge
  %and13 = and i32 %frame_status, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end90_crit_edge, label %if.then15

if.end12.if.end90_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then15:                                        ; preds = %if.end12
  %and17 = and i32 %frame_status, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then15.if.end36_crit_edge, label %if.then19

if.then15.if.end36_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then19:                                        ; preds = %if.then15
  %mb_free.i = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 0, i32 1
  %24 = ptrtoint ptr %mb_free.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mb_free.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %tx_mb128 = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 19
  %26 = ptrtoint ptr %tx_mb128 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %tx_mb128, align 4
  %err_no_buf = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 7, i32 8
  %27 = ptrtoint ptr %err_no_buf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %err_no_buf, align 4
  %inc24 = add i32 %28, 1
  store i32 %inc24, ptr %err_no_buf, align 4
  br label %if.end36

if.else:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %25, align 4
  %31 = ptrtoint ptr %mb_free.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %mb_free.i, align 4
  %m_off.i = getelementptr inbounds %struct.s_mbuf, ptr %25, i32 0, i32 1
  %32 = ptrtoint ptr %m_off.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 8, ptr %m_off.i, align 4
  %sm_use_count.i = getelementptr inbounds %struct.s_mbuf, ptr %25, i32 0, i32 3
  %33 = ptrtoint ptr %sm_use_count.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %sm_use_count.i, align 4
  %tx_mb = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 19
  %34 = ptrtoint ptr %tx_mb to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %25, ptr %tx_mb, align 4
  %m_data = getelementptr inbounds %struct.s_mbuf, ptr %25, i32 0, i32 4
  %35 = load i16, ptr %m_off.i, align 4
  %conv = sext i16 %35 to i32
  %add.ptr = getelementptr i8, ptr %m_data, i32 %conv
  %add.ptr32 = getelementptr i8, ptr %add.ptr, i32 -1
  %tx_data = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 20
  %36 = ptrtoint ptr %tx_data to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr32, ptr %tx_data, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then23, %if.then15.if.end36_crit_edge
  %tx_mb39 = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 19
  %37 = ptrtoint ptr %tx_mb39 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_mb39, align 4
  %tobool40.not = icmp eq ptr %38, null
  br i1 %tobool40.not, label %if.end36.if.end90_crit_edge, label %if.then41

if.end36.if.end90_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then41:                                        ; preds = %if.end36
  %tx_data45 = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 20
  %39 = ptrtoint ptr %tx_data45 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_data45, align 4
  %41 = call ptr @memcpy(ptr %40, ptr %virt, i32 %len)
  %42 = load ptr, ptr %tx_data45, align 4
  %add.ptr49 = getelementptr i8, ptr %42, i32 %len
  store ptr %add.ptr49, ptr %tx_data45, align 4
  %and50 = and i32 %frame_status, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.then41.if.end90_crit_edge, label %if.then52

if.then41.if.end90_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then52:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %tx_mb39 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tx_mb39, align 4
  %m_data56 = getelementptr inbounds %struct.s_mbuf, ptr %44, i32 0, i32 4
  %m_off61 = getelementptr inbounds %struct.s_mbuf, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %m_off61 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %m_off61, align 4
  %conv62 = sext i16 %46 to i32
  %add.ptr63 = getelementptr i8, ptr %m_data56, i32 %conv62
  %add.ptr64 = getelementptr i8, ptr %add.ptr63, i32 -1
  %47 = ptrtoint ptr %tx_data45 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr64, ptr %tx_data45, align 4
  %48 = ptrtoint ptr %add.ptr64 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %add.ptr64, align 1
  %50 = ptrtoint ptr %m_data56 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %m_data56, align 4
  %51 = load ptr, ptr %tx_data45, align 4
  %incdec.ptr = getelementptr i8, ptr %51, i32 1
  store ptr %incdec.ptr, ptr %tx_data45, align 4
  %tx_len = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 18
  %52 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tx_len, align 4
  %sub = add i32 %53, -1
  %54 = load ptr, ptr %tx_mb39, align 4
  %m_len = getelementptr inbounds %struct.s_mbuf, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %m_len to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %sub, ptr %m_len, align 4
  %56 = load ptr, ptr %tx_mb39, align 4
  tail call void @smt_received_pack(ptr noundef %smc, ptr noundef %56, i32 noundef 128) #8
  br label %if.end90

if.end90:                                         ; preds = %if.then52, %if.then41.if.end90_crit_edge, %if.end36.if.end90_crit_edge, %if.end12.if.end90_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smt_send_mbuf(ptr noundef %smc, ptr noundef %mb, i32 noundef %fc) local_unnamed_addr #1 align 64 {
entry:
  %virt = alloca [3 x ptr], align 4
  %frag_len = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %virt) #8
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %virt, align 4, !annotation !64
  %1 = getelementptr inbounds [3 x ptr], ptr %virt, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !64
  %3 = getelementptr inbounds [3 x ptr], ptr %virt, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !64
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %frag_len) #8
  %5 = ptrtoint ptr %frag_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %frag_len, align 4, !annotation !64
  %6 = getelementptr inbounds [3 x i32], ptr %frag_len, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !64
  %8 = getelementptr inbounds [3 x i32], ptr %frag_len, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !64
  %m_off = getelementptr inbounds %struct.s_mbuf, ptr %mb, i32 0, i32 1
  %10 = ptrtoint ptr %m_off to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %m_off, align 4
  %dec = add i16 %11, -1
  store i16 %dec, ptr %m_off, align 4
  %m_len = getelementptr inbounds %struct.s_mbuf, ptr %mb, i32 0, i32 2
  %12 = ptrtoint ptr %m_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %m_len, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %m_len, align 4
  %m_data = getelementptr inbounds %struct.s_mbuf, ptr %mb, i32 0, i32 4
  %conv = sext i16 %dec to i32
  %add.ptr = getelementptr i8, ptr %m_data, i32 %conv
  %conv2 = trunc i32 %fc to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 67, i32 %fc)
  %cmp = icmp eq i32 %fc, 67
  %spec.select = select i1 %cmp, i8 65, i8 %conv2
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %spec.select, ptr %add.ptr, align 1
  %15 = ptrtoint ptr %m_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %m_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not181 = icmp eq i32 %16, 0
  br i1 %tobool.not181, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %data.0184 = phi ptr [ %add.ptr13, %while.body.while.body_crit_edge ], [ %add.ptr, %entry.while.body_crit_edge ]
  %len.0183 = phi i32 [ %sub12, %while.body.while.body_crit_edge ], [ %16, %entry.while.body_crit_edge ]
  %frag_count.0182 = phi i32 [ %inc11, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %17 = ptrtoint ptr %data.0184 to i32
  %and = and i32 %17, 4095
  %sub = sub nuw nsw i32 4096, %and
  %18 = tail call i32 @llvm.smin.i32(i32 %sub, i32 %len.0183)
  %arrayidx = getelementptr [3 x ptr], ptr %virt, i32 0, i32 %frag_count.0182
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %data.0184, ptr %arrayidx, align 4
  %arrayidx10 = getelementptr [3 x i32], ptr %frag_len, i32 0, i32 %frag_count.0182
  %20 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %arrayidx10, align 4
  %inc11 = add i32 %frag_count.0182, 1
  %sub12 = sub i32 %len.0183, %18
  %add.ptr13 = getelementptr i8, ptr %data.0184, i32 %18
  %tobool.not = icmp eq i32 %sub12, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %frag_count.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %inc11, %while.body.while.end_crit_edge ]
  %arrayidx14 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 9, i32 1
  %21 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx14, align 4
  %23 = zext i32 %fc to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %fc, label %if.else [
    i32 194, label %while.end.if.end34_crit_edge
    i32 67, label %while.end.if.end34_crit_edge190
  ]

while.end.if.end34_crit_edge190:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

while.end.if.end34_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.else:                                          ; preds = %while.end
  %pass_NSA = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 4
  %24 = ptrtoint ptr %pass_NSA to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %pass_NSA, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool21.not = icmp ne i16 %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %fc)
  %cmp22 = icmp eq i32 %fc, 79
  %or.cond = and i1 %cmp22, %tobool21.not
  br i1 %or.cond, label %if.else.if.then32_crit_edge, label %lor.lhs.false24

if.else.if.then32_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

lor.lhs.false24:                                  ; preds = %if.else
  %pass_SMT = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 3
  %26 = ptrtoint ptr %pass_SMT to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %pass_SMT, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool28.not = icmp ne i16 %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %fc)
  %cmp30 = icmp eq i32 %fc, 65
  %or.cond174 = and i1 %cmp30, %tobool28.not
  br i1 %or.cond174, label %lor.lhs.false24.if.then32_crit_edge, label %lor.lhs.false24.if.end34_crit_edge

lor.lhs.false24.if.end34_crit_edge:               ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

lor.lhs.false24.if.then32_crit_edge:              ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.then32:                                        ; preds = %lor.lhs.false24.if.then32_crit_edge, %if.else.if.then32_crit_edge
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %lor.lhs.false24.if.end34_crit_edge, %while.end.if.end34_crit_edge, %while.end.if.end34_crit_edge190
  %frame_status.0 = phi i32 [ 36, %if.then32 ], [ 32, %lor.lhs.false24.if.end34_crit_edge ], [ 4, %while.end.if.end34_crit_edge ], [ 4, %while.end.if.end34_crit_edge190 ]
  %mac_ring_is_up = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 24
  %28 = ptrtoint ptr %mac_ring_is_up to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %mac_ring_is_up, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool36.not = icmp eq i16 %29, 0
  br i1 %tobool36.not, label %if.end34.if.then41_crit_edge, label %lor.lhs.false37

if.end34.if.then41_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

lor.lhs.false37:                                  ; preds = %if.end34
  %tx_free = getelementptr inbounds %struct.s_smt_tx_queue, ptr %22, i32 0, i32 3
  %30 = ptrtoint ptr %tx_free to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %tx_free, align 4
  %conv38 = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %frag_count.0.lcssa, i32 %conv38)
  %cmp39 = icmp sgt i32 %frag_count.0.lcssa, %conv38
  br i1 %cmp39, label %lor.lhs.false37.if.then41_crit_edge, label %lor.lhs.false37.if.end49_crit_edge

lor.lhs.false37.if.end49_crit_edge:               ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

lor.lhs.false37.if.then41_crit_edge:              ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

if.then41:                                        ; preds = %lor.lhs.false37.if.then41_crit_edge, %if.end34.if.then41_crit_edge
  %and42 = and i32 %frame_status.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.else46, label %if.then41.if.end49_crit_edge

if.then41.if.end49_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.else46:                                        ; preds = %if.then41
  %tobool.not.i = icmp eq ptr %mb, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.else46
  %sm_use_count.i = getelementptr inbounds %struct.s_mbuf, ptr %mb, i32 0, i32 3
  %32 = ptrtoint ptr %sm_use_count.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sm_use_count.i, align 4
  %dec.i = add i32 %33, -1
  store i32 %dec.i, ptr %sm_use_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %mb_free.i = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 0, i32 1
  %34 = ptrtoint ptr %mb_free.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mb_free.i, align 4
  %36 = ptrtoint ptr %mb to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %mb, align 4
  store ptr %mb, ptr %mb_free.i, align 4
  br label %cleanup

do.end.i:                                         ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 503, ptr noundef nonnull @.str.3) #11
  br label %cleanup

if.end49:                                         ; preds = %if.then41.if.end49_crit_edge, %lor.lhs.false37.if.end49_crit_edge
  %frame_status.1 = phi i32 [ %frame_status.0, %lor.lhs.false37.if.end49_crit_edge ], [ %and42, %if.then41.if.end49_crit_edge ]
  %and51 = and i32 %frame_status.1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  %37 = and i32 %frame_status.1, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %37)
  %.not = icmp eq i32 %37, 36
  br i1 %.not, label %if.then56, label %if.end49.if.end57_crit_edge

if.end49.if.end57_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then56:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %sm_use_count = getelementptr inbounds %struct.s_mbuf, ptr %mb, i32 0, i32 3
  %38 = ptrtoint ptr %sm_use_count to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %sm_use_count, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end49.if.end57_crit_edge
  br i1 %tobool52.not, label %if.end57.if.end93_crit_edge, label %if.then60

if.end57.if.end93_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.then60:                                        ; preds = %if.end57
  %or61 = or i32 %frame_status.1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frag_count.0.lcssa)
  %cmp62185 = icmp sgt i32 %frag_count.0.lcssa, 0
  br i1 %cmp62185, label %for.body.lr.ph, label %if.then60.for.end_crit_edge

if.then60.for.end_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then60
  %39 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %22, align 4
  %sub65 = add nsw i32 %frag_count.0.lcssa, -1
  %tx_bmu_ctl = getelementptr inbounds %struct.s_smt_tx_queue, ptr %22, i32 0, i32 5
  %tx_free87 = getelementptr inbounds %struct.s_smt_tx_queue, ptr %22, i32 0, i32 3
  %tx_used = getelementptr inbounds %struct.s_smt_tx_queue, ptr %22, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end74.for.body_crit_edge, %for.body.lr.ph
  %i.0188 = phi i32 [ 0, %for.body.lr.ph ], [ %inc90, %if.end74.for.body_crit_edge ]
  %frame_status.2187 = phi i32 [ %or61, %for.body.lr.ph ], [ %and85, %if.end74.for.body_crit_edge ]
  %t.0186 = phi ptr [ %40, %for.body.lr.ph ], [ %57, %if.end74.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0188, i32 %sub65)
  %cmp66 = icmp eq i32 %i.0188, %sub65
  br i1 %cmp66, label %if.then68, label %for.body.if.end74_crit_edge

for.body.if.end74_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then68:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %or69 = or i32 %frame_status.2187, 8
  %41 = ptrtoint ptr %m_len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %m_len, align 4
  %sub71 = shl i32 %42, 27
  %and72 = add i32 %sub71, 402653184
  %shl = lshr exact i32 %and72, 24
  %or73 = and i32 %shl, 24
  %43 = or i32 %or73, 64
  %txd_txdscr = getelementptr inbounds %struct.s_smt_fp_txd, ptr %t.0186, i32 0, i32 1
  %44 = ptrtoint ptr %txd_txdscr to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 %43, ptr %txd_txdscr, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then68, %for.body.if.end74_crit_edge
  %frame_status.3 = phi i32 [ %or69, %if.then68 ], [ %frame_status.2187, %for.body.if.end74_crit_edge ]
  %arrayidx75 = getelementptr [3 x ptr], ptr %virt, i32 0, i32 %i.0188
  %45 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx75, align 4
  %txd_virt = getelementptr inbounds %struct.s_smt_fp_txd, ptr %t.0186, i32 0, i32 4
  %47 = ptrtoint ptr %txd_virt to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %46, ptr %txd_virt, align 4
  %arrayidx77 = getelementptr [3 x i32], ptr %frag_len, i32 0, i32 %i.0188
  %48 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx77, align 4
  %call = tail call i32 @dma_master(ptr noundef %smc, ptr noundef %46, i32 noundef %49, i32 noundef 129) #8
  %50 = tail call i32 @llvm.bswap.i32(i32 %call)
  %txd_tbadr = getelementptr inbounds %struct.s_smt_fp_txd, ptr %t.0186, i32 0, i32 2
  %51 = ptrtoint ptr %txd_tbadr to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 %50, ptr %txd_tbadr, align 4
  %and78 = shl i32 %frame_status.3, 26
  %shl79 = and i32 %and78, 1610612736
  %or82 = or i32 %shl79, %49
  %or84 = or i32 %or82, -2108358656
  %52 = tail call i32 @llvm.bswap.i32(i32 %or84)
  %53 = ptrtoint ptr %t.0186 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile i32 %52, ptr %t.0186, align 4
  %54 = ptrtoint ptr %tx_bmu_ctl to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tx_bmu_ctl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 268435456) #8, !srcloc !59
  %and85 = and i32 %frame_status.3, -17
  %txd_next = getelementptr inbounds %struct.s_smt_fp_txd, ptr %t.0186, i32 0, i32 5
  %56 = ptrtoint ptr %txd_next to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %txd_next, align 4
  %58 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %22, align 4
  %59 = ptrtoint ptr %tx_free87 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %tx_free87, align 4
  %dec88 = add i16 %60, -1
  store i16 %dec88, ptr %tx_free87, align 4
  %61 = ptrtoint ptr %tx_used to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %tx_used, align 2
  %inc89 = add i16 %62, 1
  store i16 %inc89, ptr %tx_used, align 2
  %inc90 = add nuw nsw i32 %i.0188, 1
  %exitcond.not = icmp eq i32 %inc90, %frag_count.0.lcssa
  br i1 %exitcond.not, label %if.end74.for.end_crit_edge, label %if.end74.for.body_crit_edge

if.end74.for.body_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end74.for.end_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end74.for.end_crit_edge, %if.then60.for.end_crit_edge
  %frame_status.2.lcssa = phi i32 [ %or61, %if.then60.for.end_crit_edge ], [ %and85, %if.end74.for.end_crit_edge ]
  %fddiMACTransmit_Ct = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 34
  %63 = ptrtoint ptr %fddiMACTransmit_Ct to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fddiMACTransmit_Ct, align 4
  %inc92 = add i32 %64, 1
  store i32 %inc92, ptr %fddiMACTransmit_Ct, align 4
  %queued_txd_mb.i = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 12
  %65 = ptrtoint ptr %queued_txd_mb.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %queued_txd_mb.i, align 4
  %inc.i = add i32 %66, 1
  store i32 %inc.i, ptr %queued_txd_mb.i, align 4
  %67 = ptrtoint ptr %mb to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %mb, align 4
  %txd_tx_pipe.i = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 10
  %68 = ptrtoint ptr %txd_tx_pipe.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %txd_tx_pipe.i, align 4
  %cmp.i = icmp eq ptr %69, null
  br i1 %cmp.i, label %for.end.queue_txd_mb.exit_crit_edge, label %if.else.i

for.end.queue_txd_mb.exit_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %queue_txd_mb.exit

if.else.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %txd_tx_tail.i = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 11
  %70 = ptrtoint ptr %txd_tx_tail.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %txd_tx_tail.i, align 4
  br label %queue_txd_mb.exit

queue_txd_mb.exit:                                ; preds = %if.else.i, %for.end.queue_txd_mb.exit_crit_edge
  %.sink.i = phi ptr [ %71, %if.else.i ], [ %txd_tx_pipe.i, %for.end.queue_txd_mb.exit_crit_edge ]
  %72 = ptrtoint ptr %.sink.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %mb, ptr %.sink.i, align 4
  %txd_tx_tail11.i = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 11
  %73 = ptrtoint ptr %txd_tx_tail11.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %mb, ptr %txd_tx_tail11.i, align 4
  br label %if.end93

if.end93:                                         ; preds = %queue_txd_mb.exit, %if.end57.if.end93_crit_edge
  %frame_status.4 = phi i32 [ %frame_status.2.lcssa, %queue_txd_mb.exit ], [ %frame_status.1, %if.end57.if.end93_crit_edge ]
  %and94 = and i32 %frame_status.4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end93.if.end98_crit_edge, label %if.then96

if.end93.if.end98_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then96:                                        ; preds = %if.end93
  %queued_rx_frames.i = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 9
  %74 = ptrtoint ptr %queued_rx_frames.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %queued_rx_frames.i, align 4
  %inc.i176 = add i32 %75, 1
  store i32 %inc.i176, ptr %queued_rx_frames.i, align 4
  %76 = ptrtoint ptr %mb to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %mb, align 4
  %llc_rx_pipe.i = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 7
  %77 = ptrtoint ptr %llc_rx_pipe.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %llc_rx_pipe.i, align 4
  %cmp.i177 = icmp eq ptr %78, null
  br i1 %cmp.i177, label %if.then96.if.end.i_crit_edge, label %if.else.i178

if.then96.if.end.i_crit_edge:                     ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.else.i178:                                     ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  %llc_rx_tail.i = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 8
  %79 = ptrtoint ptr %llc_rx_tail.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %llc_rx_tail.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i178, %if.then96.if.end.i_crit_edge
  %.sink.i179 = phi ptr [ %80, %if.else.i178 ], [ %llc_rx_pipe.i, %if.then96.if.end.i_crit_edge ]
  %81 = ptrtoint ptr %.sink.i179 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %mb, ptr %.sink.i179, align 4
  %llc_rx_tail11.i = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 8
  %82 = ptrtoint ptr %llc_rx_tail11.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %mb, ptr %llc_rx_tail11.i, align 4
  %isr_flag.i = getelementptr inbounds %struct.s_smt_os, ptr %smc, i32 0, i32 19, i32 15
  %83 = ptrtoint ptr %isr_flag.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %isr_flag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i180 = icmp eq i32 %84, 0
  br i1 %tobool.not.i180, label %if.then14.i, label %if.end.i.if.end98_crit_edge

if.end.i.if.end98_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @smt_force_irq(ptr noundef %smc) #8
  br label %if.end98

if.end98:                                         ; preds = %if.then14.i, %if.end.i.if.end98_crit_edge, %if.end93.if.end98_crit_edge
  tail call fastcc void @mac_drv_clear_txd(ptr noundef %smc)
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %do.end.i, %if.then3.i, %if.then.i.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %frag_len) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %virt) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_master(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mac_drv_clear_tx_queue(ptr noundef %smc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %hw_state = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 11
  %0 = ptrtoint ptr %hw_state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hw_state, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not = icmp eq i16 %1, 0
  br i1 %cmp.not, label %for.body.preheader, label %do.end

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 9, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tx_used6 = getelementptr inbounds %struct.s_smt_tx_queue, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %tx_used6 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tx_used6, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not58 = icmp eq i16 %5, 0
  br i1 %tobool.not58, label %for.body.preheader.for.inc_crit_edge, label %while.body.preheader

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 511, ptr noundef nonnull @.str.24) #11
  br label %cleanup

while.body.preheader:                             ; preds = %for.body.preheader
  %conv7 = zext i16 %5 to i32
  %tx_curr_get = getelementptr inbounds %struct.s_smt_tx_queue, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %tx_curr_get to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_curr_get, align 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %t.060 = phi ptr [ %11, %while.body.while.body_crit_edge ], [ %7, %while.body.preheader ]
  %tx_used.059 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %conv7, %while.body.preheader ]
  %8 = ptrtoint ptr %t.060 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %t.060, align 4
  %and = and i32 %9, -129
  store volatile i32 %and, ptr %t.060, align 4
  %txd_next = getelementptr inbounds %struct.s_smt_fp_txd, ptr %t.060, i32 0, i32 5
  %10 = ptrtoint ptr %txd_next to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %txd_next, align 4
  %dec = add nsw i32 %tx_used.059, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.for.inc_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.for.inc_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %while.body.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 9, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  %tx_used6.1 = getelementptr inbounds %struct.s_smt_tx_queue, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %tx_used6.1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %tx_used6.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not58.1 = icmp eq i16 %15, 0
  br i1 %tobool.not58.1, label %for.inc.if.end26.1_crit_edge, label %while.body.preheader.1

for.inc.if.end26.1_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.1

while.body.preheader.1:                           ; preds = %for.inc
  %conv7.1 = zext i16 %15 to i32
  %tx_curr_get.1 = getelementptr inbounds %struct.s_smt_tx_queue, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %tx_curr_get.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_curr_get.1, align 4
  br label %while.body.1

while.body.1:                                     ; preds = %while.body.1.while.body.1_crit_edge, %while.body.preheader.1
  %t.060.1 = phi ptr [ %21, %while.body.1.while.body.1_crit_edge ], [ %17, %while.body.preheader.1 ]
  %tx_used.059.1 = phi i32 [ %dec.1, %while.body.1.while.body.1_crit_edge ], [ %conv7.1, %while.body.preheader.1 ]
  %18 = ptrtoint ptr %t.060.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %t.060.1, align 4
  %and.1 = and i32 %19, -129
  store volatile i32 %and.1, ptr %t.060.1, align 4
  %txd_next.1 = getelementptr inbounds %struct.s_smt_fp_txd, ptr %t.060.1, i32 0, i32 5
  %20 = ptrtoint ptr %txd_next.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %txd_next.1, align 4
  %dec.1 = add nsw i32 %tx_used.059.1, -1
  %tobool.not.1 = icmp eq i32 %dec.1, 0
  br i1 %tobool.not.1, label %while.body.1.if.end26.1_crit_edge, label %while.body.1.while.body.1_crit_edge

while.body.1.while.body.1_crit_edge:              ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.1

while.body.1.if.end26.1_crit_edge:                ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.1

if.end26.1:                                       ; preds = %while.body.1.if.end26.1_crit_edge, %for.inc.if.end26.1_crit_edge
  tail call fastcc void @mac_drv_clear_txd(ptr noundef %smc)
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %tx_curr_get17 = getelementptr inbounds %struct.s_smt_tx_queue, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %tx_curr_get17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_curr_get17, align 4
  %txd_ntdadr = getelementptr inbounds %struct.s_smt_fp_txd, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %txd_ntdadr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %txd_ntdadr, align 4
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %29, i32 720
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %27) #8, !srcloc !59
  %30 = ptrtoint ptr %tx_curr_get17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_curr_get17, align 4
  %txd_next28 = getelementptr inbounds %struct.s_smt_fp_txd, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %txd_next28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %txd_next28, align 4
  %34 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %23, align 4
  store ptr %33, ptr %tx_curr_get17, align 4
  %35 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.1, align 4
  %tx_curr_get17.1 = getelementptr inbounds %struct.s_smt_tx_queue, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %tx_curr_get17.1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_curr_get17.1, align 4
  %txd_ntdadr22.1 = getelementptr inbounds %struct.s_smt_fp_txd, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %txd_ntdadr22.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %txd_ntdadr22.1, align 4
  %41 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw, align 8
  %add.ptr25.1 = getelementptr i8, ptr %42, i32 656
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.1, i32 %40) #8, !srcloc !59
  %43 = ptrtoint ptr %tx_curr_get17.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tx_curr_get17.1, align 4
  %txd_next28.1 = getelementptr inbounds %struct.s_smt_fp_txd, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %txd_next28.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %txd_next28.1, align 4
  %47 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %36, align 4
  store ptr %46, ptr %tx_curr_get17.1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26.1, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mac_drv_virt2phys(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mac_drv_rx_init(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_force_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mac_drv_tx_complete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/fddi/skfp/hwmtm.c", i32 523, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @smt_free_mbuf._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @smt_free_mbuf._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/fddi/skfp/hwmtm.c", i32 552, i32 3}
!9 = !{ptr @mac_drv_repair_descr._entry, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @mac_drv_repair_descr._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/fddi/skfp/hwmtm.c", i32 786, i32 5}
!14 = !{ptr @fddi_isr._entry, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @fddi_isr._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @fddi_isr._entry.8, !18, !"_entry", i1 false, i1 false}
!18 = !{!"../drivers/net/fddi/skfp/hwmtm.c", i32 791, i32 5}
!19 = !{ptr @fddi_isr._entry_ptr.9, !18, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @fddi_isr._entry.11, !22, !"_entry", i1 false, i1 false}
!22 = !{!"../drivers/net/fddi/skfp/hwmtm.c", i32 796, i32 5}
!23 = !{ptr @fddi_isr._entry_ptr.12, !22, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @fddi_isr._entry.14, !26, !"_entry", i1 false, i1 false}
!26 = !{!"../drivers/net/fddi/skfp/hwmtm.c", i32 801, i32 5}
!27 = !{ptr @fddi_isr._entry_ptr.15, !26, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/fddi/skfp/hwmtm.c", i32 1092, i32 5}
!31 = !{ptr @process_receive._entry, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @process_receive._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/fddi/skfp/hwmtm.c", i32 1465, i32 3}
!36 = !{ptr @mac_drv_clear_rx_queue._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mac_drv_clear_rx_queue._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/fddi/skfp/hwmtm.c", i32 1566, i32 4}
!41 = !{ptr @hwm_tx_init._entry, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @hwm_tx_init._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/fddi/skfp/hwmtm.c", i32 2032, i32 3}
!46 = !{ptr @mac_drv_clear_tx_queue._entry, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mac_drv_clear_tx_queue._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i64 2148933089}
!59 = !{i64 743308}
!60 = !{i64 743726}
!61 = !{i64 2148931734}
!62 = !{i64 742888}
!63 = !{i64 2148931122}
!64 = !{!"auto-init"}
