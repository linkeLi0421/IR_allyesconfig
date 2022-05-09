; ModuleID = '/llk/IR_all_yes/drivers/net/fddi/skfp/rmt.c_pt.bc'
source_filename = "../drivers/net/fddi/skfp/rmt.c"
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

@rmt_fsm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016SMT PANIC: code: %d, msg: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rmt_fsm\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/net/fddi/skfp/rmt.c\00", [36 x i8] zeroinitializer }, align 32
@rmt_fsm._entry_ptr = internal global ptr @rmt_fsm._entry, section ".printk_index", align 4
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RMT : invalid state\00", [44 x i8] zeroinitializer }, align 32
@rmt_new_dup_actions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rmt_new_dup_actions\00", [44 x i8] zeroinitializer }, align 32
@rmt_new_dup_actions._entry_ptr = internal global ptr @rmt_new_dup_actions._entry, section ".printk_index", align 4
@.str.5 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"RMT: duplicate MAC address detected. Ring NOT left!\00", [44 x i8] zeroinitializer }, align 32
@rmt_new_dup_actions._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rmt_new_dup_actions._entry_ptr.7 = internal global ptr @rmt_new_dup_actions._entry.6, section ".printk_index", align 4
@.str.8 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"RMT: duplicate MAC address detected. Ring left!\00", [48 x i8] zeroinitializer }, align 32
@rmt_dup_actions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.9, ptr @.str.2, i32 527, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rmt_dup_actions\00", [16 x i8] zeroinitializer }, align 32
@rmt_dup_actions._entry_ptr = internal global ptr @rmt_dup_actions._entry, section ".printk_index", align 4
@rmt_dup_actions._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.9, ptr @.str.2, i32 531, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rmt_dup_actions._entry_ptr.11 = internal global ptr @rmt_dup_actions._entry.10, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 16]
@__sancov_gen_cov_switch_values.12 = internal global [18 x i64] [i64 16, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 12]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 11]
@__sancov_gen_cov_switch_values.15 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 3, i64 4, i64 5, i64 6, i64 7, i64 13, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.16 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 3, i64 4, i64 6, i64 13, i64 14]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 15, i64 17]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 512, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 561, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 565, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 527, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private constant [31 x i8] c"../drivers/net/fddi/skfp/rmt.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 531, i32 4 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @rmt_dup_actions._entry, ptr @rmt_dup_actions._entry.10, ptr @rmt_dup_actions._entry_ptr, ptr @rmt_dup_actions._entry_ptr.11, ptr @rmt_fsm._entry, ptr @rmt_fsm._entry_ptr, ptr @rmt_new_dup_actions._entry, ptr @rmt_new_dup_actions._entry.6, ptr @rmt_new_dup_actions._entry_ptr, ptr @rmt_new_dup_actions._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmt_fsm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmt_new_dup_actions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmt_new_dup_actions._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmt_dup_actions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmt_dup_actions._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @rmt_init(ptr nocapture noundef writeonly %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fddiMACRMTState = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 52
  %0 = ptrtoint ptr %fddiMACRMTState to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 16, ptr %fddiMACRMTState, align 4
  %r = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5
  %fddiMACMA_UnitdataAvailable = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 57
  %1 = ptrtoint ptr %fddiMACMA_UnitdataAvailable to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %fddiMACMA_UnitdataAvailable, align 2
  %bn_flag = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5, i32 5
  %2 = ptrtoint ptr %bn_flag to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %bn_flag, align 1
  %jm_flag = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5, i32 6
  %3 = ptrtoint ptr %jm_flag to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %jm_flag, align 2
  %no_flag = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5, i32 4
  %4 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %r, align 4
  %5 = ptrtoint ptr %no_flag to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %no_flag, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rmt(ptr noundef %smc, i32 noundef %event) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fddiMACRMTState = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 52
  %r.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5
  %rm_join.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5, i32 7
  %rm_loop.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5, i32 8
  %tm_active.i836.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5, i32 10, i32 4
  %rmt_timer0.i838.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5, i32 10
  %tm_active.i841.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5, i32 11, i32 4
  %rmt_timer1.i843.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5, i32 11
  %tm_active.i846.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5, i32 12, i32 4
  %rmt_timer2.i848.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5, i32 12
  %trace_prop.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 4, i32 4
  %da_flag514.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5, i32 1
  %bn_flag518.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5, i32 5
  %rmt_t_poll505.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 26
  %timer2_exp.i834.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5, i32 15
  %rmt_t_direct.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 23
  %timer0_exp.i825.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5, i32 13
  %ring_status487.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 11, i32 5
  %jm_flag.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5, i32 6
  %no_flag418.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5, i32 4
  %rmt_dup_mac_behavior.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 27
  %rmt_t_stuck402.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 22
  %timer1_exp.i808.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5, i32 14
  %rmt_t_announce.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 25
  %mac_d_max235.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 28
  %fddiMACMA_UnitdataEnable174.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 59
  %fddiMACMA_UnitdataAvailable185.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 57
  %loop_avail156.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5, i32 2
  %sm_ma_avail110.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5, i32 3
  %rmt_t_non_op.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 21
  %0 = ptrtoint ptr %fddiMACRMTState to i32
  call void @__asan_load2_noabort(i32 %0)
  %.pr = load i16, ptr %fddiMACRMTState, align 4
  br label %do.body

do.body:                                          ; preds = %rmt_fsm.exit.do.body_crit_edge, %entry
  %1 = phi i16 [ %239, %rmt_fsm.exit.do.body_crit_edge ], [ %.pr, %entry ]
  %event.addr.0 = phi i32 [ 0, %rmt_fsm.exit.do.body_crit_edge ], [ %event, %entry ]
  %2 = ptrtoint ptr %rm_join.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rm_join.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.body.if.end.i_crit_edge

do.body.if.end.i_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %do.body
  %4 = ptrtoint ptr %rm_loop.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rm_loop.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not.i = icmp eq i8 %5, 0
  br i1 %tobool2.not.i, label %land.lhs.true3.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %6 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %if.then.i [
    i16 16, label %land.lhs.true3.i.sw.bb.i_crit_edge
    i16 0, label %land.lhs.true3.i.rmt_fsm.exit_crit_edge
  ]

land.lhs.true3.i.rmt_fsm.exit_crit_edge:          ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rmt_fsm.exit

land.lhs.true3.i.sw.bb.i_crit_edge:               ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %ring_status487.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ring_status487.i, align 4
  %9 = or i16 %8, 32
  store i16 %9, ptr %ring_status487.i, align 4
  %conv15.i = zext i16 %9 to i32
  tail call void @ring_status_indication(ptr noundef %smc, i32 noundef %conv15.i) #4
  tail call void @rmt_indication(ptr noundef %smc, i32 noundef 0) #4
  %10 = ptrtoint ptr %fddiMACRMTState to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 16, ptr %fddiMACRMTState, align 4
  br label %rmt_fsm.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %do.body.if.end.i_crit_edge
  %11 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %1, label %do.end.i [
    i16 16, label %if.end.i.sw.bb.i_crit_edge
    i16 0, label %sw.bb37.i
    i16 17, label %sw.bb52.i
    i16 1, label %sw.bb69.i
    i16 18, label %sw.bb95.i
    i16 2, label %sw.bb147.i
    i16 19, label %sw.bb207.i
    i16 3, label %sw.bb219.i
    i16 20, label %sw.bb339.i
    i16 4, label %sw.bb353.i
    i16 21, label %sw.bb447.i
    i16 5, label %sw.bb456.i
    i16 22, label %sw.bb482.i
    i16 6, label %sw.bb500.i
    i16 23, label %sw.bb552.i
    i16 7, label %if.end.i.rmt_fsm.exit_crit_edge
  ]

if.end.i.rmt_fsm.exit_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rmt_fsm.exit

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %land.lhs.true3.i.sw.bb.i_crit_edge
  %12 = ptrtoint ptr %tm_active.i836.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %tm_active.i836.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i.i = icmp eq i16 %13, 0
  br i1 %tobool.not.i.i, label %sw.bb.i.stop_rmt_timer0.exit.i_crit_edge, label %if.then.i.i

sw.bb.i.stop_rmt_timer0.exit.i_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stop_rmt_timer0.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @smt_timer_stop(ptr noundef %smc, ptr noundef %rmt_timer0.i838.i) #4
  br label %stop_rmt_timer0.exit.i

