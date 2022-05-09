; ModuleID = '/llk/IR_all_yes/drivers/connector/connector.c_pt.bc'
source_filename = "../drivers/connector/connector.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cn_netlink_send_mult\22, \22a\22\09"
module asm "\09.weak\09__crc_cn_netlink_send_mult\09\09\09\09"
module asm "\09.long\09__crc_cn_netlink_send_mult\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cn_netlink_send_mult:\09\09\09\09\09"
module asm "\09.asciz \09\22cn_netlink_send_mult\22\09\09\09\09\09"
module asm "__kstrtabns_cn_netlink_send_mult:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cn_netlink_send\22, \22a\22\09"
module asm "\09.weak\09__crc_cn_netlink_send\09\09\09\09"
module asm "\09.long\09__crc_cn_netlink_send\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cn_netlink_send:\09\09\09\09\09"
module asm "\09.asciz \09\22cn_netlink_send\22\09\09\09\09\09"
module asm "__kstrtabns_cn_netlink_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cn_add_callback\22, \22a\22\09"
module asm "\09.weak\09__crc_cn_add_callback\09\09\09\09"
module asm "\09.long\09__crc_cn_add_callback\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cn_add_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22cn_add_callback\22\09\09\09\09\09"
module asm "__kstrtabns_cn_add_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cn_del_callback\22, \22a\22\09"
module asm "\09.weak\09__crc_cn_del_callback\09\09\09\09"
module asm "\09.long\09__crc_cn_del_callback\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cn_del_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22cn_del_callback\22\09\09\09\09\09"
module asm "__kstrtabns_cn_del_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.netlink_kernel_cfg = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.34, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.68, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.68 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_ieee802154_lowpan = type { %struct.netns_sysctl_lowpan, ptr }
%struct.netns_sysctl_lowpan = type { ptr }
%struct.netns_sctp = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netns_nf = type { ptr, [13 x ptr], ptr, [5 x ptr], [5 x ptr], [3 x ptr], [5 x ptr], [7 x ptr], i32, i32 }
%struct.netns_ct = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.nf_ip_net, i32 }
%struct.nf_ip_net = type { %struct.nf_generic_net, %struct.nf_tcp_net, %struct.nf_udp_net, %struct.nf_icmp_net, %struct.nf_icmp_net, %struct.nf_dccp_net, %struct.nf_sctp_net, %struct.nf_gre_net }
%struct.nf_generic_net = type { i32 }
%struct.nf_tcp_net = type { [14 x i32], i8, i8, i8, i8, i32 }
%struct.nf_udp_net = type { [2 x i32], i32 }
%struct.nf_icmp_net = type { i32 }
%struct.nf_dccp_net = type { i8, [10 x i32] }
%struct.nf_sctp_net = type { [10 x i32] }
%struct.nf_gre_net = type { %struct.list_head, [2 x i32] }
%struct.netns_nftables = type { i8 }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.cn_queue_dev = type { %struct.atomic_t, [32 x i8], %struct.list_head, %struct.spinlock, ptr }
%struct.cn_callback_entry = type { %struct.list_head, %struct.refcount_struct, ptr, %struct.cn_callback_id, ptr, i32, i32 }
%struct.cn_callback_id = type { [32 x i8], %struct.cb_id }
%struct.cb_id = type { i32, i32 }
%struct.cn_msg = type { %struct.cb_id, i32, i32, i16, i16, [0 x i8] }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }

