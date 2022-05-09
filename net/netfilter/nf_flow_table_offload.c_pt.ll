; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_flow_table_offload.c_pt.bc'
source_filename = "../net/netfilter/nf_flow_table_offload.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nf_flow_rule_route_ipv4\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_flow_rule_route_ipv4\09\09\09\09"
module asm "\09.long\09__crc_nf_flow_rule_route_ipv4\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_flow_rule_route_ipv4:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_flow_rule_route_ipv4\22\09\09\09\09\09"
module asm "__kstrtabns_nf_flow_rule_route_ipv4:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_flow_rule_route_ipv6\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_flow_rule_route_ipv6\09\09\09\09"
module asm "\09.long\09__crc_nf_flow_rule_route_ipv6\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_flow_rule_route_ipv6:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_flow_rule_route_ipv6\22\09\09\09\09\09"
module asm "__kstrtabns_nf_flow_rule_route_ipv6:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_flow_table_offload_setup\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_flow_table_offload_setup\09\09\09\09"
module asm "\09.long\09__crc_nf_flow_table_offload_setup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_flow_table_offload_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_flow_table_offload_setup\22\09\09\09\09\09"
module asm "__kstrtabns_nf_flow_table_offload_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%struct.flow_offload = type { [2 x %struct.flow_offload_tuple_rhash], ptr, i32, i16, i32, %struct.callback_head }
%struct.flow_offload_tuple_rhash = type { %struct.rhash_head, %struct.flow_offload_tuple }
%struct.rhash_head = type { ptr }
%struct.flow_offload_tuple = type { %union.anon.171, %union.anon.172, %struct.anon.173, i32, i8, i8, [2 x %struct.anon.174], %struct.anon.175, i8, i8, i16, %union.anon.176 }
%union.anon.171 = type { %struct.in6_addr }
%union.anon.172 = type { %struct.in6_addr }
%struct.anon.173 = type { i16, i16 }
%struct.anon.174 = type { i16, i16 }
%struct.anon.175 = type {}
%union.anon.176 = type { %struct.anon.178 }
%struct.anon.178 = type { i32, i32, [6 x i8], [6 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.nf_flow_rule = type { %struct.nf_flow_match, ptr }
%struct.nf_flow_match = type { %struct.flow_dissector, %struct.nf_flow_key, %struct.nf_flow_key }
%struct.flow_dissector = type { i32, [28 x i16] }
%struct.nf_flow_key = type { %struct.flow_dissector_key_meta, %struct.flow_dissector_key_control, %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan, %union.anon.182, %struct.flow_dissector_key_keyid, %union.anon.183, %struct.flow_dissector_key_tcp, %struct.flow_dissector_key_ports }
%struct.flow_dissector_key_meta = type { i32, i16 }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_vlan = type { %union.anon.180, i16 }
%union.anon.180 = type { %struct.anon.181 }
%struct.anon.181 = type { i16 }
%union.anon.182 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.flow_dissector_key_keyid = type { i32 }
%union.anon.183 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_tcp = type { i16 }
%struct.flow_dissector_key_ports = type { %union.anon.184 }
%union.anon.184 = type { i32 }
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.186, ptr }
%union.anon.186 = type { %struct.anon.194 }
%struct.anon.194 = type { i32, i64, i64, i64, i32 }
%struct.anon.188 = type { i32, i32, i32, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.atomic_t = type { i32 }
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, ptr, ptr, %struct.callback_head, [0 x i8] }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.189, i16, i8, i8, i32, i16, i16 }
%union.anon.189 = type { %struct.anon.191 }
%struct.anon.191 = type { %struct.in6_addr, %struct.in6_addr }
%struct.dst_cache = type { ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.anon.187 = type { i16, i16, i8 }
%struct.flow_offload_work = type { %struct.list_head, i32, i32, ptr, ptr, %struct.work_struct }
%struct.nf_flowtable = type { %struct.list_head, %struct.rhashtable, i32, ptr, %struct.delayed_work, i32, %struct.flow_block, %struct.rw_semaphore, %struct.possible_net_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.flow_block = type { %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.flow_block_offload = type { i32, i32, i8, i8, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.flow_cls_offload = type { %struct.flow_cls_common_offload, i32, i32, ptr, %struct.flow_stats, i32 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.162, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.154 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.154 = type { %union.nf_inet_addr, %union.anon.155, i8, i8 }
%union.anon.155 = type { i16 }
%struct.anon.162 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.anon.185 = type { i16, i16 }
%struct.nf_flowtable_type = type { %struct.list_head, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.flow_block_cb = type { %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.flow_block_indr, i32 }
%struct.flow_block_indr = type { %struct.list_head, ptr, ptr, i32, ptr, ptr, ptr }

@__kstrtab_nf_flow_rule_route_ipv4 = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_flow_rule_route_ipv4 = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_flow_rule_route_ipv4 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_flow_rule_route_ipv4 to i32), ptr @__kstrtab_nf_flow_rule_route_ipv4, ptr @__kstrtabns_nf_flow_rule_route_ipv4 }, section "___ksymtab_gpl+nf_flow_rule_route_ipv4", align 4
@__kstrtab_nf_flow_rule_route_ipv6 = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_flow_rule_route_ipv6 = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_flow_rule_route_ipv6 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_flow_rule_route_ipv6 to i32), ptr @__kstrtab_nf_flow_rule_route_ipv6, ptr @__kstrtabns_nf_flow_rule_route_ipv6 }, section "___ksymtab_gpl+nf_flow_rule_route_ipv6", align 4
@nf_flow_offload_add_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@nf_flow_offload_del_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@nf_flow_offload_stats_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_nf_flow_table_offload_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_flow_table_offload_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_flow_table_offload_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_flow_table_offload_setup to i32), ptr @__kstrtab_nf_flow_table_offload_setup, ptr @__kstrtabns_nf_flow_table_offload_setup }, section "___ksymtab_gpl+nf_flow_table_offload_setup", align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nf_ft_offload_add\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nf_ft_offload_del\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nf_ft_offload_stats\00", [44 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@nf_flow_offload_work_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&offload->work)\00", [62 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@flow_offload_work_handler.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"net/netfilter/nf_flow_table_offload.c\00", [58 x i8] zeroinitializer }, align 32
@in6addr_any = external dso_local constant %struct.in6_addr, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@nf_flow_table_block_setup.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34916]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34916]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34916]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@___asan_gen_.24 = private unnamed_addr constant [23 x i8] c"nf_flow_offload_add_wq\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 16, i32 33 }
@___asan_gen_.27 = private unnamed_addr constant [23 x i8] c"nf_flow_offload_del_wq\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 17, i32 33 }
@___asan_gen_.30 = private unnamed_addr constant [25 x i8] c"nf_flow_offload_stats_wq\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 18, i32 33 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 1176, i32 44 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 1181, i32 44 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 1186, i32 46 }
@___asan_gen_.42 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 1009, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [41 x i8] c"../net/netfilter/nf_flow_table_offload.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 973, i32 4 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab_nf_flow_rule_route_ipv4, ptr @__ksymtab_nf_flow_rule_route_ipv6, ptr @__ksymtab_nf_flow_table_offload_setup, ptr @nf_flow_offload_add_wq, ptr @nf_flow_offload_del_wq, ptr @nf_flow_offload_stats_wq, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @nf_flow_offload_work_alloc.__key, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_flow_offload_add_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_flow_offload_del_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_flow_offload_stats_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_flow_offload_work_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_flow_rule_route_ipv4(ptr noundef %net, ptr noundef %flow, i32 noundef %dir, ptr nocapture noundef readonly %flow_rule) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @nf_flow_rule_route_common(ptr noundef %net, ptr noundef %flow, i32 noundef %dir, ptr noundef %flow_rule)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.flow_offload, ptr %flow, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %if.end
  %rule.i.i = getelementptr inbounds %struct.nf_flow_rule, ptr %flow_rule, i32 0, i32 1
  %2 = ptrtoint ptr %rule.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rule.i.i, align 4
  %action.i.i = getelementptr inbounds %struct.flow_rule, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %action.i.i, align 8
  %inc.i.i = add i32 %5, 1
  store i32 %inc.i.i, ptr %action.i.i, align 8
  %6 = load ptr, ptr %rule.i.i, align 4
  %entries.i.i = getelementptr inbounds %struct.flow_rule, ptr %6, i32 1
  %arrayidx.i.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i.i, i32 0, i32 %5
  %7 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %dir, label %if.then2.flow_offload_ipv4_snat.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
  ]

if.then2.flow_offload_ipv4_snat.exit_crit_edge:   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_offload_ipv4_snat.exit

sw.bb.i:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %8 = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 1, i32 1, i32 1
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %tuple5.i = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %flow, i32 0, i32 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb.i
  %storemerge.in.i = phi ptr [ %tuple5.i, %sw.bb2.i ], [ %8, %sw.bb.i ]
  %offset.0.i = phi i32 [ 16, %sw.bb2.i ], [ 12, %sw.bb.i ]
  %9 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 13, ptr %arrayidx.i.i, align 8
  %11 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %11, align 8
  %offset3.i.i = getelementptr inbounds %struct.anon.188, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %offset.0.i, ptr %offset3.i.i, align 4
  %mask4.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i.i, i32 0, i32 5, i32 0, i32 1
  %14 = ptrtoint ptr %mask4.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %mask4.i.i, align 8
  %val.i.i = getelementptr inbounds %struct.anon.188, ptr %11, i32 0, i32 3
  %15 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %storemerge.i, ptr %val.i.i, align 4
  br label %flow_offload_ipv4_snat.exit

flow_offload_ipv4_snat.exit:                      ; preds = %sw.epilog.i, %if.then2.flow_offload_ipv4_snat.exit_crit_edge
  %16 = ptrtoint ptr %rule.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rule.i.i, align 4
  %action.i.i49 = getelementptr inbounds %struct.flow_rule, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %action.i.i49 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %action.i.i49, align 8
  %inc.i.i50 = add i32 %19, 1
  store i32 %inc.i.i50, ptr %action.i.i49, align 8
  %20 = load ptr, ptr %rule.i.i, align 4
  %entries.i.i51 = getelementptr inbounds %struct.flow_rule, ptr %20, i32 1
  %arrayidx.i.i52 = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i.i51, i32 0, i32 %19
  %21 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %dir, label %flow_offload_ipv4_snat.exit.if.end3_crit_edge [
    i32 0, label %sw.bb.i53
    i32 1, label %sw.bb2.i54
  ]

flow_offload_ipv4_snat.exit.if.end3_crit_edge:    ; preds = %flow_offload_ipv4_snat.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

sw.bb.i53:                                        ; preds = %flow_offload_ipv4_snat.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dst_port.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 1, i32 1, i32 2, i32 1
  %22 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %dst_port.i, align 2
  %conv.i = zext i16 %23 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  br label %sw.epilog.i59

sw.bb2.i54:                                       ; preds = %flow_offload_ipv4_snat.exit
  call void @__sanitizer_cov_trace_pc() #10
  %24 = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %flow, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %24, align 4
  %conv6.i = zext i16 %26 to i32
  br label %sw.epilog.i59

sw.epilog.i59:                                    ; preds = %sw.bb2.i54, %sw.bb.i53
  %storemerge1.i = phi i32 [ %conv6.i, %sw.bb2.i54 ], [ %shl.i, %sw.bb.i53 ]
  %storemerge.i55 = phi i32 [ -65536, %sw.bb2.i54 ], [ 65535, %sw.bb.i53 ]
  %l4proto.i.i = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %flow, i32 0, i32 1, i32 5
  %27 = ptrtoint ptr %l4proto.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %l4proto.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %28)
  %switch.selectcmp.i.i = icmp eq i8 %28, 17
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 5, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %28)
  %switch.selectcmp3.i.i = icmp eq i8 %28, 6
  %switch.select4.i.i = select i1 %switch.selectcmp3.i.i, i32 4, i32 %switch.select.i.i
  %29 = ptrtoint ptr %arrayidx.i.i52 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 13, ptr %arrayidx.i.i52, align 8
  %30 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i.i52, i32 0, i32 5
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %switch.select4.i.i, ptr %30, align 8
  %offset3.i.i56 = getelementptr inbounds %struct.anon.188, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %offset3.i.i56 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %offset3.i.i56, align 4
  %mask4.i.i57 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i.i52, i32 0, i32 5, i32 0, i32 1
  %33 = ptrtoint ptr %mask4.i.i57 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %storemerge.i55, ptr %mask4.i.i57, align 8
  %val.i.i58 = getelementptr inbounds %struct.anon.188, ptr %30, i32 0, i32 3
  %34 = ptrtoint ptr %val.i.i58 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %storemerge1.i, ptr %val.i.i58, align 4
  br label %if.end3

if.end3:                                          ; preds = %sw.epilog.i59, %flow_offload_ipv4_snat.exit.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %flags, align 4
  %37 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool6.not = icmp eq i32 %37, 0
  br i1 %tobool6.not, label %if.end3.if.end8_crit_edge, label %if.then7

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %if.end3
  %rule.i.i60 = getelementptr inbounds %struct.nf_flow_rule, ptr %flow_rule, i32 0, i32 1
  %38 = ptrtoint ptr %rule.i.i60 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rule.i.i60, align 4
  %action.i.i61 = getelementptr inbounds %struct.flow_rule, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %action.i.i61 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %action.i.i61, align 8
  %inc.i.i62 = add i32 %41, 1
  store i32 %inc.i.i62, ptr %action.i.i61, align 8
  %42 = load ptr, ptr %rule.i.i60, align 4
  %entries.i.i63 = getelementptr inbounds %struct.flow_rule, ptr %42, i32 1
  %arrayidx.i.i64 = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i.i63, i32 0, i32 %41
  %43 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %dir, label %if.then7.flow_offload_ipv4_dnat.exit_crit_edge [
    i32 0, label %sw.bb.i65
    i32 1, label %sw.bb2.i66
  ]

if.then7.flow_offload_ipv4_dnat.exit_crit_edge:   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_offload_ipv4_dnat.exit

sw.bb.i65:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %tuple.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 1, i32 1
  br label %sw.epilog.i73

sw.bb2.i66:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %44 = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %flow, i32 0, i32 1, i32 1
  br label %sw.epilog.i73

sw.epilog.i73:                                    ; preds = %sw.bb2.i66, %sw.bb.i65
  %storemerge.in.i67 = phi ptr [ %44, %sw.bb2.i66 ], [ %tuple.i, %sw.bb.i65 ]
  %offset.0.i68 = phi i32 [ 12, %sw.bb2.i66 ], [ 16, %sw.bb.i65 ]
  %45 = ptrtoint ptr %storemerge.in.i67 to i32
  call void @__asan_load4_noabort(i32 %45)
  %storemerge.i69 = load i32, ptr %storemerge.in.i67, align 4
  %46 = ptrtoint ptr %arrayidx.i.i64 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 13, ptr %arrayidx.i.i64, align 8
  %47 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i.i64, i32 0, i32 5
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %47, align 8
  %offset3.i.i70 = getelementptr inbounds %struct.anon.188, ptr %47, i32 0, i32 1
  %49 = ptrtoint ptr %offset3.i.i70 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %offset.0.i68, ptr %offset3.i.i70, align 4
  %mask4.i.i71 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i.i64, i32 0, i32 5, i32 0, i32 1
  %50 = ptrtoint ptr %mask4.i.i71 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %mask4.i.i71, align 8
  %val.i.i72 = getelementptr inbounds %struct.anon.188, ptr %47, i32 0, i32 3
  %51 = ptrtoint ptr %val.i.i72 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %storemerge.i69, ptr %val.i.i72, align 4
  br label %flow_offload_ipv4_dnat.exit

flow_offload_ipv4_dnat.exit:                      ; preds = %sw.epilog.i73, %if.then7.flow_offload_ipv4_dnat.exit_crit_edge
  %52 = ptrtoint ptr %rule.i.i60 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rule.i.i60, align 4
  %action.i.i75 = getelementptr inbounds %struct.flow_rule, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %action.i.i75 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %action.i.i75, align 8
  %inc.i.i76 = add i32 %55, 1
  store i32 %inc.i.i76, ptr %action.i.i75, align 8
  %56 = load ptr, ptr %rule.i.i60, align 4
  %entries.i.i77 = getelementptr inbounds %struct.flow_rule, ptr %56, i32 1
  %arrayidx.i.i78 = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i.i77, i32 0, i32 %55
  %57 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %dir, label %flow_offload_ipv4_dnat.exit.if.end8_crit_edge [
    i32 0, label %sw.bb.i80
    i32 1, label %sw.bb2.i84
  ]

flow_offload_ipv4_dnat.exit.if.end8_crit_edge:    ; preds = %flow_offload_ipv4_dnat.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

sw.bb.i80:                                        ; preds = %flow_offload_ipv4_dnat.exit
  call void @__sanitizer_cov_trace_pc() #10
  %58 = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 1, i32 1, i32 2
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %58, align 4
  %conv.i79 = zext i16 %60 to i32
  br label %sw.epilog.i95

sw.bb2.i84:                                       ; preds = %flow_offload_ipv4_dnat.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dst_port.i81 = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %flow, i32 0, i32 1, i32 2, i32 1
  %61 = ptrtoint ptr %dst_port.i81 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %dst_port.i81, align 2
  %conv6.i82 = zext i16 %62 to i32
  %shl.i83 = shl nuw i32 %conv6.i82, 16
  br label %sw.epilog.i95

sw.epilog.i95:                                    ; preds = %sw.bb2.i84, %sw.bb.i80
  %storemerge1.i85 = phi i32 [ %shl.i83, %sw.bb2.i84 ], [ %conv.i79, %sw.bb.i80 ]
  %storemerge.i86 = phi i32 [ 65535, %sw.bb2.i84 ], [ -65536, %sw.bb.i80 ]
  %l4proto.i.i87 = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %flow, i32 0, i32 1, i32 5
  %63 = ptrtoint ptr %l4proto.i.i87 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %l4proto.i.i87, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %64)
  %switch.selectcmp.i.i88 = icmp eq i8 %64, 17
  %switch.select.i.i89 = select i1 %switch.selectcmp.i.i88, i32 5, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %64)
  %switch.selectcmp3.i.i90 = icmp eq i8 %64, 6
  %switch.select4.i.i91 = select i1 %switch.selectcmp3.i.i90, i32 4, i32 %switch.select.i.i89
  %65 = ptrtoint ptr %arrayidx.i.i78 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 13, ptr %arrayidx.i.i78, align 8
  %66 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i.i78, i32 0, i32 5
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %switch.select4.i.i91, ptr %66, align 8
  %offset3.i.i92 = getelementptr inbounds %struct.anon.188, ptr %66, i32 0, i32 1
  %68 = ptrtoint ptr %offset3.i.i92 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %offset3.i.i92, align 4
  %mask4.i.i93 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i.i78, i32 0, i32 5, i32 0, i32 1
  %69 = ptrtoint ptr %mask4.i.i93 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %storemerge.i86, ptr %mask4.i.i93, align 8
  %val.i.i94 = getelementptr inbounds %struct.anon.188, ptr %66, i32 0, i32 3
  %70 = ptrtoint ptr %val.i.i94 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %storemerge1.i85, ptr %val.i.i94, align 4
  br label %if.end8

if.end8:                                          ; preds = %sw.epilog.i95, %flow_offload_ipv4_dnat.exit.if.end8_crit_edge, %if.end3.if.end8_crit_edge
  %71 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %flags, align 4
  %and1.i45 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i45)
  %tobool11.not = icmp eq i32 %and1.i45, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %if.end8.if.then15_crit_edge

if.end8.if.then15_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

lor.lhs.false:                                    ; preds = %if.end8
  %73 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %flags, align 4
  %75 = and i32 %74, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool14.not = icmp eq i32 %75, 0
  br i1 %tobool14.not, label %lor.lhs.false.if.end16_crit_edge, label %lor.lhs.false.if.then15_crit_edge

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %if.end8.if.then15_crit_edge
  %l4proto.i = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %flow, i32 0, i32 1, i32 5
  %76 = ptrtoint ptr %l4proto.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %l4proto.i, align 1
  %rule.i.i96 = getelementptr inbounds %struct.nf_flow_rule, ptr %flow_rule, i32 0, i32 1
  %78 = ptrtoint ptr %rule.i.i96 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rule.i.i96, align 4
  %action.i.i97 = getelementptr inbounds %struct.flow_rule, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %action.i.i97 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %action.i.i97, align 8
  %inc.i.i98 = add i32 %81, 1
  store i32 %inc.i.i98, ptr %action.i.i97, align 8
  %82 = load ptr, ptr %rule.i.i96, align 4
  %entries.i.i99 = getelementptr inbounds %struct.flow_rule, ptr %82, i32 1
  %arrayidx.i.i100 = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i.i99, i32 0, i32 %81
  %83 = ptrtoint ptr %arrayidx.i.i100 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 15, ptr %arrayidx.i.i100, align 8
  %84 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i.i100, i32 0, i32 5
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %84, align 8
  %86 = zext i8 %77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %77, label %if.then15.if.end16_crit_edge [
    i8 6, label %if.then15.sw.epilog.sink.split.i_crit_edge
    i8 17, label %sw.bb2.i101
  ]

