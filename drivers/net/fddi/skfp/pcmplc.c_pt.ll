; ModuleID = '/llk/IR_all_yes/drivers/net/fddi/skfp/pcmplc.c_pt.bc'
source_filename = "../drivers/net/fddi/skfp/pcmplc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.s_smc = type { %struct.s_smt_os, %struct.s_smt_hw, %struct.smt_config, %struct.smt_values, %struct.s_ecm, %struct.s_rmt, %struct.s_cfm, %struct.s_pcm, [2 x %struct.s_phy], %struct.s_queue, %struct.s_timer, %struct.s_srf, [14 x %struct.s_srf_evc], %struct.fddi_mib, %struct.s_ess }
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

@plc_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1689, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016SMT PANIC: code: %d, msg: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"plc_irq\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/fddi/skfp/pcmplc.c\00", [33 x i8] zeroinitializer }, align 32
@plc_irq._entry_ptr = internal global ptr @plc_irq._entry, section ".printk_index", align 4
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Elasticity Buffer hang-up\00", [38 x i8] zeroinitializer }, align 32
@pcm_fsm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 1018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pcm_fsm\00", [24 x i8] zeroinitializer }, align 32
@pcm_fsm._entry_ptr = internal global ptr @pcm_fsm._entry, section ".printk_index", align 4
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM : invalid state\00", [44 x i8] zeroinitializer }, align 32
@switch.table.sm_pm_get_ls = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 16, i32 17, i32 13, i32 12, i32 14, i32 15, i32 13], [36 x i8] zeroinitializer }, align 32
@switch.table.pcm = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 7, i16 263, i16 775, i16 519, i16 1543], [22 x i8] zeroinitializer }, align 32
@switch.table.plc_irq = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0D\0F\0D\0E\0D\0D\0D\0C", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.6 = internal global [14 x i64] [i64 12, i64 8, i64 49, i64 50, i64 51, i64 52, i64 68, i64 71, i64 72, i64 73, i64 76, i64 80, i64 83, i64 85]
@__sancov_gen_cov_switch_values.7 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.9 = internal global [14 x i64] [i64 12, i64 8, i64 49, i64 50, i64 51, i64 52, i64 68, i64 71, i64 72, i64 73, i64 76, i64 80, i64 83, i64 85]
@__sancov_gen_cov_switch_values.10 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 11, i64 24]
@__sancov_gen_cov_switch_values.12 = internal global [19 x i64] [i64 17, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 32, i64 33, i64 34, i64 37, i64 38, i64 40, i64 41]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 24]
@__sancov_gen_cov_switch_values.14 = internal global [8 x i64] [i64 6, i64 16, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.21 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.22 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.28 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 3, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 3, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 1689, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [34 x i8] c"../drivers/net/fddi/skfp/pcmplc.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 1018, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [26 x i8] c"switch.table.sm_pm_get_ls\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"switch.table.pcm\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [21 x i8] c"switch.table.plc_irq\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @pcm_fsm._entry, ptr @pcm_fsm._entry_ptr, ptr @plc_irq._entry, ptr @plc_irq._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @switch.table.sm_pm_get_ls, ptr @switch.table.pcm, ptr @switch.table.plc_irq], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plc_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcm_fsm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sm_pm_get_ls to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pcm to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.plc_irq to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcm_init(ptr noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %y = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 8
  %sas = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 1
  %arrayidx = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1
  %uglygep = getelementptr i8, ptr %smc, i32 3896
  %0 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %y, align 4
  %fddiPORTPCMState = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %fddiPORTPCMState to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 32, ptr %fddiPORTPCMState, align 2
  %np2 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0, i32 1
  %3 = ptrtoint ptr %np2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %np2, align 4
  %4 = ptrtoint ptr %sas to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sas, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %entry.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 0, label %sw.bb14
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 2, ptr %1, align 4
  %fddiPORTHardwarePresent = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 26
  %8 = ptrtoint ptr %fddiPORTHardwarePresent to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %fddiPORTHardwarePresent, align 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %fddiPORTPCMState13 = getelementptr inbounds %struct.fddi_mib_p, ptr %10, i32 0, i32 23
  %11 = ptrtoint ptr %fddiPORTPCMState13 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %fddiPORTPCMState13, align 2
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %1, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb, %entry.sw.epilog_crit_edge
  %pmd_scramble = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0, i32 11
  %13 = ptrtoint ptr %pmd_scramble to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %pmd_scramble, align 1
  %arrayidx20 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx20, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %15, label %sw.default [
    i8 80, label %sw.bb22
    i8 76, label %sw.bb23
    i8 68, label %sw.bb25
    i8 83, label %sw.bb27
    i8 85, label %sw.bb30
    i8 49, label %sw.bb33
    i8 50, label %sw.bb35
    i8 51, label %sw.bb37
    i8 52, label %sw.bb39
    i8 72, label %sw.bb41
    i8 73, label %sw.bb43
    i8 71, label %sw.bb45
  ]

sw.bb22:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTPMDClass = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %fddiPORTPMDClass to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %fddiPORTPMDClass, align 2
  br label %sw.epilog48

sw.bb23:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTPMDClass24 = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %fddiPORTPMDClass24 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 4, ptr %fddiPORTPMDClass24, align 2
  br label %sw.epilog48

sw.bb25:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTPMDClass26 = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %fddiPORTPMDClass26 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 5, ptr %fddiPORTPMDClass26, align 2
  br label %sw.epilog48

sw.bb27:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTPMDClass28 = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %fddiPORTPMDClass28 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 5, ptr %fddiPORTPMDClass28, align 2
  %21 = ptrtoint ptr %pmd_scramble to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %pmd_scramble, align 1
  br label %sw.epilog48

sw.bb30:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTPMDClass31 = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %fddiPORTPMDClass31 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 5, ptr %fddiPORTPMDClass31, align 2
  %23 = ptrtoint ptr %pmd_scramble to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %pmd_scramble, align 1
  br label %sw.epilog48

sw.bb33:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTPMDClass34 = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %fddiPORTPMDClass34 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %fddiPORTPMDClass34, align 2
  br label %sw.epilog48

sw.bb35:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTPMDClass36 = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %fddiPORTPMDClass36 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 2, ptr %fddiPORTPMDClass36, align 2
  br label %sw.epilog48

sw.bb37:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTPMDClass38 = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 9
  %26 = ptrtoint ptr %fddiPORTPMDClass38 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 2, ptr %fddiPORTPMDClass38, align 2
  br label %sw.epilog48

sw.bb39:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTPMDClass40 = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %fddiPORTPMDClass40 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %fddiPORTPMDClass40, align 2
  br label %sw.epilog48

sw.bb41:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTPMDClass42 = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 9
  %28 = ptrtoint ptr %fddiPORTPMDClass42 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 6, ptr %fddiPORTPMDClass42, align 2
  br label %sw.epilog48

sw.bb43:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTPMDClass44 = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 9
  %29 = ptrtoint ptr %fddiPORTPMDClass44 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 5, ptr %fddiPORTPMDClass44, align 2
  br label %sw.epilog48

sw.bb45:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTPMDClass46 = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %fddiPORTPMDClass46 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 5, ptr %fddiPORTPMDClass46, align 2
  br label %sw.epilog48

sw.default:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTPMDClass47 = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 9
  %31 = ptrtoint ptr %fddiPORTPMDClass47 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 6, ptr %fddiPORTPMDClass47, align 2
  br label %sw.epilog48

sw.epilog48:                                      ; preds = %sw.default, %sw.bb45, %sw.bb43, %sw.bb41, %sw.bb39, %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb30, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb22
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %1, align 4
  %34 = zext i16 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %33, label %sw.epilog48.sw.epilog88_crit_edge [
    i16 0, label %sw.epilog48.sw.epilog88.sink.split.sink.split_crit_edge
    i16 1, label %sw.bb59
    i16 2, label %sw.bb70
    i16 3, label %sw.epilog48.sw.epilog88.sink.split_crit_edge
  ]

sw.epilog48.sw.epilog88.sink.split_crit_edge:     ; preds = %sw.epilog48
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog88.sink.split

sw.epilog48.sw.epilog88.sink.split.sink.split_crit_edge: ; preds = %sw.epilog48
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog88.sink.split.sink.split

sw.epilog48.sw.epilog88_crit_edge:                ; preds = %sw.epilog48
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog88

sw.bb59:                                          ; preds = %sw.epilog48
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog88.sink.split.sink.split

sw.bb70:                                          ; preds = %sw.epilog48
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog88.sink.split.sink.split

sw.epilog88.sink.split.sink.split:                ; preds = %sw.bb70, %sw.bb59, %sw.epilog48.sw.epilog88.sink.split.sink.split_crit_edge
  %.sink178.ph = phi i8 [ 33, %sw.bb59 ], [ 41, %sw.bb70 ], [ 25, %sw.epilog48.sw.epilog88.sink.split.sink.split_crit_edge ]
  %.sink.ph = phi i8 [ -31, %sw.bb59 ], [ 41, %sw.bb70 ], [ -103, %sw.epilog48.sw.epilog88.sink.split.sink.split_crit_edge ]
  %fddiPORTAvailablePaths71 = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 7
  %35 = ptrtoint ptr %fddiPORTAvailablePaths71 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %fddiPORTAvailablePaths71, align 4
  %37 = or i8 %36, 2
  store i8 %37, ptr %fddiPORTAvailablePaths71, align 4
  br label %sw.epilog88.sink.split

sw.epilog88.sink.split:                           ; preds = %sw.epilog88.sink.split.sink.split, %sw.epilog48.sw.epilog88.sink.split_crit_edge
  %.sink178 = phi i8 [ 7, %sw.epilog48.sw.epilog88.sink.split_crit_edge ], [ %.sink178.ph, %sw.epilog88.sink.split.sink.split ]
  %.sink = phi i8 [ 0, %sw.epilog48.sw.epilog88.sink.split_crit_edge ], [ %.sink.ph, %sw.epilog88.sink.split.sink.split ]
  %arrayidx83 = getelementptr %struct.fddi_mib_p, ptr %1, i32 0, i32 5, i32 1
  %38 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %arrayidx83, align 1
  %arrayidx85 = getelementptr %struct.fddi_mib_p, ptr %1, i32 0, i32 5, i32 2
  %39 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %.sink178, ptr %arrayidx85, align 2
  %arrayidx87 = getelementptr %struct.fddi_mib_p, ptr %1, i32 0, i32 5, i32 3
  %40 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %.sink, ptr %arrayidx87, align 1
  br label %sw.epilog88

sw.epilog88:                                      ; preds = %sw.epilog88.sink.split, %sw.epilog48.sw.epilog88_crit_edge
  %pc_lem_fail = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0, i32 6
  %41 = ptrtoint ptr %pc_lem_fail to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %pc_lem_fail, align 1
  %42 = ptrtoint ptr %fddiPORTPCMState to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %fddiPORTPCMState, align 2
  %fddiPORTPCMStateX = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 24
  %44 = ptrtoint ptr %fddiPORTPCMStateX to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %fddiPORTPCMStateX, align 4
  %fddiPORTLCTFail_Ct = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 14
  %45 = ptrtoint ptr %fddiPORTLCTFail_Ct to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %fddiPORTLCTFail_Ct, align 4
  %fddiPORTBS_Flag = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 13
  %46 = ptrtoint ptr %fddiPORTBS_Flag to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %fddiPORTBS_Flag, align 2
  %fddiPORTCurrentPath = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 4
  %47 = ptrtoint ptr %fddiPORTCurrentPath to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %fddiPORTCurrentPath, align 4
  %fddiPORTNeighborType = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 1
  %48 = ptrtoint ptr %fddiPORTNeighborType to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 4, ptr %fddiPORTNeighborType, align 2
  %ls_flag = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0, i32 13
  %phy_name95 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0, i32 9
  %49 = ptrtoint ptr %ls_flag to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 0, ptr %ls_flag, align 1
  %50 = ptrtoint ptr %phy_name95 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 65, ptr %phy_name95, align 4
  %wc_flag = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0, i32 4
  %51 = ptrtoint ptr %wc_flag to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %wc_flag, align 1
  %lem = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0, i32 31
  %52 = call ptr @memset(ptr %lem, i32 0, i32 12)
  %53 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %y, align 4
  %fddiPORTLer_Estimate.i = getelementptr inbounds %struct.fddi_mib_p, ptr %54, i32 0, i32 19
  %55 = ptrtoint ptr %fddiPORTLer_Estimate.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 15, ptr %fddiPORTLer_Estimate.i, align 4
  %56 = ptrtoint ptr %lem to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 1500, ptr %lem, align 4
  %plc = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0, i32 32
  %57 = call ptr @memset(ptr %plc, i32 0, i32 68)
  %58 = call ptr @memset(ptr %uglygep, i32 0, i32 40)
  %incdec.ptr = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1
  %uglygep.1 = getelementptr i8, ptr %smc, i32 4128
  %59 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %incdec.ptr, align 4
  %fddiPORTPCMState.1 = getelementptr inbounds %struct.fddi_mib_p, ptr %60, i32 0, i32 23
  %61 = ptrtoint ptr %fddiPORTPCMState.1 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 32, ptr %fddiPORTPCMState.1, align 2
  %np2.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 1
  %62 = ptrtoint ptr %np2.1 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %np2.1, align 4
  %63 = ptrtoint ptr %sas to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %sas, align 1
  %65 = zext i8 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %64, label %sw.epilog88.sw.epilog.1_crit_edge [
    i8 1, label %sw.bb.1
    i8 0, label %sw.bb14.1
  ]

sw.epilog88.sw.epilog.1_crit_edge:                ; preds = %sw.epilog88
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.1

sw.bb14.1:                                        ; preds = %sw.epilog88
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %60 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 1, ptr %60, align 4
  br label %sw.epilog.1

sw.bb.1:                                          ; preds = %sw.epilog88
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %60 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 4, ptr %60, align 4
  %fddiPORTHardwarePresent.1 = getelementptr inbounds %struct.fddi_mib_p, ptr %60, i32 0, i32 26
  %68 = ptrtoint ptr %fddiPORTHardwarePresent.1 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %fddiPORTHardwarePresent.1, align 4
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx, align 4
  %fddiPORTPCMState13.1 = getelementptr inbounds %struct.fddi_mib_p, ptr %70, i32 0, i32 23
  %71 = ptrtoint ptr %fddiPORTPCMState13.1 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %fddiPORTPCMState13.1, align 2
  br label %sw.epilog.1

sw.epilog.1:                                      ; preds = %sw.bb.1, %sw.bb14.1, %sw.epilog88.sw.epilog.1_crit_edge
  %pmd_scramble.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 11
  %72 = ptrtoint ptr %pmd_scramble.1 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 0, ptr %pmd_scramble.1, align 1
  %arrayidx20.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 10, i32 1
  %73 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx20.1, align 1
  %75 = zext i8 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %74, label %sw.default.1 [
    i8 80, label %sw.bb22.1
    i8 76, label %sw.bb23.1
    i8 68, label %sw.bb25.1
    i8 83, label %sw.bb27.1
    i8 85, label %sw.bb30.1
    i8 49, label %sw.bb33.1
    i8 50, label %sw.bb35.1
    i8 51, label %sw.bb37.1
    i8 52, label %sw.bb39.1
    i8 72, label %sw.bb41.1
    i8 73, label %sw.bb43.1
    i8 71, label %sw.bb45.1
  ]

sw.bb45.1:                                        ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTPMDClass46.1 = getelementptr inbounds %struct.fddi_mib_p, ptr %60, i32 0, i32 9
  %76 = ptrtoint ptr %fddiPORTPMDClass46.1 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 5, ptr %fddiPORTPMDClass46.1, align 2
  br label %sw.epilog48.1

sw.bb43.1:                                        ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTPMDClass44.1 = getelementptr inbounds %struct.fddi_mib_p, ptr %60, i32 0, i32 9
  %77 = ptrtoint ptr %fddiPORTPMDClass44.1 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 5, ptr %fddiPORTPMDClass44.1, align 2
  br label %sw.epilog48.1

sw.bb41.1:                                        ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTPMDClass42.1 = getelementptr inbounds %struct.fddi_mib_p, ptr %60, i32 0, i32 9
  %78 = ptrtoint ptr %fddiPORTPMDClass42.1 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 6, ptr %fddiPORTPMDClass42.1, align 2
  br label %sw.epilog48.1

sw.bb39.1:                                        ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTPMDClass40.1 = getelementptr inbounds %struct.fddi_mib_p, ptr %60, i32 0, i32 9
  %79 = ptrtoint ptr %fddiPORTPMDClass40.1 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 1, ptr %fddiPORTPMDClass40.1, align 2
  br label %sw.epilog48.1

sw.bb37.1:                                        ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTPMDClass38.1 = getelementptr inbounds %struct.fddi_mib_p, ptr %60, i32 0, i32 9
  %80 = ptrtoint ptr %fddiPORTPMDClass38.1 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 2, ptr %fddiPORTPMDClass38.1, align 2
  br label %sw.epilog48.1

sw.bb35.1:                                        ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTPMDClass36.1 = getelementptr inbounds %struct.fddi_mib_p, ptr %60, i32 0, i32 9
  %81 = ptrtoint ptr %fddiPORTPMDClass36.1 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 2, ptr %fddiPORTPMDClass36.1, align 2
  br label %sw.epilog48.1

sw.bb33.1:                                        ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTPMDClass34.1 = getelementptr inbounds %struct.fddi_mib_p, ptr %60, i32 0, i32 9
  %82 = ptrtoint ptr %fddiPORTPMDClass34.1 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 1, ptr %fddiPORTPMDClass34.1, align 2
  br label %sw.epilog48.1

sw.bb30.1:                                        ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTPMDClass31.1 = getelementptr inbounds %struct.fddi_mib_p, ptr %60, i32 0, i32 9
  %83 = ptrtoint ptr %fddiPORTPMDClass31.1 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 5, ptr %fddiPORTPMDClass31.1, align 2
  %84 = ptrtoint ptr %pmd_scramble.1 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %pmd_scramble.1, align 1
  br label %sw.epilog48.1

sw.bb27.1:                                        ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTPMDClass28.1 = getelementptr inbounds %struct.fddi_mib_p, ptr %60, i32 0, i32 9
  %85 = ptrtoint ptr %fddiPORTPMDClass28.1 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 5, ptr %fddiPORTPMDClass28.1, align 2
  %86 = ptrtoint ptr %pmd_scramble.1 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %pmd_scramble.1, align 1
  br label %sw.epilog48.1

sw.bb25.1:                                        ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTPMDClass26.1 = getelementptr inbounds %struct.fddi_mib_p, ptr %60, i32 0, i32 9
  %87 = ptrtoint ptr %fddiPORTPMDClass26.1 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 5, ptr %fddiPORTPMDClass26.1, align 2
  br label %sw.epilog48.1

sw.bb23.1:                                        ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTPMDClass24.1 = getelementptr inbounds %struct.fddi_mib_p, ptr %60, i32 0, i32 9
  %88 = ptrtoint ptr %fddiPORTPMDClass24.1 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 4, ptr %fddiPORTPMDClass24.1, align 2
  br label %sw.epilog48.1

sw.bb22.1:                                        ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTPMDClass.1 = getelementptr inbounds %struct.fddi_mib_p, ptr %60, i32 0, i32 9
  %89 = ptrtoint ptr %fddiPORTPMDClass.1 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 0, ptr %fddiPORTPMDClass.1, align 2
  br label %sw.epilog48.1

sw.default.1:                                     ; preds = %sw.epilog.1
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTPMDClass47.1 = getelementptr inbounds %struct.fddi_mib_p, ptr %60, i32 0, i32 9
  %90 = ptrtoint ptr %fddiPORTPMDClass47.1 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 6, ptr %fddiPORTPMDClass47.1, align 2
  br label %sw.epilog48.1

sw.epilog48.1:                                    ; preds = %sw.default.1, %sw.bb22.1, %sw.bb23.1, %sw.bb25.1, %sw.bb27.1, %sw.bb30.1, %sw.bb33.1, %sw.bb35.1, %sw.bb37.1, %sw.bb39.1, %sw.bb41.1, %sw.bb43.1, %sw.bb45.1
  %91 = ptrtoint ptr %60 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %60, align 4
  %93 = zext i16 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %92, label %sw.epilog48.1.sw.epilog88.1_crit_edge [
    i16 0, label %sw.epilog48.1.sw.epilog88.sink.split.sink.split.1_crit_edge
    i16 1, label %sw.bb59.1
    i16 2, label %sw.bb70.1
    i16 3, label %sw.epilog48.1.sw.epilog88.sink.split.1_crit_edge
  ]

sw.epilog48.1.sw.epilog88.sink.split.1_crit_edge: ; preds = %sw.epilog48.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog88.sink.split.1

sw.epilog48.1.sw.epilog88.sink.split.sink.split.1_crit_edge: ; preds = %sw.epilog48.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog88.sink.split.sink.split.1

sw.epilog48.1.sw.epilog88.1_crit_edge:            ; preds = %sw.epilog48.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog88.1

sw.bb70.1:                                        ; preds = %sw.epilog48.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog88.sink.split.sink.split.1

sw.bb59.1:                                        ; preds = %sw.epilog48.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog88.sink.split.sink.split.1

sw.epilog88.sink.split.sink.split.1:              ; preds = %sw.bb59.1, %sw.bb70.1, %sw.epilog48.1.sw.epilog88.sink.split.sink.split.1_crit_edge
  %.sink178.ph.1 = phi i8 [ 33, %sw.bb59.1 ], [ 41, %sw.bb70.1 ], [ 25, %sw.epilog48.1.sw.epilog88.sink.split.sink.split.1_crit_edge ]
  %.sink.ph.1 = phi i8 [ -31, %sw.bb59.1 ], [ 41, %sw.bb70.1 ], [ -103, %sw.epilog48.1.sw.epilog88.sink.split.sink.split.1_crit_edge ]
  %fddiPORTAvailablePaths71.1 = getelementptr inbounds %struct.fddi_mib_p, ptr %60, i32 0, i32 7
  %94 = ptrtoint ptr %fddiPORTAvailablePaths71.1 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %fddiPORTAvailablePaths71.1, align 4
  %96 = or i8 %95, 2
  store i8 %96, ptr %fddiPORTAvailablePaths71.1, align 4
  br label %sw.epilog88.sink.split.1

sw.epilog88.sink.split.1:                         ; preds = %sw.epilog88.sink.split.sink.split.1, %sw.epilog48.1.sw.epilog88.sink.split.1_crit_edge
  %.sink178.1 = phi i8 [ 7, %sw.epilog48.1.sw.epilog88.sink.split.1_crit_edge ], [ %.sink178.ph.1, %sw.epilog88.sink.split.sink.split.1 ]
  %.sink.1 = phi i8 [ 0, %sw.epilog48.1.sw.epilog88.sink.split.1_crit_edge ], [ %.sink.ph.1, %sw.epilog88.sink.split.sink.split.1 ]
  %arrayidx83.1 = getelementptr %struct.fddi_mib_p, ptr %60, i32 0, i32 5, i32 1
  %97 = ptrtoint ptr %arrayidx83.1 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 1, ptr %arrayidx83.1, align 1
  %arrayidx85.1 = getelementptr %struct.fddi_mib_p, ptr %60, i32 0, i32 5, i32 2
  %98 = ptrtoint ptr %arrayidx85.1 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %.sink178.1, ptr %arrayidx85.1, align 2
  %arrayidx87.1 = getelementptr %struct.fddi_mib_p, ptr %60, i32 0, i32 5, i32 3
  %99 = ptrtoint ptr %arrayidx87.1 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %.sink.1, ptr %arrayidx87.1, align 1
  br label %sw.epilog88.1

sw.epilog88.1:                                    ; preds = %sw.epilog88.sink.split.1, %sw.epilog48.1.sw.epilog88.1_crit_edge
  %pc_lem_fail.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 6
  %100 = ptrtoint ptr %pc_lem_fail.1 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %pc_lem_fail.1, align 1
  %101 = ptrtoint ptr %fddiPORTPCMState.1 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %fddiPORTPCMState.1, align 2
  %fddiPORTPCMStateX.1 = getelementptr inbounds %struct.fddi_mib_p, ptr %60, i32 0, i32 24
  %103 = ptrtoint ptr %fddiPORTPCMStateX.1 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %fddiPORTPCMStateX.1, align 4
  %fddiPORTLCTFail_Ct.1 = getelementptr inbounds %struct.fddi_mib_p, ptr %60, i32 0, i32 14
  %104 = ptrtoint ptr %fddiPORTLCTFail_Ct.1 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %fddiPORTLCTFail_Ct.1, align 4
  %fddiPORTBS_Flag.1 = getelementptr inbounds %struct.fddi_mib_p, ptr %60, i32 0, i32 13
  %105 = ptrtoint ptr %fddiPORTBS_Flag.1 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %fddiPORTBS_Flag.1, align 2
  %fddiPORTCurrentPath.1 = getelementptr inbounds %struct.fddi_mib_p, ptr %60, i32 0, i32 4
  %106 = ptrtoint ptr %fddiPORTCurrentPath.1 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %fddiPORTCurrentPath.1, align 4
  %fddiPORTNeighborType.1 = getelementptr inbounds %struct.fddi_mib_p, ptr %60, i32 0, i32 1
  %107 = ptrtoint ptr %fddiPORTNeighborType.1 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 4, ptr %fddiPORTNeighborType.1, align 2
  %ls_flag.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 13
  %phy_name95.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 9
  %108 = ptrtoint ptr %ls_flag.1 to i32
  call void @__asan_storeN_noabort(i32 %108, i32 4)
  store i32 0, ptr %ls_flag.1, align 1
  %109 = ptrtoint ptr %phy_name95.1 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 66, ptr %phy_name95.1, align 4
  %wc_flag.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 4
  %110 = ptrtoint ptr %wc_flag.1 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %wc_flag.1, align 1
  %lem.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 31
  %111 = call ptr @memset(ptr %lem.1, i32 0, i32 12)
  %112 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %incdec.ptr, align 4
  %fddiPORTLer_Estimate.i.1 = getelementptr inbounds %struct.fddi_mib_p, ptr %113, i32 0, i32 19
  %114 = ptrtoint ptr %fddiPORTLer_Estimate.i.1 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 15, ptr %fddiPORTLer_Estimate.i.1, align 4
  %115 = ptrtoint ptr %lem.1 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 1500, ptr %lem.1, align 4
  %plc.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 32
  %116 = call ptr @memset(ptr %plc.1, i32 0, i32 68)
  %117 = call ptr @memset(ptr %uglygep.1, i32 0, i32 40)
  %hw.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %plc_init.exit.i.for.body.i_crit_edge, %sw.epilog88.1
  %cmp.i.i = phi i1 [ true, %sw.epilog88.1 ], [ false, %plc_init.exit.i.for.body.i_crit_edge ]
  %p.03.i = phi i32 [ 0, %sw.epilog88.1 ], [ 1, %plc_init.exit.i.for.body.i_crit_edge ]
  %118 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hw.i.i, align 8
  br i1 %cmp.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %119, i32 1540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #8, !srcloc !28
  %120 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hw.i.i, align 8
  %add.ptr8.i.i = getelementptr i8, ptr %121, i32 1540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i.i, i16 768) #8, !srcloc !28
  %122 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %hw.i.i, align 8
  %add.ptr19.i.i = getelementptr i8, ptr %123, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr19.i.i, i16 0) #8, !srcloc !28
  br label %cond.end35.i.i

