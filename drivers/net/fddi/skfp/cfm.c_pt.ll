; ModuleID = '/llk/IR_all_yes/drivers/net/fddi/skfp/cfm.c_pt.bc'
source_filename = "../drivers/net/fddi/skfp/cfm.c"
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

@cf_to_ptype = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\04\04\04\04\04\04\01\01\02\00\01\02\01", [19 x i8] zeroinitializer }, align 32
@path_iso_s = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\00\00\04\00\01\00\00\00\00\00\02\00\01\00\00", [16 x i8] zeroinitializer }, align 32
@path_iso = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\00\00\00\04\00\01\00\00\00\00\00\02\00\01\00\00\00\00\00\04\00\02\00\00", [40 x i8] zeroinitializer }, align 32
@path_wrap_a = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\00\00\00\04\00\01\00\03\00\00\00\02\00\01\00\03\00\00\00\04\00\02\00\00", [40 x i8] zeroinitializer }, align 32
@path_wrap_b = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\00\00\00\04\00\02\00\03\00\00\00\02\00\01\00\03\00\00\00\04\00\01\00\00", [40 x i8] zeroinitializer }, align 32
@path_thru = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\00\00\00\04\00\01\00\03\00\00\00\02\00\01\00\03\00\00\00\04\00\02\00\03", [40 x i8] zeroinitializer }, align 32
@path_wrap_s = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\00\00\04\00\01\00\03\00\00\00\02\00\01\00\03", [16 x i8] zeroinitializer }, align 32
@cfm_fsm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016SMT PANIC: code: %d, msg: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cfm_fsm\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/net/fddi/skfp/cfm.c\00", [36 x i8] zeroinitializer }, align 32
@cfm_fsm._entry_ptr = internal global ptr @cfm_fsm._entry, section ".printk_index", align 4
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CFM : invalid state\00", [44 x i8] zeroinitializer }, align 32
@switch.table.cem_build_path = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @path_wrap_a, ptr @path_wrap_b, ptr @path_wrap_s, ptr @path_thru], [16 x i8] zeroinitializer }, align 32
@switch.table.cem_build_path.4 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24, i32 24, i32 16, i32 24], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.5 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [14 x i64] [i64 12, i64 16, i64 0, i64 7, i64 9, i64 10, i64 11, i64 12, i64 16, i64 23, i64 25, i64 26, i64 27, i64 28]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 16, i64 9, i64 10, i64 11]
@___asan_gen_.10 = private unnamed_addr constant [12 x i8] c"cf_to_ptype\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 66, i32 28 }
@___asan_gen_.13 = private unnamed_addr constant [11 x i8] c"path_iso_s\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 570, i32 13 }
@___asan_gen_.16 = private unnamed_addr constant [9 x i8] c"path_iso\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 541, i32 13 }
@___asan_gen_.19 = private unnamed_addr constant [12 x i8] c"path_wrap_a\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 547, i32 13 }
@___asan_gen_.22 = private unnamed_addr constant [12 x i8] c"path_wrap_b\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 553, i32 13 }
@___asan_gen_.25 = private unnamed_addr constant [10 x i8] c"path_thru\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 559, i32 13 }
@___asan_gen_.28 = private unnamed_addr constant [12 x i8] c"path_wrap_s\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 565, i32 13 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [31 x i8] c"../drivers/net/fddi/skfp/cfm.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 514, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [28 x i8] c"switch.table.cem_build_path\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [30 x i8] c"switch.table.cem_build_path.4\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @cfm_fsm._entry, ptr @cfm_fsm._entry_ptr, ptr @cf_to_ptype, ptr @path_iso_s, ptr @path_iso, ptr @path_wrap_a, ptr @path_wrap_b, ptr @path_thru, ptr @path_wrap_s, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @switch.table.cem_build_path, ptr @switch.table.cem_build_path.4], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cf_to_ptype to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @path_iso_s to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @path_iso to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @path_wrap_a to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @path_wrap_b to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @path_thru to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @path_wrap_s to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfm_fsm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cem_build_path to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cem_build_path.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @cfm_init(ptr nocapture noundef writeonly %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fddiSMTCF_State = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 29
  %0 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 16, ptr %fddiSMTCF_State, align 2
  %rm_join = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5, i32 7
  %1 = ptrtoint ptr %rm_join to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %rm_join, align 1
  %rm_loop = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %rm_loop to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %rm_loop, align 4
  %scrub = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0, i32 8
  %3 = ptrtoint ptr %scrub to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %scrub, align 1
  %scrub4 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 8
  %4 = ptrtoint ptr %scrub4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %scrub4, align 1
  %cem_pst = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0, i32 30
  %5 = ptrtoint ptr %cem_pst to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %cem_pst, align 4
  %cem_pst9 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 30
  %6 = ptrtoint ptr %cem_pst9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %cem_pst9, align 4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @all_selection_criteria(ptr nocapture noundef %smc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %y = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 8
  %pc_mode.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0, i32 5
  %pc_mode5.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 5
  %cf_join.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 2
  %0 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %y, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %entry.selection_criteria.exit_crit_edge [
    i16 0, label %sw.bb.i
    i16 1, label %entry.sw.epilog.sink.split.i_crit_edge
    i16 2, label %entry.sw.epilog.sink.split.i_crit_edge7
    i16 3, label %entry.sw.epilog.sink.split.i_crit_edge8
  ]

entry.sw.epilog.sink.split.i_crit_edge8:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i

entry.sw.epilog.sink.split.i_crit_edge7:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i

entry.sw.epilog.sink.split.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i

entry.selection_criteria.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %selection_criteria.exit

sw.bb.i:                                          ; preds = %entry
  %5 = ptrtoint ptr %pc_mode.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pc_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp.not.i = icmp eq i8 %6, 2
  br i1 %cmp.not.i, label %sw.bb.i.land.lhs.true9.i_crit_edge, label %land.lhs.true.i

sw.bb.i.land.lhs.true9.i_crit_edge:               ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true9.i

land.lhs.true.i:                                  ; preds = %sw.bb.i
  %7 = ptrtoint ptr %pc_mode5.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pc_mode5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp7.not.i = icmp eq i8 %8, 2
  br i1 %cmp7.not.i, label %land.lhs.true.i.land.lhs.true9.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i.land.lhs.true9.i_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true9.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i.land.lhs.true9.i_crit_edge, %sw.bb.i.land.lhs.true9.i_crit_edge
  %9 = ptrtoint ptr %cf_join.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cf_join.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %land.lhs.true9.i.if.else.i_crit_edge, label %land.lhs.true9.i.sw.epilog.sink.split.i_crit_edge

land.lhs.true9.i.sw.epilog.sink.split.i_crit_edge: ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i

land.lhs.true9.i.if.else.i_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true9.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %if.else.i, %land.lhs.true9.i.sw.epilog.sink.split.i_crit_edge, %entry.sw.epilog.sink.split.i_crit_edge, %entry.sw.epilog.sink.split.i_crit_edge7, %entry.sw.epilog.sink.split.i_crit_edge8
  %.sink.i = phi i8 [ 0, %if.else.i ], [ 1, %land.lhs.true9.i.sw.epilog.sink.split.i_crit_edge ], [ 0, %entry.sw.epilog.sink.split.i_crit_edge ], [ 0, %entry.sw.epilog.sink.split.i_crit_edge7 ], [ 0, %entry.sw.epilog.sink.split.i_crit_edge8 ]
  %wc_flag.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0, i32 4
  %11 = ptrtoint ptr %wc_flag.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink.i, ptr %wc_flag.i, align 1
  br label %selection_criteria.exit

selection_criteria.exit:                          ; preds = %sw.epilog.sink.split.i, %entry.selection_criteria.exit_crit_edge
  %incdec.ptr = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %incdec.ptr, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %13, align 4
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.5)
  switch i16 %15, label %selection_criteria.exit.selection_criteria.exit.1_crit_edge [
    i16 0, label %sw.bb.i.1
    i16 1, label %selection_criteria.exit.sw.epilog.sink.split.i.1_crit_edge
    i16 2, label %selection_criteria.exit.sw.epilog.sink.split.i.1_crit_edge9
    i16 3, label %selection_criteria.exit.sw.epilog.sink.split.i.1_crit_edge10
  ]

selection_criteria.exit.sw.epilog.sink.split.i.1_crit_edge10: ; preds = %selection_criteria.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i.1

selection_criteria.exit.sw.epilog.sink.split.i.1_crit_edge9: ; preds = %selection_criteria.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i.1

selection_criteria.exit.sw.epilog.sink.split.i.1_crit_edge: ; preds = %selection_criteria.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i.1

selection_criteria.exit.selection_criteria.exit.1_crit_edge: ; preds = %selection_criteria.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %selection_criteria.exit.1

sw.bb.i.1:                                        ; preds = %selection_criteria.exit
  %17 = ptrtoint ptr %pc_mode.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pc_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp.not.i.1 = icmp eq i8 %18, 2
  br i1 %cmp.not.i.1, label %sw.bb.i.1.land.lhs.true9.i.1_crit_edge, label %land.lhs.true.i.1

sw.bb.i.1.land.lhs.true9.i.1_crit_edge:           ; preds = %sw.bb.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true9.i.1

land.lhs.true.i.1:                                ; preds = %sw.bb.i.1
  %19 = ptrtoint ptr %pc_mode5.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pc_mode5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp7.not.i.1 = icmp eq i8 %20, 2
  br i1 %cmp7.not.i.1, label %land.lhs.true.i.1.land.lhs.true9.i.1_crit_edge, label %land.lhs.true.i.1.if.else.i.1_crit_edge

land.lhs.true.i.1.if.else.i.1_crit_edge:          ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.1

land.lhs.true.i.1.land.lhs.true9.i.1_crit_edge:   ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true9.i.1

land.lhs.true9.i.1:                               ; preds = %land.lhs.true.i.1.land.lhs.true9.i.1_crit_edge, %sw.bb.i.1.land.lhs.true9.i.1_crit_edge
  %21 = ptrtoint ptr %cf_join.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cf_join.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.1 = icmp eq i8 %22, 0
  br i1 %tobool.not.i.1, label %land.lhs.true9.i.1.if.else.i.1_crit_edge, label %land.lhs.true9.i.1.sw.epilog.sink.split.i.1_crit_edge

land.lhs.true9.i.1.sw.epilog.sink.split.i.1_crit_edge: ; preds = %land.lhs.true9.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i.1

land.lhs.true9.i.1.if.else.i.1_crit_edge:         ; preds = %land.lhs.true9.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.1

if.else.i.1:                                      ; preds = %land.lhs.true9.i.1.if.else.i.1_crit_edge, %land.lhs.true.i.1.if.else.i.1_crit_edge
  br label %sw.epilog.sink.split.i.1

sw.epilog.sink.split.i.1:                         ; preds = %if.else.i.1, %land.lhs.true9.i.1.sw.epilog.sink.split.i.1_crit_edge, %selection_criteria.exit.sw.epilog.sink.split.i.1_crit_edge, %selection_criteria.exit.sw.epilog.sink.split.i.1_crit_edge9, %selection_criteria.exit.sw.epilog.sink.split.i.1_crit_edge10
  %.sink.i.1 = phi i8 [ 0, %if.else.i.1 ], [ 1, %land.lhs.true9.i.1.sw.epilog.sink.split.i.1_crit_edge ], [ 0, %selection_criteria.exit.sw.epilog.sink.split.i.1_crit_edge ], [ 0, %selection_criteria.exit.sw.epilog.sink.split.i.1_crit_edge9 ], [ 0, %selection_criteria.exit.sw.epilog.sink.split.i.1_crit_edge10 ]
  %wc_flag.i.1 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 4
  %23 = ptrtoint ptr %wc_flag.i.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.sink.i.1, ptr %wc_flag.i.1, align 1
  br label %selection_criteria.exit.1

selection_criteria.exit.1:                        ; preds = %sw.epilog.sink.split.i.1, %selection_criteria.exit.selection_criteria.exit.1_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cfm(ptr noundef %smc, i32 noundef %event) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %y.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 8
  %pc_mode.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0, i32 5
  %pc_mode5.i.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 5
  %cf_join.i.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 2
  %0 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %y.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.6)
  switch i16 %3, label %entry.selection_criteria.exit.i_crit_edge [
    i16 0, label %sw.bb.i.i
    i16 1, label %entry.sw.epilog.sink.split.i.i_crit_edge
    i16 2, label %entry.sw.epilog.sink.split.i.i_crit_edge101
    i16 3, label %entry.sw.epilog.sink.split.i.i_crit_edge102
  ]