if.then15.sw.epilog.sink.split.i_crit_edge:       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

if.then15.if.end16_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

sw.bb2.i101:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb2.i101, %if.then15.sw.epilog.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 17, %sw.bb2.i101 ], [ 9, %if.then15.sw.epilog.sink.split.i_crit_edge ]
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %.sink.i, ptr %84, align 8
  br label %if.end16

if.end16:                                         ; preds = %sw.epilog.sink.split.i, %if.then15.if.end16_crit_edge, %lor.lhs.false.if.end16_crit_edge
  %xmit_type.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 %dir, i32 1, i32 8
  %88 = ptrtoint ptr %xmit_type.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load.i = load i8, ptr %xmit_type.i, align 2
  %bf.lshr.i = lshr i8 %bf.load.i, 3
  %bf.clear.i = and i8 %bf.lshr.i, 7
  %conv.i103 = zext i8 %bf.clear.i to i32
  %89 = zext i32 %conv.i103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %conv.i103, label %if.end16.return_crit_edge [
    i32 3, label %sw.bb.i104
    i32 1, label %sw.bb5.i
  ]

if.end16.return_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb.i104:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %hw_ifidx.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 %dir, i32 1, i32 11, i32 0, i32 1
  br label %sw.epilog.i105

sw.bb5.i:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %tobool.not.i = icmp eq i32 %dir, 0
  %lnot.ext.i = zext i1 %tobool.not.i to i32
  %iifidx.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 %lnot.ext.i, i32 1, i32 3
  br label %sw.epilog.i105

sw.epilog.i105:                                   ; preds = %sw.bb5.i, %sw.bb.i104
  %ifindex.0.in.i = phi ptr [ %iifidx.i, %sw.bb5.i ], [ %hw_ifidx.i, %sw.bb.i104 ]
  %90 = ptrtoint ptr %ifindex.0.in.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %ifindex.0.i = load i32, ptr %ifindex.0.in.i, align 4
  %call.i = tail call ptr @dev_get_by_index(ptr noundef %net, i32 noundef %ifindex.0.i) #8
  %tobool9.not.i = icmp eq ptr %call.i, null
  br i1 %tobool9.not.i, label %sw.epilog.i105.return_crit_edge, label %if.end.i

sw.epilog.i105.return_crit_edge:                  ; preds = %sw.epilog.i105
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %sw.epilog.i105
  call void @__sanitizer_cov_trace_pc() #10
  %rule.i.i106 = getelementptr inbounds %struct.nf_flow_rule, ptr %flow_rule, i32 0, i32 1
  %91 = ptrtoint ptr %rule.i.i106 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rule.i.i106, align 4
  %action.i.i107 = getelementptr inbounds %struct.flow_rule, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %action.i.i107 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %action.i.i107, align 8
  %inc.i.i108 = add i32 %94, 1
  store i32 %inc.i.i108, ptr %action.i.i107, align 8
  %95 = load ptr, ptr %rule.i.i106, align 4
  %entries.i.i109 = getelementptr inbounds %struct.flow_rule, ptr %95, i32 1
  %arrayidx.i.i110 = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i.i109, i32 0, i32 %94
  %96 = ptrtoint ptr %arrayidx.i.i110 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 4, ptr %arrayidx.i.i110, align 8
  %97 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i.i110, i32 0, i32 5
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call.i, ptr %97, align 8
  br label %return

return:                                           ; preds = %if.end.i, %sw.epilog.i105.return_crit_edge, %if.end16.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -1, %entry.return_crit_edge ], [ 0, %if.end16.return_crit_edge ], [ 0, %sw.epilog.i105.return_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_flow_rule_route_common(ptr noundef %net, ptr noundef %flow, i32 noundef %dir, ptr nocapture noundef readonly %flow_rule) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %tobool.not.i = icmp eq i32 %dir, 0
  %lnot.ext.i = zext i1 %tobool.not.i to i32
  %xmit_type.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 %lnot.ext.i, i32 1, i32 8
  %0 = ptrtoint ptr %xmit_type.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %xmit_type.i, align 2
  %1 = and i8 %bf.load.i, 56
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %1)
  %cmp.i = icmp eq i8 %1, 24
  br i1 %cmp.i, label %entry.flow_offload_decap_tunnel.exit_crit_edge, label %if.end.i

entry.flow_offload_decap_tunnel.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_offload_decap_tunnel.exit

if.end.i:                                         ; preds = %entry
  %2 = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 %lnot.ext.i, i32 1, i32 11
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool3.not.i = icmp eq ptr %4, null
  br i1 %tobool3.not.i, label %if.end.i.flow_offload_decap_tunnel.exit_crit_edge, label %land.lhs.true.i

if.end.i.flow_offload_decap_tunnel.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_offload_decap_tunnel.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %lwtstate.i = getelementptr inbounds %struct.dst_entry, ptr %4, i32 0, i32 13
  %5 = ptrtoint ptr %lwtstate.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lwtstate.i, align 4
  %tobool4.not.i = icmp eq ptr %6, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.flow_offload_decap_tunnel.exit_crit_edge, label %if.then5.i

land.lhs.true.i.flow_offload_decap_tunnel.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_offload_decap_tunnel.exit

if.then5.i:                                       ; preds = %land.lhs.true.i
  %data.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %6, i32 0, i32 7
  %mode.i = getelementptr inbounds %struct.ip_tunnel_info, ptr %data.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mode.i, align 1
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool10.not.i = icmp eq i8 %9, 0
  br i1 %tobool10.not.i, label %if.then5.i.flow_offload_decap_tunnel.exit_crit_edge, label %if.then11.i

if.then5.i.flow_offload_decap_tunnel.exit_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_offload_decap_tunnel.exit

if.then11.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  %rule.i.i = getelementptr inbounds %struct.nf_flow_rule, ptr %flow_rule, i32 0, i32 1
  %10 = ptrtoint ptr %rule.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rule.i.i, align 4
  %action.i.i = getelementptr inbounds %struct.flow_rule, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %action.i.i, align 8
  %inc.i.i = add i32 %13, 1
  store i32 %inc.i.i, ptr %action.i.i, align 8
  %14 = load ptr, ptr %rule.i.i, align 4
  %entries.i.i = getelementptr inbounds %struct.flow_rule, ptr %14, i32 1
  %arrayidx.i.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i.i, i32 0, i32 %13
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 12, ptr %arrayidx.i.i, align 8
  br label %flow_offload_decap_tunnel.exit

flow_offload_decap_tunnel.exit:                   ; preds = %if.then11.i, %if.then5.i.flow_offload_decap_tunnel.exit_crit_edge, %land.lhs.true.i.flow_offload_decap_tunnel.exit_crit_edge, %if.end.i.flow_offload_decap_tunnel.exit_crit_edge, %entry.flow_offload_decap_tunnel.exit_crit_edge
  %xmit_type.i106 = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 %dir, i32 1, i32 8
  %16 = ptrtoint ptr %xmit_type.i106 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i107 = load i8, ptr %xmit_type.i106, align 2
  %17 = and i8 %bf.load.i107, 56
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %17)
  %cmp.i108 = icmp eq i8 %17, 24
  br i1 %cmp.i108, label %flow_offload_decap_tunnel.exit.flow_offload_encap_tunnel.exit_crit_edge, label %if.end.i110

flow_offload_decap_tunnel.exit.flow_offload_encap_tunnel.exit_crit_edge: ; preds = %flow_offload_decap_tunnel.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_offload_encap_tunnel.exit

if.end.i110:                                      ; preds = %flow_offload_decap_tunnel.exit
  %18 = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 %dir, i32 1, i32 11
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool.not.i109 = icmp eq ptr %20, null
  br i1 %tobool.not.i109, label %if.end.i110.flow_offload_encap_tunnel.exit_crit_edge, label %land.lhs.true.i113

if.end.i110.flow_offload_encap_tunnel.exit_crit_edge: ; preds = %if.end.i110
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_offload_encap_tunnel.exit

land.lhs.true.i113:                               ; preds = %if.end.i110
  %lwtstate.i111 = getelementptr inbounds %struct.dst_entry, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %lwtstate.i111 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lwtstate.i111, align 4
  %tobool3.not.i112 = icmp eq ptr %22, null
  br i1 %tobool3.not.i112, label %land.lhs.true.i113.flow_offload_encap_tunnel.exit_crit_edge, label %if.then4.i

land.lhs.true.i113.flow_offload_encap_tunnel.exit_crit_edge: ; preds = %land.lhs.true.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_offload_encap_tunnel.exit

if.then4.i:                                       ; preds = %land.lhs.true.i113
  %data.i.i114 = getelementptr inbounds %struct.lwtunnel_state, ptr %22, i32 0, i32 7
  %mode.i115 = getelementptr inbounds %struct.ip_tunnel_info, ptr %data.i.i114, i32 0, i32 3
  %23 = ptrtoint ptr %mode.i115 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %mode.i115, align 1
  %25 = and i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool9.not.i = icmp eq i8 %25, 0
  br i1 %tobool9.not.i, label %if.then4.i.flow_offload_encap_tunnel.exit_crit_edge, label %if.then10.i

if.then4.i.flow_offload_encap_tunnel.exit_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_offload_encap_tunnel.exit

if.then10.i:                                      ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  %rule.i.i116 = getelementptr inbounds %struct.nf_flow_rule, ptr %flow_rule, i32 0, i32 1
  %26 = ptrtoint ptr %rule.i.i116 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rule.i.i116, align 4
  %action.i.i117 = getelementptr inbounds %struct.flow_rule, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %action.i.i117 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %action.i.i117, align 8
  %inc.i.i118 = add i32 %29, 1
  store i32 %inc.i.i118, ptr %action.i.i117, align 8
  %30 = load ptr, ptr %rule.i.i116, align 4
  %entries.i.i119 = getelementptr inbounds %struct.flow_rule, ptr %30, i32 1
  %arrayidx.i.i120 = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i.i119, i32 0, i32 %29
  %31 = ptrtoint ptr %arrayidx.i.i120 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 11, ptr %arrayidx.i.i120, align 8
  %32 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i.i120, i32 0, i32 5
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %data.i.i114, ptr %32, align 8
  br label %flow_offload_encap_tunnel.exit

flow_offload_encap_tunnel.exit:                   ; preds = %if.then10.i, %if.then4.i.flow_offload_encap_tunnel.exit_crit_edge, %land.lhs.true.i113.flow_offload_encap_tunnel.exit_crit_edge, %if.end.i110.flow_offload_encap_tunnel.exit_crit_edge, %flow_offload_decap_tunnel.exit.flow_offload_encap_tunnel.exit_crit_edge
  %rule.i.i121 = getelementptr inbounds %struct.nf_flow_rule, ptr %flow_rule, i32 0, i32 1
  %34 = ptrtoint ptr %rule.i.i121 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rule.i.i121, align 4
  %action.i.i122 = getelementptr inbounds %struct.flow_rule, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %action.i.i122 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %action.i.i122, align 8
  %inc.i.i123 = add i32 %37, 1
  store i32 %inc.i.i123, ptr %action.i.i122, align 8
  %38 = load ptr, ptr %rule.i.i121, align 4
  %entries.i.i124 = getelementptr inbounds %struct.flow_rule, ptr %38, i32 1
  %arrayidx.i.i125 = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i.i124, i32 0, i32 %37
  %action.i25.i = getelementptr inbounds %struct.flow_rule, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %action.i25.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %action.i25.i, align 8
  %inc.i26.i = add i32 %40, 1
  store i32 %inc.i26.i, ptr %action.i25.i, align 8
  %41 = load ptr, ptr %rule.i.i121, align 4
  %entries.i27.i = getelementptr inbounds %struct.flow_rule, ptr %41, i32 1
  %arrayidx.i28.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i27.i, i32 0, i32 %40
  %42 = ptrtoint ptr %xmit_type.i106 to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load.i127 = load i8, ptr %xmit_type.i106, align 2
  %bf.lshr.i = lshr i8 %bf.load.i127, 3
  %bf.clear.i = and i8 %bf.lshr.i, 7
  %conv.i = zext i8 %bf.clear.i to i32
  %43 = zext i32 %conv.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %conv.i, label %flow_offload_encap_tunnel.exit.cleanup66_crit_edge [
    i32 3, label %sw.bb.i
    i32 1, label %sw.bb2.i
  ]

flow_offload_encap_tunnel.exit.cleanup66_crit_edge: ; preds = %flow_offload_encap_tunnel.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup66

sw.bb.i:                                          ; preds = %flow_offload_encap_tunnel.exit
  call void @__sanitizer_cov_trace_pc() #10
  %h_source.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 %dir, i32 1, i32 11, i32 0, i32 2
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %flow_offload_encap_tunnel.exit
  %iifidx.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 %lnot.ext.i, i32 1, i32 3
  %44 = ptrtoint ptr %iifidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %iifidx.i, align 4
  %call6.i = tail call ptr @dev_get_by_index(ptr noundef %net, i32 noundef %45) #8
  %tobool7.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool7.not.i, label %sw.bb2.i.cleanup66_crit_edge, label %if.end.i130

sw.bb2.i.cleanup66_crit_edge:                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup66

if.end.i130:                                      ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %call6.i, i32 0, i32 86
  %46 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_addr.i, align 64
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end.i130, %sw.bb.i
  %dev.0.i = phi ptr [ %call6.i, %if.end.i130 ], [ null, %sw.bb.i ]
  %addr.0.i = phi ptr [ %47, %if.end.i130 ], [ %h_source.i, %sw.bb.i ]
  %48 = ptrtoint ptr %addr.0.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %val16.0.copyload.i = load i16, ptr %addr.0.i, align 1
  %conv8.i = zext i16 %val16.0.copyload.i to i32
  %shl.i = shl nuw i32 %conv8.i, 16
  %49 = ptrtoint ptr %arrayidx.i.i125 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 13, ptr %arrayidx.i.i125, align 8
  %50 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i.i125, i32 0, i32 5
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %50, align 8
  %offset3.i.i = getelementptr inbounds %struct.anon.188, ptr %50, i32 0, i32 1
  %52 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4, ptr %offset3.i.i, align 4
  %mask4.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i.i125, i32 0, i32 5, i32 0, i32 1
  %53 = ptrtoint ptr %mask4.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 65535, ptr %mask4.i.i, align 8
  %val.i.i = getelementptr inbounds %struct.anon.188, ptr %50, i32 0, i32 3
  %54 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %shl.i, ptr %val.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %addr.0.i, i32 2
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %add.ptr.i, align 1
  %57 = ptrtoint ptr %arrayidx.i28.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 13, ptr %arrayidx.i28.i, align 8
  %58 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i28.i, i32 0, i32 5
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %58, align 8
  %offset3.i29.i = getelementptr inbounds %struct.anon.188, ptr %58, i32 0, i32 1
  %60 = ptrtoint ptr %offset3.i29.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 8, ptr %offset3.i29.i, align 4
  %mask4.i30.i = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i28.i, i32 0, i32 5, i32 0, i32 1
  %61 = ptrtoint ptr %mask4.i30.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %mask4.i30.i, align 8
  %val.i31.i = getelementptr inbounds %struct.anon.188, ptr %58, i32 0, i32 3
  %62 = ptrtoint ptr %val.i31.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %56, ptr %val.i31.i, align 4
  %tobool.not.i.i = icmp eq ptr %dev.0.i, null
  br i1 %tobool.not.i.i, label %sw.epilog.i.lor.lhs.false_crit_edge, label %do.body1.i.i

sw.epilog.i.lor.lhs.false_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

do.body1.i.i:                                     ; preds = %sw.epilog.i
  %63 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !36
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %dev.0.i, i32 0, i32 118
  %64 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %66 = ptrtoint ptr %65 to i32
  %67 = tail call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i32.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %70
  %71 = ptrtoint ptr %arrayidx.i32.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx.i32.i, align 4
  %add.i.i = add i32 %72, %66
  %73 = inttoptr i32 %add.i.i to ptr
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  %add13.i.i = add i32 %75, -1
  store i32 %add13.i.i, ptr %73, align 4
  %76 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !37
  %and.i.i.i.i = and i32 %76, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !38

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %63) #8, !srcloc !39
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end30.i.i, %sw.epilog.i.lor.lhs.false_crit_edge
  %77 = ptrtoint ptr %rule.i.i121 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rule.i.i121, align 4
  %action.i.i132 = getelementptr inbounds %struct.flow_rule, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %action.i.i132 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %action.i.i132, align 8
  %inc.i.i133 = add i32 %80, 1
  store i32 %inc.i.i133, ptr %action.i.i132, align 8
  %81 = load ptr, ptr %rule.i.i121, align 4
  %entries.i.i134 = getelementptr inbounds %struct.flow_rule, ptr %81, i32 1
  %arrayidx.i.i135 = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i.i134, i32 0, i32 %80
  %action.i2.i = getelementptr inbounds %struct.flow_rule, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %action.i2.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %action.i2.i, align 8
  %inc.i3.i = add i32 %83, 1
  store i32 %inc.i3.i, ptr %action.i2.i, align 8
  %84 = load ptr, ptr %rule.i.i121, align 4
  %entries.i4.i = getelementptr inbounds %struct.flow_rule, ptr %84, i32 1
  %arrayidx.i5.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i4.i, i32 0, i32 %83
  %85 = ptrtoint ptr %xmit_type.i106 to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load.i137 = load i8, ptr %xmit_type.i106, align 2
  %bf.lshr.i138 = lshr i8 %bf.load.i137, 3
  %bf.clear.i139 = and i8 %bf.lshr.i138, 7
  %conv.i140 = zext i8 %bf.clear.i139 to i32
  %86 = zext i32 %conv.i140 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %conv.i140, label %lor.lhs.false.cleanup66_crit_edge [
    i32 3, label %sw.bb.i141
    i32 1, label %sw.bb3.i
  ]

lor.lhs.false.cleanup66_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup66

sw.bb.i141:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %h_dest.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 %dir, i32 1, i32 11, i32 0, i32 3
  %87 = ptrtoint ptr %h_dest.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %h_dest.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %h_dest.i, i32 4
  %89 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %add.ptr.i.i, align 2
  br label %flow_offload_eth_dst.exit

sw.bb3.i:                                         ; preds = %lor.lhs.false
  %tuple6.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 %lnot.ext.i, i32 1
  %91 = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 %dir, i32 1, i32 11
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %ops.i.i = getelementptr inbounds %struct.dst_entry, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ops.i.i, align 4
  %neigh_lookup.i.i = getelementptr inbounds %struct.dst_ops, ptr %95, i32 0, i32 14
  %96 = ptrtoint ptr %neigh_lookup.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %neigh_lookup.i.i, align 8
  %call.i.i = tail call ptr %97(ptr noundef %93, ptr noundef null, ptr noundef %tuple6.i) #8
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %tobool9.not20.i = icmp eq ptr %call.i.i, null
  %tobool9.not.i144 = or i1 %cmp.i.i.i, %tobool9.not20.i
  br i1 %tobool9.not.i144, label %sw.bb3.i.cleanup66_crit_edge, label %if.end.i145

sw.bb3.i.cleanup66_crit_edge:                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup66