cond.false.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3.i.i = getelementptr i8, ptr %119, i32 900
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i.i, i16 0) #8, !srcloc !28
  %124 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %hw.i.i, align 8
  %add.ptr12.i.i = getelementptr i8, ptr %125, i32 900
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr12.i.i, i16 768) #8, !srcloc !28
  %126 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hw.i.i, align 8
  %add.ptr23.i.i = getelementptr i8, ptr %127, i32 896
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr23.i.i, i16 0) #8, !srcloc !28
  br label %cond.end35.i.i

cond.end35.i.i:                                   ; preds = %cond.false.i.i, %cond.true.i.i
  %.sink181.i.i = phi i32 [ 960, %cond.false.i.i ], [ 1600, %cond.true.i.i ]
  %128 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %hw.i.i, align 8
  %add.ptr34.i.i = getelementptr i8, ptr %129, i32 %.sink181.i.i
  %130 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr34.i.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %131 = and i16 %130, 248
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %131)
  %cmp37.not.i.i = icmp eq i16 %131, 0
  br i1 %cmp37.not.i.i, label %cond.end35.i.i.if.end72.i.i_crit_edge, label %if.then.i.i

cond.end35.i.i.if.end72.i.i_crit_edge:            ; preds = %cond.end35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.i.i

if.then.i.i:                                      ; preds = %cond.end35.i.i
  %pmd_scramble.i.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %p.03.i, i32 11
  %132 = ptrtoint ptr %pmd_scramble.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %pmd_scramble.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool.not.i.i = icmp eq i8 %133, 0
  %134 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %hw.i.i, align 8
  %.198.i.i = select i1 %cmp.i.i, i32 1576, i32 936
  %add.ptr69.i.i = getelementptr i8, ptr %135, i32 %.198.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then39.i.i

if.then39.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr69.i.i, i16 258) #8, !srcloc !28
  br label %if.end72.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr69.i.i, i16 0) #8, !srcloc !28
  br label %if.end72.i.i

if.end72.i.i:                                     ; preds = %if.else.i.i, %if.then39.i.i, %cond.end35.i.i.if.end72.i.i_crit_edge
  %136 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %hw.i.i, align 8
  %.199.i.i = select i1 %cmp.i.i, i32 1560, i32 920
  %add.ptr94.i.i = getelementptr i8, ptr %137, i32 %.199.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr94.i.i, i16 6398) #8, !srcloc !28
  %.sink185.i.i = select i1 %cmp.i.i, i32 1564, i32 924
  %138 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %hw.i.i, align 8
  %add.ptr86.1.i.i = getelementptr i8, ptr %139, i32 %.sink185.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr86.1.i.i, i16 -8962) #8, !srcloc !28
  %.sink187.i.i = select i1 %cmp.i.i, i32 1568, i32 928
  %140 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hw.i.i, align 8
  %add.ptr86.2.i.i = getelementptr i8, ptr %141, i32 %.sink187.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr86.2.i.i, i16 4351) #8, !srcloc !28
  %.sink189.i.i = select i1 %cmp.i.i, i32 1572, i32 932
  %142 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %hw.i.i, align 8
  %add.ptr86.3.i.i = getelementptr i8, ptr %143, i32 %.sink189.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr86.3.i.i, i16 -9255) #8, !srcloc !28
  %.sink191.i.i = select i1 %cmp.i.i, i32 1580, i32 940
  %144 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %hw.i.i, align 8
  %add.ptr86.4.i.i = getelementptr i8, ptr %145, i32 %.sink191.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr86.4.i.i, i16 30454) #8, !srcloc !28
  %.sink193.i.i = select i1 %cmp.i.i, i32 1584, i32 944
  %146 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %hw.i.i, align 8
  %add.ptr86.5.i.i = getelementptr i8, ptr %147, i32 %.sink193.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr86.5.i.i, i16 28159) #8, !srcloc !28
  %.sink195.i.i = select i1 %cmp.i.i, i32 1588, i32 948
  %148 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %hw.i.i, align 8
  %add.ptr86.6.i.i = getelementptr i8, ptr %149, i32 %.sink195.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr86.6.i.i, i16 8688) #8, !srcloc !28
  %150 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %hw.i.i, align 8
  br i1 %cmp.i.i, label %cond.true99.i.i, label %cond.false103.i.i

cond.true99.i.i:                                  ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr102.i.i = getelementptr i8, ptr %151, i32 1628
  %152 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr102.i.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  br label %cond.end120.i.i

cond.false103.i.i:                                ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr106.i.i = getelementptr i8, ptr %151, i32 988
  %153 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr106.i.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  br label %cond.end120.i.i

cond.end120.i.i:                                  ; preds = %cond.false103.i.i, %cond.true99.i.i
  %.sink197.i.i = phi i32 [ 904, %cond.false103.i.i ], [ 1544, %cond.true99.i.i ]
  tail call void @plc_clear_irq(ptr noundef %smc, i32 noundef %p.03.i) #8
  %154 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %hw.i.i, align 8
  %add.ptr119.i.i = getelementptr i8, ptr %155, i32 %.sink197.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr119.i.i, i16 31746) #8, !srcloc !28
  %156 = ptrtoint ptr %sas to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %sas, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %157)
  %cmp123.i.i = icmp eq i8 %157, 1
  %158 = and i1 %cmp.i.i, %cmp123.i.i
  br i1 %158, label %cond.end138.i.i, label %cond.end120.i.i.plc_init.exit.i_crit_edge

cond.end120.i.i.plc_init.exit.i_crit_edge:        ; preds = %cond.end120.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %plc_init.exit.i

cond.end138.i.i:                                  ; preds = %cond.end120.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %159 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %hw.i.i, align 8
  %add.ptr133.i.i = getelementptr i8, ptr %160, i32 1540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr133.i.i, i16 -32768) #8, !srcloc !28
  br label %plc_init.exit.i

plc_init.exit.i:                                  ; preds = %cond.end138.i.i, %cond.end120.i.i.plc_init.exit.i_crit_edge
  br i1 %cmp.i.i, label %plc_init.exit.i.for.body.i_crit_edge, label %real_init_plc.exit

plc_init.exit.i.for.body.i_crit_edge:             ; preds = %plc_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

real_init_plc.exit:                               ; preds = %plc_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @init_plc(ptr nocapture noundef %smc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm_pm_get_ls(ptr nocapture noundef readonly %smc, i32 noundef %phy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phy)
  %cmp = icmp eq i32 %phy, 0
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %. = select i1 %cmp, i32 1600, i32 960
  %add.ptr3 = getelementptr i8, ptr %1, i32 %.
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3) #8, !srcloc !29
  %3 = lshr i16 %2, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %4 = and i16 %3, 224
  %and = zext i16 %4 to i32
  %5 = add nsw i32 %and, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %5)
  %6 = icmp ult i32 %5, 224
  br i1 %6, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = lshr exact i32 %5, 5
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.sm_pm_get_ls, i32 0, i32 %7
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %state.0 = phi i32 [ %switch.load, %switch.lookup ], [ 17, %entry.sw.epilog_crit_edge ]
  ret i32 %state.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @plc_config_mux(ptr nocapture noundef readonly %smc, i32 noundef %mux) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sas = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %sas to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sas, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mux)
  %cmp2 = icmp eq i32 %mux, 3
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 1540
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = or i16 %4, 128
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %add.ptr9 = getelementptr i8, ptr %7, i32 1540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9, i16 %5) #8, !srcloc !28
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 8
  %add.ptr12 = getelementptr i8, ptr %9, i32 1536
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr12) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %11 = or i16 %10, 1024
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 8
  %add.ptr20 = getelementptr i8, ptr %13, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr20, i16 %11) #8, !srcloc !28
  br label %if.end41

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = and i16 %4, -129
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 8
  %add.ptr30 = getelementptr i8, ptr %16, i32 1540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr30, i16 %14) #8, !srcloc !28
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 8
  %add.ptr33 = getelementptr i8, ptr %18, i32 1536
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr33) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %20 = and i16 %19, -1025
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 8
  %add.ptr40 = getelementptr i8, ptr %22, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr40, i16 %20) #8, !srcloc !28
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then4
  %hw42 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %23 = ptrtoint ptr %hw42 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw42, align 8
  %add.ptr44 = getelementptr i8, ptr %24, i32 900
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr44) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %26 = and i16 %25, -129
  %27 = ptrtoint ptr %hw42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw42, align 8
  %add.ptr51 = getelementptr i8, ptr %28, i32 900
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr51, i16 %26) #8, !srcloc !28
  %29 = ptrtoint ptr %hw42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw42, align 8
  %add.ptr54 = getelementptr i8, ptr %30, i32 896
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr54) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %32 = and i16 %31, -1025
  %33 = ptrtoint ptr %hw42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw42, align 8
  %add.ptr61 = getelementptr i8, ptr %34, i32 896
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr61, i16 %32) #8, !srcloc !28
  br label %return

return:                                           ; preds = %if.end41, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcm(ptr noundef %smc, i32 noundef %np, i32 noundef %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %np)
  %cmp.not = icmp eq i32 %np, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sas = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %sas to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sas, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp1 = icmp eq i8 %1, 1
  br i1 %cmp1, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %arrayidx = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %fddiPORTPCMState = getelementptr inbounds %struct.fddi_mib_p, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %fddiPORTPCMState to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fddiPORTPCMState, align 2
  %np1.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 1
  %plc2.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 32
  %tm_active.i.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 23, i32 4
  %pcm_timer0.i.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 23
  %hw.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %cf_loop701.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 3
  %cf_join702.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 2
  %tr_flag.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 18
  %sas.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 1
  %pc_mode436.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0, i32 5
  %pc_mode443.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 5
  %arrayidx312.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 20, i32 8
  %arrayidx317.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 21, i32 8
  %td_flag327.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 16
  %arrayidx331.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 21, i32 9
  %arrayidx297.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 20, i32 7
  %arrayidx302.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 21, i32 7
  %wc_flag253.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 4
  %arrayidx260.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 20, i32 9
  %pc_mode.i80 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 5
  %arrayidx275.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1
  %p_bits408.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 32, i32 1
  %p_start409.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 32, i32 2
  %bitn410.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 17
  %arrayidx291.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 20, i32 6
  %lct_short.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 29
  %arrayidx222.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 20, i32 4
  %arrayidx224.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 20, i32 5
  %pc_lem_fail.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 6
  %arrayidx.i180 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 21, i32 1
  %arrayidx30.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 21, i32 2
  %ls_flag.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 13
  %t_val.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 20
  %arrayidx11.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 20, i32 1
  %arrayidx26.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 20, i32 2
  %arrayidx.i158 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 20, i32 3
  br label %do.body

do.body:                                          ; preds = %pcm_fsm.exit.do.body_crit_edge, %if.end
  %6 = phi i16 [ %490, %pcm_fsm.exit.do.body_crit_edge ], [ %5, %if.end ]
  %event.addr.0 = phi i32 [ 0, %pcm_fsm.exit.do.body_crit_edge ], [ %event, %if.end ]
  %7 = ptrtoint ptr %np1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %np1.i, align 4
  %conv.i = zext i8 %8 to i32
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %11 = zext i32 %event.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %event.addr.0, label %sw.epilog.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb7.i
    i32 11, label %sw.bb15.i
    i32 24, label %sw.bb17.i
  ]

sw.bb.i:                                          ; preds = %do.body
  %fddiPORTPCMState.i = getelementptr inbounds %struct.fddi_mib_p, ptr %10, i32 0, i32 23
  %12 = ptrtoint ptr %fddiPORTPCMState.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %fddiPORTPCMState.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %13)
  %cmp.not.i = icmp eq i16 %13, 9
  br i1 %cmp.not.i, label %sw.bb.i.pcm_fsm.exit_crit_edge, label %if.then.i

sw.bb.i.pcm_fsm.exit_crit_edge:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcm_fsm.exit

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %fddiPORTPCMState.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 32, ptr %fddiPORTPCMState.i, align 2
  br label %pcm_fsm.exit

sw.bb7.i:                                         ; preds = %do.body
  %fddiPORTPCMState8.i = getelementptr inbounds %struct.fddi_mib_p, ptr %10, i32 0, i32 23
  %15 = ptrtoint ptr %fddiPORTPCMState8.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %fddiPORTPCMState8.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %16)
  %cmp10.not.i = icmp eq i16 %16, 9
  br i1 %cmp10.not.i, label %sw.bb7.i.pcm_fsm.exit_crit_edge, label %if.then12.i

sw.bb7.i.pcm_fsm.exit_crit_edge:                  ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcm_fsm.exit

if.then12.i:                                      ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %fddiPORTPCMState8.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 33, ptr %fddiPORTPCMState8.i, align 2
  br label %pcm_fsm.exit

sw.bb15.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTPCMState16.i = getelementptr inbounds %struct.fddi_mib_p, ptr %10, i32 0, i32 23
  %18 = ptrtoint ptr %fddiPORTPCMState16.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 41, ptr %fddiPORTPCMState16.i, align 2
  br label %pcm_fsm.exit

sw.bb17.i:                                        ; preds = %do.body
  %19 = ptrtoint ptr %tm_active.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %tm_active.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.i.i = icmp eq i16 %20, 0
  br i1 %tobool.not.i.i, label %sw.bb17.i.stop_pcm_timer0.exit.i_crit_edge, label %if.then.i.i

sw.bb17.i.stop_pcm_timer0.exit.i_crit_edge:       ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stop_pcm_timer0.exit.i

if.then.i.i:                                      ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @smt_timer_stop(ptr noundef %smc, ptr noundef %pcm_timer0.i.i) #8
  br label %stop_pcm_timer0.exit.i

stop_pcm_timer0.exit.i:                           ; preds = %if.then.i.i, %sw.bb17.i.stop_pcm_timer0.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp18.i = icmp eq i8 %8, 0
  %21 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw.i, align 8
  %..i = select i1 %cmp18.i, i32 1540, i32 900
  %add.ptr22.i = getelementptr i8, ptr %22, i32 %..i
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr22.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %24 = and i16 %23, -2049
  %25 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw.i, align 8
  %add.ptr34.i = getelementptr i8, ptr %26, i32 %..i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr34.i, i16 %24) #8, !srcloc !28
  br label %pcm_fsm.exit

sw.epilog.i:                                      ; preds = %do.body
  %fddiPORTPCMState37.i = getelementptr inbounds %struct.fddi_mib_p, ptr %10, i32 0, i32 23
  %27 = ptrtoint ptr %fddiPORTPCMState37.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %fddiPORTPCMState37.i, align 2
  %29 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %28, label %do.end.i [
    i16 32, label %sw.bb39.i
    i16 0, label %sw.bb112.i
    i16 33, label %sw.bb118.i
    i16 1, label %sw.epilog.i.pcm_fsm.exit_crit_edge
    i16 34, label %sw.bb276.i
    i16 2, label %sw.epilog.i.pcm_fsm.exit_crit_edge307
    i16 3, label %sw.epilog.i.pcm_fsm.exit_crit_edge308
    i16 4, label %sw.epilog.i.pcm_fsm.exit_crit_edge309
    i16 37, label %sw.bb282.i
    i16 5, label %sw.epilog.i.sw.bb287.i_crit_edge
    i16 38, label %sw.bb426.i
    i16 6, label %sw.epilog.i.sw.bb569.i_crit_edge
    i16 7, label %sw.epilog.i.pcm_fsm.exit_crit_edge310
    i16 40, label %sw.bb590.i
    i16 8, label %sw.bb610.i
    i16 41, label %sw.bb616.i
    i16 9, label %sw.bb752.i
  ]

sw.epilog.i.pcm_fsm.exit_crit_edge310:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcm_fsm.exit

sw.epilog.i.sw.bb569.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb569.i

sw.epilog.i.sw.bb287.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb287.i

sw.epilog.i.pcm_fsm.exit_crit_edge309:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcm_fsm.exit

sw.epilog.i.pcm_fsm.exit_crit_edge308:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcm_fsm.exit

sw.epilog.i.pcm_fsm.exit_crit_edge307:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcm_fsm.exit

sw.epilog.i.pcm_fsm.exit_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcm_fsm.exit

sw.bb39.i:                                        ; preds = %sw.epilog.i
  %30 = ptrtoint ptr %tm_active.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %tm_active.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not.i1052.i = icmp eq i16 %31, 0
  br i1 %tobool.not.i1052.i, label %sw.bb39.i.stop_pcm_timer0.exit1055.i_crit_edge, label %if.then.i1054.i

sw.bb39.i.stop_pcm_timer0.exit1055.i_crit_edge:   ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stop_pcm_timer0.exit1055.i

if.then.i1054.i:                                  ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @smt_timer_stop(ptr noundef %smc, ptr noundef %pcm_timer0.i.i) #8
  br label %stop_pcm_timer0.exit1055.i

stop_pcm_timer0.exit1055.i:                       ; preds = %if.then.i1054.i, %sw.bb39.i.stop_pcm_timer0.exit1055.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp40.i = icmp eq i8 %8, 0
  %32 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw.i, align 8
  br i1 %cmp40.i, label %cond.true42.i, label %cond.false46.i

cond.true42.i:                                    ; preds = %stop_pcm_timer0.exit1055.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr45.i = getelementptr i8, ptr %33, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr45.i, i16 0) #8, !srcloc !28
  br label %cond.end62.i

cond.false46.i:                                   ; preds = %stop_pcm_timer0.exit1055.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr49.i = getelementptr i8, ptr %33, i32 896
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr49.i, i16 0) #8, !srcloc !28
  br label %cond.end62.i

cond.end62.i:                                     ; preds = %cond.false46.i, %cond.true42.i
  %.sink1078.i = phi i32 [ 900, %cond.false46.i ], [ 1540, %cond.true42.i ]
  %34 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw.i, align 8
  %add.ptr61.i = getelementptr i8, ptr %35, i32 %.sink1078.i
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr61.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %37 = and i16 %36, -4097
  %38 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw.i, align 8
  br i1 %cmp40.i, label %cond.true70.i, label %cond.false74.i

cond.true70.i:                                    ; preds = %cond.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr73.i = getelementptr i8, ptr %39, i32 1540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr73.i, i16 %37) #8, !srcloc !28
  br label %cond.end90.i

cond.false74.i:                                   ; preds = %cond.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr77.i = getelementptr i8, ptr %39, i32 900
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr77.i, i16 %37) #8, !srcloc !28
  br label %cond.end90.i

cond.end90.i:                                     ; preds = %cond.false74.i, %cond.true70.i
  %..i293 = phi i32 [ 904, %cond.false74.i ], [ 1544, %cond.true70.i ]
  %.sink1080.i = phi i32 [ 900, %cond.false74.i ], [ 1540, %cond.true70.i ]
  %40 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw.i, align 8
  %add.ptr89.i = getelementptr i8, ptr %41, i32 %.sink1080.i
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr89.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %43 = and i16 %42, -2049
  %44 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw.i, align 8
  %add.ptr105.i = getelementptr i8, ptr %45, i32 %.sink1080.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr105.i, i16 %43) #8, !srcloc !28
  %lem_on.i290 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %conv.i, i32 31, i32 2
  %46 = ptrtoint ptr %lem_on.i290 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %lem_on.i290, align 4
  %47 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw.i, align 8
  %add.ptr4.i294 = getelementptr i8, ptr %48, i32 %..i293
  %49 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr4.i294) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %50 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw.i, align 8
  %add.ptr15.i297 = getelementptr i8, ptr %51, i32 %..i293
  %52 = and i16 %49, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15.i297, i16 %52) #8, !srcloc !28
  %53 = ptrtoint ptr %cf_loop701.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %cf_loop701.i, align 2
  %54 = ptrtoint ptr %cf_join702.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %cf_join702.i, align 1
  %add.i = add nuw nsw i32 %conv.i, 3
  tail call void @queue_event(ptr noundef %smc, i32 noundef 2, i32 noundef %add.i) #8
  %55 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw.i, align 8
  %add.ptr3.i288 = getelementptr i8, ptr %56, i32 %.sink1080.i
  %57 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i288) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %58 = and i16 %57, -1793
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i288, i16 %58) #8, !srcloc !28
  %59 = or i16 %58, 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i288, i16 %59) #8, !srcloc !28
  %fddiPORTConnectState.i = getelementptr inbounds %struct.fddi_mib_p, ptr %10, i32 0, i32 22
  %60 = ptrtoint ptr %fddiPORTConnectState.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %fddiPORTConnectState.i, align 4
  %61 = ptrtoint ptr %fddiPORTPCMState37.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %fddiPORTPCMState37.i, align 2
  %63 = and i16 %62, -33
  store i16 %63, ptr %fddiPORTPCMState37.i, align 2
  br label %pcm_fsm.exit

sw.bb112.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %event.addr.0)
  %cmp113.i = icmp eq i32 %event.addr.0, 7
  br i1 %cmp113.i, label %if.then115.i, label %sw.bb112.i.pcm_fsm.exit_crit_edge

sw.bb112.i.pcm_fsm.exit_crit_edge:                ; preds = %sw.bb112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcm_fsm.exit

if.then115.i:                                     ; preds = %sw.bb112.i
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %fddiPORTPCMState37.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 41, ptr %fddiPORTPCMState37.i, align 2
  br label %pcm_fsm.exit

sw.bb118.i:                                       ; preds = %sw.epilog.i
  %65 = ptrtoint ptr %tm_active.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %tm_active.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool.not.i1057.i = icmp eq i16 %66, 0
  br i1 %tobool.not.i1057.i, label %sw.bb118.i.stop_pcm_timer0.exit1060.i_crit_edge, label %if.then.i1059.i

sw.bb118.i.stop_pcm_timer0.exit1060.i_crit_edge:  ; preds = %sw.bb118.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stop_pcm_timer0.exit1060.i

if.then.i1059.i:                                  ; preds = %sw.bb118.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @smt_timer_stop(ptr noundef %smc, ptr noundef %pcm_timer0.i.i) #8
  br label %stop_pcm_timer0.exit1060.i

stop_pcm_timer0.exit1060.i:                       ; preds = %if.then.i1059.i, %sw.bb118.i.stop_pcm_timer0.exit1060.i_crit_edge
  %67 = ptrtoint ptr %fddiPORTPCMState37.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %fddiPORTPCMState37.i, align 2
  %69 = and i16 %68, -33
  store i16 %69, ptr %fddiPORTPCMState37.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.i281 = icmp eq i8 %8, 0
  %70 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw.i, align 8
  %..i283 = select i1 %cmp.i281, i32 1540, i32 900
  %add.ptr3.i284 = getelementptr i8, ptr %71, i32 %..i283
  %72 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i284) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %73 = and i16 %72, -1793
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i284, i16 %73) #8, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i284, i16 %73) #8, !srcloc !28
  %74 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hw.i, align 8
  %add.ptr132.i = getelementptr i8, ptr %75, i32 %..i283
  %76 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr132.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %77 = and i16 %76, -4097
  %78 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw.i, align 8
  br i1 %cmp.i281, label %cond.true141.i, label %cond.false145.i

cond.true141.i:                                   ; preds = %stop_pcm_timer0.exit1060.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr144.i = getelementptr i8, ptr %79, i32 1540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr144.i, i16 %77) #8, !srcloc !28
  br label %cond.end161.i

cond.false145.i:                                  ; preds = %stop_pcm_timer0.exit1060.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr148.i = getelementptr i8, ptr %79, i32 900
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr148.i, i16 %77) #8, !srcloc !28
  br label %cond.end161.i

cond.end161.i:                                    ; preds = %cond.false145.i, %cond.true141.i
  %..i276 = phi i32 [ 904, %cond.false145.i ], [ 1544, %cond.true141.i ]
  %.sink1085.i = phi i32 [ 900, %cond.false145.i ], [ 1540, %cond.true141.i ]
  %80 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw.i, align 8
  %add.ptr160.i = getelementptr i8, ptr %81, i32 %.sink1085.i
  %82 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr160.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %83 = and i16 %82, -2049
  %84 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hw.i, align 8
  %add.ptr176.i = getelementptr i8, ptr %85, i32 %.sink1085.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr176.i, i16 %83) #8, !srcloc !28
  %lem_on.i273 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %conv.i, i32 31, i32 2
  %86 = ptrtoint ptr %lem_on.i273 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 0, ptr %lem_on.i273, align 4
  %87 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hw.i, align 8
  %add.ptr4.i277 = getelementptr i8, ptr %88, i32 %..i276
  %89 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr4.i277) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %90 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hw.i, align 8
  %add.ptr15.i280 = getelementptr i8, ptr %91, i32 %..i276
  %92 = and i16 %89, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15.i280, i16 %92) #8, !srcloc !28
  %93 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hw.i, align 8
  %add.ptr3.i271 = getelementptr i8, ptr %94, i32 %..i283
  %95 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i271) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %96 = and i16 %95, -1793
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i271, i16 %96) #8, !srcloc !28
  %97 = or i16 %96, 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i271, i16 %97) #8, !srcloc !28
  %fddiPORTPC_Withhold.i = getelementptr inbounds %struct.fddi_mib_p, ptr %10, i32 0, i32 25
  %98 = ptrtoint ptr %fddiPORTPC_Withhold.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %fddiPORTPC_Withhold.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %cmp180.i = icmp eq i16 %99, 0
  br i1 %cmp180.i, label %if.then182.i, label %cond.end161.i.if.end184.i_crit_edge

cond.end161.i.if.end184.i_crit_edge:              ; preds = %cond.end161.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end184.i