entry.sw.epilog.sink.split.i.i_crit_edge102:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i.i

entry.sw.epilog.sink.split.i.i_crit_edge101:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i.i

entry.sw.epilog.sink.split.i.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i.i

entry.selection_criteria.exit.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %selection_criteria.exit.i

sw.bb.i.i:                                        ; preds = %entry
  %5 = ptrtoint ptr %pc_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pc_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp.not.i.i = icmp eq i8 %6, 2
  br i1 %cmp.not.i.i, label %sw.bb.i.i.land.lhs.true9.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb.i.i.land.lhs.true9.i.i_crit_edge:           ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true9.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb.i.i
  %7 = ptrtoint ptr %pc_mode5.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pc_mode5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp7.not.i.i = icmp eq i8 %8, 2
  br i1 %cmp7.not.i.i, label %land.lhs.true.i.i.land.lhs.true9.i.i_crit_edge, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

land.lhs.true.i.i.land.lhs.true9.i.i_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true9.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i.land.lhs.true9.i.i_crit_edge, %sw.bb.i.i.land.lhs.true9.i.i_crit_edge
  %9 = ptrtoint ptr %cf_join.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cf_join.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i.i, label %land.lhs.true9.i.i.if.else.i.i_crit_edge, label %land.lhs.true9.i.i.sw.epilog.sink.split.i.i_crit_edge

land.lhs.true9.i.i.sw.epilog.sink.split.i.i_crit_edge: ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i.i

land.lhs.true9.i.i.if.else.i.i_crit_edge:         ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

if.else.i.i:                                      ; preds = %land.lhs.true9.i.i.if.else.i.i_crit_edge, %land.lhs.true.i.i.if.else.i.i_crit_edge
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %if.else.i.i, %land.lhs.true9.i.i.sw.epilog.sink.split.i.i_crit_edge, %entry.sw.epilog.sink.split.i.i_crit_edge, %entry.sw.epilog.sink.split.i.i_crit_edge101, %entry.sw.epilog.sink.split.i.i_crit_edge102
  %.sink.i.i = phi i8 [ 0, %if.else.i.i ], [ 1, %land.lhs.true9.i.i.sw.epilog.sink.split.i.i_crit_edge ], [ 0, %entry.sw.epilog.sink.split.i.i_crit_edge ], [ 0, %entry.sw.epilog.sink.split.i.i_crit_edge101 ], [ 0, %entry.sw.epilog.sink.split.i.i_crit_edge102 ]
  %wc_flag.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0, i32 4
  %11 = ptrtoint ptr %wc_flag.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink.i.i, ptr %wc_flag.i.i, align 1
  br label %selection_criteria.exit.i

selection_criteria.exit.i:                        ; preds = %sw.epilog.sink.split.i.i, %entry.selection_criteria.exit.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %incdec.ptr.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %13, align 4
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %15, label %selection_criteria.exit.i.all_selection_criteria.exit_crit_edge [
    i16 0, label %sw.bb.i.1.i
    i16 1, label %selection_criteria.exit.i.sw.epilog.sink.split.i.1.i_crit_edge
    i16 2, label %selection_criteria.exit.i.sw.epilog.sink.split.i.1.i_crit_edge103
    i16 3, label %selection_criteria.exit.i.sw.epilog.sink.split.i.1.i_crit_edge104
  ]

selection_criteria.exit.i.sw.epilog.sink.split.i.1.i_crit_edge104: ; preds = %selection_criteria.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i.1.i

selection_criteria.exit.i.sw.epilog.sink.split.i.1.i_crit_edge103: ; preds = %selection_criteria.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i.1.i

selection_criteria.exit.i.sw.epilog.sink.split.i.1.i_crit_edge: ; preds = %selection_criteria.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i.1.i

selection_criteria.exit.i.all_selection_criteria.exit_crit_edge: ; preds = %selection_criteria.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %all_selection_criteria.exit

sw.bb.i.1.i:                                      ; preds = %selection_criteria.exit.i
  %17 = ptrtoint ptr %pc_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pc_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp.not.i.1.i = icmp eq i8 %18, 2
  br i1 %cmp.not.i.1.i, label %sw.bb.i.1.i.land.lhs.true9.i.1.i_crit_edge, label %land.lhs.true.i.1.i

sw.bb.i.1.i.land.lhs.true9.i.1.i_crit_edge:       ; preds = %sw.bb.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true9.i.1.i

land.lhs.true.i.1.i:                              ; preds = %sw.bb.i.1.i
  %19 = ptrtoint ptr %pc_mode5.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pc_mode5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %20)
  %cmp7.not.i.1.i = icmp eq i8 %20, 2
  br i1 %cmp7.not.i.1.i, label %land.lhs.true.i.1.i.land.lhs.true9.i.1.i_crit_edge, label %land.lhs.true.i.1.i.if.else.i.1.i_crit_edge

land.lhs.true.i.1.i.if.else.i.1.i_crit_edge:      ; preds = %land.lhs.true.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.1.i

land.lhs.true.i.1.i.land.lhs.true9.i.1.i_crit_edge: ; preds = %land.lhs.true.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true9.i.1.i

land.lhs.true9.i.1.i:                             ; preds = %land.lhs.true.i.1.i.land.lhs.true9.i.1.i_crit_edge, %sw.bb.i.1.i.land.lhs.true9.i.1.i_crit_edge
  %21 = ptrtoint ptr %cf_join.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cf_join.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.1.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i.1.i, label %land.lhs.true9.i.1.i.if.else.i.1.i_crit_edge, label %land.lhs.true9.i.1.i.sw.epilog.sink.split.i.1.i_crit_edge

land.lhs.true9.i.1.i.sw.epilog.sink.split.i.1.i_crit_edge: ; preds = %land.lhs.true9.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split.i.1.i

land.lhs.true9.i.1.i.if.else.i.1.i_crit_edge:     ; preds = %land.lhs.true9.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.1.i

if.else.i.1.i:                                    ; preds = %land.lhs.true9.i.1.i.if.else.i.1.i_crit_edge, %land.lhs.true.i.1.i.if.else.i.1.i_crit_edge
  br label %sw.epilog.sink.split.i.1.i

sw.epilog.sink.split.i.1.i:                       ; preds = %if.else.i.1.i, %land.lhs.true9.i.1.i.sw.epilog.sink.split.i.1.i_crit_edge, %selection_criteria.exit.i.sw.epilog.sink.split.i.1.i_crit_edge, %selection_criteria.exit.i.sw.epilog.sink.split.i.1.i_crit_edge103, %selection_criteria.exit.i.sw.epilog.sink.split.i.1.i_crit_edge104
  %.sink.i.1.i = phi i8 [ 0, %if.else.i.1.i ], [ 1, %land.lhs.true9.i.1.i.sw.epilog.sink.split.i.1.i_crit_edge ], [ 0, %selection_criteria.exit.i.sw.epilog.sink.split.i.1.i_crit_edge ], [ 0, %selection_criteria.exit.i.sw.epilog.sink.split.i.1.i_crit_edge103 ], [ 0, %selection_criteria.exit.i.sw.epilog.sink.split.i.1.i_crit_edge104 ]
  %wc_flag.i.1.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 4
  %23 = ptrtoint ptr %wc_flag.i.1.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.sink.i.1.i, ptr %wc_flag.i.1.i, align 1
  br label %all_selection_criteria.exit

all_selection_criteria.exit:                      ; preds = %sw.epilog.sink.split.i.1.i, %selection_criteria.exit.i.all_selection_criteria.exit_crit_edge
  %sas.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %sas.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %sas.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp.not.i = icmp eq i8 %25, 0
  br i1 %cmp.not.i, label %if.end.i, label %all_selection_criteria.exit.cem_priv_state.exit_crit_edge

all_selection_criteria.exit.cem_priv_state.exit_crit_edge: ; preds = %all_selection_criteria.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cem_priv_state.exit

if.end.i:                                         ; preds = %all_selection_criteria.exit
  %sub.i = add i32 %event, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i)
  %switch.i = icmp ult i32 %sub.i, 2
  br i1 %switch.i, label %if.end7.i, label %if.end.i.cem_priv_state.exit_crit_edge

if.end.i.cem_priv_state.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cem_priv_state.exit

if.end7.i:                                        ; preds = %if.end.i
  %cf_join.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %sub.i, i32 2
  %26 = ptrtoint ptr %cf_join.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %cf_join.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end7.i.if.end19.sink.split.i_crit_edge

if.end7.i.if.end19.sink.split.i_crit_edge:        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.sink.split.i

if.else.i:                                        ; preds = %if.end7.i
  %wc_flag.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %sub.i, i32 4
  %28 = ptrtoint ptr %wc_flag.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %wc_flag.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool13.not.i = icmp eq i8 %29, 0
  br i1 %tobool13.not.i, label %if.else.i.if.end19.sink.split.i_crit_edge, label %if.else.i.if.end19.i_crit_edge

if.else.i.if.end19.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

if.else.i.if.end19.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.sink.split.i

if.end19.sink.split.i:                            ; preds = %if.else.i.if.end19.sink.split.i_crit_edge, %if.end7.i.if.end19.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 1, %if.end7.i.if.end19.sink.split.i_crit_edge ], [ 0, %if.else.i.if.end19.sink.split.i_crit_edge ]
  %cem_pst17.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 %sub.i, i32 30
  %30 = ptrtoint ptr %cem_pst17.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink.i, ptr %cem_pst17.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end19.sink.split.i, %if.else.i.if.end19.i_crit_edge
  %cem_pst24.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0, i32 30
  %31 = ptrtoint ptr %cem_pst24.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cem_pst24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp25.i = icmp eq i32 %32, 2
  br i1 %cmp25.i, label %land.lhs.true27.i, label %if.end19.i.if.end36.i_crit_edge

if.end19.i.if.end36.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

land.lhs.true27.i:                                ; preds = %if.end19.i
  %wc_flag30.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0, i32 4
  %33 = ptrtoint ptr %wc_flag30.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %wc_flag30.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool31.not.i = icmp eq i8 %34, 0
  br i1 %tobool31.not.i, label %if.then32.i, label %land.lhs.true27.i.if.end36thread-pre-split.i_crit_edge

land.lhs.true27.i.if.end36thread-pre-split.i_crit_edge: ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36thread-pre-split.i

if.then32.i:                                      ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %cem_pst24.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %cem_pst24.i, align 4
  tail call void @queue_event(ptr noundef %smc, i32 noundef 5, i32 noundef 1) #7
  br label %if.end36thread-pre-split.i