stop_rmt_timer0.exit.i:                           ; preds = %if.then.i.i, %sw.bb.i.stop_rmt_timer0.exit.i_crit_edge
  %14 = ptrtoint ptr %tm_active.i841.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %tm_active.i841.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.i759.i = icmp eq i16 %15, 0
  br i1 %tobool.not.i759.i, label %stop_rmt_timer0.exit.i.stop_rmt_timer1.exit.i_crit_edge, label %if.then.i760.i

stop_rmt_timer0.exit.i.stop_rmt_timer1.exit.i_crit_edge: ; preds = %stop_rmt_timer0.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stop_rmt_timer1.exit.i

if.then.i760.i:                                   ; preds = %stop_rmt_timer0.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @smt_timer_stop(ptr noundef %smc, ptr noundef %rmt_timer1.i843.i) #4
  br label %stop_rmt_timer1.exit.i

stop_rmt_timer1.exit.i:                           ; preds = %if.then.i760.i, %stop_rmt_timer0.exit.i.stop_rmt_timer1.exit.i_crit_edge
  %16 = ptrtoint ptr %tm_active.i846.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %tm_active.i846.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i762.i = icmp eq i16 %17, 0
  br i1 %tobool.not.i762.i, label %stop_rmt_timer1.exit.i.stop_rmt_timer2.exit.i_crit_edge, label %if.then.i763.i

stop_rmt_timer1.exit.i.stop_rmt_timer2.exit.i_crit_edge: ; preds = %stop_rmt_timer1.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stop_rmt_timer2.exit.i

if.then.i763.i:                                   ; preds = %stop_rmt_timer1.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @smt_timer_stop(ptr noundef %smc, ptr noundef %rmt_timer2.i848.i) #4
  br label %stop_rmt_timer2.exit.i

stop_rmt_timer2.exit.i:                           ; preds = %if.then.i763.i, %stop_rmt_timer1.exit.i.stop_rmt_timer2.exit.i_crit_edge
  tail call void @sm_ma_control(ptr noundef %smc, i32 noundef 5) #4
  %18 = ptrtoint ptr %fddiMACMA_UnitdataAvailable185.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %fddiMACMA_UnitdataAvailable185.i, align 2
  %19 = ptrtoint ptr %loop_avail156.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %loop_avail156.i, align 2
  %20 = ptrtoint ptr %sm_ma_avail110.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %sm_ma_avail110.i, align 1
  %21 = ptrtoint ptr %no_flag418.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %no_flag418.i, align 4
  %22 = ptrtoint ptr %fddiMACRMTState to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %fddiMACRMTState, align 4
  %24 = and i16 %23, -17
  store i16 %24, ptr %fddiMACRMTState, align 4
  br label %rmt_fsm.exit

sw.bb37.i:                                        ; preds = %if.end.i
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %sw.bb37.i.if.then46.i_crit_edge

sw.bb37.i.if.then46.i_crit_edge:                  ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then46.i

lor.lhs.false.i:                                  ; preds = %sw.bb37.i
  %25 = ptrtoint ptr %rm_loop.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %.pr53 = load i8, ptr %rm_loop.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr53)
  %tobool45.not.i = icmp eq i8 %.pr53, 0
  br i1 %tobool45.not.i, label %lor.lhs.false.i.rmt_fsm.exit_crit_edge, label %lor.lhs.false.i.if.then46.i_crit_edge

lor.lhs.false.i.if.then46.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then46.i

lor.lhs.false.i.rmt_fsm.exit_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rmt_fsm.exit

if.then46.i:                                      ; preds = %lor.lhs.false.i.if.then46.i_crit_edge, %sw.bb37.i.if.then46.i_crit_edge
  tail call void @sm_ma_control(ptr noundef %smc, i32 noundef 0) #4
  %26 = ptrtoint ptr %fddiMACRMTState to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 17, ptr %fddiMACRMTState, align 4
  br label %rmt_fsm.exit

sw.bb52.i:                                        ; preds = %if.end.i
  %27 = ptrtoint ptr %rmt_t_non_op.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rmt_t_non_op.i, align 4
  %29 = ptrtoint ptr %timer0_exp.i825.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %timer0_exp.i825.i, align 4
  tail call void @smt_timer_start(ptr noundef %smc, ptr noundef %rmt_timer0.i838.i, i32 noundef %28, i32 noundef 196620) #4
  %30 = ptrtoint ptr %tm_active.i841.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %tm_active.i841.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not.i766.i = icmp eq i16 %31, 0
  br i1 %tobool.not.i766.i, label %sw.bb52.i.stop_rmt_timer1.exit769.i_crit_edge, label %if.then.i768.i

sw.bb52.i.stop_rmt_timer1.exit769.i_crit_edge:    ; preds = %sw.bb52.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stop_rmt_timer1.exit769.i

if.then.i768.i:                                   ; preds = %sw.bb52.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @smt_timer_stop(ptr noundef %smc, ptr noundef %rmt_timer1.i843.i) #4
  br label %stop_rmt_timer1.exit769.i

stop_rmt_timer1.exit769.i:                        ; preds = %if.then.i768.i, %sw.bb52.i.stop_rmt_timer1.exit769.i_crit_edge
  %32 = ptrtoint ptr %tm_active.i846.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %tm_active.i846.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool.not.i771.i = icmp eq i16 %33, 0
  br i1 %tobool.not.i771.i, label %stop_rmt_timer1.exit769.i.stop_rmt_timer2.exit774.i_crit_edge, label %if.then.i773.i

stop_rmt_timer1.exit769.i.stop_rmt_timer2.exit774.i_crit_edge: ; preds = %stop_rmt_timer1.exit769.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stop_rmt_timer2.exit774.i

if.then.i773.i:                                   ; preds = %stop_rmt_timer1.exit769.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @smt_timer_stop(ptr noundef %smc, ptr noundef %rmt_timer2.i848.i) #4
  br label %stop_rmt_timer2.exit774.i

stop_rmt_timer2.exit774.i:                        ; preds = %if.then.i773.i, %stop_rmt_timer1.exit769.i.stop_rmt_timer2.exit774.i_crit_edge
  tail call void @sm_ma_control(ptr noundef %smc, i32 noundef 1) #4
  %34 = ptrtoint ptr %ring_status487.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %ring_status487.i, align 4
  %36 = or i16 %35, 32
  store i16 %36, ptr %ring_status487.i, align 4
  %conv59.i = zext i16 %36 to i32
  tail call void @ring_status_indication(ptr noundef %smc, i32 noundef %conv59.i) #4
  %37 = ptrtoint ptr %sm_ma_avail110.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %sm_ma_avail110.i, align 1
  tail call void @rmt_indication(ptr noundef %smc, i32 noundef 0) #4
  %38 = ptrtoint ptr %fddiMACRMTState to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %fddiMACRMTState, align 4
  %40 = and i16 %39, -17
  store i16 %40, ptr %fddiMACRMTState, align 4
  br label %rmt_fsm.exit

sw.bb69.i:                                        ; preds = %if.end.i
  %41 = zext i32 %event.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %event.addr.0, label %sw.bb69.i.rmt_fsm.exit_crit_edge [
    i32 1, label %if.then72.i
    i32 12, label %if.then85.i
  ]

sw.bb69.i.rmt_fsm.exit_crit_edge:                 ; preds = %sw.bb69.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rmt_fsm.exit

if.then72.i:                                      ; preds = %sw.bb69.i
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %ring_status487.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %ring_status487.i, align 4
  %44 = or i16 %43, 2
  store i16 %44, ptr %ring_status487.i, align 4
  %conv78.i = zext i16 %44 to i32
  tail call void @ring_status_indication(ptr noundef %smc, i32 noundef %conv78.i) #4
  %45 = ptrtoint ptr %fddiMACRMTState to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 18, ptr %fddiMACRMTState, align 4
  br label %rmt_fsm.exit

if.then85.i:                                      ; preds = %sw.bb69.i
  call void @__sanitizer_cov_trace_pc() #6
  %46 = ptrtoint ptr %bn_flag518.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %bn_flag518.i, align 1
  %47 = ptrtoint ptr %no_flag418.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %no_flag418.i, align 4
  %48 = ptrtoint ptr %fddiMACRMTState to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 19, ptr %fddiMACRMTState, align 4
  br label %rmt_fsm.exit

