; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb4/clip_tbl.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb4/clip_tbl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cxgb4_clip_get\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb4_clip_get\09\09\09\09"
module asm "\09.long\09__crc_cxgb4_clip_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb4_clip_get:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb4_clip_get\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb4_clip_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgb4_clip_release\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb4_clip_release\09\09\09\09"
module asm "\09.long\09__crc_cxgb4_clip_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb4_clip_release:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb4_clip_release\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb4_clip_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cxgb4_update_root_dev_clip\22, \22a\22\09"
module asm "\09.weak\09__crc_cxgb4_update_root_dev_clip\09\09\09\09"
module asm "\09.long\09__crc_cxgb4_update_root_dev_clip\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cxgb4_update_root_dev_clip:\09\09\09\09\09"
module asm "\09.asciz \09\22cxgb4_update_root_dev_clip\22\09\09\09\09\09"
module asm "__kstrtabns_cxgb4_update_root_dev_clip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+t4_cleanup_clip_tbl\22, \22a\22\09"
module asm "\09.weak\09__crc_t4_cleanup_clip_tbl\09\09\09\09"
module asm "\09.long\09__crc_t4_cleanup_clip_tbl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_t4_cleanup_clip_tbl:\09\09\09\09\09"
module asm "\09.asciz \09\22t4_cleanup_clip_tbl\22\09\09\09\09\09"
module asm "__kstrtabns_t4_cleanup_clip_tbl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fw_clip_cmd = type { i32, i32, i64, i64, [2 x i32] }
%struct.adapter = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i16, i16, %struct.adapter_params, %struct.cxgb4_virt_res, i32, ptr, %struct.msix_bmap, %struct.doorbell_stats, [36 x i8], %struct.sge, [4 x ptr], [4 x i8], ptr, i8, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, ptr, [8 x ptr], i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, [64 x i8], %struct.tid_info, ptr, %struct.spinlock, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i8, %struct.spinlock, %struct.mbox_list, ptr, %struct.mutex, ptr, i8, i8, ptr, %struct.ptp_clock_info, ptr, %struct.spinlock, %struct.spinlock, [48 x i8], %struct.spinlock, ptr, %struct.chcr_ktls, %struct.chcr_stats_debug, %struct.ch_ktls_stats_debug, %struct.ch_ipsec_stats_debug, i8, %struct.rhashtable, %struct.rhashtable_params, %struct.timer_list, %struct.work_struct, %struct.ethtool_dump, %struct.hma_data, ptr, %struct.vmcoredd_data, %struct.ch_thermal, ptr, ptr, ptr, [88 x i8] }
%struct.adapter_params = type { %struct.sge_params, %struct.tp_params, %struct.vpd_params, %struct.pf_resources, %struct.pci_params, %struct.devlog_params, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i8], [16 x i16], [32 x i16], [32 x i16], i8, i8, i32, %struct.arch_specific_params, i8, i8, i8, i8, i8, i32, i8, i32, i32, i32, i8, i8, i8, i8, [4 x i8], i8, i8 }
%struct.sge_params = type { i32, i32, i32 }
%struct.tp_params = type { i32, i32, i16, i32, [4 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.vpd_params = type { i32, [25 x i8], [17 x i8], [17 x i8], [13 x i8] }
%struct.pf_resources = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_params = type { i8, i8 }
%struct.devlog_params = type { i32, i32, i32 }
%struct.arch_specific_params = type { i8, i8, i8, i16, i16, i32, i16 }
%struct.cxgb4_virt_res = type { %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, i32, %struct.cxgb4_range }
%struct.cxgb4_range = type { i32, i32 }
%struct.msix_bmap = type { ptr, i32, %struct.spinlock }
%struct.doorbell_stats = type { i32, i32, i32 }
%struct.sge = type { [32 x %struct.sge_eth_txq], %struct.sge_eth_txq, [4 x %struct.sge_ctrl_txq], [32 x %struct.sge_eth_rxq], %struct.sge_rspq, ptr, ptr, [16 x i8], %struct.sge_rspq, %struct.spinlock, ptr, ptr, [4 x ptr], i16, i16, i16, i16, i16, i16, i16, [6 x i16], [4 x i8], i16, [8 x i16], i32, i32, i32, i32, i32, %struct.sge_idma_monitor_state, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, %struct.timer_list, i32, i32, [96 x i8] }
%struct.sge_eth_txq = type { %struct.sge_txq, ptr, i8, i8, i32, i32, i32, i32, i32, i32, [116 x i8] }
%struct.sge_txq = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, %struct.spinlock, i32, i16, i16, ptr, i32 }
%struct.sge_ctrl_txq = type { %struct.sge_txq, ptr, %struct.sk_buff_head, %struct.tasklet_struct, i8, [63 x i8] }
%struct.sk_buff_head = type { %union.anon.53, i32, %struct.spinlock }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.194, i32 }
%struct.atomic_t = type { i32 }
%union.anon.194 = type { ptr }
%struct.sge_eth_rxq = type { %struct.sge_rspq, %struct.sge_fl, %struct.sge_eth_stats, ptr, [56 x i8] }
%struct.sge_fl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32 }
%struct.sge_eth_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sge_rspq = type { %struct.napi_struct, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.t4_lro_mgr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.t4_lro_mgr = type { i8, i32, i32, %struct.sk_buff_head }
%struct.sge_idma_monitor_state = type { i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.tid_info = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, i32, i32, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i32, [68 x i8] }
%struct.mbox_list = type { %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.chcr_ktls = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.chcr_stats_debug = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.ch_ktls_stats_debug = type { [4 x %struct.ch_ktls_port_stats_debug], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.ch_ktls_port_stats_debug = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ch_ipsec_stats_debug = type { %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ethtool_dump = type { i32, i32, i32, i32, [0 x i8] }
%struct.hma_data = type { i8, ptr, ptr }
%struct.vmcoredd_data = type { [44 x i8], i32, ptr }
%struct.ch_thermal = type { ptr, i32, i32 }
%struct.clip_tbl = type { i32, i32, %struct.rwlock_t, %struct.atomic_t, %struct.list_head, ptr, [0 x %struct.list_head] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.187, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.187 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.in6_addr = type { %union.anon.49 }
%union.anon.49 = type { [4 x i32] }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.clip_entry = type { %struct.spinlock, %struct.refcount_struct, %struct.list_head, %union.anon.198 }
%union.anon.198 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }

@cxgb4_clip_get.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ce->lock\00", [22 x i8] zeroinitializer }, align 32
@cxgb4_clip_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 125, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"CLIP FW cmd failed with error %d, Connections using %pI6c wont be offloaded\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cxgb4_clip_get\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/chelsio/cxgb4/clip_tbl.c\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cxgb4_clip_get._entry_ptr = internal global ptr @cxgb4_clip_get._entry, section ".printk_index", align 4
@cxgb4_clip_get._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 137, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"CLIP table overflow, Connections using %pI6c wont be offloaded\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cxgb4_clip_get._entry_ptr.9 = internal global ptr @cxgb4_clip_get._entry.6, section ".printk_index", align 4
@__kstrtab_cxgb4_clip_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb4_clip_get = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb4_clip_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb4_clip_get to i32), ptr @__kstrtab_cxgb4_clip_get, ptr @__kstrtabns_cxgb4_clip_get }, section "___ksymtab+cxgb4_clip_get", align 4
@__kstrtab_cxgb4_clip_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb4_clip_release = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb4_clip_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb4_clip_release to i32), ptr @__kstrtab_cxgb4_clip_release, ptr @__kstrtabns_cxgb4_clip_release }, section "___ksymtab+cxgb4_clip_release", align 4
@__kstrtab_cxgb4_update_root_dev_clip = external dso_local constant [0 x i8], align 1
@__kstrtabns_cxgb4_update_root_dev_clip = external dso_local constant [0 x i8], align 1
@__ksymtab_cxgb4_update_root_dev_clip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cxgb4_update_root_dev_clip to i32), ptr @__kstrtab_cxgb4_update_root_dev_clip, ptr @__kstrtabns_cxgb4_update_root_dev_clip }, section "___ksymtab+cxgb4_update_root_dev_clip", align 4
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"IP Address                  Users\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pISc\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%-25s   %u\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Free clip entries : %d\0A\00", [40 x i8] zeroinitializer }, align 32
@t4_init_clip_tbl.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ctbl->lock\00", [20 x i8] zeroinitializer }, align 32
@__kstrtab_t4_cleanup_clip_tbl = external dso_local constant [0 x i8], align 1
@__kstrtabns_t4_cleanup_clip_tbl = external dso_local constant [0 x i8], align 1
@__ksymtab_t4_cleanup_clip_tbl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @t4_cleanup_clip_tbl to i32), ptr @__kstrtab_t4_cleanup_clip_tbl, ptr @__kstrtabns_t4_cleanup_clip_tbl }, section "___ksymtab+t4_cleanup_clip_tbl", align 4
@__in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 110, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 121, i32 5 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 135, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 260, i32 16 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 264, i32 16 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 265, i32 20 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 269, i32 18 }
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.66 = private constant [49 x i8] c"../drivers/net/ethernet/chelsio/cxgb4/clip_tbl.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 299, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 313, i32 9 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__ksymtab_cxgb4_clip_get, ptr @__ksymtab_cxgb4_clip_release, ptr @__ksymtab_cxgb4_update_root_dev_clip, ptr @__ksymtab_t4_cleanup_clip_tbl, ptr @cxgb4_clip_get._entry, ptr @cxgb4_clip_get._entry.6, ptr @cxgb4_clip_get._entry_ptr, ptr @cxgb4_clip_get._entry_ptr.9, ptr @cxgb4_clip_get.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @t4_init_clip_tbl.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_clip_get.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_clip_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_clip_get._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_init_clip_tbl.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_clip_get(ptr nocapture noundef readonly %dev, ptr noundef %lip, i8 noundef zeroext %v6) #0 align 64 {
entry:
  %c.i = alloca %struct.fw_clip_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %clipt = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %clipt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clipt, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %v6)
  %tobool.not.i = icmp eq i8 %v6, 0
  %clipt_size.i4.i = getelementptr inbounds %struct.clip_tbl, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %clipt_size.i4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clipt_size.i4.i, align 4
  %div1.i.i = lshr i32 %5, 1
  %6 = ptrtoint ptr %lip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lip, align 4
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx1.i.i = getelementptr i32, ptr %lip, i32 1
  %8 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1.i.i, align 4
  %xor2.i.i = xor i32 %9, %7
  %arrayidx3.i.i = getelementptr i32, ptr %lip, i32 2
  %10 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3.i.i, align 4
  %xor4.i.i = xor i32 %xor2.i.i, %11
  %arrayidx5.i.i = getelementptr i32, ptr %lip, i32 3
  %12 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx5.i.i, align 4
  %xor6.i.i = xor i32 %xor4.i.i, %13
  %add.i.i.i.i = add i32 %xor6.i.i, -559038733
  %xor3.i.i.i.i = xor i32 %add.i.i.i.i, -1874655147
  %sub5.i.i.i.i = add i32 %xor3.i.i.i.i, -407022722
  %xor6.i.i.i.i = xor i32 %sub5.i.i.i.i, -559038733
  %or.i1.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i.i, i32 %sub5.i.i.i.i, i32 25) #9
  %sub8.i.i.i.i = sub i32 %xor6.i.i.i.i, %or.i1.i.i.i.i
  %xor9.i.i.i.i = xor i32 %sub8.i.i.i.i, -1874655147
  %or.i2.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i.i, i32 %sub8.i.i.i.i, i32 16) #9
  %sub11.i.i.i.i = sub i32 %xor9.i.i.i.i, %or.i2.i.i.i.i
  %xor12.i.i.i.i = xor i32 %sub11.i.i.i.i, %sub5.i.i.i.i
  %or.i3.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i.i, i32 %sub11.i.i.i.i, i32 4) #9
  %sub14.i.i.i.i = sub i32 %xor12.i.i.i.i, %or.i3.i.i.i.i
  %xor15.i.i.i.i = xor i32 %sub14.i.i.i.i, %sub8.i.i.i.i
  %or.i4.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i.i, i32 %sub14.i.i.i.i, i32 14) #9
  %sub17.i.i.i.i = sub i32 %xor15.i.i.i.i, %or.i4.i.i.i.i
  %xor18.i.i.i.i = xor i32 %sub17.i.i.i.i, %sub11.i.i.i.i
  %or.i5.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i.i, i32 %sub17.i.i.i.i, i32 24) #9
  %sub20.i.i.i.i = sub i32 %xor18.i.i.i.i, %or.i5.i.i.i.i
  %rem.i.i = urem i32 %sub20.i.i.i.i, %div1.i.i
  %add.i.i = add nuw i32 %rem.i.i, %div1.i.i
  br label %clip_addr_hash.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i.i5.i = add i32 %7, -559038733
  %xor3.i.i.i6.i = xor i32 %add.i.i.i5.i, -1874655147
  %sub5.i.i.i7.i = add i32 %xor3.i.i.i6.i, -407022722
  %xor6.i.i.i8.i = xor i32 %sub5.i.i.i7.i, -559038733
  %or.i1.i.i.i9.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i7.i, i32 %sub5.i.i.i7.i, i32 25) #9
  %sub8.i.i.i10.i = sub i32 %xor6.i.i.i8.i, %or.i1.i.i.i9.i
  %xor9.i.i.i11.i = xor i32 %sub8.i.i.i10.i, -1874655147
  %or.i2.i.i.i12.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i10.i, i32 %sub8.i.i.i10.i, i32 16) #9
  %sub11.i.i.i13.i = sub i32 %xor9.i.i.i11.i, %or.i2.i.i.i12.i
  %xor12.i.i.i14.i = xor i32 %sub11.i.i.i13.i, %sub5.i.i.i7.i
  %or.i3.i.i.i15.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i13.i, i32 %sub11.i.i.i13.i, i32 4) #9
  %sub14.i.i.i16.i = sub i32 %xor12.i.i.i14.i, %or.i3.i.i.i15.i
  %xor15.i.i.i17.i = xor i32 %sub14.i.i.i16.i, %sub8.i.i.i10.i
  %or.i4.i.i.i18.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i16.i, i32 %sub14.i.i.i16.i, i32 14) #9
  %sub17.i.i.i19.i = sub i32 %xor15.i.i.i17.i, %or.i4.i.i.i18.i
  %xor18.i.i.i20.i = xor i32 %sub17.i.i.i19.i, %sub11.i.i.i13.i
  %or.i5.i.i.i21.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i19.i, i32 %sub17.i.i.i19.i, i32 24) #9
  %sub20.i.i.i22.i = sub i32 %xor18.i.i.i20.i, %or.i5.i.i.i21.i
  %rem.i23.i = urem i32 %sub20.i.i.i22.i, %div1.i.i
  br label %clip_addr_hash.exit