if.end36thread-pre-split.i:                       ; preds = %if.then32.i, %land.lhs.true27.i.if.end36thread-pre-split.i_crit_edge
  %36 = ptrtoint ptr %cem_pst24.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr.i = load i32, ptr %cem_pst24.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.end36thread-pre-split.i, %if.end19.i.if.end36.i_crit_edge
  %37 = phi i32 [ %.pr.i, %if.end36thread-pre-split.i ], [ %32, %if.end19.i.if.end36.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp40.i = icmp eq i32 %37, 1
  br i1 %cmp40.i, label %land.lhs.true42.i, label %if.end36.i.if.end53.i_crit_edge

if.end36.i.if.end53.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i

land.lhs.true42.i:                                ; preds = %if.end36.i
  %wc_flag45.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0, i32 4
  %38 = ptrtoint ptr %wc_flag45.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %wc_flag45.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool47.not.i = icmp eq i8 %39, 0
  br i1 %tobool47.not.i, label %land.lhs.true42.i.if.end53.i_crit_edge, label %if.then48.i

land.lhs.true42.i.if.end53.i_crit_edge:           ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i

if.then48.i:                                      ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %cem_pst24.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %cem_pst24.i, align 4
  tail call void @queue_event(ptr noundef %smc, i32 noundef 5, i32 noundef 1) #7
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then48.i, %land.lhs.true42.i.if.end53.i_crit_edge, %if.end36.i.if.end53.i_crit_edge
  %41 = ptrtoint ptr %cem_pst24.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cem_pst24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp57.i = icmp eq i32 %42, 0
  br i1 %cmp57.i, label %land.lhs.true59.i, label %if.end53.i.for.inc.i_crit_edge

if.end53.i.for.inc.i_crit_edge:                   ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true59.i:                                ; preds = %if.end53.i
  %wc_flag62.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0, i32 4
  %43 = ptrtoint ptr %wc_flag62.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %wc_flag62.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool64.not.i = icmp eq i8 %44, 0
  br i1 %tobool64.not.i, label %land.lhs.true59.i.for.inc.i_crit_edge, label %if.then65.i

land.lhs.true59.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then65.i:                                      ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %cem_pst24.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %cem_pst24.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then65.i, %land.lhs.true59.i.for.inc.i_crit_edge, %if.end53.i.for.inc.i_crit_edge
  %cem_pst24.1.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 30
  %46 = ptrtoint ptr %cem_pst24.1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cem_pst24.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp25.1.i = icmp eq i32 %47, 2
  br i1 %cmp25.1.i, label %land.lhs.true27.1.i, label %for.inc.i.if.end36.1.i_crit_edge

for.inc.i.if.end36.1.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.1.i

land.lhs.true27.1.i:                              ; preds = %for.inc.i
  %wc_flag30.1.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 4
  %48 = ptrtoint ptr %wc_flag30.1.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %wc_flag30.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool31.not.1.i = icmp eq i8 %49, 0
  br i1 %tobool31.not.1.i, label %if.then32.1.i, label %land.lhs.true27.1.i.if.end36thread-pre-split.1.i_crit_edge

land.lhs.true27.1.i.if.end36thread-pre-split.1.i_crit_edge: ; preds = %land.lhs.true27.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36thread-pre-split.1.i

if.then32.1.i:                                    ; preds = %land.lhs.true27.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %cem_pst24.1.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %cem_pst24.1.i, align 4
  tail call void @queue_event(ptr noundef %smc, i32 noundef 6, i32 noundef 1) #7
  br label %if.end36thread-pre-split.1.i

if.end36thread-pre-split.1.i:                     ; preds = %if.then32.1.i, %land.lhs.true27.1.i.if.end36thread-pre-split.1.i_crit_edge
  %51 = ptrtoint ptr %cem_pst24.1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr.1.i = load i32, ptr %cem_pst24.1.i, align 4
  br label %if.end36.1.i

if.end36.1.i:                                     ; preds = %if.end36thread-pre-split.1.i, %for.inc.i.if.end36.1.i_crit_edge
  %52 = phi i32 [ %.pr.1.i, %if.end36thread-pre-split.1.i ], [ %47, %for.inc.i.if.end36.1.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp40.1.i = icmp eq i32 %52, 1
  br i1 %cmp40.1.i, label %land.lhs.true42.1.i, label %if.end36.1.i.if.end53.1.i_crit_edge

if.end36.1.i.if.end53.1.i_crit_edge:              ; preds = %if.end36.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.1.i

land.lhs.true42.1.i:                              ; preds = %if.end36.1.i
  %wc_flag45.1.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 4
  %53 = ptrtoint ptr %wc_flag45.1.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %wc_flag45.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool47.not.1.i = icmp eq i8 %54, 0
  br i1 %tobool47.not.1.i, label %land.lhs.true42.1.i.if.end53.1.i_crit_edge, label %if.then48.1.i

land.lhs.true42.1.i.if.end53.1.i_crit_edge:       ; preds = %land.lhs.true42.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.1.i

if.then48.1.i:                                    ; preds = %land.lhs.true42.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %cem_pst24.1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 2, ptr %cem_pst24.1.i, align 4
  tail call void @queue_event(ptr noundef %smc, i32 noundef 6, i32 noundef 1) #7
  br label %if.end53.1.i

if.end53.1.i:                                     ; preds = %if.then48.1.i, %land.lhs.true42.1.i.if.end53.1.i_crit_edge, %if.end36.1.i.if.end53.1.i_crit_edge
  %56 = ptrtoint ptr %cem_pst24.1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cem_pst24.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp57.1.i = icmp eq i32 %57, 0
  br i1 %cmp57.1.i, label %land.lhs.true59.1.i, label %if.end53.1.i.cem_priv_state.exit_crit_edge

if.end53.1.i.cem_priv_state.exit_crit_edge:       ; preds = %if.end53.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cem_priv_state.exit

land.lhs.true59.1.i:                              ; preds = %if.end53.1.i
  %wc_flag62.1.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 4
  %58 = ptrtoint ptr %wc_flag62.1.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %wc_flag62.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool64.not.1.i = icmp eq i8 %59, 0
  br i1 %tobool64.not.1.i, label %land.lhs.true59.1.i.cem_priv_state.exit_crit_edge, label %if.then65.1.i

land.lhs.true59.1.i.cem_priv_state.exit_crit_edge: ; preds = %land.lhs.true59.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cem_priv_state.exit

if.then65.1.i:                                    ; preds = %land.lhs.true59.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %cem_pst24.1.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 2, ptr %cem_pst24.1.i, align 4
  br label %cem_priv_state.exit

cem_priv_state.exit:                              ; preds = %if.then65.1.i, %land.lhs.true59.1.i.cem_priv_state.exit_crit_edge, %if.end53.1.i.cem_priv_state.exit_crit_edge, %if.end.i.cem_priv_state.exit_crit_edge, %all_selection_criteria.exit.cem_priv_state.exit_crit_edge
  %fddiSMTCF_State = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 29
  %cf_join693.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0, i32 2
  %cf_loop698.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0, i32 3
  %cf_loop708.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 3
  %fddiPORTCurrentPath643.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 0, i32 4
  %fddiPORTMACPlacement647.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 0, i32 6
  %fddiSMTStationStatus649.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 30
  %rm_join663.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5, i32 7
  %rm_loop665.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5, i32 8
  %wc_flag600.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 4
  %wc_flag617.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0, i32 4
  %s627.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2
  %scrub633.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0, i32 8
  %scrub623.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 8
  %fddiPORTCurrentPath571.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 1, i32 4
  %fddiPORTMACPlacement579.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 13, i32 39, i32 1, i32 6
  %cem_pst169.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 8, i32 0, i32 30
  %cem_pst187.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 8, i32 1, i32 30
  br label %do.body

do.body:                                          ; preds = %cfm_fsm.exit.do.body_crit_edge, %cem_priv_state.exit
  %61 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %fddiSMTCF_State, align 2
  %63 = zext i16 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %62, label %do.end.i [
    i16 16, label %sw.bb.i
    i16 0, label %sw.bb19.i
    i16 25, label %sw.bb91.i
    i16 9, label %sw.bb136.i
    i16 26, label %sw.bb314.i
    i16 10, label %sw.bb359.i
    i16 28, label %sw.bb487.i
    i16 12, label %sw.bb516.i
    i16 23, label %sw.bb563.i
    i16 7, label %sw.bb592.i
    i16 27, label %sw.bb639.i
    i16 11, label %sw.bb690.i
  ]

sw.bb.i:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %fddiPORTCurrentPath643.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %fddiPORTCurrentPath643.i, align 4
  %65 = ptrtoint ptr %fddiPORTCurrentPath571.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 0, ptr %fddiPORTCurrentPath571.i, align 4
  %66 = ptrtoint ptr %fddiPORTMACPlacement647.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 0, ptr %fddiPORTMACPlacement647.i, align 2
  %67 = ptrtoint ptr %fddiPORTMACPlacement579.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 0, ptr %fddiPORTMACPlacement579.i, align 2
  %68 = ptrtoint ptr %fddiSMTStationStatus649.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 1, ptr %fddiSMTStationStatus649.i, align 4
  tail call void @config_mux(ptr noundef %smc, i32 noundef 4) #7
  %69 = ptrtoint ptr %rm_loop665.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %rm_loop665.i, align 4
  %70 = ptrtoint ptr %rm_join663.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %rm_join663.i, align 1
  tail call void @queue_event(ptr noundef %smc, i32 noundef 3, i32 noundef 8) #7
  %71 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %fddiSMTCF_State, align 2
  %73 = and i16 %72, -17
  store i16 %73, ptr %fddiSMTCF_State, align 2
  br label %cfm_fsm.exit

sw.bb19.i:                                        ; preds = %do.body
  %74 = ptrtoint ptr %sas.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %sas.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i80 = icmp eq i8 %75, 0
  br i1 %tobool.not.i80, label %sw.bb19.i.if.end.i82_crit_edge, label %land.lhs.true.i

sw.bb19.i.if.end.i82_crit_edge:                   ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i82

land.lhs.true.i:                                  ; preds = %sw.bb19.i
  %76 = ptrtoint ptr %cf_join693.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %cf_join693.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool23.not.i = icmp eq i8 %77, 0
  br i1 %tobool23.not.i, label %lor.lhs.false.i, label %land.lhs.true.i.if.then.i_crit_edge

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %78 = ptrtoint ptr %cf_loop698.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %cf_loop698.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool27.not.i = icmp eq i8 %79, 0
  br i1 %tobool27.not.i, label %lor.lhs.false28.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false28.i:                                ; preds = %lor.lhs.false.i
  %80 = ptrtoint ptr %cf_join.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %cf_join.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool33.not.i = icmp eq i8 %81, 0
  br i1 %tobool33.not.i, label %lor.lhs.false34.i, label %lor.lhs.false28.i.if.then.i_crit_edge

lor.lhs.false28.i.if.then.i_crit_edge:            ; preds = %lor.lhs.false28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false34.i:                                ; preds = %lor.lhs.false28.i
  %82 = ptrtoint ptr %cf_loop708.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %cf_loop708.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool39.not.i = icmp eq i8 %83, 0
  br i1 %tobool39.not.i, label %lor.lhs.false34.i.if.end.i82_crit_edge, label %lor.lhs.false34.i.if.then.i_crit_edge

lor.lhs.false34.i.if.then.i_crit_edge:            ; preds = %lor.lhs.false34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false34.i.if.end.i82_crit_edge:           ; preds = %lor.lhs.false34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i82

if.then.i:                                        ; preds = %lor.lhs.false34.i.if.then.i_crit_edge, %lor.lhs.false28.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge
  %84 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 27, ptr %fddiSMTCF_State, align 2
  br label %cfm_fsm.exit

if.end.i82:                                       ; preds = %lor.lhs.false34.i.if.end.i82_crit_edge, %sw.bb19.i.if.end.i82_crit_edge
  %85 = ptrtoint ptr %cem_pst169.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cem_pst169.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %cmp.i = icmp eq i32 %86, 1
  br i1 %cmp.i, label %land.lhs.true45.i, label %if.end.i82.lor.lhs.false55.i_crit_edge

if.end.i82.lor.lhs.false55.i_crit_edge:           ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false55.i

land.lhs.true45.i:                                ; preds = %if.end.i82
  %87 = ptrtoint ptr %cf_join693.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %cf_join693.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool50.not.i = icmp eq i8 %88, 0
  br i1 %tobool50.not.i, label %land.lhs.true45.i.lor.lhs.false55.i_crit_edge, label %land.lhs.true51.i

land.lhs.true45.i.lor.lhs.false55.i_crit_edge:    ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false55.i

land.lhs.true51.i:                                ; preds = %land.lhs.true45.i
  %89 = ptrtoint ptr %wc_flag617.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %wc_flag617.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool54.not.i = icmp eq i8 %90, 0
  br i1 %tobool54.not.i, label %land.lhs.true51.i.if.then61.i_crit_edge, label %land.lhs.true51.i.lor.lhs.false55.i_crit_edge

land.lhs.true51.i.lor.lhs.false55.i_crit_edge:    ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false55.i

land.lhs.true51.i.if.then61.i_crit_edge:          ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then61.i

lor.lhs.false55.i:                                ; preds = %land.lhs.true51.i.lor.lhs.false55.i_crit_edge, %land.lhs.true45.i.lor.lhs.false55.i_crit_edge, %if.end.i82.lor.lhs.false55.i_crit_edge
  %91 = ptrtoint ptr %cf_loop698.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %cf_loop698.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool60.not.i = icmp eq i8 %92, 0
  br i1 %tobool60.not.i, label %if.end64.i, label %lor.lhs.false55.i.if.then61.i_crit_edge

lor.lhs.false55.i.if.then61.i_crit_edge:          ; preds = %lor.lhs.false55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then61.i

if.then61.i:                                      ; preds = %lor.lhs.false55.i.if.then61.i_crit_edge, %land.lhs.true51.i.if.then61.i_crit_edge
  %93 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 25, ptr %fddiSMTCF_State, align 2
  br label %cfm_fsm.exit

if.end64.i:                                       ; preds = %lor.lhs.false55.i
  %94 = ptrtoint ptr %cem_pst187.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %cem_pst187.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %95)
  %cmp68.i = icmp eq i32 %95, 1
  br i1 %cmp68.i, label %land.lhs.true70.i, label %if.end64.i.lor.lhs.false81.i_crit_edge

if.end64.i.lor.lhs.false81.i_crit_edge:           ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false81.i

land.lhs.true70.i:                                ; preds = %if.end64.i
  %96 = ptrtoint ptr %cf_join.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %cf_join.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool75.not.i = icmp eq i8 %97, 0
  br i1 %tobool75.not.i, label %land.lhs.true70.i.lor.lhs.false81.i_crit_edge, label %land.lhs.true76.i

land.lhs.true70.i.lor.lhs.false81.i_crit_edge:    ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false81.i

land.lhs.true76.i:                                ; preds = %land.lhs.true70.i
  %98 = ptrtoint ptr %wc_flag600.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %wc_flag600.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool80.not.i = icmp eq i8 %99, 0
  br i1 %tobool80.not.i, label %land.lhs.true76.i.if.then87.i_crit_edge, label %land.lhs.true76.i.lor.lhs.false81.i_crit_edge

land.lhs.true76.i.lor.lhs.false81.i_crit_edge:    ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false81.i

land.lhs.true76.i.if.then87.i_crit_edge:          ; preds = %land.lhs.true76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then87.i

lor.lhs.false81.i:                                ; preds = %land.lhs.true76.i.lor.lhs.false81.i_crit_edge, %land.lhs.true70.i.lor.lhs.false81.i_crit_edge, %if.end64.i.lor.lhs.false81.i_crit_edge
  %100 = ptrtoint ptr %cf_loop708.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %cf_loop708.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool86.not.i = icmp eq i8 %101, 0
  br i1 %tobool86.not.i, label %lor.lhs.false81.i.cfm_fsm.exitthread-pre-split_crit_edge, label %lor.lhs.false81.i.if.then87.i_crit_edge

lor.lhs.false81.i.if.then87.i_crit_edge:          ; preds = %lor.lhs.false81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then87.i

lor.lhs.false81.i.cfm_fsm.exitthread-pre-split_crit_edge: ; preds = %lor.lhs.false81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfm_fsm.exitthread-pre-split

if.then87.i:                                      ; preds = %lor.lhs.false81.i.if.then87.i_crit_edge, %land.lhs.true76.i.if.then87.i_crit_edge
  %102 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 26, ptr %fddiSMTCF_State, align 2
  br label %cfm_fsm.exit

sw.bb91.i:                                        ; preds = %do.body
  %103 = ptrtoint ptr %fddiPORTCurrentPath643.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 4, ptr %fddiPORTCurrentPath643.i, align 4
  %104 = ptrtoint ptr %fddiPORTCurrentPath571.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 0, ptr %fddiPORTCurrentPath571.i, align 4
  %105 = ptrtoint ptr %fddiPORTMACPlacement647.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 1, ptr %fddiPORTMACPlacement647.i, align 2
  %106 = ptrtoint ptr %fddiPORTMACPlacement579.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 0, ptr %fddiPORTMACPlacement579.i, align 2
  %107 = ptrtoint ptr %fddiSMTStationStatus649.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 0, ptr %fddiSMTStationStatus649.i, align 4
  tail call void @config_mux(ptr noundef %smc, i32 noundef 2) #7
  %108 = ptrtoint ptr %cf_loop698.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %cf_loop698.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool113.not.i = icmp eq i8 %109, 0
  br i1 %tobool113.not.i, label %sw.bb91.i.if.end119.i_crit_edge, label %if.then114.i

sw.bb91.i.if.end119.i_crit_edge:                  ; preds = %sw.bb91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119.i

if.then114.i:                                     ; preds = %sw.bb91.i
  call void @__sanitizer_cov_trace_pc() #9
  %110 = ptrtoint ptr %rm_join663.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %rm_join663.i, align 1
  %111 = ptrtoint ptr %rm_loop665.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 1, ptr %rm_loop665.i, align 4
  tail call void @queue_event(ptr noundef %smc, i32 noundef 3, i32 noundef 9) #7
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.then114.i, %sw.bb91.i.if.end119.i_crit_edge
  %112 = ptrtoint ptr %cf_join693.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %cf_join693.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool123.not.i = icmp eq i8 %113, 0
  br i1 %tobool123.not.i, label %if.end119.i.if.end129.i_crit_edge, label %if.then124.i

if.end119.i.if.end129.i_crit_edge:                ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129.i

if.then124.i:                                     ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #9
  %114 = ptrtoint ptr %rm_loop665.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %rm_loop665.i, align 4
  %115 = ptrtoint ptr %rm_join663.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 1, ptr %rm_join663.i, align 1
  tail call void @queue_event(ptr noundef %smc, i32 noundef 3, i32 noundef 8) #7
  br label %if.end129.i

if.end129.i:                                      ; preds = %if.then124.i, %if.end119.i.if.end129.i_crit_edge
  %116 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %fddiSMTCF_State, align 2
  %118 = and i16 %117, -17
  store i16 %118, ptr %fddiSMTCF_State, align 2
  br label %cfm_fsm.exit

sw.bb136.i:                                       ; preds = %do.body
  %119 = ptrtoint ptr %wc_flag617.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %wc_flag617.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool141.not.i = icmp eq i8 %120, 0
  br i1 %tobool141.not.i, label %lor.lhs.false142.i, label %sw.bb136.i.land.lhs.true147.i_crit_edge

sw.bb136.i.land.lhs.true147.i_crit_edge:          ; preds = %sw.bb136.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true147.i

lor.lhs.false142.i:                               ; preds = %sw.bb136.i
  %121 = ptrtoint ptr %cf_join693.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %cf_join693.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool146.not.i = icmp eq i8 %122, 0
  br i1 %tobool146.not.i, label %lor.lhs.false142.i.land.lhs.true147.i_crit_edge, label %lor.lhs.false142.i.if.else.i84_crit_edge

lor.lhs.false142.i.if.else.i84_crit_edge:         ; preds = %lor.lhs.false142.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i84

lor.lhs.false142.i.land.lhs.true147.i_crit_edge:  ; preds = %lor.lhs.false142.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true147.i

land.lhs.true147.i:                               ; preds = %lor.lhs.false142.i.land.lhs.true147.i_crit_edge, %sw.bb136.i.land.lhs.true147.i_crit_edge
  %123 = ptrtoint ptr %cf_loop698.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %cf_loop698.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool151.not.i = icmp eq i8 %124, 0
  br i1 %tobool151.not.i, label %if.then152.i, label %land.lhs.true147.i.if.else.i84_crit_edge

land.lhs.true147.i.if.else.i84_crit_edge:         ; preds = %land.lhs.true147.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i84

if.then152.i:                                     ; preds = %land.lhs.true147.i
  call void @__sanitizer_cov_trace_pc() #9
  %125 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 16, ptr %fddiSMTCF_State, align 2
  br label %cfm_fsm.exit

if.else.i84:                                      ; preds = %land.lhs.true147.i.if.else.i84_crit_edge, %lor.lhs.false142.i.if.else.i84_crit_edge
  %126 = ptrtoint ptr %cf_loop708.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %cf_loop708.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool159.not.i = icmp eq i8 %127, 0
  br i1 %tobool159.not.i, label %lor.lhs.false178.i, label %land.lhs.true160.i

land.lhs.true160.i:                               ; preds = %if.else.i84
  %128 = ptrtoint ptr %cf_join693.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %cf_join693.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool165.not.i = icmp eq i8 %129, 0
  br i1 %tobool165.not.i, label %land.lhs.true160.i.land.lhs.true190.i_crit_edge, label %land.lhs.true166.i

land.lhs.true160.i.land.lhs.true190.i_crit_edge:  ; preds = %land.lhs.true160.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true190.i

land.lhs.true166.i:                               ; preds = %land.lhs.true160.i
  %130 = ptrtoint ptr %cem_pst169.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %cem_pst169.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %131)
  %cmp170.i = icmp eq i32 %131, 1
  br i1 %cmp170.i, label %land.lhs.true166.i.if.then203.i_crit_edge, label %land.lhs.true166.i.land.lhs.true190.i_crit_edge