@__UNIQUE_ID_file457 = internal constant [29 x i8] c"cn.file=drivers/connector/cn\00", section ".modinfo", align 1
@__UNIQUE_ID_license458 = internal constant [15 x i8] c"cn.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author459 = internal constant [45 x i8] c"cn.author=Evgeniy Polyakov <zbr@ioremap.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description460 = internal constant [60 x i8] c"cn.description=Generic userspace <-> kernelspace connector.\00", section ".modinfo", align 1
@__UNIQUE_ID_alias461 = internal constant [28 x i8] c"cn.alias=net-pf-16-proto-11\00", section ".modinfo", align 1
@cdev.0 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@cdev.1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_cn_netlink_send_mult = external dso_local constant [0 x i8], align 1
@__kstrtabns_cn_netlink_send_mult = external dso_local constant [0 x i8], align 1
@__ksymtab_cn_netlink_send_mult = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cn_netlink_send_mult to i32), ptr @__kstrtab_cn_netlink_send_mult, ptr @__kstrtabns_cn_netlink_send_mult }, section "___ksymtab_gpl+cn_netlink_send_mult", align 4
@__kstrtab_cn_netlink_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_cn_netlink_send = external dso_local constant [0 x i8], align 1
@__ksymtab_cn_netlink_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cn_netlink_send to i32), ptr @__kstrtab_cn_netlink_send, ptr @__kstrtabns_cn_netlink_send }, section "___ksymtab_gpl+cn_netlink_send", align 4
@cn_already_initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__kstrtab_cn_add_callback = external dso_local constant [0 x i8], align 1
@__kstrtabns_cn_add_callback = external dso_local constant [0 x i8], align 1
@__ksymtab_cn_add_callback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cn_add_callback to i32), ptr @__kstrtab_cn_add_callback, ptr @__kstrtabns_cn_add_callback }, section "___ksymtab_gpl+cn_add_callback", align 4
@__kstrtab_cn_del_callback = external dso_local constant [0 x i8], align 1
@__kstrtabns_cn_del_callback = external dso_local constant [0 x i8], align 1
@__ksymtab_cn_del_callback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cn_del_callback to i32), ptr @__kstrtab_cn_del_callback, ptr @__kstrtabns_cn_del_callback }, section "___ksymtab_gpl+cn_del_callback", align 4
@__initcall__kmod_cn__462_283_cn_init4 = internal global ptr @cn_init, section ".initcall4.init", align 4
@__exitcall_cn_fini = internal global ptr @cn_fini, section ".exitcall.exit", align 4
@__const.cn_init.cfg = private unnamed_addr constant %struct.netlink_kernel_cfg { i32 26, i32 0, ptr @cn_rx_skb, ptr null, ptr null, ptr null, ptr null }, align 4
@init_net = external dso_local global %struct.net, align 128
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cqueue\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"connector\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Name            ID\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%-15s %u:%u\0A\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [7 x i8] c"cdev.0\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [7 x i8] c"cdev.1\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [23 x i8] c"cn_already_initialized\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 258, i32 34 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 266, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 230, i32 16 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [33 x i8] c"../drivers/connector/connector.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 235, i32 17 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_alias461, ptr @__UNIQUE_ID_author459, ptr @__UNIQUE_ID_description460, ptr @__UNIQUE_ID_file457, ptr @__UNIQUE_ID_license458, ptr @__exitcall_cn_fini, ptr @__initcall__kmod_cn__462_283_cn_init4, ptr @__ksymtab_cn_add_callback, ptr @__ksymtab_cn_del_callback, ptr @__ksymtab_cn_netlink_send, ptr @__ksymtab_cn_netlink_send_mult, ptr @cdev.0, ptr @cdev.1, ptr @cn_already_initialized, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdev.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdev.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cn_already_initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cn_netlink_send_mult(ptr noundef %msg, i16 noundef zeroext %len, i32 noundef %portid, i32 noundef %__group, i32 noundef %gfp_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %portid)
  %tobool.not = icmp eq i32 %portid, 0
  %0 = or i32 %__group, %portid
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %if.else, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr @cdev.1, align 4
  %queue_lock = getelementptr inbounds %struct.cn_queue_dev, ptr %2, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %queue_lock) #4
  %3 = load ptr, ptr @cdev.1, align 4
  %queue_list = getelementptr inbounds %struct.cn_queue_dev, ptr %3, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.else
  %__cbq.0.in = phi ptr [ %queue_list, %if.else ], [ %__cbq.0, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %__cbq.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %__cbq.0 = load ptr, ptr %__cbq.0.in, align 4
  %5 = load ptr, ptr @cdev.1, align 4
  %queue_list4 = getelementptr inbounds %struct.cn_queue_dev, ptr %5, i32 0, i32 2
  %cmp.not = icmp eq ptr %__cbq.0, %queue_list4
  br i1 %cmp.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  %6 = load ptr, ptr @cdev.1, align 4
  %queue_lock1682 = getelementptr inbounds %struct.cn_queue_dev, ptr %6, i32 0, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %queue_lock1682) #4
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %id5 = getelementptr inbounds %struct.cn_callback_entry, ptr %__cbq.0, i32 0, i32 3, i32 1
  %call = tail call i32 @cn_cb_equal(ptr noundef %id5, ptr noundef %msg) #4
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %for.body.for.cond_crit_edge, label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %group9 = getelementptr inbounds %struct.cn_callback_entry, ptr %__cbq.0, i32 0, i32 6
  %7 = ptrtoint ptr %group9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %group9, align 4
  %9 = load ptr, ptr @cdev.1, align 4
  %queue_lock16 = getelementptr inbounds %struct.cn_queue_dev, ptr %9, i32 0, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %queue_lock16) #4
  br label %if.end20