if.end.i145:                                      ; preds = %sw.bb3.i
  %lock.i = getelementptr inbounds %struct.neighbour, ptr %call.i.i, i32 0, i32 5
  tail call void @_raw_read_lock_bh(ptr noundef %lock.i) #8
  %nud_state10.i = getelementptr inbounds %struct.neighbour, ptr %call.i.i, i32 0, i32 12
  %98 = ptrtoint ptr %nud_state10.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %nud_state10.i, align 8
  %ha12.i = getelementptr inbounds %struct.neighbour, ptr %call.i.i, i32 0, i32 18
  %100 = ptrtoint ptr %ha12.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ha12.i, align 4
  %add.ptr.i6.i = getelementptr %struct.neighbour, ptr %call.i.i, i32 0, i32 18, i32 4
  %102 = ptrtoint ptr %add.ptr.i6.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %add.ptr.i6.i, align 2
  tail call void @_raw_read_unlock_bh(ptr noundef %lock.i) #8
  %refcnt.i.i = getelementptr inbounds %struct.neighbour, ptr %call.i.i, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #8
  %104 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #8, !srcloc !41
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %104, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.neigh_release.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !42

if.end5.i.i.i.i.i.neigh_release.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %neigh_release.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 3) #8
  br label %neigh_release.exit.i

if.then.i.i:                                      ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  tail call void @neigh_destroy(ptr noundef nonnull %call.i.i) #8
  br label %neigh_release.exit.i

neigh_release.exit.i:                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.neigh_release.exit.i_crit_edge
  %105 = and i8 %99, -34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool16.not.i = icmp eq i8 %105, 0
  br i1 %tobool16.not.i, label %neigh_release.exit.i.cleanup66_crit_edge, label %neigh_release.exit.i.flow_offload_eth_dst.exit_crit_edge

neigh_release.exit.i.flow_offload_eth_dst.exit_crit_edge: ; preds = %neigh_release.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_offload_eth_dst.exit

neigh_release.exit.i.cleanup66_crit_edge:         ; preds = %neigh_release.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup66

flow_offload_eth_dst.exit:                        ; preds = %neigh_release.exit.i.flow_offload_eth_dst.exit_crit_edge, %sw.bb.i141
  %ha.sroa.0.sroa.8.0.in.i = phi i32 [ %101, %neigh_release.exit.i.flow_offload_eth_dst.exit_crit_edge ], [ %88, %sw.bb.i141 ]
  %ha.sroa.9.0.i = phi i16 [ %103, %neigh_release.exit.i.flow_offload_eth_dst.exit_crit_edge ], [ %90, %sw.bb.i141 ]
  %106 = ptrtoint ptr %arrayidx.i.i135 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 13, ptr %arrayidx.i.i135, align 8
  %107 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i.i135, i32 0, i32 5
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1, ptr %107, align 8
  %offset3.i.i146 = getelementptr inbounds %struct.anon.188, ptr %107, i32 0, i32 1
  %109 = ptrtoint ptr %offset3.i.i146 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %offset3.i.i146, align 4
  %mask4.i.i147 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i.i135, i32 0, i32 5, i32 0, i32 1
  %110 = ptrtoint ptr %mask4.i.i147 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %mask4.i.i147, align 8
  %val.i.i148 = getelementptr inbounds %struct.anon.188, ptr %107, i32 0, i32 3
  %111 = ptrtoint ptr %val.i.i148 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %ha.sroa.0.sroa.8.0.in.i, ptr %val.i.i148, align 4
  %conv21.i = zext i16 %ha.sroa.9.0.i to i32
  %112 = ptrtoint ptr %arrayidx.i5.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 13, ptr %arrayidx.i5.i, align 8
  %113 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i5.i, i32 0, i32 5
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1, ptr %113, align 8
  %offset3.i8.i = getelementptr inbounds %struct.anon.188, ptr %113, i32 0, i32 1
  %115 = ptrtoint ptr %offset3.i8.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 4, ptr %offset3.i8.i, align 4
  %mask4.i9.i = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i5.i, i32 0, i32 5, i32 0, i32 1
  %116 = ptrtoint ptr %mask4.i9.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 -65536, ptr %mask4.i9.i, align 8
  %val.i10.i = getelementptr inbounds %struct.anon.188, ptr %113, i32 0, i32 3
  %117 = ptrtoint ptr %val.i10.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %conv21.i, ptr %val.i10.i, align 4
  %118 = ptrtoint ptr %xmit_type.i106 to i32
  call void @__asan_load1_noabort(i32 %118)
  %bf.load160 = load i8, ptr %xmit_type.i106, align 2
  %119 = and i8 %bf.load160, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %cmp4164.not = icmp eq i8 %119, 0
  br i1 %cmp4164.not, label %flow_offload_eth_dst.exit.for.cond23.preheader_crit_edge, label %for.body.lr.ph

flow_offload_eth_dst.exit.for.cond23.preheader_crit_edge: ; preds = %flow_offload_eth_dst.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond23.preheader

for.body.lr.ph:                                   ; preds = %flow_offload_eth_dst.exit
  %in_vlan_ingress = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 %dir, i32 1, i32 9
  %120 = ptrtoint ptr %in_vlan_ingress to i32
  call void @__asan_load1_noabort(i32 %120)
  %bf.load7 = load i8, ptr %in_vlan_ingress, align 1
  %121 = and i8 %bf.load7, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool.not = icmp eq i8 %121, 0
  br i1 %tobool.not, label %if.end11, label %for.body.lr.ph.cleanup_crit_edge

for.body.lr.ph.cleanup_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond23.preheader:                             ; preds = %if.then16.2, %if.end11.2.for.cond23.preheader_crit_edge, %cleanup.1.for.cond23.preheader_crit_edge, %cleanup.for.cond23.preheader_crit_edge, %flow_offload_eth_dst.exit.for.cond23.preheader_crit_edge
  %122 = ptrtoint ptr %xmit_type.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %bf.load25167 = load i8, ptr %xmit_type.i, align 2
  %123 = and i8 %bf.load25167, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %cmp29171.not = icmp eq i8 %123, 0
  br i1 %cmp29171.not, label %for.cond23.preheader.cleanup66_crit_edge, label %for.body31.lr.ph

for.cond23.preheader.cleanup66_crit_edge:         ; preds = %for.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup66

for.body31.lr.ph:                                 ; preds = %for.cond23.preheader
  %in_vlan_ingress33 = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 %lnot.ext.i, i32 1, i32 9
  %124 = ptrtoint ptr %in_vlan_ingress33 to i32
  call void @__asan_load1_noabort(i32 %124)
  %bf.load34 = load i8, ptr %in_vlan_ingress33, align 1
  %125 = and i8 %bf.load34, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool39.not = icmp eq i8 %125, 0
  br i1 %tobool39.not, label %if.end41, label %for.body31.lr.ph.cleanup60_crit_edge

for.body31.lr.ph.cleanup60_crit_edge:             ; preds = %for.body31.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup60

if.end11:                                         ; preds = %for.body.lr.ph
  %proto = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 %dir, i32 1, i32 6, i32 0, i32 1
  %126 = ptrtoint ptr %proto to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %proto, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %127)
  %cmp14 = icmp eq i16 %127, -32512
  br i1 %cmp14, label %if.then16, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %128 = ptrtoint ptr %rule.i.i121 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %rule.i.i121, align 4
  %action.i = getelementptr inbounds %struct.flow_rule, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %action.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %action.i, align 8
  %inc.i = add i32 %131, 1
  store i32 %inc.i, ptr %action.i, align 8
  %132 = load ptr, ptr %rule.i.i121, align 4
  %entries.i = getelementptr inbounds %struct.flow_rule, ptr %132, i32 1
  %arrayidx.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i, i32 0, i32 %131
  %133 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 9, ptr %arrayidx.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end11.cleanup_crit_edge, %for.body.lr.ph.cleanup_crit_edge
  %134 = ptrtoint ptr %xmit_type.i106 to i32
  call void @__asan_load1_noabort(i32 %134)
  %bf.load = load i8, ptr %xmit_type.i106, align 2
  %135 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %cmp4.not = icmp eq i8 %135, 0
  br i1 %cmp4.not, label %cleanup.for.cond23.preheader_crit_edge, label %for.body.1

cleanup.for.cond23.preheader_crit_edge:           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond23.preheader

for.body.1:                                       ; preds = %cleanup
  %136 = ptrtoint ptr %in_vlan_ingress to i32
  call void @__asan_load1_noabort(i32 %136)
  %bf.load7.1 = load i8, ptr %in_vlan_ingress, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load7.1)
  %tobool.not.1 = icmp sgt i8 %bf.load7.1, -1
  br i1 %tobool.not.1, label %if.end11.1, label %for.body.1.cleanup.1_crit_edge

for.body.1.cleanup.1_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.1

if.end11.1:                                       ; preds = %for.body.1
  %proto.1 = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 %dir, i32 1, i32 6, i32 1, i32 1
  %137 = ptrtoint ptr %proto.1 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %proto.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %138)
  %cmp14.1 = icmp eq i16 %138, -32512
  br i1 %cmp14.1, label %if.then16.1, label %if.end11.1.cleanup.1_crit_edge

if.end11.1.cleanup.1_crit_edge:                   ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.1

if.then16.1:                                      ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #10
  %139 = ptrtoint ptr %rule.i.i121 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %rule.i.i121, align 4
  %action.i.1 = getelementptr inbounds %struct.flow_rule, ptr %140, i32 0, i32 1
  %141 = ptrtoint ptr %action.i.1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %action.i.1, align 8
  %inc.i.1 = add i32 %142, 1
  store i32 %inc.i.1, ptr %action.i.1, align 8
  %143 = load ptr, ptr %rule.i.i121, align 4
  %entries.i.1 = getelementptr inbounds %struct.flow_rule, ptr %143, i32 1
  %arrayidx.i.1 = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i.1, i32 0, i32 %142
  %144 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 9, ptr %arrayidx.i.1, align 8
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.then16.1, %if.end11.1.cleanup.1_crit_edge, %for.body.1.cleanup.1_crit_edge
  %145 = ptrtoint ptr %xmit_type.i106 to i32
  call void @__asan_load1_noabort(i32 %145)
  %bf.load.1 = load i8, ptr %xmit_type.i106, align 2
  %146 = and i8 %bf.load.1, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %146)
  %cmp4.1 = icmp eq i8 %146, 6
  br i1 %cmp4.1, label %if.end11.2, label %cleanup.1.for.cond23.preheader_crit_edge

cleanup.1.for.cond23.preheader_crit_edge:         ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond23.preheader

if.end11.2:                                       ; preds = %cleanup.1
  %proto.2 = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 %dir, i32 1, i32 6, i32 2, i32 1
  %147 = ptrtoint ptr %proto.2 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %proto.2, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %148)
  %cmp14.2 = icmp eq i16 %148, -32512
  br i1 %cmp14.2, label %if.then16.2, label %if.end11.2.for.cond23.preheader_crit_edge

if.end11.2.for.cond23.preheader_crit_edge:        ; preds = %if.end11.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond23.preheader

if.then16.2:                                      ; preds = %if.end11.2
  call void @__sanitizer_cov_trace_pc() #10
  %149 = ptrtoint ptr %rule.i.i121 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %rule.i.i121, align 4
  %action.i.2 = getelementptr inbounds %struct.flow_rule, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %action.i.2 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %action.i.2, align 8
  %inc.i.2 = add i32 %152, 1
  store i32 %inc.i.2, ptr %action.i.2, align 8
  %153 = load ptr, ptr %rule.i.i121, align 4
  %entries.i.2 = getelementptr inbounds %struct.flow_rule, ptr %153, i32 1
  %arrayidx.i.2 = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i.2, i32 0, i32 %152
  %154 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 9, ptr %arrayidx.i.2, align 8
  br label %for.cond23.preheader

if.end41:                                         ; preds = %for.body31.lr.ph
  %155 = ptrtoint ptr %rule.i.i121 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %rule.i.i121, align 4
  %action.i152 = getelementptr inbounds %struct.flow_rule, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %action.i152 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %action.i152, align 8
  %inc.i153 = add i32 %158, 1
  store i32 %inc.i153, ptr %action.i152, align 8
  %159 = load ptr, ptr %rule.i.i121, align 4
  %entries.i154 = getelementptr inbounds %struct.flow_rule, ptr %159, i32 1
  %arrayidx.i155 = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i154, i32 0, i32 %158
  %arrayidx44 = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 %lnot.ext.i, i32 1, i32 6, i32 0
  %proto45 = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 %lnot.ext.i, i32 1, i32 6, i32 0, i32 1
  %160 = ptrtoint ptr %proto45 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %proto45, align 2
  %162 = zext i16 %161 to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %161, label %if.end41.cleanup60_crit_edge [
    i16 -30620, label %sw.bb
    i16 -32512, label %sw.bb51
  ]

if.end41.cleanup60_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup60

sw.bb:                                            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %163 = ptrtoint ptr %arrayidx.i155 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 29, ptr %arrayidx.i155, align 8
  %164 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %arrayidx44, align 2
  %166 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i155, i32 0, i32 5
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %165, ptr %166, align 8
  br label %cleanup60

sw.bb51:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %168 = ptrtoint ptr %arrayidx.i155 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 8, ptr %arrayidx.i155, align 8
  %169 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %arrayidx44, align 2
  %171 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i155, i32 0, i32 5
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %170, ptr %171, align 8
  %173 = ptrtoint ptr %proto45 to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %proto45, align 2
  %proto59 = getelementptr inbounds %struct.anon.187, ptr %171, i32 0, i32 1
  %175 = ptrtoint ptr %proto59 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %174, ptr %proto59, align 2
  br label %cleanup60

cleanup60:                                        ; preds = %sw.bb51, %sw.bb, %if.end41.cleanup60_crit_edge, %for.body31.lr.ph.cleanup60_crit_edge
  %176 = ptrtoint ptr %xmit_type.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %bf.load25 = load i8, ptr %xmit_type.i, align 2
  %177 = and i8 %bf.load25, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %cmp29.not = icmp eq i8 %177, 0
  br i1 %cmp29.not, label %cleanup60.cleanup66_crit_edge, label %for.body31.1

cleanup60.cleanup66_crit_edge:                    ; preds = %cleanup60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup66

for.body31.1:                                     ; preds = %cleanup60
  %178 = ptrtoint ptr %in_vlan_ingress33 to i32
  call void @__asan_load1_noabort(i32 %178)
  %bf.load34.1 = load i8, ptr %in_vlan_ingress33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load34.1)
  %tobool39.not.1 = icmp sgt i8 %bf.load34.1, -1
  br i1 %tobool39.not.1, label %if.end41.1, label %for.body31.1.cleanup60.1_crit_edge

for.body31.1.cleanup60.1_crit_edge:               ; preds = %for.body31.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup60.1

if.end41.1:                                       ; preds = %for.body31.1
  %179 = ptrtoint ptr %rule.i.i121 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %rule.i.i121, align 4
  %action.i152.1 = getelementptr inbounds %struct.flow_rule, ptr %180, i32 0, i32 1
  %181 = ptrtoint ptr %action.i152.1 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %action.i152.1, align 8
  %inc.i153.1 = add i32 %182, 1
  store i32 %inc.i153.1, ptr %action.i152.1, align 8
  %183 = load ptr, ptr %rule.i.i121, align 4
  %entries.i154.1 = getelementptr inbounds %struct.flow_rule, ptr %183, i32 1
  %arrayidx.i155.1 = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i154.1, i32 0, i32 %182
  %arrayidx44.1 = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 %lnot.ext.i, i32 1, i32 6, i32 1
  %proto45.1 = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 %lnot.ext.i, i32 1, i32 6, i32 1, i32 1
  %184 = ptrtoint ptr %proto45.1 to i32
  call void @__asan_load2_noabort(i32 %184)
  %185 = load i16, ptr %proto45.1, align 2
  %186 = zext i16 %185 to i64
  call void @__sanitizer_cov_trace_switch(i64 %186, ptr @__sancov_gen_cov_switch_values.13)
  switch i16 %185, label %if.end41.1.cleanup60.1_crit_edge [
    i16 -30620, label %sw.bb.1
    i16 -32512, label %sw.bb51.1
  ]

if.end41.1.cleanup60.1_crit_edge:                 ; preds = %if.end41.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup60.1

sw.bb51.1:                                        ; preds = %if.end41.1
  call void @__sanitizer_cov_trace_pc() #10
  %187 = ptrtoint ptr %arrayidx.i155.1 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 8, ptr %arrayidx.i155.1, align 8
  %188 = ptrtoint ptr %arrayidx44.1 to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %arrayidx44.1, align 2
  %190 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i155.1, i32 0, i32 5
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %189, ptr %190, align 8
  %192 = ptrtoint ptr %proto45.1 to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %proto45.1, align 2
  %proto59.1 = getelementptr inbounds %struct.anon.187, ptr %190, i32 0, i32 1
  %194 = ptrtoint ptr %proto59.1 to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %193, ptr %proto59.1, align 2
  br label %cleanup60.1

sw.bb.1:                                          ; preds = %if.end41.1
  call void @__sanitizer_cov_trace_pc() #10
  %195 = ptrtoint ptr %arrayidx.i155.1 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 29, ptr %arrayidx.i155.1, align 8
  %196 = ptrtoint ptr %arrayidx44.1 to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %arrayidx44.1, align 2
  %198 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i155.1, i32 0, i32 5
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 %197, ptr %198, align 8
  br label %cleanup60.1

cleanup60.1:                                      ; preds = %sw.bb.1, %sw.bb51.1, %if.end41.1.cleanup60.1_crit_edge, %for.body31.1.cleanup60.1_crit_edge
  %200 = ptrtoint ptr %xmit_type.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %bf.load25.1 = load i8, ptr %xmit_type.i, align 2
  %201 = and i8 %bf.load25.1, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %201)
  %cmp29.1 = icmp eq i8 %201, 6
  br i1 %cmp29.1, label %if.end41.2, label %cleanup60.1.cleanup66_crit_edge

cleanup60.1.cleanup66_crit_edge:                  ; preds = %cleanup60.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup66

