; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/abm/ctrl.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/abm/ctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfp_app = type { ptr, ptr, ptr, ptr, [3 x ptr], ptr, i32, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nfp_abm = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i8, i32, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.nfp_abm_link = type { ptr, ptr, i32, i32, i32, i64, ptr, i8, i8, %struct.list_head, ptr, %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.nfp_alink_stats = type { i64, i64, i64, i64, i64, i64 }
%struct.nfp_net_dp = type { ptr, ptr, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.nfp_alink_xstats = type { i64, i64 }
%struct.nfp_net = type { %struct.nfp_net_dp, %struct.nfp_net_fw_version, i32, i32, i32, i8, i32, [40 x i8], [128 x i8], %struct.xdp_attachment_info, %struct.xdp_attachment_info, i32, i32, i32, i32, i32, [88 x i8], [64 x %struct.nfp_net_r_vector], [66 x %struct.msix_entry], ptr, [24 x i8], ptr, [24 x i8], ptr, [24 x i8], i8, %struct.spinlock, %struct.spinlock, i32, i8, i8, %struct.timer_list, i32, %struct.semaphore, i8, i8, i32, i32, i32, i32, ptr, ptr, ptr, %struct.nfp_net_tlv_caps, i32, i32, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.anon.173, ptr, %struct.list_head, ptr, ptr, i8, ptr, ptr, [116 x i8] }
%struct.nfp_net_fw_version = type { i8, i8, i8, i8 }
%struct.xdp_attachment_info = type { ptr, i32 }
%struct.nfp_net_r_vector = type { ptr, %union.anon.162, ptr, ptr, i16, i16, %struct.dim, %struct.dim, %struct.u64_stats_sync, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, %struct.u64_stats_sync, i64, i64, [104 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, ptr, [24 x i8], %struct.cpumask, [20 x i8] }
%union.anon.162 = type { %struct.napi_struct }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.dim = type { i8, %struct.dim_stats, %struct.dim_sample, %struct.dim_sample, %struct.work_struct, ptr, i8, i8, i8, i8, i8, i8 }
%struct.dim_stats = type { i32, i32, i32, i32, i32 }
%struct.dim_sample = type { i64, i32, i32, i16, i32 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.cpumask = type { [1 x i32] }
%struct.msix_entry = type { i32, i16 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.nfp_net_tlv_caps = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.atomic64_t = type { i64 }
%struct.anon.173 = type { %struct.sk_buff_head, %struct.wait_queue_head, ptr, %struct.work_struct, %struct.work_struct, i16 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.nfp_pf = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, %struct.work_struct, ptr, i32, %struct.mutex }

@__nfp_abm_ctrl_set_q_lvl._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 90, ptr @.str.3, ptr @.str.4 }, align 1
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"nfp: RED offload setting level failed on subqueue %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__nfp_abm_ctrl_set_q_lvl\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/netronome/nfp/abm/ctrl.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__nfp_abm_ctrl_set_q_lvl._entry_ptr = internal global ptr @__nfp_abm_ctrl_set_q_lvl._entry, section ".printk_index", align 4
@__nfp_abm_ctrl_set_q_act._entry = internal constant %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 123, ptr @.str.3, ptr @.str.4 }, align 1
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"nfp: RED offload setting action failed on subqueue %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__nfp_abm_ctrl_set_q_act\00", [39 x i8] zeroinitializer }, align 32
@__nfp_abm_ctrl_set_q_act._entry_ptr = internal global ptr @__nfp_abm_ctrl_set_q_act._entry, section ".printk_index", align 4
@nfp_abm_ctrl_prio_map_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 284, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"nfp: setting DSCP -> VQ map failed with error %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nfp_abm_ctrl_prio_map_update\00", [35 x i8] zeroinitializer }, align 32
@nfp_abm_ctrl_prio_map_update._entry_ptr = internal global ptr @nfp_abm_ctrl_prio_map_update._entry, section ".printk_index", align 4
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"_abi_nfd_out_red_offload_%u\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"_abi_pci_dscp_num_band_%u\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"_abi_pci_dscp_num_prio_%u\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"_abi_nfd_out_q_actions_%u\00", [38 x i8] zeroinitializer }, align 32
@nfp_abm_ctrl_find_addrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 400, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"nfp: invalid priomap description num bands: %u and num prios: %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfp_abm_ctrl_find_addrs\00", [40 x i8] zeroinitializer }, align 32
@nfp_abm_ctrl_find_addrs._entry_ptr = internal global ptr @nfp_abm_ctrl_find_addrs._entry, section ".printk_index", align 4
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"_abi_nfd_out_q_lvls_%u%s\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"_abi_nfdqm%u_stats%s\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"_abi_nfd_rxq_stats%u%s\00", [41 x i8] zeroinitializer }, align 32
@nfp_abm_ctrl_stat._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 67, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"nfp: RED offload reading stat failed on vNIC %d band %d queue %d (+ %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nfp_abm_ctrl_stat\00", [46 x i8] zeroinitializer }, align 32
@nfp_abm_ctrl_stat._entry_ptr = internal global ptr @nfp_abm_ctrl_stat._entry, section ".printk_index", align 4
@nfp_abm_ctrl_prio_check_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 300, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"nfp: vNIC mailbox too small for prio offload: %u, need: %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nfp_abm_ctrl_prio_check_params\00", [33 x i8] zeroinitializer }, align 32
@nfp_abm_ctrl_prio_check_params._entry_ptr = internal global ptr @nfp_abm_ctrl_prio_check_params._entry, section ".printk_index", align 4
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"_per_band\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@nfp_abm_ctrl_find_rtsym._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 333, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nfp: Symbol '%s' not found\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfp_abm_ctrl_find_rtsym\00", [40 x i8] zeroinitializer }, align 32
@nfp_abm_ctrl_find_rtsym._entry_ptr = internal global ptr @nfp_abm_ctrl_find_rtsym._entry, section ".printk_index", align 4
@nfp_abm_ctrl_find_rtsym._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 339, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"nfp: Symbol '%s' wrong size: expected %u got %llu\0A\00", [45 x i8] zeroinitializer }, align 32
@nfp_abm_ctrl_find_rtsym._entry_ptr.28 = internal global ptr @nfp_abm_ctrl_find_rtsym._entry.26, section ".printk_index", align 4
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 88, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 121, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 283, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 368, i32 39 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 374, i32 39 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 379, i32 39 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 385, i32 39 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 398, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 408, i32 39 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 414, i32 39 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 421, i32 40 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 66, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 299, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 354, i32 40 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 354, i32 54 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 333, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private constant [49 x i8] c"../drivers/net/ethernet/netronome/nfp/abm/ctrl.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 337, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__nfp_abm_ctrl_set_q_act._entry, ptr @__nfp_abm_ctrl_set_q_act._entry_ptr, ptr @__nfp_abm_ctrl_set_q_lvl._entry, ptr @__nfp_abm_ctrl_set_q_lvl._entry_ptr, ptr @nfp_abm_ctrl_find_addrs._entry, ptr @nfp_abm_ctrl_find_addrs._entry_ptr, ptr @nfp_abm_ctrl_find_rtsym._entry, ptr @nfp_abm_ctrl_find_rtsym._entry.26, ptr @nfp_abm_ctrl_find_rtsym._entry_ptr, ptr @nfp_abm_ctrl_find_rtsym._entry_ptr.28, ptr @nfp_abm_ctrl_prio_check_params._entry, ptr @nfp_abm_ctrl_prio_check_params._entry_ptr, ptr @nfp_abm_ctrl_prio_map_update._entry, ptr @nfp_abm_ctrl_prio_map_update._entry_ptr, ptr @nfp_abm_ctrl_stat._entry, ptr @nfp_abm_ctrl_stat._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_ctrl_prio_map_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_ctrl_find_addrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_ctrl_stat._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_ctrl_prio_check_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_ctrl_find_rtsym._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_abm_ctrl_find_rtsym._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__nfp_abm_ctrl_set_q_lvl(ptr nocapture noundef readonly %abm, i32 noundef %id, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %abm, align 4
  %cpp1 = getelementptr inbounds %struct.nfp_app, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cpp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpp1, align 4
  %threshold_undef = getelementptr inbounds %struct.nfp_abm, ptr %abm, i32 0, i32 7
  %4 = ptrtoint ptr %threshold_undef to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %threshold_undef, align 4
  %rem.i = and i32 %id, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %id, 5
  %add.ptr.i = getelementptr i32, ptr %5, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %7, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  %thresholds = getelementptr inbounds %struct.nfp_abm, ptr %abm, i32 0, i32 6
  %8 = ptrtoint ptr %thresholds to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %thresholds, align 4
  %arrayidx = getelementptr i32, ptr %9, i32 %id
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %val)
  %cmp = icmp eq i32 %11, %val
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl i32 %id, 4
  %add = or i32 %mul, 8
  %conv = zext i32 %add to i64
  %q_lvls = getelementptr inbounds %struct.nfp_abm, ptr %abm, i32 0, i32 13
  %12 = ptrtoint ptr %q_lvls to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %q_lvls, align 4
  %call = tail call i32 @__nfp_rtsym_writel(ptr noundef %3, ptr noundef %13, i8 noundef zeroext 4, i8 noundef zeroext 0, i64 noundef %conv, i32 noundef %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call ptr @nfp_cpp_device(ptr noundef %3) #6
  %parent = getelementptr inbounds %struct.device, ptr %call3, i32 0, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str, i32 noundef %id) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %thresholds to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %thresholds, align 4
  %arrayidx6 = getelementptr i32, ptr %17, i32 %id
  %18 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %val, ptr %arrayidx6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end4 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nfp_rtsym_writel(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_abm_ctrl_set_q_lvl(ptr nocapture noundef readonly %alink, i32 noundef %band, i32 noundef %queue, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %band, 6
  %queue_base = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 3
  %0 = ptrtoint ptr %queue_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queue_base, align 4
  %add = add i32 %mul, %queue
  %add1 = add i32 %add, %1
  %2 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alink, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cpp1.i = getelementptr inbounds %struct.nfp_app, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %cpp1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpp1.i, align 4
  %threshold_undef.i = getelementptr inbounds %struct.nfp_abm, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %threshold_undef.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %threshold_undef.i, align 4
  %rem.i.i = and i32 %add1, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %add1, 5
  %add.ptr.i.i = getelementptr i32, ptr %9, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %11, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %thresholds.i = getelementptr inbounds %struct.nfp_abm, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %thresholds.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %thresholds.i, align 4
  %arrayidx.i = getelementptr i32, ptr %13, i32 %add1
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %val)
  %cmp.i = icmp eq i32 %15, %val
  br i1 %cmp.i, label %entry.__nfp_abm_ctrl_set_q_lvl.exit_crit_edge, label %if.end.i

entry.__nfp_abm_ctrl_set_q_lvl.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__nfp_abm_ctrl_set_q_lvl.exit

if.end.i:                                         ; preds = %entry
  %mul.i = shl i32 %add1, 4
  %add.i = or i32 %mul.i, 8
  %conv.i = zext i32 %add.i to i64
  %q_lvls.i = getelementptr inbounds %struct.nfp_abm, ptr %3, i32 0, i32 13
  %16 = ptrtoint ptr %q_lvls.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %q_lvls.i, align 4
  %call.i = tail call i32 @__nfp_rtsym_writel(ptr noundef %7, ptr noundef %17, i8 noundef zeroext 4, i8 noundef zeroext 0, i64 noundef %conv.i, i32 noundef %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end4.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call ptr @nfp_cpp_device(ptr noundef %7) #6
  %parent.i = getelementptr inbounds %struct.device, ptr %call3.i, i32 0, i32 1
  %18 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str, i32 noundef %add1) #9
  br label %__nfp_abm_ctrl_set_q_lvl.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %thresholds.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %thresholds.i, align 4
  %arrayidx6.i = getelementptr i32, ptr %21, i32 %add1
  %22 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %val, ptr %arrayidx6.i, align 4
  br label %__nfp_abm_ctrl_set_q_lvl.exit

__nfp_abm_ctrl_set_q_lvl.exit:                    ; preds = %if.end4.i, %do.end.i, %entry.__nfp_abm_ctrl_set_q_lvl.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ 0, %if.end4.i ], [ 0, %entry.__nfp_abm_ctrl_set_q_lvl.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__nfp_abm_ctrl_set_q_act(ptr nocapture noundef readonly %abm, i32 noundef %id, i32 noundef %act) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %abm, align 4
  %cpp1 = getelementptr inbounds %struct.nfp_app, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cpp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpp1, align 4
  %actions = getelementptr inbounds %struct.nfp_abm, ptr %abm, i32 0, i32 8
  %4 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %actions, align 4
  %arrayidx = getelementptr i8, ptr %5, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %act)
  %cmp = icmp eq i32 %conv, %act
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl i32 %id, 4
  %add = or i32 %mul, 12
  %conv3 = zext i32 %add to i64
  %q_lvls = getelementptr inbounds %struct.nfp_abm, ptr %abm, i32 0, i32 13
  %8 = ptrtoint ptr %q_lvls to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %q_lvls, align 4
  %call = tail call i32 @__nfp_rtsym_writel(ptr noundef %3, ptr noundef %9, i8 noundef zeroext 4, i8 noundef zeroext 0, i64 noundef %conv3, i32 noundef %act) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call ptr @nfp_cpp_device(ptr noundef %3) #6
  %parent = getelementptr inbounds %struct.device, ptr %call5, i32 0, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.5, i32 noundef %id) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv7 = trunc i32 %act to i8
  %12 = ptrtoint ptr %actions to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %actions, align 4
  %arrayidx9 = getelementptr i8, ptr %13, i32 %id
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv7, ptr %arrayidx9, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end6 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_abm_ctrl_set_q_act(ptr nocapture noundef readonly %alink, i32 noundef %band, i32 noundef %queue, i32 noundef %act) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %band, 6
  %queue_base = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 3
  %0 = ptrtoint ptr %queue_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queue_base, align 4
  %add = add i32 %mul, %queue
  %add1 = add i32 %add, %1
  %2 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alink, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cpp1.i = getelementptr inbounds %struct.nfp_app, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %cpp1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpp1.i, align 4
  %actions.i = getelementptr inbounds %struct.nfp_abm, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %actions.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %actions.i, align 4
  %arrayidx.i = getelementptr i8, ptr %9, i32 %add1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %act)
  %cmp.i = icmp eq i32 %conv.i, %act
  br i1 %cmp.i, label %entry.__nfp_abm_ctrl_set_q_act.exit_crit_edge, label %if.end.i