if.end20:                                         ; preds = %for.end, %entry.if.end20_crit_edge
  %group.1 = phi i32 [ %8, %for.end ], [ %__group, %entry.if.end20_crit_edge ]
  br i1 %tobool.not, label %land.lhs.true, label %if.end20.if.end25_crit_edge

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end20
  %10 = load ptr, ptr @cdev.0, align 4
  %call22 = tail call i32 @netlink_has_listeners(ptr noundef %10, i32 noundef %group.1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.end20.if.end25_crit_edge
  %conv = zext i16 %len to i32
  %add = add nuw nsw i32 %conv, 20
  %sub.i.i = add nuw nsw i32 %conv, 39
  %and.i.i = and i32 %sub.i.i, 131068
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %and.i.i, i32 noundef %gfp_mask, i32 noundef 0, i32 noundef -1) #4
  %tobool27.not = icmp eq ptr %call.i.i, null
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %if.end29

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %seq = getelementptr inbounds %struct.cn_msg, ptr %msg, i32 0, i32 1
  %11 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %seq, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.i.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.i.not.i.i, label %cond.false.i.i, label %if.end29.skb_tailroom.exit.i_crit_edge

if.end29.skb_tailroom.exit.i_crit_edge:           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_tailroom.exit.i

cond.false.i.i:                                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %15 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %17 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %16 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %cond.false.i.i, %if.end29.skb_tailroom.exit.i_crit_edge
  %cond.i.i = phi i32 [ %sub.ptr.sub.i.i, %cond.false.i.i ], [ 0, %if.end29.skb_tailroom.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %and.i.i)
  %cmp.i = icmp slt i32 %cond.i.i, %and.i.i
  br i1 %cmp.i, label %skb_tailroom.exit.i.if.then32_crit_edge, label %nlmsg_put.exit, !prof !42

skb_tailroom.exit.i.if.then32_crit_edge:          ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef %12, i32 noundef 3, i32 noundef %add, i32 noundef 0) #4
  %tobool31.not = icmp eq ptr %call3.i, null
  br i1 %tobool31.not, label %nlmsg_put.exit.if.then32_crit_edge, label %if.end33

nlmsg_put.exit.if.then32_crit_edge:               ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then32

if.then32:                                        ; preds = %nlmsg_put.exit.if.then32_crit_edge, %skb_tailroom.exit.i.if.then32_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #4
  br label %cleanup

if.end33:                                         ; preds = %nlmsg_put.exit
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 16
  %19 = call ptr @memcpy(ptr %add.ptr.i, ptr %msg, i32 %add)
  %dst_group = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 16
  %20 = ptrtoint ptr %dst_group to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %group.1, ptr %dst_group, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %group.1)
  %tobool35.not = icmp eq i32 %group.1, 0
  %21 = load ptr, ptr @cdev.0, align 4
  br i1 %tobool35.not, label %if.end39, label %if.then36

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %call38 = tail call i32 @netlink_broadcast(ptr noundef %21, ptr noundef nonnull %call.i.i, i32 noundef %portid, i32 noundef %group.1, i32 noundef %gfp_mask) #4
  br label %cleanup