if.end41.2:                                       ; preds = %cleanup60.1
  %202 = ptrtoint ptr %rule.i.i121 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %rule.i.i121, align 4
  %action.i152.2 = getelementptr inbounds %struct.flow_rule, ptr %203, i32 0, i32 1
  %204 = ptrtoint ptr %action.i152.2 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %action.i152.2, align 8
  %inc.i153.2 = add i32 %205, 1
  store i32 %inc.i153.2, ptr %action.i152.2, align 8
  %206 = load ptr, ptr %rule.i.i121, align 4
  %entries.i154.2 = getelementptr inbounds %struct.flow_rule, ptr %206, i32 1
  %arrayidx.i155.2 = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i154.2, i32 0, i32 %205
  %arrayidx44.2 = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 %lnot.ext.i, i32 1, i32 6, i32 2
  %proto45.2 = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 %lnot.ext.i, i32 1, i32 6, i32 2, i32 1
  %207 = ptrtoint ptr %proto45.2 to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %proto45.2, align 2
  %209 = zext i16 %208 to i64
  call void @__sanitizer_cov_trace_switch(i64 %209, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %208, label %if.end41.2.cleanup66_crit_edge [
    i16 -30620, label %sw.bb.2
    i16 -32512, label %sw.bb51.2
  ]

if.end41.2.cleanup66_crit_edge:                   ; preds = %if.end41.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup66

sw.bb51.2:                                        ; preds = %if.end41.2
  call void @__sanitizer_cov_trace_pc() #10
  %210 = ptrtoint ptr %arrayidx.i155.2 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 8, ptr %arrayidx.i155.2, align 8
  %211 = ptrtoint ptr %arrayidx44.2 to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %arrayidx44.2, align 2
  %213 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i155.2, i32 0, i32 5
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 %212, ptr %213, align 8
  %215 = ptrtoint ptr %proto45.2 to i32
  call void @__asan_load2_noabort(i32 %215)
  %216 = load i16, ptr %proto45.2, align 2
  %proto59.2 = getelementptr inbounds %struct.anon.187, ptr %213, i32 0, i32 1
  %217 = ptrtoint ptr %proto59.2 to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 %216, ptr %proto59.2, align 2
  br label %cleanup66

sw.bb.2:                                          ; preds = %if.end41.2
  call void @__sanitizer_cov_trace_pc() #10
  %218 = ptrtoint ptr %arrayidx.i155.2 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 29, ptr %arrayidx.i155.2, align 8
  %219 = ptrtoint ptr %arrayidx44.2 to i32
  call void @__asan_load2_noabort(i32 %219)
  %220 = load i16, ptr %arrayidx44.2, align 2
  %221 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i155.2, i32 0, i32 5
  %222 = ptrtoint ptr %221 to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 %220, ptr %221, align 8
  br label %cleanup66

cleanup66:                                        ; preds = %sw.bb.2, %sw.bb51.2, %if.end41.2.cleanup66_crit_edge, %cleanup60.1.cleanup66_crit_edge, %cleanup60.cleanup66_crit_edge, %for.cond23.preheader.cleanup66_crit_edge, %neigh_release.exit.i.cleanup66_crit_edge, %sw.bb3.i.cleanup66_crit_edge, %lor.lhs.false.cleanup66_crit_edge, %sw.bb2.i.cleanup66_crit_edge, %flow_offload_encap_tunnel.exit.cleanup66_crit_edge
  %retval.0 = phi i32 [ -1, %sw.bb2.i.cleanup66_crit_edge ], [ -1, %flow_offload_encap_tunnel.exit.cleanup66_crit_edge ], [ -1, %sw.bb3.i.cleanup66_crit_edge ], [ -1, %neigh_release.exit.i.cleanup66_crit_edge ], [ -1, %lor.lhs.false.cleanup66_crit_edge ], [ 0, %for.cond23.preheader.cleanup66_crit_edge ], [ 0, %if.end41.2.cleanup66_crit_edge ], [ 0, %sw.bb51.2 ], [ 0, %sw.bb.2 ], [ 0, %cleanup60.1.cleanup66_crit_edge ], [ 0, %cleanup60.cleanup66_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_flow_rule_route_ipv6(ptr noundef %net, ptr noundef %flow, i32 noundef %dir, ptr nocapture noundef readonly %flow_rule) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @nf_flow_rule_route_common(ptr noundef %net, ptr noundef %flow, i32 noundef %dir, ptr noundef %flow_rule)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.flow_offload, ptr %flow, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %if.end
  %2 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %dir, label %if.then2.flow_offload_ipv6_snat.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.then2.flow_offload_ipv6_snat.exit_crit_edge:   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_offload_ipv6_snat.exit

sw.bb.i:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %3 = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 1, i32 1, i32 1
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %tuple4.i = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %flow, i32 0, i32 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %sw.bb.i
  %addr.0.i = phi ptr [ %tuple4.i, %sw.bb1.i ], [ %3, %sw.bb.i ]
  %offset.0.i = phi i32 [ 24, %sw.bb1.i ], [ 8, %sw.bb.i ]
  %rule.i.i.i = getelementptr inbounds %struct.nf_flow_rule, ptr %flow_rule, i32 0, i32 1
  %4 = ptrtoint ptr %rule.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rule.i.i.i, align 4
  %action.i.i.i = getelementptr inbounds %struct.flow_rule, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %action.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %action.i.i.i, align 8
  %inc.i.i.i = add i32 %7, 1
  store i32 %inc.i.i.i, ptr %action.i.i.i, align 8
  %8 = load ptr, ptr %rule.i.i.i, align 4
  %entries.i.i.i = getelementptr inbounds %struct.flow_rule, ptr %8, i32 1
  %arrayidx.i.i.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i.i.i, i32 0, i32 %7
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 13, ptr %arrayidx.i.i.i, align 8
  %10 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %10, align 8
  %offset3.i.i.i = getelementptr inbounds %struct.anon.188, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %offset3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %offset.0.i, ptr %offset3.i.i.i, align 4
  %mask4.i.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i.i.i, i32 0, i32 5, i32 0, i32 1
  %13 = ptrtoint ptr %mask4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %mask4.i.i.i, align 8
  %val.i.i.i = getelementptr inbounds %struct.anon.188, ptr %10, i32 0, i32 3
  %14 = ptrtoint ptr %addr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.0.i, align 4
  %16 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %val.i.i.i, align 4
  br label %flow_offload_ipv6_snat.exit

flow_offload_ipv6_snat.exit:                      ; preds = %sw.epilog.i, %if.then2.flow_offload_ipv6_snat.exit_crit_edge
  %rule.i.i = getelementptr inbounds %struct.nf_flow_rule, ptr %flow_rule, i32 0, i32 1
  %17 = ptrtoint ptr %rule.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rule.i.i, align 4
  %action.i.i = getelementptr inbounds %struct.flow_rule, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %action.i.i, align 8
  %inc.i.i = add i32 %20, 1
  store i32 %inc.i.i, ptr %action.i.i, align 8
  %21 = load ptr, ptr %rule.i.i, align 4
  %entries.i.i = getelementptr inbounds %struct.flow_rule, ptr %21, i32 1
  %arrayidx.i.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i.i, i32 0, i32 %20
  %22 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %dir, label %flow_offload_ipv6_snat.exit.if.end3_crit_edge [
    i32 0, label %sw.bb.i32
    i32 1, label %sw.bb2.i
  ]

flow_offload_ipv6_snat.exit.if.end3_crit_edge:    ; preds = %flow_offload_ipv6_snat.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

sw.bb.i32:                                        ; preds = %flow_offload_ipv6_snat.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dst_port.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 1, i32 1, i32 2, i32 1
  %23 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %dst_port.i, align 2
  %conv.i = zext i16 %24 to i32
  %shl.i = shl nuw i32 %conv.i, 16
  br label %sw.epilog.i33

sw.bb2.i:                                         ; preds = %flow_offload_ipv6_snat.exit
  call void @__sanitizer_cov_trace_pc() #10
  %25 = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %flow, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %25, align 4
  %conv6.i = zext i16 %27 to i32
  br label %sw.epilog.i33

sw.epilog.i33:                                    ; preds = %sw.bb2.i, %sw.bb.i32
  %storemerge1.i = phi i32 [ %conv6.i, %sw.bb2.i ], [ %shl.i, %sw.bb.i32 ]
  %storemerge.i = phi i32 [ -65536, %sw.bb2.i ], [ 65535, %sw.bb.i32 ]
  %l4proto.i.i = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %flow, i32 0, i32 1, i32 5
  %28 = ptrtoint ptr %l4proto.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %l4proto.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %29)
  %switch.selectcmp.i.i = icmp eq i8 %29, 17
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 5, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %29)
  %switch.selectcmp3.i.i = icmp eq i8 %29, 6
  %switch.select4.i.i = select i1 %switch.selectcmp3.i.i, i32 4, i32 %switch.select.i.i
  %30 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 13, ptr %arrayidx.i.i, align 8
  %31 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i.i, i32 0, i32 5
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %switch.select4.i.i, ptr %31, align 8
  %offset3.i.i = getelementptr inbounds %struct.anon.188, ptr %31, i32 0, i32 1
  %33 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %offset3.i.i, align 4
  %mask4.i.i = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i.i, i32 0, i32 5, i32 0, i32 1
  %34 = ptrtoint ptr %mask4.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %storemerge.i, ptr %mask4.i.i, align 8
  %val.i.i = getelementptr inbounds %struct.anon.188, ptr %31, i32 0, i32 3
  %35 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %storemerge1.i, ptr %val.i.i, align 4
  br label %if.end3

if.end3:                                          ; preds = %sw.epilog.i33, %flow_offload_ipv6_snat.exit.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %flags, align 4
  %38 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool6.not = icmp eq i32 %38, 0
  br i1 %tobool6.not, label %if.end3.if.end8_crit_edge, label %if.then7

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %if.end3
  %39 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %dir, label %if.then7.flow_offload_ipv6_dnat.exit_crit_edge [
    i32 0, label %sw.bb.i34
    i32 1, label %sw.bb1.i35
  ]

if.then7.flow_offload_ipv6_dnat.exit_crit_edge:   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_offload_ipv6_dnat.exit

sw.bb.i34:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %tuple.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 1, i32 1
  br label %sw.epilog.i46

sw.bb1.i35:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  %40 = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %flow, i32 0, i32 1, i32 1
  br label %sw.epilog.i46

sw.epilog.i46:                                    ; preds = %sw.bb1.i35, %sw.bb.i34
  %addr.0.i36 = phi ptr [ %40, %sw.bb1.i35 ], [ %tuple.i, %sw.bb.i34 ]
  %offset.0.i37 = phi i32 [ 8, %sw.bb1.i35 ], [ 24, %sw.bb.i34 ]
  %rule.i.i.i38 = getelementptr inbounds %struct.nf_flow_rule, ptr %flow_rule, i32 0, i32 1
  %41 = ptrtoint ptr %rule.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rule.i.i.i38, align 4
  %action.i.i.i39 = getelementptr inbounds %struct.flow_rule, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %action.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %action.i.i.i39, align 8
  %inc.i.i.i40 = add i32 %44, 1
  store i32 %inc.i.i.i40, ptr %action.i.i.i39, align 8
  %45 = load ptr, ptr %rule.i.i.i38, align 4
  %entries.i.i.i41 = getelementptr inbounds %struct.flow_rule, ptr %45, i32 1
  %arrayidx.i.i.i42 = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i.i.i41, i32 0, i32 %44
  %46 = ptrtoint ptr %arrayidx.i.i.i42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 13, ptr %arrayidx.i.i.i42, align 8
  %47 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i.i.i42, i32 0, i32 5
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 3, ptr %47, align 8
  %offset3.i.i.i43 = getelementptr inbounds %struct.anon.188, ptr %47, i32 0, i32 1
  %49 = ptrtoint ptr %offset3.i.i.i43 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %offset.0.i37, ptr %offset3.i.i.i43, align 4
  %mask4.i.i.i44 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i.i.i42, i32 0, i32 5, i32 0, i32 1
  %50 = ptrtoint ptr %mask4.i.i.i44 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %mask4.i.i.i44, align 8
  %val.i.i.i45 = getelementptr inbounds %struct.anon.188, ptr %47, i32 0, i32 3
  %51 = ptrtoint ptr %addr.0.i36 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %addr.0.i36, align 4
  %53 = ptrtoint ptr %val.i.i.i45 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %val.i.i.i45, align 4
  br label %flow_offload_ipv6_dnat.exit

flow_offload_ipv6_dnat.exit:                      ; preds = %sw.epilog.i46, %if.then7.flow_offload_ipv6_dnat.exit_crit_edge
  %rule.i.i47 = getelementptr inbounds %struct.nf_flow_rule, ptr %flow_rule, i32 0, i32 1
  %54 = ptrtoint ptr %rule.i.i47 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rule.i.i47, align 4
  %action.i.i48 = getelementptr inbounds %struct.flow_rule, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %action.i.i48 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %action.i.i48, align 8
  %inc.i.i49 = add i32 %57, 1
  store i32 %inc.i.i49, ptr %action.i.i48, align 8
  %58 = load ptr, ptr %rule.i.i47, align 4
  %entries.i.i50 = getelementptr inbounds %struct.flow_rule, ptr %58, i32 1
  %arrayidx.i.i51 = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i.i50, i32 0, i32 %57
  %59 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %dir, label %flow_offload_ipv6_dnat.exit.if.end8_crit_edge [
    i32 0, label %sw.bb.i53
    i32 1, label %sw.bb2.i57
  ]

flow_offload_ipv6_dnat.exit.if.end8_crit_edge:    ; preds = %flow_offload_ipv6_dnat.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

sw.bb.i53:                                        ; preds = %flow_offload_ipv6_dnat.exit
  call void @__sanitizer_cov_trace_pc() #10
  %60 = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 1, i32 1, i32 2
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %60, align 4
  %conv.i52 = zext i16 %62 to i32
  br label %sw.epilog.i68

sw.bb2.i57:                                       ; preds = %flow_offload_ipv6_dnat.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dst_port.i54 = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %flow, i32 0, i32 1, i32 2, i32 1
  %63 = ptrtoint ptr %dst_port.i54 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %dst_port.i54, align 2
  %conv6.i55 = zext i16 %64 to i32
  %shl.i56 = shl nuw i32 %conv6.i55, 16
  br label %sw.epilog.i68

sw.epilog.i68:                                    ; preds = %sw.bb2.i57, %sw.bb.i53
  %storemerge1.i58 = phi i32 [ %shl.i56, %sw.bb2.i57 ], [ %conv.i52, %sw.bb.i53 ]
  %storemerge.i59 = phi i32 [ 65535, %sw.bb2.i57 ], [ -65536, %sw.bb.i53 ]
  %l4proto.i.i60 = getelementptr inbounds %struct.flow_offload_tuple_rhash, ptr %flow, i32 0, i32 1, i32 5
  %65 = ptrtoint ptr %l4proto.i.i60 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %l4proto.i.i60, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %66)
  %switch.selectcmp.i.i61 = icmp eq i8 %66, 17
  %switch.select.i.i62 = select i1 %switch.selectcmp.i.i61, i32 5, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %66)
  %switch.selectcmp3.i.i63 = icmp eq i8 %66, 6
  %switch.select4.i.i64 = select i1 %switch.selectcmp3.i.i63, i32 4, i32 %switch.select.i.i62
  %67 = ptrtoint ptr %arrayidx.i.i51 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 13, ptr %arrayidx.i.i51, align 8
  %68 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i.i51, i32 0, i32 5
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %switch.select4.i.i64, ptr %68, align 8
  %offset3.i.i65 = getelementptr inbounds %struct.anon.188, ptr %68, i32 0, i32 1
  %70 = ptrtoint ptr %offset3.i.i65 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %offset3.i.i65, align 4
  %mask4.i.i66 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i.i51, i32 0, i32 5, i32 0, i32 1
  %71 = ptrtoint ptr %mask4.i.i66 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %storemerge.i59, ptr %mask4.i.i66, align 8
  %val.i.i67 = getelementptr inbounds %struct.anon.188, ptr %68, i32 0, i32 3
  %72 = ptrtoint ptr %val.i.i67 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %storemerge1.i58, ptr %val.i.i67, align 4
  br label %if.end8

if.end8:                                          ; preds = %sw.epilog.i68, %flow_offload_ipv6_dnat.exit.if.end8_crit_edge, %if.end3.if.end8_crit_edge
  %xmit_type.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 %dir, i32 1, i32 8
  %73 = ptrtoint ptr %xmit_type.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load.i = load i8, ptr %xmit_type.i, align 2
  %bf.lshr.i = lshr i8 %bf.load.i, 3
  %bf.clear.i = and i8 %bf.lshr.i, 7
  %conv.i69 = zext i8 %bf.clear.i to i32
  %74 = zext i32 %conv.i69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %conv.i69, label %if.end8.return_crit_edge [
    i32 3, label %sw.bb.i70
    i32 1, label %sw.bb5.i
  ]

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb.i70:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %hw_ifidx.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 %dir, i32 1, i32 11, i32 0, i32 1
  br label %sw.epilog.i71

sw.bb5.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %tobool.not.i = icmp eq i32 %dir, 0
  %lnot.ext.i = zext i1 %tobool.not.i to i32
  %iifidx.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %flow, i32 0, i32 %lnot.ext.i, i32 1, i32 3
  br label %sw.epilog.i71

sw.epilog.i71:                                    ; preds = %sw.bb5.i, %sw.bb.i70
  %ifindex.0.in.i = phi ptr [ %iifidx.i, %sw.bb5.i ], [ %hw_ifidx.i, %sw.bb.i70 ]
  %75 = ptrtoint ptr %ifindex.0.in.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %ifindex.0.i = load i32, ptr %ifindex.0.in.i, align 4
  %call.i = tail call ptr @dev_get_by_index(ptr noundef %net, i32 noundef %ifindex.0.i) #8
  %tobool9.not.i = icmp eq ptr %call.i, null
  br i1 %tobool9.not.i, label %sw.epilog.i71.return_crit_edge, label %if.end.i

sw.epilog.i71.return_crit_edge:                   ; preds = %sw.epilog.i71
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %sw.epilog.i71
  call void @__sanitizer_cov_trace_pc() #10
  %rule.i.i72 = getelementptr inbounds %struct.nf_flow_rule, ptr %flow_rule, i32 0, i32 1
  %76 = ptrtoint ptr %rule.i.i72 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rule.i.i72, align 4
  %action.i.i73 = getelementptr inbounds %struct.flow_rule, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %action.i.i73 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %action.i.i73, align 8
  %inc.i.i74 = add i32 %79, 1
  store i32 %inc.i.i74, ptr %action.i.i73, align 8
  %80 = load ptr, ptr %rule.i.i72, align 4
  %entries.i.i75 = getelementptr inbounds %struct.flow_rule, ptr %80, i32 1
  %arrayidx.i.i76 = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i.i75, i32 0, i32 %79
  %81 = ptrtoint ptr %arrayidx.i.i76 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 4, ptr %arrayidx.i.i76, align 8
  %82 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx.i.i76, i32 0, i32 5
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call.i, ptr %82, align 8
  br label %return