if.then182.i:                                     ; preds = %cond.end161.i
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTConnectState183.i = getelementptr inbounds %struct.fddi_mib_p, ptr %10, i32 0, i32 22
  %100 = ptrtoint ptr %fddiPORTConnectState183.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 1, ptr %fddiPORTConnectState183.i, align 4
  br label %if.end184.i

if.end184.i:                                      ; preds = %if.then182.i, %cond.end161.i.if.end184.i_crit_edge
  %101 = ptrtoint ptr %cf_loop701.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %cf_loop701.i, align 2
  %102 = ptrtoint ptr %cf_join702.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %cf_join702.i, align 1
  %add187.i = add nuw nsw i32 %conv.i, 3
  tail call void @queue_event(ptr noundef %smc, i32 noundef 2, i32 noundef %add187.i) #8
  %103 = ptrtoint ptr %ls_flag.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %ls_flag.i, align 1
  %104 = ptrtoint ptr %pc_mode.i80 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %pc_mode.i80, align 4
  %105 = ptrtoint ptr %bitn410.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %bitn410.i, align 1
  %106 = ptrtoint ptr %t_val.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %t_val.i, align 4
  %107 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %108, align 4
  %111 = and i16 %110, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %111)
  %switch.i = icmp eq i16 %111, 2
  %. = zext i1 %switch.i to i8
  %112 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %., ptr %arrayidx11.i, align 1
  %113 = ptrtoint ptr %108 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %108, align 4
  %115 = add i16 %114, -1
  %switch.and = and i16 %115, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %switch.and)
  %switch.selectcmp = icmp eq i16 %switch.and, 0
  %116 = zext i1 %switch.selectcmp to i8
  %117 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %arrayidx26.i, align 2
  %118 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hw.i, align 8
  br i1 %cmp.i281, label %cond.true192.i, label %cond.false196.i

cond.true192.i:                                   ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr195.i = getelementptr i8, ptr %119, i32 1544
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr195.i, i16 31746) #8, !srcloc !28
  %120 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hw.i, align 8
  %add.ptr207.i = getelementptr i8, ptr %121, i32 1628
  %122 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr207.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  br label %cond.end225.i

cond.false196.i:                                  ; preds = %if.end184.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr199.i = getelementptr i8, ptr %119, i32 904
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr199.i, i16 31746) #8, !srcloc !28
  %123 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %hw.i, align 8
  %add.ptr211.i = getelementptr i8, ptr %124, i32 988
  %125 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr211.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  br label %cond.end225.i

cond.end225.i:                                    ; preds = %cond.false196.i, %cond.true192.i
  %.sink1089.i = phi i32 [ 960, %cond.false196.i ], [ 1600, %cond.true192.i ]
  %126 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hw.i, align 8
  %add.ptr224.i = getelementptr i8, ptr %127, i32 %.sink1089.i
  %128 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr224.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %129 = and i16 %128, 248
  call void @__sanitizer_cov_trace_const_cmp2(i16 120, i16 %129)
  %cmp232.not.i = icmp eq i16 %129, 120
  br i1 %cmp232.not.i, label %cond.end225.i.if.end238.i_crit_edge, label %if.then234.i

cond.end225.i.if.end238.i_crit_edge:              ; preds = %cond.end225.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end238.i

if.then234.i:                                     ; preds = %cond.end225.i
  %130 = ptrtoint ptr %np1.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %np1.i, align 4
  %132 = ptrtoint ptr %bitn410.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %bitn410.i, align 1
  %conv3.i231 = zext i8 %133 to i32
  %add.i235 = add nuw nsw i32 %conv3.i231, 2
  %arrayidx.i236 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 20, i32 %add.i235
  %134 = ptrtoint ptr %arrayidx.i236 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx.i236, align 1
  %add.i235.1 = add nuw nsw i32 %conv3.i231, 1
  %arrayidx.i236.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 20, i32 %add.i235.1
  %136 = ptrtoint ptr %arrayidx.i236.1 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx.i236.1, align 1
  %arrayidx.i236.2 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 20, i32 %conv3.i231
  %138 = ptrtoint ptr %arrayidx.i236.2 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx.i236.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %cmp5.i244 = icmp eq i8 %131, 0
  %140 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hw.i, align 8
  %..i246 = select i1 %cmp5.i244, i32 1604, i32 964
  %add.ptr9.i247 = getelementptr i8, ptr %141, i32 %..i246
  %142 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr9.i247) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %143 = and i16 %142, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %143)
  %tobool.not.i248 = icmp eq i16 %143, 0
  br i1 %tobool.not.i248, label %plc_send_bits.exit257.thread, label %if.then234.i.pcm_fsm.exit_crit_edge

if.then234.i.pcm_fsm.exit_crit_edge:              ; preds = %if.then234.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcm_fsm.exit

plc_send_bits.exit257.thread:                     ; preds = %if.then234.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i237 = zext i8 %135 to i16
  %144 = shl nuw nsw i16 %conv4.i237, 2
  %conv4.i237.1 = zext i8 %137 to i16
  %145 = shl nuw nsw i16 %conv4.i237.1, 1
  %shl.i234.2 = or i16 %144, %145
  %conv4.i237.2 = zext i8 %139 to i16
  %or.i238.2 = or i16 %shl.i234.2, %conv4.i237.2
  %146 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %hw.i, align 8
  %.60.i250 = select i1 %cmp5.i244, i32 1552, i32 912
  %add.ptr22.i251 = getelementptr i8, ptr %147, i32 %.60.i250
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr22.i251, i16 512) #8, !srcloc !28
  %.sink59.i252 = select i1 %cmp5.i244, i32 1548, i32 908
  %148 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %hw.i, align 8
  %add.ptr35.i254 = getelementptr i8, ptr %149, i32 %.sink59.i252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  %150 = tail call i16 @llvm.bswap.i16(i16 %or.i238.2) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr35.i254, i16 %150) #8, !srcloc !28
  br label %if.end238.i

if.end238.i:                                      ; preds = %plc_send_bits.exit257.thread, %cond.end225.i.if.end238.i_crit_edge
  %151 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %hw.i, align 8
  %add.ptr3.i227 = getelementptr i8, ptr %152, i32 %..i283
  %153 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i227) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %154 = and i16 %153, -1793
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i227, i16 %154) #8, !srcloc !28
  %155 = or i16 %154, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i227, i16 %155) #8, !srcloc !28
  %156 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %hw.i, align 8
  %.1118.i = select i1 %cmp.i281, i32 1600, i32 960
  %add.ptr248.i = getelementptr i8, ptr %157, i32 %.1118.i
  %158 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr248.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %159 = and i16 %158, 248
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %159)
  %cmp254.not.i = icmp eq i16 %159, 0
  br i1 %cmp254.not.i, label %if.end238.i.if.end274.i_crit_edge, label %land.lhs.true.i

if.end238.i.if.end274.i_crit_edge:                ; preds = %if.end238.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end274.i

land.lhs.true.i:                                  ; preds = %if.end238.i
  %160 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %hw.i, align 8
  %.1119.i = select i1 %cmp.i281, i32 1604, i32 964
  %add.ptr265.i = getelementptr i8, ptr %161, i32 %.1119.i
  %162 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr265.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %163 = and i16 %162, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %163)
  %tobool271.not.i = icmp eq i16 %163, 0
  br i1 %tobool271.not.i, label %if.then272.i, label %land.lhs.true.i.if.end274.i_crit_edge

land.lhs.true.i.if.end274.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end274.i

if.then272.i:                                     ; preds = %land.lhs.true.i
  %164 = ptrtoint ptr %np1.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %np1.i, align 4
  %166 = ptrtoint ptr %bitn410.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %bitn410.i, align 1
  %conv3.i197 = zext i8 %167 to i32
  %add.i201 = add nuw nsw i32 %conv3.i197, 2
  %arrayidx.i202 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 20, i32 %add.i201
  %168 = ptrtoint ptr %arrayidx.i202 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx.i202, align 1
  %add.i201.1 = add nuw nsw i32 %conv3.i197, 1
  %arrayidx.i202.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 20, i32 %add.i201.1
  %170 = ptrtoint ptr %arrayidx.i202.1 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx.i202.1, align 1
  %arrayidx.i202.2 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 20, i32 %conv3.i197
  %172 = ptrtoint ptr %arrayidx.i202.2 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx.i202.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %cmp5.i210 = icmp eq i8 %165, 0
  %174 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %hw.i, align 8
  %..i212 = select i1 %cmp5.i210, i32 1604, i32 964
  %add.ptr9.i213 = getelementptr i8, ptr %175, i32 %..i212
  %176 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr9.i213) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %177 = and i16 %176, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %177)
  %tobool.not.i214 = icmp eq i16 %177, 0
  br i1 %tobool.not.i214, label %if.end.i221, label %if.then272.i.if.end274.i_crit_edge

if.then272.i.if.end274.i_crit_edge:               ; preds = %if.then272.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end274.i

if.end.i221:                                      ; preds = %if.then272.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i203 = zext i8 %169 to i16
  %178 = shl nuw nsw i16 %conv4.i203, 2
  %conv4.i203.1 = zext i8 %171 to i16
  %179 = shl nuw nsw i16 %conv4.i203.1, 1
  %shl.i200.2 = or i16 %178, %179
  %conv4.i203.2 = zext i8 %173 to i16
  %or.i204.2 = or i16 %shl.i200.2, %conv4.i203.2
  %180 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %hw.i, align 8
  %.60.i216 = select i1 %cmp5.i210, i32 1552, i32 912
  %add.ptr22.i217 = getelementptr i8, ptr %181, i32 %.60.i216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr22.i217, i16 512) #8, !srcloc !28
  %.sink59.i218 = select i1 %cmp5.i210, i32 1548, i32 908
  %182 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %hw.i, align 8
  %add.ptr35.i220 = getelementptr i8, ptr %183, i32 %.sink59.i218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  %184 = tail call i16 @llvm.bswap.i16(i16 %or.i204.2) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr35.i220, i16 %184) #8, !srcloc !28
  br label %if.end274.i

if.end274.i:                                      ; preds = %if.end.i221, %if.then272.i.if.end274.i_crit_edge, %land.lhs.true.i.if.end274.i_crit_edge, %if.end238.i.if.end274.i_crit_edge
  %185 = ptrtoint ptr %fddiPORTPCMState37.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 37, ptr %fddiPORTPCMState37.i, align 2
  %186 = ptrtoint ptr %plc2.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 1, ptr %plc2.i, align 4
  %187 = ptrtoint ptr %p_bits408.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 3, ptr %p_bits408.i, align 2
  %188 = ptrtoint ptr %p_start409.i to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 0, ptr %p_start409.i, align 4
  br label %pcm_fsm.exit

sw.bb276.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.i190 = icmp eq i8 %8, 0
  %189 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %hw.i, align 8
  %..i192 = select i1 %cmp.i190, i32 1540, i32 900
  %add.ptr3.i193 = getelementptr i8, ptr %190, i32 %..i192
  %191 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i193) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %192 = and i16 %191, -1793
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i193, i16 %192) #8, !srcloc !28
  %193 = or i16 %192, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i193, i16 %193) #8, !srcloc !28
  %194 = ptrtoint ptr %fddiPORTPCMState37.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %fddiPORTPCMState37.i, align 2
  %196 = and i16 %195, -33
  store i16 %196, ptr %fddiPORTPCMState37.i, align 2
  br label %pcm_fsm.exit

sw.bb282.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %197 = ptrtoint ptr %fddiPORTPCMState37.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 5, ptr %fddiPORTPCMState37.i, align 2
  br label %sw.bb287.i

sw.bb287.i:                                       ; preds = %sw.bb282.i, %sw.epilog.i.sw.bb287.i_crit_edge
  %198 = zext i32 %event.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %198, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %event.addr.0, label %sw.bb287.i.pcm_fsm.exit_crit_edge [
    i32 5, label %sw.bb287.i.if.end294.i_crit_edge
    i32 24, label %sw.bb287.i.if.end294.i_crit_edge311
  ]

sw.bb287.i.if.end294.i_crit_edge311:              ; preds = %sw.bb287.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end294.i

sw.bb287.i.if.end294.i_crit_edge:                 ; preds = %sw.bb287.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end294.i

sw.bb287.i.pcm_fsm.exit_crit_edge:                ; preds = %sw.bb287.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcm_fsm.exit

if.end294.i:                                      ; preds = %sw.bb287.i.if.end294.i_crit_edge, %sw.bb287.i.if.end294.i_crit_edge311
  %199 = ptrtoint ptr %plc2.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %plc2.i, align 4
  %201 = zext i16 %200 to i64
  call void @__sanitizer_cov_trace_switch(i64 %201, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %200, label %if.end294.i.pcm_fsm.exit_crit_edge [
    i16 1, label %for.body301.preheader.i
    i16 2, label %sw.bb313.i
    i16 3, label %for.body333.preheader.i
    i16 4, label %sw.bb382.i
    i16 5, label %sw.bb391.i
    i16 6, label %for.body419.preheader.i
  ]

if.end294.i.pcm_fsm.exit_crit_edge:               ; preds = %if.end294.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcm_fsm.exit

for.body419.preheader.i:                          ; preds = %if.end294.i
  %202 = ptrtoint ptr %arrayidx312.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %arrayidx312.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool314.not.i = icmp eq i8 %203, 0
  br i1 %tobool314.not.i, label %lor.lhs.false315.i, label %if.then324.i

lor.lhs.false315.i:                               ; preds = %for.body419.preheader.i
  %204 = ptrtoint ptr %arrayidx317.i to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %arrayidx317.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool319.not.i = icmp eq i8 %205, 0
  br i1 %tobool319.not.i, label %lor.lhs.false315.i.pc_rcode_actions.exit189_crit_edge, label %lor.lhs.false315.i.if.end326.i_crit_edge

lor.lhs.false315.i.if.end326.i_crit_edge:         ; preds = %lor.lhs.false315.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end326.i

lor.lhs.false315.i.pc_rcode_actions.exit189_crit_edge: ; preds = %lor.lhs.false315.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pc_rcode_actions.exit189

if.then324.i:                                     ; preds = %for.body419.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %206 = ptrtoint ptr %cf_loop701.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 1, ptr %cf_loop701.i, align 2
  br label %if.end326.i

if.end326.i:                                      ; preds = %if.then324.i, %lor.lhs.false315.i.if.end326.i_crit_edge
  %207 = ptrtoint ptr %td_flag327.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 1, ptr %td_flag327.i, align 4
  br label %pc_rcode_actions.exit189

pc_rcode_actions.exit189:                         ; preds = %if.end326.i, %lor.lhs.false315.i.pc_rcode_actions.exit189_crit_edge
  %208 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %arrayidx, align 4
  %210 = ptrtoint ptr %arrayidx331.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %arrayidx331.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %211)
  %tobool332.not.i = icmp ne i8 %211, 0
  %R_val336.i = getelementptr inbounds %struct.fddi_mib_p, ptr %209, i32 0, i32 3, i32 1
  %.301 = zext i1 %tobool332.not.i to i8
  %212 = ptrtoint ptr %R_val336.i to i32
  call void @__asan_store1_noabort(i32 %212)
  store i8 %.301, ptr %R_val336.i, align 1
  %213 = ptrtoint ptr %plc2.i to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 7, ptr %plc2.i, align 4
  %214 = ptrtoint ptr %fddiPORTPCMState37.i to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 38, ptr %fddiPORTPCMState37.i, align 2
  br label %pcm_fsm.exit

for.body333.preheader.i:                          ; preds = %if.end294.i
  tail call fastcc void @pc_rcode_actions(ptr noundef %smc, i32 noundef 3, ptr noundef %arrayidx) #8
  tail call fastcc void @pc_rcode_actions(ptr noundef %smc, i32 noundef 5, ptr noundef %arrayidx) #8
  %215 = ptrtoint ptr %arrayidx291.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %arrayidx291.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool292.not.i = icmp eq i8 %216, 0
  br i1 %tobool292.not.i, label %for.body333.preheader.i.pc_rcode_actions.exit187_crit_edge, label %if.then293.i

for.body333.preheader.i.pc_rcode_actions.exit187_crit_edge: ; preds = %for.body333.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pc_rcode_actions.exit187

if.then293.i:                                     ; preds = %for.body333.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %217 = ptrtoint ptr %cf_loop701.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 1, ptr %cf_loop701.i, align 2
  br label %pc_rcode_actions.exit187

pc_rcode_actions.exit187:                         ; preds = %if.then293.i, %for.body333.preheader.i.pc_rcode_actions.exit187_crit_edge
  %218 = ptrtoint ptr %td_flag327.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 1, ptr %td_flag327.i, align 4
  %219 = ptrtoint ptr %plc2.i to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 4, ptr %plc2.i, align 4
  %220 = ptrtoint ptr %p_bits408.i to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 0, ptr %p_bits408.i, align 2
  %221 = ptrtoint ptr %p_start409.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 7, ptr %p_start409.i, align 4
  %222 = ptrtoint ptr %bitn410.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 7, ptr %bitn410.i, align 1
  %223 = ptrtoint ptr %lct_short.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %lct_short.i, align 4
  tail call fastcc void @sm_ph_lem_start(ptr noundef %smc, i32 noundef %conv.i, i32 noundef %224) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp341.i = icmp eq i8 %8, 0
  %225 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %hw.i, align 8
  %.1120.i = select i1 %cmp341.i, i32 1540, i32 900
  %add.ptr350.i = getelementptr i8, ptr %226, i32 %.1120.i
  %227 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr350.i) #8, !srcloc !29
  %228 = tail call i16 @llvm.bswap.i16(i16 %227) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %229 = and i16 %228, -97
  %230 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %hw.i, align 8
  %add.ptr366.i = getelementptr i8, ptr %231, i32 %.1120.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  %232 = tail call i16 @llvm.bswap.i16(i16 %229) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr366.i, i16 %232) #8, !srcloc !28
  %233 = or i16 %228, 96
  %234 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %hw.i, align 8
  %add.ptr379.i = getelementptr i8, ptr %235, i32 %.1120.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  %236 = tail call i16 @llvm.bswap.i16(i16 %233) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr379.i, i16 %236) #8, !srcloc !28
  br label %pcm_fsm.exit

for.body301.preheader.i:                          ; preds = %if.end294.i
  %237 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %arrayidx, align 4
  %239 = ptrtoint ptr %arrayidx.i180 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %arrayidx.i180, align 1
  %241 = zext i8 %240 to i64
  call void @__sanitizer_cov_trace_switch(i64 %241, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %240, label %for.body301.preheader.i.pc_rcode_actions.exit184_crit_edge [
    i8 0, label %land.lhs.true.i181
    i8 1, label %land.lhs.true28.i
  ]

for.body301.preheader.i.pc_rcode_actions.exit184_crit_edge: ; preds = %for.body301.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pc_rcode_actions.exit184

land.lhs.true.i181:                               ; preds = %for.body301.preheader.i
  %242 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %arrayidx30.i, align 2
  %244 = zext i8 %243 to i64
  call void @__sanitizer_cov_trace_switch(i64 %244, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %243, label %land.lhs.true.i181.pc_rcode_actions.exit184_crit_edge [
    i8 0, label %land.lhs.true.i181.pc_rcode_actions.exit184.sink.split_crit_edge
    i8 1, label %if.then20.i
  ]

land.lhs.true.i181.pc_rcode_actions.exit184.sink.split_crit_edge: ; preds = %land.lhs.true.i181
  call void @__sanitizer_cov_trace_pc() #10
  br label %pc_rcode_actions.exit184.sink.split

land.lhs.true.i181.pc_rcode_actions.exit184_crit_edge: ; preds = %land.lhs.true.i181
  call void @__sanitizer_cov_trace_pc() #10
  br label %pc_rcode_actions.exit184

if.then20.i:                                      ; preds = %land.lhs.true.i181
  call void @__sanitizer_cov_trace_pc() #10
  br label %pc_rcode_actions.exit184.sink.split

land.lhs.true28.i:                                ; preds = %for.body301.preheader.i
  %245 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %arrayidx30.i, align 2
  %247 = zext i8 %246 to i64
  call void @__sanitizer_cov_trace_switch(i64 %247, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %246, label %land.lhs.true28.i.pc_rcode_actions.exit184_crit_edge [
    i8 0, label %land.lhs.true28.i.pc_rcode_actions.exit184.sink.split_crit_edge
    i8 1, label %if.then48.i
  ]

land.lhs.true28.i.pc_rcode_actions.exit184.sink.split_crit_edge: ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pc_rcode_actions.exit184.sink.split

land.lhs.true28.i.pc_rcode_actions.exit184_crit_edge: ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pc_rcode_actions.exit184

if.then48.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pc_rcode_actions.exit184.sink.split

pc_rcode_actions.exit184.sink.split:              ; preds = %if.then48.i, %land.lhs.true28.i.pc_rcode_actions.exit184.sink.split_crit_edge, %if.then20.i, %land.lhs.true.i181.pc_rcode_actions.exit184.sink.split_crit_edge
  %.sink = phi i16 [ 1, %if.then20.i ], [ 3, %if.then48.i ], [ 0, %land.lhs.true.i181.pc_rcode_actions.exit184.sink.split_crit_edge ], [ 2, %land.lhs.true28.i.pc_rcode_actions.exit184.sink.split_crit_edge ]
  %fddiPORTNeighborType.i = getelementptr inbounds %struct.fddi_mib_p, ptr %238, i32 0, i32 1
  %248 = ptrtoint ptr %fddiPORTNeighborType.i to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 %.sink, ptr %fddiPORTNeighborType.i, align 2
  br label %pc_rcode_actions.exit184

pc_rcode_actions.exit184:                         ; preds = %pc_rcode_actions.exit184.sink.split, %land.lhs.true28.i.pc_rcode_actions.exit184_crit_edge, %land.lhs.true.i181.pc_rcode_actions.exit184_crit_edge, %for.body301.preheader.i.pc_rcode_actions.exit184_crit_edge
  tail call fastcc void @pc_tcode_actions(ptr noundef %smc, i32 noundef 3, ptr noundef %arrayidx) #8
  %249 = ptrtoint ptr %plc2.i to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 2, ptr %plc2.i, align 4
  %250 = ptrtoint ptr %p_bits408.i to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 1, ptr %p_bits408.i, align 2
  %251 = ptrtoint ptr %p_start409.i to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 3, ptr %p_start409.i, align 4
  %252 = ptrtoint ptr %bitn410.i to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 3, ptr %bitn410.i, align 1
  %253 = ptrtoint ptr %np1.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %np1.i, align 4
  %255 = ptrtoint ptr %arrayidx.i158 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %arrayidx.i158, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %254)
  %cmp5.i166 = icmp eq i8 %254, 0
  %257 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %hw.i, align 8
  %..i168 = select i1 %cmp5.i166, i32 1604, i32 964
  %add.ptr9.i169 = getelementptr i8, ptr %258, i32 %..i168
  %259 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr9.i169) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %260 = and i16 %259, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %260)
  %tobool.not.i170 = icmp eq i16 %260, 0
  br i1 %tobool.not.i170, label %if.end.i177, label %pc_rcode_actions.exit184.pcm_fsm.exit_crit_edge

pc_rcode_actions.exit184.pcm_fsm.exit_crit_edge:  ; preds = %pc_rcode_actions.exit184
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcm_fsm.exit

if.end.i177:                                      ; preds = %pc_rcode_actions.exit184
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.i164 = zext i8 %256 to i16
  %261 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %hw.i, align 8
  %.60.i172 = select i1 %cmp5.i166, i32 1552, i32 912
  %add.ptr22.i173 = getelementptr i8, ptr %262, i32 %.60.i172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr22.i173, i16 0) #8, !srcloc !28
  %.sink59.i174 = select i1 %cmp5.i166, i32 1548, i32 908
  %263 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %hw.i, align 8
  %add.ptr35.i176 = getelementptr i8, ptr %264, i32 %.sink59.i174
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  %265 = shl nuw i16 %phi.cast.i164, 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr35.i176, i16 %265) #8, !srcloc !28
  br label %pcm_fsm.exit

sw.bb313.i:                                       ; preds = %if.end294.i
  tail call fastcc void @pc_rcode_actions(ptr noundef %smc, i32 noundef 3, ptr noundef %arrayidx) #8
  %266 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %arrayidx, align 4
  %fddiPORTPC_Withhold.i148 = getelementptr inbounds %struct.fddi_mib_p, ptr %267, i32 0, i32 25
  %268 = ptrtoint ptr %fddiPORTPC_Withhold.i148 to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %fddiPORTPC_Withhold.i148, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %269)
  %cmp192.i = icmp eq i16 %269, 0
  br i1 %cmp192.i, label %if.then194.i, label %if.else219.i

if.then194.i:                                     ; preds = %sw.bb313.i
  %270 = ptrtoint ptr %pc_lem_fail.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %pc_lem_fail.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %271)
  %tobool195.not.i = icmp eq i8 %271, 0
  br i1 %tobool195.not.i, label %if.else201.i, label %if.then196.i

if.then196.i:                                     ; preds = %if.then194.i
  call void @__sanitizer_cov_trace_pc() #10
  %272 = ptrtoint ptr %arrayidx222.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 1, ptr %arrayidx222.i, align 4
  br label %if.end218.i

if.else201.i:                                     ; preds = %if.then194.i
  call void @__sanitizer_cov_trace_pc() #10
  %273 = ptrtoint ptr %arrayidx222.i to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 0, ptr %arrayidx222.i, align 4
  %fddiPORTLCTFail_Ct.i = getelementptr inbounds %struct.fddi_mib_p, ptr %267, i32 0, i32 14
  %274 = ptrtoint ptr %fddiPORTLCTFail_Ct.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %fddiPORTLCTFail_Ct.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %275)
  %cmp204.not.i = icmp ne i32 %275, 0
  %276 = ptrtoint ptr %wc_flag253.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %wc_flag253.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %277)
  %tobool213.not.i = icmp ne i8 %277, 0
  %narrow = select i1 %tobool213.not.i, i1 true, i1 %cmp204.not.i
  %spec.store.select.i = zext i1 %narrow to i8
  br label %if.end218.i

if.end218.i:                                      ; preds = %if.else201.i, %if.then196.i
  %storemerge = phi i8 [ 0, %if.then196.i ], [ %spec.store.select.i, %if.else201.i ]
  %278 = ptrtoint ptr %arrayidx224.i to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 %storemerge, ptr %arrayidx224.i, align 1
  %fddiPORTConnectState.i149 = getelementptr inbounds %struct.fddi_mib_p, ptr %267, i32 0, i32 22
  %279 = ptrtoint ptr %fddiPORTConnectState.i149 to i32
  call void @__asan_store2_noabort(i32 %279)
  store i16 1, ptr %fddiPORTConnectState.i149, align 4
  br label %pc_tcode_actions.exit150

