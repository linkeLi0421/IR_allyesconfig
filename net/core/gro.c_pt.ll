; ModuleID = '/llk/IR_all_yes/net/core/gro.c_pt.bc'
source_filename = "../net/core/gro.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dev_add_offload\22, \22a\22\09"
module asm "\09.weak\09__crc_dev_add_offload\09\09\09\09"
module asm "\09.long\09__crc_dev_add_offload\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_add_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_add_offload\22\09\09\09\09\09"
module asm "__kstrtabns_dev_add_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dev_remove_offload\22, \22a\22\09"
module asm "\09.weak\09__crc_dev_remove_offload\09\09\09\09"
module asm "\09.long\09__crc_dev_remove_offload\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dev_remove_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22dev_remove_offload\22\09\09\09\09\09"
module asm "__kstrtabns_dev_remove_offload:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+skb_eth_gso_segment\22, \22a\22\09"
module asm "\09.weak\09__crc_skb_eth_gso_segment\09\09\09\09"
module asm "\09.long\09__crc_skb_eth_gso_segment\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_eth_gso_segment:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_eth_gso_segment\22\09\09\09\09\09"
module asm "__kstrtabns_skb_eth_gso_segment:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+skb_mac_gso_segment\22, \22a\22\09"
module asm "\09.weak\09__crc_skb_mac_gso_segment\09\09\09\09"
module asm "\09.long\09__crc_skb_mac_gso_segment\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_skb_mac_gso_segment:\09\09\09\09\09"
module asm "\09.asciz \09\22skb_mac_gso_segment\22\09\09\09\09\09"
module asm "__kstrtabns_skb_mac_gso_segment:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+napi_gro_flush\22, \22a\22\09"
module asm "\09.weak\09__crc_napi_gro_flush\09\09\09\09"
module asm "\09.long\09__crc_napi_gro_flush\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_napi_gro_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22napi_gro_flush\22\09\09\09\09\09"
module asm "__kstrtabns_napi_gro_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gro_find_receive_by_type\22, \22a\22\09"
module asm "\09.weak\09__crc_gro_find_receive_by_type\09\09\09\09"
module asm "\09.long\09__crc_gro_find_receive_by_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gro_find_receive_by_type:\09\09\09\09\09"
module asm "\09.asciz \09\22gro_find_receive_by_type\22\09\09\09\09\09"
module asm "__kstrtabns_gro_find_receive_by_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+gro_find_complete_by_type\22, \22a\22\09"
module asm "\09.weak\09__crc_gro_find_complete_by_type\09\09\09\09"
module asm "\09.long\09__crc_gro_find_complete_by_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gro_find_complete_by_type:\09\09\09\09\09"
module asm "\09.asciz \09\22gro_find_complete_by_type\22\09\09\09\09\09"
module asm "__kstrtabns_gro_find_complete_by_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+napi_gro_receive\22, \22a\22\09"
module asm "\09.weak\09__crc_napi_gro_receive\09\09\09\09"
module asm "\09.long\09__crc_napi_gro_receive\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_napi_gro_receive:\09\09\09\09\09"
module asm "\09.asciz \09\22napi_gro_receive\22\09\09\09\09\09"
module asm "__kstrtabns_napi_gro_receive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+napi_get_frags\22, \22a\22\09"
module asm "\09.weak\09__crc_napi_get_frags\09\09\09\09"
module asm "\09.long\09__crc_napi_get_frags\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_napi_get_frags:\09\09\09\09\09"
module asm "\09.asciz \09\22napi_get_frags\22\09\09\09\09\09"
module asm "__kstrtabns_napi_get_frags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+napi_gro_frags\22, \22a\22\09"
module asm "\09.weak\09__crc_napi_gro_frags\09\09\09\09"
module asm "\09.long\09__crc_napi_gro_frags\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_napi_gro_frags:\09\09\09\09\09"
module asm "\09.asciz \09\22napi_gro_frags\22\09\09\09\09\09"
module asm "__kstrtabns_napi_gro_frags:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__skb_gro_checksum_complete\22, \22a\22\09"
module asm "\09.weak\09__crc___skb_gro_checksum_complete\09\09\09\09"
module asm "\09.long\09__crc___skb_gro_checksum_complete\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___skb_gro_checksum_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22__skb_gro_checksum_complete\22\09\09\09\09\09"
module asm "__kstrtabns___skb_gro_checksum_complete:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.93 }
%struct.atomic_t = type { i32 }
%union.anon.93 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.packet_offload = type { i16, i16, %struct.offload_callbacks, %struct.list_head }
%struct.offload_callbacks = type { ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.135, %union.anon.136, [48 x i8], %union.anon.137, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.139, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.135 = type { ptr }
%union.anon.136 = type { i64 }
%union.anon.137 = type { %struct.anon.138 }
%struct.anon.138 = type { i32, ptr }
%union.anon.139 = type { %struct.anon.140 }
%struct.anon.140 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.141, i32, i32, i32, i16, i16, %union.anon.143, i32, %union.anon.144, %union.anon.145, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.141 = type { i32 }
%union.anon.143 = type { i32 }
%union.anon.144 = type { i32 }
%union.anon.145 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.134, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.134 = type { ptr }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.30, %union.anon.91, %struct.atomic_t, i32 }
%union.anon.30 = type { %struct.anon.31 }
%struct.anon.31 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.91 = type { %struct.atomic_t }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.metadata_dst = type { %struct.dst_entry, i32, %union.anon.156 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%union.anon.156 = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.157, i16, i8, i8, i32, i16, i16 }
%union.anon.157 = type { %struct.anon.159 }
%struct.anon.159 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.27 }
%union.anon.27 = type { [4 x i32] }
%struct.dst_cache = type { ptr, i32 }

@gro_normal_batch = dso_local local_unnamed_addr global i32 8, section ".data..read_mostly", align 4
@offload_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@offload_base = internal global %struct.list_head { ptr @offload_base, ptr @offload_base }, section ".data..read_mostly", align 4
@__kstrtab_dev_add_offload = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_add_offload = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_add_offload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_add_offload to i32), ptr @__kstrtab_dev_add_offload, ptr @__kstrtabns_dev_add_offload }, section "___ksymtab+dev_add_offload", align 4
@__kstrtab_dev_remove_offload = external dso_local constant [0 x i8], align 1
@__kstrtabns_dev_remove_offload = external dso_local constant [0 x i8], align 1
@__ksymtab_dev_remove_offload = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dev_remove_offload to i32), ptr @__kstrtab_dev_remove_offload, ptr @__kstrtabns_dev_remove_offload }, section "___ksymtab+dev_remove_offload", align 4
@skb_eth_gso_segment.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net/core/gro.c\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@__kstrtab_skb_eth_gso_segment = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_eth_gso_segment = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_eth_gso_segment = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_eth_gso_segment to i32), ptr @__kstrtab_skb_eth_gso_segment, ptr @__kstrtabns_skb_eth_gso_segment }, section "___ksymtab+skb_eth_gso_segment", align 4
@skb_mac_gso_segment.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_skb_mac_gso_segment = external dso_local constant [0 x i8], align 1
@__kstrtabns_skb_mac_gso_segment = external dso_local constant [0 x i8], align 1
@__ksymtab_skb_mac_gso_segment = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @skb_mac_gso_segment to i32), ptr @__kstrtab_skb_mac_gso_segment, ptr @__kstrtabns_skb_mac_gso_segment }, section "___ksymtab+skb_mac_gso_segment", align 4
@__kstrtab_napi_gro_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_napi_gro_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_napi_gro_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @napi_gro_flush to i32), ptr @__kstrtab_napi_gro_flush, ptr @__kstrtabns_napi_gro_flush }, section "___ksymtab+napi_gro_flush", align 4
@gro_find_receive_by_type.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_gro_find_receive_by_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_gro_find_receive_by_type = external dso_local constant [0 x i8], align 1
@__ksymtab_gro_find_receive_by_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gro_find_receive_by_type to i32), ptr @__kstrtab_gro_find_receive_by_type, ptr @__kstrtabns_gro_find_receive_by_type }, section "___ksymtab+gro_find_receive_by_type", align 4
@gro_find_complete_by_type.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_gro_find_complete_by_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_gro_find_complete_by_type = external dso_local constant [0 x i8], align 1
@__ksymtab_gro_find_complete_by_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gro_find_complete_by_type to i32), ptr @__kstrtab_gro_find_complete_by_type, ptr @__kstrtabns_gro_find_complete_by_type }, section "___ksymtab+gro_find_complete_by_type", align 4
@__kstrtab_napi_gro_receive = external dso_local constant [0 x i8], align 1
@__kstrtabns_napi_gro_receive = external dso_local constant [0 x i8], align 1
@__ksymtab_napi_gro_receive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @napi_gro_receive to i32), ptr @__kstrtab_napi_gro_receive, ptr @__kstrtabns_napi_gro_receive }, section "___ksymtab+napi_gro_receive", align 4
@__kstrtab_napi_get_frags = external dso_local constant [0 x i8], align 1
@__kstrtabns_napi_get_frags = external dso_local constant [0 x i8], align 1
@__ksymtab_napi_get_frags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @napi_get_frags to i32), ptr @__kstrtab_napi_get_frags, ptr @__kstrtabns_napi_get_frags }, section "___ksymtab+napi_get_frags", align 4
@__kstrtab_napi_gro_frags = external dso_local constant [0 x i8], align 1
@__kstrtabns_napi_gro_frags = external dso_local constant [0 x i8], align 1
@__ksymtab_napi_gro_frags = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @napi_gro_frags to i32), ptr @__kstrtab_napi_gro_frags, ptr @__kstrtabns_napi_gro_frags }, section "___ksymtab+napi_gro_frags", align 4
@__kstrtab___skb_gro_checksum_complete = external dso_local constant [0 x i8], align 1
@__kstrtabns___skb_gro_checksum_complete = external dso_local constant [0 x i8], align 1
@__ksymtab___skb_gro_checksum_complete = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__skb_gro_checksum_complete to i32), ptr @__kstrtab___skb_gro_checksum_complete, ptr @__kstrtabns___skb_gro_checksum_complete }, section "___ksymtab+__skb_gro_checksum_complete", align 4
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"offload_lock\00", [19 x i8] zeroinitializer }, align 32
@__dev_remove_offload._entry = internal constant %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 70, ptr null, ptr null }, align 1
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014dev_remove_offload: %p not found\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__dev_remove_offload\00", [43 x i8] zeroinitializer }, align 32
@__dev_remove_offload._entry_ptr = internal global ptr @__dev_remove_offload._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@napi_gro_complete.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_napi_gro_receive_entry = external dso_local global %struct.tracepoint, align 4
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/net.h\00", [37 x i8] zeroinitializer }, align 32
@trace_napi_gro_receive_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@dev_gro_receive.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@gro_flush_oldest.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__tracepoint_napi_gro_receive_exit = external dso_local global %struct.tracepoint, align 4
@trace_napi_gro_receive_exit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@napi_frags_skb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s: dropping impossible skb from %s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"napi_frags_skb\00", [17 x i8] zeroinitializer }, align 32
@napi_frags_skb._entry_ptr = internal global ptr @napi_frags_skb._entry, section ".printk_index", align 4
@__tracepoint_napi_gro_frags_entry = external dso_local global %struct.tracepoint, align 4
@trace_napi_gro_frags_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_napi_gro_frags_exit = external dso_local global %struct.tracepoint, align 4
@trace_napi_gro_frags_exit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.20 = private unnamed_addr constant [13 x i8] c"offload_lock\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 108, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 12, i32 8 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 70, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 695, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 723, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [30 x i8] c"../include/trace/events/net.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 235, i32 1 }
@___asan_gen_.54 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 108, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 1011, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 717, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [18 x i8] c"../net/core/gro.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 734, i32 4 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__dev_remove_offload._entry, ptr @__dev_remove_offload._entry_ptr, ptr @__ksymtab___skb_gro_checksum_complete, ptr @__ksymtab_dev_add_offload, ptr @__ksymtab_dev_remove_offload, ptr @__ksymtab_gro_find_complete_by_type, ptr @__ksymtab_gro_find_receive_by_type, ptr @__ksymtab_napi_get_frags, ptr @__ksymtab_napi_gro_flush, ptr @__ksymtab_napi_gro_frags, ptr @__ksymtab_napi_gro_receive, ptr @__ksymtab_skb_eth_gso_segment, ptr @__ksymtab_skb_mac_gso_segment, ptr @napi_frags_skb._entry, ptr @napi_frags_skb._entry_ptr, ptr @offload_lock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @offload_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @napi_frags_skb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dev_add_offload(ptr noundef %po) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @offload_lock) #10
  %priority = getelementptr inbounds %struct.packet_offload, ptr %po, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @offload_base, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @offload_base
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.cond
  %1 = ptrtoint ptr %priority to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %priority, align 2
  %priority1 = getelementptr i8, ptr %.pn, i32 -14
  %3 = ptrtoint ptr %priority1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %priority1, align 2
  %cmp3 = icmp ult i16 %2, %4
  br i1 %cmp3, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %list9 = getelementptr inbounds %struct.packet_offload, ptr %po, i32 0, i32 3
  %prev = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %5 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list9, ptr noundef %6, ptr noundef %8) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add_rcu.exit_crit_edge

for.end.list_add_rcu.exit_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_rcu.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %list9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %list9, align 4
  %prev2.i.i = getelementptr inbounds %struct.packet_offload, ptr %po, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !93
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list9, ptr %6, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %list9, ptr %prev37.i.i, align 4
  br label %list_add_rcu.exit

list_add_rcu.exit:                                ; preds = %if.end.i.i, %for.end.list_add_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @offload_lock) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dev_remove_offload(ptr noundef %po) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @offload_lock) #10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @offload_base, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @offload_base
  br i1 %cmp.not.i, label %do.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %po1.0.i = getelementptr i8, ptr %.pn.i, i32 -16
  %cmp1.i = icmp eq ptr %po1.0.i, %po
  br i1 %cmp1.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %list2.i = getelementptr inbounds %struct.packet_offload, ptr %po, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list2.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_rcu.exit.i_crit_edge

if.then.i.list_del_rcu.exit.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.packet_offload, ptr %po, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i.i, align 4
  %3 = ptrtoint ptr %list2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %list2.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %if.then.i.list_del_rcu.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.packet_offload, ptr %po, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %__dev_remove_offload.exit

do.end.i:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %po) #13
  br label %__dev_remove_offload.exit

__dev_remove_offload.exit:                        ; preds = %do.end.i, %list_del_rcu.exit.i
  tail call void @_raw_spin_unlock(ptr noundef nonnull @offload_lock) #10
  tail call void @synchronize_net() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @skb_eth_gso_segment(ptr noundef %skb, i64 noundef %features, i16 noundef zeroext %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call1 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b33 = load i1, ptr @skb_eth_gso_segment.__warned, align 1
  br i1 %.b33, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @skb_eth_gso_segment.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 108, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %.pn43 = load volatile ptr, ptr @offload_base, align 4
  %cmp.not44 = icmp eq ptr %.pn43, @offload_base
  br i1 %cmp.not44, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn45 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn43, %do.end.for.body_crit_edge ]
  %ptype.0 = getelementptr i8, ptr %.pn45, i32 -16
  %4 = ptrtoint ptr %ptype.0 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ptype.0, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %type)
  %cmp12 = icmp eq i16 %5, %type
  br i1 %cmp12, label %land.lhs.true14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true14:                                  ; preds = %for.body
  %callbacks = getelementptr i8, ptr %.pn45, i32 -12
  %6 = ptrtoint ptr %callbacks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %callbacks, align 4
  %tobool15.not = icmp eq ptr %7, null
  br i1 %tobool15.not, label %land.lhs.true14.for.inc_crit_edge, label %if.then16

land.lhs.true14.for.inc_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  %call19 = tail call ptr %7(ptr noundef %skb, i64 noundef %features) #10
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true14.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %8 = ptrtoint ptr %.pn45 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load volatile ptr, ptr %.pn45, align 4
  %cmp.not = icmp eq ptr %.pn, @offload_base
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then16, %do.end.for.end_crit_edge
  %segs.0 = phi ptr [ %call19, %if.then16 ], [ inttoptr (i32 -93 to ptr), %do.end.for.end_crit_edge ], [ inttoptr (i32 -93 to ptr), %for.inc.for.end_crit_edge ]
  %call.i34 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i34, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i37

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i37:                                ; preds = %for.end
  %call1.i35 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i35)
  %tobool.not.i36 = icmp eq i32 %call1.i35, 0
  br i1 %tobool.not.i36, label %land.lhs.true.i37.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i39

land.lhs.true.i37.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i39:                               ; preds = %land.lhs.true.i37
  %.b4.i38 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i38, label %land.lhs.true2.i39.rcu_read_unlock.exit_crit_edge, label %if.then.i40

land.lhs.true2.i39.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i40:                                      ; preds = %land.lhs.true2.i39
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i40, %land.lhs.true2.i39.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i37.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  %9 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i.i.i.i.i41 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i41 to ptr
  %preempt_count.i.i.i.i42 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i42, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i42, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret ptr %segs.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @skb_mac_gso_segment(ptr noundef %skb, i64 noundef %features) #0 align 64 {