clip_addr_hash.exit:                              ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %add.i.i, %cond.true.i ], [ %rem.i23.i, %cond.false.i ]
  %lock = getelementptr inbounds %struct.clip_tbl, ptr %3, i32 0, i32 2
  tail call void @_raw_read_lock_bh(ptr noundef %lock) #9
  %arrayidx = getelementptr %struct.clip_tbl, ptr %3, i32 0, i32 6, i32 %cond.i
  br label %for.cond

for.cond:                                         ; preds = %if.end18.for.cond_crit_edge, %clip_addr_hash.exit
  %ret.0 = phi i32 [ -1, %clip_addr_hash.exit ], [ %ret.1, %if.end18.for.cond_crit_edge ]
  %.pn.in = phi ptr [ %arrayidx, %clip_addr_hash.exit ], [ %.pn, %if.end18.for.cond_crit_edge ]
  %14 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %arrayidx
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %15 = getelementptr i8, ptr %.pn, i32 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %17)
  %cmp4 = icmp ne i16 %17, 10
  %or.cond = or i1 %tobool.not.i, %cmp4
  br i1 %or.cond, label %if.else, label %if.then8

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %sin6_addr = getelementptr i8, ptr %.pn, i32 16
  %call9 = tail call i32 @memcmp(ptr noundef dereferenceable(16) %lip, ptr noundef dereferenceable(16) %sin6_addr, i32 noundef 16) #12
  br label %if.end18

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %17)
  %cmp11 = icmp eq i16 %17, 2
  %or.cond128 = and i1 %tobool.not.i, %cmp11
  br i1 %or.cond128, label %if.then15, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %sin_addr = getelementptr i8, ptr %.pn, i32 12
  %call16 = tail call i32 @memcmp(ptr noundef dereferenceable(4) %lip, ptr noundef dereferenceable(4) %sin_addr, i32 noundef 4) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.else.if.end18_crit_edge, %if.then8
  %ret.1 = phi i32 [ %call9, %if.then8 ], [ %call16, %if.then15 ], [ %ret.0, %if.else.if.end18_crit_edge ]
  %tobool19.not = icmp eq i32 %ret.1, 0
  br i1 %tobool19.not, label %if.then20, label %if.end18.for.cond_crit_edge