if.else219.i:                                     ; preds = %sw.bb313.i
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTConnectState220.i = getelementptr inbounds %struct.fddi_mib_p, ptr %267, i32 0, i32 22
  %280 = ptrtoint ptr %fddiPORTConnectState220.i to i32
  call void @__asan_store2_noabort(i32 %280)
  store i16 2, ptr %fddiPORTConnectState220.i, align 4
  %281 = ptrtoint ptr %arrayidx222.i to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 1, ptr %arrayidx222.i, align 4
  %282 = ptrtoint ptr %arrayidx224.i to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 1, ptr %arrayidx224.i, align 1
  br label %pc_tcode_actions.exit150

pc_tcode_actions.exit150:                         ; preds = %if.else219.i, %if.end218.i
  %283 = ptrtoint ptr %np1.i to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %np1.i, align 4
  %285 = ptrtoint ptr %arrayidx291.i to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 0, ptr %arrayidx291.i, align 2
  %286 = ptrtoint ptr %plc2.i to i32
  call void @__asan_store2_noabort(i32 %286)
  store i16 3, ptr %plc2.i, align 4
  %287 = ptrtoint ptr %p_bits408.i to i32
  call void @__asan_store2_noabort(i32 %287)
  store i16 3, ptr %p_bits408.i, align 2
  %288 = ptrtoint ptr %p_start409.i to i32
  call void @__asan_store2_noabort(i32 %288)
  store i16 4, ptr %p_start409.i, align 4
  %289 = ptrtoint ptr %bitn410.i to i32
  call void @__asan_store1_noabort(i32 %289)
  store i8 4, ptr %bitn410.i, align 1
  %290 = ptrtoint ptr %arrayidx224.i to i32
  call void @__asan_load1_noabort(i32 %290)
  %291 = load i8, ptr %arrayidx224.i, align 1
  %292 = ptrtoint ptr %arrayidx222.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %arrayidx222.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %284)
  %cmp5.i128 = icmp eq i8 %284, 0
  %294 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %hw.i, align 8
  %..i130 = select i1 %cmp5.i128, i32 1604, i32 964
  %add.ptr9.i131 = getelementptr i8, ptr %295, i32 %..i130
  %296 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr9.i131) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %297 = and i16 %296, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %297)
  %tobool.not.i132 = icmp eq i16 %297, 0
  br i1 %tobool.not.i132, label %if.end.i139, label %pc_tcode_actions.exit150.pcm_fsm.exit_crit_edge

pc_tcode_actions.exit150.pcm_fsm.exit_crit_edge:  ; preds = %pc_tcode_actions.exit150
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcm_fsm.exit

if.end.i139:                                      ; preds = %pc_tcode_actions.exit150
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i121.1 = zext i8 %291 to i16
  %shl.i118.2 = shl nuw nsw i16 %conv4.i121.1, 1
  %conv4.i121.2 = zext i8 %293 to i16
  %or.i122.2 = or i16 %shl.i118.2, %conv4.i121.2
  %298 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %hw.i, align 8
  %.60.i134 = select i1 %cmp5.i128, i32 1552, i32 912
  %add.ptr22.i135 = getelementptr i8, ptr %299, i32 %.60.i134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr22.i135, i16 512) #8, !srcloc !28
  %.sink59.i136 = select i1 %cmp5.i128, i32 1548, i32 908
  %300 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %hw.i, align 8
  %add.ptr35.i138 = getelementptr i8, ptr %301, i32 %.sink59.i136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  %302 = tail call i16 @llvm.bswap.i16(i16 %or.i122.2) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr35.i138, i16 %302) #8, !srcloc !28
  br label %pcm_fsm.exit

sw.bb382.i:                                       ; preds = %if.end294.i
  tail call fastcc void @pc_tcode_actions(ptr noundef %smc, i32 noundef 7, ptr noundef %arrayidx) #8
  %303 = ptrtoint ptr %plc2.i to i32
  call void @__asan_store2_noabort(i32 %303)
  store i16 5, ptr %plc2.i, align 4
  %304 = ptrtoint ptr %p_bits408.i to i32
  call void @__asan_store2_noabort(i32 %304)
  store i16 1, ptr %p_bits408.i, align 2
  %305 = ptrtoint ptr %p_start409.i to i32
  call void @__asan_store2_noabort(i32 %305)
  store i16 7, ptr %p_start409.i, align 4
  %306 = ptrtoint ptr %bitn410.i to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 7, ptr %bitn410.i, align 1
  %307 = ptrtoint ptr %np1.i to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %np1.i, align 4
  %309 = ptrtoint ptr %arrayidx297.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %arrayidx297.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %308)
  %cmp5.i99 = icmp eq i8 %308, 0
  %311 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %hw.i, align 8
  %..i101 = select i1 %cmp5.i99, i32 1604, i32 964
  %add.ptr9.i102 = getelementptr i8, ptr %312, i32 %..i101
  %313 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr9.i102) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %314 = and i16 %313, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %314)
  %tobool.not.i103 = icmp eq i16 %314, 0
  br i1 %tobool.not.i103, label %if.end.i110, label %sw.bb382.i.pcm_fsm.exit_crit_edge

sw.bb382.i.pcm_fsm.exit_crit_edge:                ; preds = %sw.bb382.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcm_fsm.exit

if.end.i110:                                      ; preds = %sw.bb382.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.cast.i97 = zext i8 %310 to i16
  %315 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %hw.i, align 8
  %.60.i105 = select i1 %cmp5.i99, i32 1552, i32 912
  %add.ptr22.i106 = getelementptr i8, ptr %316, i32 %.60.i105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr22.i106, i16 0) #8, !srcloc !28
  %.sink59.i107 = select i1 %cmp5.i99, i32 1548, i32 908
  %317 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %hw.i, align 8
  %add.ptr35.i109 = getelementptr i8, ptr %318, i32 %.sink59.i107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  %319 = shl nuw i16 %phi.cast.i97, 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr35.i109, i16 %319) #8, !srcloc !28
  br label %pcm_fsm.exit

sw.bb391.i:                                       ; preds = %if.end294.i
  %320 = ptrtoint ptr %arrayidx297.i to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %arrayidx297.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %321)
  %tobool299.not.i = icmp eq i8 %321, 0
  br i1 %tobool299.not.i, label %lor.lhs.false300.i, label %sw.bb391.i.pc_rcode_actions.exit_crit_edge

sw.bb391.i.pc_rcode_actions.exit_crit_edge:       ; preds = %sw.bb391.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pc_rcode_actions.exit

lor.lhs.false300.i:                               ; preds = %sw.bb391.i
  %322 = ptrtoint ptr %arrayidx302.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %arrayidx302.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %323)
  %tobool304.not.i = icmp eq i8 %323, 0
  br i1 %tobool304.not.i, label %lor.lhs.false300.i.for.body403.preheader.i_crit_edge, label %lor.lhs.false300.i.pc_rcode_actions.exit_crit_edge

lor.lhs.false300.i.pc_rcode_actions.exit_crit_edge: ; preds = %lor.lhs.false300.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pc_rcode_actions.exit

lor.lhs.false300.i.for.body403.preheader.i_crit_edge: ; preds = %lor.lhs.false300.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body403.preheader.i

pc_rcode_actions.exit:                            ; preds = %lor.lhs.false300.i.pc_rcode_actions.exit_crit_edge, %sw.bb391.i.pc_rcode_actions.exit_crit_edge
  %324 = ptrtoint ptr %np1.i to i32
  call void @__asan_load1_noabort(i32 %324)
  %325 = load i8, ptr %np1.i, align 4
  %conv308.i = zext i8 %325 to i32
  %add.i83 = add nuw nsw i32 %conv308.i, 5
  tail call void @queue_event(ptr noundef %smc, i32 noundef %add.i83, i32 noundef 1) #8
  %326 = ptrtoint ptr %arrayidx297.i to i32
  call void @__asan_load1_noabort(i32 %326)
  %.pr = load i8, ptr %arrayidx297.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool393.not.i = icmp eq i8 %.pr, 0
  br i1 %tobool393.not.i, label %lor.lhs.false.i, label %pc_rcode_actions.exit.if.then397.i_crit_edge

pc_rcode_actions.exit.if.then397.i_crit_edge:     ; preds = %pc_rcode_actions.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then397.i

lor.lhs.false.i:                                  ; preds = %pc_rcode_actions.exit
  %327 = ptrtoint ptr %arrayidx302.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %.pr305 = load i8, ptr %arrayidx302.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr305)
  %tobool396.not.i = icmp eq i8 %.pr305, 0
  br i1 %tobool396.not.i, label %lor.lhs.false.i.for.body403.preheader.i_crit_edge, label %lor.lhs.false.i.if.then397.i_crit_edge

lor.lhs.false.i.if.then397.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then397.i

lor.lhs.false.i.for.body403.preheader.i_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body403.preheader.i

for.body403.preheader.i:                          ; preds = %lor.lhs.false.i.for.body403.preheader.i_crit_edge, %lor.lhs.false300.i.for.body403.preheader.i_crit_edge
  %328 = ptrtoint ptr %np1.i to i32
  call void @__asan_load1_noabort(i32 %328)
  %329 = load i8, ptr %np1.i, align 4
  %330 = ptrtoint ptr %arrayidx312.i to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 0, ptr %arrayidx312.i, align 4
  %conv.i78 = zext i8 %329 to i32
  %331 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %arrayidx, align 4
  %333 = ptrtoint ptr %cf_loop701.i to i32
  call void @__asan_store1_noabort(i32 %333)
  store i8 0, ptr %cf_loop701.i, align 2
  %fddiPORTPC_Withhold244.i = getelementptr inbounds %struct.fddi_mib_p, ptr %332, i32 0, i32 25
  %334 = ptrtoint ptr %fddiPORTPC_Withhold244.i to i32
  call void @__asan_load2_noabort(i32 %334)
  %335 = load i16, ptr %fddiPORTPC_Withhold244.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %335)
  %cmp246.not.i = icmp eq i16 %335, 0
  br i1 %cmp246.not.i, label %lor.lhs.false248.i, label %for.body403.preheader.i.if.then256.i_crit_edge

for.body403.preheader.i.if.then256.i_crit_edge:   ; preds = %for.body403.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then256.i

lor.lhs.false248.i:                               ; preds = %for.body403.preheader.i
  %336 = ptrtoint ptr %sas.i to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %sas.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %337)
  %cmp250.i = icmp eq i8 %337, 0
  br i1 %cmp250.i, label %land.lhs.true252.i, label %lor.lhs.false248.i.if.end258.i_crit_edge

lor.lhs.false248.i.if.end258.i_crit_edge:         ; preds = %lor.lhs.false248.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end258.i

land.lhs.true252.i:                               ; preds = %lor.lhs.false248.i
  %338 = ptrtoint ptr %wc_flag253.i to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %wc_flag253.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %339)
  %tobool255.not.i = icmp eq i8 %339, 0
  br i1 %tobool255.not.i, label %land.lhs.true252.i.if.end258.i_crit_edge, label %land.lhs.true252.i.if.then256.i_crit_edge

land.lhs.true252.i.if.then256.i_crit_edge:        ; preds = %land.lhs.true252.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then256.i

land.lhs.true252.i.if.end258.i_crit_edge:         ; preds = %land.lhs.true252.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end258.i

if.then256.i:                                     ; preds = %land.lhs.true252.i.if.then256.i_crit_edge, %for.body403.preheader.i.if.then256.i_crit_edge
  %add257.i = add nuw nsw i32 %conv.i78, 5
  tail call void @queue_event(ptr noundef %smc, i32 noundef %add257.i, i32 noundef 1) #8
  br label %pc_tcode_actions.exit

if.end258.i:                                      ; preds = %land.lhs.true252.i.if.end258.i_crit_edge, %lor.lhs.false248.i.if.end258.i_crit_edge
  %340 = ptrtoint ptr %arrayidx260.i to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 0, ptr %arrayidx260.i, align 1
  %341 = ptrtoint ptr %sas.i to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %sas.i, align 1
  %343 = zext i8 %342 to i64
  call void @__sanitizer_cov_trace_switch(i64 %343, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %342, label %if.end258.i.sw.epilog300.i_crit_edge [
    i8 0, label %sw.bb264.i
    i8 1, label %sw.bb293.i
  ]

if.end258.i.sw.epilog300.i_crit_edge:             ; preds = %if.end258.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog300.i

sw.bb264.i:                                       ; preds = %if.end258.i
  %344 = ptrtoint ptr %pc_mode.i80 to i32
  call void @__asan_load1_noabort(i32 %344)
  %345 = load i8, ptr %pc_mode.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %345)
  %cmp266.i = icmp eq i8 %345, 2
  br i1 %cmp266.i, label %if.then268.i, label %if.else285.i

if.then268.i:                                     ; preds = %sw.bb264.i
  %346 = zext i8 %329 to i64
  call void @__sanitizer_cov_trace_switch(i64 %346, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %329, label %if.then268.i.sw.epilog300.i_crit_edge [
    i8 1, label %if.then268.i.sw.epilog300.sink.split.i_crit_edge
    i8 0, label %land.lhs.true274.i
  ]

if.then268.i.sw.epilog300.sink.split.i_crit_edge: ; preds = %if.then268.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog300.sink.split.i

if.then268.i.sw.epilog300.i_crit_edge:            ; preds = %if.then268.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog300.i

land.lhs.true274.i:                               ; preds = %if.then268.i
  %347 = ptrtoint ptr %arrayidx275.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %arrayidx275.i, align 4
  %fddiPORTConnectState277.i = getelementptr inbounds %struct.fddi_mib_p, ptr %348, i32 0, i32 22
  %349 = ptrtoint ptr %fddiPORTConnectState277.i to i32
  call void @__asan_load2_noabort(i32 %349)
  %350 = load i16, ptr %fddiPORTConnectState277.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %350)
  %cmp279.not.i = icmp eq i16 %350, 3
  br i1 %cmp279.not.i, label %land.lhs.true274.i.sw.epilog300.i_crit_edge, label %land.lhs.true274.i.sw.epilog300.sink.split.i_crit_edge

land.lhs.true274.i.sw.epilog300.sink.split.i_crit_edge: ; preds = %land.lhs.true274.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog300.sink.split.i

land.lhs.true274.i.sw.epilog300.i_crit_edge:      ; preds = %land.lhs.true274.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog300.i

if.else285.i:                                     ; preds = %sw.bb264.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %329)
  %cmp286.i = icmp eq i8 %329, 1
  br i1 %cmp286.i, label %if.else285.i.sw.epilog300.sink.split.i_crit_edge, label %if.else285.i.sw.epilog300.i_crit_edge

if.else285.i.sw.epilog300.i_crit_edge:            ; preds = %if.else285.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog300.i

if.else285.i.sw.epilog300.sink.split.i_crit_edge: ; preds = %if.else285.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog300.sink.split.i

sw.bb293.i:                                       ; preds = %if.end258.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %329)
  %cmp294.i = icmp eq i8 %329, 0
  br i1 %cmp294.i, label %sw.bb293.i.sw.epilog300.sink.split.i_crit_edge, label %sw.bb293.i.sw.epilog300.i_crit_edge

sw.bb293.i.sw.epilog300.i_crit_edge:              ; preds = %sw.bb293.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog300.i

sw.bb293.i.sw.epilog300.sink.split.i_crit_edge:   ; preds = %sw.bb293.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog300.sink.split.i

sw.epilog300.sink.split.i:                        ; preds = %sw.bb293.i.sw.epilog300.sink.split.i_crit_edge, %if.else285.i.sw.epilog300.sink.split.i_crit_edge, %land.lhs.true274.i.sw.epilog300.sink.split.i_crit_edge, %if.then268.i.sw.epilog300.sink.split.i_crit_edge
  %351 = ptrtoint ptr %arrayidx260.i to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 1, ptr %arrayidx260.i, align 1
  br label %sw.epilog300.i

sw.epilog300.i:                                   ; preds = %sw.epilog300.sink.split.i, %sw.bb293.i.sw.epilog300.i_crit_edge, %if.else285.i.sw.epilog300.i_crit_edge, %land.lhs.true274.i.sw.epilog300.i_crit_edge, %if.then268.i.sw.epilog300.i_crit_edge, %if.end258.i.sw.epilog300.i_crit_edge
  %352 = ptrtoint ptr %arrayidx260.i to i32
  call void @__asan_load1_noabort(i32 %352)
  %353 = load i8, ptr %arrayidx260.i, align 1
  %fddiPORTMacIndicated.i = getelementptr inbounds %struct.fddi_mib_p, ptr %332, i32 0, i32 3
  %354 = ptrtoint ptr %fddiPORTMacIndicated.i to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 %353, ptr %fddiPORTMacIndicated.i, align 1
  br label %pc_tcode_actions.exit

pc_tcode_actions.exit:                            ; preds = %sw.epilog300.i, %if.then256.i
  %355 = ptrtoint ptr %plc2.i to i32
  call void @__asan_store2_noabort(i32 %355)
  store i16 6, ptr %plc2.i, align 4
  %356 = ptrtoint ptr %p_bits408.i to i32
  call void @__asan_store2_noabort(i32 %356)
  store i16 2, ptr %p_bits408.i, align 2
  %357 = ptrtoint ptr %p_start409.i to i32
  call void @__asan_store2_noabort(i32 %357)
  store i16 8, ptr %p_start409.i, align 4
  %358 = ptrtoint ptr %bitn410.i to i32
  call void @__asan_store1_noabort(i32 %358)
  store i8 8, ptr %bitn410.i, align 1
  %359 = ptrtoint ptr %np1.i to i32
  call void @__asan_load1_noabort(i32 %359)
  %360 = load i8, ptr %np1.i, align 4
  %361 = ptrtoint ptr %arrayidx260.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %arrayidx260.i, align 1
  %363 = ptrtoint ptr %arrayidx312.i to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %arrayidx312.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %360)
  %cmp5.i = icmp eq i8 %360, 0
  %365 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %hw.i, align 8
  %..i74 = select i1 %cmp5.i, i32 1604, i32 964
  %add.ptr9.i = getelementptr i8, ptr %366, i32 %..i74
  %367 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr9.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %368 = and i16 %367, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %368)
  %tobool.not.i75 = icmp eq i16 %368, 0
  br i1 %tobool.not.i75, label %if.end.i, label %pc_tcode_actions.exit.pcm_fsm.exit_crit_edge

pc_tcode_actions.exit.pcm_fsm.exit_crit_edge:     ; preds = %pc_tcode_actions.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcm_fsm.exit

if.end.i:                                         ; preds = %pc_tcode_actions.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i = zext i8 %362 to i16
  %shl.i.1 = shl nuw nsw i16 %conv4.i, 1
  %conv4.i.1 = zext i8 %364 to i16
  %or.i.1 = or i16 %shl.i.1, %conv4.i.1
  %369 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %hw.i, align 8
  %.60.i = select i1 %cmp5.i, i32 1552, i32 912
  %add.ptr22.i76 = getelementptr i8, ptr %370, i32 %.60.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr22.i76, i16 256) #8, !srcloc !28
  %.sink59.i = select i1 %cmp5.i, i32 1548, i32 908
  %371 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %hw.i, align 8
  %add.ptr35.i = getelementptr i8, ptr %372, i32 %.sink59.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  %373 = tail call i16 @llvm.bswap.i16(i16 %or.i.1) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr35.i, i16 %373) #8, !srcloc !28
  br label %pcm_fsm.exit

if.then397.i:                                     ; preds = %lor.lhs.false.i.if.then397.i_crit_edge, %pc_rcode_actions.exit.if.then397.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp.i63 = icmp eq i8 %8, 0
  %374 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %hw.i, align 8
  %..i65 = select i1 %cmp.i63, i32 1540, i32 900
  %add.ptr3.i66 = getelementptr i8, ptr %375, i32 %..i65
  %376 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i66) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %377 = and i16 %376, -1793
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i66, i16 %377) #8, !srcloc !28
  %378 = or i16 %377, 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i66, i16 %378) #8, !srcloc !28
  %379 = ptrtoint ptr %fddiPORTPCMState37.i to i32
  call void @__asan_store2_noabort(i32 %379)
  store i16 33, ptr %fddiPORTPCMState37.i, align 2
  br label %pcm_fsm.exit

sw.bb426.i:                                       ; preds = %sw.epilog.i
  %380 = ptrtoint ptr %sas.i to i32
  call void @__asan_load1_noabort(i32 %380)
  %381 = load i8, ptr %sas.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %381)
  %cmp429.i = icmp eq i8 %381, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp432.i = icmp eq i8 %8, 1
  %or.cond.i = select i1 %cmp429.i, i1 %cmp432.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true434.i, label %if.end506.i

land.lhs.true434.i:                               ; preds = %sw.bb426.i
  %382 = ptrtoint ptr %pc_mode436.i to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %pc_mode436.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %383)
  %cmp438.i = icmp eq i8 %383, 2
  br i1 %cmp438.i, label %land.lhs.true434.i.cond.end458.i_crit_edge, label %lor.lhs.false440.i

land.lhs.true434.i.cond.end458.i_crit_edge:       ; preds = %land.lhs.true434.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end458.i

lor.lhs.false440.i:                               ; preds = %land.lhs.true434.i
  %384 = ptrtoint ptr %pc_mode443.i to i32
  call void @__asan_load1_noabort(i32 %384)
  %385 = load i8, ptr %pc_mode443.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %385)
  %cmp445.i = icmp eq i8 %385, 2
  br i1 %cmp445.i, label %lor.lhs.false440.i.cond.end458.i_crit_edge, label %lor.lhs.false440.i.cond.false513.i_crit_edge

lor.lhs.false440.i.cond.false513.i_crit_edge:     ; preds = %lor.lhs.false440.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false513.i

lor.lhs.false440.i.cond.end458.i_crit_edge:       ; preds = %lor.lhs.false440.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end458.i

cond.end458.i:                                    ; preds = %lor.lhs.false440.i.cond.end458.i_crit_edge, %land.lhs.true434.i.cond.end458.i_crit_edge
  %386 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %hw.i, align 8
  %add.ptr457.i = getelementptr i8, ptr %387, i32 896
  %388 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr457.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %389 = or i16 %388, 1024
  %390 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %hw.i, align 8
  %add.ptr474.i = getelementptr i8, ptr %391, i32 896
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr474.i, i16 %389) #8, !srcloc !28
  %392 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %hw.i, align 8
  %add.ptr486.i = getelementptr i8, ptr %393, i32 900
  %394 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr486.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %395 = or i16 %394, 128
  %396 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %hw.i, align 8
  %add.ptr503.i = getelementptr i8, ptr %397, i32 900
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr503.i, i16 %395) #8, !srcloc !28
  br label %cond.false513.i

if.end506.i:                                      ; preds = %sw.bb426.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp507.i = icmp eq i8 %8, 0
  br i1 %cmp507.i, label %if.end506.i.cond.end517.i_crit_edge, label %if.end506.i.cond.false513.i_crit_edge

if.end506.i.cond.false513.i_crit_edge:            ; preds = %if.end506.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false513.i

if.end506.i.cond.end517.i_crit_edge:              ; preds = %if.end506.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end517.i

cond.false513.i:                                  ; preds = %if.end506.i.cond.false513.i_crit_edge, %cond.end458.i, %lor.lhs.false440.i.cond.false513.i_crit_edge
  br label %cond.end517.i

cond.end517.i:                                    ; preds = %cond.false513.i, %if.end506.i.cond.end517.i_crit_edge
  %.sink1098.i = phi i32 [ 900, %cond.false513.i ], [ 1540, %if.end506.i.cond.end517.i_crit_edge ]
  %cmp5071067.i = phi i1 [ false, %cond.false513.i ], [ true, %if.end506.i.cond.end517.i_crit_edge ]
  %398 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %hw.i, align 8
  %add.ptr516.i = getelementptr i8, ptr %399, i32 %.sink1098.i
  %400 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr516.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %401 = or i16 %400, 4096
  %402 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %hw.i, align 8
  br i1 %cmp5071067.i, label %cond.true526.i, label %cond.false530.i

cond.true526.i:                                   ; preds = %cond.end517.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr529.i = getelementptr i8, ptr %403, i32 1540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr529.i, i16 %401) #8, !srcloc !28
  br label %cond.end546.i

cond.false530.i:                                  ; preds = %cond.end517.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr533.i = getelementptr i8, ptr %403, i32 900
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr533.i, i16 %401) #8, !srcloc !28
  br label %cond.end546.i

cond.end546.i:                                    ; preds = %cond.false530.i, %cond.true526.i
  %.sink1100.i = phi i32 [ 900, %cond.false530.i ], [ 1540, %cond.true526.i ]
  %404 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %hw.i, align 8
  %add.ptr545.i = getelementptr i8, ptr %405, i32 %.sink1100.i
  %406 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr545.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %407 = or i16 %406, 4096
  %408 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %hw.i, align 8
  %add.ptr562.i = getelementptr i8, ptr %409, i32 %.sink1100.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr562.i, i16 %407) #8, !srcloc !28
  %410 = ptrtoint ptr %fddiPORTPCMState37.i to i32
  call void @__asan_load2_noabort(i32 %410)
  %411 = load i16, ptr %fddiPORTPCMState37.i, align 2
  %412 = and i16 %411, -33
  store i16 %412, ptr %fddiPORTPCMState37.i, align 2
  br label %sw.bb569.i

sw.bb569.i:                                       ; preds = %cond.end546.i, %sw.epilog.i.sw.bb569.i_crit_edge
  %cmd.addr.0.i = phi i32 [ %event.addr.0, %sw.epilog.i.sw.bb569.i_crit_edge ], [ 0, %cond.end546.i ]
  %413 = ptrtoint ptr %plc2.i to i32
  call void @__asan_load2_noabort(i32 %413)
  %414 = load i16, ptr %plc2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %414)
  %cond765.i = icmp eq i16 %414, 7
  br i1 %cond765.i, label %sw.bb572.i, label %sw.bb569.i.pcm_fsm.exit_crit_edge

sw.bb569.i.pcm_fsm.exit_crit_edge:                ; preds = %sw.bb569.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcm_fsm.exit