if.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %and.i = lshr i32 %gfp_mask, 10
  %and.i.lobit = and i32 %and.i, 1
  %22 = xor i32 %and.i.lobit, 1
  %call43 = tail call i32 @netlink_unicast(ptr noundef %21, ptr noundef nonnull %call.i.i, i32 noundef %portid, i32 noundef %22) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then36, %if.then32, %if.end25.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.end.thread
  %retval.0 = phi i32 [ %call38, %if.then36 ], [ %call43, %if.end39 ], [ -90, %if.then32 ], [ -3, %land.lhs.true.cleanup_crit_edge ], [ -12, %if.end25.cleanup_crit_edge ], [ -19, %for.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cn_cb_equal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_has_listeners(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_broadcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cn_netlink_send(ptr noundef %msg, i32 noundef %portid, i32 noundef %__group, i32 noundef %gfp_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.cn_msg, ptr %msg, i32 0, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %len, align 4
  %call = tail call i32 @cn_netlink_send_mult(ptr noundef %msg, i16 noundef zeroext %1, i32 noundef %portid, i32 noundef %__group, i32 noundef %gfp_mask)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cn_add_callback(ptr noundef %id, ptr noundef %name, ptr noundef %callback) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @cn_already_initialized, align 4
  br i1 %.b, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = load ptr, ptr @cdev.1, align 4
  %call = tail call i32 @cn_queue_add_callback(ptr noundef %0, ptr noundef %name, ptr noundef %id, ptr noundef %callback) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cn_queue_add_callback(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cn_del_callback(ptr noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cdev.1, align 4
  tail call void @cn_queue_del_callback(ptr noundef %0, ptr noundef %id) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cn_queue_del_callback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cn_init() #0 align 64 {
entry:
  %cfg = alloca %struct.netlink_kernel_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %cfg) #4
  %0 = call ptr @memcpy(ptr %cfg, ptr @__const.cn_init.cfg, i32 28)
  %call.i = call ptr @__netlink_kernel_create(ptr noundef nonnull @init_net, i32 noundef 11, ptr noundef null, ptr noundef nonnull %cfg) #4
  store ptr %call.i, ptr @cdev.0, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call ptr @cn_queue_alloc_dev(ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #4
  store ptr %call3, ptr @cdev.1, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = load ptr, ptr @cdev.0, align 4
  call void @netlink_kernel_release(ptr noundef %1) #4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @cn_already_initialized, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call9 = call ptr @proc_create_single_data(ptr noundef nonnull @.str.1, i16 noundef zeroext 292, ptr noundef %2, ptr noundef nonnull @cn_proc_show, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %if.then6 ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %cfg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cn_fini() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 false, ptr @cn_already_initialized, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.1, ptr noundef %0) #4
  %1 = load ptr, ptr @cdev.1, align 4
  tail call void @cn_queue_free_dev(ptr noundef %1) #4
  %2 = load ptr, ptr @cdev.0, align 4
  tail call void @netlink_kernel_release(ptr noundef %2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cn_rx_skb(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %1)
  %cmp = icmp ugt i32 %1, 15
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %sub.i = add i32 %5, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i)
  %cmp3 = icmp slt i32 %sub.i, 20
  br i1 %cmp3, label %if.then.cleanup_crit_edge, label %lor.lhs.false

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp5 = icmp ult i32 %1, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %sub.i)
  %cmp7 = icmp ugt i32 %sub.i, 16384
  %or.cond = or i1 %cmp5, %cmp7
  br i1 %or.cond, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #4
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #4, !srcloc !43
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !42

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !44

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i, i32 noundef %.sink.i.i.i.i) #4
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 16
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %len.i = getelementptr i8, ptr %9, i32 32
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %len.i, align 4
  %conv.i = zext i16 %13 to i32
  %add.i = add nuw nsw i32 %conv.i, 36
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %add.i)
  %cmp.i = icmp ult i32 %11, %add.i
  br i1 %cmp.i, label %skb_get.exit.if.then12_crit_edge, label %if.end.i

skb_get.exit.if.then12_crit_edge:                 ; preds = %skb_get.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.end.i:                                         ; preds = %skb_get.exit
  %14 = load ptr, ptr @cdev.1, align 4
  %queue_lock.i = getelementptr inbounds %struct.cn_queue_dev, ptr %14, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %queue_lock.i) #4
  %15 = load ptr, ptr @cdev.1, align 4
  %queue_list.i = getelementptr inbounds %struct.cn_queue_dev, ptr %15, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %i.0.in.i = phi ptr [ %queue_list.i, %if.end.i ], [ %i.0.i, %for.body.i.for.cond.i_crit_edge ]
  %16 = ptrtoint ptr %i.0.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %i.0.i = load ptr, ptr %i.0.in.i, align 4
  %17 = load ptr, ptr @cdev.1, align 4
  %queue_list6.i = getelementptr inbounds %struct.cn_queue_dev, ptr %17, i32 0, i32 2
  %cmp7.not.i = icmp eq ptr %i.0.i, %queue_list6.i
  br i1 %cmp7.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %id9.i = getelementptr inbounds %struct.cn_callback_entry, ptr %i.0.i, i32 0, i32 3, i32 1
  %call11.i = tail call i32 @cn_cb_equal(ptr noundef %id9.i, ptr noundef %add.ptr.i.i) #4
  %tobool.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %if.then12.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

if.then12.i:                                      ; preds = %for.body.i
  %refcnt.i = getelementptr inbounds %struct.cn_callback_entry, ptr %i.0.i, i32 0, i32 1
  %call.i.i.i.i.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #4
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #4, !srcloc !43
  %asmresult.i.i.i.i.i.i24 = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i24)
  %tobool1.not.i.i.i.i25 = icmp eq i32 %asmresult.i.i.i.i.i.i24, 0
  br i1 %tobool1.not.i.i.i.i25, label %if.then12.i.if.end15.sink.split.i.i.i.i30_crit_edge, label %if.else.i.i.i.i28, !prof !42