sw.bb95.i:                                        ; preds = %if.end.i
  %49 = ptrtoint ptr %tm_active.i836.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %tm_active.i836.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool.not.i776.i = icmp eq i16 %50, 0
  br i1 %tobool.not.i776.i, label %sw.bb95.i.stop_rmt_timer0.exit779.i_crit_edge, label %if.then.i778.i

sw.bb95.i.stop_rmt_timer0.exit779.i_crit_edge:    ; preds = %sw.bb95.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stop_rmt_timer0.exit779.i

if.then.i778.i:                                   ; preds = %sw.bb95.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @smt_timer_stop(ptr noundef %smc, ptr noundef %rmt_timer0.i838.i) #4
  br label %stop_rmt_timer0.exit779.i

stop_rmt_timer0.exit779.i:                        ; preds = %if.then.i778.i, %sw.bb95.i.stop_rmt_timer0.exit779.i_crit_edge
  %51 = ptrtoint ptr %tm_active.i841.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %tm_active.i841.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool.not.i781.i = icmp eq i16 %52, 0
  br i1 %tobool.not.i781.i, label %stop_rmt_timer0.exit779.i.stop_rmt_timer1.exit784.i_crit_edge, label %if.then.i783.i

stop_rmt_timer0.exit779.i.stop_rmt_timer1.exit784.i_crit_edge: ; preds = %stop_rmt_timer0.exit779.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stop_rmt_timer1.exit784.i

if.then.i783.i:                                   ; preds = %stop_rmt_timer0.exit779.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @smt_timer_stop(ptr noundef %smc, ptr noundef %rmt_timer1.i843.i) #4
  br label %stop_rmt_timer1.exit784.i

stop_rmt_timer1.exit784.i:                        ; preds = %if.then.i783.i, %stop_rmt_timer0.exit779.i.stop_rmt_timer1.exit784.i_crit_edge
  %53 = ptrtoint ptr %tm_active.i846.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %tm_active.i846.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool.not.i786.i = icmp eq i16 %54, 0
  br i1 %tobool.not.i786.i, label %stop_rmt_timer1.exit784.i.stop_rmt_timer2.exit789.i_crit_edge, label %if.then.i788.i

stop_rmt_timer1.exit784.i.stop_rmt_timer2.exit789.i_crit_edge: ; preds = %stop_rmt_timer1.exit784.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stop_rmt_timer2.exit789.i

if.then.i788.i:                                   ; preds = %stop_rmt_timer1.exit784.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @smt_timer_stop(ptr noundef %smc, ptr noundef %rmt_timer2.i848.i) #4
  br label %stop_rmt_timer2.exit789.i

stop_rmt_timer2.exit789.i:                        ; preds = %if.then.i788.i, %stop_rmt_timer1.exit784.i.stop_rmt_timer2.exit789.i_crit_edge
  %55 = ptrtoint ptr %no_flag418.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %no_flag418.i, align 4
  %56 = ptrtoint ptr %rm_loop.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %rm_loop.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool100.not.i = icmp eq i8 %57, 0
  br i1 %tobool100.not.i, label %stop_rmt_timer2.exit789.i.if.end104.i_crit_edge, label %if.then101.i

stop_rmt_timer2.exit789.i.if.end104.i_crit_edge:  ; preds = %stop_rmt_timer2.exit789.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end104.i

if.then101.i:                                     ; preds = %stop_rmt_timer2.exit789.i
  call void @__sanitizer_cov_trace_pc() #6
  %58 = ptrtoint ptr %loop_avail156.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %loop_avail156.i, align 2
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.then101.i, %stop_rmt_timer2.exit789.i.if.end104.i_crit_edge
  %59 = ptrtoint ptr %rm_join.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %rm_join.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool107.not.i = icmp eq i8 %60, 0
  br i1 %tobool107.not.i, label %if.end104.i.if.end126.i_crit_edge, label %if.then108.i

if.end104.i.if.end126.i_crit_edge:                ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end126.i

if.then108.i:                                     ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #6
  %61 = ptrtoint ptr %sm_ma_avail110.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %sm_ma_avail110.i, align 1
  %62 = ptrtoint ptr %fddiMACMA_UnitdataEnable174.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %fddiMACMA_UnitdataEnable174.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool114.not.i = icmp ne i8 %63, 0
  %..i = zext i1 %tobool114.not.i to i8
  %64 = ptrtoint ptr %fddiMACMA_UnitdataAvailable185.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %..i, ptr %fddiMACMA_UnitdataAvailable185.i, align 2
  br label %if.end126.i

if.end126.i:                                      ; preds = %if.then108.i, %if.end104.i.if.end126.i_crit_edge
  %65 = ptrtoint ptr %ring_status487.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %ring_status487.i, align 4
  %67 = and i16 %66, -33
  store i16 %67, ptr %ring_status487.i, align 4
  %conv133.i = zext i16 %67 to i32
  tail call void @ring_status_indication(ptr noundef %smc, i32 noundef %conv133.i) #4
  %68 = ptrtoint ptr %ring_status487.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %ring_status487.i, align 4
  %70 = or i16 %69, 2
  store i16 %70, ptr %ring_status487.i, align 4
  %conv139.i = zext i16 %70 to i32
  tail call void @ring_status_indication(ptr noundef %smc, i32 noundef %conv139.i) #4
  tail call void @rmt_indication(ptr noundef %smc, i32 noundef 1) #4
  tail call void @smt_stat_counter(ptr noundef %smc, i32 noundef 0) #4
  %71 = ptrtoint ptr %fddiMACRMTState to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %fddiMACRMTState, align 4
  %73 = and i16 %72, -17
  store i16 %73, ptr %fddiMACRMTState, align 4
  br label %rmt_fsm.exit

sw.bb147.i:                                       ; preds = %if.end.i
  %74 = zext i32 %event.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %event.addr.0, label %if.else187.i [
    i32 2, label %if.then150.i
    i32 11, label %if.then170.i
  ]

if.then150.i:                                     ; preds = %sw.bb147.i
  call void @__sanitizer_cov_trace_pc() #6
  %75 = ptrtoint ptr %fddiMACMA_UnitdataAvailable185.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %fddiMACMA_UnitdataAvailable185.i, align 2
  %76 = ptrtoint ptr %loop_avail156.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %loop_avail156.i, align 2
  %77 = ptrtoint ptr %ring_status487.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %ring_status487.i, align 4
  %79 = or i16 %78, 2
  store i16 %79, ptr %ring_status487.i, align 4
  %conv162.i = zext i16 %79 to i32
  tail call void @ring_status_indication(ptr noundef %smc, i32 noundef %conv162.i) #4
  %80 = ptrtoint ptr %fddiMACRMTState to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 17, ptr %fddiMACRMTState, align 4
  br label %rmt_fsm.exit

if.then170.i:                                     ; preds = %sw.bb147.i
  %81 = ptrtoint ptr %fddiMACMA_UnitdataEnable174.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %fddiMACMA_UnitdataEnable174.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool175.not.i = icmp eq i8 %82, 0
  br i1 %tobool175.not.i, label %if.else181.i, label %if.then176.i

if.then176.i:                                     ; preds = %if.then170.i
  call void @__sanitizer_cov_trace_pc() #6
  %83 = ptrtoint ptr %fddiMACMA_UnitdataAvailable185.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %fddiMACMA_UnitdataAvailable185.i, align 2
  br label %rmt_fsm.exit

if.else181.i:                                     ; preds = %if.then170.i
  call void @__sanitizer_cov_trace_pc() #6
  %84 = ptrtoint ptr %fddiMACMA_UnitdataAvailable185.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %fddiMACMA_UnitdataAvailable185.i, align 2
  br label %rmt_fsm.exit

if.else187.i:                                     ; preds = %sw.bb147.i
  %85 = ptrtoint ptr %r.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %r.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %86)
  %cmp190.i = icmp eq i8 %86, 2
  br i1 %cmp190.i, label %if.then192.i, label %if.else187.i.rmt_fsm.exit_crit_edge

if.else187.i.rmt_fsm.exit_crit_edge:              ; preds = %if.else187.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rmt_fsm.exit