if.end18.for.cond_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then20:                                        ; preds = %if.end18
  tail call void @_raw_read_unlock_bh(ptr noundef %lock) #9
  %refcnt = getelementptr i8, ptr %.pn, i32 -4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #9
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #9, !srcloc !48
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then20.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !49

if.then20.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then20
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %19 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %.not.i.i.i = icmp sgt i32 %19, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !50

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then20.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then20.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #9
  br label %cleanup

for.end:                                          ; preds = %for.cond
  tail call void @_raw_read_unlock_bh(ptr noundef %lock) #9
  tail call void @_raw_write_lock_bh(ptr noundef %lock) #9
  %ce_free_head = getelementptr inbounds %struct.clip_tbl, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %ce_free_head to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %ce_free_head, align 4
  %cmp.i.not = icmp eq ptr %21, %ce_free_head
  br i1 %cmp.i.not, label %if.else66, label %if.then32

if.then32:                                        ; preds = %for.end
  %add.ptr37 = getelementptr i8, ptr %21, i32 -48
  %call.i.i129 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %21) #9
  br i1 %call.i.i129, label %if.end.i.i, label %if.then32.list_del_init.exit_crit_edge

if.then32.list_del_init.exit_crit_edge:           ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then32.list_del_init.exit_crit_edge
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %21, ptr %21, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %21, ptr %prev.i3.i, align 4
  tail call void @__raw_spin_lock_init(ptr noundef %add.ptr37, ptr noundef nonnull @.str, ptr noundef nonnull @cxgb4_clip_get.__key, i16 noundef signext 3) #9
  %refcnt41 = getelementptr i8, ptr %21, i32 -4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt41, i32 noundef 4) #9
  %30 = ptrtoint ptr %refcnt41 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile i32 0, ptr %refcnt41, align 4
  %nfree = getelementptr inbounds %struct.clip_tbl, ptr %3, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nfree, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %nfree, i32 1, i32 3, i32 1) #9
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nfree, ptr %nfree, i32 1, ptr elementtype(i32) %nfree) #9, !srcloc !51
  %prev.i = getelementptr %struct.clip_tbl, ptr %3, i32 0, i32 6, i32 %cond.i, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i, align 4
  %call.i.i130 = tail call zeroext i1 @__list_add_valid(ptr noundef %21, ptr noundef %33, ptr noundef %arrayidx) #9
  br i1 %call.i.i130, label %if.end.i.i131, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i131:                                    ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %21, ptr %prev.i, align 4
  %35 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %arrayidx, ptr %21, align 4
  %36 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev.i3.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %21, ptr %33, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i131, %list_del_init.exit.list_add_tail.exit_crit_edge
  %38 = getelementptr i8, ptr %21, i32 8
  br i1 %tobool.not.i, label %if.else62, label %if.then46