if.then12.i.if.end15.sink.split.i.i.i.i30_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.sink.split.i.i.i.i30

if.else.i.i.i.i28:                                ; preds = %if.then12.i
  %add.i.i.i.i26 = add i32 %asmresult.i.i.i.i.i.i24, 1
  %19 = or i32 %add.i.i.i.i26, %asmresult.i.i.i.i.i.i24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %.not.i.i.i.i27 = icmp sgt i32 %19, -1
  br i1 %.not.i.i.i.i27, label %if.else.i.i.i.i28.for.end.i_crit_edge, label %if.else.i.i.i.i28.if.end15.sink.split.i.i.i.i30_crit_edge, !prof !44

if.else.i.i.i.i28.if.end15.sink.split.i.i.i.i30_crit_edge: ; preds = %if.else.i.i.i.i28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.sink.split.i.i.i.i30

if.else.i.i.i.i28.for.end.i_crit_edge:            ; preds = %if.else.i.i.i.i28
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

if.end15.sink.split.i.i.i.i30:                    ; preds = %if.else.i.i.i.i28.if.end15.sink.split.i.i.i.i30_crit_edge, %if.then12.i.if.end15.sink.split.i.i.i.i30_crit_edge
  %.sink.i.i.i.i29 = phi i32 [ 2, %if.then12.i.if.end15.sink.split.i.i.i.i30_crit_edge ], [ 1, %if.else.i.i.i.i28.if.end15.sink.split.i.i.i.i30_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i29) #4
  br label %for.end.i

for.end.i:                                        ; preds = %if.end15.sink.split.i.i.i.i30, %if.else.i.i.i.i28.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  %cbq.0.i = phi ptr [ %i.0.i, %if.else.i.i.i.i28.for.end.i_crit_edge ], [ %i.0.i, %if.end15.sink.split.i.i.i.i30 ], [ null, %for.cond.i.for.end.i_crit_edge ]
  %20 = load ptr, ptr @cdev.1, align 4
  %queue_lock20.i = getelementptr inbounds %struct.cn_queue_dev, ptr %20, i32 0, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %queue_lock20.i) #4
  %cmp21.not.i = icmp eq ptr %cbq.0.i, null
  br i1 %cmp21.not.i, label %for.end.i.if.then12_crit_edge, label %cn_call_callback.exit

for.end.i.if.then12_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

cn_call_callback.exit:                            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %callback.i = getelementptr inbounds %struct.cn_callback_entry, ptr %cbq.0.i, i32 0, i32 4
  %21 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %callback.i, align 4
  tail call void %22(ptr noundef %add.ptr.i.i, ptr noundef %cb.i) #4
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #4
  tail call void @cn_queue_release_callback(ptr noundef nonnull %cbq.0.i) #4
  br label %cleanup