entry:
  %vlan_depth = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vlan_depth) #10
  %mac_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %0 = ptrtoint ptr %mac_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mac_len, align 4
  %conv = zext i16 %1 to i32
  %2 = ptrtoint ptr %vlan_depth to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %vlan_depth, align 4
  %call1 = call zeroext i16 @skb_network_protocol(ptr noundef %skb, ptr noundef nonnull %vlan_depth) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call1)
  %tobool.not = icmp eq i16 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !96

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %vlan_depth to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vlan_depth, align 4
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len1.i, align 4
  %sub.i = sub i32 %6, %4
  store i32 %sub.i, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %8)
  %cmp.i = icmp ult i32 %sub.i, %8
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !96

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #10, !srcloc !97
  unreachable

__skb_pull.exit:                                  ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %4
  store ptr %add.ptr.i, ptr %data.i, align 4
  %11 = call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %__skb_pull.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

__skb_pull.exit.rcu_read_lock.exit_crit_edge:     ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %__skb_pull.exit
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %__skb_pull.exit.rcu_read_lock.exit_crit_edge
  %call7 = call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call9 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true11

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b56 = load i1, ptr @skb_mac_gso_segment.__warned, align 1
  br i1 %.b56, label %land.lhs.true11.do.end_crit_edge, label %if.then13

land.lhs.true11.do.end_crit_edge:                 ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @skb_mac_gso_segment.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 139, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then13, %land.lhs.true11.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %.pn70 = load volatile ptr, ptr @offload_base, align 4
  %cmp.not71 = icmp eq ptr %.pn70, @offload_base
  br i1 %cmp.not71, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn72 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn70, %do.end.for.body_crit_edge ]
  %ptype.0 = getelementptr i8, ptr %.pn72, i32 -16
  %15 = ptrtoint ptr %ptype.0 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ptype.0, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %call1)
  %cmp23 = icmp eq i16 %16, %call1
  br i1 %cmp23, label %land.lhs.true25, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true25:                                  ; preds = %for.body
  %callbacks = getelementptr i8, ptr %.pn72, i32 -12
  %17 = ptrtoint ptr %callbacks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %callbacks, align 4
  %tobool26.not = icmp eq ptr %18, null
  br i1 %tobool26.not, label %land.lhs.true25.for.inc_crit_edge, label %if.then27

land.lhs.true25.for.inc_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  %call30 = call ptr %18(ptr noundef %skb, i64 noundef %features) #10
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true25.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %19 = ptrtoint ptr %.pn72 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load volatile ptr, ptr %.pn72, align 4
  %cmp.not = icmp eq ptr %.pn, @offload_base
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then27, %do.end.for.end_crit_edge
  %segs.0 = phi ptr [ %call30, %if.then27 ], [ inttoptr (i32 -93 to ptr), %do.end.for.end_crit_edge ], [ inttoptr (i32 -93 to ptr), %for.inc.for.end_crit_edge ]
  %call.i57 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i57, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i60

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i60:                                ; preds = %for.end
  %call1.i58 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i58)
  %tobool.not.i59 = icmp eq i32 %call1.i58, 0
  br i1 %tobool.not.i59, label %land.lhs.true.i60.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i62

land.lhs.true.i60.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i62:                               ; preds = %land.lhs.true.i60
  %.b4.i61 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i61, label %land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge, label %if.then.i63

land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i63:                                      ; preds = %land.lhs.true2.i62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i63, %land.lhs.true2.i62.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i60.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  %20 = call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i.i.i.i.i64 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i64 to ptr
  %preempt_count.i.i.i.i65 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i65 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i65, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i65, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %26 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %28 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %29 to i32
  %add.ptr.i66 = getelementptr i8, ptr %27, i32 %conv.i
  %sub.ptr.lhs.cast = ptrtoint ptr %25 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i66 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %idx.neg.i = sub i32 0, %sub.ptr.sub
  %add.ptr.i68 = getelementptr i8, ptr %25, i32 %idx.neg.i
  store ptr %add.ptr.i68, ptr %data.i, align 4
  %30 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len1.i, align 4
  %add.i = add i32 %sub.ptr.sub, %31
  store i32 %add.i, ptr %len1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %segs.0, %rcu_read_unlock.exit ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vlan_depth) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @skb_network_protocol(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @skb_gro_receive(ptr noundef %p, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %data_offset.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_offset.i, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %5, %7
  %sub.i256 = sub i32 %5, %3
  %8 = getelementptr inbounds %struct.anon, ptr %p, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %gro_max_size4 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 93
  %11 = ptrtoint ptr %gro_max_size4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %gro_max_size4, align 4
  %len5 = getelementptr inbounds %struct.sk_buff, ptr %p, i32 0, i32 6
  %13 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len5, align 4
  %add = add i32 %14, %sub.i256
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %12)
  %cmp.not = icmp ult i32 %add, %12
  br i1 %cmp.not, label %lor.rhs, label %entry.cleanup151_crit_edge, !prof !98

entry.cleanup151_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup151

lor.rhs:                                          ; preds = %entry
  %flush = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %15 = ptrtoint ptr %flush to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flush, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not = icmp eq i16 %16, 0
  br i1 %tobool.not, label %if.end, label %lor.rhs.cleanup151_crit_edge, !prof !98

lor.rhs.cleanup151_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup151

if.end:                                           ; preds = %lor.rhs
  %last = getelementptr inbounds %struct.sk_buff, ptr %p, i32 0, i32 3, i32 32
  %17 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %last, align 8
  %end.i257 = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 17
  %19 = ptrtoint ptr %end.i257 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i257, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sub.i)
  %cmp11.not = icmp ult i32 %3, %sub.i
  br i1 %cmp11.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %nr_frags, align 2
  %conv14 = zext i8 %22 to i32
  %nr_frags16 = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %nr_frags16 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %nr_frags16, align 2
  %conv17 = zext i8 %24 to i32
  %add18 = add nuw nsw i32 %conv17, %conv14
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %add18)
  %cmp19 = icmp ugt i32 %add18, 17
  br i1 %cmp19, label %if.then13.merge_crit_edge, label %if.end22

if.then13.merge_crit_edge:                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %merge

if.end22:                                         ; preds = %if.then13
  %conv23 = trunc i32 %add18 to i8
  %25 = ptrtoint ptr %nr_frags16 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv23, ptr %nr_frags16, align 2
  %26 = ptrtoint ptr %nr_frags to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %nr_frags, align 2
  %frags = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 12
  %add.ptr = getelementptr %struct.bio_vec, ptr %frags, i32 %add18
  %frags27 = getelementptr %struct.skb_shared_info, ptr %1, i32 0, i32 12
  %add.ptr29 = getelementptr %struct.bio_vec, ptr %frags27, i32 %conv14
  br label %do.body30

do.body30:                                        ; preds = %do.body30.do.body30_crit_edge, %if.end22
  %frag.0 = phi ptr [ %add.ptr, %if.end22 ], [ %incdec.ptr, %do.body30.do.body30_crit_edge ]
  %frag2.0 = phi ptr [ %add.ptr29, %if.end22 ], [ %incdec.ptr31, %do.body30.do.body30_crit_edge ]
  %i.0 = phi i32 [ %conv14, %if.end22 ], [ %dec, %do.body30.do.body30_crit_edge ]
  %incdec.ptr = getelementptr %struct.bio_vec, ptr %frag.0, i32 -1
  %incdec.ptr31 = getelementptr %struct.bio_vec, ptr %frag2.0, i32 -1
  %27 = call ptr @memcpy(ptr %incdec.ptr, ptr %incdec.ptr31, i32 12)
  %dec = add i32 %i.0, -1
  %tobool33.not = icmp eq i32 %dec, 0
  br i1 %tobool33.not, label %cleanup, label %do.body30.do.body30_crit_edge

do.body30.do.body30_crit_edge:                    ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body30

cleanup:                                          ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 %3, %sub.i
  %bv_offset.i = getelementptr %struct.bio_vec, ptr %frag.0, i32 -1, i32 2
  %28 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bv_offset.i, align 4
  %add.i = add i32 %29, %sub
  store i32 %add.i, ptr %bv_offset.i, align 4
  %bv_len.i = getelementptr %struct.bio_vec, ptr %frag.0, i32 -1, i32 1
  %30 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bv_len.i, align 4
  %sub.i258 = sub i32 %31, %sub
  store i32 %sub.i258, ptr %bv_len.i, align 4
  %32 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %end.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %34 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %33 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add37 = add i32 %sub.ptr.sub.i, 512
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %36 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %truesize, align 8
  %sub38 = sub i32 %37, %add37
  store i32 %add37, ptr %truesize, align 8
  %38 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_len.i, align 8
  %40 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len.i, align 4
  %sub41 = sub i32 %41, %39
  store i32 %sub41, ptr %len.i, align 4
  store i32 0, ptr %data_len.i, align 8
  %free = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %42 = ptrtoint ptr %free to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load = load i16, ptr %free, align 2
  %bf.clear = and i16 %bf.load, -769
  %bf.set = or i16 %bf.clear, 256
  store i16 %bf.set, ptr %free, align 2
  br label %done

if.else:                                          ; preds = %if.end
  %head_frag = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %43 = ptrtoint ptr %head_frag to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load48 = load i8, ptr %head_frag, align 2
  %44 = and i8 %bf.load48, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool50.not = icmp eq i8 %44, 0
  br i1 %tobool50.not, label %if.else.merge_crit_edge, label %if.then51

if.else.merge_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %merge

if.then51:                                        ; preds = %if.else
  %nr_frags53 = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 2
  %45 = ptrtoint ptr %nr_frags53 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %nr_frags53, align 2
  %conv54 = zext i8 %46 to i32
  %head = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %47 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %head, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %49 = load ptr, ptr @mem_map, align 4
  %50 = ptrtoint ptr %48 to i32
  %sub.i260 = add i32 %50, 1073741824
  %shr.i = lshr i32 %sub.i260, 12
  %51 = getelementptr %struct.page, ptr %49, i32 %shr.i, i32 1
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %51, align 4
  %and.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !98

if.then.i.i:                                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %53, -1
  br label %virt_to_head_page.exit

if.end.i.i:                                       ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr %struct.page, ptr %49, i32 %shr.i
  %54 = ptrtoint ptr %add.ptr.i to i32
  br label %virt_to_head_page.exit

virt_to_head_page.exit:                           ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %54, %if.end.i.i ]
  %add61 = add nuw nsw i32 %conv54, 1
  %nr_frags62 = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 2
  %55 = ptrtoint ptr %nr_frags62 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %nr_frags62, align 2
  %conv63 = zext i8 %56 to i32
  %add64 = add nuw nsw i32 %add61, %conv63
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %add64)
  %cmp65 = icmp ugt i32 %add64, 17
  br i1 %cmp65, label %virt_to_head_page.exit.merge_crit_edge, label %cleanup91

virt_to_head_page.exit.merge_crit_edge:           ; preds = %virt_to_head_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %merge

cleanup91:                                        ; preds = %virt_to_head_page.exit
  call void @__sanitizer_cov_trace_pc() #12
  %57 = inttoptr i32 %retval.0.i.i to ptr
  %sub60 = sub i32 %sub.i, %3
  %frags56 = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 12
  %add.ptr58 = getelementptr %struct.bio_vec, ptr %frags56, i32 %conv54
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data, align 4
  %call69 = tail call ptr @page_address(ptr noundef %57) #10
  %sub.ptr.lhs.cast = ptrtoint ptr %59 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call69 to i32
  %sub.ptr.sub = add i32 %3, %sub.ptr.lhs.cast
  %add70 = sub i32 %sub.ptr.sub, %sub.ptr.rhs.cast
  %60 = ptrtoint ptr %nr_frags62 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %nr_frags62, align 2
  %62 = trunc i32 %add61 to i8
  %conv75 = add i8 %61, %62
  %63 = ptrtoint ptr %nr_frags53 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv75, ptr %nr_frags53, align 2
  %64 = ptrtoint ptr %add.ptr58 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %57, ptr %add.ptr58, align 4
  %bv_offset.i261 = getelementptr %struct.bio_vec, ptr %frags56, i32 %conv54, i32 2
  %65 = ptrtoint ptr %bv_offset.i261 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add70, ptr %bv_offset.i261, align 4
  %bv_len.i262 = getelementptr %struct.bio_vec, ptr %frags56, i32 %conv54, i32 1
  %66 = ptrtoint ptr %bv_len.i262 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %sub60, ptr %bv_len.i262, align 4
  %add.ptr77 = getelementptr %struct.bio_vec, ptr %add.ptr58, i32 1
  %frags78 = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 12
  %67 = load i8, ptr %nr_frags62, align 2
  %conv81 = zext i8 %67 to i32
  %mul = mul nuw nsw i32 %conv81, 12
  %68 = call ptr @memcpy(ptr %add.ptr77, ptr %frags78, i32 %mul)
  %truesize82 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %69 = ptrtoint ptr %truesize82 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %truesize82, align 8
  %sub83 = add i32 %70, -256
  store i32 256, ptr %truesize82, align 8
  %free87 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %71 = ptrtoint ptr %free87 to i32
  call void @__asan_load2_noabort(i32 %71)
  %bf.load88 = load i16, ptr %free87, align 2
  %bf.clear89 = and i16 %bf.load88, -769
  %bf.set90 = or i16 %bf.clear89, 512
  store i16 %bf.set90, ptr %free87, align 2
  br label %done

merge:                                            ; preds = %virt_to_head_page.exit.merge_crit_edge, %if.else.merge_crit_edge, %if.then13.merge_crit_edge
  %destructor = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %72 = ptrtoint ptr %destructor to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %destructor, align 4
  %truesize99 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %73 = ptrtoint ptr %truesize99 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %truesize99, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sub.i)
  %cmp100 = icmp ugt i32 %3, %sub.i
  br i1 %cmp100, label %if.then102, label %merge.if.end111_crit_edge

merge.if.end111_crit_edge:                        ; preds = %merge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end111

if.then102:                                       ; preds = %merge
  call void @__sanitizer_cov_trace_pc() #12
  %sub103 = sub i32 %3, %sub.i
  %bv_offset.i263 = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 0, i32 2
  %75 = ptrtoint ptr %bv_offset.i263 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bv_offset.i263, align 4
  %add.i264 = add i32 %76, %sub103
  store i32 %add.i264, ptr %bv_offset.i263, align 4
  %bv_len.i265 = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 12, i32 0, i32 1
  %77 = ptrtoint ptr %bv_len.i265 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bv_len.i265, align 4
  %sub.i266 = sub i32 %78, %sub103
  store i32 %sub.i266, ptr %bv_len.i265, align 4
  %79 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %data_len.i, align 8
  %sub108 = sub i32 %80, %sub103
  store i32 %sub108, ptr %data_len.i, align 8
  %81 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %len.i, align 4
  %sub110 = sub i32 %82, %sub103
  store i32 %sub110, ptr %len.i, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then102, %merge.if.end111_crit_edge
  %offset.2 = phi i32 [ %sub.i, %if.then102 ], [ %3, %merge.if.end111_crit_edge ]
  %83 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len.i, align 4
  %sub.i267 = sub i32 %84, %offset.2
  store i32 %sub.i267, ptr %len.i, align 4
  %85 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i267, i32 %86)
  %cmp.i = icmp ult i32 %sub.i267, %86
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !96

do.body4.i:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #10, !srcloc !97
  unreachable

__skb_pull.exit:                                  ; preds = %if.end111
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %87 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data.i, align 4
  %add.ptr.i269 = getelementptr i8, ptr %88, i32 %offset.2
  store ptr %add.ptr.i269, ptr %data.i, align 4
  %89 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %last, align 8
  %cmp116 = icmp eq ptr %90, %p
  br i1 %cmp116, label %if.then118, label %__skb_pull.exit.if.end124_crit_edge

__skb_pull.exit.if.end124_crit_edge:              ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end124

if.then118:                                       ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  %end.i270 = getelementptr inbounds %struct.sk_buff, ptr %p, i32 0, i32 17
  %91 = ptrtoint ptr %end.i270 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %end.i270, align 4
  %frag_list = getelementptr inbounds %struct.skb_shared_info, ptr %92, i32 0, i32 6
  br label %if.end124

if.end124:                                        ; preds = %if.then118, %__skb_pull.exit.if.end124_crit_edge
  %.sink = phi ptr [ %frag_list, %if.then118 ], [ %90, %__skb_pull.exit.if.end124_crit_edge ]
  %93 = ptrtoint ptr %.sink to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %skb, ptr %.sink, align 8
  %94 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %skb, ptr %last, align 8
  %nohdr.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %95 = ptrtoint ptr %nohdr.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %bf.load.i = load i8, ptr %nohdr.i, align 2
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %nohdr.i, align 2
  %96 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %end.i, align 4
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %97, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dataref.i, i32 noundef 4) #10
  %98 = ptrtoint ptr %dataref.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile i32 65537, ptr %dataref.i, align 4
  br label %done

done:                                             ; preds = %if.end124, %cleanup91, %cleanup
  %delta_truesize.2 = phi i32 [ %sub38, %cleanup ], [ %74, %if.end124 ], [ %sub83, %cleanup91 ]
  %lp.0 = phi ptr [ %18, %cleanup ], [ %p, %if.end124 ], [ %18, %cleanup91 ]
  %count = getelementptr inbounds %struct.sk_buff, ptr %p, i32 0, i32 3, i32 16
  %99 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %count, align 8
  %inc = add i16 %100, 1
  store i16 %inc, ptr %count, align 8
  %data_len130 = getelementptr inbounds %struct.sk_buff, ptr %p, i32 0, i32 7
  %101 = ptrtoint ptr %data_len130 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %data_len130, align 8
  %add131 = add i32 %102, %sub.i256
  store i32 %add131, ptr %data_len130, align 8
  %truesize132 = getelementptr inbounds %struct.sk_buff, ptr %p, i32 0, i32 20
  %103 = ptrtoint ptr %truesize132 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %truesize132, align 8
  %add133 = add i32 %104, %delta_truesize.2
  store i32 %add133, ptr %truesize132, align 8
  %105 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %len5, align 4
  %add135 = add i32 %106, %sub.i256
  store i32 %add135, ptr %len5, align 4
  %cmp136.not = icmp eq ptr %lp.0, %p
  br i1 %cmp136.not, label %done.if.end145_crit_edge, label %if.then138