if.then46:                                        ; preds = %list_add_tail.exit
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 10, ptr %38, align 4
  %sin6_addr48 = getelementptr i8, ptr %21, i32 16
  %40 = call ptr @memcpy(ptr %sin6_addr48, ptr %lip, i32 16)
  %41 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %c.i) #9
  %43 = getelementptr inbounds %struct.fw_clip_cmd, ptr %c.i, i32 0, i32 1
  %44 = getelementptr inbounds %struct.fw_clip_cmd, ptr %c.i, i32 0, i32 2
  %45 = getelementptr inbounds %struct.fw_clip_cmd, ptr %c.i, i32 0, i32 3
  %46 = getelementptr inbounds i8, ptr %c.i, i32 24
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 0, ptr %46, align 8
  %48 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 681574400, ptr %c.i, align 8
  %49 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -2147483646, ptr %43, align 4
  %50 = ptrtoint ptr %lip to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %51 = load i64, ptr %lip, align 4
  %52 = ptrtoint ptr %44 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %44, align 8
  %add.ptr.i = getelementptr i8, ptr %lip, i32 8
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %add.ptr.i, align 8
  %55 = ptrtoint ptr %45 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %45, align 8
  %mbox.i = getelementptr inbounds %struct.adapter, ptr %42, i32 0, i32 6
  %56 = ptrtoint ptr %mbox.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mbox.i, align 8
  %call3.i = call i32 @t4_wr_mbox_meat(ptr noundef %42, i32 noundef %57, ptr noundef nonnull %c.i, i32 noundef 32, ptr noundef nonnull %c.i, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %c.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool52.not = icmp eq i32 %call3.i, 0
  br i1 %tobool52.not, label %if.then46.if.end72_crit_edge, label %if.then53

if.then46.if.end72_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then53:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_write_unlock_bh(ptr noundef %lock) #9
  %pdev_dev = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4
  %58 = ptrtoint ptr %pdev_dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdev_dev, align 16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.1, i32 noundef %call3.i, ptr noundef %sin6_addr48) #13
  br label %cleanup

if.else62:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %38 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 2, ptr %38, align 4
  %sin_addr64 = getelementptr i8, ptr %21, i32 12
  %61 = ptrtoint ptr %lip to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %lip, align 4
  %63 = ptrtoint ptr %sin_addr64 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %sin_addr64, align 4
  br label %if.end72

if.else66:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_write_unlock_bh(ptr noundef %lock) #9
  %pdev_dev71 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 4
  %64 = ptrtoint ptr %pdev_dev71 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdev_dev71, align 16
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %65, ptr noundef nonnull @.str.7, ptr noundef %lip) #13
  br label %cleanup