if.then192.i:                                     ; preds = %if.else187.i
  call void @__sanitizer_cov_trace_pc() #6
  %87 = ptrtoint ptr %fddiMACMA_UnitdataAvailable185.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %fddiMACMA_UnitdataAvailable185.i, align 2
  %88 = ptrtoint ptr %loop_avail156.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %loop_avail156.i, align 2
  %89 = ptrtoint ptr %da_flag514.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 1, ptr %da_flag514.i, align 1
  %90 = ptrtoint ptr %fddiMACRMTState to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 21, ptr %fddiMACRMTState, align 4
  br label %rmt_fsm.exit

sw.bb207.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %91 = ptrtoint ptr %mac_d_max235.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %mac_d_max235.i, align 4
  %mul.i = shl i32 %92, 1
  %93 = ptrtoint ptr %timer0_exp.i825.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %timer0_exp.i825.i, align 4
  tail call void @smt_timer_start(ptr noundef %smc, ptr noundef %rmt_timer0.i838.i, i32 noundef %mul.i, i32 noundef 196624) #4
  %94 = ptrtoint ptr %rmt_t_stuck402.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rmt_t_stuck402.i, align 4
  %96 = ptrtoint ptr %timer1_exp.i808.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %timer1_exp.i808.i, align 1
  tail call void @smt_timer_start(ptr noundef %smc, ptr noundef %rmt_timer1.i843.i, i32 noundef %95, i32 noundef 196621) #4
  %97 = ptrtoint ptr %rmt_t_poll505.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %rmt_t_poll505.i, align 4
  %99 = ptrtoint ptr %timer2_exp.i834.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %timer2_exp.i834.i, align 2
  tail call void @smt_timer_start(ptr noundef %smc, ptr noundef %rmt_timer2.i848.i, i32 noundef %98, i32 noundef 196625) #4
  tail call void @sm_mac_check_beacon_claim(ptr noundef %smc) #4
  %100 = ptrtoint ptr %fddiMACRMTState to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %fddiMACRMTState, align 4
  %102 = and i16 %101, -17
  store i16 %102, ptr %fddiMACRMTState, align 4
  br label %rmt_fsm.exit

sw.bb219.i:                                       ; preds = %if.end.i
  %103 = zext i32 %event.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %event.addr.0, label %sw.bb219.i.rmt_fsm.exit_crit_edge [
    i32 17, label %if.then222.i
    i32 16, label %if.then228.i
    i32 18, label %if.then233.i
    i32 1, label %if.then240.i
    i32 4, label %sw.bb219.i.land.lhs.true251.i_crit_edge
    i32 3, label %sw.bb219.i.land.lhs.true251.i_crit_edge55
    i32 6, label %land.lhs.true262.i
    i32 5, label %land.lhs.true283.i
    i32 7, label %if.then309.i
    i32 13, label %land.lhs.true317.i
  ]

sw.bb219.i.land.lhs.true251.i_crit_edge55:        ; preds = %sw.bb219.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true251.i

sw.bb219.i.land.lhs.true251.i_crit_edge:          ; preds = %sw.bb219.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true251.i

sw.bb219.i.rmt_fsm.exit_crit_edge:                ; preds = %sw.bb219.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rmt_fsm.exit

if.then222.i:                                     ; preds = %sw.bb219.i
  call void @__sanitizer_cov_trace_pc() #6
  %104 = ptrtoint ptr %rmt_t_poll505.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %rmt_t_poll505.i, align 4
  %106 = ptrtoint ptr %timer2_exp.i834.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %timer2_exp.i834.i, align 2
  tail call void @smt_timer_start(ptr noundef %smc, ptr noundef %rmt_timer2.i848.i, i32 noundef %105, i32 noundef 196625) #4
  tail call void @sm_mac_check_beacon_claim(ptr noundef %smc) #4
  br label %rmt_fsm.exit

if.then228.i:                                     ; preds = %sw.bb219.i
  call void @__sanitizer_cov_trace_pc() #6
  %107 = ptrtoint ptr %timer0_exp.i825.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %timer0_exp.i825.i, align 4
  br label %rmt_fsm.exit

if.then233.i:                                     ; preds = %sw.bb219.i
  call void @__sanitizer_cov_trace_pc() #6
  %108 = ptrtoint ptr %mac_d_max235.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %mac_d_max235.i, align 4
  %mul236.i = shl i32 %109, 1
  %110 = ptrtoint ptr %timer0_exp.i825.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %timer0_exp.i825.i, align 4
  tail call void @smt_timer_start(ptr noundef %smc, ptr noundef %rmt_timer0.i838.i, i32 noundef %mul236.i, i32 noundef 196624) #4
  br label %rmt_fsm.exit

if.then240.i:                                     ; preds = %sw.bb219.i
  call void @__sanitizer_cov_trace_pc() #6
  %111 = ptrtoint ptr %fddiMACRMTState to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 18, ptr %fddiMACRMTState, align 4
  br label %rmt_fsm.exit

land.lhs.true251.i:                               ; preds = %sw.bb219.i.land.lhs.true251.i_crit_edge, %sw.bb219.i.land.lhs.true251.i_crit_edge55
  %112 = ptrtoint ptr %bn_flag518.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %bn_flag518.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool255.not.i = icmp eq i8 %113, 0
  br i1 %tobool255.not.i, label %if.else259.i, label %if.then256.i

if.then256.i:                                     ; preds = %land.lhs.true251.i
  call void @__sanitizer_cov_trace_pc() #6
  %114 = ptrtoint ptr %bn_flag518.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %bn_flag518.i, align 1
  br label %rmt_fsm.exit

if.else259.i:                                     ; preds = %land.lhs.true251.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %event.addr.0)
  %cond.i = icmp eq i32 %event.addr.0, 3
  br i1 %cond.i, label %land.lhs.true296.i, label %if.else259.i.rmt_fsm.exit_crit_edge

if.else259.i.rmt_fsm.exit_crit_edge:              ; preds = %if.else259.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rmt_fsm.exit

land.lhs.true262.i:                               ; preds = %sw.bb219.i
  %115 = ptrtoint ptr %bn_flag518.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %bn_flag518.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool265.not.i = icmp eq i8 %116, 0
  br i1 %tobool265.not.i, label %if.then266.i, label %land.lhs.true262.i.rmt_fsm.exit_crit_edge

land.lhs.true262.i.rmt_fsm.exit_crit_edge:        ; preds = %land.lhs.true262.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rmt_fsm.exit

if.then266.i:                                     ; preds = %land.lhs.true262.i
  %call.i = tail call i32 @sm_mac_get_tx_state(ptr noundef %smc) #4
  %117 = and i32 %call.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %117)
  %switch.i = icmp eq i32 %117, 4
  br i1 %switch.i, label %if.then272.i, label %if.then266.i.rmt_fsm.exit_crit_edge

if.then266.i.rmt_fsm.exit_crit_edge:              ; preds = %if.then266.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rmt_fsm.exit

if.then272.i:                                     ; preds = %if.then266.i
  call void @__sanitizer_cov_trace_pc() #6
  %118 = ptrtoint ptr %bn_flag518.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 1, ptr %bn_flag518.i, align 1
  %119 = ptrtoint ptr %rmt_t_stuck402.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %rmt_t_stuck402.i, align 4
  %121 = ptrtoint ptr %timer1_exp.i808.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %timer1_exp.i808.i, align 1
  tail call void @smt_timer_start(ptr noundef %smc, ptr noundef %rmt_timer1.i843.i, i32 noundef %120, i32 noundef 196621) #4
  br label %rmt_fsm.exit

land.lhs.true283.i:                               ; preds = %sw.bb219.i
  %122 = ptrtoint ptr %timer0_exp.i825.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %timer0_exp.i825.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool287.not.i = icmp eq i8 %123, 0
  br i1 %tobool287.not.i, label %land.lhs.true283.i.rmt_fsm.exit_crit_edge, label %if.then288.i

land.lhs.true283.i.rmt_fsm.exit_crit_edge:        ; preds = %land.lhs.true283.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rmt_fsm.exit

if.then288.i:                                     ; preds = %land.lhs.true283.i
  %124 = ptrtoint ptr %da_flag514.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 1, ptr %da_flag514.i, align 1
  %125 = ptrtoint ptr %bn_flag518.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %bn_flag518.i, align 1
  %126 = ptrtoint ptr %jm_flag.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %jm_flag.i, align 2
  %127 = ptrtoint ptr %rmt_dup_mac_behavior.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %rmt_dup_mac_behavior.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool.not.i45 = icmp eq i32 %128, 0
  br i1 %tobool.not.i45, label %do.end4.i49, label %do.end.i47