done.if.end145_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end145

if.then138:                                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  %data_len139 = getelementptr inbounds %struct.sk_buff, ptr %lp.0, i32 0, i32 7
  %107 = ptrtoint ptr %data_len139 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %data_len139, align 8
  %add140 = add i32 %108, %sub.i256
  store i32 %add140, ptr %data_len139, align 8
  %truesize141 = getelementptr inbounds %struct.sk_buff, ptr %lp.0, i32 0, i32 20
  %109 = ptrtoint ptr %truesize141 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %truesize141, align 8
  %add142 = add i32 %110, %delta_truesize.2
  store i32 %add142, ptr %truesize141, align 8
  %len143 = getelementptr inbounds %struct.sk_buff, ptr %lp.0, i32 0, i32 6
  %111 = ptrtoint ptr %len143 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %len143, align 4
  %add144 = add i32 %112, %sub.i256
  store i32 %add144, ptr %len143, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.then138, %done.if.end145_crit_edge
  %same_flow = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %113 = ptrtoint ptr %same_flow to i32
  call void @__asan_load2_noabort(i32 %113)
  %bf.load148 = load i16, ptr %same_flow, align 2
  %bf.set150 = or i16 %bf.load148, -32768
  store i16 %bf.set150, ptr %same_flow, align 2
  br label %cleanup151

cleanup151:                                       ; preds = %if.end145, %lor.rhs.cleanup151_crit_edge, %entry.cleanup151_crit_edge
  %retval.0 = phi i32 [ 0, %if.end145 ], [ -7, %lor.rhs.cleanup151_crit_edge ], [ -7, %entry.cleanup151_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @napi_gro_flush(ptr noundef %napi, i1 noundef zeroext %flush_old) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %gro_bitmask = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 4
  %0 = ptrtoint ptr %gro_bitmask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gro_bitmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %iszero5 = icmp eq i32 %1, 0
  br i1 %iszero5, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %__napi_gro_flush_chain.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %base.07 = phi i32 [ %add, %__napi_gro_flush_chain.exit.while.body_crit_edge ], [ -1, %entry.while.body_crit_edge ]
  %bitmask.06 = phi i32 [ %shr, %__napi_gro_flush_chain.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %2 = tail call i32 @llvm.cttz.i32(i32 %bitmask.06, i1 true), !range !99
  %3 = add nuw nsw i32 %2, 1
  %shr = lshr i32 %bitmask.06, %3
  %add = add i32 %3, %base.07
  %arrayidx.i = getelementptr %struct.napi_struct, ptr %napi, i32 0, i32 8, i32 %add
  %prev.i = getelementptr inbounds %struct.list_head, ptr %arrayidx.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %cmp.not35.i = icmp eq ptr %5, %arrayidx.i
  br i1 %cmp.not35.i, label %while.body.for.end.i_crit_edge, label %for.body.lr.ph.i

while.body.for.end.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %while.body
  %count.i = getelementptr %struct.napi_struct, ptr %napi, i32 0, i32 8, i32 %add, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %skb_list_del_init.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %skb.036.i = phi ptr [ %5, %for.body.lr.ph.i ], [ %p.039.i, %skb_list_del_init.exit.i.for.body.i_crit_edge ]
  %p.0.in38.i = getelementptr inbounds %struct.list_head, ptr %skb.036.i, i32 0, i32 1
  %6 = ptrtoint ptr %p.0.in38.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %p.039.i = load ptr, ptr %p.0.in38.i, align 4
  br i1 %flush_old, label %land.lhs.true.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %age.i = getelementptr inbounds %struct.sk_buff, ptr %skb.036.i, i32 0, i32 3, i32 20
  %7 = ptrtoint ptr %age.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %age.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %9)
  %cmp5.i = icmp eq i32 %8, %9
  br i1 %cmp5.i, label %land.lhs.true.i.__napi_gro_flush_chain.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i.__napi_gro_flush_chain.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__napi_gro_flush_chain.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %skb.036.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.skb_list_del_init.exit.i_crit_edge

if.end.i.skb_list_del_init.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %p.0.in38.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p.0.in38.i, align 4
  %12 = ptrtoint ptr %skb.036.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skb.036.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %skb_list_del_init.exit.i

skb_list_del_init.exit.i:                         ; preds = %if.end.i.i.i, %if.end.i.skb_list_del_init.exit.i_crit_edge
  %16 = ptrtoint ptr %skb.036.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %skb.036.i, align 8
  tail call fastcc void @napi_gro_complete(ptr noundef %napi, ptr noundef %skb.036.i) #10
  %17 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %18, -1
  store i32 %dec.i, ptr %count.i, align 4
  %cmp.not.i = icmp eq ptr %p.039.i, %arrayidx.i
  br i1 %cmp.not.i, label %skb_list_del_init.exit.i.for.end.i_crit_edge, label %skb_list_del_init.exit.i.for.body.i_crit_edge

skb_list_del_init.exit.i.for.body.i_crit_edge:    ; preds = %skb_list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

skb_list_del_init.exit.i.for.end.i_crit_edge:     ; preds = %skb_list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %skb_list_del_init.exit.i.for.end.i_crit_edge, %while.body.for.end.i_crit_edge
  %count14.i = getelementptr %struct.napi_struct, ptr %napi, i32 0, i32 8, i32 %add, i32 1
  %19 = ptrtoint ptr %count14.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %count14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool15.not.i = icmp eq i32 %20, 0
  br i1 %tobool15.not.i, label %if.then16.i, label %for.end.i.__napi_gro_flush_chain.exit_crit_edge

for.end.i.__napi_gro_flush_chain.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__napi_gro_flush_chain.exit

if.then16.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %rem.i.i = and i32 %add, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %add, 5
  %add.ptr.i.i = getelementptr i32, ptr %gro_bitmask, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %22, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  br label %__napi_gro_flush_chain.exit

__napi_gro_flush_chain.exit:                      ; preds = %if.then16.i, %for.end.i.__napi_gro_flush_chain.exit_crit_edge, %land.lhs.true.i.__napi_gro_flush_chain.exit_crit_edge
  %iszero = icmp eq i32 %shr, 0
  br i1 %iszero, label %__napi_gro_flush_chain.exit.while.end_crit_edge, label %__napi_gro_flush_chain.exit.while.body_crit_edge

__napi_gro_flush_chain.exit.while.body_crit_edge: ; preds = %__napi_gro_flush_chain.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

__napi_gro_flush_chain.exit.while.end_crit_edge:  ; preds = %__napi_gro_flush_chain.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %__napi_gro_flush_chain.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gro_find_receive_by_type(i16 noundef zeroext %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b31 = load i1, ptr @gro_find_receive_by_type.__warned, align 1
  br i1 %.b31, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @gro_find_receive_by_type.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 578, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %.pn32 = load volatile ptr, ptr @offload_base, align 4
  %cmp.not34 = icmp eq ptr %.pn32, @offload_base
  br i1 %cmp.not34, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn35 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn32, %do.end.for.body_crit_edge ]
  %ptype.036 = getelementptr i8, ptr %.pn35, i32 -16
  %0 = ptrtoint ptr %ptype.036 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ptype.036, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %type)
  %cmp11.not = icmp eq i16 %1, %type
  br i1 %cmp11.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %gro_receive = getelementptr i8, ptr %.pn35, i32 -8
  %2 = ptrtoint ptr %gro_receive to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gro_receive, align 4
  %tobool13.not = icmp eq ptr %3, null
  br i1 %tobool13.not, label %lor.lhs.false.for.inc_crit_edge, label %cleanup.loopexit.split.loop.exit38

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %4 = ptrtoint ptr %.pn35 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load volatile ptr, ptr %.pn35, align 4
  %cmp.not = icmp eq ptr %.pn, @offload_base
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.loopexit.split.loop.exit38:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %ptype.036.le = getelementptr i8, ptr %.pn35, i32 -16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit38, %for.inc.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end.cleanup_crit_edge ], [ %ptype.036.le, %cleanup.loopexit.split.loop.exit38 ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gro_find_complete_by_type(i16 noundef zeroext %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b31 = load i1, ptr @gro_find_complete_by_type.__warned, align 1
  br i1 %.b31, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @gro_find_complete_by_type.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 592, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %.pn32 = load volatile ptr, ptr @offload_base, align 4
  %cmp.not34 = icmp eq ptr %.pn32, @offload_base
  br i1 %cmp.not34, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn35 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn32, %do.end.for.body_crit_edge ]
  %ptype.036 = getelementptr i8, ptr %.pn35, i32 -16
  %0 = ptrtoint ptr %ptype.036 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ptype.036, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %type)
  %cmp11.not = icmp eq i16 %1, %type
  br i1 %cmp11.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %gro_complete = getelementptr i8, ptr %.pn35, i32 -4
  %2 = ptrtoint ptr %gro_complete to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gro_complete, align 4
  %tobool13.not = icmp eq ptr %3, null
  br i1 %tobool13.not, label %lor.lhs.false.for.inc_crit_edge, label %cleanup.loopexit.split.loop.exit38

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %4 = ptrtoint ptr %.pn35 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load volatile ptr, ptr %.pn35, align 4
  %cmp.not = icmp eq ptr %.pn, @offload_base
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.loopexit.split.loop.exit38:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %ptype.036.le = getelementptr i8, ptr %.pn35, i32 -16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit38, %for.inc.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end.cleanup_crit_edge ], [ %ptype.036.le, %cleanup.loopexit.split.loop.exit38 ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @napi_gro_receive(ptr noundef %napi, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 11
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %2)
  %cmp.i = icmp ult i32 %2, 5
  br i1 %cmp.i, label %if.then.i, label %entry.skb_mark_napi_id.exit_crit_edge

entry.skb_mark_napi_id.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_mark_napi_id.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %napi_id.i = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 15
  %3 = ptrtoint ptr %napi_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %napi_id.i, align 8
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %0, align 4
  br label %skb_mark_napi_id.exit

skb_mark_napi_id.exit:                            ; preds = %if.then.i, %entry.skb_mark_napi_id.exit_crit_edge
  tail call fastcc void @trace_napi_gro_receive_entry(ptr noundef %skb)
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %6 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i.i, align 4
  %frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 12
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %data_offset.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %data_offset.i, align 8
  %9 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %cb.i, align 8
  %frag0_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %10 = ptrtoint ptr %frag0_len.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %frag0_len.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %13 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %tobool.not.i = icmp eq i32 %12, %14
  br i1 %tobool.not.i, label %land.lhs.true.i, label %skb_mark_napi_id.exit.skb_gro_reset_offset.exit_crit_edge

skb_mark_napi_id.exit.skb_gro_reset_offset.exit_crit_edge: ; preds = %skb_mark_napi_id.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_gro_reset_offset.exit

land.lhs.true.i:                                  ; preds = %skb_mark_napi_id.exit
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 2
  %15 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %nr_frags.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool7.not.i = icmp eq i8 %16, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.skb_gro_reset_offset.exit_crit_edge, label %land.lhs.true8.i

land.lhs.true.i.skb_gro_reset_offset.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_gro_reset_offset.exit

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %17 = ptrtoint ptr %frags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %frags.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %shr.i.i = lshr i32 %20, 30
  %21 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %land.lhs.true8.i.land.lhs.true13.i_crit_edge [
    i32 2, label %land.lhs.true8.i.skb_gro_reset_offset.exit_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

land.lhs.true8.i.skb_gro_reset_offset.exit_crit_edge: ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_gro_reset_offset.exit

land.lhs.true8.i.land.lhs.true13.i_crit_edge:     ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true13.i

is_highmem_idx.exit.i:                            ; preds = %land.lhs.true8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %22 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp2.i.not.i = icmp eq i32 %22, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.skb_gro_reset_offset.exit_crit_edge, label %is_highmem_idx.exit.i.land.lhs.true13.i_crit_edge

is_highmem_idx.exit.i.land.lhs.true13.i_crit_edge: ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true13.i

is_highmem_idx.exit.i.skb_gro_reset_offset.exit_crit_edge: ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_gro_reset_offset.exit

land.lhs.true13.i:                                ; preds = %is_highmem_idx.exit.i.land.lhs.true13.i_crit_edge, %land.lhs.true8.i.land.lhs.true13.i_crit_edge
  %bv_offset.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 12, i32 0, i32 2
  %23 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bv_offset.i.i, align 4
  %and.i = and i32 %24, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool15.not.i, label %if.then.i9, label %land.lhs.true13.i.skb_gro_reset_offset.exit_crit_edge

land.lhs.true13.i.skb_gro_reset_offset.exit_crit_edge: ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_gro_reset_offset.exit

if.then.i9:                                       ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i.i = tail call ptr @page_address(ptr noundef %18) #10
  %25 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bv_offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %26
  %27 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr.i.i, ptr %cb.i, align 8
  %bv_len.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 12, i32 0, i32 1
  %28 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bv_len.i.i, align 4
  %30 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %end.i.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %32 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %34 = tail call i32 @llvm.umin.i32(i32 %29, i32 %sub.ptr.sub.i) #10
  %35 = ptrtoint ptr %frag0_len.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %frag0_len.i, align 4
  br label %skb_gro_reset_offset.exit

skb_gro_reset_offset.exit:                        ; preds = %if.then.i9, %land.lhs.true13.i.skb_gro_reset_offset.exit_crit_edge, %is_highmem_idx.exit.i.skb_gro_reset_offset.exit_crit_edge, %land.lhs.true8.i.skb_gro_reset_offset.exit_crit_edge, %land.lhs.true.i.skb_gro_reset_offset.exit_crit_edge, %skb_mark_napi_id.exit.skb_gro_reset_offset.exit_crit_edge
  %call = tail call fastcc i32 @dev_gro_receive(ptr noundef %napi, ptr noundef %skb), !range !100
  %36 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %call, label %skb_gro_reset_offset.exit.napi_skb_finish.exit_crit_edge [
    i32 3, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

skb_gro_reset_offset.exit.napi_skb_finish.exit_crit_edge: ; preds = %skb_gro_reset_offset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %napi_skb_finish.exit

sw.bb.i:                                          ; preds = %skb_gro_reset_offset.exit
  %rx_list.i.i = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 10
  %prev.i.i.i = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 10, i32 1
  %37 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %skb, ptr noundef %38, ptr noundef %rx_list.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %sw.bb.i.list_add_tail.exit.i.i_crit_edge

sw.bb.i.list_add_tail.exit.i.i_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %skb, ptr %prev.i.i.i, align 4
  %40 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %rx_list.i.i, ptr %skb, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %skb, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %skb, ptr %38, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %sw.bb.i.list_add_tail.exit.i.i_crit_edge
  %rx_count.i.i = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 11
  %43 = ptrtoint ptr %rx_count.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rx_count.i.i, align 8
  %add.i.i = add i32 %44, 1
  store i32 %add.i.i, ptr %rx_count.i.i, align 8
  %45 = load i32, ptr @gro_normal_batch, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %45)
  %cmp.not.i.i = icmp slt i32 %add.i.i, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i)
  %tobool.not.i.i.i = icmp eq i32 %add.i.i, 0
  %or.cond.i.i = or i1 %tobool.not.i.i.i, %cmp.not.i.i
  br i1 %or.cond.i.i, label %list_add_tail.exit.i.i.napi_skb_finish.exit_crit_edge, label %if.end.i.i.i

list_add_tail.exit.i.i.napi_skb_finish.exit_crit_edge: ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %napi_skb_finish.exit

if.end.i.i.i:                                     ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @netif_receive_skb_list_internal(ptr noundef %rx_list.i.i) #10
  %46 = ptrtoint ptr %rx_list.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %rx_list.i.i, ptr %rx_list.i.i, align 4
  %47 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %rx_list.i.i, ptr %prev.i.i.i, align 4
  %48 = ptrtoint ptr %rx_count.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %rx_count.i.i, align 8
  br label %napi_skb_finish.exit

sw.bb1.i:                                         ; preds = %skb_gro_reset_offset.exit
  %free.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %49 = ptrtoint ptr %free.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load.i = load i16, ptr %free.i, align 2
  %50 = and i16 %bf.load.i, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %50)
  %cmp.i10 = icmp eq i16 %50, 512
  br i1 %cmp.i10, label %if.then.i11, label %if.else.i

if.then.i11:                                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @napi_skb_free_stolen_head(ptr noundef %skb) #10
  br label %napi_skb_finish.exit

if.else.i:                                        ; preds = %sw.bb1.i
  %fclone.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %51 = ptrtoint ptr %fclone.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load3.i = load i8, ptr %fclone.i, align 2
  %52 = and i8 %bf.load3.i, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp7.not.i = icmp eq i8 %52, 0
  br i1 %cmp7.not.i, label %if.else10.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__kfree_skb(ptr noundef %skb) #10
  br label %napi_skb_finish.exit

if.else10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__kfree_skb_defer(ptr noundef %skb) #10
  br label %napi_skb_finish.exit