if.end72:                                         ; preds = %if.else62, %if.then46.if.end72_crit_edge
  call void @_raw_write_unlock_bh(ptr noundef %lock) #9
  %call.i.i.i132 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt41, i32 noundef 4) #9
  %66 = ptrtoint ptr %refcnt41 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 1, ptr %refcnt41, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.else66, %if.then53, %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.else66 ], [ %call3.i, %if.then53 ], [ 0, %if.end72 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.else.i.i.i.cleanup_crit_edge ], [ 0, %if.end15.sink.split.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cxgb4_clip_release(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %lip, i8 noundef zeroext %v6) #0 align 64 {
entry:
  %c.i = alloca %struct.fw_clip_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i.i, align 8
  %clipt = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %clipt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clipt, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %v6)
  %tobool.not.i = icmp eq i8 %v6, 0
  %clipt_size.i4.i = getelementptr inbounds %struct.clip_tbl, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %clipt_size.i4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clipt_size.i4.i, align 4
  %div1.i.i = lshr i32 %5, 1
  %6 = ptrtoint ptr %lip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lip, align 4
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx1.i.i = getelementptr i32, ptr %lip, i32 1
  %8 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1.i.i, align 4
  %xor2.i.i = xor i32 %9, %7
  %arrayidx3.i.i = getelementptr i32, ptr %lip, i32 2
  %10 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3.i.i, align 4
  %xor4.i.i = xor i32 %xor2.i.i, %11
  %arrayidx5.i.i = getelementptr i32, ptr %lip, i32 3
  %12 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx5.i.i, align 4
  %xor6.i.i = xor i32 %xor4.i.i, %13
  %add.i.i.i.i = add i32 %xor6.i.i, -559038733
  %xor3.i.i.i.i = xor i32 %add.i.i.i.i, -1874655147
  %sub5.i.i.i.i = add i32 %xor3.i.i.i.i, -407022722
  %xor6.i.i.i.i = xor i32 %sub5.i.i.i.i, -559038733
  %or.i1.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i.i, i32 %sub5.i.i.i.i, i32 25) #9
  %sub8.i.i.i.i = sub i32 %xor6.i.i.i.i, %or.i1.i.i.i.i
  %xor9.i.i.i.i = xor i32 %sub8.i.i.i.i, -1874655147
  %or.i2.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i.i, i32 %sub8.i.i.i.i, i32 16) #9
  %sub11.i.i.i.i = sub i32 %xor9.i.i.i.i, %or.i2.i.i.i.i
  %xor12.i.i.i.i = xor i32 %sub11.i.i.i.i, %sub5.i.i.i.i
  %or.i3.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i.i, i32 %sub11.i.i.i.i, i32 4) #9
  %sub14.i.i.i.i = sub i32 %xor12.i.i.i.i, %or.i3.i.i.i.i
  %xor15.i.i.i.i = xor i32 %sub14.i.i.i.i, %sub8.i.i.i.i
  %or.i4.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i.i, i32 %sub14.i.i.i.i, i32 14) #9
  %sub17.i.i.i.i = sub i32 %xor15.i.i.i.i, %or.i4.i.i.i.i
  %xor18.i.i.i.i = xor i32 %sub17.i.i.i.i, %sub11.i.i.i.i
  %or.i5.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i.i, i32 %sub17.i.i.i.i, i32 24) #9
  %sub20.i.i.i.i = sub i32 %xor18.i.i.i.i, %or.i5.i.i.i.i
  %rem.i.i = urem i32 %sub20.i.i.i.i, %div1.i.i
  %add.i.i = add nuw i32 %rem.i.i, %div1.i.i
  br label %clip_addr_hash.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.i.i.i5.i = add i32 %7, -559038733
  %xor3.i.i.i6.i = xor i32 %add.i.i.i5.i, -1874655147
  %sub5.i.i.i7.i = add i32 %xor3.i.i.i6.i, -407022722
  %xor6.i.i.i8.i = xor i32 %sub5.i.i.i7.i, -559038733
  %or.i1.i.i.i9.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i7.i, i32 %sub5.i.i.i7.i, i32 25) #9
  %sub8.i.i.i10.i = sub i32 %xor6.i.i.i8.i, %or.i1.i.i.i9.i
  %xor9.i.i.i11.i = xor i32 %sub8.i.i.i10.i, -1874655147
  %or.i2.i.i.i12.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i10.i, i32 %sub8.i.i.i10.i, i32 16) #9
  %sub11.i.i.i13.i = sub i32 %xor9.i.i.i11.i, %or.i2.i.i.i12.i
  %xor12.i.i.i14.i = xor i32 %sub11.i.i.i13.i, %sub5.i.i.i7.i
  %or.i3.i.i.i15.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i13.i, i32 %sub11.i.i.i13.i, i32 4) #9
  %sub14.i.i.i16.i = sub i32 %xor12.i.i.i14.i, %or.i3.i.i.i15.i
  %xor15.i.i.i17.i = xor i32 %sub14.i.i.i16.i, %sub8.i.i.i10.i
  %or.i4.i.i.i18.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i16.i, i32 %sub14.i.i.i16.i, i32 14) #9
  %sub17.i.i.i19.i = sub i32 %xor15.i.i.i17.i, %or.i4.i.i.i18.i
  %xor18.i.i.i20.i = xor i32 %sub17.i.i.i19.i, %sub11.i.i.i13.i
  %or.i5.i.i.i21.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i19.i, i32 %sub17.i.i.i19.i, i32 24) #9
  %sub20.i.i.i22.i = sub i32 %xor18.i.i.i20.i, %or.i5.i.i.i21.i
  %rem.i23.i = urem i32 %sub20.i.i.i22.i, %div1.i.i
  br label %clip_addr_hash.exit

clip_addr_hash.exit:                              ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %add.i.i, %cond.true.i ], [ %rem.i23.i, %cond.false.i ]
  %lock = getelementptr inbounds %struct.clip_tbl, ptr %3, i32 0, i32 2
  tail call void @_raw_read_lock_bh(ptr noundef %lock) #9
  %arrayidx = getelementptr %struct.clip_tbl, ptr %3, i32 0, i32 6, i32 %cond.i
  br label %for.cond

for.cond:                                         ; preds = %if.end18.for.cond_crit_edge, %clip_addr_hash.exit
  %ret.0 = phi i32 [ -1, %clip_addr_hash.exit ], [ %ret.1, %if.end18.for.cond_crit_edge ]
  %.pn.in = phi ptr [ %arrayidx, %clip_addr_hash.exit ], [ %.pn, %if.end18.for.cond_crit_edge ]
  %14 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %arrayidx
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %15 = getelementptr i8, ptr %.pn, i32 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %17)
  %cmp4 = icmp ne i16 %17, 10
  %or.cond = or i1 %tobool.not.i, %cmp4
  br i1 %or.cond, label %if.else, label %if.then8

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %sin6_addr = getelementptr i8, ptr %.pn, i32 16
  %call9 = tail call i32 @memcmp(ptr noundef dereferenceable(16) %lip, ptr noundef dereferenceable(16) %sin6_addr, i32 noundef 16) #12
  br label %if.end18

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %17)
  %cmp11 = icmp eq i16 %17, 2
  %or.cond76 = and i1 %tobool.not.i, %cmp11
  br i1 %or.cond76, label %if.then15, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %sin_addr = getelementptr i8, ptr %.pn, i32 12
  %call16 = tail call i32 @memcmp(ptr noundef dereferenceable(4) %lip, ptr noundef dereferenceable(4) %sin_addr, i32 noundef 4) #12
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.else.if.end18_crit_edge, %if.then8
  %ret.1 = phi i32 [ %call9, %if.then8 ], [ %call16, %if.then15 ], [ %ret.0, %if.else.if.end18_crit_edge ]
  %tobool19.not = icmp eq i32 %ret.1, 0
  br i1 %tobool19.not, label %if.then20, label %if.end18.for.cond_crit_edge