do.end.i47:                                       ; preds = %if.then288.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @.str.5) #7
  tail call void @queue_event(ptr noundef %smc, i32 noundef 1, i32 noundef 2) #4
  br label %rmt_new_dup_actions.exit52

do.end4.i49:                                      ; preds = %if.then288.i
  call void @__sanitizer_cov_trace_pc() #6
  %call6.i48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 135, ptr noundef nonnull @.str.8) #7
  br label %rmt_new_dup_actions.exit52

rmt_new_dup_actions.exit52:                       ; preds = %do.end4.i49, %do.end.i47
  %.sink.i50 = phi i32 [ 2, %do.end4.i49 ], [ 1, %do.end.i47 ]
  tail call void @queue_event(ptr noundef %smc, i32 noundef 1, i32 noundef %.sink.i50) #4
  %129 = ptrtoint ptr %fddiMACRMTState to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 20, ptr %fddiMACRMTState, align 4
  br label %rmt_fsm.exit

land.lhs.true296.i:                               ; preds = %if.else259.i
  %130 = ptrtoint ptr %timer0_exp.i825.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %timer0_exp.i825.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool300.not.i = icmp eq i8 %131, 0
  br i1 %tobool300.not.i, label %land.lhs.true296.i.rmt_fsm.exit_crit_edge, label %if.then301.i

land.lhs.true296.i.rmt_fsm.exit_crit_edge:        ; preds = %land.lhs.true296.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rmt_fsm.exit

if.then301.i:                                     ; preds = %land.lhs.true296.i
  %132 = ptrtoint ptr %da_flag514.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %da_flag514.i, align 1
  %133 = ptrtoint ptr %bn_flag518.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 0, ptr %bn_flag518.i, align 1
  %134 = ptrtoint ptr %jm_flag.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %jm_flag.i, align 2
  %135 = ptrtoint ptr %rmt_dup_mac_behavior.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %rmt_dup_mac_behavior.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool.not.i33 = icmp eq i32 %136, 0
  br i1 %tobool.not.i33, label %do.end4.i37, label %do.end.i35

do.end.i35:                                       ; preds = %if.then301.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @.str.5) #7
  tail call void @queue_event(ptr noundef %smc, i32 noundef 1, i32 noundef 2) #4
  br label %rmt_new_dup_actions.exit40

do.end4.i37:                                      ; preds = %if.then301.i
  call void @__sanitizer_cov_trace_pc() #6
  %call6.i36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 135, ptr noundef nonnull @.str.8) #7
  br label %rmt_new_dup_actions.exit40

rmt_new_dup_actions.exit40:                       ; preds = %do.end4.i37, %do.end.i35
  %.sink.i38 = phi i32 [ 2, %do.end4.i37 ], [ 1, %do.end.i35 ]
  tail call void @queue_event(ptr noundef %smc, i32 noundef 1, i32 noundef %.sink.i38) #4
  %137 = ptrtoint ptr %fddiMACRMTState to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 20, ptr %fddiMACRMTState, align 4
  br label %rmt_fsm.exit

if.then309.i:                                     ; preds = %sw.bb219.i
  %138 = ptrtoint ptr %da_flag514.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 1, ptr %da_flag514.i, align 1
  %139 = ptrtoint ptr %bn_flag518.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %bn_flag518.i, align 1
  %140 = ptrtoint ptr %jm_flag.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %jm_flag.i, align 2
  %141 = ptrtoint ptr %rmt_dup_mac_behavior.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %rmt_dup_mac_behavior.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool.not.i24 = icmp eq i32 %142, 0
  br i1 %tobool.not.i24, label %do.end4.i, label %do.end.i26

do.end.i26:                                       ; preds = %if.then309.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @.str.5) #7
  tail call void @queue_event(ptr noundef %smc, i32 noundef 1, i32 noundef 2) #4
  br label %rmt_new_dup_actions.exit

do.end4.i:                                        ; preds = %if.then309.i
  call void @__sanitizer_cov_trace_pc() #6
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 135, ptr noundef nonnull @.str.8) #7
  br label %rmt_new_dup_actions.exit

rmt_new_dup_actions.exit:                         ; preds = %do.end4.i, %do.end.i26
  %.sink.i27 = phi i32 [ 2, %do.end4.i ], [ 1, %do.end.i26 ]
  tail call void @queue_event(ptr noundef %smc, i32 noundef 1, i32 noundef %.sink.i27) #4
  %143 = ptrtoint ptr %fddiMACRMTState to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 20, ptr %fddiMACRMTState, align 4
  br label %rmt_fsm.exit

land.lhs.true317.i:                               ; preds = %sw.bb219.i
  br i1 %tobool.not.i, label %land.lhs.true317.i.rmt_fsm.exit_crit_edge, label %land.lhs.true322.i

land.lhs.true317.i.rmt_fsm.exit_crit_edge:        ; preds = %land.lhs.true317.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rmt_fsm.exit

land.lhs.true322.i:                               ; preds = %land.lhs.true317.i
  %144 = ptrtoint ptr %bn_flag518.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %bn_flag518.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool326.not.i = icmp eq i8 %145, 0
  br i1 %tobool326.not.i, label %land.lhs.true322.i.rmt_fsm.exit_crit_edge, label %if.then327.i

land.lhs.true322.i.rmt_fsm.exit_crit_edge:        ; preds = %land.lhs.true322.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rmt_fsm.exit

if.then327.i:                                     ; preds = %land.lhs.true322.i
  call void @__sanitizer_cov_trace_pc() #6
  %146 = ptrtoint ptr %fddiMACRMTState to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 22, ptr %fddiMACRMTState, align 4
  br label %rmt_fsm.exit

sw.bb339.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %147 = ptrtoint ptr %rmt_t_announce.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %rmt_t_announce.i, align 4
  %149 = ptrtoint ptr %timer0_exp.i825.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 0, ptr %timer0_exp.i825.i, align 4
  tail call void @smt_timer_start(ptr noundef %smc, ptr noundef %rmt_timer0.i838.i, i32 noundef %148, i32 noundef 196622) #4
  %150 = ptrtoint ptr %rmt_t_stuck402.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %rmt_t_stuck402.i, align 4
  %152 = ptrtoint ptr %timer1_exp.i808.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 0, ptr %timer1_exp.i808.i, align 1
  tail call void @smt_timer_start(ptr noundef %smc, ptr noundef %rmt_timer1.i843.i, i32 noundef %151, i32 noundef 196621) #4
  %153 = ptrtoint ptr %rmt_t_poll505.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %rmt_t_poll505.i, align 4
  %155 = ptrtoint ptr %timer2_exp.i834.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 0, ptr %timer2_exp.i834.i, align 2
  tail call void @smt_timer_start(ptr noundef %smc, ptr noundef %rmt_timer2.i848.i, i32 noundef %154, i32 noundef 196625) #4
  tail call void @sm_mac_check_beacon_claim(ptr noundef %smc) #4
  %156 = ptrtoint ptr %fddiMACRMTState to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %fddiMACRMTState, align 4
  %158 = and i16 %157, -17
  store i16 %158, ptr %fddiMACRMTState, align 4
  br label %rmt_fsm.exit

sw.bb353.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %event.addr.0)
  %cmp354.i = icmp eq i32 %event.addr.0, 17
  br i1 %cmp354.i, label %if.then356.i, label %if.end359.i

if.then356.i:                                     ; preds = %sw.bb353.i
  call void @__sanitizer_cov_trace_pc() #6
  %159 = ptrtoint ptr %rmt_t_poll505.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %rmt_t_poll505.i, align 4
  %161 = ptrtoint ptr %timer2_exp.i834.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 0, ptr %timer2_exp.i834.i, align 2
  tail call void @smt_timer_start(ptr noundef %smc, ptr noundef %rmt_timer2.i848.i, i32 noundef %160, i32 noundef 196625) #4
  tail call void @sm_mac_check_beacon_claim(ptr noundef %smc) #4
  br label %rmt_fsm.exit