napi_skb_finish.exit:                             ; preds = %if.else10.i, %if.then9.i, %if.then.i11, %if.end.i.i.i, %list_add_tail.exit.i.i.napi_skb_finish.exit_crit_edge, %skb_gro_reset_offset.exit.napi_skb_finish.exit_crit_edge
  tail call fastcc void @trace_napi_gro_receive_exit(i32 noundef %call)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_napi_gro_receive_entry(ptr noundef %skb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_napi_gro_receive_entry, i32 0, i32 1), ptr blockaddress(@trace_napi_gro_receive_entry, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !101

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !98

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !102
  %call42 = tail call i32 @__traceiter_napi_gro_receive_entry(ptr noundef null, ptr noundef %skb) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !103
  %13 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !98

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_napi_gro_receive_entry, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_napi_gro_receive_entry, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_napi_gro_receive_entry.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_napi_gro_receive_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 240, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !105
  %31 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dev_gro_receive(ptr noundef %napi, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hash.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 8
  %0 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hash.i, align 4
  %and = and i32 %1, 7
  %arrayidx = getelementptr %struct.napi_struct, ptr %napi, i32 0, i32 8, i32 %and
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %2 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol, align 8
  %4 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %features.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 23
  %7 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %features.i, align 16
  %and.i270 = and i64 %8, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i270)
  %tobool.not.i271 = icmp eq i64 %and.i270, 0
  br i1 %tobool.not.i271, label %entry.pull_crit_edge, label %netif_elide_gro.exit

entry.pull_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pull

netif_elide_gro.exit:                             ; preds = %entry
  %xdp_prog.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 90
  %9 = ptrtoint ptr %xdp_prog.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xdp_prog.i, align 16
  %tobool1.not.i.not = icmp eq ptr %10, null
  br i1 %tobool1.not.i.not, label %if.end, label %netif_elide_gro.exit.pull_crit_edge

netif_elide_gro.exit.pull_crit_edge:              ; preds = %netif_elide_gro.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %pull

if.end:                                           ; preds = %netif_elide_gro.exit
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 19
  %11 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hard_header_len.i, align 2
  %conv.i = zext i16 %12 to i32
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %p.0207.i = load ptr, ptr %arrayidx, align 4
  %cmp.not208.i = icmp eq ptr %p.0207.i, %arrayidx
  br i1 %cmp.not208.i, label %if.end.gro_list_prepare.exit_crit_edge, label %for.body.lr.ph.i

if.end.gro_list_prepare.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %gro_list_prepare.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %vlan_present9.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %vlan_tci21.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %end.i.i16.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %head.i.i9.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %mac_header.i.i10.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %12)
  %cmp29.i = icmp eq i16 %12, 14
  %14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %_nfct.i178.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %p.0209.i = phi ptr [ %p.0207.i, %for.body.lr.ph.i ], [ %p.0.i, %cleanup.i.for.body.i_crit_edge ]
  %flush.i = getelementptr inbounds %struct.sk_buff, ptr %p.0209.i, i32 0, i32 3, i32 12
  %15 = ptrtoint ptr %flush.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flush.i, align 4
  %hash.i164.i = getelementptr inbounds %struct.sk_buff, ptr %p.0209.i, i32 0, i32 15, i32 0, i32 8
  %16 = ptrtoint ptr %hash.i164.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hash.i164.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %17)
  %cmp3.not.i = icmp eq i32 %1, %17
  br i1 %cmp3.not.i, label %if.end.i, label %if.then.i272

if.then.i272:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %same_flow.i = getelementptr inbounds %struct.sk_buff, ptr %p.0209.i, i32 0, i32 3, i32 26
  %18 = ptrtoint ptr %same_flow.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load.i = load i16, ptr %same_flow.i, align 2
  %bf.clear.i = and i16 %bf.load.i, 32767
  store i16 %bf.clear.i, ptr %same_flow.i, align 2
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %19 = getelementptr inbounds %struct.anon, ptr %p.0209.i, i32 0, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %22 = ptrtoint ptr %21 to i32
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %4, align 8
  %25 = ptrtoint ptr %24 to i32
  %xor.i = xor i32 %25, %22
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %p.0209.i, i32 0, i32 15, i32 0, i32 3
  %26 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %bf.load7.i = load i32, ptr %vlan_present.i, align 2
  %27 = ptrtoint ptr %vlan_present9.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %bf.load10.i = load i32, ptr %vlan_present9.i, align 2
  %bf.lshr163.i = xor i32 %bf.load10.i, %bf.load7.i
  %xor14.i = lshr i32 %bf.lshr163.i, 31
  %or.i273 = or i32 %xor14.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load7.i)
  %tobool.not.i274 = icmp sgt i32 %bf.load7.i, -1
  br i1 %tobool.not.i274, label %if.end.i.if.end25.i_crit_edge, label %if.then19.i

if.end.i.if.end25.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %vlan_tci.i = getelementptr inbounds %struct.sk_buff, ptr %p.0209.i, i32 0, i32 15, i32 0, i32 10
  %28 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vlan_tci.i, align 2
  %30 = ptrtoint ptr %vlan_tci21.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vlan_tci21.i, align 2
  %xor23162.i = xor i16 %31, %29
  %xor23.i = zext i16 %xor23162.i to i32
  %or24.i = or i32 %or.i273, %xor23.i
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then19.i, %if.end.i.if.end25.i_crit_edge
  %diffs.0.i = phi i32 [ %or24.i, %if.then19.i ], [ %or.i273, %if.end.i.if.end25.i_crit_edge ]
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %p.0209.i, i32 0, i32 17
  %32 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %end.i.i.i.i, align 4
  %meta_len.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %meta_len.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %meta_len.i.i.i, align 1
  %36 = ptrtoint ptr %end.i.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %end.i.i16.i.i, align 4
  %meta_len.i17.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %meta_len.i17.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %meta_len.i17.i.i, align 1
  %or15.i.i = or i8 %39, %35
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or15.i.i)
  %tobool.not.i.i = icmp eq i8 %or15.i.i, 0
  br i1 %tobool.not.i.i, label %if.end25.i.skb_metadata_differs.exit.i_crit_edge, label %if.end.i.i

if.end25.i.skb_metadata_differs.exit.i_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_metadata_differs.exit.i

if.end.i.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %39)
  %cmp.not.i.i = icmp eq i8 %35, %39
  br i1 %cmp.not.i.i, label %cond.false.i.i, label %if.end.i.i.skb_metadata_differs.exit.i_crit_edge

if.end.i.i.skb_metadata_differs.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_metadata_differs.exit.i

cond.false.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %head.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %p.0209.i, i32 0, i32 18
  %40 = ptrtoint ptr %head.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i.i.i.i.i, align 8
  %mac_header.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %p.0209.i, i32 0, i32 15, i32 0, i32 21
  %42 = ptrtoint ptr %mac_header.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %mac_header.i.i.i.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %43 to i32
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %41, i32 %conv.i.i.i.i.i
  %44 = ptrtoint ptr %head.i.i9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %head.i.i9.i.i.i, align 8
  %46 = ptrtoint ptr %mac_header.i.i10.i.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %mac_header.i.i10.i.i.i, align 2
  %conv.i.i11.i.i.i = zext i16 %47 to i32
  %add.ptr.i.i12.i.i.i = getelementptr i8, ptr %45, i32 %conv.i.i11.i.i.i
  %conv.i.i.i = zext i8 %35 to i32
  %idx.neg.i.i.i = sub nsw i32 0, %conv.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i.i, i32 %idx.neg.i.i.i
  %add.ptr4.i.i.i = getelementptr i8, ptr %add.ptr.i.i12.i.i.i, i32 %idx.neg.i.i.i
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %add.ptr.i.i.i, ptr %add.ptr4.i.i.i, i32 %conv.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool.i.i.i = icmp ne i32 %bcmp.i.i.i, 0
  br label %skb_metadata_differs.exit.i

skb_metadata_differs.exit.i:                      ; preds = %cond.false.i.i, %if.end.i.i.skb_metadata_differs.exit.i_crit_edge, %if.end25.i.skb_metadata_differs.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ false, %if.end25.i.skb_metadata_differs.exit.i_crit_edge ], [ %tobool.i.i.i, %cond.false.i.i ], [ true, %if.end.i.i.skb_metadata_differs.exit.i_crit_edge ]
  %conv27.i = zext i1 %retval.0.i.i to i32
  %or28.i = or i32 %diffs.0.i, %conv27.i
  br i1 %cmp29.i, label %if.then31.i, label %if.else.i

if.then31.i:                                      ; preds = %skb_metadata_differs.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %p.0209.i, i32 0, i32 18
  %48 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %p.0209.i, i32 0, i32 15, i32 0, i32 21
  %50 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %51 to i32
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 %conv.i.i
  %52 = ptrtoint ptr %head.i.i9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %head.i.i9.i.i.i, align 8
  %54 = ptrtoint ptr %mac_header.i.i10.i.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %mac_header.i.i10.i.i.i, align 2
  %conv.i167.i = zext i16 %55 to i32
  %add.ptr.i168.i = getelementptr i8, ptr %53, i32 %conv.i167.i
  %add.ptr.i169.i = getelementptr i8, ptr %add.ptr.i.i, i32 2
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i168.i, i32 2
  %56 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %add.ptr.i.i, align 2
  %58 = ptrtoint ptr %add.ptr.i168.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr.i168.i, align 2
  %xor19.i.i = xor i16 %59, %57
  %xor.i.i = zext i16 %xor19.i.i to i32
  %60 = ptrtoint ptr %add.ptr.i169.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr.i169.i, align 4
  %62 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr1.i.i, align 4
  %xor4.i.i = xor i32 %63, %61
  %arrayidx5.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 6
  %64 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx5.i.i, align 4
  %arrayidx6.i.i = getelementptr i8, ptr %add.ptr.i168.i, i32 6
  %66 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx6.i.i, align 4
  %xor7.i.i = xor i32 %67, %65
  %arrayidx9.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 10
  %68 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx9.i.i, align 4
  %arrayidx10.i.i = getelementptr i8, ptr %add.ptr.i168.i, i32 10
  %70 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx10.i.i, align 4
  %xor11.i.i = xor i32 %71, %69
  %or.i.i = or i32 %or28.i, %xor.i.i
  %or8.i.i = or i32 %or.i.i, %xor4.i.i
  %or12.i.i = or i32 %or8.i.i, %xor7.i.i
  %or35.i = or i32 %or12.i.i, %xor11.i.i
  br label %if.end42.i

if.else.i:                                        ; preds = %skb_metadata_differs.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or28.i)
  %tobool36.not.i = icmp eq i32 %or28.i, 0
  br i1 %tobool36.not.i, label %if.then37.i, label %if.else.i.if.end98.thread.i_crit_edge

if.else.i.if.end98.thread.i_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98.thread.i

if.then37.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %head.i170.i = getelementptr inbounds %struct.sk_buff, ptr %p.0209.i, i32 0, i32 18
  %72 = ptrtoint ptr %head.i170.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %head.i170.i, align 8
  %mac_header.i171.i = getelementptr inbounds %struct.sk_buff, ptr %p.0209.i, i32 0, i32 15, i32 0, i32 21
  %74 = ptrtoint ptr %mac_header.i171.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %mac_header.i171.i, align 2
  %conv.i172.i = zext i16 %75 to i32
  %add.ptr.i173.i = getelementptr i8, ptr %73, i32 %conv.i172.i
  %76 = ptrtoint ptr %head.i.i9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %head.i.i9.i.i.i, align 8
  %78 = ptrtoint ptr %mac_header.i.i10.i.i.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %mac_header.i.i10.i.i.i, align 2
  %conv.i176.i = zext i16 %79 to i32
  %add.ptr.i177.i = getelementptr i8, ptr %77, i32 %conv.i176.i
  %call40.i = tail call i32 @memcmp(ptr noundef %add.ptr.i173.i, ptr noundef %add.ptr.i177.i, i32 noundef %conv.i) #14
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then37.i, %if.then31.i
  %diffs.1.i = phi i32 [ %or35.i, %if.then31.i ], [ %call40.i, %if.then37.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %diffs.1.i)
  %tobool43.not.i = icmp eq i32 %diffs.1.i, 0
  br i1 %tobool43.not.i, label %land.lhs.true.i275, label %if.end42.i.if.end98.thread.i_crit_edge

if.end42.i.if.end98.thread.i_crit_edge:           ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98.thread.i

land.lhs.true.i275:                               ; preds = %if.end42.i
  %bf.lshr45160.i = or i32 %bf.load10.i, %bf.load7.i
  %80 = and i32 %bf.lshr45160.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool56.not.i = icmp eq i32 %80, 0
  br i1 %tobool56.not.i, label %if.end98.thread200.i, label %if.then60.i, !prof !98

if.end98.thread200.i:                             ; preds = %land.lhs.true.i275
  call void @__sanitizer_cov_trace_pc() #12
  %same_flow105203.i = getelementptr inbounds %struct.sk_buff, ptr %p.0209.i, i32 0, i32 3, i32 26
  %81 = ptrtoint ptr %same_flow105203.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %bf.load106204.i = load i16, ptr %same_flow105203.i, align 2
  br label %111

if.then60.i:                                      ; preds = %land.lhs.true.i275
  %82 = getelementptr inbounds %struct.sk_buff, ptr %p.0209.i, i32 0, i32 1
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %85 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %14, align 4
  %cmp61.i = icmp ne ptr %84, %86
  %conv62.i = zext i1 %cmp61.i to i32
  %call64.i = tail call fastcc i32 @skb_metadata_dst_cmp(ptr noundef %p.0209.i, ptr noundef %skb) #10
  %or65.i = or i32 %call64.i, %conv62.i
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %p.0209.i, i32 0, i32 5
  %87 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %_nfct.i.i, align 8
  %89 = ptrtoint ptr %_nfct.i178.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %_nfct.i178.i, align 8
  %xor68.i = xor i32 %90, %88
  %or69.i = or i32 %or65.i, %xor68.i
  %91 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %active_extensions.i.i.i, align 1
  %93 = and i8 %92, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.i.not.i.i = icmp eq i8 %93, 0
  br i1 %tobool.i.not.i.i, label %if.then60.i.skb_ext_find.exit.i_crit_edge, label %if.then.i.i

if.then60.i.skb_ext_find.exit.i_crit_edge:        ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_ext_find.exit.i

if.then.i.i:                                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %extensions.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.skb_ext, ptr %95, i32 0, i32 1, i32 2
  %96 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i179.i = zext i8 %97 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i179.i, 3
  %add.ptr.i180.i = getelementptr i8, ptr %95, i32 %shl.i.i
  br label %skb_ext_find.exit.i

skb_ext_find.exit.i:                              ; preds = %if.then.i.i, %if.then60.i.skb_ext_find.exit.i_crit_edge
  %retval.0.i181.i = phi ptr [ %add.ptr.i180.i, %if.then.i.i ], [ null, %if.then60.i.skb_ext_find.exit.i_crit_edge ]
  %active_extensions.i.i182.i = getelementptr inbounds %struct.sk_buff, ptr %p.0209.i, i32 0, i32 13
  %98 = ptrtoint ptr %active_extensions.i.i182.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %active_extensions.i.i182.i, align 1
  %100 = and i8 %99, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool.i.not.i183.i = icmp eq i8 %100, 0
  br i1 %tobool.i.not.i183.i, label %skb_ext_find.exit.i.skb_ext_find.exit191.i_crit_edge, label %if.then.i189.i

skb_ext_find.exit.i.skb_ext_find.exit191.i_crit_edge: ; preds = %skb_ext_find.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_ext_find.exit191.i

if.then.i189.i:                                   ; preds = %skb_ext_find.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %extensions.i184.i = getelementptr inbounds %struct.sk_buff, ptr %p.0209.i, i32 0, i32 22
  %101 = ptrtoint ptr %extensions.i184.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %extensions.i184.i, align 8
  %arrayidx.i185.i = getelementptr %struct.skb_ext, ptr %102, i32 0, i32 1, i32 2
  %103 = ptrtoint ptr %arrayidx.i185.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx.i185.i, align 1
  %conv.i186.i = zext i8 %104 to i32
  %shl.i187.i = shl nuw nsw i32 %conv.i186.i, 3
  %add.ptr.i188.i = getelementptr i8, ptr %102, i32 %shl.i187.i
  br label %skb_ext_find.exit191.i

skb_ext_find.exit191.i:                           ; preds = %if.then.i189.i, %skb_ext_find.exit.i.skb_ext_find.exit191.i_crit_edge
  %retval.0.i190.i = phi ptr [ %add.ptr.i188.i, %if.then.i189.i ], [ null, %skb_ext_find.exit.i.skb_ext_find.exit191.i_crit_edge ]
  %tobool72.i = icmp ne ptr %retval.0.i190.i, null
  %tobool77.i = icmp ne ptr %retval.0.i181.i, null
  %xor82161.i = xor i1 %tobool77.i, %tobool72.i
  %xor82.i = zext i1 %xor82161.i to i32
  %or83.i = or i32 %or69.i, %xor82.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or83.i)
  %tobool84.not.i = icmp ne i32 %or83.i, 0
  %tobool77.not.i = xor i1 %tobool77.i, true
  %brmerge.i = select i1 %tobool84.not.i, i1 true, i1 %tobool77.not.i
  br i1 %brmerge.i, label %skb_ext_find.exit191.i.if.end98.i_crit_edge, label %if.then93.i, !prof !106

skb_ext_find.exit191.i.if.end98.i_crit_edge:      ; preds = %skb_ext_find.exit191.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end98.i