land.lhs.true166.i.land.lhs.true190.i_crit_edge:  ; preds = %land.lhs.true166.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true190.i

land.lhs.true166.i.if.then203.i_crit_edge:        ; preds = %land.lhs.true166.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then203.i

lor.lhs.false178.i:                               ; preds = %if.else.i84
  %132 = ptrtoint ptr %cf_join.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %cf_join.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool183.not.i = icmp eq i8 %133, 0
  br i1 %tobool183.not.i, label %lor.lhs.false178.i.if.else208.i_crit_edge, label %land.lhs.true184.i

lor.lhs.false178.i.if.else208.i_crit_edge:        ; preds = %lor.lhs.false178.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else208.i

land.lhs.true184.i:                               ; preds = %lor.lhs.false178.i
  %134 = ptrtoint ptr %cem_pst187.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %cem_pst187.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %135)
  %cmp188.i = icmp eq i32 %135, 1
  br i1 %cmp188.i, label %land.lhs.true184.i.land.lhs.true190.i_crit_edge, label %land.lhs.true184.i.if.else208.i_crit_edge

land.lhs.true184.i.if.else208.i_crit_edge:        ; preds = %land.lhs.true184.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else208.i

land.lhs.true184.i.land.lhs.true190.i_crit_edge:  ; preds = %land.lhs.true184.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true190.i