sw.bb572.i:                                       ; preds = %sw.bb569.i
  %415 = ptrtoint ptr %cf_join702.i to i32
  call void @__asan_load1_noabort(i32 %415)
  %416 = load i8, ptr %cf_join702.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %416)
  %tobool574.not.i = icmp eq i8 %416, 0
  br i1 %tobool574.not.i, label %if.then575.i, label %sw.bb572.i.if.end578.i_crit_edge

sw.bb572.i.if.end578.i_crit_edge:                 ; preds = %sw.bb572.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end578.i

if.then575.i:                                     ; preds = %sw.bb572.i
  call void @__sanitizer_cov_trace_pc() #10
  %417 = ptrtoint ptr %cf_join702.i to i32
  call void @__asan_store1_noabort(i32 %417)
  store i8 1, ptr %cf_join702.i, align 1
  %add577.i = add nuw nsw i32 %conv.i, 3
  tail call void @queue_event(ptr noundef %smc, i32 noundef 2, i32 noundef %add577.i) #8
  br label %if.end578.i

if.end578.i:                                      ; preds = %if.then575.i, %sw.bb572.i.if.end578.i_crit_edge
  %418 = zext i32 %cmd.addr.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %418, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %cmd.addr.0.i, label %if.end578.i.pcm_fsm.exit_crit_edge [
    i32 4, label %if.then581.i
    i32 8, label %if.then586.i
  ]

if.end578.i.pcm_fsm.exit_crit_edge:               ; preds = %if.end578.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcm_fsm.exit

if.then581.i:                                     ; preds = %if.end578.i
  call void @__sanitizer_cov_trace_pc() #10
  %419 = ptrtoint ptr %fddiPORTPCMState37.i to i32
  call void @__asan_store2_noabort(i32 %419)
  store i16 40, ptr %fddiPORTPCMState37.i, align 2
  br label %pcm_fsm.exit

if.then586.i:                                     ; preds = %if.end578.i
  call void @__sanitizer_cov_trace_pc() #10
  %420 = ptrtoint ptr %fddiPORTPCMState37.i to i32
  call void @__asan_store2_noabort(i32 %420)
  store i16 34, ptr %fddiPORTPCMState37.i, align 2
  br label %pcm_fsm.exit

sw.bb590.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @sm_ph_lem_start(ptr noundef %smc, i32 noundef %conv.i, i32 noundef 255) #8
  %421 = ptrtoint ptr %tr_flag.i to i32
  call void @__asan_store1_noabort(i32 %421)
  store i8 0, ptr %tr_flag.i, align 2
  %fddiPORTConnectState593.i = getelementptr inbounds %struct.fddi_mib_p, ptr %10, i32 0, i32 22
  %422 = ptrtoint ptr %fddiPORTConnectState593.i to i32
  call void @__asan_store2_noabort(i32 %422)
  store i16 3, ptr %fddiPORTConnectState593.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp594.i = icmp eq i8 %8, 0
  %423 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %hw.i, align 8
  %.1121.i = select i1 %cmp594.i, i32 1544, i32 904
  %add.ptr603.i = getelementptr i8, ptr %424, i32 %.1121.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr603.i, i16 31746) #8, !srcloc !28
  %425 = ptrtoint ptr %fddiPORTPCMState37.i to i32
  call void @__asan_load2_noabort(i32 %425)
  %426 = load i16, ptr %fddiPORTPCMState37.i, align 2
  %427 = and i16 %426, -33
  store i16 %427, ptr %fddiPORTPCMState37.i, align 2
  br label %pcm_fsm.exit

sw.bb610.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %event.addr.0)
  %cmp611.i = icmp eq i32 %event.addr.0, 8
  br i1 %cmp611.i, label %if.then613.i, label %sw.bb610.i.pcm_fsm.exit_crit_edge

sw.bb610.i.pcm_fsm.exit_crit_edge:                ; preds = %sw.bb610.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcm_fsm.exit

if.then613.i:                                     ; preds = %sw.bb610.i
  call void @__sanitizer_cov_trace_pc() #10
  %428 = ptrtoint ptr %fddiPORTPCMState37.i to i32
  call void @__asan_store2_noabort(i32 %428)
  store i16 34, ptr %fddiPORTPCMState37.i, align 2
  br label %pcm_fsm.exit

sw.bb616.i:                                       ; preds = %sw.epilog.i
  %429 = ptrtoint ptr %tm_active.i.i to i32
  call void @__asan_load2_noabort(i32 %429)
  %430 = load i16, ptr %tm_active.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %430)
  %tobool.not.i1062.i = icmp eq i16 %430, 0
  br i1 %tobool.not.i1062.i, label %sw.bb616.i.stop_pcm_timer0.exit1065.i_crit_edge, label %if.then.i1064.i

sw.bb616.i.stop_pcm_timer0.exit1065.i_crit_edge:  ; preds = %sw.bb616.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %stop_pcm_timer0.exit1065.i

if.then.i1064.i:                                  ; preds = %sw.bb616.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @smt_timer_stop(ptr noundef %smc, ptr noundef %pcm_timer0.i.i) #8
  br label %stop_pcm_timer0.exit1065.i

stop_pcm_timer0.exit1065.i:                       ; preds = %if.then.i1064.i, %sw.bb616.i.stop_pcm_timer0.exit1065.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp617.i = icmp eq i8 %8, 0
  %431 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %hw.i, align 8
  %.1122.i = select i1 %cmp617.i, i32 1540, i32 900
  %add.ptr626.i = getelementptr i8, ptr %432, i32 %.1122.i
  %433 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr626.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %434 = and i16 %433, -4097
  %435 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %hw.i, align 8
  br i1 %cmp617.i, label %cond.true635.i, label %cond.false639.i

cond.true635.i:                                   ; preds = %stop_pcm_timer0.exit1065.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr638.i = getelementptr i8, ptr %436, i32 1540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr638.i, i16 %434) #8, !srcloc !28
  br label %cond.end655.i

cond.false639.i:                                  ; preds = %stop_pcm_timer0.exit1065.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr642.i = getelementptr i8, ptr %436, i32 900
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr642.i, i16 %434) #8, !srcloc !28
  br label %cond.end655.i

cond.end655.i:                                    ; preds = %cond.false639.i, %cond.true635.i
  %.sink1106.i = phi i32 [ 900, %cond.false639.i ], [ 1540, %cond.true635.i ]
  %437 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %hw.i, align 8
  %add.ptr654.i = getelementptr i8, ptr %438, i32 %.sink1106.i
  %439 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr654.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %440 = and i16 %439, -2049
  %441 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %hw.i, align 8
  br i1 %cmp617.i, label %cond.true663.i, label %cond.false667.i

cond.true663.i:                                   ; preds = %cond.end655.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr666.i = getelementptr i8, ptr %442, i32 1540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr666.i, i16 %440) #8, !srcloc !28
  br label %cond.end683.i

cond.false667.i:                                  ; preds = %cond.end655.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr670.i = getelementptr i8, ptr %442, i32 900
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr670.i, i16 %440) #8, !srcloc !28
  br label %cond.end683.i

cond.end683.i:                                    ; preds = %cond.false667.i, %cond.true663.i
  %.sink1112.i = phi i32 [ 900, %cond.false667.i ], [ 1540, %cond.true663.i ]
  %.sink1108.i = phi i32 [ 904, %cond.false667.i ], [ 1544, %cond.true663.i ]
  %443 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %hw.i, align 8
  %add.ptr682.i = getelementptr i8, ptr %444, i32 %.sink1108.i
  %445 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr682.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %446 = and i16 %445, -33
  %447 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %hw.i, align 8
  %add.ptr698.i = getelementptr i8, ptr %448, i32 %.sink1108.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr698.i, i16 %446) #8, !srcloc !28
  %lem_on.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %conv.i, i32 31, i32 2
  %449 = ptrtoint ptr %lem_on.i to i32
  call void @__asan_store2_noabort(i32 %449)
  store i16 0, ptr %lem_on.i, align 4
  %450 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %hw.i, align 8
  %add.ptr4.i = getelementptr i8, ptr %451, i32 %.sink1108.i
  %452 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr4.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %453 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %hw.i, align 8
  %add.ptr15.i = getelementptr i8, ptr %454, i32 %.sink1108.i
  %455 = and i16 %452, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15.i, i16 %455) #8, !srcloc !28
  %456 = ptrtoint ptr %cf_loop701.i to i32
  call void @__asan_store1_noabort(i32 %456)
  store i8 0, ptr %cf_loop701.i, align 2
  %457 = ptrtoint ptr %cf_join702.i to i32
  call void @__asan_store1_noabort(i32 %457)
  store i8 0, ptr %cf_join702.i, align 1
  %add703.i = add nuw nsw i32 %conv.i, 3
  tail call void @queue_event(ptr noundef %smc, i32 noundef 2, i32 noundef %add703.i) #8
  %458 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %hw.i, align 8
  %add.ptr3.i59 = getelementptr i8, ptr %459, i32 %.1122.i
  %460 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i59) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %461 = and i16 %460, -1793
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i59, i16 %461) #8, !srcloc !28
  %462 = or i16 %461, 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i59, i16 %462) #8, !srcloc !28
  %fddiPORTConnectState704.i = getelementptr inbounds %struct.fddi_mib_p, ptr %10, i32 0, i32 22
  %463 = ptrtoint ptr %fddiPORTConnectState704.i to i32
  call void @__asan_store2_noabort(i32 %463)
  store i16 0, ptr %fddiPORTConnectState704.i, align 4
  %464 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %hw.i, align 8
  %add.ptr714.i = getelementptr i8, ptr %465, i32 %.sink1112.i
  %466 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr714.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %467 = or i16 %466, 1024
  %468 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %hw.i, align 8
  br i1 %cmp617.i, label %cond.true724.i, label %cond.false728.i

cond.true724.i:                                   ; preds = %cond.end683.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr727.i = getelementptr i8, ptr %469, i32 1540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr727.i, i16 %467) #8, !srcloc !28
  br label %cond.end746.i

cond.false728.i:                                  ; preds = %cond.end683.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr731.i = getelementptr i8, ptr %469, i32 900
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr731.i, i16 %467) #8, !srcloc !28
  br label %cond.end746.i

cond.end746.i:                                    ; preds = %cond.false728.i, %cond.true724.i
  %.sink1114.i = phi i32 [ 896, %cond.false728.i ], [ 1536, %cond.true724.i ]
  %fddiPORTMaint_LS.c.i = getelementptr inbounds %struct.fddi_mib_p, ptr %10, i32 0, i32 11
  %470 = ptrtoint ptr %fddiPORTMaint_LS.c.i to i32
  call void @__asan_load2_noabort(i32 %470)
  %471 = load i16, ptr %fddiPORTMaint_LS.c.i, align 2
  %472 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %hw.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %473, i32 %.1122.i
  %474 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %471)
  %475 = icmp ult i16 %471, 5
  br i1 %475, label %switch.lookup, label %cond.end746.i.sm_ph_linestate.exit_crit_edge

cond.end746.i.sm_ph_linestate.exit_crit_edge:     ; preds = %cond.end746.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sm_ph_linestate.exit

switch.lookup:                                    ; preds = %cond.end746.i
  call void @__sanitizer_cov_trace_pc() #10
  %476 = sext i16 %471 to i32
  %switch.gep = getelementptr inbounds [5 x i16], ptr @switch.table.pcm, i32 0, i32 %476
  %477 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %477)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %sm_ph_linestate.exit

sm_ph_linestate.exit:                             ; preds = %switch.lookup, %cond.end746.i.sm_ph_linestate.exit_crit_edge
  %.sink37.i = phi i16 [ %switch.load, %switch.lookup ], [ 263, %cond.end746.i.sm_ph_linestate.exit_crit_edge ]
  %478 = and i16 %474, -1800
  %479 = tail call i16 @llvm.bswap.i16(i16 %478) #8
  %or13.i = or i16 %.sink37.i, %479
  %480 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %hw.i, align 8
  %add.ptr24.i = getelementptr i8, ptr %481, i32 %.1122.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  %482 = tail call i16 @llvm.bswap.i16(i16 %or13.i) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr24.i, i16 %482) #8, !srcloc !28
  %483 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %hw.i, align 8
  %add.ptr745.i = getelementptr i8, ptr %484, i32 %.sink1114.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr745.i, i16 2048) #8, !srcloc !28
  %485 = ptrtoint ptr %fddiPORTPCMState37.i to i32
  call void @__asan_load2_noabort(i32 %485)
  %486 = load i16, ptr %fddiPORTPCMState37.i, align 2
  %487 = and i16 %486, -33
  store i16 %487, ptr %fddiPORTPCMState37.i, align 2
  br label %pcm_fsm.exit

sw.bb752.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %event.addr.0)
  %cmp753.i = icmp eq i32 %event.addr.0, 10
  br i1 %cmp753.i, label %if.then755.i, label %sw.bb752.i.pcm_fsm.exit_crit_edge

sw.bb752.i.pcm_fsm.exit_crit_edge:                ; preds = %sw.bb752.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pcm_fsm.exit

if.then755.i:                                     ; preds = %sw.bb752.i
  call void @__sanitizer_cov_trace_pc() #10
  %488 = ptrtoint ptr %fddiPORTPCMState37.i to i32
  call void @__asan_store2_noabort(i32 %488)
  store i16 32, ptr %fddiPORTPCMState37.i, align 2
  br label %pcm_fsm.exit

do.end.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %call759.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 118, ptr noundef nonnull @.str.5) #11
  br label %pcm_fsm.exit

pcm_fsm.exit:                                     ; preds = %do.end.i, %if.then755.i, %sw.bb752.i.pcm_fsm.exit_crit_edge, %sm_ph_linestate.exit, %if.then613.i, %sw.bb610.i.pcm_fsm.exit_crit_edge, %sw.bb590.i, %if.then586.i, %if.then581.i, %if.end578.i.pcm_fsm.exit_crit_edge, %sw.bb569.i.pcm_fsm.exit_crit_edge, %if.then397.i, %if.end.i, %pc_tcode_actions.exit.pcm_fsm.exit_crit_edge, %if.end.i110, %sw.bb382.i.pcm_fsm.exit_crit_edge, %if.end.i139, %pc_tcode_actions.exit150.pcm_fsm.exit_crit_edge, %if.end.i177, %pc_rcode_actions.exit184.pcm_fsm.exit_crit_edge, %pc_rcode_actions.exit187, %pc_rcode_actions.exit189, %if.end294.i.pcm_fsm.exit_crit_edge, %sw.bb287.i.pcm_fsm.exit_crit_edge, %sw.bb276.i, %if.end274.i, %if.then234.i.pcm_fsm.exit_crit_edge, %if.then115.i, %sw.bb112.i.pcm_fsm.exit_crit_edge, %cond.end90.i, %sw.epilog.i.pcm_fsm.exit_crit_edge, %sw.epilog.i.pcm_fsm.exit_crit_edge307, %sw.epilog.i.pcm_fsm.exit_crit_edge308, %sw.epilog.i.pcm_fsm.exit_crit_edge309, %sw.epilog.i.pcm_fsm.exit_crit_edge310, %stop_pcm_timer0.exit.i, %sw.bb15.i, %if.then12.i, %sw.bb7.i.pcm_fsm.exit_crit_edge, %if.then.i, %sw.bb.i.pcm_fsm.exit_crit_edge
  %489 = ptrtoint ptr %fddiPORTPCMState to i32
  call void @__asan_load2_noabort(i32 %489)
  %490 = load i16, ptr %fddiPORTPCMState, align 2
  %cmp9.not = icmp eq i16 %6, %490
  br i1 %cmp9.not, label %do.end, label %pcm_fsm.exit.do.body_crit_edge

pcm_fsm.exit.do.body_crit_edge:                   ; preds = %pcm_fsm.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %pcm_fsm.exit
  %conv6.le = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %6)
  %cmp11 = icmp eq i16 %6, 5
  %spec.select = select i1 %cmp11, i16 3, i16 %6
  %491 = getelementptr inbounds %struct.fddi_mib_p, ptr %3, i32 0, i32 24
  %492 = ptrtoint ptr %491 to i32
  call void @__asan_store2_noabort(i32 %492)
  store i16 %spec.select, ptr %491, align 4
  %493 = ptrtoint ptr %fddiPORTPCMState to i32
  call void @__asan_load2_noabort(i32 %493)
  %494 = load i16, ptr %fddiPORTPCMState, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %494, i16 %5)
  %cmp19.not = icmp eq i16 %494, %5
  br i1 %cmp19.not, label %do.end.if.end31_crit_edge, label %land.lhs.true21

do.end.if.end31_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.lhs.true21:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %5)
  %cmp22 = icmp eq i16 %5, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %494)
  %cmp26 = icmp eq i16 %494, 8
  %or.cond = select i1 %cmp22, i1 true, i1 %cmp26
  br i1 %or.cond, label %if.then28, label %land.lhs.true21.if.end31_crit_edge

land.lhs.true21.if.end31_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then28:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  %495 = ptrtoint ptr %np1.i to i32
  call void @__asan_load1_noabort(i32 %495)
  %496 = load i8, ptr %np1.i, align 4
  %conv30 = zext i8 %496 to i32
  %add = add nuw nsw i32 %conv30, 1
  tail call void @smt_srf_event(ptr noundef %smc, i32 noundef 3, i32 noundef %add, i32 noundef 0) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %land.lhs.true21.if.end31_crit_edge, %do.end.if.end31_crit_edge
  tail call void @pcm_state_change(ptr noundef %smc, i32 noundef %np, i32 noundef %conv6.le) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_srf_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcm_state_change(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sm_lem_evaluate(ptr noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hw.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %lem_evaluate.exit.for.body_crit_edge, %entry
  %cmp = phi i1 [ true, %entry ], [ false, %lem_evaluate.exit.for.body_crit_edge ]
  %np.04 = phi i32 [ 0, %entry ], [ 1, %lem_evaluate.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np.04
  %lem1.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np.04, i32 31
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %lem_on.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np.04, i32 31, i32 2
  %2 = ptrtoint ptr %lem_on.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %lem_on.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not.i = icmp eq i16 %3, 0
  br i1 %tobool.not.i, label %for.body.lem_evaluate.exit_crit_edge, label %if.end.i

for.body.lem_evaluate.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %lem_evaluate.exit

if.end.i:                                         ; preds = %for.body
  %np.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np.04, i32 1
  %4 = ptrtoint ptr %np.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %np.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i = icmp eq i8 %5, 0
  %6 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw.i, align 8
  %.160.i = select i1 %cmp.i, i32 1640, i32 1000
  %add.ptr6.i = getelementptr i8, ptr %7, i32 %.160.i
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr6.i) #8, !srcloc !29
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv8.i = zext i16 %9 to i32
  %lem_errors.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np.04, i32 31, i32 1
  %10 = ptrtoint ptr %lem_errors.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lem_errors.i, align 4
  %add.i = add i32 %11, %conv8.i
  store i32 %add.i, ptr %lem_errors.i, align 4
  %fddiPORTLem_Ct.i = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 18
  %12 = ptrtoint ptr %fddiPORTLem_Ct.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fddiPORTLem_Ct.i, align 4
  %add9.i = add i32 %13, %conv8.i
  store i32 %add9.i, ptr %fddiPORTLem_Ct.i, align 4
  %14 = load i32, ptr %lem_errors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool11.not.i = icmp eq i32 %14, 0
  br i1 %tobool11.not.i, label %if.end.i.if.end58.i_crit_edge, label %if.else.i

if.end.i.if.end58.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %14)
  %cmp13.i = icmp ult i32 %14, 10
  br i1 %cmp13.i, label %if.else.i.if.end58.i_crit_edge, label %if.else16.i

if.else.i.if.end58.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.else16.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %14)
  %cmp17.i = icmp ult i32 %14, 100
  br i1 %cmp17.i, label %if.else16.i.if.end58.i_crit_edge, label %if.else20.i

if.else16.i.if.end58.i_crit_edge:                 ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.else20.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %14)
  %cmp21.i = icmp ult i32 %14, 1000
  br i1 %cmp21.i, label %if.else20.i.if.end58.i_crit_edge, label %if.else24.i

if.else20.i.if.end58.i_crit_edge:                 ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.else24.i:                                      ; preds = %if.else20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %14)
  %cmp25.i = icmp ult i32 %14, 10000
  br i1 %cmp25.i, label %if.else24.i.if.end58.i_crit_edge, label %if.else28.i

if.else24.i.if.end58.i_crit_edge:                 ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.else28.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %14)
  %cmp29.i = icmp ult i32 %14, 100000
  br i1 %cmp29.i, label %if.else28.i.if.end58.i_crit_edge, label %if.else32.i

if.else28.i.if.end58.i_crit_edge:                 ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.else32.i:                                      ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %14)
  %cmp33.i = icmp ult i32 %14, 1000000
  br i1 %cmp33.i, label %if.else32.i.if.end58.i_crit_edge, label %if.else36.i

if.else32.i.if.end58.i_crit_edge:                 ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.else36.i:                                      ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %14)
  %cmp37.i = icmp ult i32 %14, 10000000
  br i1 %cmp37.i, label %if.else36.i.if.end58.i_crit_edge, label %if.else40.i

if.else36.i.if.end58.i_crit_edge:                 ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.else40.i:                                      ; preds = %if.else36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %14)
  %cmp41.i = icmp ult i32 %14, 100000000
  br i1 %cmp41.i, label %if.else40.i.if.end58.i_crit_edge, label %if.else44.i

if.else40.i.if.end58.i_crit_edge:                 ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.else44.i:                                      ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %14)
  %cmp45.i = icmp ult i32 %14, 1000000000
  %..i = select i1 %cmp45.i, i16 300, i16 0
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.else44.i, %if.else40.i.if.end58.i_crit_edge, %if.else36.i.if.end58.i_crit_edge, %if.else32.i.if.end58.i_crit_edge, %if.else28.i.if.end58.i_crit_edge, %if.else24.i.if.end58.i_crit_edge, %if.else20.i.if.end58.i_crit_edge, %if.else16.i.if.end58.i_crit_edge, %if.else.i.if.end58.i_crit_edge, %if.end.i.if.end58.i_crit_edge
  %ber.0.i = phi i16 [ 4500, %if.end.i.if.end58.i_crit_edge ], [ 2700, %if.else.i.if.end58.i_crit_edge ], [ 2400, %if.else16.i.if.end58.i_crit_edge ], [ 2100, %if.else20.i.if.end58.i_crit_edge ], [ 1800, %if.else24.i.if.end58.i_crit_edge ], [ 1500, %if.else28.i.if.end58.i_crit_edge ], [ 1200, %if.else32.i.if.end58.i_crit_edge ], [ 900, %if.else36.i.if.end58.i_crit_edge ], [ 600, %if.else40.i.if.end58.i_crit_edge ], [ %..i, %if.else44.i ]
  %15 = ptrtoint ptr %lem1.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %lem1.i, align 4
  %mul60.i = mul i16 %16, 7
  %add62.i = add i16 %mul60.i, %ber.0.i
  %17 = udiv i16 %add62.i, 10
  store i16 %17, ptr %lem1.i, align 4
  %18 = udiv i16 %add62.i, 1000
  %conv71.i = trunc i16 %18 to i8
  %fddiPORTLer_Estimate.i = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 19
  call void @__sanitizer_cov_trace_const_cmp2(i16 4000, i16 %add62.i)
  %cmp74.i = icmp ult i16 %add62.i, 4000
  %spec.select.i = select i1 %cmp74.i, i8 4, i8 %conv71.i
  %19 = ptrtoint ptr %fddiPORTLer_Estimate.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %spec.select.i, ptr %fddiPORTLer_Estimate.i, align 4
  %20 = ptrtoint ptr %lem_errors.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %lem_errors.i, align 4
  %21 = load i8, ptr %fddiPORTLer_Estimate.i, align 4
  %fddiPORTLer_Alarm.i = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 21
  %22 = ptrtoint ptr %fddiPORTLer_Alarm.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %fddiPORTLer_Alarm.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %23)
  %cmp92.not.i = icmp ule i8 %21, %23
  %fddiPORTLerFlag.i = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 27
  %24 = ptrtoint ptr %fddiPORTLerFlag.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %fddiPORTLerFlag.i, align 1
  %26 = zext i1 %cmp92.not.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %26)
  %cmp96.not.i = icmp eq i8 %25, %26
  br i1 %cmp96.not.i, label %if.end58.i.if.end102.i_crit_edge, label %if.then98.i

if.end58.i.if.end102.i_crit_edge:                 ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102.i

if.then98.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  %cond94.i = zext i1 %cmp92.not.i to i32
  %27 = ptrtoint ptr %np.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %np.i, align 4
  %conv100.i = zext i8 %28 to i32
  %add101.i = add nuw nsw i32 %conv100.i, 1
  tail call void @smt_srf_event(ptr noundef %smc, i32 noundef 11, i32 noundef %add101.i, i32 noundef %cond94.i) #8
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.then98.i, %if.end58.i.if.end102.i_crit_edge
  %29 = ptrtoint ptr %fddiPORTLer_Estimate.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %fddiPORTLer_Estimate.i, align 4
  %fddiPORTLer_Cutoff.i = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 20
  %31 = ptrtoint ptr %fddiPORTLer_Cutoff.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %fddiPORTLer_Cutoff.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %32)
  %cmp106.not.i = icmp ugt i8 %30, %32
  br i1 %cmp106.not.i, label %if.end102.i.lem_evaluate.exit_crit_edge, label %if.then108.i

if.end102.i.lem_evaluate.exit_crit_edge:          ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lem_evaluate.exit

if.then108.i:                                     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #10
  %pc_lem_fail.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np.04, i32 6
  %33 = ptrtoint ptr %pc_lem_fail.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %pc_lem_fail.i, align 1
  %fddiPORTLem_Reject_Ct.i = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 17
  %34 = ptrtoint ptr %fddiPORTLem_Reject_Ct.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fddiPORTLem_Reject_Ct.i, align 4
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr %fddiPORTLem_Reject_Ct.i, align 4
  %36 = ptrtoint ptr %lem1.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %lem1.i, align 4
  %add111.i = add i16 %37, 200
  store i16 %add111.i, ptr %lem1.i, align 4
  %38 = ptrtoint ptr %np.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %np.i, align 4
  %conv114.i = zext i8 %39 to i32
  %add115.i = add nuw nsw i32 %conv114.i, 5
  tail call void @queue_event(ptr noundef %smc, i32 noundef %add115.i, i32 noundef 1) #8
  br label %lem_evaluate.exit

lem_evaluate.exit:                                ; preds = %if.then108.i, %if.end102.i.lem_evaluate.exit_crit_edge, %for.body.lem_evaluate.exit_crit_edge
  br i1 %cmp, label %lem_evaluate.exit.for.body_crit_edge, label %for.end