entry.__nfp_abm_ctrl_set_q_act.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %__nfp_abm_ctrl_set_q_act.exit

if.end.i:                                         ; preds = %entry
  %mul.i = shl i32 %add1, 4
  %add.i = or i32 %mul.i, 12
  %conv3.i = zext i32 %add.i to i64
  %q_lvls.i = getelementptr inbounds %struct.nfp_abm, ptr %3, i32 0, i32 13
  %12 = ptrtoint ptr %q_lvls.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %q_lvls.i, align 4
  %call.i = tail call i32 @__nfp_rtsym_writel(ptr noundef %7, ptr noundef %13, i8 noundef zeroext 4, i8 noundef zeroext 0, i64 noundef %conv3.i, i32 noundef %act) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call5.i = tail call ptr @nfp_cpp_device(ptr noundef %7) #6
  %parent.i = getelementptr inbounds %struct.device, ptr %call5.i, i32 0, i32 1
  %14 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.5, i32 noundef %add1) #9
  br label %__nfp_abm_ctrl_set_q_act.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv7.i = trunc i32 %act to i8
  %16 = ptrtoint ptr %actions.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %actions.i, align 4
  %arrayidx9.i = getelementptr i8, ptr %17, i32 %add1
  %18 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv7.i, ptr %arrayidx9.i, align 1
  br label %__nfp_abm_ctrl_set_q_act.exit