if.end359.i:                                      ; preds = %sw.bb353.i
  %162 = ptrtoint ptr %da_flag514.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %da_flag514.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool362.not.i = icmp eq i8 %163, 0
  br i1 %tobool362.not.i, label %if.then363.i, label %if.else368.i

if.then363.i:                                     ; preds = %if.end359.i
  call void @__sanitizer_cov_trace_pc() #6
  %164 = ptrtoint ptr %fddiMACRMTState to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 17, ptr %fddiMACRMTState, align 4
  br label %rmt_fsm.exit

if.else368.i:                                     ; preds = %if.end359.i
  %165 = zext i32 %event.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %165, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %event.addr.0, label %if.else368.i.rmt_fsm.exit_crit_edge [
    i32 3, label %if.else368.i.land.lhs.true374.i_crit_edge
    i32 4, label %if.else368.i.land.lhs.true374.i_crit_edge56
    i32 6, label %land.lhs.true385.i
    i32 14, label %land.lhs.true408.i
    i32 1, label %if.then416.i
    i32 13, label %land.lhs.true426.i
  ]

if.else368.i.land.lhs.true374.i_crit_edge56:      ; preds = %if.else368.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true374.i

if.else368.i.land.lhs.true374.i_crit_edge:        ; preds = %if.else368.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true374.i

if.else368.i.rmt_fsm.exit_crit_edge:              ; preds = %if.else368.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rmt_fsm.exit

land.lhs.true374.i:                               ; preds = %if.else368.i.land.lhs.true374.i_crit_edge, %if.else368.i.land.lhs.true374.i_crit_edge56
  %166 = ptrtoint ptr %bn_flag518.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %bn_flag518.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool378.not.i = icmp eq i8 %167, 0
  br i1 %tobool378.not.i, label %land.lhs.true374.i.rmt_fsm.exit_crit_edge, label %if.then379.i

land.lhs.true374.i.rmt_fsm.exit_crit_edge:        ; preds = %land.lhs.true374.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rmt_fsm.exit

if.then379.i:                                     ; preds = %land.lhs.true374.i
  call void @__sanitizer_cov_trace_pc() #6
  %168 = ptrtoint ptr %bn_flag518.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 0, ptr %bn_flag518.i, align 1
  br label %rmt_fsm.exit

land.lhs.true385.i:                               ; preds = %if.else368.i
  %169 = ptrtoint ptr %bn_flag518.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %bn_flag518.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool388.not.i = icmp eq i8 %170, 0
  br i1 %tobool388.not.i, label %if.then389.i, label %land.lhs.true385.i.rmt_fsm.exit_crit_edge

land.lhs.true385.i.rmt_fsm.exit_crit_edge:        ; preds = %land.lhs.true385.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rmt_fsm.exit

if.then389.i:                                     ; preds = %land.lhs.true385.i
  %call391.i = tail call i32 @sm_mac_get_tx_state(ptr noundef %smc) #4
  %171 = and i32 %call391.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %171)
  %switch757.i = icmp eq i32 %171, 4
  br i1 %switch757.i, label %if.then397.i, label %if.then389.i.rmt_fsm.exit_crit_edge

if.then389.i.rmt_fsm.exit_crit_edge:              ; preds = %if.then389.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rmt_fsm.exit

if.then397.i:                                     ; preds = %if.then389.i
  call void @__sanitizer_cov_trace_pc() #6
  %172 = ptrtoint ptr %bn_flag518.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 1, ptr %bn_flag518.i, align 1
  %173 = ptrtoint ptr %rmt_t_stuck402.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %rmt_t_stuck402.i, align 4
  %175 = ptrtoint ptr %timer1_exp.i808.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 0, ptr %timer1_exp.i808.i, align 1
  tail call void @smt_timer_start(ptr noundef %smc, ptr noundef %rmt_timer1.i843.i, i32 noundef %174, i32 noundef 196621) #4
  br label %rmt_fsm.exit

land.lhs.true408.i:                               ; preds = %if.else368.i
  %176 = ptrtoint ptr %bn_flag518.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %bn_flag518.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool411.not.i = icmp eq i8 %177, 0
  br i1 %tobool411.not.i, label %if.then412.i, label %land.lhs.true408.i.rmt_fsm.exit_crit_edge

land.lhs.true408.i.rmt_fsm.exit_crit_edge:        ; preds = %land.lhs.true408.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rmt_fsm.exit

if.then412.i:                                     ; preds = %land.lhs.true408.i
  %178 = ptrtoint ptr %jm_flag.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %jm_flag.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool.not.i17 = icmp eq i8 %179, 0
  br i1 %tobool.not.i17, label %if.else.i, label %if.then412.i.rmt_fsm.exit_crit_edge

if.then412.i.rmt_fsm.exit_crit_edge:              ; preds = %if.then412.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rmt_fsm.exit

if.else.i:                                        ; preds = %if.then412.i
  %180 = ptrtoint ptr %rmt_dup_mac_behavior.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %rmt_dup_mac_behavior.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool1.not.i = icmp eq i32 %181, 0
  br i1 %tobool1.not.i, label %do.end5.i, label %do.end.i19

do.end.i19:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 138, ptr noundef nonnull @.str.5) #7
  tail call void @queue_event(ptr noundef %smc, i32 noundef 1, i32 noundef 2) #4
  br label %if.end8.sink.split.i

do.end5.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 135, ptr noundef nonnull @.str.8) #7
  br label %if.end8.sink.split.i

if.end8.sink.split.i:                             ; preds = %do.end5.i, %do.end.i19
  %.sink.i = phi i32 [ 1, %do.end.i19 ], [ 2, %do.end5.i ]
  tail call void @queue_event(ptr noundef %smc, i32 noundef 1, i32 noundef %.sink.i) #4
  br label %rmt_fsm.exit

if.then416.i:                                     ; preds = %if.else368.i
  call void @__sanitizer_cov_trace_pc() #6
  %182 = ptrtoint ptr %no_flag418.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 0, ptr %no_flag418.i, align 4
  %183 = ptrtoint ptr %fddiMACRMTState to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 21, ptr %fddiMACRMTState, align 4
  br label %rmt_fsm.exit

land.lhs.true426.i:                               ; preds = %if.else368.i
  br i1 %tobool.not.i, label %land.lhs.true426.i.rmt_fsm.exit_crit_edge, label %land.lhs.true431.i

land.lhs.true426.i.rmt_fsm.exit_crit_edge:        ; preds = %land.lhs.true426.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rmt_fsm.exit

land.lhs.true431.i:                               ; preds = %land.lhs.true426.i
  %184 = ptrtoint ptr %bn_flag518.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %bn_flag518.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool435.not.i = icmp eq i8 %185, 0
  br i1 %tobool435.not.i, label %land.lhs.true431.i.rmt_fsm.exit_crit_edge, label %if.then436.i

land.lhs.true431.i.rmt_fsm.exit_crit_edge:        ; preds = %land.lhs.true431.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rmt_fsm.exit

if.then436.i:                                     ; preds = %land.lhs.true431.i
  call void @__sanitizer_cov_trace_pc() #6
  %186 = ptrtoint ptr %fddiMACRMTState to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 22, ptr %fddiMACRMTState, align 4
  br label %rmt_fsm.exit

sw.bb447.i:                                       ; preds = %if.end.i
  %187 = ptrtoint ptr %tm_active.i836.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %tm_active.i836.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %188)
  %tobool.not.i811.i = icmp eq i16 %188, 0
  br i1 %tobool.not.i811.i, label %sw.bb447.i.stop_rmt_timer0.exit814.i_crit_edge, label %if.then.i813.i

sw.bb447.i.stop_rmt_timer0.exit814.i_crit_edge:   ; preds = %sw.bb447.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stop_rmt_timer0.exit814.i

if.then.i813.i:                                   ; preds = %sw.bb447.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @smt_timer_stop(ptr noundef %smc, ptr noundef %rmt_timer0.i838.i) #4
  br label %stop_rmt_timer0.exit814.i

stop_rmt_timer0.exit814.i:                        ; preds = %if.then.i813.i, %sw.bb447.i.stop_rmt_timer0.exit814.i_crit_edge
  %189 = ptrtoint ptr %tm_active.i841.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %tm_active.i841.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %190)
  %tobool.not.i816.i = icmp eq i16 %190, 0
  br i1 %tobool.not.i816.i, label %stop_rmt_timer0.exit814.i.stop_rmt_timer1.exit819.i_crit_edge, label %if.then.i818.i