if.then93.i:                                      ; preds = %skb_ext_find.exit191.i
  call void @__sanitizer_cov_trace_pc() #12
  %105 = ptrtoint ptr %retval.0.i190.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %retval.0.i190.i, align 4
  %107 = ptrtoint ptr %retval.0.i181.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %retval.0.i181.i, align 4
  %xor95.i = xor i32 %108, %106
  br label %if.end98.i

if.end98.thread.i:                                ; preds = %if.end42.i.if.end98.thread.i_crit_edge, %if.else.i.if.end98.thread.i_crit_edge
  %same_flow105196.i = getelementptr inbounds %struct.sk_buff, ptr %p.0209.i, i32 0, i32 3, i32 26
  %109 = ptrtoint ptr %same_flow105196.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %bf.load106197.i = load i16, ptr %same_flow105196.i, align 2
  br label %112

if.end98.i:                                       ; preds = %if.then93.i, %skb_ext_find.exit191.i.if.end98.i_crit_edge
  %diffs.3.i = phi i32 [ %or83.i, %skb_ext_find.exit191.i.if.end98.i_crit_edge ], [ %xor95.i, %if.then93.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %diffs.3.i)
  %tobool99.not.i = icmp eq i32 %diffs.3.i, 0
  %same_flow105.i = getelementptr inbounds %struct.sk_buff, ptr %p.0209.i, i32 0, i32 3, i32 26
  %110 = ptrtoint ptr %same_flow105.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %bf.load106.i = load i16, ptr %same_flow105.i, align 2
  br i1 %tobool99.not.i, label %if.end98.i._crit_edge, label %if.end98.i._crit_edge314

if.end98.i._crit_edge314:                         ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %112

if.end98.i._crit_edge:                            ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %111

111:                                              ; preds = %if.end98.i._crit_edge, %if.end98.thread200.i
  %bf.load106206.i = phi i16 [ %bf.load106204.i, %if.end98.thread200.i ], [ %bf.load106.i, %if.end98.i._crit_edge ]
  %same_flow105205.i = phi ptr [ %same_flow105203.i, %if.end98.thread200.i ], [ %same_flow105.i, %if.end98.i._crit_edge ]
  br label %112

112:                                              ; preds = %111, %if.end98.i._crit_edge314, %if.end98.thread.i
  %bf.load106199.i = phi i16 [ %bf.load106206.i, %111 ], [ %bf.load106.i, %if.end98.i._crit_edge314 ], [ %bf.load106197.i, %if.end98.thread.i ]
  %same_flow105198.i = phi ptr [ %same_flow105205.i, %111 ], [ %same_flow105.i, %if.end98.i._crit_edge314 ], [ %same_flow105196.i, %if.end98.thread.i ]
  %113 = phi i16 [ -32768, %111 ], [ 0, %if.end98.i._crit_edge314 ], [ 0, %if.end98.thread.i ]
  %bf.clear107.i = and i16 %bf.load106199.i, 32767
  %bf.set108.i = or i16 %113, %bf.clear107.i
  %114 = ptrtoint ptr %same_flow105198.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %bf.set108.i, ptr %same_flow105198.i, align 2
  br label %cleanup.i

cleanup.i:                                        ; preds = %112, %if.then.i272
  %115 = ptrtoint ptr %p.0209.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %p.0.i = load ptr, ptr %p.0209.i, align 4
  %cmp.not.i = icmp eq ptr %p.0.i, %arrayidx
  br i1 %cmp.not.i, label %cleanup.i.gro_list_prepare.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cleanup.i.gro_list_prepare.exit_crit_edge:        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gro_list_prepare.exit

gro_list_prepare.exit:                            ; preds = %cleanup.i.gro_list_prepare.exit_crit_edge, %if.end.gro_list_prepare.exit_crit_edge
  %116 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i.i.i.i.i = and i32 %116, -16384
  %117 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %119, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %gro_list_prepare.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

gro_list_prepare.exit.rcu_read_lock.exit_crit_edge: ; preds = %gro_list_prepare.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %gro_list_prepare.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %gro_list_prepare.exit.rcu_read_lock.exit_crit_edge
  %call2 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b264 = load i1, ptr @dev_gro_receive.__warned, align 1
  br i1 %.b264, label %land.lhs.true5.do.end_crit_edge, label %if.then7

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @dev_gro_receive.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 481, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %.pn305 = load volatile ptr, ptr @offload_base, align 4
  %cmp.not306 = icmp eq ptr %.pn305, @offload_base
  br i1 %cmp.not306, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn307 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn305, %do.end.for.body_crit_edge ]
  %ptype.0 = getelementptr i8, ptr %.pn307, i32 -16
  %120 = ptrtoint ptr %ptype.0 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %ptype.0, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %121, i16 %3)
  %cmp16.not = icmp eq i16 %121, %3
  br i1 %cmp16.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %gro_receive = getelementptr i8, ptr %.pn307, i32 -8
  %122 = ptrtoint ptr %gro_receive to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %gro_receive, align 4
  %tobool18.not = icmp eq ptr %123, null
  br i1 %tobool18.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end20

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end20:                                         ; preds = %lor.lhs.false
  %gro_receive.le = getelementptr i8, ptr %.pn307, i32 -8
  %data_offset.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %124 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %data_offset.i, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %126 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %data.i.i, align 4
  %head.i.i276 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %128 = ptrtoint ptr %head.i.i276 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %head.i.i276, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %127 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %129 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i277 = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %130 = trunc i32 %125 to i16
  %conv1.i = add i16 %conv.i.i277, %130
  %131 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %conv1.i, ptr %network_header.i.i, align 4
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %132 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %mac_header.i, align 2
  %sub.i = sub i16 %conv1.i, %133
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %134 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %sub.i, ptr %mac_len.i, align 4
  %same_flow22 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %135 = ptrtoint ptr %same_flow22 to i32
  call void @__asan_load2_noabort(i32 %135)
  %bf.load = load i16, ptr %same_flow22, align 2
  %bf.clear = and i16 %bf.load, 32767
  store i16 %bf.clear, ptr %same_flow22, align 2
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %136 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %137, i32 0, i32 4
  %138 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %139)
  %tobool.i.not = icmp eq i16 %139, 0
  br i1 %tobool.i.not, label %lor.rhs, label %if.end20.lor.end_crit_edge

if.end20.lor.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.end

lor.rhs:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %frag_list.i = getelementptr inbounds %struct.skb_shared_info, ptr %137, i32 0, i32 6
  %140 = ptrtoint ptr %frag_list.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %frag_list.i, align 8
  %cmp.i = icmp ne ptr %141, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end20.lor.end_crit_edge
  %142 = phi i1 [ true, %if.end20.lor.end_crit_edge ], [ %cmp.i, %lor.rhs ]
  %conv27 = zext i1 %142 to i16
  %flush = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %143 = ptrtoint ptr %flush to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %conv27, ptr %flush, align 4
  %bf.clear53 = and i16 %bf.load, 15489
  %bf.set54 = or i16 %bf.clear53, 32
  %gro_remcsum_start = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 18
  %144 = ptrtoint ptr %gro_remcsum_start to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 0, ptr %gro_remcsum_start, align 2
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %145 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %145)
  %bf.load57 = load i16, ptr %ip_summed, align 8
  %bf.lshr = lshr i16 %bf.load57, 9
  %146 = and i16 %bf.lshr, 3
  %bf.cast = zext i16 %146 to i32
  %147 = zext i32 %bf.cast to i64
  call void @__sanitizer_cov_trace_switch(i64 %147, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %bf.cast, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb72
  ]

sw.bb:                                            ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  %148 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %148, align 8
  %csum = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %151 = ptrtoint ptr %csum to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %csum, align 4
  %bf.set66 = and i16 %bf.set54, 161
  %bf.clear70 = or i16 %bf.set66, 8192
  br label %sw.epilog

sw.bb72:                                          ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  %csum_level = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %152 = ptrtoint ptr %csum_level to i32
  call void @__asan_loadN_noabort(i32 %152, i32 4)
  %bf.load73 = load i32, ptr %csum_level, align 2
  %bf.lshr74 = lshr i32 %bf.load73, 28
  %153 = trunc i32 %bf.lshr74 to i8
  %154 = and i8 %153, 3
  %conv78 = add nuw nsw i8 %154, 1
  %155 = zext i8 %conv78 to i16
  %bf.shl = shl nuw nsw i16 %155, 10
  %bf.clear83 = and i16 %bf.set54, 161
  %bf.set84 = or i16 %bf.shl, %bf.clear83
  br label %sw.epilog

sw.default:                                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear101 = and i16 %bf.set54, 161
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb72, %sw.bb
  %bf.clear101.sink = phi i16 [ %bf.clear101, %sw.default ], [ %bf.set84, %sw.bb72 ], [ %bf.clear70, %sw.bb ]
  %156 = ptrtoint ptr %same_flow22 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %bf.clear101.sink, ptr %same_flow22, align 2
  %157 = ptrtoint ptr %gro_receive.le to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %gro_receive.le, align 4
  %call106 = tail call ptr %158(ptr noundef %arrayidx, ptr noundef %skb) #10
  br label %for.end

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %159 = ptrtoint ptr %.pn307 to i32
  call void @__asan_load4_noabort(i32 %159)
  %.pn = load volatile ptr, ptr %.pn307, align 4
  %cmp.not = icmp eq ptr %.pn, @offload_base
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %sw.epilog, %do.end.for.end_crit_edge
  %cmp.not304 = phi i1 [ false, %sw.epilog ], [ true, %do.end.for.end_crit_edge ], [ true, %for.inc.for.end_crit_edge ]
  %pp.0 = phi ptr [ %call106, %sw.epilog ], [ null, %do.end.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %call.i279 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i279, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i282

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i282:                               ; preds = %for.end
  %call1.i280 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i280)
  %tobool.not.i281 = icmp eq i32 %call1.i280, 0
  br i1 %tobool.not.i281, label %land.lhs.true.i282.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i284

land.lhs.true.i282.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i282
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i284:                              ; preds = %land.lhs.true.i282
  %.b4.i283 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i283, label %land.lhs.true2.i284.rcu_read_unlock.exit_crit_edge, label %if.then.i285

land.lhs.true2.i284.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i284
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i285:                                     ; preds = %land.lhs.true2.i284
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i285, %land.lhs.true2.i284.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i282.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  %160 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i.i.i.i.i286 = and i32 %160, -16384
  %161 = inttoptr i32 %and.i.i.i.i.i286 to ptr
  %preempt_count.i.i.i.i287 = getelementptr inbounds %struct.thread_info, ptr %161, i32 0, i32 1
  %162 = ptrtoint ptr %preempt_count.i.i.i.i287 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load volatile i32, ptr %preempt_count.i.i.i.i287, align 4
  %sub.i.i.i = add i32 %163, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i287, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br i1 %cmp.not304, label %rcu_read_unlock.exit.pull_crit_edge, label %if.end120

rcu_read_unlock.exit.pull_crit_edge:              ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %pull

if.end120:                                        ; preds = %rcu_read_unlock.exit
  %cmp122 = icmp eq ptr %pp.0, inttoptr (i32 -115 to ptr)
  br i1 %cmp122, label %if.end120.ok_crit_edge, label %if.end125

if.end120.ok_crit_edge:                           ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  br label %ok

if.end125:                                        ; preds = %if.end120
  %same_flow128 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %164 = ptrtoint ptr %same_flow128 to i32
  call void @__asan_load2_noabort(i32 %164)
  %bf.load129 = load i16, ptr %same_flow128, align 2
  %165 = and i16 %bf.load129, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %165)
  %tobool141.not = icmp ne i16 %165, 0
  %cond = zext i1 %tobool141.not to i32
  %tobool142.not = icmp eq ptr %pp.0, null
  br i1 %tobool142.not, label %if.end125.if.end144_crit_edge, label %if.then143

if.end125.if.end144_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end144

if.then143:                                       ; preds = %if.end125
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %pp.0) #10
  br i1 %call.i.i, label %if.end.i.i288, label %if.then143.skb_list_del_init.exit_crit_edge

if.then143.skb_list_del_init.exit_crit_edge:      ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_list_del_init.exit

if.end.i.i288:                                    ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pp.0, i32 0, i32 1
  %166 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %prev.i.i, align 4
  %168 = ptrtoint ptr %pp.0 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %pp.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %167, ptr %prev1.i.i.i, align 4
  %171 = ptrtoint ptr %167 to i32
  call void @__asan_store4_noabort(i32 %171)
  store volatile ptr %169, ptr %167, align 4
  br label %skb_list_del_init.exit

skb_list_del_init.exit:                           ; preds = %if.end.i.i288, %if.then143.skb_list_del_init.exit_crit_edge
  %172 = ptrtoint ptr %pp.0 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr null, ptr %pp.0, align 8
  tail call fastcc void @napi_gro_complete(ptr noundef %napi, ptr noundef nonnull %pp.0)
  %count = getelementptr %struct.napi_struct, ptr %napi, i32 0, i32 8, i32 %and, i32 1
  %173 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %count, align 4
  %dec = add i32 %174, -1
  store i32 %dec, ptr %count, align 4
  br label %if.end144

if.end144:                                        ; preds = %skb_list_del_init.exit, %if.end125.if.end144_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load129)
  %tobool145.not = icmp sgt i16 %bf.load129, -1
  br i1 %tobool145.not, label %if.end147, label %if.end144.ok_crit_edge

if.end144.ok_crit_edge:                           ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  br label %ok

if.end147:                                        ; preds = %if.end144
  %flush150 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %175 = ptrtoint ptr %flush150 to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %flush150, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %176)
  %tobool151.not = icmp eq i16 %176, 0
  br i1 %tobool151.not, label %if.end153, label %if.end147.pull_crit_edge

if.end147.pull_crit_edge:                         ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #12
  br label %pull

if.end153:                                        ; preds = %if.end147
  %count154 = getelementptr %struct.napi_struct, ptr %napi, i32 0, i32 8, i32 %and, i32 1
  %177 = ptrtoint ptr %count154 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %count154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %178)
  %cmp155 = icmp sgt i32 %178, 7
  br i1 %cmp155, label %if.then159, label %if.else, !prof !96

if.then159:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @gro_flush_oldest(ptr noundef %napi, ptr noundef %arrayidx)
  br label %if.end162

if.else:                                          ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #12
  %inc = add nsw i32 %178, 1
  %179 = ptrtoint ptr %count154 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %inc, ptr %count154, align 4
  br label %if.end162

if.end162:                                        ; preds = %if.else, %if.then159
  %count165 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %180 = ptrtoint ptr %count165 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 1, ptr %count165, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %181 = load volatile i32, ptr @jiffies, align 128
  %age = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %182 = ptrtoint ptr %age to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %age, align 4
  %last = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %183 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %skb, ptr %last, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %184 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %len.i, align 4
  %data_offset.i289 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %186 = ptrtoint ptr %data_offset.i289 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %data_offset.i289, align 8
  %sub.i290 = sub i32 %185, %187
  %conv171 = trunc i32 %sub.i290 to i16
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %188 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %end.i, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %189, i32 0, i32 4
  %190 = ptrtoint ptr %gso_size to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %conv171, ptr %gso_size, align 4
  %191 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %arrayidx, align 4
  %call.i.i291 = tail call zeroext i1 @__list_add_valid(ptr noundef %skb, ptr noundef %arrayidx, ptr noundef %192) #10
  br i1 %call.i.i291, label %if.end.i.i292, label %if.end162.pull_crit_edge

if.end162.pull_crit_edge:                         ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #12
  br label %pull

if.end.i.i292:                                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %192, i32 0, i32 1
  %193 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %skb, ptr %prev1.i.i, align 4
  %194 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %192, ptr %skb, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %skb, i32 0, i32 1
  %195 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %arrayidx, ptr %prev3.i.i, align 4
  %196 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %196)
  store volatile ptr %skb, ptr %arrayidx, align 4
  br label %pull

pull:                                             ; preds = %if.end.i.i292, %if.end162.pull_crit_edge, %if.end147.pull_crit_edge, %rcu_read_unlock.exit.pull_crit_edge, %netif_elide_gro.exit.pull_crit_edge, %entry.pull_crit_edge
  %ret.0 = phi i32 [ 3, %if.end147.pull_crit_edge ], [ 3, %rcu_read_unlock.exit.pull_crit_edge ], [ 3, %netif_elide_gro.exit.pull_crit_edge ], [ 2, %if.end162.pull_crit_edge ], [ 2, %if.end.i.i292 ], [ 3, %entry.pull_crit_edge ]
  %data_offset.i293 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %197 = ptrtoint ptr %data_offset.i293 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %data_offset.i293, align 8
  %len.i294 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %199 = ptrtoint ptr %len.i294 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %len.i294, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %201 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %data_len.i, align 8
  %sub.i295.neg = sub i32 %202, %200
  %sub = add i32 %sub.i295.neg, %198
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp176 = icmp sgt i32 %sub, 0
  br i1 %cmp176, label %if.then178, label %pull.ok_crit_edge

pull.ok_crit_edge:                                ; preds = %pull
  call void @__sanitizer_cov_trace_pc() #12
  br label %ok

if.then178:                                       ; preds = %pull
  %end.i.i296 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %203 = ptrtoint ptr %end.i.i296 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %end.i.i296, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %205 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %204 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %206 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %sub)
  %cmp.i297 = icmp slt i32 %sub.ptr.sub.i, %sub
  br i1 %cmp.i297, label %do.body2.i, label %do.end7.i, !prof !96