land.lhs.true190.i:                               ; preds = %land.lhs.true184.i.land.lhs.true190.i_crit_edge, %land.lhs.true166.i.land.lhs.true190.i_crit_edge, %land.lhs.true160.i.land.lhs.true190.i_crit_edge
  %136 = ptrtoint ptr %pc_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %pc_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %137)
  %cmp194.i = icmp eq i8 %137, 2
  br i1 %cmp194.i, label %land.lhs.true190.i.if.then203.i_crit_edge, label %lor.lhs.false196.i

land.lhs.true190.i.if.then203.i_crit_edge:        ; preds = %land.lhs.true190.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then203.i

lor.lhs.false196.i:                               ; preds = %land.lhs.true190.i
  %138 = ptrtoint ptr %pc_mode5.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %pc_mode5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %139)
  %cmp201.i = icmp eq i8 %139, 2
  br i1 %cmp201.i, label %lor.lhs.false196.i.if.then203.i_crit_edge, label %lor.lhs.false196.i.if.else208.i_crit_edge

lor.lhs.false196.i.if.else208.i_crit_edge:        ; preds = %lor.lhs.false196.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else208.i

lor.lhs.false196.i.if.then203.i_crit_edge:        ; preds = %lor.lhs.false196.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then203.i

if.then203.i:                                     ; preds = %lor.lhs.false196.i.if.then203.i_crit_edge, %land.lhs.true190.i.if.then203.i_crit_edge, %land.lhs.true166.i.if.then203.i_crit_edge
  %140 = ptrtoint ptr %scrub633.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 1, ptr %scrub633.i, align 1
  %141 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 26, ptr %fddiSMTCF_State, align 2
  br label %cfm_fsm.exit

if.else208.i:                                     ; preds = %lor.lhs.false196.i.if.else208.i_crit_edge, %land.lhs.true184.i.if.else208.i_crit_edge, %lor.lhs.false178.i.if.else208.i_crit_edge
  %142 = ptrtoint ptr %s627.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %s627.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool210.not.i = icmp eq i8 %143, 0
  %144 = ptrtoint ptr %cf_join693.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %cf_join693.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool216.not.i = icmp eq i8 %145, 0
  br i1 %tobool210.not.i, label %land.lhs.true211.i, label %land.lhs.true263.i

land.lhs.true211.i:                               ; preds = %if.else208.i
  br i1 %tobool216.not.i, label %land.lhs.true211.i.cfm_fsm.exitthread-pre-split_crit_edge, label %land.lhs.true217.i

land.lhs.true211.i.cfm_fsm.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true211.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfm_fsm.exitthread-pre-split

land.lhs.true217.i:                               ; preds = %land.lhs.true211.i
  %146 = ptrtoint ptr %cem_pst169.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %cem_pst169.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %147)
  %cmp221.i = icmp eq i32 %147, 1
  br i1 %cmp221.i, label %land.lhs.true223.i, label %land.lhs.true217.i.cfm_fsm.exitthread-pre-split_crit_edge

land.lhs.true217.i.cfm_fsm.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true217.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfm_fsm.exitthread-pre-split

land.lhs.true223.i:                               ; preds = %land.lhs.true217.i
  %148 = ptrtoint ptr %pc_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %pc_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %149)
  %cmp228.i = icmp eq i8 %149, 1
  br i1 %cmp228.i, label %land.lhs.true230.i, label %land.lhs.true223.i.cfm_fsm.exitthread-pre-split_crit_edge

land.lhs.true223.i.cfm_fsm.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true223.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfm_fsm.exitthread-pre-split

land.lhs.true230.i:                               ; preds = %land.lhs.true223.i
  %150 = ptrtoint ptr %cf_join.i.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %cf_join.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool235.not.i = icmp eq i8 %151, 0
  br i1 %tobool235.not.i, label %land.lhs.true230.i.cfm_fsm.exitthread-pre-split_crit_edge, label %land.lhs.true236.i

land.lhs.true230.i.cfm_fsm.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true230.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfm_fsm.exitthread-pre-split

land.lhs.true236.i:                               ; preds = %land.lhs.true230.i
  %152 = ptrtoint ptr %cem_pst187.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %cem_pst187.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %153)
  %cmp240.i = icmp eq i32 %153, 1
  br i1 %cmp240.i, label %land.lhs.true242.i, label %land.lhs.true236.i.cfm_fsm.exitthread-pre-split_crit_edge

land.lhs.true236.i.cfm_fsm.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true236.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfm_fsm.exitthread-pre-split

land.lhs.true242.i:                               ; preds = %land.lhs.true236.i
  %154 = ptrtoint ptr %pc_mode5.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %pc_mode5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %155)
  %cmp247.i = icmp eq i8 %155, 1
  br i1 %cmp247.i, label %if.then249.i, label %land.lhs.true242.i.cfm_fsm.exitthread-pre-split_crit_edge

land.lhs.true242.i.cfm_fsm.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true242.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfm_fsm.exitthread-pre-split

if.then249.i:                                     ; preds = %land.lhs.true242.i
  call void @__sanitizer_cov_trace_pc() #9
  %156 = ptrtoint ptr %scrub633.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 1, ptr %scrub633.i, align 1
  %157 = ptrtoint ptr %scrub623.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 1, ptr %scrub623.i, align 1
  %158 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 28, ptr %fddiSMTCF_State, align 2
  br label %cfm_fsm.exit

land.lhs.true263.i:                               ; preds = %if.else208.i
  br i1 %tobool216.not.i, label %land.lhs.true263.i.cfm_fsm.exitthread-pre-split_crit_edge, label %land.lhs.true269.i

land.lhs.true263.i.cfm_fsm.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true263.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfm_fsm.exitthread-pre-split

land.lhs.true269.i:                               ; preds = %land.lhs.true263.i
  %159 = ptrtoint ptr %cem_pst169.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %cem_pst169.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %160)
  %cmp273.i = icmp eq i32 %160, 1
  br i1 %cmp273.i, label %land.lhs.true275.i, label %land.lhs.true269.i.cfm_fsm.exitthread-pre-split_crit_edge

land.lhs.true269.i.cfm_fsm.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true269.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfm_fsm.exitthread-pre-split

land.lhs.true275.i:                               ; preds = %land.lhs.true269.i
  %161 = ptrtoint ptr %pc_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %pc_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %162)
  %cmp280.i = icmp eq i8 %162, 1
  br i1 %cmp280.i, label %land.lhs.true282.i, label %land.lhs.true275.i.cfm_fsm.exitthread-pre-split_crit_edge

land.lhs.true275.i.cfm_fsm.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true275.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfm_fsm.exitthread-pre-split

land.lhs.true282.i:                               ; preds = %land.lhs.true275.i
  %163 = ptrtoint ptr %cf_join.i.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %cf_join.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool287.not.i = icmp eq i8 %164, 0
  br i1 %tobool287.not.i, label %land.lhs.true282.i.cfm_fsm.exitthread-pre-split_crit_edge, label %land.lhs.true288.i

land.lhs.true282.i.cfm_fsm.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true282.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfm_fsm.exitthread-pre-split

land.lhs.true288.i:                               ; preds = %land.lhs.true282.i
  %165 = ptrtoint ptr %cem_pst187.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %cem_pst187.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %166)
  %cmp292.i = icmp eq i32 %166, 1
  br i1 %cmp292.i, label %land.lhs.true294.i, label %land.lhs.true288.i.cfm_fsm.exitthread-pre-split_crit_edge

land.lhs.true288.i.cfm_fsm.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true288.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfm_fsm.exitthread-pre-split

land.lhs.true294.i:                               ; preds = %land.lhs.true288.i
  %167 = ptrtoint ptr %pc_mode5.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %pc_mode5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %168)
  %cmp299.i = icmp eq i8 %168, 1
  br i1 %cmp299.i, label %if.then301.i, label %land.lhs.true294.i.cfm_fsm.exitthread-pre-split_crit_edge

land.lhs.true294.i.cfm_fsm.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true294.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfm_fsm.exitthread-pre-split

if.then301.i:                                     ; preds = %land.lhs.true294.i
  call void @__sanitizer_cov_trace_pc() #9
  %169 = ptrtoint ptr %scrub633.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 1, ptr %scrub633.i, align 1
  %170 = ptrtoint ptr %scrub623.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 1, ptr %scrub623.i, align 1
  %171 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 23, ptr %fddiSMTCF_State, align 2
  br label %cfm_fsm.exit

sw.bb314.i:                                       ; preds = %do.body
  %172 = ptrtoint ptr %fddiPORTCurrentPath643.i to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 0, ptr %fddiPORTCurrentPath643.i, align 4
  %173 = ptrtoint ptr %fddiPORTCurrentPath571.i to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 4, ptr %fddiPORTCurrentPath571.i, align 4
  %174 = ptrtoint ptr %fddiPORTMACPlacement647.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 0, ptr %fddiPORTMACPlacement647.i, align 2
  %175 = ptrtoint ptr %fddiPORTMACPlacement579.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 1, ptr %fddiPORTMACPlacement579.i, align 2
  %176 = ptrtoint ptr %fddiSMTStationStatus649.i to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 0, ptr %fddiSMTStationStatus649.i, align 4
  tail call void @config_mux(ptr noundef %smc, i32 noundef 3) #7
  %177 = ptrtoint ptr %cf_loop708.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %cf_loop708.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool336.not.i = icmp eq i8 %178, 0
  br i1 %tobool336.not.i, label %sw.bb314.i.if.end342.i_crit_edge, label %if.then337.i

sw.bb314.i.if.end342.i_crit_edge:                 ; preds = %sw.bb314.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end342.i

if.then337.i:                                     ; preds = %sw.bb314.i
  call void @__sanitizer_cov_trace_pc() #9
  %179 = ptrtoint ptr %rm_join663.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 0, ptr %rm_join663.i, align 1
  %180 = ptrtoint ptr %rm_loop665.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 1, ptr %rm_loop665.i, align 4
  tail call void @queue_event(ptr noundef %smc, i32 noundef 3, i32 noundef 9) #7
  br label %if.end342.i

if.end342.i:                                      ; preds = %if.then337.i, %sw.bb314.i.if.end342.i_crit_edge
  %181 = ptrtoint ptr %cf_join.i.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %cf_join.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool346.not.i = icmp eq i8 %182, 0
  br i1 %tobool346.not.i, label %if.end342.i.if.end352.i_crit_edge, label %if.then347.i

if.end342.i.if.end352.i_crit_edge:                ; preds = %if.end342.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end352.i

if.then347.i:                                     ; preds = %if.end342.i
  call void @__sanitizer_cov_trace_pc() #9
  %183 = ptrtoint ptr %rm_loop665.i to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 0, ptr %rm_loop665.i, align 4
  %184 = ptrtoint ptr %rm_join663.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 1, ptr %rm_join663.i, align 1
  tail call void @queue_event(ptr noundef %smc, i32 noundef 3, i32 noundef 8) #7
  br label %if.end352.i

if.end352.i:                                      ; preds = %if.then347.i, %if.end342.i.if.end352.i_crit_edge
  %185 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %fddiSMTCF_State, align 2
  %187 = and i16 %186, -17
  store i16 %187, ptr %fddiSMTCF_State, align 2
  br label %cfm_fsm.exit