return:                                           ; preds = %if.end.i, %sw.epilog.i71.return_crit_edge, %if.end8.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -1, %entry.return_crit_edge ], [ 0, %if.end8.return_crit_edge ], [ 0, %sw.epilog.i71.return_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_flow_offload_add(ptr noundef %flowtable, ptr noundef %flow) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nf_flow_offload_work_alloc(ptr noundef %flowtable, ptr noundef %flow, i32 noundef 0)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cmd.i = getelementptr inbounds %struct.flow_offload_work, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %switch.selectcmp.i = icmp eq i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %switch.selectcmp16.i = icmp eq i32 %1, 0
  %nf_flow_offload_add_wq.val.i = load ptr, ptr @nf_flow_offload_add_wq, align 4
  %nf_flow_offload_del_wq.val.i = load ptr, ptr @nf_flow_offload_del_wq, align 4
  %nf_flow_offload_stats_wq.val.i = load ptr, ptr @nf_flow_offload_stats_wq, align 4
  %switch.select.val.i = select i1 %switch.selectcmp.i, ptr %nf_flow_offload_del_wq.val.i, ptr %nf_flow_offload_stats_wq.val.i
  %2 = select i1 %switch.selectcmp16.i, ptr %nf_flow_offload_add_wq.val.i, ptr %switch.select.val.i
  %work4.i = getelementptr inbounds %struct.flow_offload_work, ptr %call, i32 0, i32 5
  %call.i14.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work4.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nf_flow_offload_work_alloc(ptr noundef %flowtable, ptr noundef %flow, i32 noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.flow_offload, ptr %flow, i32 0, i32 2
  %call = tail call i32 @_test_and_set_bit(i32 noundef 6, ptr noundef %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 68) #11
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %flags) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cmd6 = getelementptr inbounds %struct.flow_offload_work, ptr %call7.i, i32 0, i32 1
  %1 = ptrtoint ptr %cmd6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %cmd, ptr %cmd6, align 8
  %flow7 = getelementptr inbounds %struct.flow_offload_work, ptr %call7.i, i32 0, i32 4
  %2 = ptrtoint ptr %flow7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %flow, ptr %flow7, align 4
  %priority = getelementptr inbounds %struct.nf_flowtable, ptr %flowtable, i32 0, i32 2
  %3 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %priority, align 4
  %priority8 = getelementptr inbounds %struct.flow_offload_work, ptr %call7.i, i32 0, i32 2
  %5 = ptrtoint ptr %priority8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %priority8, align 4
  %flowtable9 = getelementptr inbounds %struct.flow_offload_work, ptr %call7.i, i32 0, i32 3
  %6 = ptrtoint ptr %flowtable9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %flowtable, ptr %flowtable9, align 8
  %work = getelementptr inbounds %struct.flow_offload_work, ptr %call7.i, i32 0, i32 5
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #8
  %7 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.flow_offload_work, ptr %call7.i, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @nf_flow_offload_work_alloc.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry13 = getelementptr inbounds %struct.flow_offload_work, ptr %call7.i, i32 0, i32 5, i32 1
  %8 = ptrtoint ptr %entry13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry13, ptr %entry13, align 4
  %prev.i = getelementptr inbounds %struct.flow_offload_work, ptr %call7.i, i32 0, i32 5, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry13, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.flow_offload_work, ptr %call7.i, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @flow_offload_work_handler, ptr %func, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i, %if.end5 ], [ null, %if.then3 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_flow_offload_del(ptr noundef %flowtable, ptr noundef %flow) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nf_flow_offload_work_alloc(ptr noundef %flowtable, ptr noundef %flow, i32 noundef 1)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.flow_offload, ptr %flow, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #8
  %cmd.i = getelementptr inbounds %struct.flow_offload_work, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %switch.selectcmp.i = icmp eq i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %switch.selectcmp16.i = icmp eq i32 %1, 0
  %nf_flow_offload_add_wq.val.i = load ptr, ptr @nf_flow_offload_add_wq, align 4
  %nf_flow_offload_del_wq.val.i = load ptr, ptr @nf_flow_offload_del_wq, align 4
  %nf_flow_offload_stats_wq.val.i = load ptr, ptr @nf_flow_offload_stats_wq, align 4
  %switch.select.val.i = select i1 %switch.selectcmp.i, ptr %nf_flow_offload_del_wq.val.i, ptr %nf_flow_offload_stats_wq.val.i
  %2 = select i1 %switch.selectcmp16.i, ptr %nf_flow_offload_add_wq.val.i, ptr %switch.select.val.i
  %work4.i = getelementptr inbounds %struct.flow_offload_work, ptr %call, i32 0, i32 5
  %call.i14.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work4.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_flow_offload_stats(ptr noundef %flowtable, ptr noundef %flow) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout = getelementptr inbounds %struct.flow_offload, ptr %flow, i32 0, i32 4
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %1, %2
  %call1 = tail call i32 @flow_offload_get_timeout(ptr noundef %flow) #8
  %mul = mul i32 %call1, 9
  %div = udiv i32 %mul, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %div)
  %cmp.not = icmp ult i32 %sub.i, %div
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc ptr @nf_flow_offload_work_alloc(ptr noundef %flowtable, ptr noundef %flow, i32 noundef 2)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %cmd.i = getelementptr inbounds %struct.flow_offload_work, ptr %call2, i32 0, i32 1
  %3 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cmd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %switch.selectcmp.i = icmp eq i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %switch.selectcmp16.i = icmp eq i32 %4, 0
  %nf_flow_offload_add_wq.val.i = load ptr, ptr @nf_flow_offload_add_wq, align 4
  %nf_flow_offload_del_wq.val.i = load ptr, ptr @nf_flow_offload_del_wq, align 4
  %nf_flow_offload_stats_wq.val.i = load ptr, ptr @nf_flow_offload_stats_wq, align 4
  %switch.select.val.i = select i1 %switch.selectcmp.i, ptr %nf_flow_offload_del_wq.val.i, ptr %nf_flow_offload_stats_wq.val.i
  %5 = select i1 %switch.selectcmp16.i, ptr %nf_flow_offload_add_wq.val.i, ptr %switch.select.val.i
  %work4.i = getelementptr inbounds %struct.flow_offload_work, ptr %call2, i32 0, i32 5
  %call.i14.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %work4.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flow_offload_get_timeout(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_flow_table_offload_flush(ptr nocapture noundef readonly %flowtable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.nf_flowtable, ptr %flowtable, i32 0, i32 5
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load ptr, ptr @nf_flow_offload_add_wq, align 4
  tail call void @flush_workqueue(ptr noundef %2) #8
  %3 = load ptr, ptr @nf_flow_offload_del_wq, align 4
  tail call void @flush_workqueue(ptr noundef %3) #8
  %4 = load ptr, ptr @nf_flow_offload_stats_wq, align 4
  tail call void @flush_workqueue(ptr noundef %4) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_flow_table_offload_setup(ptr noundef %flowtable, ptr noundef %dev, i32 noundef %cmd) #0 align 64 {
entry:
  %extack = alloca %struct.netlink_ext_ack, align 4
  %bo = alloca %struct.flow_block_offload, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack) #8
  %0 = call ptr @memset(ptr %extack, i32 0, i32 36)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %bo) #8
  %1 = call ptr @memset(ptr %bo, i32 255, i32 44)
  %flags.i = getelementptr inbounds %struct.nf_flowtable, ptr %flowtable, i32 0, i32 5
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %4 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev_ops, align 8
  %ndo_setup_tc = getelementptr inbounds %struct.net_device_ops, ptr %5, i32 0, i32 42
  %6 = ptrtoint ptr %ndo_setup_tc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndo_setup_tc, align 4
  %tobool.not = icmp eq ptr %7, null
  %nd_net.i.i18 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %8 = ptrtoint ptr %nd_net.i.i18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nd_net.i.i18, align 4
  %10 = getelementptr inbounds i8, ptr %bo, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 32)
  %net1.i.i19 = getelementptr inbounds %struct.flow_block_offload, ptr %bo, i32 0, i32 4
  %12 = ptrtoint ptr %net1.i.i19 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %net1.i.i19, align 4
  %flow_block.i.i20 = getelementptr inbounds %struct.nf_flowtable, ptr %flowtable, i32 0, i32 6
  %block.i.i21 = getelementptr inbounds %struct.flow_block_offload, ptr %bo, i32 0, i32 5
  %13 = ptrtoint ptr %block.i.i21 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %flow_block.i.i20, ptr %block.i.i21, align 4
  %14 = ptrtoint ptr %bo to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cmd, ptr %bo, align 4
  %binder_type.i.i22 = getelementptr inbounds %struct.flow_block_offload, ptr %bo, i32 0, i32 1
  %15 = ptrtoint ptr %binder_type.i.i22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %binder_type.i.i22, align 4
  %extack2.i.i23 = getelementptr inbounds %struct.flow_block_offload, ptr %bo, i32 0, i32 8
  %16 = ptrtoint ptr %extack2.i.i23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %extack, ptr %extack2.i.i23, align 4
  %cb_list_head.i.i24 = getelementptr inbounds %struct.flow_block_offload, ptr %bo, i32 0, i32 10
  %17 = ptrtoint ptr %cb_list_head.i.i24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %flow_block.i.i20, ptr %cb_list_head.i.i24, align 4
  %cb_list4.i.i25 = getelementptr inbounds %struct.flow_block_offload, ptr %bo, i32 0, i32 6
  %18 = ptrtoint ptr %cb_list4.i.i25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %cb_list4.i.i25, ptr %cb_list4.i.i25, align 4
  %prev.i.i.i26 = getelementptr inbounds %struct.flow_block_offload, ptr %bo, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %prev.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %cb_list4.i.i25, ptr %prev.i.i.i26, align 4
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = call i32 %7(ptr noundef %dev, i32 noundef 14, ptr noundef nonnull %bo) #8
  %20 = call i32 @llvm.smin.i32(i32 %call1.i, i32 0) #8
  br label %if.end4

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i27 = call i32 @flow_indr_dev_setup_offload(ptr noundef %dev, ptr noundef null, i32 noundef 14, ptr noundef %flowtable, ptr noundef nonnull %bo, ptr noundef nonnull @nf_flow_table_indr_cleanup) #8
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then1
  %err.0 = phi i32 [ %20, %if.then1 ], [ %call1.i27, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp = icmp slt i32 %err.0, 0
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end4
  %21 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %cmd, label %land.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %if.end6
  %cb_list.i = getelementptr inbounds %struct.flow_block_offload, ptr %bo, i32 0, i32 6
  %22 = ptrtoint ptr %cb_list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %cb_list.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %23, %cb_list.i
  br i1 %cmp.i.not.i.i, label %sw.bb.i.cleanup_crit_edge, label %if.then.i.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %flow_block.i = getelementptr inbounds %struct.nf_flowtable, ptr %flowtable, i32 0, i32 6
  %24 = ptrtoint ptr %flow_block.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %flow_block.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.flow_block_offload, ptr %bo, i32 0, i32 6, i32 1
  %26 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %flow_block.i, ptr %prev3.i.i.i, align 4
  store ptr %23, ptr %flow_block.i, align 4
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %25, ptr %27, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %30 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev6.i.i.i, align 4
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.end6
  %cb_list3.i = getelementptr inbounds %struct.flow_block_offload, ptr %bo, i32 0, i32 6
  %31 = ptrtoint ptr %cb_list3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cb_list3.i, align 4
  %cmp.not61.i = icmp eq ptr %32, %cb_list3.i
  br i1 %cmp.not61.i, label %sw.bb2.i.cleanup_crit_edge, label %sw.bb2.i.for.body.i_crit_edge

sw.bb2.i.for.body.i_crit_edge:                    ; preds = %sw.bb2.i
  br label %for.body.i

sw.bb2.i.cleanup_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %sw.bb2.i.for.body.i_crit_edge
  %.pn.in62.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %32, %sw.bb2.i.for.body.i_crit_edge ]
  %block_cb.0.i = getelementptr i8, ptr %.pn.in62.i, i32 -8
  %33 = ptrtoint ptr %.pn.in62.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn.i = load ptr, ptr %.pn.in62.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in62.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i28 = getelementptr inbounds %struct.list_head, ptr %.pn.in62.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i28, align 4
  %36 = ptrtoint ptr %.pn.in62.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %.pn.in62.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %40 = ptrtoint ptr %.pn.in62.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in62.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in62.i, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @flow_block_cb_free(ptr noundef %block_cb.0.i) #8
  %cmp.not.i = icmp eq ptr %.pn.i, %cb_list3.i
  br i1 %cmp.not.i, label %list_del.exit.i.cleanup_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

list_del.exit.i.cleanup_crit_edge:                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.end.i:                                       ; preds = %if.end6
  %.b59.i = load i1, ptr @nf_flow_table_block_setup.__already_done, align 1
  br i1 %.b59.i, label %land.end.i.cleanup_crit_edge, label %if.then.i, !prof !42

land.end.i.cleanup_crit_edge:                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @nf_flow_table_block_setup.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1084, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %land.end.i.cleanup_crit_edge, %list_del.exit.i.cleanup_crit_edge, %sw.bb2.i.cleanup_crit_edge, %if.then.i.i, %sw.bb.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %err.0, %if.end4.cleanup_crit_edge ], [ -95, %if.then.i ], [ -95, %land.end.i.cleanup_crit_edge ], [ 0, %sw.bb.i.cleanup_crit_edge ], [ 0, %if.then.i.i ], [ 0, %sw.bb2.i.cleanup_crit_edge ], [ 0, %list_del.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %bo) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_flow_table_offload_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 66, i32 noundef 0) #8
  store ptr %call, ptr @nf_flow_offload_add_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %call1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.1, i32 noundef 66, i32 noundef 0) #8
  store ptr %call1, ptr @nf_flow_offload_del_wq, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.err_del_wq_crit_edge, label %if.end4

if.end.err_del_wq_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_del_wq

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.2, i32 noundef 66, i32 noundef 0) #8
  store ptr %call5, ptr @nf_flow_offload_stats_wq, align 4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %err_stats_wq, label %if.end4.return_crit_edge

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

err_stats_wq:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @nf_flow_offload_del_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #8
  br label %err_del_wq

err_del_wq:                                       ; preds = %err_stats_wq, %if.end.err_del_wq_crit_edge
  %1 = load ptr, ptr @nf_flow_offload_add_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #8
  br label %return

return:                                           ; preds = %err_del_wq, %if.end4.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %err_del_wq ], [ -12, %entry.return_crit_edge ], [ 0, %if.end4.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_flow_table_offload_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @nf_flow_offload_add_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #8
  %1 = load ptr, ptr @nf_flow_offload_del_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #8
  %2 = load ptr, ptr @nf_flow_offload_stats_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flow_offload_work_handler(ptr noundef %work) #0 align 64 {
entry:
  %cls_flow.i.i56.i = alloca %struct.flow_cls_offload, align 8
  %extack.i.i57.i = alloca %struct.netlink_ext_ack, align 4
  %cls_flow.i.i.i47 = alloca %struct.flow_cls_offload, align 8
  %extack.i.i.i48 = alloca %struct.netlink_ext_ack, align 4
  %cls_flow.i.i5.i = alloca %struct.flow_cls_offload, align 8
  %extack.i.i6.i = alloca %struct.netlink_ext_ack, align 4
  %cls_flow.i.i.i = alloca %struct.flow_cls_offload, align 8
  %extack.i.i.i = alloca %struct.netlink_ext_ack, align 4
  %cls_flow.i.i8.i.i = alloca %struct.flow_cls_offload, align 8
  %extack.i.i9.i.i = alloca %struct.netlink_ext_ack, align 4
  %cls_flow.i.i.i.i = alloca %struct.flow_cls_offload, align 8
  %extack.i.i.i.i = alloca %struct.netlink_ext_ack, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -24
  %cmd = getelementptr i8, ptr %work, i32 -16
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %1, label %land.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %flowtable.i.i = getelementptr i8, ptr %work, i32 -8
  %3 = ptrtoint ptr %flowtable.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %flowtable.i.i, align 4
  %net1.i.i = getelementptr inbounds %struct.nf_flowtable, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %net1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net1.i.i, align 4
  %call2.i.i = tail call fastcc ptr @nf_flow_offload_rule_alloc(ptr noundef %6, ptr noundef %add.ptr, i32 noundef 0) #8
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i.i:                                       ; preds = %sw.bb
  %call4.i.i = tail call fastcc ptr @nf_flow_offload_rule_alloc(ptr noundef %6, ptr noundef %add.ptr, i32 noundef 1) #8
  %tobool7.not.i.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool7.not.i.i, label %if.then8.i.i, label %if.end.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @__nf_flow_offload_destroy(ptr noundef nonnull %call2.i.i) #8
  br label %sw.epilog

if.end.i:                                         ; preds = %if.end.i.i
  %7 = ptrtoint ptr %flowtable.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %flowtable.i.i, align 4
  %flow.i.i.i = getelementptr i8, ptr %work, i32 -4
  %9 = ptrtoint ptr %flow.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %flow.i.i.i, align 4
  %priority.i.i.i = getelementptr i8, ptr %work, i32 -12
  %11 = ptrtoint ptr %priority.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %priority.i.i.i, align 4
  %flow_block.i.i.i = getelementptr inbounds %struct.nf_flowtable, ptr %8, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %cls_flow.i.i.i.i) #8
  %13 = call ptr @memset(ptr %cls_flow.i.i.i.i, i32 0, i32 80)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i.i.i.i) #8
  %14 = call ptr @memset(ptr %extack.i.i.i.i, i32 255, i32 36)
  %tuple.i.i.i.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %10, i32 0, i32 0, i32 1
  %protocol.i.i.i.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow.i.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %protocol.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 3, ptr %protocol.i.i.i.i.i, align 4
  %prio.i.i.i.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow.i.i.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %prio.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %12, ptr %prio.i.i.i.i.i, align 8
  %extack3.i.i.i.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow.i.i.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %extack3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %extack.i.i.i.i, ptr %extack3.i.i.i.i.i, align 4
  %command.i.i.i.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow.i.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %command.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %command.i.i.i.i.i, align 8
  %19 = ptrtoint ptr %tuple.i.i.i.i to i32
  %cookie.i.i.i.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow.i.i.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %cookie.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %cookie.i.i.i.i.i, align 4
  %rule.i.i.i.i = getelementptr inbounds %struct.nf_flow_rule, ptr %call2.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %rule.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rule.i.i.i.i, align 4
  %rule1.i.i.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow.i.i.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %rule1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %rule1.i.i.i.i, align 8
  %flow_block_lock.i.i.i.i = getelementptr inbounds %struct.nf_flowtable, ptr %8, i32 0, i32 7
  call void @down_read(ptr noundef %flow_block_lock.i.i.i.i) #8
  %24 = ptrtoint ptr %flow_block.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn24.i.i.i.i = load ptr, ptr %flow_block.i.i.i, align 4
  %cmp2.not25.i.i.i.i = icmp eq ptr %.pn24.i.i.i.i, %flow_block.i.i.i
  br i1 %cmp2.not25.i.i.i.i, label %if.end.i.flow_offload_tuple_add.exit.i.i_crit_edge, label %if.end.i.for.body.i.i.i.i_crit_edge

if.end.i.for.body.i.i.i.i_crit_edge:              ; preds = %if.end.i
  br label %for.body.i.i.i.i

if.end.i.flow_offload_tuple_add.exit.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_offload_tuple_add.exit.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.end.i.for.body.i.i.i.i_crit_edge
  %.pn27.i.i.i.i = phi ptr [ %.pn.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %.pn24.i.i.i.i, %if.end.i.for.body.i.i.i.i_crit_edge ]
  %i.026.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i.i.i_crit_edge ]
  %cb.i.i.i.i = getelementptr i8, ptr %.pn27.i.i.i.i, i32 8
  %25 = ptrtoint ptr %cb.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cb.i.i.i.i, align 4
  %cb_priv.i.i.i.i = getelementptr i8, ptr %.pn27.i.i.i.i, i32 16
  %27 = ptrtoint ptr %cb_priv.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cb_priv.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %26(i32 noundef 2, ptr noundef nonnull %cls_flow.i.i.i.i, ptr noundef %28) #8
  %29 = xor i32 %call.i.i.i.i, -1
  %call.lobit.not.i.i.i.i = lshr i32 %29, 31
  %spec.select.i.i.i.i = add i32 %call.lobit.not.i.i.i.i, %i.026.i.i.i.i
  %30 = ptrtoint ptr %.pn27.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn.i.i.i.i = load ptr, ptr %.pn27.i.i.i.i, align 4
  %cmp2.not.i.i.i.i = icmp eq ptr %.pn.i.i.i.i, %flow_block.i.i.i
  br i1 %cmp2.not.i.i.i.i, label %for.body.i.i.i.i.flow_offload_tuple_add.exit.i.i_crit_edge, label %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge

for.body.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i.i

for.body.i.i.i.i.flow_offload_tuple_add.exit.i.i_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_offload_tuple_add.exit.i.i

flow_offload_tuple_add.exit.i.i:                  ; preds = %for.body.i.i.i.i.flow_offload_tuple_add.exit.i.i_crit_edge, %if.end.i.flow_offload_tuple_add.exit.i.i_crit_edge
  %i.0.lcssa.i.i.i.i = phi i32 [ 0, %if.end.i.flow_offload_tuple_add.exit.i.i_crit_edge ], [ %spec.select.i.i.i.i, %for.body.i.i.i.i.flow_offload_tuple_add.exit.i.i_crit_edge ]
  call void @up_read(ptr noundef %flow_block_lock.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %cls_flow.i.i.i.i) #8
  %31 = ptrtoint ptr %flowtable.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %flowtable.i.i, align 4
  %33 = ptrtoint ptr %flow.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %flow.i.i.i, align 4
  %35 = ptrtoint ptr %priority.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %priority.i.i.i, align 4
  %flow_block.i13.i.i = getelementptr inbounds %struct.nf_flowtable, ptr %32, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %cls_flow.i.i8.i.i) #8
  %37 = call ptr @memset(ptr %cls_flow.i.i8.i.i, i32 0, i32 80)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i.i9.i.i) #8
  %38 = call ptr @memset(ptr %extack.i.i9.i.i, i32 255, i32 36)
  %tuple.i.i14.i.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %34, i32 0, i32 1, i32 1
  %protocol.i.i.i15.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow.i.i8.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %protocol.i.i.i15.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 3, ptr %protocol.i.i.i15.i.i, align 4
  %prio.i.i.i16.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow.i.i8.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %prio.i.i.i16.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %36, ptr %prio.i.i.i16.i.i, align 8
  %extack3.i.i.i17.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow.i.i8.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %extack3.i.i.i17.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %extack.i.i9.i.i, ptr %extack3.i.i.i17.i.i, align 4
  %command.i.i.i18.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow.i.i8.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %command.i.i.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %command.i.i.i18.i.i, align 8
  %43 = ptrtoint ptr %tuple.i.i14.i.i to i32
  %cookie.i.i.i19.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow.i.i8.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %cookie.i.i.i19.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %cookie.i.i.i19.i.i, align 4
  %rule.i.i20.i.i = getelementptr inbounds %struct.nf_flow_rule, ptr %call4.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %rule.i.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rule.i.i20.i.i, align 4
  %rule1.i.i21.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow.i.i8.i.i, i32 0, i32 3
  %47 = ptrtoint ptr %rule1.i.i21.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %rule1.i.i21.i.i, align 8
  %flow_block_lock.i.i22.i.i = getelementptr inbounds %struct.nf_flowtable, ptr %32, i32 0, i32 7
  call void @down_read(ptr noundef %flow_block_lock.i.i22.i.i) #8
  %48 = ptrtoint ptr %flow_block.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn24.i.i23.i.i = load ptr, ptr %flow_block.i13.i.i, align 4
  %cmp2.not25.i.i24.i.i = icmp eq ptr %.pn24.i.i23.i.i, %flow_block.i13.i.i
  br i1 %cmp2.not25.i.i24.i.i, label %flow_offload_tuple_add.exit.i.i.flow_offload_rule_add.exit.i_crit_edge, label %flow_offload_tuple_add.exit.i.i.for.body.i.i34.i.i_crit_edge

flow_offload_tuple_add.exit.i.i.for.body.i.i34.i.i_crit_edge: ; preds = %flow_offload_tuple_add.exit.i.i
  br label %for.body.i.i34.i.i