do.body2.i:                                       ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/gro.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 427, 0\0A.popsection", ""() #10, !srcloc !107
  unreachable

do.end7.i:                                        ; preds = %if.then178
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %207 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %cb.i, align 8
  %209 = call ptr @memcpy(ptr %206, ptr %208, i32 %sub)
  %210 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %data_len.i, align 8
  %sub.i299 = sub i32 %211, %sub
  store i32 %sub.i299, ptr %data_len.i, align 8
  %212 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %tail.i, align 8
  %add.ptr.i300 = getelementptr i8, ptr %213, i32 %sub
  store ptr %add.ptr.i300, ptr %tail.i, align 8
  %bv_offset.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %204, i32 0, i32 12, i32 0, i32 2
  %214 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %bv_offset.i.i, align 4
  %add.i.i = add i32 %215, %sub
  store i32 %add.i.i, ptr %bv_offset.i.i, align 4
  %bv_len.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %204, i32 0, i32 12, i32 0, i32 1
  %216 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %bv_len.i.i, align 4
  %sub.i.i = sub i32 %217, %sub
  store i32 %sub.i.i, ptr %bv_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %217, i32 %sub)
  %tobool15.not.i = icmp eq i32 %217, %sub
  br i1 %tobool15.not.i, label %if.then24.i, label %do.end7.i.ok_crit_edge, !prof !96

do.end7.i.ok_crit_edge:                           ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ok

if.then24.i:                                      ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  %frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %204, i32 0, i32 12
  %218 = ptrtoint ptr %end.i.i296 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %end.i.i296, align 4
  %frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %219, i32 0, i32 12
  %pp_recycle.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %220 = ptrtoint ptr %pp_recycle.i.i to i32
  call void @__asan_load1_noabort(i32 %220)
  %bf.load.i.i = load i8, ptr %pp_recycle.i.i, align 2
  %bf.clear.i.i = and i8 %bf.load.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i.i)
  %tobool.i.i = icmp ne i8 %bf.clear.i.i, 0
  tail call fastcc void @__skb_frag_unref(ptr noundef %frags.i.i, i1 noundef zeroext %tobool.i.i) #10
  %add.ptr29.i = getelementptr %struct.skb_shared_info, ptr %204, i32 0, i32 12, i32 1
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %204, i32 0, i32 2
  %221 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %nr_frags.i, align 2
  %dec.i = add i8 %222, -1
  store i8 %dec.i, ptr %nr_frags.i, align 2
  %conv.i301 = zext i8 %dec.i to i32
  %mul.i = mul nuw nsw i32 %conv.i301, 12
  %223 = call ptr @memmove(ptr %frags.i, ptr %add.ptr29.i, i32 %mul.i)
  br label %ok

ok:                                               ; preds = %if.then24.i, %do.end7.i.ok_crit_edge, %pull.ok_crit_edge, %if.end144.ok_crit_edge, %if.end120.ok_crit_edge
  %ret.1 = phi i32 [ %ret.0, %pull.ok_crit_edge ], [ %cond, %if.end144.ok_crit_edge ], [ 4, %if.end120.ok_crit_edge ], [ %ret.0, %do.end7.i.ok_crit_edge ], [ %ret.0, %if.then24.i ]
  %count180 = getelementptr %struct.napi_struct, ptr %napi, i32 0, i32 8, i32 %and, i32 1
  %224 = ptrtoint ptr %count180 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %count180, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %tobool181.not = icmp eq i32 %225, 0
  %gro_bitmask189 = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 4
  %226 = ptrtoint ptr %gro_bitmask189 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load volatile i32, ptr %gro_bitmask189, align 4
  %228 = shl nuw i32 1, %and
  %229 = and i32 %227, %228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %229)
  %tobool191.not = icmp eq i32 %229, 0
  br i1 %tobool181.not, label %if.else188, label %if.then182

if.then182:                                       ; preds = %ok
  br i1 %tobool191.not, label %if.then185, label %if.then182.if.end195_crit_edge

if.then182.if.end195_crit_edge:                   ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end195

if.then185:                                       ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #12
  %230 = ptrtoint ptr %gro_bitmask189 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %gro_bitmask189, align 4
  %or.i = or i32 %231, %228
  br label %if.end195.sink.split

if.else188:                                       ; preds = %ok
  br i1 %tobool191.not, label %if.else188.if.end195_crit_edge, label %if.then192

if.else188.if.end195_crit_edge:                   ; preds = %if.else188
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end195

if.then192:                                       ; preds = %if.else188
  call void @__sanitizer_cov_trace_pc() #12
  %neg.i = xor i32 %228, -1
  %and.i = and i32 %227, %neg.i
  br label %if.end195.sink.split

if.end195.sink.split:                             ; preds = %if.then192, %if.then185
  %and.i.sink = phi i32 [ %and.i, %if.then192 ], [ %or.i, %if.then185 ]
  %232 = ptrtoint ptr %gro_bitmask189 to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %and.i.sink, ptr %gro_bitmask189, align 4
  br label %if.end195

if.end195:                                        ; preds = %if.end195.sink.split, %if.else188.if.end195_crit_edge, %if.then182.if.end195_crit_edge
  ret i32 %ret.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_napi_gro_receive_exit(i32 noundef %ret) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_napi_gro_receive_exit, i32 0, i32 1), ptr blockaddress(@trace_napi_gro_receive_exit, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !101

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !98

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !108
  %call42 = tail call i32 @__traceiter_napi_gro_receive_exit(ptr noundef null, i32 noundef %ret) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !109
  %13 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !98

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_napi_gro_receive_exit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_napi_gro_receive_exit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_napi_gro_receive_exit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_napi_gro_receive_exit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 299, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !105
  %31 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @napi_get_frags(ptr noundef %napi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skb1 = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 9
  %0 = ptrtoint ptr %skb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @__napi_alloc_skb(ptr noundef %napi, i32 noundef 304, i32 noundef 2592) #10
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.then.if.end5_crit_edge, label %if.then3

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %if.then
  %2 = ptrtoint ptr %skb1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %skb1, align 4
  %3 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 11
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp.i = icmp ult i32 %5, 5
  br i1 %cmp.i, label %if.then.i, label %if.then3.if.end5_crit_edge

if.then3.if.end5_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  %napi_id.i = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 15
  %6 = ptrtoint ptr %napi_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %napi_id.i, align 8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %3, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then.i, %if.then3.if.end5_crit_edge, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %skb.0 = phi ptr [ %1, %entry.if.end5_crit_edge ], [ null, %if.then.if.end5_crit_edge ], [ %call.i, %if.then3.if.end5_crit_edge ], [ %call.i, %if.then.i ]
  ret ptr %skb.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @napi_gro_frags(ptr noundef %napi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skb1.i = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 9
  %0 = ptrtoint ptr %skb1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb1.i, align 4
  store ptr null, ptr %skb1.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 21
  %6 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %end.i.i.i, align 4
  %frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %8, i32 0, i32 12
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %data_offset.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %data_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %data_offset.i.i, align 8
  %10 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %cb.i.i, align 8
  %frag0_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %11 = ptrtoint ptr %frag0_len.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %frag0_len.i.i, align 4
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %tobool.not.i.i = icmp eq i32 %13, %15
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

land.lhs.true.i.i:                                ; preds = %entry
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %8, i32 0, i32 2
  %16 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %nr_frags.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool7.not.i.i = icmp eq i8 %17, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true.i.i.if.then.ithread-pre-split_crit_edge, label %land.lhs.true8.i.i

land.lhs.true.i.i.if.then.ithread-pre-split_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.ithread-pre-split

land.lhs.true8.i.i:                               ; preds = %land.lhs.true.i.i
  %18 = ptrtoint ptr %frags.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %frags.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %shr.i.i.i = lshr i32 %21, 30
  %22 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %shr.i.i.i, label %land.lhs.true8.i.i.land.lhs.true13.i.i_crit_edge [
    i32 2, label %land.lhs.true8.i.i.if.then.ithread-pre-split_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

land.lhs.true8.i.i.if.then.ithread-pre-split_crit_edge: ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.ithread-pre-split

land.lhs.true8.i.i.land.lhs.true13.i.i_crit_edge: ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true13.i.i

is_highmem_idx.exit.i.i:                          ; preds = %land.lhs.true8.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %23 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp2.i.not.i.i = icmp eq i32 %23, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.then.ithread-pre-split_crit_edge, label %is_highmem_idx.exit.i.i.land.lhs.true13.i.i_crit_edge

is_highmem_idx.exit.i.i.land.lhs.true13.i.i_crit_edge: ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true13.i.i

is_highmem_idx.exit.i.i.if.then.ithread-pre-split_crit_edge: ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.ithread-pre-split

land.lhs.true13.i.i:                              ; preds = %is_highmem_idx.exit.i.i.land.lhs.true13.i.i_crit_edge, %land.lhs.true8.i.i.land.lhs.true13.i.i_crit_edge
  %bv_offset.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %8, i32 0, i32 12, i32 0, i32 2
  %24 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bv_offset.i.i.i, align 4
  %add.i.i = add i32 %25, 2
  %and.i.i = and i32 %add.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool15.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool15.not.i.i, label %skb_gro_reset_offset.exit.i, label %land.lhs.true13.i.i.if.then.ithread-pre-split_crit_edge

land.lhs.true13.i.i.if.then.ithread-pre-split_crit_edge: ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.ithread-pre-split

skb_gro_reset_offset.exit.i:                      ; preds = %land.lhs.true13.i.i
  %call1.i.i.i = tail call ptr @page_address(ptr noundef %19) #10
  %26 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bv_offset.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %call1.i.i.i, i32 %27
  %28 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr.i.i.i, ptr %cb.i.i, align 8
  %bv_len.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %8, i32 0, i32 12, i32 0, i32 1
  %29 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bv_len.i.i.i, align 4
  %31 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %33 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i52.i = ptrtoint ptr %32 to i32
  %sub.ptr.rhs.cast.i53.i = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i54.i = sub i32 %sub.ptr.lhs.cast.i52.i, %sub.ptr.rhs.cast.i53.i
  %35 = tail call i32 @llvm.umin.i32(i32 %30, i32 %sub.ptr.sub.i54.i) #10
  %36 = ptrtoint ptr %frag0_len.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %frag0_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %35)
  %cmp.i.i = icmp ugt i32 %35, 13
  br i1 %cmp.i.i, label %if.else.i, label %skb_gro_reset_offset.exit.i.if.then.ithread-pre-split_crit_edge, !prof !98

skb_gro_reset_offset.exit.i.if.then.ithread-pre-split_crit_edge: ; preds = %skb_gro_reset_offset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.ithread-pre-split

if.then.ithread-pre-split:                        ; preds = %skb_gro_reset_offset.exit.i.if.then.ithread-pre-split_crit_edge, %land.lhs.true13.i.i.if.then.ithread-pre-split_crit_edge, %is_highmem_idx.exit.i.i.if.then.ithread-pre-split_crit_edge, %land.lhs.true8.i.i.if.then.ithread-pre-split_crit_edge, %land.lhs.true.i.i.if.then.ithread-pre-split_crit_edge
  %37 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr = load i32, ptr %len.i.i.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.ithread-pre-split, %entry.if.then.i_crit_edge
  %38 = phi i32 [ %.pr, %if.then.ithread-pre-split ], [ %13, %entry.if.then.i_crit_edge ]
  %39 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i16 = sub i32 %38, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %sub.i.i.i16)
  %cmp.i.i17 = icmp ugt i32 %sub.i.i.i16, 13
  br i1 %cmp.i.i17, label %if.then.i.skb_gro_header_slow.exit_crit_edge, label %if.end.i.i, !prof !98

if.then.i.skb_gro_header_slow.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_gro_header_slow.exit

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %38)
  %cmp3.i.i = icmp ult i32 %38, 14
  br i1 %cmp3.i.i, label %if.end.i.i.do.body.i_crit_edge, label %pskb_may_pull.exit.i, !prof !96

if.end.i.i.do.body.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i18 = sub nuw nsw i32 14, %sub.i.i.i16
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %sub.i.i18) #10
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.do.body.i_crit_edge, label %pskb_may_pull.exit.i.skb_gro_header_slow.exit_crit_edge

pskb_may_pull.exit.i.skb_gro_header_slow.exit_crit_edge: ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_gro_header_slow.exit

pskb_may_pull.exit.i.do.body.i_crit_edge:         ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

skb_gro_header_slow.exit:                         ; preds = %pskb_may_pull.exit.i.skb_gro_header_slow.exit_crit_edge, %if.then.i.skb_gro_header_slow.exit_crit_edge
  %41 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %cb.i.i, align 8
  %42 = ptrtoint ptr %frag0_len.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %frag0_len.i.i, align 4
  %43 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i.i, align 4
  %tobool6.not.i = icmp eq ptr %44, null
  br i1 %tobool6.not.i, label %skb_gro_header_slow.exit.do.body.i_crit_edge, label %skb_gro_header_slow.exit.if.end27.i_crit_edge, !prof !96

skb_gro_header_slow.exit.if.end27.i_crit_edge:    ; preds = %skb_gro_header_slow.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27.i

skb_gro_header_slow.exit.do.body.i_crit_edge:     ; preds = %skb_gro_header_slow.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body.i:                                        ; preds = %skb_gro_header_slow.exit.do.body.i_crit_edge, %pskb_may_pull.exit.i.do.body.i_crit_edge, %if.end.i.i.do.body.i_crit_edge
  %call16.i = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %do.body.i.do.end22.i_crit_edge, label %do.end.i

do.body.i.do.end22.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 7
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, ptr noundef %46) #13
  br label %do.end22.i

do.end22.i:                                       ; preds = %do.end.i, %do.body.i.do.end22.i_crit_edge
  tail call fastcc void @napi_reuse_skb(ptr noundef %napi, ptr noundef %1) #10
  br label %napi_frags_skb.exit

if.else.i:                                        ; preds = %skb_gro_reset_offset.exit.i
  %47 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i.i, align 4
  %49 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %end.i.i.i, align 4
  %51 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i59.i = ptrtoint ptr %50 to i32
  %sub.ptr.rhs.cast.i60.i = ptrtoint ptr %52 to i32
  %sub.ptr.sub.i61.i = sub i32 %sub.ptr.lhs.cast.i59.i, %sub.ptr.rhs.cast.i60.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub.i61.i)
  %cmp.i62.i = icmp slt i32 %sub.ptr.sub.i61.i, 14
  br i1 %cmp.i62.i, label %do.body2.i.i, label %do.end7.i.i, !prof !96

do.body2.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/gro.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 427, 0\0A.popsection", ""() #10, !srcloc !107
  unreachable

do.end7.i.i:                                      ; preds = %if.else.i
  %53 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cb.i.i, align 8
  %55 = call ptr @memcpy(ptr %52, ptr %54, i32 14)
  %56 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i = add i32 %57, -14
  store i32 %sub.i.i, ptr %data_len.i.i.i, align 8
  %58 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tail.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %59, i32 14
  store ptr %add.ptr.i.i, ptr %tail.i.i, align 8
  %bv_offset.i.i64.i = getelementptr inbounds %struct.skb_shared_info, ptr %50, i32 0, i32 12, i32 0, i32 2
  %60 = ptrtoint ptr %bv_offset.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bv_offset.i.i64.i, align 4
  %add.i.i.i = add i32 %61, 14
  store i32 %add.i.i.i, ptr %bv_offset.i.i64.i, align 4
  %bv_len.i.i65.i = getelementptr inbounds %struct.skb_shared_info, ptr %50, i32 0, i32 12, i32 0, i32 1
  %62 = ptrtoint ptr %bv_len.i.i65.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bv_len.i.i65.i, align 4
  %sub.i.i.i = add i32 %63, -14
  store i32 %sub.i.i.i, ptr %bv_len.i.i65.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %63)
  %tobool15.not.i66.i = icmp eq i32 %63, 14
  br i1 %tobool15.not.i66.i, label %if.then24.i.i, label %do.end7.i.i.gro_pull_from_frag0.exit.i_crit_edge, !prof !96

do.end7.i.i.gro_pull_from_frag0.exit.i_crit_edge: ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gro_pull_from_frag0.exit.i

if.then24.i.i:                                    ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %frags.i67.i = getelementptr inbounds %struct.skb_shared_info, ptr %50, i32 0, i32 12
  %64 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %end.i.i.i, align 4
  %frags.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %65, i32 0, i32 12
  %pp_recycle.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 12
  %66 = ptrtoint ptr %pp_recycle.i.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load.i.i.i = load i8, ptr %pp_recycle.i.i.i, align 2
  %bf.clear.i.i.i = and i8 %bf.load.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.clear.i.i.i)
  %tobool.i.i.i = icmp ne i8 %bf.clear.i.i.i, 0
  tail call fastcc void @__skb_frag_unref(ptr noundef %frags.i.i.i, i1 noundef zeroext %tobool.i.i.i) #10
  %add.ptr29.i.i = getelementptr %struct.skb_shared_info, ptr %50, i32 0, i32 12, i32 1
  %nr_frags.i68.i = getelementptr inbounds %struct.skb_shared_info, ptr %50, i32 0, i32 2
  %67 = ptrtoint ptr %nr_frags.i68.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %nr_frags.i68.i, align 2
  %dec.i.i = add i8 %68, -1
  store i8 %dec.i.i, ptr %nr_frags.i68.i, align 2
  %conv.i69.i = zext i8 %dec.i.i to i32
  %mul.i.i = mul nuw nsw i32 %conv.i69.i, 12
  %69 = call ptr @memmove(ptr %frags.i67.i, ptr %add.ptr29.i.i, i32 %mul.i.i)
  br label %gro_pull_from_frag0.exit.i