lem_evaluate.exit.for.body_crit_edge:             ; preds = %lem_evaluate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %lem_evaluate.exit
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pcm_status_twisted(ptr nocapture noundef readonly %smc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sas = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %sas to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sas, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %twisted = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0, i32 19
  %2 = ptrtoint ptr %twisted to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %twisted, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %y = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 8
  %4 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %y, align 4
  %fddiPORTPCMState = getelementptr inbounds %struct.fddi_mib_p, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %fddiPORTPCMState to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %fddiPORTPCMState, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %7)
  %cmp6 = icmp eq i16 %7, 8
  %spec.select = zext i1 %cmp6 to i32
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true, %if.end.if.end9_crit_edge
  %twist.0 = phi i32 [ 0, %if.end.if.end9_crit_edge ], [ %spec.select, %land.lhs.true ]
  %twisted12 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 19
  %8 = ptrtoint ptr %twisted12 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %twisted12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool14.not = icmp eq i8 %9, 0
  br i1 %tobool14.not, label %if.end9.cleanup_crit_edge, label %land.lhs.true15

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true15:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx11 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx11, align 4
  %fddiPORTPCMState19 = getelementptr inbounds %struct.fddi_mib_p, ptr %11, i32 0, i32 23
  %12 = ptrtoint ptr %fddiPORTPCMState19 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %fddiPORTPCMState19, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %13)
  %cmp21 = icmp eq i16 %13, 8
  %or24 = or i32 %twist.0, 2
  %spec.select32 = select i1 %cmp21, i32 %or24, i32 %twist.0
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true15, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %twist.0, %if.end9.cleanup_crit_edge ], [ %spec.select32, %land.lhs.true15 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @pcm_status_state(ptr nocapture noundef readonly %smc, i32 noundef %np, ptr nocapture noundef writeonly %type, ptr nocapture noundef writeonly %state, ptr nocapture noundef writeonly %remote, ptr nocapture noundef writeonly %mac) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mac, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %1, align 4
  %conv = zext i16 %4 to i32
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %type, align 4
  %fddiPORTConnectState = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 22
  %6 = ptrtoint ptr %fddiPORTConnectState to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %fddiPORTConnectState, align 4
  %conv2 = zext i16 %7 to i32
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv2, ptr %state, align 4
  %fddiPORTNeighborType = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %fddiPORTNeighborType to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %fddiPORTNeighborType, align 2
  %conv3 = zext i16 %10 to i32
  %11 = ptrtoint ptr %remote to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv3, ptr %remote, align 4
  %fddiPORTPCMState = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 23
  %12 = ptrtoint ptr %fddiPORTPCMState to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %fddiPORTPCMState, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %13)
  %cond = icmp eq i16 %13, 8
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %R_val = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %R_val to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %R_val, align 1
  %conv5 = zext i8 %15 to i32
  %16 = ptrtoint ptr %mac to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv5, ptr %mac, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcm_rooted_station(ptr nocapture noundef readonly %smc) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %fddiPORTPCMState = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %fddiPORTPCMState to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fddiPORTPCMState, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %3)
  %cmp1 = icmp eq i16 %3, 8
  br i1 %cmp1, label %land.lhs.true, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %entry
  %fddiPORTNeighborType = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %fddiPORTNeighborType to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fddiPORTNeighborType, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %5)
  %cmp7 = icmp eq i16 %5, 3
  br i1 %cmp7, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  %fddiPORTPCMState.1 = getelementptr inbounds %struct.fddi_mib_p, ptr %7, i32 0, i32 23
  %8 = ptrtoint ptr %fddiPORTPCMState.1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %fddiPORTPCMState.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %9)
  %cmp1.1 = icmp eq i16 %9, 8
  br i1 %cmp1.1, label %land.lhs.true.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %fddiPORTNeighborType.1 = getelementptr inbounds %struct.fddi_mib_p, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %fddiPORTNeighborType.1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %fddiPORTNeighborType.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %11)
  %cmp7.1 = icmp eq i16 %11, 3
  br i1 %cmp7.1, label %land.lhs.true.1.cleanup_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.1, %land.lhs.true.1.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true.1.cleanup_crit_edge ], [ 1, %for.inc.1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @plc_irq(ptr noundef %smc, i32 noundef %np, i32 noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np
  %numphys = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %numphys to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %numphys, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %np)
  %cmp.not = icmp sgt i32 %conv, %np
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %soft_err = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 32, i32 4
  %2 = ptrtoint ptr %soft_err to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %soft_err, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %soft_err, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %cmd, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %ebuf_cont49 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 32, i32 7
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %4 = ptrtoint ptr %ebuf_cont49 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ebuf_cont49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %land.lhs.true, label %if.then3.if.end11_crit_edge

if.then3.if.end11_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true:                                    ; preds = %if.then3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %fddiPORTPCMState = getelementptr inbounds %struct.fddi_mib_p, ptr %7, i32 0, i32 23
  %8 = ptrtoint ptr %fddiPORTPCMState to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %fddiPORTPCMState, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %9)
  %cmp6 = icmp eq i16 %9, 8
  br i1 %cmp6, label %if.then8, label %land.lhs.true.if.end11thread-pre-split_crit_edge

land.lhs.true.if.end11thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11thread-pre-split

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTEBError_Ct = getelementptr inbounds %struct.fddi_mib_p, ptr %7, i32 0, i32 15
  %10 = ptrtoint ptr %fddiPORTEBError_Ct to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fddiPORTEBError_Ct, align 4
  %inc10 = add i32 %11, 1
  store i32 %inc10, ptr %fddiPORTEBError_Ct, align 4
  br label %if.end11thread-pre-split

if.end11thread-pre-split:                         ; preds = %if.then8, %land.lhs.true.if.end11thread-pre-split_crit_edge
  %12 = ptrtoint ptr %ebuf_cont49 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %ebuf_cont49, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end11thread-pre-split, %if.then3.if.end11_crit_edge
  %13 = phi i32 [ %.pr, %if.end11thread-pre-split ], [ %5, %if.then3.if.end11_crit_edge ]
  %ebuf_err = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 32, i32 6
  %14 = ptrtoint ptr %ebuf_err to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ebuf_err, align 4
  %inc12 = add i32 %15, 1
  store i32 %inc12, ptr %ebuf_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1001, i32 %13)
  %cmp14 = icmp ult i32 %13, 1001
  br i1 %cmp14, label %if.then16, label %if.end19thread-pre-split

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %inc18 = add nuw nsw i32 %13, 1
  %16 = ptrtoint ptr %ebuf_cont49 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %inc18, ptr %ebuf_cont49, align 4
  br label %if.end19

if.end19thread-pre-split:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %ebuf_cont49 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr363 = load i32, ptr %ebuf_cont49, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end19thread-pre-split, %if.then16
  %18 = phi i32 [ %.pr363, %if.end19thread-pre-split ], [ %inc18, %if.then16 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %18)
  %cmp21 = icmp eq i32 %18, 1000
  br i1 %cmp21, label %land.lhs.true23, label %if.end19.if.end50_crit_edge

if.end19.if.end50_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

land.lhs.true23:                                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %np)
  %cmp24 = icmp eq i32 %np, 0
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %19 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hw, align 8
  %. = select i1 %cmp24, i32 1600, i32 960
  %add.ptr28 = getelementptr i8, ptr %20, i32 %.
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr28) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %22 = and i16 %21, 248
  call void @__sanitizer_cov_trace_const_cmp2(i16 120, i16 %22)
  %cmp31 = icmp eq i16 %22, 120
  br i1 %cmp31, label %if.then33, label %land.lhs.true23.if.end50_crit_edge

land.lhs.true23.if.end50_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then33:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  %hw38 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %23 = ptrtoint ptr %hw38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw38, align 8
  %.378 = select i1 %cmp24, i32 1544, i32 904
  %add.ptr44 = getelementptr i8, ptr %24, i32 %.378
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr44, i16 31744) #8, !srcloc !28
  tail call void @queue_event(ptr noundef %smc, i32 noundef 1, i32 noundef 2) #8
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 136, ptr noundef nonnull @.str.3) #11
  tail call void @drv_reset_indication(ptr noundef %smc) #8
  br label %if.end50

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %ebuf_cont49 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %ebuf_cont49, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then33, %land.lhs.true23.if.end50_crit_edge, %if.end19.if.end50_crit_edge
  %and51 = and i32 %cmd, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end50.if.end55_crit_edge, label %if.then53

if.end50.if.end55_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %phyinv = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 32, i32 8
  %26 = ptrtoint ptr %phyinv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %phyinv, align 4
  %inc54 = add i32 %27, 1
  store i32 %inc54, ptr %phyinv, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end50.if.end55_crit_edge
  %and56 = and i32 %cmd, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end55.if.end60_crit_edge, label %if.then58

if.end55.if.end60_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then58:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %vsym_ctr = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 32, i32 9
  %28 = ptrtoint ptr %vsym_ctr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vsym_ctr, align 4
  %inc59 = add i32 %29, 1
  store i32 %inc59, ptr %vsym_ctr, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end55.if.end60_crit_edge
  %and61 = and i32 %cmd, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end60.if.end65_crit_edge, label %if.then63

if.end60.if.end65_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %mini_ctr = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 32, i32 10
  %30 = ptrtoint ptr %mini_ctr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mini_ctr, align 4
  %inc64 = add i32 %31, 1
  store i32 %inc64, ptr %mini_ctr, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end60.if.end65_crit_edge
  %and66 = and i32 %cmd, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end65.if.end108_crit_edge, label %if.then68

if.end65.if.end108_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %np)
  %cmp69 = icmp eq i32 %np, 0
  %hw72 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %32 = ptrtoint ptr %hw72 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw72, align 8
  %.379 = select i1 %cmp69, i32 1556, i32 916
  %add.ptr78 = getelementptr i8, ptr %33, i32 %.379
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr78) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %.sink371 = select i1 %cmp69, i32 1640, i32 1000
  %hw90 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %35 = ptrtoint ptr %hw90 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw90, align 8
  %add.ptr92 = getelementptr i8, ptr %36, i32 %.sink371
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr92) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %lem_on = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 31, i32 2
  %38 = ptrtoint ptr %lem_on to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %lem_on, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool101.not = icmp eq i16 %39, 0
  br i1 %tobool101.not, label %if.then68.if.end108_crit_edge, label %if.then102

if.then68.if.end108_crit_edge:                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

if.then102:                                       ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  %40 = tail call i16 @llvm.bswap.i16(i16 %34) #8
  %41 = tail call i16 @llvm.bswap.i16(i16 %37) #8
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %40)
  %cmp97 = icmp ult i16 %41, %40
  %conv96 = zext i16 %41 to i32
  %add = add nuw nsw i32 %conv96, 256
  %spec.select = select i1 %cmp97, i32 %add, i32 %conv96
  %lem_errors = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 31, i32 1
  %42 = ptrtoint ptr %lem_errors to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lem_errors, align 4
  %add104 = add i32 %43, %spec.select
  store i32 %add104, ptr %lem_errors, align 4
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx, align 4
  %fddiPORTLem_Ct = getelementptr inbounds %struct.fddi_mib_p, ptr %45, i32 0, i32 18
  %46 = ptrtoint ptr %fddiPORTLem_Ct to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fddiPORTLem_Ct, align 4
  %add106 = add i32 %47, %spec.select
  store i32 %add106, ptr %fddiPORTLem_Ct, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.then102, %if.then68.if.end108_crit_edge, %if.end65.if.end108_crit_edge
  %and109 = and i32 %cmd, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.end108.if.end118_crit_edge, label %if.then111

if.end108.if.end118_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end118

if.then111:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #10
  %tpc_exp = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 32, i32 11
  %48 = ptrtoint ptr %tpc_exp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tpc_exp, align 4
  %inc117 = add i32 %49, 1
  store i32 %inc117, ptr %tpc_exp, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then111, %if.end108.if.end118_crit_edge
  %and119 = and i32 %cmd, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.end118.if.end143_crit_edge, label %if.then121

if.end118.if.end143_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

if.then121:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %np)
  %cmp122 = icmp eq i32 %np, 0
  %hw125 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %50 = ptrtoint ptr %hw125 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw125, align 8
  %.380 = select i1 %cmp122, i32 1540, i32 900
  %add.ptr131 = getelementptr i8, ptr %51, i32 %.380
  %52 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr131) #8, !srcloc !29
  %53 = shl i16 %52, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %54 = and i16 %53, 30720
  %and136 = zext i16 %54 to i32
  %55 = add nsw i32 %and136, -2048
  %56 = lshr exact i32 %55, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %55)
  %57 = icmp ult i32 %55, 16384
  br i1 %57, label %switch.hole_check, label %if.then121.if.end143_crit_edge

if.then121.if.end143_crit_edge:                   ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

switch.hole_check:                                ; preds = %if.then121
  %switch.maskindex = trunc i32 %56 to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %58 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %switch.lobit.not = icmp eq i8 %58, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end143_crit_edge, label %switch.lookup

switch.hole_check.if.end143_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end143

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.plc_irq, i32 0, i32 %56
  %59 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %59)
  %switch.load = load i8, ptr %switch.gep, align 1
  %curr_ls = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 12
  %60 = ptrtoint ptr %curr_ls to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %switch.load, ptr %curr_ls, align 4
  br label %if.end143

if.end143:                                        ; preds = %switch.lookup, %switch.hole_check.if.end143_crit_edge, %if.then121.if.end143_crit_edge, %if.end118.if.end143_crit_edge
  %and144 = and i32 %cmd, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %if.end185, label %if.then146

if.then146:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %np)
  %cmp147 = icmp eq i32 %np, 0
  %hw150 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %61 = ptrtoint ptr %hw150 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hw150, align 8
  %.381 = select i1 %cmp147, i32 1604, i32 964
  %add.ptr156 = getelementptr i8, ptr %62, i32 %.381
  %63 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr156) #8, !srcloc !29
  %64 = lshr i16 %63, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %65 = and i16 %64, 7
  %and161 = zext i16 %65 to i32
  %66 = zext i32 %and161 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %and161, label %if.then146.sw.epilog174_crit_edge [
    i32 1, label %sw.bb162
    i32 2, label %sw.bb164
    i32 3, label %sw.bb166
    i32 4, label %sw.bb168
    i32 5, label %sw.bb170
    i32 6, label %sw.bb172
  ]

if.then146.sw.epilog174_crit_edge:                ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog174

sw.bb162:                                         ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #10
  %b_pcs = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 32, i32 13
  br label %sw.epilog174.sink.split

sw.bb164:                                         ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #10
  %b_tpc = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 32, i32 14
  br label %sw.epilog174.sink.split

sw.bb166:                                         ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #10
  %b_tne = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 32, i32 15
  br label %sw.epilog174.sink.split

sw.bb168:                                         ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #10
  %b_qls = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 32, i32 16
  br label %sw.epilog174.sink.split

sw.bb170:                                         ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #10
  %b_ils = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 32, i32 17
  br label %sw.epilog174.sink.split

sw.bb172:                                         ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #10
  %b_hls = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 32, i32 18
  br label %sw.epilog174.sink.split

sw.epilog174.sink.split:                          ; preds = %sw.bb172, %sw.bb170, %sw.bb168, %sw.bb166, %sw.bb164, %sw.bb162
  %b_hls.sink376 = phi ptr [ %b_hls, %sw.bb172 ], [ %b_ils, %sw.bb170 ], [ %b_qls, %sw.bb168 ], [ %b_tne, %sw.bb166 ], [ %b_tpc, %sw.bb164 ], [ %b_pcs, %sw.bb162 ]
  %67 = ptrtoint ptr %b_hls.sink376 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %b_hls.sink376, align 4
  %inc173 = add i32 %68, 1
  store i32 %inc173, ptr %b_hls.sink376, align 4
  br label %sw.epilog174

sw.epilog174:                                     ; preds = %sw.epilog174.sink.split, %if.then146.sw.epilog174_crit_edge
  %DisconnectFlag = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 4, i32 2
  %69 = ptrtoint ptr %DisconnectFlag to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %DisconnectFlag, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp177 = icmp eq i8 %70, 0
  br i1 %cmp177, label %if.then179, label %sw.epilog174.cleanup_crit_edge

sw.epilog174.cleanup_crit_edge:                   ; preds = %sw.epilog174
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then179:                                       ; preds = %sw.epilog174
  call void @__sanitizer_cov_trace_pc() #10
  %add181 = add i32 %np, 5
  tail call void @queue_event(ptr noundef %smc, i32 noundef %add181, i32 noundef 1) #8
  br label %cleanup

if.end185:                                        ; preds = %if.end143
  %and186 = and i32 %cmd, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %tobool187.not = icmp eq i32 %and186, 0
  br i1 %tobool187.not, label %if.else213, label %if.then188

if.then188:                                       ; preds = %if.end185
  %add189 = add i32 %np, 5
  tail call void @queue_event(ptr noundef %smc, i32 noundef %add189, i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %np)
  %cmp190 = icmp eq i32 %np, 0
  %hw193 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %71 = ptrtoint ptr %hw193 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hw193, align 8
  %.382 = select i1 %cmp190, i32 1624, i32 984
  %add.ptr199 = getelementptr i8, ptr %72, i32 %.382
  %73 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr199) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %p_bits = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 32, i32 1
  %74 = ptrtoint ptr %p_bits to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %p_bits, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %cmp205365.not = icmp eq i16 %75, 0
  br i1 %cmp205365.not, label %if.then188.if.end219_crit_edge, label %for.body.lr.ph

if.then188.if.end219_crit_edge:                   ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end219

for.body.lr.ph:                                   ; preds = %if.then188
  %76 = tail call i16 @llvm.bswap.i16(i16 %73) #8
  %conv203 = zext i16 %76 to i32
  %p_start = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 32, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %n.0367 = phi i32 [ %conv203, %for.body.lr.ph ], [ %81, %for.body.for.body_crit_edge ]
  %i.1366 = phi i32 [ 0, %for.body.lr.ph ], [ %inc212, %for.body.for.body_crit_edge ]
  %77 = trunc i32 %n.0367 to i8
  %conv208 = and i8 %77, 1
  %78 = ptrtoint ptr %p_start to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %p_start, align 4
  %conv209 = zext i16 %79 to i32
  %add210 = add nuw nsw i32 %i.1366, %conv209
  %arrayidx211 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 21, i32 %add210
  %80 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv208, ptr %arrayidx211, align 1
  %81 = lshr i32 %n.0367, 1
  %inc212 = add nuw nsw i32 %i.1366, 1
  %82 = ptrtoint ptr %p_bits to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %p_bits, align 2
  %conv204 = zext i16 %83 to i32
  %cmp205 = icmp ult i32 %inc212, %conv204
  br i1 %cmp205, label %for.body.for.body_crit_edge, label %for.body.if.end219_crit_edge

for.body.if.end219_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end219

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.else213:                                       ; preds = %if.end185
  %and214 = and i32 %cmd, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and214)
  %tobool215.not = icmp eq i32 %and214, 0
  br i1 %tobool215.not, label %if.else213.if.end219_crit_edge, label %if.then216

if.else213.if.end219_crit_edge:                   ; preds = %if.else213
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end219

if.then216:                                       ; preds = %if.else213
  call void @__sanitizer_cov_trace_pc() #10
  %add217 = add i32 %np, 5
  tail call void @queue_event(ptr noundef %smc, i32 noundef %add217, i32 noundef 4) #8
  br label %if.end219

if.end219:                                        ; preds = %if.then216, %if.else213.if.end219_crit_edge, %for.body.if.end219_crit_edge, %if.then188.if.end219_crit_edge
  %and220 = and i32 %cmd, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and220)
  %tobool221.not = icmp eq i32 %and220, 0
  br i1 %tobool221.not, label %if.end219.if.end229_crit_edge, label %if.then222

if.end219.if.end229_crit_edge:                    ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end229

if.then222:                                       ; preds = %if.end219
  %tr_flag = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 18
  %84 = ptrtoint ptr %tr_flag to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %tr_flag, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool223.not = icmp eq i8 %85, 0
  br i1 %tobool223.not, label %if.then224, label %if.then222.if.end229_crit_edge

if.then222.if.end229_crit_edge:                   ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end229

if.then224:                                       ; preds = %if.then222
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %tr_flag to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %tr_flag, align 2
  %shl = shl nuw i32 1, %np
  %trace_prop = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 4, i32 4
  %87 = ptrtoint ptr %trace_prop to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %trace_prop, align 4
  %or = or i32 %88, %shl
  store i32 %or, ptr %trace_prop, align 4
  tail call void @queue_event(ptr noundef %smc, i32 noundef 1, i32 noundef 3) #8
  br label %if.end229

if.end229:                                        ; preds = %if.then224, %if.then222.if.end229_crit_edge, %if.end219.if.end229_crit_edge
  %and230 = and i32 %cmd, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and230)
  %tobool231.not = icmp eq i32 %and230, 0
  br i1 %tobool231.not, label %if.end229.if.end248_crit_edge, label %land.lhs.true232

if.end229.if.end248_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end248

land.lhs.true232:                                 ; preds = %if.end229
  %89 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx, align 4
  %fddiPORTPCMState234 = getelementptr inbounds %struct.fddi_mib_p, ptr %90, i32 0, i32 23
  %91 = ptrtoint ptr %fddiPORTPCMState234 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %fddiPORTPCMState234, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %92)
  %cmp236 = icmp eq i16 %92, 2
  br i1 %cmp236, label %if.then238, label %land.lhs.true232.if.end248_crit_edge

land.lhs.true232.if.end248_crit_edge:             ; preds = %land.lhs.true232
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end248

if.then238:                                       ; preds = %land.lhs.true232
  %e239 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 4
  %93 = ptrtoint ptr %e239 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %e239, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %94)
  %cmp241 = icmp eq i8 %94, 2
  br i1 %cmp241, label %if.then243, label %if.then238.if.end248_crit_edge

if.then238.if.end248_crit_edge:                   ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end248

if.then243:                                       ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %e239 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 4, ptr %e239, align 4
  tail call void @queue_event(ptr noundef %smc, i32 noundef 1, i32 noundef 4) #8
  br label %if.end248

if.end248:                                        ; preds = %if.then243, %if.then238.if.end248_crit_edge, %land.lhs.true232.if.end248_crit_edge, %if.end229.if.end248_crit_edge
  %and249 = and i32 %cmd, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and249)
  %tobool250.not = icmp eq i32 %and249, 0
  br i1 %tobool250.not, label %if.end248.cleanup_crit_edge, label %if.then251

if.end248.cleanup_crit_edge:                      ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then251:                                       ; preds = %if.end248
  %96 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx, align 4
  %fddiPORTPCMState253 = getelementptr inbounds %struct.fddi_mib_p, ptr %97, i32 0, i32 23
  %98 = ptrtoint ptr %fddiPORTPCMState253 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %fddiPORTPCMState253, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %99)
  %cmp255 = icmp eq i16 %99, 8
  br i1 %cmp255, label %if.then257, label %if.then251.cleanup_crit_edge

if.then251.cleanup_crit_edge:                     ; preds = %if.then251
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then257:                                       ; preds = %if.then251
  %tr_flag258 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 18
  %100 = ptrtoint ptr %tr_flag258 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %tr_flag258, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool259.not = icmp eq i8 %101, 0
  br i1 %tobool259.not, label %if.then260, label %if.then257.cleanup_crit_edge

if.then257.cleanup_crit_edge:                     ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then260:                                       ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #10
  %add262 = add i32 %np, 5
  tail call void @queue_event(ptr noundef %smc, i32 noundef %add262, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then260, %if.then257.cleanup_crit_edge, %if.then251.cleanup_crit_edge, %if.end248.cleanup_crit_edge, %if.then179, %sw.epilog174.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queue_event(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drv_reset_indication(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @plc_clear_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pc_tcode_actions(ptr noundef %smc, i32 noundef %bit, ptr noundef %phy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %np1 = getelementptr inbounds %struct.s_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %np1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %np1, align 4
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %4 = zext i32 %bit to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %bit, label %entry.sw.epilog303_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb14
    i32 3, label %sw.bb31
    i32 4, label %sw.bb190
    i32 9, label %sw.bb242
    i32 6, label %sw.bb226
    i32 7, label %sw.bb229
    i32 8, label %sw.bb239
  ]

entry.sw.epilog303_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog303

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %t_val = getelementptr inbounds %struct.s_phy, ptr %phy, i32 0, i32 20
  %5 = ptrtoint ptr %t_val to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %t_val, align 4
  br label %sw.epilog303

sw.bb3:                                           ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %3, align 4
  %8 = and i16 %7, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %8)
  %switch = icmp eq i16 %8, 2
  %arrayidx11 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 20, i32 1
  br i1 %switch, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %arrayidx11, align 1
  br label %sw.epilog303

if.else:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx11, align 1
  br label %sw.epilog303

sw.bb14:                                          ; preds = %entry
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %3, align 4
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %12, label %if.else27 [
    i16 1, label %sw.bb14.if.then24_crit_edge
    i16 3, label %sw.bb14.if.then24_crit_edge429
  ]

sw.bb14.if.then24_crit_edge429:                   ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

sw.bb14.if.then24_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.then24:                                        ; preds = %sw.bb14.if.then24_crit_edge, %sw.bb14.if.then24_crit_edge429
  %arrayidx26 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 20, i32 2
  %14 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %arrayidx26, align 2
  br label %sw.epilog303

if.else27:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx29 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 20, i32 2
  %15 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx29, align 2
  br label %sw.epilog303

sw.bb31:                                          ; preds = %entry
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %3, align 4
  %fddiPORTNeighborType = getelementptr inbounds %struct.fddi_mib_p, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %fddiPORTNeighborType to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %fddiPORTNeighborType, align 2
  %fddiSMTConnectionPolicy = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 21
  %20 = ptrtoint ptr %fddiSMTConnectionPolicy to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %fddiSMTConnectionPolicy, align 2
  %conv36 = zext i16 %21 to i32
  %arrayidx38 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 20, i32 3
  %22 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %arrayidx38, align 1
  %23 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %17, label %sw.bb31.sw.epilog_crit_edge [
    i16 0, label %sw.bb39
    i16 1, label %sw.bb64
    i16 2, label %sw.bb92
    i16 3, label %sw.bb120
  ]

sw.bb31.sw.epilog_crit_edge:                      ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb39:                                          ; preds = %sw.bb31
  %and = and i32 %conv36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp40 = icmp eq i16 %19, 0
  %or.cond = select i1 %tobool.not, i1 %cmp40, i1 false
  br i1 %or.cond, label %sw.bb39.sw.epilog.sink.split_crit_edge, label %lor.lhs.false42

sw.bb39.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

lor.lhs.false42:                                  ; preds = %sw.bb39
  %and43 = and i32 %conv36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp ne i32 %and43, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %19)
  %cmp46 = icmp eq i16 %19, 1
  %or.cond406 = select i1 %tobool44.not, i1 %cmp46, i1 false
  br i1 %or.cond406, label %lor.lhs.false42.sw.epilog.sink.split_crit_edge, label %lor.lhs.false48

lor.lhs.false42.sw.epilog.sink.split_crit_edge:   ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

lor.lhs.false48:                                  ; preds = %lor.lhs.false42
  %and49 = and i32 %conv36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp ne i32 %and49, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %19)
  %cmp52 = icmp eq i16 %19, 2
  %or.cond407 = select i1 %tobool50.not, i1 %cmp52, i1 false
  br i1 %or.cond407, label %lor.lhs.false48.sw.epilog.sink.split_crit_edge, label %lor.lhs.false54