flow_offload_tuple_add.exit.i.i.flow_offload_rule_add.exit.i_crit_edge: ; preds = %flow_offload_tuple_add.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_offload_rule_add.exit.i

for.body.i.i34.i.i:                               ; preds = %for.body.i.i34.i.i.for.body.i.i34.i.i_crit_edge, %flow_offload_tuple_add.exit.i.i.for.body.i.i34.i.i_crit_edge
  %.pn27.i.i25.i.i = phi ptr [ %.pn.i.i32.i.i, %for.body.i.i34.i.i.for.body.i.i34.i.i_crit_edge ], [ %.pn24.i.i23.i.i, %flow_offload_tuple_add.exit.i.i.for.body.i.i34.i.i_crit_edge ]
  %i.026.i.i26.i.i = phi i32 [ %spec.select.i.i31.i.i, %for.body.i.i34.i.i.for.body.i.i34.i.i_crit_edge ], [ 0, %flow_offload_tuple_add.exit.i.i.for.body.i.i34.i.i_crit_edge ]
  %cb.i.i27.i.i = getelementptr i8, ptr %.pn27.i.i25.i.i, i32 8
  %49 = ptrtoint ptr %cb.i.i27.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cb.i.i27.i.i, align 4
  %cb_priv.i.i28.i.i = getelementptr i8, ptr %.pn27.i.i25.i.i, i32 16
  %51 = ptrtoint ptr %cb_priv.i.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cb_priv.i.i28.i.i, align 4
  %call.i.i29.i.i = call i32 %50(i32 noundef 2, ptr noundef nonnull %cls_flow.i.i8.i.i, ptr noundef %52) #8
  %53 = xor i32 %call.i.i29.i.i, -1
  %call.lobit.not.i.i30.i.i = lshr i32 %53, 31
  %spec.select.i.i31.i.i = add i32 %call.lobit.not.i.i30.i.i, %i.026.i.i26.i.i
  %54 = ptrtoint ptr %.pn27.i.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn.i.i32.i.i = load ptr, ptr %.pn27.i.i25.i.i, align 4
  %cmp2.not.i.i33.i.i = icmp eq ptr %.pn.i.i32.i.i, %flow_block.i13.i.i
  br i1 %cmp2.not.i.i33.i.i, label %for.body.i.i34.i.i.flow_offload_rule_add.exit.i_crit_edge, label %for.body.i.i34.i.i.for.body.i.i34.i.i_crit_edge

for.body.i.i34.i.i.for.body.i.i34.i.i_crit_edge:  ; preds = %for.body.i.i34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i34.i.i

for.body.i.i34.i.i.flow_offload_rule_add.exit.i_crit_edge: ; preds = %for.body.i.i34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_offload_rule_add.exit.i

flow_offload_rule_add.exit.i:                     ; preds = %for.body.i.i34.i.i.flow_offload_rule_add.exit.i_crit_edge, %flow_offload_tuple_add.exit.i.i.flow_offload_rule_add.exit.i_crit_edge
  %i.0.lcssa.i.i35.i.i = phi i32 [ 0, %flow_offload_tuple_add.exit.i.i.flow_offload_rule_add.exit.i_crit_edge ], [ %spec.select.i.i31.i.i, %for.body.i.i34.i.i.flow_offload_rule_add.exit.i_crit_edge ]
  call void @up_read(ptr noundef %flow_block_lock.i.i22.i.i) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i.i9.i.i) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %cls_flow.i.i8.i.i) #8
  %add3.i.i = sub i32 0, %i.0.lcssa.i.i35.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa.i.i.i.i, i32 %add3.i.i)
  %cmp.i.i = icmp eq i32 %i.0.lcssa.i.i.i.i, %add3.i.i
  br i1 %cmp.i.i, label %flow_offload_rule_add.exit.i.out.i_crit_edge, label %if.end5.i

flow_offload_rule_add.exit.i.out.i_crit_edge:     ; preds = %flow_offload_rule_add.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end5.i:                                        ; preds = %flow_offload_rule_add.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %flow.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %flow.i.i.i, align 4
  %ct.i = getelementptr inbounds %struct.flow_offload, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %ct.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ct.i, align 4
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %58, i32 0, i32 5
  call void @_set_bit(i32 noundef 15, ptr noundef %status.i) #8
  br label %out.i

out.i:                                            ; preds = %if.end5.i, %flow_offload_rule_add.exit.i.out.i_crit_edge
  call fastcc void @__nf_flow_offload_destroy(ptr noundef nonnull %call2.i.i) #8
  call fastcc void @__nf_flow_offload_destroy(ptr noundef nonnull %call4.i.i) #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %flow.i = getelementptr i8, ptr %work, i32 -4
  %59 = ptrtoint ptr %flow.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %flow.i, align 4
  %ct.i44 = getelementptr inbounds %struct.flow_offload, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %ct.i44 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ct.i44, align 4
  %status.i45 = getelementptr inbounds %struct.nf_conn, ptr %62, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 15, ptr noundef %status.i45) #8
  %flowtable.i.i46 = getelementptr i8, ptr %work, i32 -8
  %63 = ptrtoint ptr %flowtable.i.i46 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %flowtable.i.i46, align 4
  %65 = ptrtoint ptr %flow.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %flow.i, align 4
  %priority.i.i = getelementptr i8, ptr %work, i32 -12
  %67 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %priority.i.i, align 4
  %flow_block.i.i = getelementptr inbounds %struct.nf_flowtable, ptr %64, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %cls_flow.i.i.i) #8
  %69 = call ptr @memset(ptr %cls_flow.i.i.i, i32 0, i32 80)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i.i.i) #8
  %70 = call ptr @memset(ptr %extack.i.i.i, i32 255, i32 36)
  %tuple.i.i.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %66, i32 0, i32 0, i32 1
  %protocol.i.i.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow.i.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %protocol.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 3, ptr %protocol.i.i.i.i, align 4
  %prio.i.i.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow.i.i.i, i32 0, i32 2
  %72 = ptrtoint ptr %prio.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %68, ptr %prio.i.i.i.i, align 8
  %extack3.i.i.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow.i.i.i, i32 0, i32 3
  %73 = ptrtoint ptr %extack3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %extack.i.i.i, ptr %extack3.i.i.i.i, align 4
  %command.i.i.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow.i.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %command.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %command.i.i.i.i, align 8
  %75 = ptrtoint ptr %tuple.i.i.i to i32
  %cookie.i.i.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow.i.i.i, i32 0, i32 2
  %76 = ptrtoint ptr %cookie.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %cookie.i.i.i.i, align 4
  %flow_block_lock.i.i.i = getelementptr inbounds %struct.nf_flowtable, ptr %64, i32 0, i32 7
  call void @down_read(ptr noundef %flow_block_lock.i.i.i) #8
  %77 = ptrtoint ptr %flow_block.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pn24.i.i.i = load ptr, ptr %flow_block.i.i, align 4
  %cmp2.not25.i.i.i = icmp eq ptr %.pn24.i.i.i, %flow_block.i.i
  br i1 %cmp2.not25.i.i.i, label %sw.bb1.flow_offload_tuple_del.exit.i_crit_edge, label %sw.bb1.for.body.i.i.i_crit_edge

sw.bb1.for.body.i.i.i_crit_edge:                  ; preds = %sw.bb1
  br label %for.body.i.i.i

sw.bb1.flow_offload_tuple_del.exit.i_crit_edge:   ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_offload_tuple_del.exit.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %sw.bb1.for.body.i.i.i_crit_edge
  %.pn27.i.i.i = phi ptr [ %.pn.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %.pn24.i.i.i, %sw.bb1.for.body.i.i.i_crit_edge ]
  %cb.i.i.i = getelementptr i8, ptr %.pn27.i.i.i, i32 8
  %78 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cb.i.i.i, align 4
  %cb_priv.i.i.i = getelementptr i8, ptr %.pn27.i.i.i, i32 16
  %80 = ptrtoint ptr %cb_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cb_priv.i.i.i, align 4
  %call.i.i.i = call i32 %79(i32 noundef 2, ptr noundef nonnull %cls_flow.i.i.i, ptr noundef %81) #8
  %82 = ptrtoint ptr %.pn27.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pn.i.i.i = load ptr, ptr %.pn27.i.i.i, align 4
  %cmp2.not.i.i.i = icmp eq ptr %.pn.i.i.i, %flow_block.i.i
  br i1 %cmp2.not.i.i.i, label %for.body.i.i.i.flow_offload_tuple_del.exit.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.body.i.i.i.flow_offload_tuple_del.exit.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_offload_tuple_del.exit.i

flow_offload_tuple_del.exit.i:                    ; preds = %for.body.i.i.i.flow_offload_tuple_del.exit.i_crit_edge, %sw.bb1.flow_offload_tuple_del.exit.i_crit_edge
  call void @up_read(ptr noundef %flow_block_lock.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %cls_flow.i.i.i) #8
  %83 = ptrtoint ptr %flowtable.i.i46 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %flowtable.i.i46, align 4
  %85 = ptrtoint ptr %flow.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %flow.i, align 4
  %87 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %priority.i.i, align 4
  %flow_block.i10.i = getelementptr inbounds %struct.nf_flowtable, ptr %84, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %cls_flow.i.i5.i) #8
  %89 = call ptr @memset(ptr %cls_flow.i.i5.i, i32 0, i32 80)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i.i6.i) #8
  %90 = call ptr @memset(ptr %extack.i.i6.i, i32 255, i32 36)
  %tuple.i.i11.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %86, i32 0, i32 1, i32 1
  %protocol.i.i.i12.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow.i.i5.i, i32 0, i32 1
  %91 = ptrtoint ptr %protocol.i.i.i12.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 3, ptr %protocol.i.i.i12.i, align 4
  %prio.i.i.i13.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow.i.i5.i, i32 0, i32 2
  %92 = ptrtoint ptr %prio.i.i.i13.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %88, ptr %prio.i.i.i13.i, align 8
  %extack3.i.i.i14.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow.i.i5.i, i32 0, i32 3
  %93 = ptrtoint ptr %extack3.i.i.i14.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %extack.i.i6.i, ptr %extack3.i.i.i14.i, align 4
  %command.i.i.i15.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow.i.i5.i, i32 0, i32 1
  %94 = ptrtoint ptr %command.i.i.i15.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1, ptr %command.i.i.i15.i, align 8
  %95 = ptrtoint ptr %tuple.i.i11.i to i32
  %cookie.i.i.i16.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow.i.i5.i, i32 0, i32 2
  %96 = ptrtoint ptr %cookie.i.i.i16.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %cookie.i.i.i16.i, align 4
  %flow_block_lock.i.i17.i = getelementptr inbounds %struct.nf_flowtable, ptr %84, i32 0, i32 7
  call void @down_read(ptr noundef %flow_block_lock.i.i17.i) #8
  %97 = ptrtoint ptr %flow_block.i10.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %.pn24.i.i18.i = load ptr, ptr %flow_block.i10.i, align 4
  %cmp2.not25.i.i19.i = icmp eq ptr %.pn24.i.i18.i, %flow_block.i10.i
  br i1 %cmp2.not25.i.i19.i, label %flow_offload_tuple_del.exit.i.flow_offload_work_del.exit_crit_edge, label %flow_offload_tuple_del.exit.i.for.body.i.i26.i_crit_edge

flow_offload_tuple_del.exit.i.for.body.i.i26.i_crit_edge: ; preds = %flow_offload_tuple_del.exit.i
  br label %for.body.i.i26.i

flow_offload_tuple_del.exit.i.flow_offload_work_del.exit_crit_edge: ; preds = %flow_offload_tuple_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_offload_work_del.exit

for.body.i.i26.i:                                 ; preds = %for.body.i.i26.i.for.body.i.i26.i_crit_edge, %flow_offload_tuple_del.exit.i.for.body.i.i26.i_crit_edge
  %.pn27.i.i20.i = phi ptr [ %.pn.i.i24.i, %for.body.i.i26.i.for.body.i.i26.i_crit_edge ], [ %.pn24.i.i18.i, %flow_offload_tuple_del.exit.i.for.body.i.i26.i_crit_edge ]
  %cb.i.i21.i = getelementptr i8, ptr %.pn27.i.i20.i, i32 8
  %98 = ptrtoint ptr %cb.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cb.i.i21.i, align 4
  %cb_priv.i.i22.i = getelementptr i8, ptr %.pn27.i.i20.i, i32 16
  %100 = ptrtoint ptr %cb_priv.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cb_priv.i.i22.i, align 4
  %call.i.i23.i = call i32 %99(i32 noundef 2, ptr noundef nonnull %cls_flow.i.i5.i, ptr noundef %101) #8
  %102 = ptrtoint ptr %.pn27.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %.pn.i.i24.i = load ptr, ptr %.pn27.i.i20.i, align 4
  %cmp2.not.i.i25.i = icmp eq ptr %.pn.i.i24.i, %flow_block.i10.i
  br i1 %cmp2.not.i.i25.i, label %for.body.i.i26.i.flow_offload_work_del.exit_crit_edge, label %for.body.i.i26.i.for.body.i.i26.i_crit_edge

for.body.i.i26.i.for.body.i.i26.i_crit_edge:      ; preds = %for.body.i.i26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i26.i

for.body.i.i26.i.flow_offload_work_del.exit_crit_edge: ; preds = %for.body.i.i26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_offload_work_del.exit

flow_offload_work_del.exit:                       ; preds = %for.body.i.i26.i.flow_offload_work_del.exit_crit_edge, %flow_offload_tuple_del.exit.i.flow_offload_work_del.exit_crit_edge
  call void @up_read(ptr noundef %flow_block_lock.i.i17.i) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i.i6.i) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %cls_flow.i.i5.i) #8
  %103 = ptrtoint ptr %flow.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %flow.i, align 4
  %flags.i = getelementptr inbounds %struct.flow_offload, ptr %104, i32 0, i32 2
  call void @_set_bit(i32 noundef 5, ptr noundef %flags.i) #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %flowtable.i.i49 = getelementptr i8, ptr %work, i32 -8
  %105 = ptrtoint ptr %flowtable.i.i49 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %flowtable.i.i49, align 4
  %flow.i.i = getelementptr i8, ptr %work, i32 -4
  %107 = ptrtoint ptr %flow.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %flow.i.i, align 4
  %priority.i.i50 = getelementptr i8, ptr %work, i32 -12
  %109 = ptrtoint ptr %priority.i.i50 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %priority.i.i50, align 4
  %flow_block.i.i51 = getelementptr inbounds %struct.nf_flowtable, ptr %106, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %cls_flow.i.i.i47) #8
  %111 = call ptr @memset(ptr %cls_flow.i.i.i47, i32 0, i32 80)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i.i.i48) #8
  %112 = call ptr @memset(ptr %extack.i.i.i48, i32 255, i32 36)
  %tuple.i.i.i52 = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %108, i32 0, i32 0, i32 1
  %protocol.i.i.i.i53 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow.i.i.i47, i32 0, i32 1
  %113 = ptrtoint ptr %protocol.i.i.i.i53 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 3, ptr %protocol.i.i.i.i53, align 4
  %prio.i.i.i.i54 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow.i.i.i47, i32 0, i32 2
  %114 = ptrtoint ptr %prio.i.i.i.i54 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %110, ptr %prio.i.i.i.i54, align 8
  %extack3.i.i.i.i55 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow.i.i.i47, i32 0, i32 3
  %115 = ptrtoint ptr %extack3.i.i.i.i55 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %extack.i.i.i48, ptr %extack3.i.i.i.i55, align 4
  %command.i.i.i.i56 = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow.i.i.i47, i32 0, i32 1
  %116 = ptrtoint ptr %command.i.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 2, ptr %command.i.i.i.i56, align 8
  %117 = ptrtoint ptr %tuple.i.i.i52 to i32
  %cookie.i.i.i.i57 = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow.i.i.i47, i32 0, i32 2
  %118 = ptrtoint ptr %cookie.i.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %cookie.i.i.i.i57, align 4
  %flow_block_lock.i.i.i58 = getelementptr inbounds %struct.nf_flowtable, ptr %106, i32 0, i32 7
  call void @down_read(ptr noundef %flow_block_lock.i.i.i58) #8
  %119 = ptrtoint ptr %flow_block.i.i51 to i32
  call void @__asan_load4_noabort(i32 %119)
  %.pn24.i.i.i59 = load ptr, ptr %flow_block.i.i51, align 4
  %cmp2.not25.i.i.i60 = icmp eq ptr %.pn24.i.i.i59, %flow_block.i.i51
  br i1 %cmp2.not25.i.i.i60, label %sw.bb2.flow_offload_tuple_stats.exit.i_crit_edge, label %sw.bb2.for.body.i.i.i67_crit_edge

sw.bb2.for.body.i.i.i67_crit_edge:                ; preds = %sw.bb2
  br label %for.body.i.i.i67

sw.bb2.flow_offload_tuple_stats.exit.i_crit_edge: ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_offload_tuple_stats.exit.i

for.body.i.i.i67:                                 ; preds = %for.body.i.i.i67.for.body.i.i.i67_crit_edge, %sw.bb2.for.body.i.i.i67_crit_edge
  %.pn27.i.i.i61 = phi ptr [ %.pn.i.i.i65, %for.body.i.i.i67.for.body.i.i.i67_crit_edge ], [ %.pn24.i.i.i59, %sw.bb2.for.body.i.i.i67_crit_edge ]
  %cb.i.i.i62 = getelementptr i8, ptr %.pn27.i.i.i61, i32 8
  %120 = ptrtoint ptr %cb.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cb.i.i.i62, align 4
  %cb_priv.i.i.i63 = getelementptr i8, ptr %.pn27.i.i.i61, i32 16
  %122 = ptrtoint ptr %cb_priv.i.i.i63 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %cb_priv.i.i.i63, align 4
  %call.i.i.i64 = call i32 %121(i32 noundef 2, ptr noundef nonnull %cls_flow.i.i.i47, ptr noundef %123) #8
  %124 = ptrtoint ptr %.pn27.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %124)
  %.pn.i.i.i65 = load ptr, ptr %.pn27.i.i.i61, align 4
  %cmp2.not.i.i.i66 = icmp eq ptr %.pn.i.i.i65, %flow_block.i.i51
  br i1 %cmp2.not.i.i.i66, label %for.body.i.i.i67.flow_offload_tuple_stats.exit.i_crit_edge, label %for.body.i.i.i67.for.body.i.i.i67_crit_edge

for.body.i.i.i67.for.body.i.i.i67_crit_edge:      ; preds = %for.body.i.i.i67
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i67

for.body.i.i.i67.flow_offload_tuple_stats.exit.i_crit_edge: ; preds = %for.body.i.i.i67
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_offload_tuple_stats.exit.i