stop_rmt_timer0.exit814.i.stop_rmt_timer1.exit819.i_crit_edge: ; preds = %stop_rmt_timer0.exit814.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stop_rmt_timer1.exit819.i

if.then.i818.i:                                   ; preds = %stop_rmt_timer0.exit814.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @smt_timer_stop(ptr noundef %smc, ptr noundef %rmt_timer1.i843.i) #4
  br label %stop_rmt_timer1.exit819.i

stop_rmt_timer1.exit819.i:                        ; preds = %if.then.i818.i, %stop_rmt_timer0.exit814.i.stop_rmt_timer1.exit819.i_crit_edge
  %191 = ptrtoint ptr %tm_active.i846.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %tm_active.i846.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %192)
  %tobool.not.i821.i = icmp eq i16 %192, 0
  br i1 %tobool.not.i821.i, label %stop_rmt_timer1.exit819.i.stop_rmt_timer2.exit824.i_crit_edge, label %if.then.i823.i

stop_rmt_timer1.exit819.i.stop_rmt_timer2.exit824.i_crit_edge: ; preds = %stop_rmt_timer1.exit819.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stop_rmt_timer2.exit824.i

if.then.i823.i:                                   ; preds = %stop_rmt_timer1.exit819.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @smt_timer_stop(ptr noundef %smc, ptr noundef %rmt_timer2.i848.i) #4
  br label %stop_rmt_timer2.exit824.i

stop_rmt_timer2.exit824.i:                        ; preds = %if.then.i823.i, %stop_rmt_timer1.exit819.i.stop_rmt_timer2.exit824.i_crit_edge
  %193 = ptrtoint ptr %fddiMACRMTState to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %fddiMACRMTState, align 4
  %195 = and i16 %194, -17
  store i16 %195, ptr %fddiMACRMTState, align 4
  br label %rmt_fsm.exit

sw.bb456.i:                                       ; preds = %if.end.i
  %196 = ptrtoint ptr %r.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %r.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %197)
  %cmp460.i = icmp eq i8 %197, 1
  br i1 %cmp460.i, label %if.then462.i, label %if.else469.i

if.then462.i:                                     ; preds = %sw.bb456.i
  call void @__sanitizer_cov_trace_pc() #6
  %198 = ptrtoint ptr %da_flag514.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 0, ptr %da_flag514.i, align 1
  %199 = ptrtoint ptr %fddiMACRMTState to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 18, ptr %fddiMACRMTState, align 4
  br label %rmt_fsm.exit

if.else469.i:                                     ; preds = %sw.bb456.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event.addr.0)
  %cmp470.i = icmp eq i32 %event.addr.0, 2
  br i1 %cmp470.i, label %if.then472.i, label %if.else469.i.rmt_fsm.exit_crit_edge

if.else469.i.rmt_fsm.exit_crit_edge:              ; preds = %if.else469.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rmt_fsm.exit

if.then472.i:                                     ; preds = %if.else469.i
  call void @__sanitizer_cov_trace_pc() #6
  %200 = ptrtoint ptr %jm_flag.i to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 0, ptr %jm_flag.i, align 2
  %201 = ptrtoint ptr %bn_flag518.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 0, ptr %bn_flag518.i, align 1
  %202 = ptrtoint ptr %fddiMACRMTState to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 20, ptr %fddiMACRMTState, align 4
  br label %rmt_fsm.exit

sw.bb482.i:                                       ; preds = %if.end.i
  %203 = ptrtoint ptr %rmt_t_direct.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %rmt_t_direct.i, align 4
  %205 = ptrtoint ptr %timer0_exp.i825.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 0, ptr %timer0_exp.i825.i, align 4
  tail call void @smt_timer_start(ptr noundef %smc, ptr noundef %rmt_timer0.i838.i, i32 noundef %204, i32 noundef 196623) #4
  %206 = ptrtoint ptr %tm_active.i841.i to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %tm_active.i841.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %207)
  %tobool.not.i828.i = icmp eq i16 %207, 0
  br i1 %tobool.not.i828.i, label %sw.bb482.i.stop_rmt_timer1.exit831.i_crit_edge, label %if.then.i830.i

sw.bb482.i.stop_rmt_timer1.exit831.i_crit_edge:   ; preds = %sw.bb482.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stop_rmt_timer1.exit831.i

if.then.i830.i:                                   ; preds = %sw.bb482.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @smt_timer_stop(ptr noundef %smc, ptr noundef %rmt_timer1.i843.i) #4
  br label %stop_rmt_timer1.exit831.i

stop_rmt_timer1.exit831.i:                        ; preds = %if.then.i830.i, %sw.bb482.i.stop_rmt_timer1.exit831.i_crit_edge
  %208 = ptrtoint ptr %rmt_t_poll505.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %rmt_t_poll505.i, align 4
  %210 = ptrtoint ptr %timer2_exp.i834.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 0, ptr %timer2_exp.i834.i, align 2
  tail call void @smt_timer_start(ptr noundef %smc, ptr noundef %rmt_timer2.i848.i, i32 noundef %209, i32 noundef 196625) #4
  tail call void @sm_ma_control(ptr noundef %smc, i32 noundef 3) #4
  %211 = ptrtoint ptr %ring_status487.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %ring_status487.i, align 4
  %213 = or i16 %212, 4096
  store i16 %213, ptr %ring_status487.i, align 4
  %conv491.i = zext i16 %213 to i32
  tail call void @ring_status_indication(ptr noundef %smc, i32 noundef %conv491.i) #4
  %214 = ptrtoint ptr %fddiMACRMTState to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %fddiMACRMTState, align 4
  %216 = and i16 %215, -17
  store i16 %216, ptr %fddiMACRMTState, align 4
  br label %rmt_fsm.exit

sw.bb500.i:                                       ; preds = %if.end.i
  %217 = zext i32 %event.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %217, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %event.addr.0, label %sw.bb500.i.rmt_fsm.exit_crit_edge [
    i32 17, label %if.then503.i
    i32 4, label %sw.bb500.i.land.lhs.true512.i_crit_edge
    i32 3, label %sw.bb500.i.land.lhs.true512.i_crit_edge57
    i32 15, label %if.then544.i
  ]

sw.bb500.i.land.lhs.true512.i_crit_edge57:        ; preds = %sw.bb500.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true512.i

sw.bb500.i.land.lhs.true512.i_crit_edge:          ; preds = %sw.bb500.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true512.i

sw.bb500.i.rmt_fsm.exit_crit_edge:                ; preds = %sw.bb500.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rmt_fsm.exit

if.then503.i:                                     ; preds = %sw.bb500.i
  call void @__sanitizer_cov_trace_pc() #6
  %218 = ptrtoint ptr %rmt_t_poll505.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %rmt_t_poll505.i, align 4
  %220 = ptrtoint ptr %timer2_exp.i834.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 0, ptr %timer2_exp.i834.i, align 2
  tail call void @smt_timer_start(ptr noundef %smc, ptr noundef %rmt_timer2.i848.i, i32 noundef %219, i32 noundef 196625) #4
  tail call void @sm_mac_check_beacon_claim(ptr noundef %smc) #4
  br label %rmt_fsm.exit

land.lhs.true512.i:                               ; preds = %sw.bb500.i.land.lhs.true512.i_crit_edge, %sw.bb500.i.land.lhs.true512.i_crit_edge57
  %221 = ptrtoint ptr %da_flag514.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %da_flag514.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %222)
  %tobool515.not.i = icmp eq i8 %222, 0
  %223 = ptrtoint ptr %bn_flag518.i to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 0, ptr %bn_flag518.i, align 1
  br i1 %tobool515.not.i, label %if.then516.i, label %if.then534.i

if.then516.i:                                     ; preds = %land.lhs.true512.i
  call void @__sanitizer_cov_trace_pc() #6
  %224 = ptrtoint ptr %fddiMACRMTState to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 19, ptr %fddiMACRMTState, align 4
  br label %rmt_fsm.exit

if.then534.i:                                     ; preds = %land.lhs.true512.i
  call void @__sanitizer_cov_trace_pc() #6
  %225 = ptrtoint ptr %fddiMACRMTState to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 20, ptr %fddiMACRMTState, align 4
  br label %rmt_fsm.exit