__nfp_abm_ctrl_set_q_act.exit:                    ; preds = %if.end6.i, %do.end.i, %entry.__nfp_abm_ctrl_set_q_act.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %do.end.i ], [ 0, %if.end6.i ], [ 0, %entry.__nfp_abm_ctrl_set_q_act.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @nfp_abm_ctrl_stat_non_sto(ptr nocapture noundef readonly %alink, i32 noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alink, align 8
  %num_bands15 = getelementptr inbounds %struct.nfp_abm, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %num_bands15 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_bands15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp16.not = icmp eq i32 %3, 0
  br i1 %cmp16.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %queue_base.i = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %4 = phi ptr [ %1, %for.body.lr.ph ], [ %23, %if.end.for.body_crit_edge ]
  %sum.018 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %if.end.for.body_crit_edge ]
  %band.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %qm_stats = getelementptr inbounds %struct.nfp_abm, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %qm_stats to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qm_stats, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %cpp1.i = getelementptr inbounds %struct.nfp_app, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %cpp1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpp1.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val.i) #6
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 -1, ptr %val.i, align 8, !annotation !69
  %mul.i = shl i32 %band.017, 6
  %12 = ptrtoint ptr %queue_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %queue_base.i, align 4
  %add.i = add i32 %mul.i, %queue
  %add2.i = add i32 %add.i, %13
  %mul3.i = shl i32 %add2.i, 5
  %conv.i = zext i32 %mul3.i to i64
  %call.i = call i32 @__nfp_rtsym_readq(ptr noundef %10, ptr noundef %6, i8 noundef zeroext 3, i8 noundef zeroext 0, i64 noundef %conv.i, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.end, label %nfp_abm_ctrl_stat.exit

nfp_abm_ctrl_stat.exit:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i = call ptr @nfp_cpp_device(ptr noundef %10) #6
  %parent.i = getelementptr inbounds %struct.device, ptr %call8.i, i32 0, i32 1
  %14 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i, align 8
  %id.i = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 2
  %16 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id.i, align 8
  %18 = ptrtoint ptr %queue_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %queue_base.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.18, i32 noundef %17, i32 noundef %band.017, i32 noundef %queue, i32 noundef %19) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.i) #6
  br label %cleanup

if.end:                                           ; preds = %for.body
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %val.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.i) #6
  %add = add i64 %21, %sum.018
  %inc = add nuw i32 %band.017, 1
  %22 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %alink, align 8
  %num_bands = getelementptr inbounds %struct.nfp_abm, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %num_bands to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_bands, align 4
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %nfp_abm_ctrl_stat.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ 0, %nfp_abm_ctrl_stat.exit ], [ 0, %entry.cleanup_crit_edge ], [ %add, %if.end.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_abm_ctrl_stat(ptr nocapture noundef readonly %alink, ptr noundef %sym, i32 noundef %stride, i32 noundef %offset, i32 noundef %band, i32 noundef %queue, i1 noundef zeroext %is_u64, ptr nocapture noundef writeonly %res) unnamed_addr #0 align 64 {
entry:
  %val = alloca i64, align 8
  %val32 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alink, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cpp1 = getelementptr inbounds %struct.nfp_app, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cpp1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpp1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #6
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -1, ptr %val, align 8, !annotation !69
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32) #6
  %7 = ptrtoint ptr %val32 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val32, align 4, !annotation !69
  %mul = shl i32 %band, 6
  %queue_base = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 3
  %8 = ptrtoint ptr %queue_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %queue_base, align 4
  %add = add i32 %mul, %queue
  %add2 = add i32 %add, %9
  %mul3 = mul i32 %add2, %stride
  %add4 = add i32 %mul3, %offset
  %conv = zext i32 %add4 to i64
  br i1 %is_u64, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %call = call i32 @__nfp_rtsym_readq(ptr noundef %5, ptr noundef %sym, i8 noundef zeroext 3, i8 noundef zeroext 0, i64 noundef %conv, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %cond.true, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.thread:                                    ; preds = %entry
  %call5 = call i32 @__nfp_rtsym_readl(ptr noundef %5, ptr noundef %sym, i8 noundef zeroext 3, i8 noundef zeroext 0, i64 noundef %conv, ptr noundef nonnull %val32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not31 = icmp eq i32 %call5, 0
  br i1 %tobool6.not31, label %cond.false, label %if.end.thread.do.end_crit_edge

if.end.thread.do.end_crit_edge:                   ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %if.end.thread.do.end_crit_edge, %if.end.do.end_crit_edge
  %err.032 = phi i32 [ %call5, %if.end.thread.do.end_crit_edge ], [ %call, %if.end.do.end_crit_edge ]
  %call8 = call ptr @nfp_cpp_device(ptr noundef %5) #6
  %parent = getelementptr inbounds %struct.device, ptr %call8, i32 0, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %id = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 2
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 8
  %14 = ptrtoint ptr %queue_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %queue_base, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.18, i32 noundef %13, i32 noundef %band, i32 noundef %queue, i32 noundef %15) #9
  br label %cleanup

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %val, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %val32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val32, align 4
  %conv13 = zext i32 %19 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %17, %cond.true ], [ %conv13, %cond.false ]
  %20 = ptrtoint ptr %res to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %cond, ptr %res, align 8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %do.end
  %retval.0 = phi i32 [ %err.032, %do.end ], [ 0, %cond.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @nfp_abm_ctrl_stat_sto(ptr nocapture noundef readonly %alink, i32 noundef %queue) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alink, align 8
  %num_bands15 = getelementptr inbounds %struct.nfp_abm, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %num_bands15 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_bands15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp16.not = icmp eq i32 %3, 0
  br i1 %cmp16.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %queue_base.i = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %4 = phi ptr [ %1, %for.body.lr.ph ], [ %23, %if.end.for.body_crit_edge ]
  %sum.018 = phi i64 [ 0, %for.body.lr.ph ], [ %add, %if.end.for.body_crit_edge ]
  %band.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %qm_stats = getelementptr inbounds %struct.nfp_abm, ptr %4, i32 0, i32 14
  %5 = ptrtoint ptr %qm_stats to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qm_stats, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %cpp1.i = getelementptr inbounds %struct.nfp_app, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %cpp1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpp1.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val.i) #6
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 -1, ptr %val.i, align 8, !annotation !69
  %mul.i = shl i32 %band.017, 6
  %12 = ptrtoint ptr %queue_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %queue_base.i, align 4
  %add.i = add i32 %mul.i, %queue
  %add2.i = add i32 %add.i, %13
  %mul3.i = shl i32 %add2.i, 5
  %add4.i = or i32 %mul3.i, 8
  %conv.i = zext i32 %add4.i to i64
  %call.i = call i32 @__nfp_rtsym_readq(ptr noundef %10, ptr noundef %6, i8 noundef zeroext 3, i8 noundef zeroext 0, i64 noundef %conv.i, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.end, label %nfp_abm_ctrl_stat.exit

nfp_abm_ctrl_stat.exit:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i = call ptr @nfp_cpp_device(ptr noundef %10) #6
  %parent.i = getelementptr inbounds %struct.device, ptr %call8.i, i32 0, i32 1
  %14 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i, align 8
  %id.i = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 2
  %16 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id.i, align 8
  %18 = ptrtoint ptr %queue_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %queue_base.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.18, i32 noundef %17, i32 noundef %band.017, i32 noundef %queue, i32 noundef %19) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.i) #6
  br label %cleanup