flow_offload_tuple_stats.exit.i:                  ; preds = %for.body.i.i.i67.flow_offload_tuple_stats.exit.i_crit_edge, %sw.bb2.flow_offload_tuple_stats.exit.i_crit_edge
  call void @up_read(ptr noundef %flow_block_lock.i.i.i58) #8
  %stats14.i.i.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow.i.i.i47, i32 0, i32 4
  %125 = ptrtoint ptr %stats14.i.i.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %stats.sroa.0.0.copyload.i = load i64, ptr %stats14.i.i.i, align 8
  %stats.sroa.5.0.stats14.i.i.sroa_idx.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow.i.i.i47, i32 0, i32 4, i32 1
  %126 = ptrtoint ptr %stats.sroa.5.0.stats14.i.i.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %stats.sroa.5.0.copyload.i = load i64, ptr %stats.sroa.5.0.stats14.i.i.sroa_idx.i, align 8
  %stats.sroa.680.0.stats14.i.i.sroa_idx.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow.i.i.i47, i32 0, i32 4, i32 3
  %127 = ptrtoint ptr %stats.sroa.680.0.stats14.i.i.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %127)
  %stats.sroa.680.0.copyload.i = load i64, ptr %stats.sroa.680.0.stats14.i.i.sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i.i.i48) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %cls_flow.i.i.i47) #8
  %128 = ptrtoint ptr %flowtable.i.i49 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %flowtable.i.i49, align 4
  %130 = ptrtoint ptr %flow.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %flow.i.i, align 4
  %132 = ptrtoint ptr %priority.i.i50 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %priority.i.i50, align 4
  %flow_block.i61.i = getelementptr inbounds %struct.nf_flowtable, ptr %129, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %cls_flow.i.i56.i) #8
  %134 = call ptr @memset(ptr %cls_flow.i.i56.i, i32 0, i32 80)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack.i.i57.i) #8
  %135 = call ptr @memset(ptr %extack.i.i57.i, i32 255, i32 36)
  %tuple.i.i62.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %131, i32 0, i32 1, i32 1
  %protocol.i.i.i63.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow.i.i56.i, i32 0, i32 1
  %136 = ptrtoint ptr %protocol.i.i.i63.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 3, ptr %protocol.i.i.i63.i, align 4
  %prio.i.i.i64.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow.i.i56.i, i32 0, i32 2
  %137 = ptrtoint ptr %prio.i.i.i64.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %133, ptr %prio.i.i.i64.i, align 8
  %extack3.i.i.i65.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_flow.i.i56.i, i32 0, i32 3
  %138 = ptrtoint ptr %extack3.i.i.i65.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %extack.i.i57.i, ptr %extack3.i.i.i65.i, align 4
  %command.i.i.i66.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow.i.i56.i, i32 0, i32 1
  %139 = ptrtoint ptr %command.i.i.i66.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 2, ptr %command.i.i.i66.i, align 8
  %140 = ptrtoint ptr %tuple.i.i62.i to i32
  %cookie.i.i.i67.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow.i.i56.i, i32 0, i32 2
  %141 = ptrtoint ptr %cookie.i.i.i67.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %cookie.i.i.i67.i, align 4
  %flow_block_lock.i.i68.i = getelementptr inbounds %struct.nf_flowtable, ptr %129, i32 0, i32 7
  call void @down_read(ptr noundef %flow_block_lock.i.i68.i) #8
  %142 = ptrtoint ptr %flow_block.i61.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %.pn24.i.i69.i = load ptr, ptr %flow_block.i61.i, align 4
  %cmp2.not25.i.i70.i = icmp eq ptr %.pn24.i.i69.i, %flow_block.i61.i
  br i1 %cmp2.not25.i.i70.i, label %flow_offload_tuple_stats.exit.i.flow_offload_tuple_stats.exit79.i_crit_edge, label %flow_offload_tuple_stats.exit.i.for.body.i.i77.i_crit_edge

flow_offload_tuple_stats.exit.i.for.body.i.i77.i_crit_edge: ; preds = %flow_offload_tuple_stats.exit.i
  br label %for.body.i.i77.i

flow_offload_tuple_stats.exit.i.flow_offload_tuple_stats.exit79.i_crit_edge: ; preds = %flow_offload_tuple_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_offload_tuple_stats.exit79.i

for.body.i.i77.i:                                 ; preds = %for.body.i.i77.i.for.body.i.i77.i_crit_edge, %flow_offload_tuple_stats.exit.i.for.body.i.i77.i_crit_edge
  %.pn27.i.i71.i = phi ptr [ %.pn.i.i75.i, %for.body.i.i77.i.for.body.i.i77.i_crit_edge ], [ %.pn24.i.i69.i, %flow_offload_tuple_stats.exit.i.for.body.i.i77.i_crit_edge ]
  %cb.i.i72.i = getelementptr i8, ptr %.pn27.i.i71.i, i32 8
  %143 = ptrtoint ptr %cb.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %cb.i.i72.i, align 4
  %cb_priv.i.i73.i = getelementptr i8, ptr %.pn27.i.i71.i, i32 16
  %145 = ptrtoint ptr %cb_priv.i.i73.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cb_priv.i.i73.i, align 4
  %call.i.i74.i = call i32 %144(i32 noundef 2, ptr noundef nonnull %cls_flow.i.i56.i, ptr noundef %146) #8
  %147 = ptrtoint ptr %.pn27.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %.pn.i.i75.i = load ptr, ptr %.pn27.i.i71.i, align 4
  %cmp2.not.i.i76.i = icmp eq ptr %.pn.i.i75.i, %flow_block.i61.i
  br i1 %cmp2.not.i.i76.i, label %for.body.i.i77.i.flow_offload_tuple_stats.exit79.i_crit_edge, label %for.body.i.i77.i.for.body.i.i77.i_crit_edge

for.body.i.i77.i.for.body.i.i77.i_crit_edge:      ; preds = %for.body.i.i77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i77.i

for.body.i.i77.i.flow_offload_tuple_stats.exit79.i_crit_edge: ; preds = %for.body.i.i77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %flow_offload_tuple_stats.exit79.i

flow_offload_tuple_stats.exit79.i:                ; preds = %for.body.i.i77.i.flow_offload_tuple_stats.exit79.i_crit_edge, %flow_offload_tuple_stats.exit.i.flow_offload_tuple_stats.exit79.i_crit_edge
  call void @up_read(ptr noundef %flow_block_lock.i.i68.i) #8
  %stats14.i.i78.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow.i.i56.i, i32 0, i32 4
  %148 = ptrtoint ptr %stats14.i.i78.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %stats.sroa.781.40.copyload.i = load i64, ptr %stats14.i.i78.i, align 8
  %stats.sroa.9.40.stats14.i.i78.sroa_idx.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow.i.i56.i, i32 0, i32 4, i32 1
  %149 = ptrtoint ptr %stats.sroa.9.40.stats14.i.i78.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %stats.sroa.9.40.copyload.i = load i64, ptr %stats.sroa.9.40.stats14.i.i78.sroa_idx.i, align 8
  %stats.sroa.1082.40.stats14.i.i78.sroa_idx.i = getelementptr inbounds %struct.flow_cls_offload, ptr %cls_flow.i.i56.i, i32 0, i32 4, i32 3
  %150 = ptrtoint ptr %stats.sroa.1082.40.stats14.i.i78.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %150)
  %stats.sroa.1082.40.copyload.i = load i64, ptr %stats.sroa.1082.40.stats14.i.i78.sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack.i.i57.i) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %cls_flow.i.i56.i) #8
  %151 = call i64 @llvm.umax.i64(i64 %stats.sroa.680.0.copyload.i, i64 %stats.sroa.1082.40.copyload.i) #8
  %152 = ptrtoint ptr %flow.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %flow.i.i, align 4
  %timeout.i = getelementptr inbounds %struct.flow_offload, ptr %153, i32 0, i32 4
  %154 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %timeout.i, align 4
  %conv.i = zext i32 %155 to i64
  %call.i = call i32 @flow_offload_get_timeout(ptr noundef %153) #8
  %conv7.i = zext i32 %call.i to i64
  %add.i = add i64 %151, %conv7.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv.i)
  %cmp9.i = icmp ult i64 %add.i, %conv.i
  %extract.t55.i = trunc i64 %add.i to i32
  %cond14.off0.i = select i1 %cmp9.i, i32 %155, i32 %extract.t55.i
  %156 = ptrtoint ptr %flow.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %flow.i.i, align 4
  %timeout17.i = getelementptr inbounds %struct.flow_offload, ptr %157, i32 0, i32 4
  %158 = ptrtoint ptr %timeout17.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %cond14.off0.i, ptr %timeout17.i, align 4
  %159 = ptrtoint ptr %flowtable.i.i49 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %flowtable.i.i49, align 4
  %flags.i68 = getelementptr inbounds %struct.nf_flowtable, ptr %160, i32 0, i32 5
  %161 = ptrtoint ptr %flags.i68 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %flags.i68, align 4
  %and.i = and i32 %162, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %flow_offload_tuple_stats.exit79.i.sw.epilog_crit_edge, label %if.then.i

flow_offload_tuple_stats.exit79.i.sw.epilog_crit_edge: ; preds = %flow_offload_tuple_stats.exit79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then.i:                                        ; preds = %flow_offload_tuple_stats.exit79.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %stats.sroa.0.0.copyload.i)
  %tobool19.not.i = icmp eq i64 %stats.sroa.0.0.copyload.i, 0
  br i1 %tobool19.not.i, label %if.then.i.if.end.i70_crit_edge, label %if.then20.i

if.then.i.if.end.i70_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i70

if.then20.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %163 = ptrtoint ptr %flow.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %flow.i.i, align 4
  %ct.i69 = getelementptr inbounds %struct.flow_offload, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %ct.i69 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ct.i69, align 4
  %conv24.i = trunc i64 %stats.sroa.0.0.copyload.i to i32
  %conv26.i = trunc i64 %stats.sroa.5.0.copyload.i to i32
  call void @nf_ct_acct_add(ptr noundef %166, i32 noundef 0, i32 noundef %conv24.i, i32 noundef %conv26.i) #8
  br label %if.end.i70

if.end.i70:                                       ; preds = %if.then20.i, %if.then.i.if.end.i70_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %stats.sroa.781.40.copyload.i)
  %tobool29.not.i = icmp eq i64 %stats.sroa.781.40.copyload.i, 0
  br i1 %tobool29.not.i, label %if.end.i70.sw.epilog_crit_edge, label %if.then30.i

if.end.i70.sw.epilog_crit_edge:                   ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then30.i:                                      ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #10
  %167 = ptrtoint ptr %flow.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %flow.i.i, align 4
  %ct32.i = getelementptr inbounds %struct.flow_offload, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %ct32.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ct32.i, align 4
  %conv35.i = trunc i64 %stats.sroa.781.40.copyload.i to i32
  %conv38.i = trunc i64 %stats.sroa.9.40.copyload.i to i32
  call void @nf_ct_acct_add(ptr noundef %170, i32 noundef 1, i32 noundef %conv35.i, i32 noundef %conv38.i) #8
  br label %sw.epilog

land.end:                                         ; preds = %entry
  %.b43 = load i1, ptr @flow_offload_work_handler.__already_done, align 1
  br i1 %.b43, label %land.end.sw.epilog_crit_edge, label %if.then, !prof !42

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @flow_offload_work_handler.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 973, i32 noundef 9, ptr noundef null) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %land.end.sw.epilog_crit_edge, %if.then30.i, %if.end.i70.sw.epilog_crit_edge, %flow_offload_tuple_stats.exit79.i.sw.epilog_crit_edge, %flow_offload_work_del.exit, %out.i, %if.then8.i.i, %sw.bb.sw.epilog_crit_edge
  %flow = getelementptr i8, ptr %work, i32 -4
  %171 = ptrtoint ptr %flow to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %flow, align 4
  %flags = getelementptr inbounds %struct.flow_offload, ptr %172, i32 0, i32 2
  call void @_clear_bit(i32 noundef 6, ptr noundef %flags) #8
  call void @kfree(ptr noundef %add.ptr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nf_flow_offload_rule_alloc(ptr noundef %net, ptr nocapture noundef readonly %offload, i32 noundef %dir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flowtable1 = getelementptr inbounds %struct.flow_offload_work, ptr %offload, i32 0, i32 3
  %0 = ptrtoint ptr %flowtable1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %flowtable1, align 4
  %flow2 = getelementptr inbounds %struct.flow_offload_work, ptr %offload, i32 0, i32 4
  %2 = ptrtoint ptr %flow2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %flow2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 288) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @flow_rule_alloc(i32 noundef 16) #8
  %rule = getelementptr inbounds %struct.nf_flow_rule, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %rule to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %rule, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.err_flow_rule_crit_edge, label %if.end7

if.end.err_flow_rule_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_flow_rule

if.end7:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %call3, align 8
  %mask = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rule, align 4
  %mask14 = getelementptr inbounds %struct.flow_match, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %mask14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mask, ptr %mask14, align 4
  %key = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 1
  %10 = load ptr, ptr %rule, align 4
  %key18 = getelementptr inbounds %struct.flow_match, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %key18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %key, ptr %key18, align 8
  %tuple19 = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %3, i32 0, i32 %dir, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %tobool21.not = icmp eq i32 %dir, 0
  %lnot.ext = zext i1 %tobool21.not to i32
  %xmit_type = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %3, i32 0, i32 %lnot.ext, i32 1, i32 8
  %12 = ptrtoint ptr %xmit_type to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %xmit_type, align 2
  %13 = and i8 %bf.load, 56
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %13)
  %cmp = icmp eq i8 %13, 8
  br i1 %cmp, label %if.then25, label %if.end7.if.end26_crit_edge

if.end7.if.end26_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then25:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %14 = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %3, i32 0, i32 %lnot.ext, i32 1, i32 11
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end7.if.end26_crit_edge
  %other_dst.0 = phi ptr [ %16, %if.then25 ], [ null, %if.end7.if.end26_crit_edge ]
  %offset.i = getelementptr inbounds %struct.flow_dissector, ptr %call7.i.i, i32 0, i32 1
  %arrayidx.i = getelementptr %struct.flow_dissector, ptr %call7.i.i, i32 0, i32 1, i32 25
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %arrayidx.i, align 2
  %18 = ptrtoint ptr %offset.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 8, ptr %offset.i, align 4
  %arrayidx8.i = getelementptr %struct.flow_dissector, ptr %call7.i.i, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 24, ptr %arrayidx8.i, align 2
  %arrayidx11.i = getelementptr %struct.flow_dissector, ptr %call7.i.i, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 36, ptr %arrayidx11.i, align 8
  %arrayidx14.i = getelementptr %struct.flow_dissector, ptr %call7.i.i, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 36, ptr %arrayidx14.i, align 2
  %arrayidx17.i = getelementptr %struct.flow_dissector, ptr %call7.i.i, i32 0, i32 1, i32 20
  %22 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 104, ptr %arrayidx17.i, align 4
  %arrayidx20.i = getelementptr %struct.flow_dissector, ptr %call7.i.i, i32 0, i32 1, i32 4
  %23 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 108, ptr %arrayidx20.i, align 4
  %tobool.not.i = icmp eq ptr %other_dst.0, null
  br i1 %tobool.not.i, label %if.end26.if.end.i_crit_edge, label %land.lhs.true.i

if.end26.if.end.i_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end26
  %lwtstate.i = getelementptr inbounds %struct.dst_entry, ptr %other_dst.0, i32 0, i32 13
  %24 = ptrtoint ptr %lwtstate.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lwtstate.i, align 4
  %tobool21.not.i = icmp eq ptr %25, null
  br i1 %tobool21.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %data.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %25, i32 0, i32 7
  %mode.i.i = getelementptr inbounds %struct.ip_tunnel_info, ptr %data.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %mode.i.i, align 1
  %28 = and i8 %27, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool3.not.i.i = icmp eq i8 %28, 0
  br i1 %tobool3.not.i.i, label %if.then.i.if.end.i_crit_edge, label %if.end.i.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.then.i
  %arrayidx.i.i = getelementptr %struct.flow_dissector, ptr %call7.i.i, i32 0, i32 1, i32 17
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 16, ptr %arrayidx.i.i, align 2
  %arrayidx6.i.i = getelementptr %struct.flow_dissector, ptr %call7.i.i, i32 0, i32 1, i32 14
  %30 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 68, ptr %arrayidx6.i.i, align 8
  %31 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %data.i.i, align 8
  %conv.i.i.i = trunc i64 %32 to i32
  %enc_key_id.i.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 1, i32 7
  %33 = ptrtoint ptr %enc_key_id.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv.i.i.i, ptr %enc_key_id.i.i, align 8
  %enc_key_id8.i.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 2, i32 7
  %34 = ptrtoint ptr %enc_key_id8.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %enc_key_id8.i.i, align 8
  %35 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %mode.i.i, align 1
  %37 = and i8 %36, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i.i.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i.i.i, label %if.then13.i.i, label %if.else.i.i

if.then13.i.i:                                    ; preds = %if.end.i.i
  %arrayidx16.i.i = getelementptr %struct.flow_dissector, ptr %call7.i.i, i32 0, i32 1, i32 15
  %38 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 72, ptr %arrayidx16.i.i, align 2
  %u.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %25, i32 1, i32 3
  %dst.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %25, i32 1, i32 4
  %39 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dst.i.i, align 4
  %41 = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 1, i32 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %40, ptr %41, align 4
  %43 = ptrtoint ptr %u.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %u.i.i, align 8
  %dst21.i.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 1, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1
  %45 = ptrtoint ptr %dst21.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %dst21.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool23.not.i.i = icmp eq i32 %40, 0
  br i1 %tobool23.not.i.i, label %if.then13.i.i.if.end26.i.i_crit_edge, label %if.then24.i.i

if.then13.i.i.if.end26.i.i_crit_edge:             ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i.i

if.then24.i.i:                                    ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 2, i32 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %46, align 4
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %if.then24.i.i, %if.then13.i.i.if.end26.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool28.not.i.i = icmp eq i32 %44, 0
  br i1 %tobool28.not.i.i, label %if.end26.i.i.if.end55.i.i_crit_edge, label %if.then29.i.i

if.end26.i.i.if.end55.i.i_crit_edge:              ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i.i

if.then29.i.i:                                    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dst30.i.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 2, i32 8, i32 0, i32 0, i32 0, i32 0, i32 1
  %48 = ptrtoint ptr %dst30.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %dst30.i.i, align 8
  br label %if.end55.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %49 = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 1, i32 8
  %u34.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %25, i32 1, i32 3
  %dst35.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %25, i32 1, i32 6, i32 1
  %50 = call ptr @memcpy(ptr %49, ptr %dst35.i.i, i32 16)
  %dst36.i.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 1, i32 8, i32 0, i32 1
  %51 = call ptr @memcpy(ptr %dst36.i.i, ptr %u34.i.i, i32 16)
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %49, ptr noundef nonnull dereferenceable(16) @in6addr_any, i32 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool42.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool42.not.i.i, label %if.else.i.i.if.end45.i.i_crit_edge, label %if.then43.i.i

if.else.i.i.if.end45.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45.i.i

if.then43.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 2, i32 8
  %53 = call ptr @memset(ptr %52, i32 255, i32 16)
  br label %if.end45.i.i

if.end45.i.i:                                     ; preds = %if.then43.i.i, %if.else.i.i.if.end45.i.i_crit_edge
  %bcmp88.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %dst36.i.i, ptr noundef nonnull dereferenceable(16) @in6addr_any, i32 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp88.i.i)
  %tobool48.not.i.i = icmp eq i32 %bcmp88.i.i, 0
  br i1 %tobool48.not.i.i, label %if.end45.i.i.if.end55.i.i_crit_edge, label %if.then49.i.i

if.end45.i.i.if.end55.i.i_crit_edge:              ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55.i.i

if.then49.i.i:                                    ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dst50.i.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 2, i32 8, i32 0, i32 1
  %54 = call ptr @memset(ptr %dst50.i.i, i32 255, i32 16)
  br label %if.end55.i.i

if.end55.i.i:                                     ; preds = %if.then49.i.i, %if.end45.i.i.if.end55.i.i_crit_edge, %if.then29.i.i, %if.end26.i.i.if.end55.i.i_crit_edge
  %.sink.i.i = phi i16 [ 2, %if.then29.i.i ], [ 2, %if.end26.i.i.if.end55.i.i_crit_edge ], [ 3, %if.then49.i.i ], [ 3, %if.end45.i.i.if.end55.i.i_crit_edge ]
  %enc_keys.0.i.i = phi i32 [ 180224, %if.then29.i.i ], [ 180224, %if.end26.i.i.if.end55.i.i_crit_edge ], [ 212992, %if.then49.i.i ], [ 212992, %if.end45.i.i.if.end55.i.i_crit_edge ]
  %addr_type54.i.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 1, i32 2, i32 1
  %55 = ptrtoint ptr %addr_type54.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %.sink.i.i, ptr %addr_type54.i.i, align 2
  %56 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %call7.i.i, align 8
  %or57.i.i = or i32 %57, %enc_keys.0.i.i
  store i32 %or57.i.i, ptr %call7.i.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.end55.i.i, %if.then.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge, %if.end26.if.end.i_crit_edge
  %xmit_type.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %3, i32 0, i32 %dir, i32 1, i32 8
  %58 = ptrtoint ptr %xmit_type.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load.i = load i8, ptr %xmit_type.i, align 2
  %59 = and i8 %bf.load.i, 56
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %59)
  %cmp.i = icmp eq i8 %59, 32
  %iifidx25.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %3, i32 0, i32 %dir, i32 1, i32 3
  %60 = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %3, i32 0, i32 %dir, i32 1, i32 11
  %storemerge.in.i = select i1 %cmp.i, ptr %60, ptr %iifidx25.i
  %61 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4
  %62 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %storemerge.i, ptr %key, align 4
  %63 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %mask, align 4
  %64 = ptrtoint ptr %xmit_type.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load31.i = load i8, ptr %xmit_type.i, align 2
  %65 = and i8 %bf.load31.i, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp35.not.i = icmp eq i8 %65, 0
  br i1 %cmp35.not.i, label %if.end.i.if.end57.i_crit_edge, label %land.lhs.true37.i