if.then544.i:                                     ; preds = %sw.bb500.i
  call void @__sanitizer_cov_trace_pc() #6
  %226 = ptrtoint ptr %fddiMACRMTState to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 23, ptr %fddiMACRMTState, align 4
  br label %rmt_fsm.exit

sw.bb552.i:                                       ; preds = %if.end.i
  %227 = ptrtoint ptr %tm_active.i836.i to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %tm_active.i836.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %228)
  %tobool.not.i837.i = icmp eq i16 %228, 0
  br i1 %tobool.not.i837.i, label %sw.bb552.i.stop_rmt_timer0.exit840.i_crit_edge, label %if.then.i839.i

sw.bb552.i.stop_rmt_timer0.exit840.i_crit_edge:   ; preds = %sw.bb552.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stop_rmt_timer0.exit840.i

if.then.i839.i:                                   ; preds = %sw.bb552.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @smt_timer_stop(ptr noundef %smc, ptr noundef %rmt_timer0.i838.i) #4
  br label %stop_rmt_timer0.exit840.i

stop_rmt_timer0.exit840.i:                        ; preds = %if.then.i839.i, %sw.bb552.i.stop_rmt_timer0.exit840.i_crit_edge
  %229 = ptrtoint ptr %tm_active.i841.i to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %tm_active.i841.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %230)
  %tobool.not.i842.i = icmp eq i16 %230, 0
  br i1 %tobool.not.i842.i, label %stop_rmt_timer0.exit840.i.stop_rmt_timer1.exit845.i_crit_edge, label %if.then.i844.i

stop_rmt_timer0.exit840.i.stop_rmt_timer1.exit845.i_crit_edge: ; preds = %stop_rmt_timer0.exit840.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stop_rmt_timer1.exit845.i

if.then.i844.i:                                   ; preds = %stop_rmt_timer0.exit840.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @smt_timer_stop(ptr noundef %smc, ptr noundef %rmt_timer1.i843.i) #4
  br label %stop_rmt_timer1.exit845.i

stop_rmt_timer1.exit845.i:                        ; preds = %if.then.i844.i, %stop_rmt_timer0.exit840.i.stop_rmt_timer1.exit845.i_crit_edge
  %231 = ptrtoint ptr %tm_active.i846.i to i32
  call void @__asan_load2_noabort(i32 %231)
  %232 = load i16, ptr %tm_active.i846.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %232)
  %tobool.not.i847.i = icmp eq i16 %232, 0
  br i1 %tobool.not.i847.i, label %stop_rmt_timer1.exit845.i.stop_rmt_timer2.exit850.i_crit_edge, label %if.then.i849.i

stop_rmt_timer1.exit845.i.stop_rmt_timer2.exit850.i_crit_edge: ; preds = %stop_rmt_timer1.exit845.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %stop_rmt_timer2.exit850.i

if.then.i849.i:                                   ; preds = %stop_rmt_timer1.exit845.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @smt_timer_stop(ptr noundef %smc, ptr noundef %rmt_timer2.i848.i) #4
  br label %stop_rmt_timer2.exit850.i

stop_rmt_timer2.exit850.i:                        ; preds = %if.then.i849.i, %stop_rmt_timer1.exit845.i.stop_rmt_timer2.exit850.i_crit_edge
  %233 = ptrtoint ptr %trace_prop.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %trace_prop.i, align 4
  %or553.i = or i32 %234, 4
  store i32 %or553.i, ptr %trace_prop.i, align 4
  tail call void @queue_event(ptr noundef %smc, i32 noundef 1, i32 noundef 3) #4
  %235 = ptrtoint ptr %fddiMACRMTState to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %fddiMACRMTState, align 4
  %237 = and i16 %236, -17
  store i16 %237, ptr %fddiMACRMTState, align 4
  br label %rmt_fsm.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call563.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 122, ptr noundef nonnull @.str.3) #7
  br label %rmt_fsm.exit

rmt_fsm.exit:                                     ; preds = %do.end.i, %stop_rmt_timer2.exit850.i, %if.then544.i, %if.then534.i, %if.then516.i, %if.then503.i, %sw.bb500.i.rmt_fsm.exit_crit_edge, %stop_rmt_timer1.exit831.i, %if.then472.i, %if.else469.i.rmt_fsm.exit_crit_edge, %if.then462.i, %stop_rmt_timer2.exit824.i, %if.then436.i, %land.lhs.true431.i.rmt_fsm.exit_crit_edge, %land.lhs.true426.i.rmt_fsm.exit_crit_edge, %if.then416.i, %if.end8.sink.split.i, %if.then412.i.rmt_fsm.exit_crit_edge, %land.lhs.true408.i.rmt_fsm.exit_crit_edge, %if.then397.i, %if.then389.i.rmt_fsm.exit_crit_edge, %land.lhs.true385.i.rmt_fsm.exit_crit_edge, %if.then379.i, %land.lhs.true374.i.rmt_fsm.exit_crit_edge, %if.else368.i.rmt_fsm.exit_crit_edge, %if.then363.i, %if.then356.i, %sw.bb339.i, %if.then327.i, %land.lhs.true322.i.rmt_fsm.exit_crit_edge, %land.lhs.true317.i.rmt_fsm.exit_crit_edge, %rmt_new_dup_actions.exit, %rmt_new_dup_actions.exit40, %land.lhs.true296.i.rmt_fsm.exit_crit_edge, %rmt_new_dup_actions.exit52, %land.lhs.true283.i.rmt_fsm.exit_crit_edge, %if.then272.i, %if.then266.i.rmt_fsm.exit_crit_edge, %land.lhs.true262.i.rmt_fsm.exit_crit_edge, %if.else259.i.rmt_fsm.exit_crit_edge, %if.then256.i, %if.then240.i, %if.then233.i, %if.then228.i, %if.then222.i, %sw.bb219.i.rmt_fsm.exit_crit_edge, %sw.bb207.i, %if.then192.i, %if.else187.i.rmt_fsm.exit_crit_edge, %if.else181.i, %if.then176.i, %if.then150.i, %if.end126.i, %if.then85.i, %if.then72.i, %sw.bb69.i.rmt_fsm.exit_crit_edge, %stop_rmt_timer2.exit774.i, %if.then46.i, %lor.lhs.false.i.rmt_fsm.exit_crit_edge, %stop_rmt_timer2.exit.i, %if.end.i.rmt_fsm.exit_crit_edge, %if.then.i, %land.lhs.true3.i.rmt_fsm.exit_crit_edge
  %238 = ptrtoint ptr %fddiMACRMTState to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %fddiMACRMTState, align 4
  %cmp.not = icmp eq i16 %1, %239
  br i1 %cmp.not, label %do.end, label %rmt_fsm.exit.do.body_crit_edge

rmt_fsm.exit.do.body_crit_edge:                   ; preds = %rmt_fsm.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end:                                           ; preds = %rmt_fsm.exit
  call void @__sanitizer_cov_trace_pc() #6
  %conv5 = zext i16 %1 to i32
  tail call void @rmt_state_change(ptr noundef %smc, i32 noundef %conv5) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmt_state_change(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_status_indication(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rmt_indication(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sm_ma_control(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_stat_counter(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sm_mac_check_beacon_claim(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sm_mac_get_tx_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @queue_event(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_timer_stop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_timer_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/fddi/skfp/rmt.c", i32 512, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rmt_fsm._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rmt_fsm._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/fddi/skfp/rmt.c", i32 561, i32 3}
!9 = !{ptr @rmt_new_dup_actions._entry, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @rmt_new_dup_actions._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @rmt_new_dup_actions._entry.6, !13, !"_entry", i1 false, i1 false}
!13 = !{!"../drivers/net/fddi/skfp/rmt.c", i32 565, i32 3}
!14 = !{ptr @rmt_new_dup_actions._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/fddi/skfp/rmt.c", i32 527, i32 4}
!18 = !{ptr @rmt_dup_actions._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @rmt_dup_actions._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @rmt_dup_actions._entry.10, !21, !"_entry", i1 false, i1 false}
!21 = !{!"../drivers/net/fddi/skfp/rmt.c", i32 531, i32 4}
!22 = !{ptr @rmt_dup_actions._entry_ptr.11, !21, !"_entry_ptr", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