if.then12:                                        ; preds = %for.end.i.if.then12_crit_edge, %skb_get.exit.if.then12_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %cn_call_callback.exit, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cn_queue_alloc_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlink_kernel_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cn_proc_show(ptr noundef %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cdev.1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.2) #4
  %queue_lock = getelementptr inbounds %struct.cn_queue_dev, ptr %0, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %queue_lock) #4
  %queue_list = getelementptr inbounds %struct.cn_queue_dev, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %queue_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %cbq.020 = load ptr, ptr %queue_list, align 4
  %cmp.not21 = icmp eq ptr %cbq.020, %queue_list
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %cbq.022 = phi ptr [ %cbq.0, %for.body.for.body_crit_edge ], [ %cbq.020, %entry.for.body_crit_edge ]
  %id = getelementptr inbounds %struct.cn_callback_entry, ptr %cbq.022, i32 0, i32 3
  %id3 = getelementptr inbounds %struct.cn_callback_entry, ptr %cbq.022, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id3, align 4
  %val = getelementptr inbounds %struct.cn_callback_entry, ptr %cbq.022, i32 0, i32 3, i32 1, i32 1
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.3, ptr noundef %id, i32 noundef %3, i32 noundef %5) #4
  %6 = ptrtoint ptr %cbq.022 to i32
  call void @__asan_load4_noabort(i32 %6)
  %cbq.0 = load ptr, ptr %cbq.022, align 4
  %cmp.not = icmp eq ptr %cbq.0, %queue_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %queue_lock) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cn_queue_release_callback(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netlink_kernel_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cn_queue_free_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__UNIQUE_ID_file457, !1, !"__UNIQUE_ID_file457", i1 false, i1 false}
!1 = !{!"../drivers/connector/connector.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_license458, !1, !"__UNIQUE_ID_license458", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author459, !4, !"__UNIQUE_ID_author459", i1 false, i1 false}
!4 = !{!"../drivers/connector/connector.c", i32 25, i32 1}
!5 = !{ptr @__UNIQUE_ID_description460, !6, !"__UNIQUE_ID_description460", i1 false, i1 false}
!6 = !{!"../drivers/connector/connector.c", i32 26, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias461, !8, !"__UNIQUE_ID_alias461", i1 false, i1 false}
!8 = !{!"../drivers/connector/connector.c", i32 27, i32 1}
!9 = !{ptr @__ksymtab_cn_netlink_send_mult, !10, !"__ksymtab_cn_netlink_send_mult", i1 false, i1 false}
!10 = !{!"../drivers/connector/connector.c", i32 118, i32 1}
!11 = !{ptr @__ksymtab_cn_netlink_send, !12, !"__ksymtab_cn_netlink_send", i1 false, i1 false}
!12 = !{!"../drivers/connector/connector.c", i32 126, i32 1}
!13 = !{ptr @__ksymtab_cn_add_callback, !14, !"__ksymtab_cn_add_callback", i1 false, i1 false}
!14 = !{!"../drivers/connector/connector.c", i32 207, i32 1}
!15 = !{ptr @__ksymtab_cn_del_callback, !16, !"__ksymtab_cn_del_callback", i1 false, i1 false}
!16 = !{!"../drivers/connector/connector.c", i32 223, i32 1}
!17 = !{ptr @__initcall__kmod_cn__462_283_cn_init4, !18, !"__initcall__kmod_cn__462_283_cn_init4", i1 false, i1 false}
!18 = !{!"../drivers/connector/connector.c", i32 283, i32 1}
!19 = !{ptr @__exitcall_cn_fini, !20, !"__exitcall_cn_fini", i1 false, i1 false}
!20 = !{!"../drivers/connector/connector.c", i32 284, i32 1}
!21 = distinct !{null, !22, !"cdev", i1 false, i1 false}
!22 = !{!"../drivers/connector/connector.c", i32 29, i32 22}
!23 = distinct !{null, !24, !"cn_already_initialized", i1 false, i1 false}
!24 = !{!"../drivers/connector/connector.c", i32 31, i32 12}
!25 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/connector/connector.c", i32 258, i32 34}
!27 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/connector/connector.c", i32 266, i32 2}
!29 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/connector/connector.c", i32 230, i32 16}
!31 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/connector/connector.c", i32 235, i32 17}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{i64 2148216106, i64 2148216138, i64 2148216167, i64 2148216201, i64 2148216232, i64 2148216255}
!44 = !{!"branch_weights", i32 2000, i32 1}