if.end:                                           ; preds = %for.body
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %val.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.i) #6
  %add = add i64 %21, %sum.018
  %inc = add nuw i32 %band.017, 1
  %22 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %alink, align 8
  %num_bands = getelementptr inbounds %struct.nfp_abm, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %num_bands to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_bands, align 4
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %nfp_abm_ctrl_stat.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i64 [ 0, %nfp_abm_ctrl_stat.exit ], [ 0, %entry.cleanup_crit_edge ], [ %add, %if.end.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_abm_ctrl_read_q_stats(ptr nocapture noundef readonly %alink, i32 noundef %band, i32 noundef %queue, ptr nocapture noundef writeonly %stats) local_unnamed_addr #0 align 64 {
entry:
  %val.i75 = alloca i64, align 8
  %val32.i57 = alloca i32, align 4
  %val32.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @nfp_abm_ctrl_stat_basic(ptr noundef %alink, i32 noundef %band, i32 noundef %queue, i32 noundef 0, ptr noundef %stats)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_bytes = getelementptr inbounds %struct.nfp_alink_stats, ptr %stats, i32 0, i32 1
  %call1 = tail call fastcc i32 @nfp_abm_ctrl_stat_basic(ptr noundef %alink, i32 noundef %band, i32 noundef %queue, i32 noundef 8, ptr noundef %tx_bytes)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %0 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alink, align 8
  %q_lvls = getelementptr inbounds %struct.nfp_abm, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %q_lvls to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %q_lvls, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %cpp1.i = getelementptr inbounds %struct.nfp_app, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %cpp1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpp1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i) #6
  %8 = ptrtoint ptr %val32.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val32.i, align 4, !annotation !69
  %mul.i = shl i32 %band, 6
  %queue_base.i = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 3
  %9 = ptrtoint ptr %queue_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %queue_base.i, align 4
  %add.i = add i32 %mul.i, %queue
  %add2.i = add i32 %10, %add.i
  %mul3.i = shl i32 %add2.i, 4
  %conv.i = zext i32 %mul3.i to i64
  %call5.i = call i32 @__nfp_rtsym_readl(ptr noundef %7, ptr noundef %3, i8 noundef zeroext 3, i8 noundef zeroext 0, i64 noundef %conv.i, ptr noundef nonnull %val32.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not31.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not31.i, label %if.end8, label %nfp_abm_ctrl_stat.exit

nfp_abm_ctrl_stat.exit:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i = call ptr @nfp_cpp_device(ptr noundef %7) #6
  %parent.i = getelementptr inbounds %struct.device, ptr %call8.i, i32 0, i32 1
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i, align 8
  %id.i = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 2
  %13 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id.i, align 8
  %15 = ptrtoint ptr %queue_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %queue_base.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.18, i32 noundef %14, i32 noundef %band, i32 noundef %queue, i32 noundef %16) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i) #6
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %backlog_bytes = getelementptr inbounds %struct.nfp_alink_stats, ptr %stats, i32 0, i32 3
  %17 = ptrtoint ptr %val32.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val32.i, align 4
  %conv13.i = zext i32 %18 to i64
  %19 = ptrtoint ptr %backlog_bytes to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %conv13.i, ptr %backlog_bytes, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i) #6
  %20 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %alink, align 8
  %q_lvls10 = getelementptr inbounds %struct.nfp_abm, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %q_lvls10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %q_lvls10, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  %cpp1.i58 = getelementptr inbounds %struct.nfp_app, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %cpp1.i58 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cpp1.i58, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val32.i57) #6
  %28 = ptrtoint ptr %val32.i57 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %val32.i57, align 4, !annotation !69
  %29 = ptrtoint ptr %queue_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %queue_base.i, align 4
  %add2.i62 = add i32 %30, %add.i
  %mul3.i63 = shl i32 %add2.i62, 4
  %add4.i = or i32 %mul3.i63, 4
  %conv.i64 = zext i32 %add4.i to i64
  %call5.i65 = call i32 @__nfp_rtsym_readl(ptr noundef %27, ptr noundef %23, i8 noundef zeroext 3, i8 noundef zeroext 0, i64 noundef %conv.i64, ptr noundef nonnull %val32.i57) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i65)
  %tobool6.not31.i66 = icmp eq i32 %call5.i65, 0
  br i1 %tobool6.not31.i66, label %if.end14, label %nfp_abm_ctrl_stat.exit74

nfp_abm_ctrl_stat.exit74:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i67 = call ptr @nfp_cpp_device(ptr noundef %27) #6
  %parent.i68 = getelementptr inbounds %struct.device, ptr %call8.i67, i32 0, i32 1
  %31 = ptrtoint ptr %parent.i68 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent.i68, align 8
  %id.i69 = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 2
  %33 = ptrtoint ptr %id.i69 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id.i69, align 8
  %35 = ptrtoint ptr %queue_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %queue_base.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.18, i32 noundef %34, i32 noundef %band, i32 noundef %queue, i32 noundef %36) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i57) #6
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %backlog_pkts = getelementptr inbounds %struct.nfp_alink_stats, ptr %stats, i32 0, i32 2
  %37 = ptrtoint ptr %val32.i57 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val32.i57, align 4
  %conv13.i71 = zext i32 %38 to i64
  %39 = ptrtoint ptr %backlog_pkts to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv13.i71, ptr %backlog_pkts, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val32.i57) #6
  %40 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %alink, align 8
  %qm_stats = getelementptr inbounds %struct.nfp_abm, ptr %41, i32 0, i32 14
  %42 = ptrtoint ptr %qm_stats to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %qm_stats, align 4
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %41, align 4
  %cpp1.i77 = getelementptr inbounds %struct.nfp_app, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %cpp1.i77 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cpp1.i77, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val.i75) #6
  %48 = ptrtoint ptr %val.i75 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 -1, ptr %val.i75, align 8, !annotation !69
  %49 = ptrtoint ptr %queue_base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %queue_base.i, align 4
  %add2.i81 = add i32 %50, %add.i
  %mul3.i82 = shl i32 %add2.i81, 5
  %add4.i83 = or i32 %mul3.i82, 16
  %conv.i84 = zext i32 %add4.i83 to i64
  %call.i = call i32 @__nfp_rtsym_readq(ptr noundef %47, ptr noundef %43, i8 noundef zeroext 3, i8 noundef zeroext 0, i64 noundef %conv.i84, ptr noundef nonnull %val.i75) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.end19, label %nfp_abm_ctrl_stat.exit90