sw.bb359.i:                                       ; preds = %do.body
  %188 = ptrtoint ptr %cf_join.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %cf_join.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %189)
  %tobool363.not.i = icmp eq i8 %189, 0
  br i1 %tobool363.not.i, label %land.lhs.true364.i, label %sw.bb359.i.if.else372.i_crit_edge

sw.bb359.i.if.else372.i_crit_edge:                ; preds = %sw.bb359.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else372.i

land.lhs.true364.i:                               ; preds = %sw.bb359.i
  %190 = ptrtoint ptr %cf_loop708.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %cf_loop708.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool368.not.i = icmp eq i8 %191, 0
  br i1 %tobool368.not.i, label %if.then369.i, label %land.lhs.true364.i.if.else372.i_crit_edge

land.lhs.true364.i.if.else372.i_crit_edge:        ; preds = %land.lhs.true364.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else372.i

if.then369.i:                                     ; preds = %land.lhs.true364.i
  call void @__sanitizer_cov_trace_pc() #9
  %192 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 16, ptr %fddiSMTCF_State, align 2
  br label %cfm_fsm.exit

if.else372.i:                                     ; preds = %land.lhs.true364.i.if.else372.i_crit_edge, %sw.bb359.i.if.else372.i_crit_edge
  %193 = ptrtoint ptr %cf_loop698.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %cf_loop698.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool377.not.i = icmp eq i8 %194, 0
  br i1 %tobool377.not.i, label %if.else372.i.if.else404.i_crit_edge, label %land.lhs.true378.i

if.else372.i.if.else404.i_crit_edge:              ; preds = %if.else372.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else404.i

land.lhs.true378.i:                               ; preds = %if.else372.i
  %195 = ptrtoint ptr %pc_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %pc_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %196)
  %cmp383.i = icmp ne i8 %196, 1
  %brmerge.i = select i1 %cmp383.i, i1 true, i1 %tobool363.not.i
  br i1 %brmerge.i, label %land.lhs.true378.i.if.else404.i_crit_edge, label %land.lhs.true391.i

land.lhs.true378.i.if.else404.i_crit_edge:        ; preds = %land.lhs.true378.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else404.i

land.lhs.true391.i:                               ; preds = %land.lhs.true378.i
  %197 = ptrtoint ptr %pc_mode5.i.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %pc_mode5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %198)
  %cmp396.i = icmp eq i8 %198, 1
  br i1 %cmp396.i, label %if.then398.i, label %land.lhs.true391.i.if.else404.i_crit_edge

land.lhs.true391.i.if.else404.i_crit_edge:        ; preds = %land.lhs.true391.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else404.i

if.then398.i:                                     ; preds = %land.lhs.true391.i
  call void @__sanitizer_cov_trace_pc() #9
  %199 = ptrtoint ptr %scrub623.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 1, ptr %scrub623.i, align 1
  %200 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 25, ptr %fddiSMTCF_State, align 2
  br label %cfm_fsm.exit

if.else404.i:                                     ; preds = %land.lhs.true391.i.if.else404.i_crit_edge, %land.lhs.true378.i.if.else404.i_crit_edge, %if.else372.i.if.else404.i_crit_edge
  %201 = ptrtoint ptr %s627.i to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %s627.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %202)
  %tobool407.not.i = icmp eq i8 %202, 0
  %203 = ptrtoint ptr %cf_join693.i to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %cf_join693.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %tobool413.not.i = icmp eq i8 %204, 0
  br i1 %tobool407.not.i, label %land.lhs.true408.i, label %land.lhs.true448.i

land.lhs.true408.i:                               ; preds = %if.else404.i
  br i1 %tobool413.not.i, label %land.lhs.true408.i.cfm_fsm.exitthread-pre-split_crit_edge, label %land.lhs.true414.i

land.lhs.true408.i.cfm_fsm.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true408.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfm_fsm.exitthread-pre-split

land.lhs.true414.i:                               ; preds = %land.lhs.true408.i
  %205 = ptrtoint ptr %pc_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %pc_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %206)
  %cmp419.i = icmp ne i8 %206, 1
  %brmerge1.i = select i1 %cmp419.i, i1 true, i1 %tobool363.not.i
  br i1 %brmerge1.i, label %land.lhs.true414.i.cfm_fsm.exitthread-pre-split_crit_edge, label %land.lhs.true427.i

land.lhs.true414.i.cfm_fsm.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true414.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfm_fsm.exitthread-pre-split

land.lhs.true427.i:                               ; preds = %land.lhs.true414.i
  %207 = ptrtoint ptr %pc_mode5.i.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %pc_mode5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %208)
  %cmp432.i = icmp eq i8 %208, 1
  br i1 %cmp432.i, label %if.then434.i, label %land.lhs.true427.i.cfm_fsm.exitthread-pre-split_crit_edge

land.lhs.true427.i.cfm_fsm.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true427.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfm_fsm.exitthread-pre-split

if.then434.i:                                     ; preds = %land.lhs.true427.i
  call void @__sanitizer_cov_trace_pc() #9
  %209 = ptrtoint ptr %scrub633.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 1, ptr %scrub633.i, align 1
  %210 = ptrtoint ptr %scrub623.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 1, ptr %scrub623.i, align 1
  %211 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 28, ptr %fddiSMTCF_State, align 2
  br label %cfm_fsm.exit

land.lhs.true448.i:                               ; preds = %if.else404.i
  br i1 %tobool413.not.i, label %land.lhs.true448.i.cfm_fsm.exitthread-pre-split_crit_edge, label %land.lhs.true454.i

land.lhs.true448.i.cfm_fsm.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true448.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfm_fsm.exitthread-pre-split

land.lhs.true454.i:                               ; preds = %land.lhs.true448.i
  %212 = ptrtoint ptr %pc_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %pc_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %213)
  %cmp459.i = icmp ne i8 %213, 1
  %brmerge2.i = select i1 %cmp459.i, i1 true, i1 %tobool363.not.i
  br i1 %brmerge2.i, label %land.lhs.true454.i.cfm_fsm.exitthread-pre-split_crit_edge, label %land.lhs.true467.i

land.lhs.true454.i.cfm_fsm.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true454.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfm_fsm.exitthread-pre-split

land.lhs.true467.i:                               ; preds = %land.lhs.true454.i
  %214 = ptrtoint ptr %pc_mode5.i.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %pc_mode5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %215)
  %cmp472.i = icmp eq i8 %215, 1
  br i1 %cmp472.i, label %if.then474.i, label %land.lhs.true467.i.cfm_fsm.exitthread-pre-split_crit_edge

land.lhs.true467.i.cfm_fsm.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true467.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfm_fsm.exitthread-pre-split

if.then474.i:                                     ; preds = %land.lhs.true467.i
  call void @__sanitizer_cov_trace_pc() #9
  %216 = ptrtoint ptr %scrub633.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 1, ptr %scrub633.i, align 1
  %217 = ptrtoint ptr %scrub623.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 1, ptr %scrub623.i, align 1
  %218 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 23, ptr %fddiSMTCF_State, align 2
  br label %cfm_fsm.exit

sw.bb487.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %219 = ptrtoint ptr %fddiPORTCurrentPath643.i to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 5, ptr %fddiPORTCurrentPath643.i, align 4
  %220 = ptrtoint ptr %fddiPORTCurrentPath571.i to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 5, ptr %fddiPORTCurrentPath571.i, align 4
  %221 = ptrtoint ptr %fddiPORTMACPlacement647.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 0, ptr %fddiPORTMACPlacement647.i, align 2
  %222 = ptrtoint ptr %fddiPORTMACPlacement579.i to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 1, ptr %fddiPORTMACPlacement579.i, align 2
  %223 = ptrtoint ptr %fddiSMTStationStatus649.i to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 2, ptr %fddiSMTStationStatus649.i, align 4
  tail call void @config_mux(ptr noundef %smc, i32 noundef 0) #7
  %224 = ptrtoint ptr %rm_loop665.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 0, ptr %rm_loop665.i, align 4
  %225 = ptrtoint ptr %rm_join663.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 1, ptr %rm_join663.i, align 1
  tail call void @queue_event(ptr noundef %smc, i32 noundef 3, i32 noundef 8) #7
  %226 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_load2_noabort(i32 %226)
  %227 = load i16, ptr %fddiSMTCF_State, align 2
  %228 = and i16 %227, -17
  store i16 %228, ptr %fddiSMTCF_State, align 2
  br label %cfm_fsm.exit

sw.bb516.i:                                       ; preds = %do.body
  %229 = ptrtoint ptr %wc_flag600.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %wc_flag600.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %230)
  %tobool521.not.i = icmp eq i8 %230, 0
  br i1 %tobool521.not.i, label %lor.lhs.false522.i, label %sw.bb516.i.if.then527.i_crit_edge

sw.bb516.i.if.then527.i_crit_edge:                ; preds = %sw.bb516.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then527.i

lor.lhs.false522.i:                               ; preds = %sw.bb516.i
  %231 = ptrtoint ptr %cf_join.i.i to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %cf_join.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %232)
  %tobool526.not.i = icmp eq i8 %232, 0
  br i1 %tobool526.not.i, label %lor.lhs.false522.i.if.then527.i_crit_edge, label %if.else533.i

lor.lhs.false522.i.if.then527.i_crit_edge:        ; preds = %lor.lhs.false522.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then527.i

if.then527.i:                                     ; preds = %lor.lhs.false522.i.if.then527.i_crit_edge, %sw.bb516.i.if.then527.i_crit_edge
  %233 = ptrtoint ptr %scrub633.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 1, ptr %scrub633.i, align 1
  %234 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 25, ptr %fddiSMTCF_State, align 2
  br label %cfm_fsm.exit

if.else533.i:                                     ; preds = %lor.lhs.false522.i
  %235 = ptrtoint ptr %cf_join693.i to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %cf_join693.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %236)
  %tobool537.not.i = icmp eq i8 %236, 0
  br i1 %tobool537.not.i, label %if.else533.i.if.then544.i_crit_edge, label %lor.lhs.false538.i

if.else533.i.if.then544.i_crit_edge:              ; preds = %if.else533.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then544.i

lor.lhs.false538.i:                               ; preds = %if.else533.i
  %237 = ptrtoint ptr %wc_flag617.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %wc_flag617.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %238)
  %tobool543.not.i = icmp eq i8 %238, 0
  br i1 %tobool543.not.i, label %if.else550.i, label %lor.lhs.false538.i.if.then544.i_crit_edge

lor.lhs.false538.i.if.then544.i_crit_edge:        ; preds = %lor.lhs.false538.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then544.i

if.then544.i:                                     ; preds = %lor.lhs.false538.i.if.then544.i_crit_edge, %if.else533.i.if.then544.i_crit_edge
  %239 = ptrtoint ptr %scrub623.i to i32
  call void @__asan_store1_noabort(i32 %239)
  store i8 1, ptr %scrub623.i, align 1
  %240 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_store2_noabort(i32 %240)
  store i16 26, ptr %fddiSMTCF_State, align 2
  br label %cfm_fsm.exit

if.else550.i:                                     ; preds = %lor.lhs.false538.i
  %241 = ptrtoint ptr %s627.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %s627.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %242)
  %tobool553.not.i = icmp eq i8 %242, 0
  br i1 %tobool553.not.i, label %if.else550.i.cfm_fsm.exitthread-pre-split_crit_edge, label %if.then554.i

if.else550.i.cfm_fsm.exitthread-pre-split_crit_edge: ; preds = %if.else550.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfm_fsm.exitthread-pre-split

if.then554.i:                                     ; preds = %if.else550.i
  call void @__sanitizer_cov_trace_pc() #9
  %243 = ptrtoint ptr %scrub623.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 1, ptr %scrub623.i, align 1
  %244 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_store2_noabort(i32 %244)
  store i16 23, ptr %fddiSMTCF_State, align 2
  br label %cfm_fsm.exit