gro_pull_from_frag0.exit.i:                       ; preds = %if.then24.i.i, %do.end7.i.i.gro_pull_from_frag0.exit.i_crit_edge
  %70 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cb.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %71, i32 14
  store ptr %add.ptr.i, ptr %cb.i.i, align 8
  %72 = ptrtoint ptr %frag0_len.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %frag0_len.i.i, align 4
  %sub.i = add i32 %73, -14
  store i32 %sub.i, ptr %frag0_len.i.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %gro_pull_from_frag0.exit.i, %skb_gro_header_slow.exit.if.end27.i_crit_edge
  %eth.0.i = phi ptr [ %44, %skb_gro_header_slow.exit.if.end27.i_crit_edge ], [ %48, %gro_pull_from_frag0.exit.i ]
  %74 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len.i.i.i, align 4
  %sub.i70.i = add i32 %75, -14
  store i32 %sub.i70.i, ptr %len.i.i.i, align 4
  %76 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i70.i, i32 %77)
  %cmp.i72.i = icmp ult i32 %sub.i70.i, %77
  br i1 %cmp.i72.i, label %do.body4.i.i, label %__skb_pull.exit.i, !prof !96

do.body4.i.i:                                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #10, !srcloc !97
  unreachable

__skb_pull.exit.i:                                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i74.i = getelementptr i8, ptr %79, i32 14
  store ptr %add.ptr.i74.i, ptr %data.i.i, align 4
  %h_proto.i = getelementptr inbounds %struct.ethhdr, ptr %eth.0.i, i32 0, i32 2
  %80 = ptrtoint ptr %h_proto.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %81 = load i16, ptr %h_proto.i, align 1
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 18
  %82 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %protocol.i, align 8
  br label %napi_frags_skb.exit

napi_frags_skb.exit:                              ; preds = %__skb_pull.exit.i, %do.end22.i
  %retval.0.i = phi ptr [ null, %do.end22.i ], [ %1, %__skb_pull.exit.i ]
  tail call fastcc void @trace_napi_gro_frags_entry(ptr noundef %retval.0.i)
  %call1 = tail call fastcc i32 @dev_gro_receive(ptr noundef %napi, ptr noundef %retval.0.i), !range !100
  %83 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %call1, label %napi_frags_skb.exit.napi_frags_finish.exit_crit_edge [
    i32 3, label %napi_frags_skb.exit.sw.bb.i_crit_edge
    i32 2, label %napi_frags_skb.exit.sw.bb.i_crit_edge25
    i32 1, label %sw.bb2.i
  ]

napi_frags_skb.exit.sw.bb.i_crit_edge25:          ; preds = %napi_frags_skb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

napi_frags_skb.exit.sw.bb.i_crit_edge:            ; preds = %napi_frags_skb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

napi_frags_skb.exit.napi_frags_finish.exit_crit_edge: ; preds = %napi_frags_skb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %napi_frags_finish.exit

sw.bb.i:                                          ; preds = %napi_frags_skb.exit.sw.bb.i_crit_edge, %napi_frags_skb.exit.sw.bb.i_crit_edge25
  %data.i.i8 = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i, i32 0, i32 19
  %84 = ptrtoint ptr %data.i.i8 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data.i.i8, align 4
  %add.ptr.i.i9 = getelementptr i8, ptr %85, i32 -14
  store ptr %add.ptr.i.i9, ptr %data.i.i8, align 4
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i, i32 0, i32 6
  %86 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %len1.i.i, align 4
  %add.i.i10 = add i32 %87, 14
  store i32 %add.i.i10, ptr %len1.i.i, align 4
  %88 = getelementptr inbounds %struct.anon, ptr %retval.0.i, i32 0, i32 2
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 8
  %call1.i = tail call zeroext i16 @eth_type_trans(ptr noundef %retval.0.i, ptr noundef %90) #10
  %protocol.i11 = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i, i32 0, i32 15, i32 0, i32 18
  %91 = ptrtoint ptr %protocol.i11 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %call1.i, ptr %protocol.i11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call1)
  %cmp.i = icmp eq i32 %call1, 3
  br i1 %cmp.i, label %if.then.i12, label %sw.bb.i.napi_frags_finish.exit_crit_edge

sw.bb.i.napi_frags_finish.exit_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %napi_frags_finish.exit

if.then.i12:                                      ; preds = %sw.bb.i
  %rx_list.i.i = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 10
  %prev.i.i.i = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 10, i32 1
  %92 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %retval.0.i, ptr noundef %93, ptr noundef %rx_list.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i12.list_add_tail.exit.i.i_crit_edge

if.then.i12.list_add_tail.exit.i.i_crit_edge:     ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %retval.0.i, ptr %prev.i.i.i, align 4
  %95 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %rx_list.i.i, ptr %retval.0.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i, i32 0, i32 1
  %96 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %prev3.i.i.i.i, align 4
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %retval.0.i, ptr %93, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.then.i12.list_add_tail.exit.i.i_crit_edge
  %rx_count.i.i = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 11
  %98 = ptrtoint ptr %rx_count.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %rx_count.i.i, align 8
  %add.i18.i = add i32 %99, 1
  store i32 %add.i18.i, ptr %rx_count.i.i, align 8
  %100 = load i32, ptr @gro_normal_batch, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i18.i, i32 %100)
  %cmp.not.i.i = icmp slt i32 %add.i18.i, %100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i18.i)
  %tobool.not.i.i.i = icmp eq i32 %add.i18.i, 0
  %or.cond.i.i = or i1 %tobool.not.i.i.i, %cmp.not.i.i
  br i1 %or.cond.i.i, label %list_add_tail.exit.i.i.napi_frags_finish.exit_crit_edge, label %if.end.i.i.i

list_add_tail.exit.i.i.napi_frags_finish.exit_crit_edge: ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %napi_frags_finish.exit

if.end.i.i.i:                                     ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @netif_receive_skb_list_internal(ptr noundef %rx_list.i.i) #10
  %101 = ptrtoint ptr %rx_list.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %rx_list.i.i, ptr %rx_list.i.i, align 4
  %102 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %rx_list.i.i, ptr %prev.i.i.i, align 4
  %103 = ptrtoint ptr %rx_count.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %rx_count.i.i, align 8
  br label %napi_frags_finish.exit

sw.bb2.i:                                         ; preds = %napi_frags_skb.exit
  %free.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i, i32 0, i32 3, i32 26
  %104 = ptrtoint ptr %free.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %bf.load.i = load i16, ptr %free.i, align 2
  %105 = and i16 %bf.load.i, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %105)
  %cmp3.i = icmp eq i16 %105, 512
  br i1 %cmp3.i, label %if.then5.i, label %if.else.i13

if.then5.i:                                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @napi_skb_free_stolen_head(ptr noundef %retval.0.i) #10
  br label %napi_frags_finish.exit

if.else.i13:                                      ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @napi_reuse_skb(ptr noundef %napi, ptr noundef %retval.0.i) #10
  br label %napi_frags_finish.exit

napi_frags_finish.exit:                           ; preds = %if.else.i13, %if.then5.i, %if.end.i.i.i, %list_add_tail.exit.i.i.napi_frags_finish.exit_crit_edge, %sw.bb.i.napi_frags_finish.exit_crit_edge, %napi_frags_skb.exit.napi_frags_finish.exit_crit_edge
  tail call fastcc void @trace_napi_gro_frags_exit(i32 noundef %call1)
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_napi_gro_frags_entry(ptr noundef %skb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_napi_gro_frags_entry, i32 0, i32 1), ptr blockaddress(@trace_napi_gro_frags_entry, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !101

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !98

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !110
  %call42 = tail call i32 @__traceiter_napi_gro_frags_entry(ptr noundef null, ptr noundef %skb) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !111
  %13 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !98

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_napi_gro_frags_entry, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_napi_gro_frags_entry, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_napi_gro_frags_entry.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_napi_gro_frags_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 233, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !105
  %31 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_napi_gro_frags_exit(i32 noundef %ret) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_napi_gro_frags_exit, i32 0, i32 1), ptr blockaddress(@trace_napi_gro_frags_exit, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !101

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !98

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !112
  %call42 = tail call i32 @__traceiter_napi_gro_frags_exit(ptr noundef null, i32 noundef %ret) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !113
  %13 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !98

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_napi_gro_frags_exit, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_napi_gro_frags_exit, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_napi_gro_frags_exit.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_napi_gro_frags_exit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 292, ptr noundef nonnull @.str.9) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !105
  %31 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @__skb_gro_checksum_complete(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data_offset.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %data_offset.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_offset.i, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  %sub.i = sub i32 %3, %1
  %call2 = tail call i32 @skb_checksum(ptr noundef %skb, i32 noundef %1, i32 noundef %sub.i, i32 noundef 0) #10
  %csum = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %4 = ptrtoint ptr %csum to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %csum, align 4
  %add.i = add i32 %5, %call2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %call2)
  %cmp.i = icmp ult i32 %add.i, %call2
  %conv.i = zext i1 %cmp.i to i32
  %add1.i = add i32 %add.i, %conv.i
  %6 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i) #15, !srcloc !114
  %neg.i = xor i32 %6, -1
  %shr.i = lshr i32 %neg.i, 16
  %conv.i42 = trunc i32 %shr.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i42)
  %tobool.not = icmp eq i16 %conv.i42, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end21_crit_edge, !prof !98

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then:                                          ; preds = %entry
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %7 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %ip_summed, align 8
  %8 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %8)
  %cmp = icmp eq i16 %8, 1024
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end21_crit_edge, !prof !96

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

land.lhs.true:                                    ; preds = %if.then
  %csum_complete_sw = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %9 = ptrtoint ptr %csum_complete_sw to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %bf.load15 = load i32, ptr %csum_complete_sw, align 2
  %10 = and i32 %bf.load15, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool19.not = icmp eq i32 %10, 0
  br i1 %tobool19.not, label %if.then20, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %11 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  tail call void @netdev_rx_csum_fault(ptr noundef %13, ptr noundef %skb) #10
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %land.lhs.true.if.end21_crit_edge, %if.then.if.end21_crit_edge, %entry.if.end21_crit_edge
  %14 = ptrtoint ptr %csum to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call2, ptr %csum, align 4
  %csum_valid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 26
  %15 = ptrtoint ptr %csum_valid to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load27 = load i16, ptr %csum_valid, align 2
  %bf.set = or i16 %bf.load27, 8192
  store i16 %bf.set, ptr %csum_valid, align 2
  ret i16 %conv.i42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_rx_csum_fault(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @napi_gro_complete(ptr noundef %napi, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol, align 8
  %count = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp = icmp eq i16 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %gso_size to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %gso_size, align 4
  br label %out

if.end:                                           ; preds = %entry
  %7 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %10, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !94
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call3 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end11_crit_edge

rcu_read_lock.exit.do.end11_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true6

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b90 = load i1, ptr @napi_gro_complete.__warned, align 1
  br i1 %.b90, label %land.lhs.true6.do.end11_crit_edge, label %if.then8

land.lhs.true6.do.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @napi_gro_complete.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 289, ptr noundef nonnull @.str.1) #10
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %land.lhs.true6.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %rcu_read_lock.exit.do.end11_crit_edge
  %.pn111 = load volatile ptr, ptr @offload_base, align 4
  %cmp16.not112 = icmp eq ptr %.pn111, @offload_base
  br i1 %cmp16.not112, label %do.end11.if.then39.critedge_crit_edge, label %do.end11.for.body_crit_edge

do.end11.for.body_crit_edge:                      ; preds = %do.end11
  br label %for.body

do.end11.if.then39.critedge_crit_edge:            ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then39.critedge

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end11.for.body_crit_edge
  %.pn113 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn111, %do.end11.for.body_crit_edge ]
  %ptype.0 = getelementptr i8, ptr %.pn113, i32 -16
  %11 = ptrtoint ptr %ptype.0 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ptype.0, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %1)
  %cmp21.not = icmp eq i16 %12, %1
  br i1 %cmp21.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %gro_complete = getelementptr i8, ptr %.pn113, i32 -4
  %13 = ptrtoint ptr %gro_complete to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gro_complete, align 4
  %tobool23.not = icmp eq ptr %14, null
  br i1 %tobool23.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end25

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end25:                                         ; preds = %lor.lhs.false
  %call28 = tail call i32 %14(ptr noundef %skb, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %phi.cmp = icmp eq i32 %call28, 0
  %call.i91 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i91, label %if.end25.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i94

if.end25.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i94:                                ; preds = %if.end25
  %call1.i92 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i92)
  %tobool.not.i93 = icmp eq i32 %call1.i92, 0
  br i1 %tobool.not.i93, label %land.lhs.true.i94.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i96

land.lhs.true.i94.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i96:                               ; preds = %land.lhs.true.i94
  %.b4.i95 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i95, label %land.lhs.true2.i96.rcu_read_unlock.exit_crit_edge, label %if.then.i97

land.lhs.true2.i96.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i96
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i97:                                      ; preds = %land.lhs.true2.i96
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i97, %land.lhs.true2.i96.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i94.rcu_read_unlock.exit_crit_edge, %if.end25.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  %15 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i.i.i.i.i98 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i98 to ptr
  %preempt_count.i.i.i.i99 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i99 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i99, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i99, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br i1 %phi.cmp, label %rcu_read_unlock.exit.out_crit_edge, label %rcu_read_unlock.exit.if.end60_crit_edge

rcu_read_unlock.exit.if.end60_crit_edge:          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

rcu_read_unlock.exit.out_crit_edge:               ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %19 = ptrtoint ptr %.pn113 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load volatile ptr, ptr %.pn113, align 4
  %cmp16.not = icmp eq ptr %.pn, @offload_base
  br i1 %cmp16.not, label %for.inc.if.then39.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.then39.critedge_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then39.critedge

if.then39.critedge:                               ; preds = %for.inc.if.then39.critedge_crit_edge, %do.end11.if.then39.critedge_crit_edge
  %call.i100 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i100, label %if.then39.critedge.do.end54_crit_edge, label %land.lhs.true.i103

if.then39.critedge.do.end54_crit_edge:            ; preds = %if.then39.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end54

land.lhs.true.i103:                               ; preds = %if.then39.critedge
  %call1.i101 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i101)
  %tobool.not.i102 = icmp eq i32 %call1.i101, 0
  br i1 %tobool.not.i102, label %land.lhs.true.i103.do.end54_crit_edge, label %land.lhs.true2.i105

land.lhs.true.i103.do.end54_crit_edge:            ; preds = %land.lhs.true.i103
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end54

land.lhs.true2.i105:                              ; preds = %land.lhs.true.i103
  %.b4.i104 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i104, label %land.lhs.true2.i105.do.end54_crit_edge, label %if.then.i106

land.lhs.true2.i105.do.end54_crit_edge:           ; preds = %land.lhs.true2.i105
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end54

if.then.i106:                                     ; preds = %land.lhs.true2.i105
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #10
  br label %do.end54

do.end54:                                         ; preds = %if.then.i106, %land.lhs.true2.i105.do.end54_crit_edge, %land.lhs.true.i103.do.end54_crit_edge, %if.then39.critedge.do.end54_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !95
  %20 = tail call i32 @llvm.read_register.i32(metadata !83) #10
  %and.i.i.i.i.i107 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i107 to ptr
  %preempt_count.i.i.i.i108 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i108 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i108, align 4
  %sub.i.i.i109 = add i32 %23, -1
  store volatile i32 %sub.i.i.i109, ptr %preempt_count.i.i.i.i108, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 301, i32 noundef 9, ptr noundef null) #10
  br label %if.end60

if.end60:                                         ; preds = %do.end54, %rcu_read_unlock.exit.if.end60_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

out:                                              ; preds = %rcu_read_unlock.exit.out_crit_edge, %if.then
  %24 = ptrtoint ptr %count to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %count, align 8
  %conv72 = zext i16 %25 to i32
  %rx_list.i = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 10
  %prev.i.i = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %skb, ptr noundef %27, ptr noundef %rx_list.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %out.list_add_tail.exit.i_crit_edge

out.list_add_tail.exit.i_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %skb, ptr %prev.i.i, align 4
  %29 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %rx_list.i, ptr %skb, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %skb, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %skb, ptr %27, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %out.list_add_tail.exit.i_crit_edge
  %rx_count.i = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 11
  %32 = ptrtoint ptr %rx_count.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_count.i, align 8
  %add.i = add i32 %33, %conv72
  store i32 %add.i, ptr %rx_count.i, align 8
  %34 = load i32, ptr @gro_normal_batch, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %34)
  %cmp.not.i = icmp slt i32 %add.i, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %tobool.not.i.i = icmp eq i32 %add.i, 0
  %or.cond.i = or i1 %tobool.not.i.i, %cmp.not.i
  br i1 %or.cond.i, label %list_add_tail.exit.i.cleanup_crit_edge, label %if.end.i.i