nfp_abm_ctrl_stat.exit90:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i85 = call ptr @nfp_cpp_device(ptr noundef %47) #6
  %parent.i86 = getelementptr inbounds %struct.device, ptr %call8.i85, i32 0, i32 1
  %51 = ptrtoint ptr %parent.i86 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %parent.i86, align 8
  %id.i87 = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 2
  %53 = ptrtoint ptr %id.i87 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %id.i87, align 8
  %55 = ptrtoint ptr %queue_base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %queue_base.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.18, i32 noundef %54, i32 noundef %band, i32 noundef %queue, i32 noundef %56) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.i75) #6
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %drops = getelementptr inbounds %struct.nfp_alink_stats, ptr %stats, i32 0, i32 5
  %57 = ptrtoint ptr %val.i75 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %val.i75, align 8
  %59 = ptrtoint ptr %drops to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %58, ptr %drops, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.i75) #6
  %60 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %alink, align 8
  %qm_stats21 = getelementptr inbounds %struct.nfp_abm, ptr %61, i32 0, i32 14
  %62 = ptrtoint ptr %qm_stats21 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %qm_stats21, align 4
  %overlimits = getelementptr inbounds %struct.nfp_alink_stats, ptr %stats, i32 0, i32 4
  %call22 = call fastcc i32 @nfp_abm_ctrl_stat(ptr noundef %alink, ptr noundef %63, i32 noundef 32, i32 noundef 24, i32 noundef %band, i32 noundef %queue, i1 noundef zeroext true, ptr noundef %overlimits)
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %nfp_abm_ctrl_stat.exit90, %nfp_abm_ctrl_stat.exit74, %nfp_abm_ctrl_stat.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.end19 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5.i, %nfp_abm_ctrl_stat.exit ], [ %call5.i65, %nfp_abm_ctrl_stat.exit74 ], [ %call.i, %nfp_abm_ctrl_stat.exit90 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_abm_ctrl_stat_basic(ptr nocapture noundef readonly %alink, i32 noundef %band, i32 noundef %queue, i32 noundef %off, ptr nocapture noundef writeonly %val) unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alink, align 8
  %num_bands.i = getelementptr inbounds %struct.nfp_abm, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %num_bands.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_bands.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp ugt i32 %3, 1
  br i1 %cmp.i, label %if.else5, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %band)
  %tobool.not = icmp eq i32 %band, 0
  br i1 %tobool.not, label %if.then1, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %queue_base = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 3
  %4 = ptrtoint ptr %queue_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %queue_base, align 4
  %add = add i32 %5, %queue
  %vnic = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 1
  %6 = ptrtoint ptr %vnic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vnic, align 4
  %mul = shl i32 %add, 4
  %add2 = add i32 %off, 5120
  %add3 = add i32 %add2, %mul
  %ctrl_bar.i = getelementptr inbounds %struct.nfp_net_dp, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %ctrl_bar.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl_bar.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add3
  %add.ptr.i.i = getelementptr i32, ptr %add.ptr.i, i32 1
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %12 = zext i32 %10 to i64
  %13 = zext i32 %11 to i64
  %14 = shl nuw i64 %13, 32
  %15 = or i64 %14, %12
  %16 = tail call i64 @llvm.bswap.i64(i64 %15) #6
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  %storemerge = phi i64 [ %16, %if.then1 ], [ 0, %if.then.if.end_crit_edge ]
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %storemerge, ptr %val, align 8
  br label %return

if.else5:                                         ; preds = %entry
  %q_stats = getelementptr inbounds %struct.nfp_abm, ptr %1, i32 0, i32 15
  %18 = ptrtoint ptr %q_stats to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %q_stats, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %cpp1.i = getelementptr inbounds %struct.nfp_app, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %cpp1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cpp1.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val.i) #6
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 -1, ptr %val.i, align 8, !annotation !69
  %mul.i = shl i32 %band, 6
  %queue_base.i = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 3
  %25 = ptrtoint ptr %queue_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %queue_base.i, align 4
  %add.i = add i32 %mul.i, %queue
  %add2.i = add i32 %add.i, %26
  %mul3.i = shl i32 %add2.i, 4
  %add4.i = add i32 %mul3.i, %off
  %conv.i = zext i32 %add4.i to i64
  %call.i = call i32 @__nfp_rtsym_readq(ptr noundef %23, ptr noundef %19, i8 noundef zeroext 3, i8 noundef zeroext 0, i64 noundef %conv.i, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %cond.true.i, label %do.end.i

do.end.i:                                         ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i = call ptr @nfp_cpp_device(ptr noundef %23) #6
  %parent.i = getelementptr inbounds %struct.device, ptr %call8.i, i32 0, i32 1
  %27 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent.i, align 8
  %id.i = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 2
  %29 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id.i, align 8
  %31 = ptrtoint ptr %queue_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %queue_base.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.18, i32 noundef %30, i32 noundef %band, i32 noundef %queue, i32 noundef %32) #9
  br label %nfp_abm_ctrl_stat.exit

cond.true.i:                                      ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %val.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %val.i, align 8
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %val, align 8
  br label %nfp_abm_ctrl_stat.exit

nfp_abm_ctrl_stat.exit:                           ; preds = %cond.true.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.i) #6
  br label %return

return:                                           ; preds = %nfp_abm_ctrl_stat.exit, %if.end
  %retval.0 = phi i32 [ %call.i, %nfp_abm_ctrl_stat.exit ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_abm_ctrl_read_q_xstats(ptr nocapture noundef readonly %alink, i32 noundef %band, i32 noundef %queue, ptr nocapture noundef writeonly %xstats) local_unnamed_addr #0 align 64 {
entry:
  %val.i11 = alloca i64, align 8
  %val.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alink, align 8
  %qm_stats = getelementptr inbounds %struct.nfp_abm, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %qm_stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qm_stats, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %cpp1.i = getelementptr inbounds %struct.nfp_app, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %cpp1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpp1.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val.i) #6
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %val.i, align 8, !annotation !69
  %mul.i = shl i32 %band, 6
  %queue_base.i = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 3
  %9 = ptrtoint ptr %queue_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %queue_base.i, align 4
  %add.i = add i32 %mul.i, %queue
  %add2.i = add i32 %10, %add.i
  %mul3.i = shl i32 %add2.i, 5
  %add4.i = or i32 %mul3.i, 16
  %conv.i = zext i32 %add4.i to i64
  %call.i = call i32 @__nfp_rtsym_readq(ptr noundef %7, ptr noundef %3, i8 noundef zeroext 3, i8 noundef zeroext 0, i64 noundef %conv.i, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.end, label %nfp_abm_ctrl_stat.exit

nfp_abm_ctrl_stat.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i = call ptr @nfp_cpp_device(ptr noundef %7) #6
  %parent.i = getelementptr inbounds %struct.device, ptr %call8.i, i32 0, i32 1
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i, align 8
  %id.i = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 2
  %13 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id.i, align 8
  %15 = ptrtoint ptr %queue_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %queue_base.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.18, i32 noundef %14, i32 noundef %band, i32 noundef %queue, i32 noundef %16) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.i) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdrop = getelementptr inbounds %struct.nfp_alink_xstats, ptr %xstats, i32 0, i32 1
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %val.i, align 8
  %19 = ptrtoint ptr %pdrop to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %pdrop, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.i) #6
  %20 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %alink, align 8
  %qm_stats2 = getelementptr inbounds %struct.nfp_abm, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %qm_stats2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %qm_stats2, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  %cpp1.i13 = getelementptr inbounds %struct.nfp_app, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %cpp1.i13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cpp1.i13, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val.i11) #6
  %28 = ptrtoint ptr %val.i11 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 -1, ptr %val.i11, align 8, !annotation !69
  %29 = ptrtoint ptr %queue_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %queue_base.i, align 4
  %add2.i17 = add i32 %30, %add.i
  %mul3.i18 = shl i32 %add2.i17, 5
  %add4.i19 = or i32 %mul3.i18, 24
  %conv.i20 = zext i32 %add4.i19 to i64
  %call.i21 = call i32 @__nfp_rtsym_readq(ptr noundef %27, ptr noundef %23, i8 noundef zeroext 3, i8 noundef zeroext 0, i64 noundef %conv.i20, ptr noundef nonnull %val.i11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool6.not.i22 = icmp eq i32 %call.i21, 0
  br i1 %tobool6.not.i22, label %cond.true.i27, label %do.end.i26

do.end.i26:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8.i23 = call ptr @nfp_cpp_device(ptr noundef %27) #6
  %parent.i24 = getelementptr inbounds %struct.device, ptr %call8.i23, i32 0, i32 1
  %31 = ptrtoint ptr %parent.i24 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent.i24, align 8
  %id.i25 = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 2
  %33 = ptrtoint ptr %id.i25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id.i25, align 8
  %35 = ptrtoint ptr %queue_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %queue_base.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.18, i32 noundef %34, i32 noundef %band, i32 noundef %queue, i32 noundef %36) #9
  br label %nfp_abm_ctrl_stat.exit29