if.end18.for.cond_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then20:                                        ; preds = %if.end18
  %cte.0.le = getelementptr i8, ptr %.pn, i32 -48
  tail call void @_raw_read_unlock_bh(ptr noundef %lock) #9
  tail call void @_raw_write_lock_bh(ptr noundef %lock) #9
  tail call void @_raw_spin_lock_bh(ptr noundef %cte.0.le) #9
  %refcnt = getelementptr i8, ptr %.pn, i32 -4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !52
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #9
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #9, !srcloc !53
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then32, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end39_crit_edge, label %if.then10.i.i.i, !prof !50

if.end5.i.i.i.if.end39_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #9
  br label %if.end39

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_read_unlock_bh(ptr noundef %lock) #9
  br label %cleanup

if.then32:                                        ; preds = %if.then20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !54
  %call.i.i77 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #9
  br i1 %call.i.i77, label %if.end.i.i, label %if.then32.list_del_init.exit_crit_edge

if.then32.list_del_init.exit_crit_edge:           ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then32.list_del_init.exit_crit_edge
  %25 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %.pn, ptr %.pn, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %.pn, ptr %prev.i3.i, align 4
  %ce_free_head = getelementptr inbounds %struct.clip_tbl, ptr %3, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.clip_tbl, ptr %3, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i, align 4
  %call.i.i78 = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn, ptr noundef %28, ptr noundef %ce_free_head) #9
  br i1 %call.i.i78, label %if.end.i.i79, label %list_del_init.exit.list_add_tail.exit_crit_edge

list_del_init.exit.list_add_tail.exit_crit_edge:  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i79:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %.pn, ptr %prev.i, align 4
  %30 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %ce_free_head, ptr %.pn, align 4
  %31 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev.i3.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %.pn, ptr %28, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i79, %list_del_init.exit.list_add_tail.exit_crit_edge
  %nfree = getelementptr inbounds %struct.clip_tbl, ptr %3, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nfree, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %nfree, i32 1, i32 3, i32 1) #9
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nfree, ptr %nfree, i32 1, ptr elementtype(i32) %nfree) #9, !srcloc !55
  br i1 %tobool.not.i, label %list_add_tail.exit.if.end39_crit_edge, label %if.then36