lor.lhs.false48.sw.epilog.sink.split_crit_edge:   ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

lor.lhs.false54:                                  ; preds = %lor.lhs.false48
  %and55 = and i32 %conv36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp ne i32 %and55, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %19)
  %cmp58 = icmp eq i16 %19, 3
  %or.cond408 = select i1 %tobool56.not, i1 %cmp58, i1 false
  br i1 %or.cond408, label %lor.lhs.false54.sw.epilog.sink.split_crit_edge, label %lor.lhs.false54.sw.epilog_crit_edge

lor.lhs.false54.sw.epilog_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false54.sw.epilog.sink.split_crit_edge:   ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.bb64:                                          ; preds = %sw.bb31
  %and65 = and i32 %conv36, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp ne i32 %and65, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp68 = icmp eq i16 %19, 0
  %or.cond409 = select i1 %tobool66.not, i1 %cmp68, i1 false
  br i1 %or.cond409, label %sw.bb64.sw.epilog.sink.split_crit_edge, label %lor.lhs.false70

sw.bb64.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

lor.lhs.false70:                                  ; preds = %sw.bb64
  %and71 = and i32 %conv36, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp ne i32 %and71, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %19)
  %cmp74 = icmp eq i16 %19, 1
  %or.cond410 = select i1 %tobool72.not, i1 %cmp74, i1 false
  br i1 %or.cond410, label %lor.lhs.false70.sw.epilog.sink.split_crit_edge, label %lor.lhs.false76

lor.lhs.false70.sw.epilog.sink.split_crit_edge:   ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

lor.lhs.false76:                                  ; preds = %lor.lhs.false70
  %and77 = and i32 %conv36, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp ne i32 %and77, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %19)
  %cmp80 = icmp eq i16 %19, 2
  %or.cond411 = select i1 %tobool78.not, i1 %cmp80, i1 false
  br i1 %or.cond411, label %lor.lhs.false76.sw.epilog.sink.split_crit_edge, label %lor.lhs.false82

lor.lhs.false76.sw.epilog.sink.split_crit_edge:   ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

lor.lhs.false82:                                  ; preds = %lor.lhs.false76
  %and83 = and i32 %conv36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp ne i32 %and83, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %19)
  %cmp86 = icmp eq i16 %19, 3
  %or.cond412 = select i1 %tobool84.not, i1 %cmp86, i1 false
  br i1 %or.cond412, label %lor.lhs.false82.sw.epilog.sink.split_crit_edge, label %lor.lhs.false82.sw.epilog_crit_edge

lor.lhs.false82.sw.epilog_crit_edge:              ; preds = %lor.lhs.false82
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false82.sw.epilog.sink.split_crit_edge:   ; preds = %lor.lhs.false82
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.bb92:                                          ; preds = %sw.bb31
  %and93 = and i32 %conv36, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp ne i32 %and93, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp96 = icmp eq i16 %19, 0
  %or.cond413 = select i1 %tobool94.not, i1 %cmp96, i1 false
  br i1 %or.cond413, label %sw.bb92.sw.epilog.sink.split_crit_edge, label %lor.lhs.false98

sw.bb92.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

lor.lhs.false98:                                  ; preds = %sw.bb92
  %and99 = and i32 %conv36, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp ne i32 %and99, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %19)
  %cmp102 = icmp eq i16 %19, 1
  %or.cond414 = select i1 %tobool100.not, i1 %cmp102, i1 false
  br i1 %or.cond414, label %lor.lhs.false98.sw.epilog.sink.split_crit_edge, label %lor.lhs.false104

lor.lhs.false98.sw.epilog.sink.split_crit_edge:   ; preds = %lor.lhs.false98
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

lor.lhs.false104:                                 ; preds = %lor.lhs.false98
  %and105 = and i32 %conv36, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp ne i32 %and105, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %19)
  %cmp108 = icmp eq i16 %19, 2
  %or.cond415 = select i1 %tobool106.not, i1 %cmp108, i1 false
  br i1 %or.cond415, label %lor.lhs.false104.sw.epilog.sink.split_crit_edge, label %lor.lhs.false110

lor.lhs.false104.sw.epilog.sink.split_crit_edge:  ; preds = %lor.lhs.false104
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

lor.lhs.false110:                                 ; preds = %lor.lhs.false104
  %and111 = and i32 %conv36, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp ne i32 %and111, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %19)
  %cmp114 = icmp eq i16 %19, 3
  %or.cond416 = select i1 %tobool112.not, i1 %cmp114, i1 false
  br i1 %or.cond416, label %lor.lhs.false110.sw.epilog.sink.split_crit_edge, label %lor.lhs.false110.sw.epilog_crit_edge

lor.lhs.false110.sw.epilog_crit_edge:             ; preds = %lor.lhs.false110
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false110.sw.epilog.sink.split_crit_edge:  ; preds = %lor.lhs.false110
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.bb120:                                         ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %19)
  %cmp121 = icmp eq i16 %19, 3
  br i1 %cmp121, label %sw.bb120.sw.epilog.sink.split_crit_edge, label %lor.lhs.false123

sw.bb120.sw.epilog.sink.split_crit_edge:          ; preds = %sw.bb120
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

lor.lhs.false123:                                 ; preds = %sw.bb120
  %and124 = and i32 %conv36, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp ne i32 %and124, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp127 = icmp eq i16 %19, 0
  %or.cond417 = select i1 %tobool125.not, i1 %cmp127, i1 false
  br i1 %or.cond417, label %lor.lhs.false123.sw.epilog.sink.split_crit_edge, label %lor.lhs.false129

lor.lhs.false123.sw.epilog.sink.split_crit_edge:  ; preds = %lor.lhs.false123
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

lor.lhs.false129:                                 ; preds = %lor.lhs.false123
  %and130 = and i32 %conv36, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp ne i32 %and130, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %19)
  %cmp133 = icmp eq i16 %19, 1
  %or.cond418 = select i1 %tobool131.not, i1 %cmp133, i1 false
  br i1 %or.cond418, label %lor.lhs.false129.sw.epilog.sink.split_crit_edge, label %lor.lhs.false135

lor.lhs.false129.sw.epilog.sink.split_crit_edge:  ; preds = %lor.lhs.false129
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

lor.lhs.false135:                                 ; preds = %lor.lhs.false129
  %and136 = and i32 %conv36, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp ne i32 %and136, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %19)
  %cmp139 = icmp eq i16 %19, 2
  %or.cond419 = select i1 %tobool137.not, i1 %cmp139, i1 false
  br i1 %or.cond419, label %lor.lhs.false135.sw.epilog.sink.split_crit_edge, label %lor.lhs.false135.sw.epilog_crit_edge

lor.lhs.false135.sw.epilog_crit_edge:             ; preds = %lor.lhs.false135
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

lor.lhs.false135.sw.epilog.sink.split_crit_edge:  ; preds = %lor.lhs.false135
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %lor.lhs.false135.sw.epilog.sink.split_crit_edge, %lor.lhs.false129.sw.epilog.sink.split_crit_edge, %lor.lhs.false123.sw.epilog.sink.split_crit_edge, %sw.bb120.sw.epilog.sink.split_crit_edge, %lor.lhs.false110.sw.epilog.sink.split_crit_edge, %lor.lhs.false104.sw.epilog.sink.split_crit_edge, %lor.lhs.false98.sw.epilog.sink.split_crit_edge, %sw.bb92.sw.epilog.sink.split_crit_edge, %lor.lhs.false82.sw.epilog.sink.split_crit_edge, %lor.lhs.false76.sw.epilog.sink.split_crit_edge, %lor.lhs.false70.sw.epilog.sink.split_crit_edge, %sw.bb64.sw.epilog.sink.split_crit_edge, %lor.lhs.false54.sw.epilog.sink.split_crit_edge, %lor.lhs.false48.sw.epilog.sink.split_crit_edge, %lor.lhs.false42.sw.epilog.sink.split_crit_edge, %sw.bb39.sw.epilog.sink.split_crit_edge
  %24 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx38, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %lor.lhs.false135.sw.epilog_crit_edge, %lor.lhs.false110.sw.epilog_crit_edge, %lor.lhs.false82.sw.epilog_crit_edge, %lor.lhs.false54.sw.epilog_crit_edge, %sw.bb31.sw.epilog_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp151 = icmp eq i16 %17, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp154 = icmp eq i16 %19, 0
  %or.cond420 = select i1 %cmp151, i1 %cmp154, i1 false
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %19)
  %cmp160 = icmp eq i16 %19, 2
  %or.cond421 = select i1 %cmp151, i1 %cmp160, i1 false
  %or.cond426 = select i1 %or.cond420, i1 true, i1 %or.cond421
  br i1 %or.cond426, label %sw.epilog.if.then186_crit_edge, label %lor.lhs.false162

sw.epilog.if.then186_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then186

lor.lhs.false162:                                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %17)
  %cmp163 = icmp eq i16 %17, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %19)
  %cmp166 = icmp eq i16 %19, 1
  %or.cond422 = select i1 %cmp163, i1 %cmp166, i1 false
  %or.cond423 = select i1 %cmp163, i1 %cmp160, i1 false
  %or.cond427 = select i1 %or.cond422, i1 true, i1 %or.cond423
  br i1 %or.cond427, label %lor.lhs.false162.if.then186_crit_edge, label %lor.lhs.false174

lor.lhs.false162.if.then186_crit_edge:            ; preds = %lor.lhs.false162
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then186

lor.lhs.false174:                                 ; preds = %lor.lhs.false162
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %17)
  %cmp175 = icmp eq i16 %17, 2
  %or.cond424 = select i1 %cmp175, i1 %cmp154, i1 false
  %or.cond425 = select i1 %cmp175, i1 %cmp166, i1 false
  %or.cond428 = select i1 %or.cond424, i1 true, i1 %or.cond425
  br i1 %or.cond428, label %lor.lhs.false174.if.then186_crit_edge, label %lor.lhs.false174.sw.epilog303_crit_edge

lor.lhs.false174.sw.epilog303_crit_edge:          ; preds = %lor.lhs.false174
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog303

lor.lhs.false174.if.then186_crit_edge:            ; preds = %lor.lhs.false174
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then186

if.then186:                                       ; preds = %lor.lhs.false174.if.then186_crit_edge, %lor.lhs.false162.if.then186_crit_edge, %sw.epilog.if.then186_crit_edge
  %add = add nuw nsw i32 %conv, 1
  tail call void @smt_srf_event(ptr noundef %smc, i32 noundef 4, i32 noundef %add, i32 noundef 0) #8
  br label %sw.epilog303

sw.bb190:                                         ; preds = %entry
  %fddiPORTPC_Withhold = getelementptr inbounds %struct.fddi_mib_p, ptr %3, i32 0, i32 25
  %25 = ptrtoint ptr %fddiPORTPC_Withhold to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %fddiPORTPC_Withhold, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %cmp192 = icmp eq i16 %26, 0
  br i1 %cmp192, label %if.then194, label %if.else219

if.then194:                                       ; preds = %sw.bb190
  %pc_lem_fail = getelementptr inbounds %struct.s_phy, ptr %phy, i32 0, i32 6
  %27 = ptrtoint ptr %pc_lem_fail to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pc_lem_fail, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool195.not = icmp eq i8 %28, 0
  %arrayidx203 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 20, i32 4
  br i1 %tobool195.not, label %if.else201, label %if.then196

if.then196:                                       ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %arrayidx203, align 4
  %arrayidx200 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 20, i32 5
  %30 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx200, align 1
  br label %if.end218

if.else201:                                       ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx203, align 4
  %fddiPORTLCTFail_Ct = getelementptr inbounds %struct.fddi_mib_p, ptr %3, i32 0, i32 14
  %32 = ptrtoint ptr %fddiPORTLCTFail_Ct to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fddiPORTLCTFail_Ct, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp204.not = icmp ne i32 %33, 0
  %spec.select = zext i1 %cmp204.not to i8
  %34 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 20, i32 5
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %spec.select, ptr %34, align 1
  %wc_flag = getelementptr inbounds %struct.s_phy, ptr %phy, i32 0, i32 4
  %36 = ptrtoint ptr %wc_flag to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %wc_flag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool213.not = icmp eq i8 %37, 0
  %spec.store.select = select i1 %tobool213.not, i8 %spec.select, i8 1
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %spec.store.select, ptr %34, align 1
  br label %if.end218

if.end218:                                        ; preds = %if.else201, %if.then196
  %fddiPORTConnectState = getelementptr inbounds %struct.fddi_mib_p, ptr %3, i32 0, i32 22
  %39 = ptrtoint ptr %fddiPORTConnectState to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %fddiPORTConnectState, align 4
  br label %sw.epilog303

if.else219:                                       ; preds = %sw.bb190
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTConnectState220 = getelementptr inbounds %struct.fddi_mib_p, ptr %3, i32 0, i32 22
  %40 = ptrtoint ptr %fddiPORTConnectState220 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 2, ptr %fddiPORTConnectState220, align 4
  %arrayidx222 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 20, i32 4
  %41 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %arrayidx222, align 4
  %arrayidx224 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 20, i32 5
  %42 = ptrtoint ptr %arrayidx224 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %arrayidx224, align 1
  br label %sw.epilog303

sw.bb226:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx228 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 20, i32 6
  %43 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %arrayidx228, align 2
  br label %sw.epilog303

sw.bb229:                                         ; preds = %entry
  %cf_loop = getelementptr inbounds %struct.s_phy, ptr %phy, i32 0, i32 3
  %44 = ptrtoint ptr %cf_loop to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %cf_loop, align 2
  %pc_lem_fail.i = getelementptr inbounds %struct.s_phy, ptr %phy, i32 0, i32 6
  %45 = ptrtoint ptr %pc_lem_fail.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %pc_lem_fail.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i = icmp eq i8 %1, 0
  %hw.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %46 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw.i, align 8
  %..i = select i1 %cmp.i, i32 1640, i32 1000
  %add.ptr6.i = getelementptr i8, ptr %47, i32 %..i
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr6.i) #8, !srcloc !29
  %49 = tail call i16 @llvm.bswap.i16(i16 %48) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %conv7.i = zext i16 %49 to i32
  %lem_errors.i = getelementptr inbounds %struct.s_phy, ptr %phy, i32 0, i32 31, i32 1
  %50 = ptrtoint ptr %lem_errors.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %lem_errors.i, align 4
  %add.i = add i32 %51, %conv7.i
  store i32 %add.i, ptr %lem_errors.i, align 4
  %fddiPORTLem_Ct.i = getelementptr inbounds %struct.fddi_mib_p, ptr %3, i32 0, i32 18
  %52 = ptrtoint ptr %fddiPORTLem_Ct.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fddiPORTLem_Ct.i, align 4
  %add8.i = add i32 %53, %conv7.i
  store i32 %add8.i, ptr %fddiPORTLem_Ct.i, align 4
  %54 = load i32, ptr %lem_errors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i = icmp eq i32 %54, 0
  br i1 %tobool.not.i, label %sw.bb229.if.end40.i_crit_edge, label %if.then.i

sw.bb229.if.end40.i_crit_edge:                    ; preds = %sw.bb229
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40.i

if.then.i:                                        ; preds = %sw.bb229
  %lc_test.i = getelementptr inbounds %struct.s_phy, ptr %phy, i32 0, i32 7
  %55 = ptrtoint ptr %lc_test.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %lc_test.i, align 2
  %57 = zext i8 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %56, label %if.then.i.if.end40.i_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb16.i
    i8 3, label %sw.bb24.i
    i8 4, label %sw.bb32.i
  ]

if.then.i.if.end40.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40.i

sw.bb.i:                                          ; preds = %if.then.i
  %lct_short.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 29
  %58 = ptrtoint ptr %lct_short.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %lct_short.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %59)
  %cmp12.not.i = icmp ult i32 %54, %59
  br i1 %cmp12.not.i, label %sw.bb.i.if.end40.i_crit_edge, label %sw.bb.i.if.then43.sink.split.i_crit_edge

sw.bb.i.if.then43.sink.split.i_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43.sink.split.i

sw.bb.i.if.end40.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40.i

sw.bb16.i:                                        ; preds = %if.then.i
  %lct_medium.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 30
  %60 = ptrtoint ptr %lct_medium.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %lct_medium.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %61)
  %cmp19.not.i = icmp ult i32 %54, %61
  br i1 %cmp19.not.i, label %sw.bb16.i.if.end40.i_crit_edge, label %sw.bb16.i.if.then43.sink.split.i_crit_edge

sw.bb16.i.if.then43.sink.split.i_crit_edge:       ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43.sink.split.i

sw.bb16.i.if.end40.i_crit_edge:                   ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40.i

sw.bb24.i:                                        ; preds = %if.then.i
  %lct_long.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 31
  %62 = ptrtoint ptr %lct_long.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %lct_long.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %63)
  %cmp27.not.i = icmp ult i32 %54, %63
  br i1 %cmp27.not.i, label %sw.bb24.i.if.end40.i_crit_edge, label %sw.bb24.i.if.then43.sink.split.i_crit_edge

sw.bb24.i.if.then43.sink.split.i_crit_edge:       ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43.sink.split.i

sw.bb24.i.if.end40.i_crit_edge:                   ; preds = %sw.bb24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40.i

sw.bb32.i:                                        ; preds = %if.then.i
  %lct_extended.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 32
  %64 = ptrtoint ptr %lct_extended.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %lct_extended.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %65)
  %cmp35.not.i = icmp ult i32 %54, %65
  br i1 %cmp35.not.i, label %sw.bb32.i.if.end40.i_crit_edge, label %sw.bb32.i.if.then43.sink.split.i_crit_edge

sw.bb32.i.if.then43.sink.split.i_crit_edge:       ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43.sink.split.i

sw.bb32.i.if.end40.i_crit_edge:                   ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40.i

if.end40.i:                                       ; preds = %sw.bb32.i.if.end40.i_crit_edge, %sw.bb24.i.if.end40.i_crit_edge, %sw.bb16.i.if.end40.i_crit_edge, %sw.bb.i.if.end40.i_crit_edge, %if.then.i.if.end40.i_crit_edge, %sw.bb229.if.end40.i_crit_edge
  %66 = ptrtoint ptr %pc_lem_fail.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %.pr.i = load i8, ptr %pc_lem_fail.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool42.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool42.not.i, label %if.else.i, label %if.end40.i.if.then43.i_crit_edge

if.end40.i.if.then43.i_crit_edge:                 ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43.i

if.then43.sink.split.i:                           ; preds = %sw.bb32.i.if.then43.sink.split.i_crit_edge, %sw.bb24.i.if.then43.sink.split.i_crit_edge, %sw.bb16.i.if.then43.sink.split.i_crit_edge, %sw.bb.i.if.then43.sink.split.i_crit_edge
  %67 = ptrtoint ptr %pc_lem_fail.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %pc_lem_fail.i, align 1
  br label %if.then43.i

if.then43.i:                                      ; preds = %if.then43.sink.split.i, %if.end40.i.if.then43.i_crit_edge
  %fddiPORTLCTFail_Ct.i = getelementptr inbounds %struct.fddi_mib_p, ptr %3, i32 0, i32 14
  %68 = ptrtoint ptr %fddiPORTLCTFail_Ct.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %fddiPORTLCTFail_Ct.i, align 4
  %inc.i = add i32 %69, 1
  store i32 %inc.i, ptr %fddiPORTLCTFail_Ct.i, align 4
  %fddiPORTLem_Reject_Ct.i = getelementptr inbounds %struct.fddi_mib_p, ptr %3, i32 0, i32 17
  %70 = ptrtoint ptr %fddiPORTLem_Reject_Ct.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %fddiPORTLem_Reject_Ct.i, align 4
  %inc44.i = add i32 %71, 1
  store i32 %inc44.i, ptr %fddiPORTLem_Reject_Ct.i, align 4
  br label %lem_check_lct.exit

if.else.i:                                        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTLCTFail_Ct45.i = getelementptr inbounds %struct.fddi_mib_p, ptr %3, i32 0, i32 14
  %72 = ptrtoint ptr %fddiPORTLCTFail_Ct45.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %fddiPORTLCTFail_Ct45.i, align 4
  br label %lem_check_lct.exit

lem_check_lct.exit:                               ; preds = %if.else.i, %if.then43.i
  %73 = ptrtoint ptr %pc_lem_fail.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %pc_lem_fail.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool231.not = icmp eq i8 %74, 0
  %arrayidx237 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 20, i32 7
  br i1 %tobool231.not, label %if.else235, label %if.then232

if.then232:                                       ; preds = %lem_check_lct.exit
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %arrayidx237, align 1
  br label %sw.epilog303

if.else235:                                       ; preds = %lem_check_lct.exit
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %arrayidx237, align 1
  br label %sw.epilog303

sw.bb239:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx241 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 20, i32 8
  %77 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %arrayidx241, align 4
  br label %sw.epilog303

sw.bb242:                                         ; preds = %entry
  %cf_loop243 = getelementptr inbounds %struct.s_phy, ptr %phy, i32 0, i32 3
  %78 = ptrtoint ptr %cf_loop243 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %cf_loop243, align 2
  %fddiPORTPC_Withhold244 = getelementptr inbounds %struct.fddi_mib_p, ptr %3, i32 0, i32 25
  %79 = ptrtoint ptr %fddiPORTPC_Withhold244 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %fddiPORTPC_Withhold244, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %cmp246.not = icmp eq i16 %80, 0
  br i1 %cmp246.not, label %lor.lhs.false248, label %sw.bb242.if.then256_crit_edge

sw.bb242.if.then256_crit_edge:                    ; preds = %sw.bb242
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then256

lor.lhs.false248:                                 ; preds = %sw.bb242
  %sas = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 1
  %81 = ptrtoint ptr %sas to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %sas, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %cmp250 = icmp eq i8 %82, 0
  br i1 %cmp250, label %land.lhs.true252, label %lor.lhs.false248.if.end258_crit_edge

lor.lhs.false248.if.end258_crit_edge:             ; preds = %lor.lhs.false248
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end258

land.lhs.true252:                                 ; preds = %lor.lhs.false248
  %wc_flag253 = getelementptr inbounds %struct.s_phy, ptr %phy, i32 0, i32 4
  %83 = ptrtoint ptr %wc_flag253 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %wc_flag253, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool255.not = icmp eq i8 %84, 0
  br i1 %tobool255.not, label %land.lhs.true252.if.end258_crit_edge, label %land.lhs.true252.if.then256_crit_edge

land.lhs.true252.if.then256_crit_edge:            ; preds = %land.lhs.true252
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then256

land.lhs.true252.if.end258_crit_edge:             ; preds = %land.lhs.true252
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end258

if.then256:                                       ; preds = %land.lhs.true252.if.then256_crit_edge, %sw.bb242.if.then256_crit_edge
  %add257 = add nuw nsw i32 %conv, 5
  tail call void @queue_event(ptr noundef %smc, i32 noundef %add257, i32 noundef 1) #8
  br label %sw.epilog303

if.end258:                                        ; preds = %land.lhs.true252.if.end258_crit_edge, %lor.lhs.false248.if.end258_crit_edge
  %arrayidx260 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 20, i32 9
  %85 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %arrayidx260, align 1
  %86 = ptrtoint ptr %sas to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %sas, align 1
  %88 = zext i8 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %87, label %if.end258.sw.epilog300_crit_edge [
    i8 0, label %sw.bb264
    i8 1, label %sw.bb293
  ]

if.end258.sw.epilog300_crit_edge:                 ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog300

sw.bb264:                                         ; preds = %if.end258
  %pc_mode = getelementptr inbounds %struct.s_phy, ptr %phy, i32 0, i32 5
  %89 = ptrtoint ptr %pc_mode to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %pc_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %90)
  %cmp266 = icmp eq i8 %90, 2
  br i1 %cmp266, label %if.then268, label %if.else285

if.then268:                                       ; preds = %sw.bb264
  %91 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %1, label %if.then268.sw.epilog300_crit_edge [
    i8 1, label %if.then268.sw.epilog300.sink.split_crit_edge
    i8 0, label %land.lhs.true274
  ]

if.then268.sw.epilog300.sink.split_crit_edge:     ; preds = %if.then268
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog300.sink.split

if.then268.sw.epilog300_crit_edge:                ; preds = %if.then268
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog300

land.lhs.true274:                                 ; preds = %if.then268
  %arrayidx275 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1
  %92 = ptrtoint ptr %arrayidx275 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx275, align 4
  %fddiPORTConnectState277 = getelementptr inbounds %struct.fddi_mib_p, ptr %93, i32 0, i32 22
  %94 = ptrtoint ptr %fddiPORTConnectState277 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %fddiPORTConnectState277, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %95)
  %cmp279.not = icmp eq i16 %95, 3
  br i1 %cmp279.not, label %land.lhs.true274.sw.epilog300_crit_edge, label %land.lhs.true274.sw.epilog300.sink.split_crit_edge

land.lhs.true274.sw.epilog300.sink.split_crit_edge: ; preds = %land.lhs.true274
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog300.sink.split

land.lhs.true274.sw.epilog300_crit_edge:          ; preds = %land.lhs.true274
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog300

if.else285:                                       ; preds = %sw.bb264
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp286 = icmp eq i8 %1, 1
  br i1 %cmp286, label %if.else285.sw.epilog300.sink.split_crit_edge, label %if.else285.sw.epilog300_crit_edge

if.else285.sw.epilog300_crit_edge:                ; preds = %if.else285
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog300