list_add_tail.exit.i.cleanup_crit_edge:           ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @netif_receive_skb_list_internal(ptr noundef %rx_list.i) #10
  %35 = ptrtoint ptr %rx_list.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %rx_list.i, ptr %rx_list.i, align 4
  %36 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %rx_list.i, ptr %prev.i.i, align 4
  %37 = ptrtoint ptr %rx_count.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %rx_count.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %list_add_tail.exit.i.cleanup_crit_edge, %if.end60
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_receive_skb_list_internal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_napi_gro_receive_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_skb_free_stolen_head(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfree_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfree_skb_defer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gro_flush_oldest(ptr noundef %napi, ptr nocapture noundef readonly %head) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %prev = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.rhs, label %if.end40

land.rhs:                                         ; preds = %entry
  %.b45 = load i1, ptr @gro_flush_oldest.__already_done, align 1
  br i1 %.b45, label %land.rhs.cleanup_crit_edge, label %if.then, !prof !98

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @gro_flush_oldest.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 453, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end40:                                         ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end40.skb_list_del_init.exit_crit_edge

if.end40.skb_list_del_init.exit_crit_edge:        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_list_del_init.exit

if.end.i.i:                                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %skb_list_del_init.exit

skb_list_del_init.exit:                           ; preds = %if.end.i.i, %if.end40.skb_list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %1, align 8
  tail call fastcc void @napi_gro_complete(ptr noundef %napi, ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %skb_list_del_init.exit, %if.then, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @skb_metadata_dst_cmp(ptr nocapture noundef readonly %skb_a, ptr nocapture noundef readonly %skb_b) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb_a, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb_b, i32 0, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %or = or i32 %5, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool.not = icmp eq i32 %or, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.skb_dst.exit_crit_edge, label %land.lhs.true.i

if.end.skb_dst.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !96

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %if.end.skb_dst.exit_crit_edge
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %0, align 8
  %and25.i = and i32 %7, -2
  %8 = inttoptr i32 %and25.i to ptr
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %3, align 8
  %and.i30 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i30)
  %tobool.not.i31 = icmp eq i32 %and.i30, 0
  br i1 %tobool.not.i31, label %skb_dst.exit.skb_dst.exit40_crit_edge, label %land.lhs.true.i34

skb_dst.exit.skb_dst.exit40_crit_edge:            ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit40

land.lhs.true.i34:                                ; preds = %skb_dst.exit
  %call.i32 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool1.not.i33 = icmp eq i32 %call.i32, 0
  br i1 %tobool1.not.i33, label %land.rhs.i37, label %land.lhs.true.i34.skb_dst.exit40_crit_edge

land.lhs.true.i34.skb_dst.exit40_crit_edge:       ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit40

land.rhs.i37:                                     ; preds = %land.lhs.true.i34
  %call2.i35 = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i35)
  %tobool3.not.i36 = icmp eq i32 %call2.i35, 0
  br i1 %tobool3.not.i36, label %do.end.i38, label %land.rhs.i37.skb_dst.exit40_crit_edge, !prof !96

land.rhs.i37.skb_dst.exit40_crit_edge:            ; preds = %land.rhs.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_dst.exit40

do.end.i38:                                       ; preds = %land.rhs.i37
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 1013, i32 noundef 9, ptr noundef null) #10
  br label %skb_dst.exit40

skb_dst.exit40:                                   ; preds = %do.end.i38, %land.rhs.i37.skb_dst.exit40_crit_edge, %land.lhs.true.i34.skb_dst.exit40_crit_edge, %skb_dst.exit.skb_dst.exit40_crit_edge
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %3, align 8
  %and25.i39 = and i32 %12, -2
  %13 = inttoptr i32 %and25.i39 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool3.not = icmp ne i32 %and25.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i39)
  %tobool4.not = icmp eq i32 %and25.i39, 0
  %cmp.not = xor i1 %tobool3.not, %tobool4.not
  br i1 %cmp.not, label %lor.lhs.false, label %skb_dst.exit40.cleanup_crit_edge

skb_dst.exit40.cleanup_crit_edge:                 ; preds = %skb_dst.exit40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %skb_dst.exit40
  %type = getelementptr inbounds %struct.metadata_dst, ptr %8, i32 0, i32 1
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 8
  %type7 = getelementptr inbounds %struct.metadata_dst, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %type7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type7, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp8.not = icmp eq i32 %15, %17
  br i1 %cmp8.not, label %if.end10, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  %18 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %15, label %if.end10.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb14
  ]

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %u = getelementptr inbounds %struct.metadata_dst, ptr %8, i32 0, i32 2
  %u12 = getelementptr inbounds %struct.metadata_dst, ptr %13, i32 0, i32 2
  %call13 = tail call i32 @memcmp(ptr noundef dereferenceable(8) %u, ptr noundef dereferenceable(8) %u12, i32 noundef 8) #16
  br label %cleanup

sw.bb14:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %u15 = getelementptr inbounds %struct.metadata_dst, ptr %8, i32 0, i32 2
  %u16 = getelementptr inbounds %struct.metadata_dst, ptr %13, i32 0, i32 2
  %options_len = getelementptr inbounds %struct.metadata_dst, ptr %8, i32 0, i32 2, i32 0, i32 2
  %19 = ptrtoint ptr %options_len to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %options_len, align 8
  %conv = zext i8 %20 to i32
  %add = add nuw nsw i32 %conv, 72
  %call18 = tail call i32 @memcmp(ptr noundef %u15, ptr noundef %u16, i32 noundef %add) #16
  br label %cleanup

cleanup:                                          ; preds = %sw.bb14, %sw.bb, %if.end10.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %skb_dst.exit40.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %sw.bb14 ], [ %call13, %sw.bb ], [ 0, %entry.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %skb_dst.exit40.cleanup_crit_edge ], [ 1, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__skb_frag_unref(ptr nocapture noundef readonly %frag, i1 noundef zeroext %recycle) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %frag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %frag, align 4
  br i1 %recycle, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call zeroext i1 @page_pool_return_skb_page(ptr noundef %1) #10
  br i1 %call1, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !98

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  %7 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.i.i.i = icmp eq i32 %8, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !96

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.12) #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #10, !srcloc !115
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #10, !srcloc !117
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@__skb_frag_unref, %if.then.i.i.i.i.i)) #10
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !101

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %6, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #10
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__put_page(ptr noundef %6) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @page_pool_return_skb_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_napi_gro_receive_exit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__napi_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @napi_reuse_skb(ptr nocapture noundef %napi, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pfmemalloc = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %0 = ptrtoint ptr %pfmemalloc to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %pfmemalloc, align 2
  %1 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %__skb_pull.exit, label %if.then, !prof !98

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef %skb) #10
  br label %return

__skb_pull.exit:                                  ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %3, %5
  store i32 %5, ptr %len.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %sub.i
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i.neg = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  %sub = add i32 %sub.ptr.sub.i.neg, 130
  %add.ptr.i55 = getelementptr i8, ptr %add.ptr.i, i32 %sub
  store ptr %add.ptr.i55, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %11, i32 %sub
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %12 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  %bf.clear.i = and i32 %bf.load.i, 2147483647
  store i32 %bf.clear.i, ptr %vlan_present.i, align 2
  %dev = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 7
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 8
  %15 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %15, align 8
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %17 = ptrtoint ptr %skb_iif to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %skb_iif, align 8
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %18 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load5 = load i16, ptr %pkt_type, align 8
  %bf.clear8 = and i16 %bf.load5, 8187
  store i16 %bf.clear8, ptr %pkt_type, align 8
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %end.i, align 4
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %gso_type to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %gso_type, align 8
  %22 = load ptr, ptr %end.i, align 4
  %23 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i58 = ptrtoint ptr %22 to i32
  %sub.ptr.rhs.cast.i59 = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i60 = add i32 %sub.ptr.lhs.cast.i58, 512
  %add12 = sub i32 %sub.ptr.sub.i60, %sub.ptr.rhs.cast.i59
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %24 = ptrtoint ptr %truesize to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add12, ptr %truesize, align 8
  %bf.load13 = load i32, ptr %vlan_present.i, align 2
  %25 = and i32 %bf.load13, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool16.not = icmp eq i32 %25, 0
  br i1 %tobool16.not, label %__skb_pull.exit.if.end28_crit_edge, label %if.then23, !prof !98

__skb_pull.exit.if.end28_crit_edge:               ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.then23:                                        ; preds = %__skb_pull.exit
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %26 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %27(ptr noundef %skb) #10
  %28 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %destructor.i, align 4
  %29 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %29, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %if.then23
  %31 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool3.not.i = icmp eq ptr %33, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !98

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #10, !srcloc !119
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i
  %active_extensions.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %34 = ptrtoint ptr %active_extensions.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %active_extensions.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i61 = icmp eq i8 %35, 0
  br i1 %tobool.not.i61, label %skb_orphan.exit.skb_ext_reset.exit_crit_edge, label %if.then.i62, !prof !98

skb_orphan.exit.skb_ext_reset.exit_crit_edge:     ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_ext_reset.exit

if.then.i62:                                      ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #12
  %extensions.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %36 = ptrtoint ptr %extensions.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %extensions.i, align 8
  tail call void @__skb_ext_put(ptr noundef %37) #10
  %38 = ptrtoint ptr %active_extensions.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %active_extensions.i, align 1
  br label %skb_ext_reset.exit

skb_ext_reset.exit:                               ; preds = %if.then.i62, %skb_orphan.exit.skb_ext_reset.exit_crit_edge
  tail call fastcc void @nf_reset_ct(ptr noundef %skb)
  %39 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %bf.load25 = load i32, ptr %vlan_present.i, align 2
  %bf.clear26 = and i32 %bf.load25, -4097
  store i32 %bf.clear26, ptr %vlan_present.i, align 2
  br label %if.end28

if.end28:                                         ; preds = %skb_ext_reset.exit, %__skb_pull.exit.if.end28_crit_edge
  %skb29 = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 9
  %40 = ptrtoint ptr %skb29 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %skb, ptr %skb29, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nf_reset_ct(ptr nocapture noundef %skb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %_nfct.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i, align 8
  %and.i = and i32 %1, -8
  %2 = inttoptr i32 %and.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.nf_conntrack_put.exit_crit_edge, label %land.lhs.true.i

entry.nf_conntrack_put.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_conntrack_put.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %2, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !120
  tail call void @llvm.prefetch.p0(ptr nonnull %2, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %2, ptr nonnull %2, i32 1, ptr nonnull elementtype(i32) %2) #10, !srcloc !121
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.nf_conntrack_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !98

if.end5.i.i.i.i.nf_conntrack_put.exit_crit_edge:  ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nf_conntrack_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %2, i32 noundef 3) #10
  br label %nf_conntrack_put.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void @nf_conntrack_destroy(ptr noundef nonnull %2) #10
  br label %nf_conntrack_put.exit

nf_conntrack_put.exit:                            ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.nf_conntrack_put.exit_crit_edge, %entry.nf_conntrack_put.exit_crit_edge
  %4 = ptrtoint ptr %_nfct.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %_nfct.i, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_ext_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_napi_gro_frags_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_napi_gro_frags_exit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !53, !55, !56, !57, !58, !60, !61, !63, !65, !67, !69, !71, !72, !74, !75, !76, !77, !79, !80, !82}
!llvm.named.register.sp = !{!83}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @gro_normal_batch, !1, !"gro_normal_batch", i1 false, i1 false}
!1 = !{!"../net/core/gro.c", i32 15, i32 5}
!2 = !{ptr @__ksymtab_dev_add_offload, !3, !"__ksymtab_dev_add_offload", i1 false, i1 false}
!3 = !{!"../net/core/gro.c", i32 41, i32 1}
!4 = !{ptr @__ksymtab_dev_remove_offload, !5, !"__ksymtab_dev_remove_offload", i1 false, i1 false}
!5 = !{!"../net/core/gro.c", i32 93, i32 1}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/core/gro.c", i32 108, i32 2}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__ksymtab_skb_eth_gso_segment, !11, !"__ksymtab_skb_eth_gso_segment", i1 false, i1 false}
!11 = !{!"../net/core/gro.c", i32 118, i32 1}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../net/core/gro.c", i32 139, i32 2}
!14 = !{ptr @__ksymtab_skb_mac_gso_segment, !15, !"__ksymtab_skb_mac_gso_segment", i1 false, i1 false}
!15 = !{!"../net/core/gro.c", i32 151, i32 1}
!16 = !{ptr @__ksymtab_napi_gro_flush, !17, !"__ksymtab_napi_gro_flush", i1 false, i1 false}
!17 = !{!"../net/core/gro.c", i32 343, i32 1}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../net/core/gro.c", i32 578, i32 2}
!20 = !{ptr @__ksymtab_gro_find_receive_by_type, !21, !"__ksymtab_gro_find_receive_by_type", i1 false, i1 false}
!21 = !{!"../net/core/gro.c", i32 585, i32 1}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../net/core/gro.c", i32 592, i32 2}
!24 = !{ptr @__ksymtab_gro_find_complete_by_type, !25, !"__ksymtab_gro_find_complete_by_type", i1 false, i1 false}
!25 = !{!"../net/core/gro.c", i32 599, i32 1}
!26 = !{ptr @__ksymtab_napi_gro_receive, !27, !"__ksymtab_napi_gro_receive", i1 false, i1 false}
!27 = !{!"../net/core/gro.c", i32 642, i32 1}
!28 = !{ptr @__ksymtab_napi_get_frags, !29, !"__ksymtab_napi_get_frags", i1 false, i1 false}
!29 = !{!"../net/core/gro.c", i32 686, i32 1}
!30 = !{ptr @__ksymtab_napi_gro_frags, !31, !"__ksymtab_napi_gro_frags", i1 false, i1 false}
!31 = !{!"../net/core/gro.c", i32 769, i32 1}
!32 = !{ptr @__ksymtab___skb_gro_checksum_complete, !33, !"__ksymtab___skb_gro_checksum_complete", i1 false, i1 false}
!33 = !{!"../net/core/gro.c", i32 795, i32 1}
!34 = !{ptr @.str.2, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/core/gro.c", i32 12, i32 8}
!36 = !{ptr @offload_lock, !35, !"offload_lock", i1 false, i1 false}
!37 = !{ptr @offload_base, !38, !"offload_base", i1 false, i1 false}
!38 = !{!"../net/core/gro.c", i32 13, i32 25}
!39 = !{ptr @.str.3, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/core/gro.c", i32 70, i32 2}
!41 = !{ptr @.str.4, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @__dev_remove_offload._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @__dev_remove_offload._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!46 = !{ptr @.str.5, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.6, !45, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!50 = !{ptr @.str.7, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../net/core/gro.c", i32 289, i32 2}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../include/trace/events/net.h", i32 235, i32 1}
!55 = !{ptr @.str.8, !54, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!57 = !{ptr @.str.9, !54, !"<string literal>", i1 false, i1 false}
!58 = distinct !{null, !59, !"__already_done", i1 false, i1 false}
!59 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!60 = !{ptr @.str.10, !59, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../net/core/gro.c", i32 481, i32 2}
!63 = !{ptr @.str.11, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../net/core/gro.c", i32 453, i32 6}
!67 = !{ptr @.str.12, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/linux/mm.h", i32 717, i32 2}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../include/trace/events/net.h", i32 294, i32 1}
!71 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!72 = !{ptr @.str.13, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/core/gro.c", i32 734, i32 4}
!74 = !{ptr @.str.14, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @napi_frags_skb._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @napi_frags_skb._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../include/trace/events/net.h", i32 228, i32 1}
!79 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!80 = distinct !{null, !81, !"__already_done", i1 false, i1 false}
!81 = !{!"../include/trace/events/net.h", i32 287, i32 1}
!82 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!83 = !{!"sp"}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{i64 2149704889}
!94 = !{i64 2149679497}
!95 = !{i64 2149679763}
!96 = !{!"branch_weights", i32 1, i32 2000}
!97 = !{i64 2154598659, i64 2154599147, i64 2154598696, i64 2154598752, i64 2154598786, i64 2154598810, i64 2154598851, i64 2154598872, i64 2154598900, i64 2154598934}
!98 = !{!"branch_weights", i32 2000, i32 1}
!99 = !{i32 0, i32 33}
!100 = !{i32 0, i32 5}
!101 = !{i64 2148864675, i64 2148864680, i64 2148864693, i64 2148864737, i64 2148864771, i64 2148864792}
!102 = !{i64 2158227724}
!103 = !{i64 2158227937}
!104 = !{i64 2149688056}
!105 = !{i64 2149689092}
!106 = !{!"branch_weights", i32 4001, i32 1}
!107 = !{i64 2158566117, i64 2158566596, i64 2158566154, i64 2158566210, i64 2158566244, i64 2158566268, i64 2158566309, i64 2158566330, i64 2158566358, i64 2158566392}
!108 = !{i64 2158330705}
!109 = !{i64 2158330916}
!110 = !{i64 2158207050}
!111 = !{i64 2158207259}
!112 = !{i64 2158314472}
!113 = !{i64 2158314679}
!114 = !{i64 6483771}
!115 = !{i64 2153318686, i64 2153319169, i64 2153318723, i64 2153318779, i64 2153318813, i64 2153318837, i64 2153318878, i64 2153318899, i64 2153318927, i64 2153318961}
!116 = !{i64 2148471312}
!117 = !{i64 2148386045, i64 2148386077, i64 2148386106, i64 2148386140, i64 2148386171, i64 2148386194}
!118 = !{i64 2148471541}
!119 = !{i64 2154613709, i64 2154614197, i64 2154613746, i64 2154613802, i64 2154613836, i64 2154613860, i64 2154613901, i64 2154613922, i64 2154613950, i64 2154613984}
!120 = !{i64 2148472391}
!121 = !{i64 2148386855, i64 2148386887, i64 2148386916, i64 2148386950, i64 2148386981, i64 2148387004}
!122 = !{i64 2150554044}