list_add_tail.exit.if.end39_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then36:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %c.i) #9
  %36 = getelementptr inbounds %struct.fw_clip_cmd, ptr %c.i, i32 0, i32 1
  %37 = getelementptr inbounds %struct.fw_clip_cmd, ptr %c.i, i32 0, i32 2
  %38 = getelementptr inbounds %struct.fw_clip_cmd, ptr %c.i, i32 0, i32 3
  %39 = getelementptr inbounds i8, ptr %c.i, i32 24
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 0, ptr %39, align 8
  %41 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 683671552, ptr %c.i, align 8
  %42 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1073741826, ptr %36, align 4
  %43 = ptrtoint ptr %lip to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %lip, align 4
  %45 = ptrtoint ptr %37 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %37, align 8
  %add.ptr.i = getelementptr i8, ptr %lip, i32 8
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %add.ptr.i, align 8
  %48 = ptrtoint ptr %38 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %38, align 8
  %mbox.i = getelementptr inbounds %struct.adapter, ptr %35, i32 0, i32 6
  %49 = ptrtoint ptr %mbox.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mbox.i, align 8
  %call3.i = call i32 @t4_wr_mbox_meat(ptr noundef %35, i32 noundef %50, ptr noundef nonnull %c.i, i32 noundef 32, ptr noundef nonnull %c.i, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %c.i) #9
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %list_add_tail.exit.if.end39_crit_edge, %if.then10.i.i.i, %if.end5.i.i.i.if.end39_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %cte.0.le) #9
  call void @_raw_write_unlock_bh(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cxgb4_update_root_dev_clip(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cxgb4_update_dev_clip(ptr noundef %dev, ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @netdev_master_upper_dev_get_rcu(ptr noundef %dev) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.for.body.preheader_crit_edge, label %if.then3

if.end.for.body.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

if.then3:                                         ; preds = %if.end
  %call4 = tail call fastcc i32 @cxgb4_update_dev_clip(ptr noundef nonnull %call1, ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.for.body.preheader_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.for.body.preheader_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then3.for.body.preheader_crit_edge, %if.end.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.034 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %conv = trunc i32 %i.034 to i16
  %call9 = tail call ptr @__vlan_find_dev_deep_rcu(ptr noundef %dev, i16 noundef zeroext -32512, i16 noundef zeroext %conv) #9
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %if.end12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end12:                                         ; preds = %for.body
  %call13 = tail call fastcc i32 @cxgb4_update_dev_clip(ptr noundef nonnull %call9, ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.for.inc_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc, 4096
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call4, %if.then3.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cxgb4_update_dev_clip(ptr noundef %root_dev, ptr nocapture noundef readonly %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ip6_ptr.i = getelementptr inbounds %struct.net_device, ptr %root_dev, i32 0, i32 80
  %0 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call.i, label %entry.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

entry.__in6_dev_get.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %entry
  %call2.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__in6_dev_get.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.__in6_dev_get.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__in6_dev_get.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 313, ptr noundef nonnull @.str.16) #9
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %entry.__in6_dev_get.exit_crit_edge
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %__in6_dev_get.exit.cleanup_crit_edge, label %if.end

__in6_dev_get.exit.cleanup_crit_edge:             ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %__in6_dev_get.exit
  %lock = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 24
  tail call void @_raw_read_lock_bh(ptr noundef %lock) #9
  %addr_list = getelementptr inbounds %struct.inet6_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %addr_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn22 = load ptr, ptr %addr_list, align 4
  %cmp.not23 = icmp eq ptr %.pn22, %addr_list
  br i1 %cmp.not23, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond:                                         ; preds = %for.body
  %3 = ptrtoint ptr %.pn24 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn24, align 4
  %cmp.not = icmp eq ptr %.pn, %addr_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn24 = phi ptr [ %.pn, %for.cond.for.body_crit_edge ], [ %.pn22, %if.end.for.body_crit_edge ]
  %ifa.0 = getelementptr i8, ptr %.pn24, i32 -228
  %call2 = tail call i32 @cxgb4_clip_get(ptr noundef %dev, ptr noundef %ifa.0, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %for.body.for.end_crit_edge, label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge, %if.end.for.end_crit_edge
  %ret.1 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %call2, %for.body.for.end_crit_edge ], [ %call2, %for.cond.for.end_crit_edge ]
  tail call void @_raw_read_unlock_bh(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %__in6_dev_get.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %for.end ], [ 0, %__in6_dev_get.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__vlan_find_dev_deep_rcu(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @clip_tbl_show(ptr noundef %seq, ptr nocapture noundef readnone %v) local_unnamed_addr #0 align 64 {
entry:
  %ip = alloca [60 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %clipt = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %clipt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clipt, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %ip) #9
  %4 = call ptr @memset(ptr %ip, i32 255, i32 60)
  %lock = getelementptr inbounds %struct.clip_tbl, ptr %3, i32 0, i32 2
  tail call void @_raw_read_lock_bh(ptr noundef %lock) #9
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.10) #9
  %clipt_size = getelementptr inbounds %struct.clip_tbl, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %clipt_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %clipt_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp35.not = icmp eq i32 %6, 0
  br i1 %cmp35.not, label %entry.for.end15_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end15

for.body:                                         ; preds = %for.inc14.for.body_crit_edge, %entry.for.body_crit_edge
  %i.036 = phi i32 [ %inc, %for.inc14.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.clip_tbl, ptr %3, i32 0, i32 6, i32 %i.036
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn32 = load ptr, ptr %arrayidx, align 4
  %cmp4.not33 = icmp eq ptr %.pn32, %arrayidx
  br i1 %cmp4.not33, label %for.body.for.inc14_crit_edge, label %for.body.for.body5_crit_edge

for.body.for.body5_crit_edge:                     ; preds = %for.body
  br label %for.body5

for.body.for.inc14_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc14

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %for.body.for.body5_crit_edge
  %.pn34 = phi ptr [ %.pn, %for.body5.for.body5_crit_edge ], [ %.pn32, %for.body.for.body5_crit_edge ]
  %8 = ptrtoint ptr %ip to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %ip, align 1
  %9 = getelementptr i8, ptr %.pn34, i32 8
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %ip, ptr noundef nonnull @.str.11, ptr noundef %9)
  %refcnt = getelementptr i8, ptr %.pn34, i32 -4
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #9
  %10 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %refcnt, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.12, ptr noundef nonnull %ip, i32 noundef %11) #9
  %12 = ptrtoint ptr %.pn34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn34, align 4
  %cmp4.not = icmp eq ptr %.pn, %arrayidx
  br i1 %cmp4.not, label %for.body5.for.inc14_crit_edge, label %for.body5.for.body5_crit_edge

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body5

for.body5.for.inc14_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc14

for.inc14:                                        ; preds = %for.body5.for.inc14_crit_edge, %for.body.for.inc14_crit_edge
  %inc = add nuw i32 %i.036, 1
  %13 = ptrtoint ptr %clipt_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %clipt_size, align 4
  %cmp = icmp ult i32 %inc, %14
  br i1 %cmp, label %for.inc14.for.body_crit_edge, label %for.inc14.for.end15_crit_edge

for.inc14.for.end15_crit_edge:                    ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end15

for.inc14.for.body_crit_edge:                     ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end15:                                        ; preds = %for.inc14.for.end15_crit_edge, %entry.for.end15_crit_edge
  %nfree = getelementptr inbounds %struct.clip_tbl, ptr %3, i32 0, i32 3
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %nfree, i32 noundef 4) #9
  %15 = ptrtoint ptr %nfree to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %nfree, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.13, i32 noundef %16) #9
  call void @_raw_read_unlock_bh(ptr noundef %lock) #9
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %ip) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @t4_init_clip_tbl(i32 noundef %clipt_start, i32 noundef %clipt_end) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %clipt_end, i32 %clipt_start)
  %cmp.not = icmp ugt i32 %clipt_end, %clipt_start
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = sub i32 %clipt_end, %clipt_start
  %add = add i32 %sub, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add)
  %cmp1 = icmp ult i32 %add, 2
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 8) #9
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 68) #9
  %retval.0.i = select i1 %1, i32 -1, i32 %spec.select.i
  %call.i.i57 = tail call noalias ptr @kvmalloc_node(i32 noundef %retval.0.i, i32 noundef 3520, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i.i57, null
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %3 = ptrtoint ptr %call.i.i57 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %clipt_start, ptr %call.i.i57, align 4
  %clipt_size8 = getelementptr inbounds %struct.clip_tbl, ptr %call.i.i57, i32 0, i32 1
  %4 = ptrtoint ptr %clipt_size8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %clipt_size8, align 4
  %ce_free_head = getelementptr inbounds %struct.clip_tbl, ptr %call.i.i57, i32 0, i32 4
  %5 = ptrtoint ptr %ce_free_head to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %ce_free_head, ptr %ce_free_head, align 4
  %prev.i = getelementptr inbounds %struct.clip_tbl, ptr %call.i.i57, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ce_free_head, ptr %prev.i, align 4
  %nfree = getelementptr inbounds %struct.clip_tbl, ptr %call.i.i57, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nfree, i32 noundef 4) #9
  %7 = ptrtoint ptr %nfree to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %add, ptr %nfree, align 4
  %lock = getelementptr inbounds %struct.clip_tbl, ptr %call.i.i57, i32 0, i32 2
  tail call void @__rwlock_init(ptr noundef %lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @t4_init_clip_tbl.__key) #9
  %8 = ptrtoint ptr %clipt_size8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clipt_size8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1065.not = icmp eq i32 %9, 0
  br i1 %cmp1065.not, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end6.for.body_crit_edge
  %i.066 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.clip_tbl, ptr %call.i.i57, i32 0, i32 6, i32 %i.066
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i58 = getelementptr %struct.clip_tbl, ptr %call.i.i57, i32 0, i32 6, i32 %i.066, i32 1
  %11 = ptrtoint ptr %prev.i58 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx, ptr %prev.i58, align 4
  %inc = add nuw i32 %i.066, 1
  %12 = ptrtoint ptr %clipt_size8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %clipt_size8, align 4
  %cmp10 = icmp ult i32 %inc, %13
  br i1 %cmp10, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end6.for.end_crit_edge
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 84) #9
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %for.end.if.then13_crit_edge, label %kvcalloc.exit, !prof !49