if.else285.sw.epilog300.sink.split_crit_edge:     ; preds = %if.else285
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog300.sink.split

sw.bb293:                                         ; preds = %if.end258
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp294 = icmp eq i8 %1, 0
  br i1 %cmp294, label %sw.bb293.sw.epilog300.sink.split_crit_edge, label %sw.bb293.sw.epilog300_crit_edge

sw.bb293.sw.epilog300_crit_edge:                  ; preds = %sw.bb293
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog300

sw.bb293.sw.epilog300.sink.split_crit_edge:       ; preds = %sw.bb293
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog300.sink.split

sw.epilog300.sink.split:                          ; preds = %sw.bb293.sw.epilog300.sink.split_crit_edge, %if.else285.sw.epilog300.sink.split_crit_edge, %land.lhs.true274.sw.epilog300.sink.split_crit_edge, %if.then268.sw.epilog300.sink.split_crit_edge
  %96 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 1, ptr %arrayidx260, align 1
  br label %sw.epilog300

sw.epilog300:                                     ; preds = %sw.epilog300.sink.split, %sw.bb293.sw.epilog300_crit_edge, %if.else285.sw.epilog300_crit_edge, %land.lhs.true274.sw.epilog300_crit_edge, %if.then268.sw.epilog300_crit_edge, %if.end258.sw.epilog300_crit_edge
  %97 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx260, align 1
  %fddiPORTMacIndicated = getelementptr inbounds %struct.fddi_mib_p, ptr %3, i32 0, i32 3
  %99 = ptrtoint ptr %fddiPORTMacIndicated to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %98, ptr %fddiPORTMacIndicated, align 1
  br label %sw.epilog303

sw.epilog303:                                     ; preds = %sw.epilog300, %if.then256, %sw.bb239, %if.else235, %if.then232, %sw.bb226, %if.else219, %if.end218, %if.then186, %lor.lhs.false174.sw.epilog303_crit_edge, %if.else27, %if.then24, %if.else, %if.then, %sw.bb, %entry.sw.epilog303_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pc_rcode_actions(ptr noundef %smc, i32 noundef %bit, ptr noundef %phy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %2 = zext i32 %bit to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %bit, label %entry.sw.epilog338_crit_edge [
    i32 8, label %sw.bb310
    i32 7, label %sw.bb295
    i32 6, label %sw.bb289
    i32 2, label %sw.bb2
    i32 3, label %sw.bb53
    i32 9, label %sw.bb329
    i32 5, label %sw.bb125
  ]

entry.sw.epilog338_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog338

sw.bb2:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 21, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %4, label %sw.bb2.sw.epilog338_crit_edge [
    i8 0, label %land.lhs.true
    i8 1, label %land.lhs.true28
  ]

sw.bb2.sw.epilog338_crit_edge:                    ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog338

land.lhs.true:                                    ; preds = %sw.bb2
  %arrayidx5 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 21, i32 2
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp7 = icmp eq i8 %7, 0
  br i1 %cmp7, label %if.then, label %land.lhs.true14

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTNeighborType = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %fddiPORTNeighborType to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %fddiPORTNeighborType, align 2
  br label %sw.epilog338

land.lhs.true14:                                  ; preds = %land.lhs.true
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx5, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp18 = icmp eq i8 %10, 1
  br i1 %cmp18, label %if.then20, label %land.lhs.true14.sw.epilog338_crit_edge

land.lhs.true14.sw.epilog338_crit_edge:           ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog338

if.then20:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTNeighborType21 = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %fddiPORTNeighborType21 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %fddiPORTNeighborType21, align 2
  br label %sw.epilog338

land.lhs.true28:                                  ; preds = %sw.bb2
  %arrayidx30 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 21, i32 2
  %12 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx30, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp32 = icmp eq i8 %13, 0
  br i1 %cmp32, label %if.then34, label %land.lhs.true42

if.then34:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTNeighborType35 = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %fddiPORTNeighborType35 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %fddiPORTNeighborType35, align 2
  br label %sw.epilog338

land.lhs.true42:                                  ; preds = %land.lhs.true28
  %15 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx30, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %16)
  %cmp46 = icmp eq i8 %16, 1
  br i1 %cmp46, label %if.then48, label %land.lhs.true42.sw.epilog338_crit_edge

land.lhs.true42.sw.epilog338_crit_edge:           ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog338

if.then48:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTNeighborType49 = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %fddiPORTNeighborType49 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 3, ptr %fddiPORTNeighborType49, align 2
  br label %sw.epilog338

sw.bb53:                                          ; preds = %entry
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %19)
  %cmp55 = icmp eq i16 %19, 3
  br i1 %cmp55, label %land.lhs.true57, label %sw.bb53.if.else67_crit_edge

sw.bb53.if.else67_crit_edge:                      ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else67

land.lhs.true57:                                  ; preds = %sw.bb53
  %fddiPORTNeighborType58 = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %fddiPORTNeighborType58 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %fddiPORTNeighborType58, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %21)
  %cmp60 = icmp eq i16 %21, 3
  br i1 %cmp60, label %if.then62, label %land.lhs.true57.if.else67_crit_edge

land.lhs.true57.if.else67_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else67

if.then62:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTPC_Withhold = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 25
  %22 = ptrtoint ptr %fddiPORTPC_Withhold to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1, ptr %fddiPORTPC_Withhold, align 2
  %ring_status = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 11, i32 5
  %23 = ptrtoint ptr %ring_status to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ring_status, align 4
  %25 = or i16 %24, 4
  store i16 %25, ptr %ring_status, align 4
  %conv66 = zext i16 %25 to i32
  tail call void @ring_status_indication(ptr noundef %smc, i32 noundef %conv66) #8
  br label %if.end103

if.else67:                                        ; preds = %land.lhs.true57.if.else67_crit_edge, %sw.bb53.if.else67_crit_edge
  %arrayidx68 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 20, i32 3
  %26 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx68, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.else67.if.then74_crit_edge

if.else67.if.then74_crit_edge:                    ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then74

lor.lhs.false:                                    ; preds = %if.else67
  %arrayidx71 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 21, i32 3
  %28 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx71, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool73.not = icmp eq i8 %29, 0
  br i1 %tobool73.not, label %if.else93, label %lor.lhs.false.if.then74_crit_edge

lor.lhs.false.if.then74_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then74

if.then74:                                        ; preds = %lor.lhs.false.if.then74_crit_edge, %if.else67.if.then74_crit_edge
  %fddiPORTPC_Withhold75 = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 25
  %30 = ptrtoint ptr %fddiPORTPC_Withhold75 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %fddiPORTPC_Withhold75, align 2
  br i1 %cmp55, label %if.then74.if.end88_crit_edge, label %lor.lhs.false80

if.then74.if.end88_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

lor.lhs.false80:                                  ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTNeighborType81 = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %fddiPORTNeighborType81 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %fddiPORTNeighborType81, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %32)
  %cmp83 = icmp eq i16 %32, 3
  %spec.select = select i1 %cmp83, i8 2, i8 1
  br label %if.end88

if.end88:                                         ; preds = %lor.lhs.false80, %if.then74.if.end88_crit_edge
  %.sink = phi i8 [ 2, %if.then74.if.end88_crit_edge ], [ %spec.select, %lor.lhs.false80 ]
  %pc_mode87 = getelementptr inbounds %struct.s_phy, ptr %phy, i32 0, i32 5
  %33 = ptrtoint ptr %pc_mode87 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %.sink, ptr %pc_mode87, align 4
  tail call void @all_selection_criteria(ptr noundef %smc) #8
  %wc_flag = getelementptr inbounds %struct.s_phy, ptr %phy, i32 0, i32 4
  %34 = ptrtoint ptr %wc_flag to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %wc_flag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool89.not = icmp eq i8 %35, 0
  br i1 %tobool89.not, label %if.end88.if.end103_crit_edge, label %if.then90

if.end88.if.end103_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

if.then90:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %fddiPORTPC_Withhold75 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 3, ptr %fddiPORTPC_Withhold75, align 2
  br label %if.end103

if.else93:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTPC_Withhold94 = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 25
  %37 = ptrtoint ptr %fddiPORTPC_Withhold94 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 2, ptr %fddiPORTPC_Withhold94, align 2
  %ring_status96 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 11, i32 5
  %38 = ptrtoint ptr %ring_status96 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %ring_status96, align 4
  %40 = or i16 %39, 4
  store i16 %40, ptr %ring_status96, align 4
  %conv100 = zext i16 %40 to i32
  tail call void @ring_status_indication(ptr noundef %smc, i32 noundef %conv100) #8
  br label %if.end103

if.end103:                                        ; preds = %if.else93, %if.then90, %if.end88.if.end103_crit_edge, %if.then62
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %1, align 4
  %43 = and i16 %42, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %43)
  %switch = icmp eq i16 %43, 2
  br i1 %switch, label %sw.epilog338.critedge, label %land.rhs

land.rhs:                                         ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  %fddiPORTNeighborType113 = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %fddiPORTNeighborType113 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %fddiPORTNeighborType113, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %45, i16 %42)
  %cmp117 = icmp eq i16 %45, %42
  %conv119 = zext i1 %cmp117 to i8
  %twisted = getelementptr inbounds %struct.s_phy, ptr %phy, i32 0, i32 19
  %46 = ptrtoint ptr %twisted to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv119, ptr %twisted, align 1
  br label %sw.epilog338

sw.bb125:                                         ; preds = %entry
  %arrayidx127 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 20, i32 4
  %47 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx127, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool129.not = icmp eq i8 %48, 0
  br i1 %tobool129.not, label %lor.lhs.false130, label %land.lhs.true140

lor.lhs.false130:                                 ; preds = %sw.bb125
  %arrayidx132 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 21, i32 4
  %49 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx132, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool134.not = icmp eq i8 %50, 0
  br i1 %tobool134.not, label %if.else159, label %lor.lhs.false130.lor.lhs.false145_crit_edge

lor.lhs.false130.lor.lhs.false145_crit_edge:      ; preds = %lor.lhs.false130
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false145

land.lhs.true140:                                 ; preds = %sw.bb125
  %arrayidx142 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 20, i32 5
  %51 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx142, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool144.not = icmp eq i8 %52, 0
  br i1 %tobool144.not, label %land.lhs.true140.lor.lhs.false145_crit_edge, label %land.lhs.true140.if.end174_crit_edge

land.lhs.true140.if.end174_crit_edge:             ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end174

land.lhs.true140.lor.lhs.false145_crit_edge:      ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false145

lor.lhs.false145:                                 ; preds = %land.lhs.true140.lor.lhs.false145_crit_edge, %lor.lhs.false130.lor.lhs.false145_crit_edge
  %arrayidx147 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 21, i32 4
  %53 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx147, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool149.not = icmp eq i8 %54, 0
  br i1 %tobool149.not, label %lor.lhs.false145.if.else156_crit_edge, label %land.lhs.true150

lor.lhs.false145.if.else156_crit_edge:            ; preds = %lor.lhs.false145
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else156

land.lhs.true150:                                 ; preds = %lor.lhs.false145
  %arrayidx152 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 21, i32 5
  %55 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx152, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool154.not = icmp eq i8 %56, 0
  br i1 %tobool154.not, label %land.lhs.true150.if.else156_crit_edge, label %land.lhs.true150.if.end174_crit_edge

land.lhs.true150.if.end174_crit_edge:             ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end174

land.lhs.true150.if.else156_crit_edge:            ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else156

if.else156:                                       ; preds = %land.lhs.true150.if.else156_crit_edge, %lor.lhs.false145.if.else156_crit_edge
  br label %if.end174

if.else159:                                       ; preds = %lor.lhs.false130
  %arrayidx161 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 20, i32 5
  %57 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx161, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool163.not = icmp eq i8 %58, 0
  br i1 %tobool163.not, label %lor.lhs.false164, label %if.else159.if.end174_crit_edge

if.else159.if.end174_crit_edge:                   ; preds = %if.else159
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end174

lor.lhs.false164:                                 ; preds = %if.else159
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx166 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 21, i32 5
  %59 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx166, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool168.not = icmp eq i8 %60, 0
  %spec.select453 = select i1 %tobool168.not, i8 1, i8 2
  br label %if.end174

if.end174:                                        ; preds = %lor.lhs.false164, %if.else159.if.end174_crit_edge, %if.else156, %land.lhs.true150.if.end174_crit_edge, %land.lhs.true140.if.end174_crit_edge
  %.sink440 = phi i8 [ 3, %if.else156 ], [ 4, %land.lhs.true150.if.end174_crit_edge ], [ 4, %land.lhs.true140.if.end174_crit_edge ], [ 2, %if.else159.if.end174_crit_edge ], [ %spec.select453, %lor.lhs.false164 ]
  %lc_test170 = getelementptr inbounds %struct.s_phy, ptr %phy, i32 0, i32 7
  %61 = ptrtoint ptr %lc_test170 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %.sink440, ptr %lc_test170, align 2
  %trunc = trunc i8 %.sink440 to i3
  %62 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.30)
  switch i3 %trunc, label %if.end174.sw.epilog_crit_edge [
    i3 1, label %sw.bb177
    i3 2, label %sw.bb185
    i3 3, label %sw.bb203
    i3 -4, label %sw.bb238
  ]

if.end174.sw.epilog_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb177:                                         ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  %np = getelementptr inbounds %struct.s_phy, ptr %phy, i32 0, i32 1
  %63 = ptrtoint ptr %np to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %np, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %cmp179 = icmp eq i8 %64, 0
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %65 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw, align 8
  %. = select i1 %cmp179, i32 1580, i32 940
  %add.ptr183 = getelementptr i8, ptr %66, i32 %.
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr183, i16 30454) #8, !srcloc !28
  %pcm_lc_short = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 10
  br label %sw.epilog.sink.split

sw.bb185:                                         ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  %np186 = getelementptr inbounds %struct.s_phy, ptr %phy, i32 0, i32 1
  %67 = ptrtoint ptr %np186 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %np186, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp188 = icmp eq i8 %68, 0
  %hw191 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %69 = ptrtoint ptr %hw191 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hw191, align 8
  %.450 = select i1 %cmp188, i32 1580, i32 940
  %add.ptr197 = getelementptr i8, ptr %70, i32 %.450
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr197, i16 -23904) #8, !srcloc !28
  %pcm_lc_medium = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 11
  br label %sw.epilog.sink.split

sw.bb203:                                         ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  %np204 = getelementptr inbounds %struct.s_phy, ptr %phy, i32 0, i32 1
  %71 = ptrtoint ptr %np204 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %np204, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp206 = icmp eq i8 %72, 0
  %hw209 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %73 = ptrtoint ptr %hw209 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw209, align 8
  %.451 = select i1 %cmp206, i32 1540, i32 900
  %add.ptr215 = getelementptr i8, ptr %74, i32 %.451
  %75 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr215) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %76 = or i16 %75, 2048
  %77 = ptrtoint ptr %np204 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %np204, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp223 = icmp eq i8 %78, 0
  %.sink445 = select i1 %cmp223, i32 1540, i32 900
  %hw230 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %79 = ptrtoint ptr %hw230 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hw230, align 8
  %add.ptr232 = getelementptr i8, ptr %80, i32 %.sink445
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr232, i16 %76) #8, !srcloc !28
  %pcm_lc_long = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 12
  br label %sw.epilog.sink.split

sw.bb238:                                         ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #10
  %np239 = getelementptr inbounds %struct.s_phy, ptr %phy, i32 0, i32 1
  %81 = ptrtoint ptr %np239 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %np239, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %cmp241 = icmp eq i8 %82, 0
  %hw244 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %83 = ptrtoint ptr %hw244 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hw244, align 8
  %.452 = select i1 %cmp241, i32 1540, i32 900
  %add.ptr250 = getelementptr i8, ptr %84, i32 %.452
  %85 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr250) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %86 = or i16 %85, 2048
  %87 = ptrtoint ptr %np239 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %np239, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %cmp260 = icmp eq i8 %88, 0
  %.sink448 = select i1 %cmp260, i32 1540, i32 900
  %hw267 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %89 = ptrtoint ptr %hw267 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hw267, align 8
  %add.ptr269 = getelementptr i8, ptr %90, i32 %.sink448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr269, i16 %86) #8, !srcloc !28
  %pcm_lc_extended = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 13
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb238, %sw.bb203, %sw.bb185, %sw.bb177
  %pcm_lc_extended.sink = phi ptr [ %pcm_lc_extended, %sw.bb238 ], [ %pcm_lc_long, %sw.bb203 ], [ %pcm_lc_medium, %sw.bb185 ], [ %pcm_lc_short, %sw.bb177 ]
  %91 = ptrtoint ptr %pcm_lc_extended.sink to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pcm_lc_extended.sink, align 4
  %arrayidx274 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 22, i32 7
  %93 = ptrtoint ptr %arrayidx274 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %arrayidx274, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end174.sw.epilog_crit_edge
  %arrayidx276 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 22, i32 7
  %94 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx276, align 4
  %pcm_lc_medium278 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 11
  %96 = ptrtoint ptr %pcm_lc_medium278 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pcm_lc_medium278, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %97)
  %cmp279 = icmp ugt i32 %95, %97
  br i1 %cmp279, label %if.then281, label %sw.epilog.if.end284_crit_edge

sw.epilog.if.end284_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end284

if.then281:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %timer0_exp.i = getelementptr inbounds %struct.s_phy, ptr %phy, i32 0, i32 26
  %98 = ptrtoint ptr %timer0_exp.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %timer0_exp.i, align 4
  %pcm_timer0.i = getelementptr inbounds %struct.s_phy, ptr %phy, i32 0, i32 23
  %np.i = getelementptr inbounds %struct.s_phy, ptr %phy, i32 0, i32 1
  %99 = ptrtoint ptr %np.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %np.i, align 4
  %conv.i = zext i8 %100 to i32
  %add.i = shl nuw nsw i32 %conv.i, 16
  %or.i = add nuw nsw i32 %add.i, 327704
  tail call void @smt_timer_start(ptr noundef %smc, ptr noundef %pcm_timer0.i, i32 noundef %95, i32 noundef %or.i) #8
  br label %if.end284

if.end284:                                        ; preds = %if.then281, %sw.epilog.if.end284_crit_edge
  %pcm_t_next_9 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 14
  %101 = ptrtoint ptr %pcm_t_next_9 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pcm_t_next_9, align 4
  %arrayidx288 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 22, i32 9
  %103 = ptrtoint ptr %arrayidx288 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %arrayidx288, align 4
  br label %sw.epilog338

sw.bb289:                                         ; preds = %entry
  %arrayidx291 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 20, i32 6
  %104 = ptrtoint ptr %arrayidx291 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx291, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool292.not = icmp eq i8 %105, 0
  br i1 %tobool292.not, label %sw.bb289.if.end294_crit_edge, label %if.then293

sw.bb289.if.end294_crit_edge:                     ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end294

if.then293:                                       ; preds = %sw.bb289
  call void @__sanitizer_cov_trace_pc() #10
  %cf_loop = getelementptr inbounds %struct.s_phy, ptr %phy, i32 0, i32 3
  %106 = ptrtoint ptr %cf_loop to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %cf_loop, align 2
  br label %if.end294

if.end294:                                        ; preds = %if.then293, %sw.bb289.if.end294_crit_edge
  %td_flag = getelementptr inbounds %struct.s_phy, ptr %phy, i32 0, i32 16
  %107 = ptrtoint ptr %td_flag to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %td_flag, align 4
  br label %sw.epilog338

sw.bb295:                                         ; preds = %entry
  %arrayidx297 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 20, i32 7
  %108 = ptrtoint ptr %arrayidx297 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx297, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool299.not = icmp eq i8 %109, 0
  br i1 %tobool299.not, label %lor.lhs.false300, label %sw.bb295.if.then305_crit_edge

sw.bb295.if.then305_crit_edge:                    ; preds = %sw.bb295
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then305

lor.lhs.false300:                                 ; preds = %sw.bb295
  %arrayidx302 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 21, i32 7
  %110 = ptrtoint ptr %arrayidx302 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx302, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool304.not = icmp eq i8 %111, 0
  br i1 %tobool304.not, label %lor.lhs.false300.sw.epilog338_crit_edge, label %lor.lhs.false300.if.then305_crit_edge

lor.lhs.false300.if.then305_crit_edge:            ; preds = %lor.lhs.false300
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then305

lor.lhs.false300.sw.epilog338_crit_edge:          ; preds = %lor.lhs.false300
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog338

if.then305:                                       ; preds = %lor.lhs.false300.if.then305_crit_edge, %sw.bb295.if.then305_crit_edge
  %np307 = getelementptr inbounds %struct.s_phy, ptr %phy, i32 0, i32 1
  %112 = ptrtoint ptr %np307 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %np307, align 4
  %conv308 = zext i8 %113 to i32
  %add = add nuw nsw i32 %conv308, 5
  tail call void @queue_event(ptr noundef %smc, i32 noundef %add, i32 noundef 1) #8
  br label %sw.epilog338

sw.bb310:                                         ; preds = %entry
  %arrayidx312 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 20, i32 8
  %114 = ptrtoint ptr %arrayidx312 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx312, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool314.not = icmp eq i8 %115, 0
  br i1 %tobool314.not, label %lor.lhs.false315, label %if.then324

lor.lhs.false315:                                 ; preds = %sw.bb310
  %arrayidx317 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 21, i32 8
  %116 = ptrtoint ptr %arrayidx317 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx317, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool319.not = icmp eq i8 %117, 0
  br i1 %tobool319.not, label %lor.lhs.false315.sw.epilog338_crit_edge, label %lor.lhs.false315.if.end326_crit_edge

lor.lhs.false315.if.end326_crit_edge:             ; preds = %lor.lhs.false315
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end326

lor.lhs.false315.sw.epilog338_crit_edge:          ; preds = %lor.lhs.false315
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog338

if.then324:                                       ; preds = %sw.bb310
  call void @__sanitizer_cov_trace_pc() #10
  %cf_loop325 = getelementptr inbounds %struct.s_phy, ptr %phy, i32 0, i32 3
  %118 = ptrtoint ptr %cf_loop325 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 1, ptr %cf_loop325, align 2
  br label %if.end326

if.end326:                                        ; preds = %if.then324, %lor.lhs.false315.if.end326_crit_edge
  %td_flag327 = getelementptr inbounds %struct.s_phy, ptr %phy, i32 0, i32 16
  %119 = ptrtoint ptr %td_flag327 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %td_flag327, align 4
  br label %sw.epilog338

sw.bb329:                                         ; preds = %entry
  %arrayidx331 = getelementptr %struct.s_phy, ptr %phy, i32 0, i32 21, i32 9
  %120 = ptrtoint ptr %arrayidx331 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx331, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool332.not = icmp eq i8 %121, 0
  %R_val336 = getelementptr inbounds %struct.fddi_mib_p, ptr %1, i32 0, i32 3, i32 1
  br i1 %tobool332.not, label %if.else334, label %if.then333

if.then333:                                       ; preds = %sw.bb329
  call void @__sanitizer_cov_trace_pc() #10
  %122 = ptrtoint ptr %R_val336 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %R_val336, align 1
  br label %sw.epilog338

if.else334:                                       ; preds = %sw.bb329
  call void @__sanitizer_cov_trace_pc() #10
  %123 = ptrtoint ptr %R_val336 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %R_val336, align 1
  br label %sw.epilog338

sw.epilog338.critedge:                            ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  %twisted.c = getelementptr inbounds %struct.s_phy, ptr %phy, i32 0, i32 19
  %124 = ptrtoint ptr %twisted.c to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %twisted.c, align 1
  br label %sw.epilog338

sw.epilog338:                                     ; preds = %sw.epilog338.critedge, %if.else334, %if.then333, %if.end326, %lor.lhs.false315.sw.epilog338_crit_edge, %if.then305, %lor.lhs.false300.sw.epilog338_crit_edge, %if.end294, %if.end284, %land.rhs, %if.then48, %land.lhs.true42.sw.epilog338_crit_edge, %if.then34, %if.then20, %land.lhs.true14.sw.epilog338_crit_edge, %if.then, %sw.bb2.sw.epilog338_crit_edge, %entry.sw.epilog338_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sm_ph_lem_start(ptr nocapture noundef %smc, i32 noundef %np, i32 noundef %threshold) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lem_on = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 31, i32 2
  %0 = ptrtoint ptr %lem_on to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 1, ptr %lem_on, align 4
  %lem_errors = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %np, i32 31, i32 1
  %1 = ptrtoint ptr %lem_errors to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %lem_errors, align 4
  %conv = trunc i32 %threshold to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %np)
  %cmp = icmp eq i32 %np, 0
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %3, i32 1556
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %4) #8, !srcloc !28
  %5 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw, align 8
  %add.ptr11 = getelementptr i8, ptr %6, i32 1640
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  br label %cond.end28

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr5 = getelementptr i8, ptr %3, i32 916
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5, i16 %8) #8, !srcloc !28
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 8
  %add.ptr15 = getelementptr i8, ptr %10, i32 1000
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr15) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false, %cond.true
  %.sink59 = phi i32 [ 904, %cond.false ], [ 1544, %cond.true ]
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 8
  %add.ptr27 = getelementptr i8, ptr %13, i32 %.sink59
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr27) #8, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !30
  %hw40 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %15 = ptrtoint ptr %hw40 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw40, align 8
  %add.ptr42 = getelementptr i8, ptr %16, i32 %.sink59
  %17 = or i16 %14, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr42, i16 %17) #8, !srcloc !28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_timer_stop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_status_indication(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @all_selection_criteria(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_timer_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !11, !13, !15, !16, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/fddi/skfp/pcmplc.c", i32 1689, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @plc_irq._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @plc_irq._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"plcs_control_c_s", i1 false, i1 false}
!8 = !{!"../drivers/net/fddi/skfp/pcmplc.c", i32 126, i32 21}
!9 = distinct !{null, !10, !"plcs_control_c_u", i1 false, i1 false}
!10 = !{!"../drivers/net/fddi/skfp/pcmplc.c", i32 125, i32 21}
!11 = distinct !{null, !12, !"pltm", i1 false, i1 false}
!12 = !{!"../drivers/net/fddi/skfp/pcmplc.c", i32 159, i32 3}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/fddi/skfp/pcmplc.c", i32 1018, i32 3}
!15 = !{ptr @pcm_fsm._entry, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @pcm_fsm._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 2148925260}
!28 = !{i64 735409}
!29 = !{i64 735609}
!30 = !{i64 2148923843}