cond.true.i27:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %val.i11 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %val.i11, align 8
  %39 = ptrtoint ptr %xstats to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %xstats, align 8
  br label %nfp_abm_ctrl_stat.exit29

nfp_abm_ctrl_stat.exit29:                         ; preds = %cond.true.i27, %do.end.i26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.i11) #6
  br label %cleanup

cleanup:                                          ; preds = %nfp_abm_ctrl_stat.exit29, %nfp_abm_ctrl_stat.exit
  %retval.0 = phi i32 [ %call.i21, %nfp_abm_ctrl_stat.exit29 ], [ %call.i, %nfp_abm_ctrl_stat.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_abm_ctrl_qm_enable(ptr nocapture noundef readonly %abm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %abm, align 4
  %pf = getelementptr inbounds %struct.nfp_app, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pf, align 4
  %call = tail call i32 @nfp_mbox_cmd(ptr noundef %3, i32 noundef 3, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_mbox_cmd(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_abm_ctrl_qm_disable(ptr nocapture noundef readonly %abm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %abm, align 4
  %pf = getelementptr inbounds %struct.nfp_app, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pf, align 4
  %call = tail call i32 @nfp_mbox_cmd(ptr noundef %3, i32 noundef 4, ptr noundef null, i64 noundef 0, ptr noundef null, i64 noundef 0) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_abm_ctrl_prio_map_update(ptr nocapture noundef readonly %alink, ptr nocapture noundef readonly %packed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vnic = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 1
  %0 = ptrtoint ptr %vnic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vnic, align 4
  %2 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alink, align 8
  %prio_map_len = getelementptr inbounds %struct.nfp_abm, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %prio_map_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %prio_map_len, align 4
  %call = tail call i32 @nfp_net_mbox_lock(ptr noundef %1, i32 noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mbox_off = getelementptr inbounds %struct.nfp_net, ptr %1, i32 0, i32 43, i32 1
  %6 = ptrtoint ptr %mbox_off to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mbox_off, align 4
  %add = add i32 %7, 8
  %8 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %alink, align 8
  %prio_map_len2 = getelementptr inbounds %struct.nfp_abm, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %prio_map_len2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %prio_map_len2, align 4
  %ctrl_bar.i = getelementptr inbounds %struct.nfp_net_dp, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %ctrl_bar.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctrl_bar.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #6, !srcloc !74
  %15 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %alink, align 8
  %prio_map_len439 = getelementptr inbounds %struct.nfp_abm, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %prio_map_len439 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %prio_map_len439, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp40.not = icmp eq i32 %18, 0
  br i1 %cmp40.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.041 = phi i32 [ %add10, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %19 = ptrtoint ptr %mbox_off to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mbox_off, align 4
  %add8 = add i32 %i.041, 16
  %add9 = add i32 %add8, %20
  %div36 = lshr exact i32 %i.041, 2
  %arrayidx = getelementptr i32, ptr %packed, i32 %div36
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  %24 = ptrtoint ptr %ctrl_bar.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctrl_bar.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %25, i32 %add9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %23) #6, !srcloc !74
  %add10 = add i32 %i.041, 4
  %26 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %alink, align 8
  %prio_map_len4 = getelementptr inbounds %struct.nfp_abm, ptr %27, i32 0, i32 10
  %28 = ptrtoint ptr %prio_map_len4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %prio_map_len4, align 4
  %cmp = icmp ult i32 %add10, %29
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %call11 = tail call i32 @nfp_net_mbox_reconfig_and_unlock(ptr noundef %1, i32 noundef 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.end.cleanup_crit_edge, label %do.end

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %alink, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cpp, align 4
  %call15 = tail call ptr @nfp_cpp_device(ptr noundef %35) #6
  %parent = getelementptr inbounds %struct.device, ptr %call15, i32 0, i32 1
  %36 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.7, i32 noundef %call11) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call11, %do.end ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_net_mbox_lock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_net_mbox_reconfig_and_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_abm_ctrl_read_params(ptr nocapture noundef %alink) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vnic = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 1
  %0 = ptrtoint ptr %vnic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vnic, align 4
  %ctrl_bar.i = getelementptr inbounds %struct.nfp_net_dp, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %ctrl_bar.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_bar.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 76
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !70
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  %queue_base = getelementptr inbounds %struct.nfp_abm_link, ptr %alink, i32 0, i32 3
  %6 = ptrtoint ptr %queue_base to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %queue_base, align 4
  %7 = ptrtoint ptr %vnic to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vnic, align 4
  %stride_rx = getelementptr inbounds %struct.nfp_net, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %stride_rx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %stride_rx, align 32
  %div = udiv i32 %5, %10
  store i32 %div, ptr %queue_base, align 4
  %11 = ptrtoint ptr %alink to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %alink, align 8
  %num_bands.i.i = getelementptr inbounds %struct.nfp_abm, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %num_bands.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_bands.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i.i = icmp ugt i32 %14, 1
  br i1 %cmp.i.i, label %if.end.i, label %entry.nfp_abm_ctrl_prio_check_params.exit_crit_edge

entry.nfp_abm_ctrl_prio_check_params.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_abm_ctrl_prio_check_params.exit

if.end.i:                                         ; preds = %entry
  %prio_map_len.i = getelementptr inbounds %struct.nfp_abm, ptr %12, i32 0, i32 10
  %15 = ptrtoint ptr %prio_map_len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %prio_map_len.i, align 4
  %add.i = add i32 %16, 16
  %mbox_len.i = getelementptr inbounds %struct.nfp_net, ptr %8, i32 0, i32 43, i32 2
  %17 = ptrtoint ptr %mbox_len.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mbox_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %add.i)
  %cmp.i = icmp ult i32 %18, %add.i
  br i1 %cmp.i, label %do.end.i, label %if.end.i.nfp_abm_ctrl_prio_check_params.exit_crit_edge

if.end.i.nfp_abm_ctrl_prio_check_params.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_abm_ctrl_prio_check_params.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %12, align 4
  %pf.i = getelementptr inbounds %struct.nfp_app, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pf.i, align 4
  %cpp.i = getelementptr inbounds %struct.nfp_pf, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %cpp.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cpp.i, align 4
  %call5.i = tail call ptr @nfp_cpp_device(ptr noundef %24) #6
  %parent.i = getelementptr inbounds %struct.device, ptr %call5.i, i32 0, i32 1
  %25 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent.i, align 8
  %27 = ptrtoint ptr %mbox_len.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mbox_len.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.20, i32 noundef %28, i32 noundef %add.i) #9
  br label %nfp_abm_ctrl_prio_check_params.exit

nfp_abm_ctrl_prio_check_params.exit:              ; preds = %do.end.i, %if.end.i.nfp_abm_ctrl_prio_check_params.exit_crit_edge, %entry.nfp_abm_ctrl_prio_check_params.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ 0, %entry.nfp_abm_ctrl_prio_check_params.exit_crit_edge ], [ 0, %if.end.i.nfp_abm_ctrl_prio_check_params.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_abm_ctrl_find_addrs(ptr nocapture noundef %abm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %abm, align 4
  %pf1 = getelementptr inbounds %struct.nfp_app, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pf1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pf1, align 4
  %cpp = getelementptr inbounds %struct.nfp_pf, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpp, align 4
  %call.i = tail call zeroext i16 @nfp_cpp_interface(ptr noundef %5) #6
  %6 = lshr i16 %call.i, 8
  %7 = and i16 %6, 15
  %conv1.i = zext i16 %7 to i32
  %pf_id = getelementptr inbounds %struct.nfp_abm, ptr %abm, i32 0, i32 1
  %8 = ptrtoint ptr %pf_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv1.i, ptr %pf_id, align 4
  %call2 = tail call i32 @nfp_pf_rtsym_read_optional(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %red_support = getelementptr inbounds %struct.nfp_abm, ptr %abm, i32 0, i32 2
  %9 = ptrtoint ptr %red_support to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call2, ptr %red_support, align 4
  %call4 = tail call i32 @nfp_pf_rtsym_read_optional(ptr noundef %3, ptr noundef nonnull @.str.10, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %num_bands = getelementptr inbounds %struct.nfp_abm, ptr %abm, i32 0, i32 4
  %10 = ptrtoint ptr %num_bands to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call4, ptr %num_bands, align 4
  %call9 = tail call i32 @nfp_pf_rtsym_read_optional(ptr noundef %3, ptr noundef nonnull @.str.11, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %num_prios = getelementptr inbounds %struct.nfp_abm, ptr %abm, i32 0, i32 3
  %11 = ptrtoint ptr %num_prios to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call9, ptr %num_prios, align 4
  %call14 = tail call i32 @nfp_pf_rtsym_read_optional(ptr noundef %3, ptr noundef nonnull @.str.12, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %action_mask = getelementptr inbounds %struct.nfp_abm, ptr %abm, i32 0, i32 5
  %12 = ptrtoint ptr %action_mask to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call14, ptr %action_mask, align 4
  %13 = ptrtoint ptr %num_bands to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_bands, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i470.i = icmp ugt i32 %14, 1
  %sub.i471.i = add i32 %14, -1
  %15 = tail call i32 @llvm.ctlz.i32(i32 %sub.i471.i, i1 true) #6, !range !78
  %sub.i.op.i.i477.i = xor i32 %15, 31
  %cond299.i = select i1 %cmp.i470.i, i32 %sub.i.op.i.i477.i, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond299.i)
  %tobool.not.i.i.i.i = icmp eq i32 %cond299.i, 0
  %16 = tail call i32 @llvm.ctlz.i32(i32 %cond299.i, i1 true) #6, !range !78
  %sub.i.i.i.i = sub nuw nsw i32 32, %16
  %sub.i.i.op.i.i = shl nuw i32 1, %sub.i.i.i.i
  %shl.i.i = select i1 %tobool.not.i.i.i.i, i32 1, i32 %sub.i.i.op.i.i
  %17 = ptrtoint ptr %num_prios to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_prios, align 4
  %mul.i = mul i32 %18, %shl.i.i
  %sub304.i = add i32 %mul.i, 7
  %div371.i = lshr i32 %sub304.i, 3
  %sub305.i = add nsw i32 %div371.i, -1
  %or.i = or i32 %sub305.i, 3
  %add306.i = add nsw i32 %or.i, 1
  %prio_map_len = getelementptr inbounds %struct.nfp_abm, ptr %abm, i32 0, i32 10
  %19 = ptrtoint ptr %prio_map_len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add306.i, ptr %prio_map_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i = icmp ugt i32 %18, 1
  %sub.i169 = add i32 %18, -1
  %20 = tail call i32 @llvm.ctlz.i32(i32 %sub.i169, i1 true) #6, !range !78
  %phi.bo = add nsw i32 %20, -24
  %phi.bo.op = shl nsw i32 -1, %phi.bo
  %21 = trunc i32 %phi.bo.op to i8
  %conv57 = select i1 %cmp.i, i8 %21, i8 0
  %dscp_mask = getelementptr inbounds %struct.nfp_abm, ptr %abm, i32 0, i32 11
  %22 = ptrtoint ptr %dscp_mask to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv57, ptr %dscp_mask, align 4
  %23 = tail call i32 @llvm.ctpop.i32(i32 %14) #6, !range !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %24 = icmp ne i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i174 = icmp eq i32 %18, 0
  %or.cond189 = select i1 %24, i1 true, i1 %cmp.not.i174
  br i1 %or.cond189, label %if.end18.do.end_crit_edge, label %is_power_of_2.exit177

if.end18.do.end_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

is_power_of_2.exit177:                            ; preds = %if.end18
  %25 = tail call i32 @llvm.ctpop.i32(i32 %18) #6, !range !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp1.i175 = icmp ugt i32 %25, 1
  %26 = or i32 %18, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %26)
  %27 = icmp ugt i32 %26, 65535
  %28 = or i1 %27, %cmp1.i175
  br i1 %28, label %is_power_of_2.exit177.do.end_crit_edge, label %lor.lhs.false71

is_power_of_2.exit177.do.end_crit_edge:           ; preds = %is_power_of_2.exit177
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false71:                                  ; preds = %is_power_of_2.exit177
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp73 = icmp ne i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp76 = icmp eq i32 %18, 1
  %cmp78.not = xor i1 %cmp73, %cmp76
  br i1 %cmp78.not, label %if.end85, label %lor.lhs.false71.do.end_crit_edge

lor.lhs.false71.do.end_crit_edge:                 ; preds = %lor.lhs.false71
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false71.do.end_crit_edge, %is_power_of_2.exit177.do.end_crit_edge, %if.end18.do.end_crit_edge
  %29 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cpp, align 4
  %call82 = tail call ptr @nfp_cpp_device(ptr noundef %30) #6
  %parent = getelementptr inbounds %struct.device, ptr %call82, i32 0, i32 1
  %31 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent, align 8
  %33 = ptrtoint ptr %num_bands to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_bands, align 4
  %35 = ptrtoint ptr %num_prios to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_prios, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.13, i32 noundef %34, i32 noundef %36) #9
  br label %cleanup

if.end85:                                         ; preds = %lor.lhs.false71
  %37 = ptrtoint ptr %red_support to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %red_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not = icmp eq i32 %38, 0
  br i1 %tobool.not, label %if.end85.cleanup_crit_edge, label %if.end88

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end88:                                         ; preds = %if.end85
  %call89 = tail call fastcc ptr @nfp_abm_ctrl_find_q_rtsym(ptr noundef %abm, ptr noundef nonnull @.str.15, i32 noundef 16)
  %cmp.i178 = icmp ugt ptr %call89, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i178, label %if.then91, label %if.end93

if.then91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %call89 to i32
  br label %cleanup

if.end93:                                         ; preds = %if.end88
  %q_lvls = getelementptr inbounds %struct.nfp_abm, ptr %abm, i32 0, i32 13
  %40 = ptrtoint ptr %q_lvls to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call89, ptr %q_lvls, align 4
  %call94 = tail call fastcc ptr @nfp_abm_ctrl_find_q_rtsym(ptr noundef %abm, ptr noundef nonnull @.str.16, i32 noundef 32)
  %cmp.i179 = icmp ugt ptr %call94, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i179, label %if.then96, label %if.end98

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %call94 to i32
  br label %cleanup

if.end98:                                         ; preds = %if.end93
  %qm_stats = getelementptr inbounds %struct.nfp_abm, ptr %abm, i32 0, i32 14
  %42 = ptrtoint ptr %qm_stats to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call94, ptr %qm_stats, align 4
  %43 = ptrtoint ptr %num_bands to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_bands, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp.i181 = icmp ugt i32 %44, 1
  br i1 %cmp.i181, label %if.then100, label %if.end98.cleanup_crit_edge

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then100:                                       ; preds = %if.end98
  %call101 = tail call fastcc ptr @nfp_abm_ctrl_find_q_rtsym(ptr noundef %abm, ptr noundef nonnull @.str.17, i32 noundef 16)
  %cmp.i182 = icmp ugt ptr %call101, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i182, label %if.then103, label %if.end105

if.then103:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %call101 to i32
  br label %cleanup

if.end105:                                        ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #8
  %q_stats = getelementptr inbounds %struct.nfp_abm, ptr %abm, i32 0, i32 15
  %46 = ptrtoint ptr %q_stats to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call101, ptr %q_stats, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end105, %if.then103, %if.end98.cleanup_crit_edge, %if.then96, %if.then91, %if.end85.cleanup_crit_edge, %do.end, %if.end13.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %39, %if.then91 ], [ %41, %if.then96 ], [ %45, %if.then103 ], [ %call2, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ 0, %if.end85.cleanup_crit_edge ], [ 0, %if.end105 ], [ 0, %if.end98.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfp_pf_rtsym_read_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nfp_abm_ctrl_find_q_rtsym(ptr nocapture noundef readonly %abm, ptr nocapture noundef readonly %name_fmt, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  %pf_symbol = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pf_symbol) #6
  %0 = call ptr @memset(ptr %pf_symbol, i32 255, i32 64)
  %num_bands = getelementptr inbounds %struct.nfp_abm, ptr %abm, i32 0, i32 4
  %1 = ptrtoint ptr %num_bands to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_bands, align 4
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %size, i32 %2) #6
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %entry.array3_size.exit_crit_edge, label %if.end.i

entry.array3_size.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %array3_size.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = extractvalue { i32, i1 } %3, 0
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 64) #6
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %spec.select.i = select i1 %7, i32 -1, i32 %8
  br label %array3_size.exit

array3_size.exit:                                 ; preds = %if.end.i, %entry.array3_size.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %entry.array3_size.exit_crit_edge ], [ %spec.select.i, %if.end.i ]
  %pf_id = getelementptr inbounds %struct.nfp_abm, ptr %abm, i32 0, i32 1
  %9 = ptrtoint ptr %pf_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pf_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.i = icmp ugt i32 %2, 1
  %cond = select i1 %cmp.i, ptr @.str.22, ptr @.str.23
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %pf_symbol, i32 noundef 64, ptr noundef %name_fmt, i32 noundef %10, ptr noundef nonnull %cond)
  %11 = ptrtoint ptr %abm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %abm, align 4
  %pf = getelementptr inbounds %struct.nfp_app, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pf, align 4
  %rtbl.i = getelementptr inbounds %struct.nfp_pf, ptr %14, i32 0, i32 20
  %15 = ptrtoint ptr %rtbl.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rtbl.i, align 4
  %call.i = call ptr @nfp_rtsym_lookup(ptr noundef %16, ptr noundef nonnull %pf_symbol) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i9

do.end.i:                                         ; preds = %array3_size.exit
  call void @__sanitizer_cov_trace_pc() #8
  %cpp.i = getelementptr inbounds %struct.nfp_pf, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %cpp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cpp.i, align 4
  %call1.i = call ptr @nfp_cpp_device(ptr noundef %18) #6
  %parent.i = getelementptr inbounds %struct.device, ptr %call1.i, i32 0, i32 1
  %19 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.24, ptr noundef nonnull %pf_symbol) #9
  br label %nfp_abm_ctrl_find_rtsym.exit

if.end.i9:                                        ; preds = %array3_size.exit
  %call3.i = call i64 @nfp_rtsym_size(ptr noundef nonnull %call.i) #6
  %conv.i = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %conv.i)
  %cmp.not.i = icmp eq i64 %call3.i, %conv.i
  br i1 %cmp.not.i, label %if.end.i9.nfp_abm_ctrl_find_rtsym.exit_crit_edge, label %do.end8.i

if.end.i9.nfp_abm_ctrl_find_rtsym.exit_crit_edge: ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfp_abm_ctrl_find_rtsym.exit

do.end8.i:                                        ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #8
  %cpp9.i = getelementptr inbounds %struct.nfp_pf, ptr %14, i32 0, i32 1
  %21 = ptrtoint ptr %cpp9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cpp9.i, align 4
  %call10.i = call ptr @nfp_cpp_device(ptr noundef %22) #6
  %parent11.i = getelementptr inbounds %struct.device, ptr %call10.i, i32 0, i32 1
  %23 = ptrtoint ptr %parent11.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent11.i, align 8
  %call12.i = call i64 @nfp_rtsym_size(ptr noundef nonnull %call.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.27, ptr noundef nonnull %pf_symbol, i32 noundef %retval.0.i, i64 noundef %call12.i) #9
  br label %nfp_abm_ctrl_find_rtsym.exit

nfp_abm_ctrl_find_rtsym.exit:                     ; preds = %do.end8.i, %if.end.i9.nfp_abm_ctrl_find_rtsym.exit_crit_edge, %do.end.i
  %retval.0.i10 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end8.i ], [ inttoptr (i32 -2 to ptr), %do.end.i ], [ %call.i, %if.end.i9.nfp_abm_ctrl_find_rtsym.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pf_symbol) #6
  ret ptr %retval.0.i10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nfp_rtsym_readq(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nfp_rtsym_readl(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nfp_cpp_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_rtsym_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nfp_rtsym_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !22, !24, !26, !28, !29, !30, !31, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !51, !53, !54, !55, !56, !58, !59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/abm/ctrl.c", i32 88, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__nfp_abm_ctrl_set_q_lvl._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @__nfp_abm_ctrl_set_q_lvl._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/netronome/nfp/abm/ctrl.c", i32 121, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__nfp_abm_ctrl_set_q_act._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @__nfp_abm_ctrl_set_q_act._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/netronome/nfp/abm/ctrl.c", i32 283, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @nfp_abm_ctrl_prio_map_update._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @nfp_abm_ctrl_prio_map_update._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/netronome/nfp/abm/ctrl.c", i32 368, i32 39}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/netronome/nfp/abm/ctrl.c", i32 374, i32 39}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/netronome/nfp/abm/ctrl.c", i32 379, i32 39}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/netronome/nfp/abm/ctrl.c", i32 385, i32 39}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/netronome/nfp/abm/ctrl.c", i32 398, i32 3}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @nfp_abm_ctrl_find_addrs._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @nfp_abm_ctrl_find_addrs._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/netronome/nfp/abm/ctrl.c", i32 408, i32 39}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/netronome/nfp/abm/ctrl.c", i32 414, i32 39}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/netronome/nfp/abm/ctrl.c", i32 421, i32 40}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/netronome/nfp/abm/ctrl.c", i32 66, i32 3}
!39 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @nfp_abm_ctrl_stat._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @nfp_abm_ctrl_stat._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/netronome/nfp/abm/ctrl.c", i32 299, i32 3}
!44 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @nfp_abm_ctrl_prio_check_params._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @nfp_abm_ctrl_prio_check_params._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/netronome/nfp/abm/ctrl.c", i32 354, i32 40}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/netronome/nfp/abm/ctrl.c", i32 354, i32 54}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/netronome/nfp/abm/ctrl.c", i32 333, i32 3}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @nfp_abm_ctrl_find_rtsym._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @nfp_abm_ctrl_find_rtsym._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/netronome/nfp/abm/ctrl.c", i32 337, i32 3}
!58 = !{ptr @nfp_abm_ctrl_find_rtsym._entry.26, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @nfp_abm_ctrl_find_rtsym._entry_ptr.28, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"auto-init"}
!70 = !{i64 7066591}
!71 = !{i64 2158744152}
!72 = !{i64 2158744574}
!73 = !{i64 2158744954}
!74 = !{i64 7066173}
!75 = !{i64 2158745339}
!76 = !{i64 2158775976}
!77 = !{i64 2158775589}
!78 = !{i32 0, i32 33}