sw.bb563.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %245 = ptrtoint ptr %fddiPORTCurrentPath643.i to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 5, ptr %fddiPORTCurrentPath643.i, align 4
  %246 = ptrtoint ptr %fddiPORTCurrentPath571.i to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 5, ptr %fddiPORTCurrentPath571.i, align 4
  %247 = ptrtoint ptr %fddiPORTMACPlacement647.i to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 1, ptr %fddiPORTMACPlacement647.i, align 2
  %248 = ptrtoint ptr %fddiPORTMACPlacement579.i to i32
  call void @__asan_store2_noabort(i32 %248)
  store i16 0, ptr %fddiPORTMACPlacement579.i, align 2
  %249 = ptrtoint ptr %fddiSMTStationStatus649.i to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 2, ptr %fddiSMTStationStatus649.i, align 4
  tail call void @config_mux(ptr noundef %smc, i32 noundef 1) #7
  %250 = ptrtoint ptr %rm_loop665.i to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 0, ptr %rm_loop665.i, align 4
  %251 = ptrtoint ptr %rm_join663.i to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 1, ptr %rm_join663.i, align 1
  tail call void @queue_event(ptr noundef %smc, i32 noundef 3, i32 noundef 8) #7
  %252 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %fddiSMTCF_State, align 2
  %254 = and i16 %253, -17
  store i16 %254, ptr %fddiSMTCF_State, align 2
  br label %cfm_fsm.exit

sw.bb592.i:                                       ; preds = %do.body
  %255 = ptrtoint ptr %cf_join.i.i to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %cf_join.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %256)
  %tobool596.not.i = icmp eq i8 %256, 0
  br i1 %tobool596.not.i, label %sw.bb592.i.if.then603.i_crit_edge, label %lor.lhs.false597.i

sw.bb592.i.if.then603.i_crit_edge:                ; preds = %sw.bb592.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then603.i

lor.lhs.false597.i:                               ; preds = %sw.bb592.i
  %257 = ptrtoint ptr %wc_flag600.i to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %wc_flag600.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %258)
  %tobool602.not.i = icmp eq i8 %258, 0
  br i1 %tobool602.not.i, label %if.else609.i, label %lor.lhs.false597.i.if.then603.i_crit_edge

lor.lhs.false597.i.if.then603.i_crit_edge:        ; preds = %lor.lhs.false597.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then603.i

if.then603.i:                                     ; preds = %lor.lhs.false597.i.if.then603.i_crit_edge, %sw.bb592.i.if.then603.i_crit_edge
  %259 = ptrtoint ptr %scrub633.i to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 1, ptr %scrub633.i, align 1
  %260 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_store2_noabort(i32 %260)
  store i16 25, ptr %fddiSMTCF_State, align 2
  br label %cfm_fsm.exit

if.else609.i:                                     ; preds = %lor.lhs.false597.i
  %261 = ptrtoint ptr %cf_join693.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %cf_join693.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %262)
  %tobool613.not.i = icmp eq i8 %262, 0
  br i1 %tobool613.not.i, label %if.else609.i.if.then620.i_crit_edge, label %lor.lhs.false614.i

if.else609.i.if.then620.i_crit_edge:              ; preds = %if.else609.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then620.i

lor.lhs.false614.i:                               ; preds = %if.else609.i
  %263 = ptrtoint ptr %wc_flag617.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %wc_flag617.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %264)
  %tobool619.not.i = icmp eq i8 %264, 0
  br i1 %tobool619.not.i, label %if.else626.i, label %lor.lhs.false614.i.if.then620.i_crit_edge

lor.lhs.false614.i.if.then620.i_crit_edge:        ; preds = %lor.lhs.false614.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then620.i

if.then620.i:                                     ; preds = %lor.lhs.false614.i.if.then620.i_crit_edge, %if.else609.i.if.then620.i_crit_edge
  %265 = ptrtoint ptr %scrub623.i to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 1, ptr %scrub623.i, align 1
  %266 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_store2_noabort(i32 %266)
  store i16 26, ptr %fddiSMTCF_State, align 2
  br label %cfm_fsm.exit

if.else626.i:                                     ; preds = %lor.lhs.false614.i
  %267 = ptrtoint ptr %s627.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %s627.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %268)
  %tobool629.not.i = icmp eq i8 %268, 0
  br i1 %tobool629.not.i, label %if.then630.i, label %if.else626.i.cfm_fsm.exitthread-pre-split_crit_edge

if.else626.i.cfm_fsm.exitthread-pre-split_crit_edge: ; preds = %if.else626.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfm_fsm.exitthread-pre-split

if.then630.i:                                     ; preds = %if.else626.i
  call void @__sanitizer_cov_trace_pc() #9
  %269 = ptrtoint ptr %scrub633.i to i32
  call void @__asan_store1_noabort(i32 %269)
  store i8 1, ptr %scrub633.i, align 1
  %270 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_store2_noabort(i32 %270)
  store i16 28, ptr %fddiSMTCF_State, align 2
  br label %cfm_fsm.exit

sw.bb639.i:                                       ; preds = %do.body
  %271 = ptrtoint ptr %fddiPORTCurrentPath643.i to i32
  call void @__asan_store2_noabort(i32 %271)
  store i16 4, ptr %fddiPORTCurrentPath643.i, align 4
  %272 = ptrtoint ptr %fddiPORTMACPlacement647.i to i32
  call void @__asan_store2_noabort(i32 %272)
  store i16 1, ptr %fddiPORTMACPlacement647.i, align 2
  %273 = ptrtoint ptr %fddiSMTStationStatus649.i to i32
  call void @__asan_store2_noabort(i32 %273)
  store i16 0, ptr %fddiSMTStationStatus649.i, align 4
  tail call void @config_mux(ptr noundef %smc, i32 noundef 5) #7
  %274 = ptrtoint ptr %cf_loop698.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %cf_loop698.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %275)
  %tobool654.not.i = icmp eq i8 %275, 0
  br i1 %tobool654.not.i, label %lor.lhs.false655.i, label %sw.bb639.i.if.then661.i_crit_edge

sw.bb639.i.if.then661.i_crit_edge:                ; preds = %sw.bb639.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then661.i

lor.lhs.false655.i:                               ; preds = %sw.bb639.i
  %276 = ptrtoint ptr %cf_loop708.i to i32
  call void @__asan_load1_noabort(i32 %276)
  %277 = load i8, ptr %cf_loop708.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %277)
  %tobool660.not.i = icmp eq i8 %277, 0
  br i1 %tobool660.not.i, label %lor.lhs.false655.i.if.end666.i_crit_edge, label %lor.lhs.false655.i.if.then661.i_crit_edge

lor.lhs.false655.i.if.then661.i_crit_edge:        ; preds = %lor.lhs.false655.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then661.i

lor.lhs.false655.i.if.end666.i_crit_edge:         ; preds = %lor.lhs.false655.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end666.i

if.then661.i:                                     ; preds = %lor.lhs.false655.i.if.then661.i_crit_edge, %sw.bb639.i.if.then661.i_crit_edge
  %278 = ptrtoint ptr %rm_join663.i to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 0, ptr %rm_join663.i, align 1
  %279 = ptrtoint ptr %rm_loop665.i to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 1, ptr %rm_loop665.i, align 4
  tail call void @queue_event(ptr noundef %smc, i32 noundef 3, i32 noundef 9) #7
  br label %if.end666.i

if.end666.i:                                      ; preds = %if.then661.i, %lor.lhs.false655.i.if.end666.i_crit_edge
  %280 = ptrtoint ptr %cf_join693.i to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %cf_join693.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %281)
  %tobool671.not.i = icmp eq i8 %281, 0
  br i1 %tobool671.not.i, label %lor.lhs.false672.i, label %if.end666.i.if.then678.i_crit_edge

if.end666.i.if.then678.i_crit_edge:               ; preds = %if.end666.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then678.i

lor.lhs.false672.i:                               ; preds = %if.end666.i
  %282 = ptrtoint ptr %cf_join.i.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %cf_join.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %283)
  %tobool677.not.i = icmp eq i8 %283, 0
  br i1 %tobool677.not.i, label %lor.lhs.false672.i.if.end683.i_crit_edge, label %lor.lhs.false672.i.if.then678.i_crit_edge

lor.lhs.false672.i.if.then678.i_crit_edge:        ; preds = %lor.lhs.false672.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then678.i

lor.lhs.false672.i.if.end683.i_crit_edge:         ; preds = %lor.lhs.false672.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end683.i

if.then678.i:                                     ; preds = %lor.lhs.false672.i.if.then678.i_crit_edge, %if.end666.i.if.then678.i_crit_edge
  %284 = ptrtoint ptr %rm_loop665.i to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 0, ptr %rm_loop665.i, align 4
  %285 = ptrtoint ptr %rm_join663.i to i32
  call void @__asan_store1_noabort(i32 %285)
  store i8 1, ptr %rm_join663.i, align 1
  tail call void @queue_event(ptr noundef %smc, i32 noundef 3, i32 noundef 8) #7
  br label %if.end683.i

if.end683.i:                                      ; preds = %if.then678.i, %lor.lhs.false672.i.if.end683.i_crit_edge
  %286 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_load2_noabort(i32 %286)
  %287 = load i16, ptr %fddiSMTCF_State, align 2
  %288 = and i16 %287, -17
  store i16 %288, ptr %fddiSMTCF_State, align 2
  br label %cfm_fsm.exit

sw.bb690.i:                                       ; preds = %do.body
  %289 = ptrtoint ptr %cf_join693.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %cf_join693.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %290)
  %tobool694.not.i = icmp eq i8 %290, 0
  br i1 %tobool694.not.i, label %land.lhs.true695.i, label %sw.bb690.i.land.lhs.true31_crit_edge

sw.bb690.i.land.lhs.true31_crit_edge:             ; preds = %sw.bb690.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true31

land.lhs.true695.i:                               ; preds = %sw.bb690.i
  %291 = ptrtoint ptr %cf_loop698.i to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %cf_loop698.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %292)
  %tobool699.not.i = icmp eq i8 %292, 0
  br i1 %tobool699.not.i, label %land.lhs.true700.i, label %land.lhs.true695.i.cfm_fsm.exitthread-pre-split_crit_edge

land.lhs.true695.i.cfm_fsm.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true695.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfm_fsm.exitthread-pre-split

land.lhs.true700.i:                               ; preds = %land.lhs.true695.i
  %293 = ptrtoint ptr %cf_join.i.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %cf_join.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %294)
  %tobool704.not.i = icmp eq i8 %294, 0
  br i1 %tobool704.not.i, label %land.lhs.true705.i, label %land.lhs.true700.i.cfm_fsm.exitthread-pre-split_crit_edge

land.lhs.true700.i.cfm_fsm.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true700.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfm_fsm.exitthread-pre-split

land.lhs.true705.i:                               ; preds = %land.lhs.true700.i
  %295 = ptrtoint ptr %cf_loop708.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %cf_loop708.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %296)
  %tobool709.not.i = icmp eq i8 %296, 0
  br i1 %tobool709.not.i, label %if.then710.i, label %land.lhs.true705.i.cfm_fsm.exitthread-pre-split_crit_edge

land.lhs.true705.i.cfm_fsm.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true705.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cfm_fsm.exitthread-pre-split

if.then710.i:                                     ; preds = %land.lhs.true705.i
  call void @__sanitizer_cov_trace_pc() #9
  %297 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_store2_noabort(i32 %297)
  store i16 16, ptr %fddiSMTCF_State, align 2
  br label %cfm_fsm.exit