if.end.i.if.end57.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57.i

land.lhs.true37.i:                                ; preds = %if.end.i
  %in_vlan_ingress.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %3, i32 0, i32 %dir, i32 1, i32 9
  %66 = ptrtoint ptr %in_vlan_ingress.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load38.i = load i8, ptr %in_vlan_ingress.i, align 1
  %67 = and i8 %bf.load38.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool41.not.i = icmp eq i8 %67, 0
  br i1 %tobool41.not.i, label %land.lhs.true42.i, label %land.lhs.true37.i.if.end57.i_crit_edge

land.lhs.true37.i.if.end57.i_crit_edge:           ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57.i

land.lhs.true42.i:                                ; preds = %land.lhs.true37.i
  %proto.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %3, i32 0, i32 %dir, i32 1, i32 6, i32 0, i32 1
  %68 = ptrtoint ptr %proto.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %proto.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %69)
  %cmp45.i = icmp eq i16 %69, -32512
  br i1 %cmp45.i, label %if.then47.i, label %land.lhs.true42.i.if.end57.i_crit_edge

land.lhs.true42.i.if.end57.i_crit_edge:           ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57.i

if.then47.i:                                      ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #10
  %encap.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %3, i32 0, i32 %dir, i32 1, i32 6
  %arrayidx50.i = getelementptr %struct.flow_dissector, ptr %call7.i.i, i32 0, i32 1, i32 10
  %70 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 28, ptr %arrayidx50.i, align 8
  %vlan.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 1, i32 4
  %vlan51.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 2, i32 4
  %71 = ptrtoint ptr %encap.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %encap.i, align 2
  %73 = ptrtoint ptr %proto.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %proto.i, align 2
  %75 = ptrtoint ptr %vlan.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %bf.load.i.i = load i16, ptr %vlan.i, align 8
  %bf.shl.i.i = shl i16 %72, 4
  %bf.clear.i.i = and i16 %bf.load.i.i, 15
  %bf.set.i.i = or i16 %bf.clear.i.i, %bf.shl.i.i
  store i16 %bf.set.i.i, ptr %vlan.i, align 8
  %76 = ptrtoint ptr %vlan51.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %bf.load1.i.i = load i16, ptr %vlan51.i, align 8
  %bf.set3.i.i = or i16 %bf.load1.i.i, -16
  store i16 %bf.set3.i.i, ptr %vlan51.i, align 8
  %vlan_tpid.i.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 1
  %77 = ptrtoint ptr %vlan_tpid.i.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %74, ptr %vlan_tpid.i.i, align 2
  %vlan_tpid4.i.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 2, i32 4, i32 1
  %78 = ptrtoint ptr %vlan_tpid4.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 -1, ptr %vlan_tpid4.i.i, align 2
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then47.i, %land.lhs.true42.i.if.end57.i_crit_edge, %land.lhs.true37.i.if.end57.i_crit_edge, %if.end.i.if.end57.i_crit_edge
  %vlan_encap.0.off0.i = phi i1 [ false, %land.lhs.true37.i.if.end57.i_crit_edge ], [ true, %if.then47.i ], [ false, %land.lhs.true42.i.if.end57.i_crit_edge ], [ false, %if.end.i.if.end57.i_crit_edge ]
  %79 = ptrtoint ptr %xmit_type.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load59.i = load i8, ptr %xmit_type.i, align 2
  %80 = and i8 %bf.load59.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %cmp63.not.i = icmp eq i8 %80, 0
  br i1 %cmp63.not.i, label %if.end57.i.if.end105.i_crit_edge, label %land.lhs.true65.i

if.end57.i.if.end105.i_crit_edge:                 ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105.i

land.lhs.true65.i:                                ; preds = %if.end57.i
  %in_vlan_ingress66.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %3, i32 0, i32 %dir, i32 1, i32 9
  %81 = ptrtoint ptr %in_vlan_ingress66.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %bf.load67.i = load i8, ptr %in_vlan_ingress66.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load67.i)
  %tobool71.not.i = icmp sgt i8 %bf.load67.i, -1
  br i1 %tobool71.not.i, label %land.lhs.true72.i, label %land.lhs.true65.i.if.end105.i_crit_edge

land.lhs.true65.i.if.end105.i_crit_edge:          ; preds = %land.lhs.true65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105.i

land.lhs.true72.i:                                ; preds = %land.lhs.true65.i
  %arrayidx74.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %3, i32 0, i32 %dir, i32 1, i32 6, i32 1
  %proto75.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %3, i32 0, i32 %dir, i32 1, i32 6, i32 1, i32 1
  %82 = ptrtoint ptr %proto75.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %proto75.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %83)
  %cmp77.i = icmp eq i16 %83, -32512
  br i1 %cmp77.i, label %if.then79.i, label %land.lhs.true72.i.if.end105.i_crit_edge

land.lhs.true72.i.if.end105.i_crit_edge:          ; preds = %land.lhs.true72.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end105.i

if.then79.i:                                      ; preds = %land.lhs.true72.i
  br i1 %vlan_encap.0.off0.i, label %if.then81.i, label %if.else92.i

if.then81.i:                                      ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx84.i = getelementptr %struct.flow_dissector, ptr %call7.i.i, i32 0, i32 1, i32 22
  %84 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 32, ptr %arrayidx84.i, align 8
  %cvlan.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 1, i32 5
  %cvlan85.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 2, i32 5
  %85 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx74.i, align 2
  %87 = ptrtoint ptr %proto75.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %proto75.i, align 2
  %89 = ptrtoint ptr %cvlan.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %bf.load.i223.i = load i16, ptr %cvlan.i, align 4
  %bf.shl.i224.i = shl i16 %86, 4
  %bf.clear.i225.i = and i16 %bf.load.i223.i, 15
  %bf.set.i226.i = or i16 %bf.clear.i225.i, %bf.shl.i224.i
  store i16 %bf.set.i226.i, ptr %cvlan.i, align 4
  %90 = ptrtoint ptr %cvlan85.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %bf.load1.i227.i = load i16, ptr %cvlan85.i, align 4
  %bf.set3.i228.i = or i16 %bf.load1.i227.i, -16
  store i16 %bf.set3.i228.i, ptr %cvlan85.i, align 4
  %vlan_tpid.i229.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 1
  %91 = ptrtoint ptr %vlan_tpid.i229.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %88, ptr %vlan_tpid.i229.i, align 2
  %vlan_tpid4.i230.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 2, i32 5, i32 1
  br label %if.end105.sink.split.i

if.else92.i:                                      ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx95.i = getelementptr %struct.flow_dissector, ptr %call7.i.i, i32 0, i32 1, i32 10
  %92 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 28, ptr %arrayidx95.i, align 8
  %vlan96.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 1, i32 4
  %vlan97.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 2, i32 4
  %93 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %arrayidx74.i, align 2
  %95 = ptrtoint ptr %proto75.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %proto75.i, align 2
  %97 = ptrtoint ptr %vlan96.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %bf.load.i231.i = load i16, ptr %vlan96.i, align 8
  %bf.shl.i232.i = shl i16 %94, 4
  %bf.clear.i233.i = and i16 %bf.load.i231.i, 15
  %bf.set.i234.i = or i16 %bf.clear.i233.i, %bf.shl.i232.i
  store i16 %bf.set.i234.i, ptr %vlan96.i, align 8
  %98 = ptrtoint ptr %vlan97.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %bf.load1.i235.i = load i16, ptr %vlan97.i, align 8
  %bf.set3.i236.i = or i16 %bf.load1.i235.i, -16
  store i16 %bf.set3.i236.i, ptr %vlan97.i, align 8
  %vlan_tpid.i237.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 1
  %99 = ptrtoint ptr %vlan_tpid.i237.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %96, ptr %vlan_tpid.i237.i, align 2
  %vlan_tpid4.i238.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 2, i32 4, i32 1
  br label %if.end105.sink.split.i

if.end105.sink.split.i:                           ; preds = %if.else92.i, %if.then81.i
  %vlan_tpid4.i230.sink.i = phi ptr [ %vlan_tpid4.i230.i, %if.then81.i ], [ %vlan_tpid4.i238.i, %if.else92.i ]
  %100 = ptrtoint ptr %vlan_tpid4.i230.sink.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 -1, ptr %vlan_tpid4.i230.sink.i, align 2
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.end105.sink.split.i, %land.lhs.true72.i.if.end105.i_crit_edge, %land.lhs.true65.i.if.end105.i_crit_edge, %if.end57.i.if.end105.i_crit_edge
  %l3proto.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %3, i32 0, i32 %dir, i32 1, i32 4
  %101 = ptrtoint ptr %l3proto.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %l3proto.i, align 4
  %103 = zext i8 %102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %102, label %if.end105.i.err_flow_match_crit_edge [
    i8 2, label %sw.bb.i
    i8 10, label %sw.bb110.i
  ]

if.end105.i.err_flow_match_crit_edge:             ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_flow_match

sw.bb.i:                                          ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #10
  %addr_type.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %104 = ptrtoint ptr %addr_type.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 2, ptr %addr_type.i, align 2
  %basic.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 1, i32 3
  %105 = ptrtoint ptr %basic.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 2048, ptr %basic.i, align 4
  %106 = ptrtoint ptr %tuple19 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %tuple19, align 4
  %108 = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 1, i32 6
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %107, ptr %108, align 8
  %110 = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 2, i32 6
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 -1, ptr %110, align 8
  %112 = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %3, i32 0, i32 %dir, i32 1, i32 1
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %112, align 4
  %dst.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 1, i32 6, i32 0, i32 0, i32 0, i32 0, i32 1
  %115 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %dst.i, align 4
  %dst109.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 2, i32 6, i32 0, i32 0, i32 0, i32 0, i32 1
  %116 = ptrtoint ptr %dst109.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 -1, ptr %dst109.i, align 4
  br label %sw.epilog.i

sw.bb110.i:                                       ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #10
  %addr_type112.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %117 = ptrtoint ptr %addr_type112.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 3, ptr %addr_type112.i, align 2
  %basic113.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 1, i32 3
  %118 = ptrtoint ptr %basic113.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 -31011, ptr %basic113.i, align 4
  %119 = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 1, i32 6
  %120 = call ptr @memcpy(ptr %119, ptr %tuple19, i32 16)
  %121 = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 2, i32 6
  %122 = call ptr @memset(ptr %121, i32 255, i32 16)
  %dst117.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 1, i32 6, i32 0, i32 1
  %123 = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %3, i32 0, i32 %dir, i32 1, i32 1
  %124 = call ptr @memcpy(ptr %dst117.i, ptr %123, i32 16)
  %dst118.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 2, i32 6, i32 0, i32 1
  %125 = call ptr @memset(ptr %dst118.i, i32 255, i32 16)
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb110.i, %sw.bb.i
  %addr_type120.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 2, i32 1, i32 1
  %126 = ptrtoint ptr %addr_type120.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 -1, ptr %addr_type120.i, align 2
  %addr_type122.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %127 = ptrtoint ptr %addr_type122.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %addr_type122.i, align 2
  %conv123.i = zext i16 %128 to i32
  %shl.i = shl nuw i32 1, %conv123.i
  %129 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %call7.i.i, align 8
  %or.i = or i32 %shl.i, %130
  store i32 %or.i, ptr %call7.i.i, align 8
  %basic125.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 2, i32 3
  %131 = ptrtoint ptr %basic125.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 -1, ptr %basic125.i, align 4
  %l4proto.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %3, i32 0, i32 %dir, i32 1, i32 5
  %132 = ptrtoint ptr %l4proto.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %l4proto.i, align 1
  %134 = zext i8 %133 to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %133, label %sw.epilog.i.err_flow_match_crit_edge [
    i8 6, label %sw.bb128.i
    i8 17, label %sw.epilog.i.if.end32_crit_edge
  ]

sw.epilog.i.if.end32_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

sw.epilog.i.err_flow_match_crit_edge:             ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_flow_match

sw.bb128.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %tcp.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 1, i32 9
  %135 = ptrtoint ptr %tcp.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 0, ptr %tcp.i, align 4
  %tcp129.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 2, i32 9
  %136 = ptrtoint ptr %tcp129.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 5, ptr %tcp129.i, align 4
  %or133.i = or i32 %or.i, 1048576
  %137 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %or133.i, ptr %call7.i.i, align 8
  br label %if.end32

if.end32:                                         ; preds = %sw.bb128.i, %sw.epilog.i.if.end32_crit_edge
  %138 = ptrtoint ptr %l4proto.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %l4proto.i, align 1
  %ip_proto.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 1, i32 3, i32 1
  %140 = ptrtoint ptr %ip_proto.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %ip_proto.i, align 2
  %ip_proto139.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 2, i32 3, i32 1
  %141 = ptrtoint ptr %ip_proto139.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 -1, ptr %ip_proto139.i, align 2
  %142 = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %3, i32 0, i32 %dir, i32 1, i32 2
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %142, align 4
  %tp.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 1, i32 10
  %145 = ptrtoint ptr %tp.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %144, ptr %tp.i, align 8
  %tp141.i = getelementptr inbounds %struct.nf_flow_match, ptr %call7.i.i, i32 0, i32 2, i32 10
  %146 = ptrtoint ptr %tp141.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 -1, ptr %tp141.i, align 8
  %dst_port.i = getelementptr [2 x %struct.flow_offload_tuple_rhash], ptr %3, i32 0, i32 %dir, i32 1, i32 2, i32 1
  %147 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %dst_port.i, align 2
  %dst144.i = getelementptr inbounds %struct.anon.185, ptr %tp.i, i32 0, i32 1
  %149 = ptrtoint ptr %dst144.i to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %148, ptr %dst144.i, align 2
  %dst146.i = getelementptr inbounds %struct.anon.185, ptr %tp141.i, i32 0, i32 1
  %150 = ptrtoint ptr %dst146.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 -1, ptr %dst146.i, align 2
  %151 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %call7.i.i, align 8
  %or149.i = or i32 %152, 33554451
  store i32 %or149.i, ptr %call7.i.i, align 8
  %153 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %rule, align 4
  %action = getelementptr inbounds %struct.flow_rule, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %action, align 8
  %type = getelementptr inbounds %struct.nf_flowtable, ptr %1, i32 0, i32 3
  %156 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %type, align 4
  %action34 = getelementptr inbounds %struct.nf_flowtable_type, ptr %157, i32 0, i32 4
  %158 = ptrtoint ptr %action34 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %action34, align 4
  %call35 = tail call i32 %159(ptr noundef %net, ptr noundef %3, i32 noundef %dir, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.end32.err_flow_match_crit_edge, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end32.err_flow_match_crit_edge:                ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_flow_match

err_flow_match:                                   ; preds = %if.end32.err_flow_match_crit_edge, %sw.epilog.i.err_flow_match_crit_edge, %if.end105.i.err_flow_match_crit_edge
  %160 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %rule, align 4
  tail call void @kfree(ptr noundef %161) #8
  br label %err_flow_rule

err_flow_rule:                                    ; preds = %err_flow_match, %if.end.err_flow_rule_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_flow_rule, %if.end32.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end32.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %err_flow_rule ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__nf_flow_offload_destroy(ptr noundef %flow_rule) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rule = getelementptr inbounds %struct.nf_flow_rule, ptr %flow_rule, i32 0, i32 1
  %0 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rule, align 4
  %action12 = getelementptr inbounds %struct.flow_rule, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %action12 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %action12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.not = icmp eq i32 %3, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %4 = phi ptr [ %25, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %i.014 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %entries = getelementptr inbounds %struct.flow_rule, ptr %4, i32 1
  %arrayidx = getelementptr [0 x %struct.flow_action_entry], ptr %entries, i32 0, i32 %i.014
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp4.not = icmp eq i32 %6, 4
  br i1 %cmp4.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %7 = getelementptr inbounds %struct.flow_action_entry, ptr %arrayidx, i32 0, i32 5
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.for.inc_crit_edge, label %do.body1.i

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body1.i:                                       ; preds = %if.end
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !36
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 118
  %11 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcpu_refcnt.i, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %19, %13
  %20 = inttoptr i32 %add.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add13.i = add i32 %22, -1
  store i32 %add13.i, ptr %20, align 4
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !37
  %and.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !38

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #8, !srcloc !39
  br label %for.inc

for.inc:                                          ; preds = %do.end30.i, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.014, 1
  %24 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rule, align 4
  %action = getelementptr inbounds %struct.flow_rule, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %action, align 8
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi ptr [ %1, %entry.for.end_crit_edge ], [ %25, %for.inc.for.end_crit_edge ]
  tail call void @kfree(ptr noundef %.lcssa) #8
  tail call void @kfree(ptr noundef %flow_rule) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flow_rule_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_acct_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flow_indr_dev_setup_offload(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nf_flow_table_indr_cleanup(ptr noundef %block_cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb, i32 0, i32 6, i32 4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev2 = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  tail call void @nf_flow_table_gc_cleanup(ptr noundef %1, ptr noundef %3) #8
  %flow_block_lock = getelementptr inbounds %struct.nf_flowtable, ptr %1, i32 0, i32 7
  tail call void @down_write(ptr noundef %flow_block_lock) #8
  %list = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.flow_block_cb, ptr %block_cb, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %call.i.i10 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %block_cb) #8
  br i1 %call.i.i10, label %if.end.i.i13, label %list_del.exit.list_del.exit15_crit_edge

list_del.exit.list_del.exit15_crit_edge:          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit15

if.end.i.i13:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i11 = getelementptr inbounds %struct.list_head, ptr %block_cb, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i11, align 4
  %14 = ptrtoint ptr %block_cb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %block_cb, align 4
  %prev1.i.i.i12 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i12, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit15

list_del.exit15:                                  ; preds = %if.end.i.i13, %list_del.exit.list_del.exit15_crit_edge
  %18 = ptrtoint ptr %block_cb to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %block_cb, align 4
  %prev.i14 = getelementptr inbounds %struct.list_head, ptr %block_cb, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i14, align 4
  tail call void @flow_block_cb_free(ptr noundef %block_cb) #8
  tail call void @up_write(ptr noundef %flow_block_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_flow_table_gc_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flow_block_cb_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !24}
!llvm.named.register.sp = !{!26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__ksymtab_nf_flow_rule_route_ipv4, !1, !"__ksymtab_nf_flow_rule_route_ipv4", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_flow_table_offload.c", i32 698, i32 1}
!2 = !{ptr @__ksymtab_nf_flow_rule_route_ipv6, !3, !"__ksymtab_nf_flow_rule_route_ipv6", i1 false, i1 false}
!3 = !{!"../net/netfilter/nf_flow_table_offload.c", i32 720, i32 1}
!4 = !{ptr @__ksymtab_nf_flow_table_offload_setup, !5, !"__ksymtab_nf_flow_table_offload_setup", i1 false, i1 false}
!5 = !{!"../net/netfilter/nf_flow_table_offload.c", i32 1172, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/netfilter/nf_flow_table_offload.c", i32 1176, i32 44}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/netfilter/nf_flow_table_offload.c", i32 1181, i32 44}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/netfilter/nf_flow_table_offload.c", i32 1186, i32 46}
!12 = !{ptr @nf_flow_offload_add_wq, !13, !"nf_flow_offload_add_wq", i1 false, i1 false}
!13 = !{!"../net/netfilter/nf_flow_table_offload.c", i32 16, i32 33}
!14 = !{ptr @nf_flow_offload_del_wq, !15, !"nf_flow_offload_del_wq", i1 false, i1 false}
!15 = !{!"../net/netfilter/nf_flow_table_offload.c", i32 17, i32 33}
!16 = !{ptr @nf_flow_offload_stats_wq, !17, !"nf_flow_offload_stats_wq", i1 false, i1 false}
!17 = !{!"../net/netfilter/nf_flow_table_offload.c", i32 18, i32 33}
!18 = !{ptr @nf_flow_offload_work_alloc.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../net/netfilter/nf_flow_table_offload.c", i32 1009, i32 2}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../net/netfilter/nf_flow_table_offload.c", i32 973, i32 4}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../net/netfilter/nf_flow_table_offload.c", i32 1084, i32 3}
!26 = !{!"sp"}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 633417, i64 633478}
!37 = !{i64 636149}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{i64 636434}
!40 = !{i64 2148330467}
!41 = !{i64 2148244931, i64 2148244963, i64 2148244992, i64 2148245026, i64 2148245057, i64 2148245080}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{i64 2149336915}