for.end.if.then13_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

kvcalloc.exit:                                    ; preds = %for.end
  %16 = extractvalue { i32, i1 } %14, 0
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %16, i32 noundef 3520, i32 noundef -1) #14
  %tobool12.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool12.not, label %kvcalloc.exit.if.then13_crit_edge, label %for.body18.preheader

kvcalloc.exit.if.then13_crit_edge:                ; preds = %kvcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.then13:                                        ; preds = %kvcalloc.exit.if.then13_crit_edge, %for.end.if.then13_crit_edge
  tail call void @kvfree(ptr noundef nonnull %call.i.i57) #9
  br label %cleanup

for.body18.preheader:                             ; preds = %kvcalloc.exit
  %cl_list15 = getelementptr inbounds %struct.clip_tbl, ptr %call.i.i57, i32 0, i32 5
  %17 = ptrtoint ptr %cl_list15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i.i.i, ptr %cl_list15, align 4
  %umax = call i32 @llvm.umax.i32(i32 %add, i32 1)
  br label %for.body18

for.body18:                                       ; preds = %list_add_tail.exit.for.body18_crit_edge, %for.body18.preheader
  %i.168 = phi i32 [ %inc24, %list_add_tail.exit.for.body18_crit_edge ], [ 0, %for.body18.preheader ]
  %list = getelementptr %struct.clip_entry, ptr %call.i.i.i, i32 %i.168, i32 2
  %18 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list, ptr %list, align 4
  %prev.i59 = getelementptr %struct.clip_entry, ptr %call.i.i.i, i32 %i.168, i32 2, i32 1
  %19 = ptrtoint ptr %prev.i59 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %list, ptr %prev.i59, align 4
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i, align 4
  %call.i.i61 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %21, ptr noundef %ce_free_head) #9
  br i1 %call.i.i61, label %if.end.i.i62, label %for.body18.list_add_tail.exit_crit_edge

for.body18.list_add_tail.exit_crit_edge:          ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i62:                                     ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %list, ptr %prev.i, align 4
  %23 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %ce_free_head, ptr %list, align 4
  %24 = ptrtoint ptr %prev.i59 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev.i59, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %list, ptr %21, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i62, %for.body18.list_add_tail.exit_crit_edge
  %inc24 = add nuw i32 %i.168, 1
  %exitcond.not = icmp eq i32 %inc24, %umax
  br i1 %exitcond.not, label %list_add_tail.exit.cleanup_crit_edge, label %list_add_tail.exit.for.body18_crit_edge

list_add_tail.exit.for.body18_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body18

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit.cleanup_crit_edge, %if.then13, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then13 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end3.cleanup_crit_edge ], [ %call.i.i57, %list_add_tail.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @t4_cleanup_clip_tbl(ptr nocapture noundef readonly %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %clipt = getelementptr inbounds %struct.adapter, ptr %adap, i32 0, i32 33
  %0 = ptrtoint ptr %clipt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clipt, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cl_list = getelementptr inbounds %struct.clip_tbl, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cl_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cl_list, align 4
  tail call void @kvfree(ptr noundef %3) #9
  tail call void @kvfree(ptr noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t4_wr_mbox_meat(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !35, !37, !38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @cxgb4_clip_get.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb4/clip_tbl.c", i32 110, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/chelsio/cxgb4/clip_tbl.c", i32 121, i32 5}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @cxgb4_clip_get._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @cxgb4_clip_get._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/chelsio/cxgb4/clip_tbl.c", i32 135, i32 3}
!13 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @cxgb4_clip_get._entry.6, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @cxgb4_clip_get._entry_ptr.9, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__ksymtab_cxgb4_clip_get, !17, !"__ksymtab_cxgb4_clip_get", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/chelsio/cxgb4/clip_tbl.c", i32 144, i32 1}
!18 = !{ptr @__ksymtab_cxgb4_clip_release, !19, !"__ksymtab_cxgb4_clip_release", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/chelsio/cxgb4/clip_tbl.c", i32 190, i32 1}
!20 = !{ptr @__ksymtab_cxgb4_update_root_dev_clip, !21, !"__ksymtab_cxgb4_update_root_dev_clip", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/chelsio/cxgb4/clip_tbl.c", i32 248, i32 1}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/chelsio/cxgb4/clip_tbl.c", i32 260, i32 16}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/chelsio/cxgb4/clip_tbl.c", i32 264, i32 16}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/chelsio/cxgb4/clip_tbl.c", i32 265, i32 20}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/chelsio/cxgb4/clip_tbl.c", i32 269, i32 18}
!30 = !{ptr @t4_init_clip_tbl.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/chelsio/cxgb4/clip_tbl.c", i32 299, i32 2}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @__ksymtab_t4_cleanup_clip_tbl, !34, !"__ksymtab_t4_cleanup_clip_tbl", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/chelsio/cxgb4/clip_tbl.c", i32 328, i32 1}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/net/addrconf.h", i32 313, i32 9}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 2148348173, i64 2148348205, i64 2148348234, i64 2148348268, i64 2148348299, i64 2148348322}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{i64 2148349108, i64 2148349134, i64 2148349163, i64 2148349197, i64 2148349228, i64 2148349251}
!52 = !{i64 2148436198}
!53 = !{i64 2148350638, i64 2148350670, i64 2148350699, i64 2148350733, i64 2148350764, i64 2148350787}
!54 = !{i64 2149312312}
!55 = !{i64 2148346643, i64 2148346669, i64 2148346698, i64 2148346732, i64 2148346763, i64 2148346786}