do.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 106, ptr noundef nonnull @.str.3) #10
  br label %cfm_fsm.exitthread-pre-split

cfm_fsm.exitthread-pre-split:                     ; preds = %do.end.i, %land.lhs.true705.i.cfm_fsm.exitthread-pre-split_crit_edge, %land.lhs.true700.i.cfm_fsm.exitthread-pre-split_crit_edge, %land.lhs.true695.i.cfm_fsm.exitthread-pre-split_crit_edge, %if.else626.i.cfm_fsm.exitthread-pre-split_crit_edge, %if.else550.i.cfm_fsm.exitthread-pre-split_crit_edge, %land.lhs.true467.i.cfm_fsm.exitthread-pre-split_crit_edge, %land.lhs.true454.i.cfm_fsm.exitthread-pre-split_crit_edge, %land.lhs.true448.i.cfm_fsm.exitthread-pre-split_crit_edge, %land.lhs.true427.i.cfm_fsm.exitthread-pre-split_crit_edge, %land.lhs.true414.i.cfm_fsm.exitthread-pre-split_crit_edge, %land.lhs.true408.i.cfm_fsm.exitthread-pre-split_crit_edge, %land.lhs.true294.i.cfm_fsm.exitthread-pre-split_crit_edge, %land.lhs.true288.i.cfm_fsm.exitthread-pre-split_crit_edge, %land.lhs.true282.i.cfm_fsm.exitthread-pre-split_crit_edge, %land.lhs.true275.i.cfm_fsm.exitthread-pre-split_crit_edge, %land.lhs.true269.i.cfm_fsm.exitthread-pre-split_crit_edge, %land.lhs.true263.i.cfm_fsm.exitthread-pre-split_crit_edge, %land.lhs.true242.i.cfm_fsm.exitthread-pre-split_crit_edge, %land.lhs.true236.i.cfm_fsm.exitthread-pre-split_crit_edge, %land.lhs.true230.i.cfm_fsm.exitthread-pre-split_crit_edge, %land.lhs.true223.i.cfm_fsm.exitthread-pre-split_crit_edge, %land.lhs.true217.i.cfm_fsm.exitthread-pre-split_crit_edge, %land.lhs.true211.i.cfm_fsm.exitthread-pre-split_crit_edge, %lor.lhs.false81.i.cfm_fsm.exitthread-pre-split_crit_edge
  %298 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_load2_noabort(i32 %298)
  %.pr = load i16, ptr %fddiSMTCF_State, align 2
  br label %cfm_fsm.exit

cfm_fsm.exit:                                     ; preds = %cfm_fsm.exitthread-pre-split, %if.then710.i, %if.end683.i, %if.then630.i, %if.then620.i, %if.then603.i, %sw.bb563.i, %if.then554.i, %if.then544.i, %if.then527.i, %sw.bb487.i, %if.then474.i, %if.then434.i, %if.then398.i, %if.then369.i, %if.end352.i, %if.then301.i, %if.then249.i, %if.then203.i, %if.then152.i, %if.end129.i, %if.then87.i, %if.then61.i, %if.then.i, %sw.bb.i
  %299 = phi i16 [ %.pr, %cfm_fsm.exitthread-pre-split ], [ %73, %sw.bb.i ], [ 27, %if.then.i ], [ 25, %if.then61.i ], [ 26, %if.then87.i ], [ %118, %if.end129.i ], [ 16, %if.then152.i ], [ 26, %if.then203.i ], [ 28, %if.then249.i ], [ 23, %if.then301.i ], [ %187, %if.end352.i ], [ 16, %if.then369.i ], [ 25, %if.then398.i ], [ 28, %if.then434.i ], [ 23, %if.then474.i ], [ %228, %sw.bb487.i ], [ 25, %if.then527.i ], [ 26, %if.then544.i ], [ 23, %if.then554.i ], [ %254, %sw.bb563.i ], [ 25, %if.then603.i ], [ 26, %if.then620.i ], [ 28, %if.then630.i ], [ %288, %if.end683.i ], [ 16, %if.then710.i ]
  %cmp.not = icmp eq i16 %62, %299
  br i1 %cmp.not, label %do.end, label %cfm_fsm.exit.do.body_crit_edge

cfm_fsm.exit.do.body_crit_edge:                   ; preds = %cfm_fsm.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %cfm_fsm.exit
  %300 = zext i16 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %300, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %62, label %do.end.if.end_crit_edge [
    i16 9, label %land.lhs.true
    i16 10, label %land.lhs.true18
    i16 11, label %do.end.land.lhs.true31_crit_edge
  ]

do.end.land.lhs.true31_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true31

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %do.end
  %301 = ptrtoint ptr %pc_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %pc_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %302)
  %cmp11 = icmp eq i8 %302, 1
  br i1 %cmp11, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true18:                                  ; preds = %do.end
  %303 = ptrtoint ptr %pc_mode5.i.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %pc_mode5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %304)
  %cmp23 = icmp eq i8 %304, 1
  br i1 %cmp23, label %land.lhs.true18.if.then_crit_edge, label %land.lhs.true18.if.end_crit_edge

land.lhs.true18.if.end_crit_edge:                 ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true18.if.then_crit_edge:                ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true31:                                  ; preds = %do.end.land.lhs.true31_crit_edge, %sw.bb690.i.land.lhs.true31_crit_edge
  %305 = ptrtoint ptr %pc_mode.i.i to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %pc_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %306)
  %cmp36 = icmp eq i8 %306, 1
  br i1 %cmp36, label %land.lhs.true38, label %land.lhs.true31.if.end_crit_edge

land.lhs.true31.if.end_crit_edge:                 ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true38:                                  ; preds = %land.lhs.true31
  %307 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %y.i, align 4
  %fddiPORTNeighborType = getelementptr inbounds %struct.fddi_mib_p, ptr %308, i32 0, i32 1
  %309 = ptrtoint ptr %fddiPORTNeighborType to i32
  call void @__asan_load2_noabort(i32 %309)
  %310 = load i16, ptr %fddiPORTNeighborType, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %310)
  %cmp43.not = icmp eq i16 %310, 2
  br i1 %cmp43.not, label %land.lhs.true38.if.end_crit_edge, label %land.lhs.true38.if.then_crit_edge

land.lhs.true38.if.then_crit_edge:                ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true38.if.end_crit_edge:                 ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true38.if.then_crit_edge, %land.lhs.true18.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true38.if.end_crit_edge, %land.lhs.true31.if.end_crit_edge, %land.lhs.true18.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %do.end.if.end_crit_edge
  %cond.0 = phi i32 [ 1, %if.then ], [ 0, %land.lhs.true38.if.end_crit_edge ], [ 0, %land.lhs.true31.if.end_crit_edge ], [ 0, %land.lhs.true18.if.end_crit_edge ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %do.end.if.end_crit_edge ]
  %fddiSMTPeerWrapFlag = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 32
  %311 = ptrtoint ptr %fddiSMTPeerWrapFlag to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %fddiSMTPeerWrapFlag, align 1
  %conv46 = zext i8 %312 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.0, i32 %conv46)
  %cmp47.not = icmp eq i32 %cond.0, %conv46
  br i1 %cmp47.not, label %if.end.if.end50_crit_edge, label %if.then49

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then49:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @smt_srf_event(ptr noundef %smc, i32 noundef 5, i32 noundef 0, i32 noundef %cond.0) #7
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end.if.end50_crit_edge
  %313 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_load2_noabort(i32 %313)
  %314 = load i16, ptr %fddiSMTCF_State, align 2
  %idxprom = zext i16 %314 to i32
  %arrayidx53 = getelementptr [13 x i8], ptr @cf_to_ptype, i32 0, i32 %idxprom
  %315 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %316 to i16
  %fddiMACDownstreamPORTType = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 14
  %317 = ptrtoint ptr %fddiMACDownstreamPORTType to i32
  call void @__asan_store2_noabort(i32 %317)
  store i16 %conv54, ptr %fddiMACDownstreamPORTType, align 2
  tail call void @cfm_state_change(ptr noundef %smc, i32 noundef %idxprom) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_srf_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cfm_state_change(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cfm_get_mac_input(ptr nocapture noundef readonly %smc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fddiSMTCF_State = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 29
  %0 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fddiSMTCF_State, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %1)
  %cmp = icmp eq i16 %1, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %1)
  %cmp5 = icmp eq i16 %1, 7
  %narrow = or i1 %cmp, %cmp5
  %2 = zext i1 %narrow to i32
  ret i32 %2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cfm_get_mac_output(ptr nocapture noundef readonly %smc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fddiSMTCF_State = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 29
  %0 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fddiSMTCF_State, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %1)
  %cmp = icmp eq i16 %1, 10
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %1)
  %cmp5 = icmp eq i16 %1, 12
  %narrow = or i1 %cmp, %cmp5
  %2 = zext i1 %narrow to i32
  ret i32 %2
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cem_build_path(ptr nocapture noundef readonly %smc, ptr nocapture noundef writeonly %to, i32 noundef %path_index) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fddiSMTCF_State = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 29
  %0 = ptrtoint ptr %fddiSMTCF_State to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fddiSMTCF_State, align 2
  %switch.tableidx = add i16 %1, -9
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %switch.tableidx)
  %2 = icmp ult i16 %switch.tableidx, 4
  br i1 %2, label %switch.lookup, label %sw.bb

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sas = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %sas to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sas, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %cond = select i1 %tobool.not, ptr @path_iso, ptr @path_iso_s
  %cond6 = select i1 %tobool.not, i32 24, i32 16
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.cem_build_path, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %7 = sext i16 %switch.tableidx to i32
  %switch.gep14 = getelementptr inbounds [4 x i32], ptr @switch.table.cem_build_path.4, i32 0, i32 %7
  %8 = ptrtoint ptr %switch.gep14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load15 = load i32, ptr %switch.gep14, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %sw.bb
  %path.0 = phi ptr [ %cond, %sw.bb ], [ %switch.load, %switch.lookup ]
  %len.0 = phi i32 [ %cond6, %sw.bb ], [ %switch.load15, %switch.lookup ]
  %9 = call ptr @memcpy(ptr %to, ptr %path.0, i32 %len.0)
  ret i32 %len.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queue_event(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_mux(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !13, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @cf_to_ptype, !1, !"cf_to_ptype", i1 false, i1 false}
!1 = !{!"../drivers/net/fddi/skfp/cfm.c", i32 66, i32 28}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/fddi/skfp/cfm.c", i32 514, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cfm_fsm._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @cfm_fsm._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @path_iso_s, !10, !"path_iso_s", i1 false, i1 false}
!10 = !{!"../drivers/net/fddi/skfp/cfm.c", i32 570, i32 13}
!11 = !{ptr @path_iso, !12, !"path_iso", i1 false, i1 false}
!12 = !{!"../drivers/net/fddi/skfp/cfm.c", i32 541, i32 13}
!13 = !{ptr @path_wrap_a, !14, !"path_wrap_a", i1 false, i1 false}
!14 = !{!"../drivers/net/fddi/skfp/cfm.c", i32 547, i32 13}
!15 = !{ptr @path_wrap_b, !16, !"path_wrap_b", i1 false, i1 false}
!16 = !{!"../drivers/net/fddi/skfp/cfm.c", i32 553, i32 13}
!17 = !{ptr @path_thru, !18, !"path_thru", i1 false, i1 false}
!18 = !{!"../drivers/net/fddi/skfp/cfm.c", i32 559, i32 13}
!19 = !{ptr @path_wrap_s, !20, !"path_wrap_s", i1 false, i1 false}
!20 = !{!"../drivers/net/fddi/skfp/cfm.c", i32 565, i32 13}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
