; ModuleID = '/llk/IR_all_yes/lib/kobject_uevent.c_pt.bc'
source_filename = "../lib/kobject_uevent.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+kobject_uevent_env\22, \22a\22\09"
module asm "\09.weak\09__crc_kobject_uevent_env\09\09\09\09"
module asm "\09.long\09__crc_kobject_uevent_env\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kobject_uevent_env:\09\09\09\09\09"
module asm "\09.asciz \09\22kobject_uevent_env\22\09\09\09\09\09"
module asm "__kstrtabns_kobject_uevent_env:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+kobject_uevent\22, \22a\22\09"
module asm "\09.weak\09__crc_kobject_uevent\09\09\09\09"
module asm "\09.long\09__crc_kobject_uevent\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kobject_uevent:\09\09\09\09\09"
module asm "\09.asciz \09\22kobject_uevent\22\09\09\09\09\09"
module asm "__kstrtabns_kobject_uevent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+add_uevent_var\22, \22a\22\09"
module asm "\09.weak\09__crc_add_uevent_var\09\09\09\09"
module asm "\09.long\09__crc_add_uevent_var\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_add_uevent_var:\09\09\09\09\09"
module asm "\09.asciz \09\22add_uevent_var\22\09\09\09\09\09"
module asm "__kstrtabns_add_uevent_var:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.35 }
%union.anon.35 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.netlink_kernel_cfg = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.kobj_uevent_env = type { [3 x ptr], [64 x ptr], i32, [2048 x i8], i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.kset_uevent_ops = type { ptr, ptr, ptr }
%struct.__va_list = type { ptr }
%struct.kobj_ns_type_operations = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.uevent_sock = type { %struct.list_head, ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.90, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.90 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.sock_common = type { %union.anon.40, %union.anon.42, %union.anon.43, i16, i8, i8, i32, %union.anon.45, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.40 = type { i64 }
%union.anon.42 = type { i32 }
%union.anon.43 = type { i32 }
%union.anon.45 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { %struct.hlist_node }
%union.anon.74 = type { i32 }
%union.anon.75 = type { i32 }
%struct.subprocess_info = type { %struct.work_struct, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }

@uevent_helper = dso_local global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SYNTH_UUID=0\00", [19 x i8] zeroinitializer }, align 32
@__const.kobject_synth_uevent.no_uuid_envp = private unnamed_addr constant [2 x ptr] [ptr @.str, ptr null], align 8
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unknown uevent action string\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"incorrect uevent action arguments\00", [62 x i8] zeroinitializer }, align 32
@kobject_synth_uevent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014synth uevent: %s: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"kobject_synth_uevent\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lib/kobject_uevent.c\00", [43 x i8] zeroinitializer }, align 32
@kobject_synth_uevent._entry_ptr = internal global ptr @kobject_synth_uevent._entry, section ".printk_index", align 4
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unknown device\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to send uevent\00", [42 x i8] zeroinitializer }, align 32
@kobject_actions = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], [32 x i8] zeroinitializer }, align 32
@kobject_uevent_env.__UNIQUE_ID_ddebug457 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.5, ptr @.str.10, i8 0, i8 119, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"kobject_uevent\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kobject_uevent_env\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"kobject: '%s' (%p): %s\0A\00", [40 x i8] zeroinitializer }, align 32
@kobject_uevent_env.__UNIQUE_ID_ddebug458 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.5, ptr @.str.11, i8 0, i8 122, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"kobject: '%s' (%p): %s: attempted to send uevent without kset!\0A\00", [32 x i8] zeroinitializer }, align 32
@kobject_uevent_env.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.5, ptr @.str.12, i8 0, i8 124, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"kobject: '%s' (%p): %s: uevent_suppress caused the event to drop!\0A\00", [61 x i8] zeroinitializer }, align 32
@kobject_uevent_env.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.5, ptr @.str.13, i8 0, i8 126, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"kobject: '%s' (%p): %s: filter function caused the event to drop!\0A\00", [61 x i8] zeroinitializer }, align 32
@kobject_uevent_env.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.5, ptr @.str.14, i8 0, i8 -127, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"kobject: '%s' (%p): %s: unset subsystem caused the event to drop!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ACTION=%s\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DEVPATH=%s\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SUBSYSTEM=%s\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@kobject_uevent_env.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.5, ptr @.str.19, i8 0, i8 -116, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"kobject: '%s' (%p): %s: uevent() returned %d\0A\00", [50 x i8] zeroinitializer }, align 32
@uevent_sock_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @uevent_sock_mutex, i64 52), ptr getelementptr (i8, ptr @uevent_sock_mutex, i64 52) }, ptr @uevent_sock_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.36, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SEQNUM=%llu\00", [20 x i8] zeroinitializer }, align 32
@uevent_seqnum = dso_local global { i64, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HOME=/\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PATH=/sbin:/bin:/usr/sbin:/usr/bin\00", [61 x i8] zeroinitializer }, align 32
@__kstrtab_kobject_uevent_env = external dso_local constant [0 x i8], align 1
@__kstrtabns_kobject_uevent_env = external dso_local constant [0 x i8], align 1
@__ksymtab_kobject_uevent_env = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kobject_uevent_env to i32), ptr @__kstrtab_kobject_uevent_env, ptr @__kstrtabns_kobject_uevent_env }, section "___ksymtab_gpl+kobject_uevent_env", align 4
@__kstrtab_kobject_uevent = external dso_local constant [0 x i8], align 1
@__kstrtabns_kobject_uevent = external dso_local constant [0 x i8], align 1
@__ksymtab_kobject_uevent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kobject_uevent to i32), ptr @__kstrtab_kobject_uevent, ptr @__kstrtabns_kobject_uevent }, section "___ksymtab_gpl+kobject_uevent", align 4
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013add_uevent_var: too many keys\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013add_uevent_var: buffer size too small\0A\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_add_uevent_var = external dso_local constant [0 x i8], align 1
@__kstrtabns_add_uevent_var = external dso_local constant [0 x i8], align 1
@__ksymtab_add_uevent_var = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @add_uevent_var to i32), ptr @__kstrtab_add_uevent_var, ptr @__kstrtabns_add_uevent_var }, section "___ksymtab_gpl+add_uevent_var", align 4
@__initcall__kmod_kobject_uevent__463_814_kobject_uevent_init2 = internal global ptr @kobject_uevent_init, section ".initcall2.init", align 4
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SYNTH_UUID=%.*s\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SYNTH_ARG_%.*s=%.*s\00", [44 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"add\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"remove\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"change\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"move\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"online\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"offline\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bind\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"unbind\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@zap_modalias_env.modalias_prefix = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MODALIAS=\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"uevent_sock_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"uevent_sock_mutex\00", [46 x i8] zeroinitializer }, align 32
@uevent_sock_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @uevent_sock_list, ptr @uevent_sock_list }, [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s@%s\00", [26 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@init_uevent_argv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.5, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014init_uevent_argv: buffer size of %d too small, needed %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"init_uevent_argv\00", [47 x i8] zeroinitializer }, align 32
@init_uevent_argv._entry_ptr = internal global ptr @init_uevent_argv._entry, section ".printk_index", align 4
@uevent_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @uevent_net_init, ptr null, ptr @uevent_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__const.uevent_net_init.cfg = private unnamed_addr constant %struct.netlink_kernel_cfg { i32 1, i32 1, ptr @uevent_net_rcv, ptr null, ptr null, ptr null, ptr null }, align 4
@uevent_net_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.5, i32 772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013kobject_uevent: unable to create netlink socket!\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"uevent_net_init\00", [16 x i8] zeroinitializer }, align 32
@uevent_net_init._entry_ptr = internal global ptr @uevent_net_init._entry, section ".printk_index", align 4
@uevent_net_rcv_skb.__msg = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"missing CAP_SYS_ADMIN capability\00", [63 x i8] zeroinitializer }, align 32
@uevent_net_broadcast.__msg = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"uevent message too big\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 4294967191, i64 4294967293]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 4294967191, i64 4294967293]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 4294967191, i64 4294967293]
@___asan_gen_.47 = private unnamed_addr constant [14 x i8] c"uevent_helper\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 35, i32 6 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 194, i32 27 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 203, i32 9 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 215, i32 9 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 227, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [16 x i8] c"kobject_actions\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 51, i32 20 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 477, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 486, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 497, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 505, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 517, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 536, i32 31 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 539, i32 31 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 542, i32 31 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 549, i32 33 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 559, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant [18 x i8] c"uevent_sock_mutex\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 588, i32 31 }
@___asan_gen_.122 = private unnamed_addr constant [14 x i8] c"uevent_seqnum\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 33, i32 5 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 602, i32 32 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 606, i32 6 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 660, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 671, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 134, i32 26 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 168, i32 27 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 52, i32 16 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 53, i32 19 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 54, i32 19 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 55, i32 17 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 56, i32 19 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 57, i32 19 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 58, i32 17 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 59, i32 19 }
@___asan_gen_.167 = private unnamed_addr constant [16 x i8] c"modalias_prefix\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 421, i32 20 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 48, i32 8 }
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"uevent_sock_list\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 44, i32 8 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 296, i32 19 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 259, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [15 x i8] c"uevent_net_ops\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 803, i32 33 }
@___asan_gen_.194 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 772, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 741, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.207 = private constant [24 x i8] c"../lib/kobject_uevent.c\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 698, i32 3 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__initcall__kmod_kobject_uevent__463_814_kobject_uevent_init2, ptr @__ksymtab_add_uevent_var, ptr @__ksymtab_kobject_uevent, ptr @__ksymtab_kobject_uevent_env, ptr @init_uevent_argv._entry, ptr @init_uevent_argv._entry_ptr, ptr @kobject_synth_uevent._entry, ptr @kobject_synth_uevent._entry_ptr, ptr @uevent_net_init._entry, ptr @uevent_net_init._entry_ptr, ptr @uevent_helper, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @kobject_actions, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @uevent_sock_mutex, ptr @.str.20, ptr @uevent_seqnum, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @zap_modalias_env.modalias_prefix, ptr @.str.35, ptr @.str.36, ptr @uevent_sock_list, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @uevent_net_ops, ptr @.str.40, ptr @.str.41, ptr @uevent_net_rcv_skb.__msg, ptr @uevent_net_broadcast.__msg], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uevent_helper to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kobject_synth_uevent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kobject_actions to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uevent_sock_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uevent_seqnum to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zap_modalias_env.modalias_prefix to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uevent_sock_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_uevent_argv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uevent_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uevent_net_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uevent_net_rcv_skb.__msg to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uevent_net_broadcast.__msg to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kobject_synth_uevent(ptr noundef %kobj, ptr noundef %buf, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %no_uuid_envp = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %no_uuid_envp) #14
  %0 = load i64, ptr @__const.kobject_synth_uevent.no_uuid_envp, align 8
  %1 = ptrtoint ptr %no_uuid_envp to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %no_uuid_envp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not.i = icmp eq i32 %count, 0
  br i1 %tobool.not.i, label %entry.if.then14_crit_edge, label %land.lhs.true.i

entry.if.then14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

land.lhs.true.i:                                  ; preds = %entry
  %sub.i = add i32 %count, -1
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %sub.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %land.lhs.true.i.if.end9.i_crit_edge [
    i8 10, label %land.lhs.true.i.if.end.i_crit_edge
    i8 0, label %land.lhs.true.i.if.end.i_crit_edge87
  ]

land.lhs.true.i.if.end.i_crit_edge87:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge87
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool7.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool7.not.i, label %if.end.i.if.then14_crit_edge, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i

if.end.i.if.then14_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.end9.i:                                        ; preds = %if.end.i.if.end9.i_crit_edge, %land.lhs.true.i.if.end9.i_crit_edge
  %count.addr.055.i = phi i32 [ %sub.i, %if.end.i.if.end9.i_crit_edge ], [ %count, %land.lhs.true.i.if.end9.i_crit_edge ]
  %call.i = tail call ptr @strnchr(ptr noundef %buf, i32 noundef %count.addr.055.i, i32 noundef 32) #14
  %tobool10.not.i = icmp eq ptr %call.i, null
  %sub.ptr.lhs.cast.i = ptrtoint ptr %call.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %buf to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 1
  %count_first.0.i = select i1 %tobool10.not.i, i32 %count.addr.055.i, i32 %sub.ptr.sub.i
  %args_start.0.i = select i1 %tobool10.not.i, ptr null, ptr %add.ptr.i
  %call16.i = tail call i32 @strncmp(ptr noundef nonnull @.str.27, ptr noundef %buf, i32 noundef %count_first.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.not.i = icmp eq i32 %call16.i, 0
  br i1 %cmp17.not.i, label %if.end20.i, label %if.end9.i.for.inc.i_crit_edge

if.end9.i.for.inc.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end20.i:                                       ; preds = %if.end9.i
  %arrayidx22.i = getelementptr i8, ptr @.str.27, i32 %count_first.0.i
  %5 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx22.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp24.not.i = icmp eq i8 %6, 0
  br i1 %cmp24.not.i, label %if.end20.i.if.end_crit_edge, label %if.end20.i.for.inc.i_crit_edge

if.end20.i.for.inc.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end20.i.if.end_crit_edge:                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.i:                                        ; preds = %if.end20.i.for.inc.i_crit_edge, %if.end9.i.for.inc.i_crit_edge
  %call16.1.i = tail call i32 @strncmp(ptr noundef nonnull @.str.28, ptr noundef %buf, i32 noundef %count_first.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.1.i)
  %cmp17.not.1.i = icmp eq i32 %call16.1.i, 0
  br i1 %cmp17.not.1.i, label %if.end20.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i

if.end20.1.i:                                     ; preds = %for.inc.i
  %arrayidx22.1.i = getelementptr i8, ptr @.str.28, i32 %count_first.0.i
  %7 = ptrtoint ptr %arrayidx22.1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx22.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp24.not.1.i = icmp eq i8 %8, 0
  br i1 %cmp24.not.1.i, label %if.end20.1.i.if.end_crit_edge, label %if.end20.1.i.for.inc.1.i_crit_edge

if.end20.1.i.for.inc.1.i_crit_edge:               ; preds = %if.end20.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i

if.end20.1.i.if.end_crit_edge:                    ; preds = %if.end20.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.1.i:                                      ; preds = %if.end20.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %call16.2.i = tail call i32 @strncmp(ptr noundef nonnull @.str.29, ptr noundef %buf, i32 noundef %count_first.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.2.i)
  %cmp17.not.2.i = icmp eq i32 %call16.2.i, 0
  br i1 %cmp17.not.2.i, label %if.end20.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i

if.end20.2.i:                                     ; preds = %for.inc.1.i
  %arrayidx22.2.i = getelementptr i8, ptr @.str.29, i32 %count_first.0.i
  %9 = ptrtoint ptr %arrayidx22.2.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx22.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp24.not.2.i = icmp eq i8 %10, 0
  br i1 %cmp24.not.2.i, label %if.end20.2.i.if.end_crit_edge, label %if.end20.2.i.for.inc.2.i_crit_edge

if.end20.2.i.for.inc.2.i_crit_edge:               ; preds = %if.end20.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i

if.end20.2.i.if.end_crit_edge:                    ; preds = %if.end20.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.2.i:                                      ; preds = %if.end20.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %call16.3.i = tail call i32 @strncmp(ptr noundef nonnull @.str.30, ptr noundef %buf, i32 noundef %count_first.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.3.i)
  %cmp17.not.3.i = icmp eq i32 %call16.3.i, 0
  br i1 %cmp17.not.3.i, label %if.end20.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3.i

if.end20.3.i:                                     ; preds = %for.inc.2.i
  %arrayidx22.3.i = getelementptr i8, ptr @.str.30, i32 %count_first.0.i
  %11 = ptrtoint ptr %arrayidx22.3.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx22.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp24.not.3.i = icmp eq i8 %12, 0
  br i1 %cmp24.not.3.i, label %if.end20.3.i.if.end_crit_edge, label %if.end20.3.i.for.inc.3.i_crit_edge

if.end20.3.i.for.inc.3.i_crit_edge:               ; preds = %if.end20.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3.i

if.end20.3.i.if.end_crit_edge:                    ; preds = %if.end20.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.3.i:                                      ; preds = %if.end20.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %call16.4.i = tail call i32 @strncmp(ptr noundef nonnull @.str.31, ptr noundef %buf, i32 noundef %count_first.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.4.i)
  %cmp17.not.4.i = icmp eq i32 %call16.4.i, 0
  br i1 %cmp17.not.4.i, label %if.end20.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4.i

if.end20.4.i:                                     ; preds = %for.inc.3.i
  %arrayidx22.4.i = getelementptr i8, ptr @.str.31, i32 %count_first.0.i
  %13 = ptrtoint ptr %arrayidx22.4.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx22.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp24.not.4.i = icmp eq i8 %14, 0
  br i1 %cmp24.not.4.i, label %if.end20.4.i.if.end_crit_edge, label %if.end20.4.i.for.inc.4.i_crit_edge

if.end20.4.i.for.inc.4.i_crit_edge:               ; preds = %if.end20.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4.i

if.end20.4.i.if.end_crit_edge:                    ; preds = %if.end20.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.4.i:                                      ; preds = %if.end20.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %call16.5.i = tail call i32 @strncmp(ptr noundef nonnull @.str.32, ptr noundef %buf, i32 noundef %count_first.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.5.i)
  %cmp17.not.5.i = icmp eq i32 %call16.5.i, 0
  br i1 %cmp17.not.5.i, label %if.end20.5.i, label %for.inc.4.i.for.inc.5.i_crit_edge

for.inc.4.i.for.inc.5.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5.i

if.end20.5.i:                                     ; preds = %for.inc.4.i
  %arrayidx22.5.i = getelementptr i8, ptr @.str.32, i32 %count_first.0.i
  %15 = ptrtoint ptr %arrayidx22.5.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx22.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp24.not.5.i = icmp eq i8 %16, 0
  br i1 %cmp24.not.5.i, label %if.end20.5.i.if.end_crit_edge, label %if.end20.5.i.for.inc.5.i_crit_edge

if.end20.5.i.for.inc.5.i_crit_edge:               ; preds = %if.end20.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5.i

if.end20.5.i.if.end_crit_edge:                    ; preds = %if.end20.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.5.i:                                      ; preds = %if.end20.5.i.for.inc.5.i_crit_edge, %for.inc.4.i.for.inc.5.i_crit_edge
  %call16.6.i = tail call i32 @strncmp(ptr noundef nonnull @.str.33, ptr noundef %buf, i32 noundef %count_first.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.6.i)
  %cmp17.not.6.i = icmp eq i32 %call16.6.i, 0
  br i1 %cmp17.not.6.i, label %if.end20.6.i, label %for.inc.5.i.for.inc.6.i_crit_edge

for.inc.5.i.for.inc.6.i_crit_edge:                ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.6.i

if.end20.6.i:                                     ; preds = %for.inc.5.i
  %arrayidx22.6.i = getelementptr i8, ptr @.str.33, i32 %count_first.0.i
  %17 = ptrtoint ptr %arrayidx22.6.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx22.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp24.not.6.i = icmp eq i8 %18, 0
  br i1 %cmp24.not.6.i, label %if.end20.6.i.if.end_crit_edge, label %if.end20.6.i.for.inc.6.i_crit_edge

if.end20.6.i.for.inc.6.i_crit_edge:               ; preds = %if.end20.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.6.i

if.end20.6.i.if.end_crit_edge:                    ; preds = %if.end20.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc.6.i:                                      ; preds = %if.end20.6.i.for.inc.6.i_crit_edge, %for.inc.5.i.for.inc.6.i_crit_edge
  %call16.7.i = tail call i32 @strncmp(ptr noundef nonnull @.str.34, ptr noundef %buf, i32 noundef %count_first.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.7.i)
  %cmp17.not.7.i = icmp eq i32 %call16.7.i, 0
  br i1 %cmp17.not.7.i, label %if.end20.7.i, label %for.inc.6.i.if.then14_crit_edge

for.inc.6.i.if.then14_crit_edge:                  ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.end20.7.i:                                     ; preds = %for.inc.6.i
  %arrayidx22.7.i = getelementptr i8, ptr @.str.34, i32 %count_first.0.i
  %19 = ptrtoint ptr %arrayidx22.7.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx22.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp24.not.7.i = icmp eq i8 %20, 0
  br i1 %cmp24.not.7.i, label %if.end20.7.i.if.end_crit_edge, label %if.end20.7.i.if.then14_crit_edge

if.end20.7.i.if.then14_crit_edge:                 ; preds = %if.end20.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.end20.7.i.if.end_crit_edge:                    ; preds = %if.end20.7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %if.end20.7.i.if.end_crit_edge, %if.end20.6.i.if.end_crit_edge, %if.end20.5.i.if.end_crit_edge, %if.end20.4.i.if.end_crit_edge, %if.end20.3.i.if.end_crit_edge, %if.end20.2.i.if.end_crit_edge, %if.end20.1.i.if.end_crit_edge, %if.end20.i.if.end_crit_edge
  %action.057.lcssa.i = phi i32 [ 0, %if.end20.i.if.end_crit_edge ], [ 1, %if.end20.1.i.if.end_crit_edge ], [ 2, %if.end20.2.i.if.end_crit_edge ], [ 3, %if.end20.3.i.if.end_crit_edge ], [ 4, %if.end20.4.i.if.end_crit_edge ], [ 5, %if.end20.5.i.if.end_crit_edge ], [ 6, %if.end20.6.i.if.end_crit_edge ], [ 7, %if.end20.7.i.if.end_crit_edge ]
  %tobool1.not = icmp eq ptr %args_start.0.i, null
  br i1 %tobool1.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = call i32 @kobject_uevent_env(ptr noundef %kobj, i32 noundef %action.057.lcssa.i, ptr noundef nonnull %no_uuid_envp)
  br label %out

if.end4:                                          ; preds = %if.end
  %sub.ptr.lhs.cast = ptrtoint ptr %args_start.0.i to i32
  %sub.ptr.sub.neg = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast
  %sub = add i32 %sub.ptr.sub.neg, %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not.i33 = icmp eq i32 %sub, 0
  br i1 %tobool.not.i33, label %if.end4.if.then14_crit_edge, label %land.lhs.true.i36

if.end4.if.then14_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

land.lhs.true.i36:                                ; preds = %if.end4
  %sub.i34 = add i32 %sub, -1
  %arrayidx.i35 = getelementptr i8, ptr %args_start.0.i, i32 %sub.i34
  %21 = ptrtoint ptr %arrayidx.i35 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i35, align 1
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %22, label %land.lhs.true.i36.if.end9.i40_crit_edge [
    i8 10, label %land.lhs.true.i36.if.end.i38_crit_edge
    i8 0, label %land.lhs.true.i36.if.end.i38_crit_edge88
  ]

land.lhs.true.i36.if.end.i38_crit_edge88:         ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i38

land.lhs.true.i36.if.end.i38_crit_edge:           ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i38

land.lhs.true.i36.if.end9.i40_crit_edge:          ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i40

if.end.i38:                                       ; preds = %land.lhs.true.i36.if.end.i38_crit_edge, %land.lhs.true.i36.if.end.i38_crit_edge88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i34)
  %tobool7.not.i37 = icmp eq i32 %sub.i34, 0
  br i1 %tobool7.not.i37, label %if.end.i38.if.then14_crit_edge, label %if.end.i38.if.end9.i40_crit_edge

if.end.i38.if.end9.i40_crit_edge:                 ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.i40

if.end.i38.if.then14_crit_edge:                   ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.end9.i40:                                      ; preds = %if.end.i38.if.end9.i40_crit_edge, %land.lhs.true.i36.if.end9.i40_crit_edge
  %count.addr.0128.i = phi i32 [ %sub.i34, %if.end.i38.if.end9.i40_crit_edge ], [ %sub, %land.lhs.true.i36.if.end9.i40_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 2324) #15
  %tobool10.not.i39 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool10.not.i39, label %if.end9.i40.if.then14_crit_edge, label %if.end12.i

if.end9.i40.if.then14_crit_edge:                  ; preds = %if.end9.i40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

if.end12.i:                                       ; preds = %if.end9.i40
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %count.addr.0128.i)
  %cmp13.i = icmp ult i32 %count.addr.0128.i, 36
  br i1 %cmp13.i, label %if.end12.i.if.then63.i_crit_edge, label %lor.lhs.false15.i

if.end12.i.if.then63.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then63.i

lor.lhs.false15.i:                                ; preds = %if.end12.i
  %call16.i41 = tail call zeroext i1 @uuid_is_valid(ptr noundef nonnull %args_start.0.i) #14
  br i1 %call16.i41, label %lor.lhs.false17.i, label %lor.lhs.false15.i.if.then63.i_crit_edge

lor.lhs.false15.i.if.then63.i_crit_edge:          ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then63.i

lor.lhs.false17.i:                                ; preds = %lor.lhs.false15.i
  %call18.i = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.25, i32 noundef 36, ptr noundef nonnull %args_start.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %lor.lhs.false17.i.if.then63.i_crit_edge

lor.lhs.false17.i.if.then63.i_crit_edge:          ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then63.i

if.end21.i:                                       ; preds = %lor.lhs.false17.i
  %add.ptr.i42 = getelementptr i8, ptr %args_start.0.i, i32 36
  %add.ptr22.i = getelementptr i8, ptr %args_start.0.i, i32 %count.addr.0128.i
  %add.ptr23.i = getelementptr i8, ptr %add.ptr22.i, i32 -1
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end54.i.while.cond.i_crit_edge, %if.end21.i
  %next.0.i = phi ptr [ %add.ptr.i42, %if.end21.i ], [ %next.0.i108.i, %if.end54.i.while.cond.i_crit_edge ]
  %cmp24.not.i43 = icmp ugt ptr %next.0.i, %add.ptr23.i
  br i1 %cmp24.not.i43, label %if.end10, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %25 = ptrtoint ptr %next.0.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %next.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %26)
  %cmp27.not.i = icmp eq i8 %26, 32
  br i1 %cmp27.not.i, label %if.end30.i, label %while.body.i.if.then63.i_crit_edge

while.body.i.if.then63.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then63.i

if.end30.i:                                       ; preds = %while.body.i
  %incdec.ptr.i = getelementptr i8, ptr %next.0.i, i32 1
  %cmp31.i = icmp ugt ptr %incdec.ptr.i, %add.ptr23.i
  br i1 %cmp31.i, label %if.end30.i.if.then63.i_crit_edge, label %if.end30.i.while.cond.i.i_crit_edge

if.end30.i.while.cond.i.i_crit_edge:              ; preds = %if.end30.i
  br label %while.cond.i.i

if.end30.i.if.then63.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then63.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.end30.i.while.cond.i.i_crit_edge
  %next.0.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.cond.i.i_crit_edge ], [ %incdec.ptr.i, %if.end30.i.while.cond.i.i_crit_edge ]
  %cmp.not.i.i = icmp ugt ptr %next.0.i.i, %add.ptr23.i
  br i1 %cmp.not.i.i, label %while.cond.i.i.action_arg_word_end.exit.i_crit_edge, label %land.rhs.i.i

while.cond.i.i.action_arg_word_end.exit.i_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %action_arg_word_end.exit.i

land.rhs.i.i:                                     ; preds = %while.cond.i.i
  %27 = ptrtoint ptr %next.0.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %next.0.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %28)
  %cmp2.not.i.i = icmp eq i8 %28, 61
  br i1 %cmp2.not.i.i, label %land.rhs.i.i.action_arg_word_end.exit.i_crit_edge, label %while.body.i.i

land.rhs.i.i.action_arg_word_end.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %action_arg_word_end.exit.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %conv.i.i = zext i8 %28 to i32
  %incdec.ptr.i.i = getelementptr i8, ptr %next.0.i.i, i32 1
  %arrayidx.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i.i, align 1
  %31 = and i8 %30, 7
  %cmp6.not.i.i = icmp eq i8 %31, 0
  br i1 %cmp6.not.i.i, label %while.body.i.i.if.then63.i_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i

while.body.i.i.if.then63.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then63.i

action_arg_word_end.exit.i:                       ; preds = %land.rhs.i.i.action_arg_word_end.exit.i_crit_edge, %while.cond.i.i.action_arg_word_end.exit.i_crit_edge
  %cmp8.i.i = icmp eq ptr %next.0.i.i, %incdec.ptr.i
  %.next.0.i.i = select i1 %cmp8.i.i, ptr null, ptr %next.0.i.i
  %tobool36.not.i = icmp eq ptr %.next.0.i.i, null
  %cmp38.i = icmp ugt ptr %.next.0.i.i, %add.ptr23.i
  %or.cond.i = or i1 %tobool36.not.i, %cmp38.i
  br i1 %or.cond.i, label %action_arg_word_end.exit.i.if.then63.i_crit_edge, label %lor.lhs.false40.i

action_arg_word_end.exit.i.if.then63.i_crit_edge: ; preds = %action_arg_word_end.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then63.i

lor.lhs.false40.i:                                ; preds = %action_arg_word_end.exit.i
  %32 = ptrtoint ptr %.next.0.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %.next.0.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 61, i8 %33)
  %cmp42.not.i = icmp eq i8 %33, 61
  br i1 %cmp42.not.i, label %if.end45.i, label %lor.lhs.false40.i.if.then63.i_crit_edge

lor.lhs.false40.i.if.then63.i_crit_edge:          ; preds = %lor.lhs.false40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then63.i

if.end45.i:                                       ; preds = %lor.lhs.false40.i
  %sub.ptr.lhs.cast.i44 = ptrtoint ptr %.next.0.i.i to i32
  %sub.ptr.rhs.cast.i45 = ptrtoint ptr %incdec.ptr.i to i32
  %sub.ptr.sub.i46 = sub i32 %sub.ptr.lhs.cast.i44, %sub.ptr.rhs.cast.i45
  %incdec.ptr46.i = getelementptr i8, ptr %.next.0.i.i, i32 1
  %cmp47.i = icmp ugt ptr %incdec.ptr46.i, %add.ptr23.i
  br i1 %cmp47.i, label %if.end45.i.if.then63.i_crit_edge, label %if.end45.i.while.cond.i110.i_crit_edge

if.end45.i.while.cond.i110.i_crit_edge:           ; preds = %if.end45.i
  br label %while.cond.i110.i

if.end45.i.if.then63.i_crit_edge:                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then63.i

while.cond.i110.i:                                ; preds = %while.body.i117.i.while.cond.i110.i_crit_edge, %if.end45.i.while.cond.i110.i_crit_edge
  %next.0.i108.i = phi ptr [ %incdec.ptr.i114.i, %while.body.i117.i.while.cond.i110.i_crit_edge ], [ %incdec.ptr46.i, %if.end45.i.while.cond.i110.i_crit_edge ]
  %cmp.not.i109.i = icmp ugt ptr %next.0.i108.i, %add.ptr23.i
  br i1 %cmp.not.i109.i, label %while.cond.i110.i.while.end.i120.i_crit_edge, label %land.rhs.i112.i

while.cond.i110.i.while.end.i120.i_crit_edge:     ; preds = %while.cond.i110.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i120.i

land.rhs.i112.i:                                  ; preds = %while.cond.i110.i
  %34 = ptrtoint ptr %next.0.i108.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %next.0.i108.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %35)
  %cmp2.not.i111.i = icmp eq i8 %35, 32
  br i1 %cmp2.not.i111.i, label %land.rhs.i112.i.while.end.i120.i_crit_edge, label %while.body.i117.i

land.rhs.i112.i.while.end.i120.i_crit_edge:       ; preds = %land.rhs.i112.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i120.i

while.body.i117.i:                                ; preds = %land.rhs.i112.i
  %conv.i113.i = zext i8 %35 to i32
  %incdec.ptr.i114.i = getelementptr i8, ptr %next.0.i108.i, i32 1
  %arrayidx.i115.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i113.i
  %36 = ptrtoint ptr %arrayidx.i115.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i115.i, align 1
  %38 = and i8 %37, 7
  %cmp6.not.i116.i = icmp eq i8 %38, 0
  br i1 %cmp6.not.i116.i, label %while.body.i117.i.if.then63.i_crit_edge, label %while.body.i117.i.while.cond.i110.i_crit_edge

while.body.i117.i.while.cond.i110.i_crit_edge:    ; preds = %while.body.i117.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i110.i

while.body.i117.i.if.then63.i_crit_edge:          ; preds = %while.body.i117.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then63.i

while.end.i120.i:                                 ; preds = %land.rhs.i112.i.while.end.i120.i_crit_edge, %while.cond.i110.i.while.end.i120.i_crit_edge
  %cmp8.i118.i = icmp eq ptr %next.0.i108.i, %incdec.ptr46.i
  %tobool52.not.i = icmp eq ptr %next.0.i108.i, null
  %or.cond138.i = or i1 %cmp8.i118.i, %tobool52.not.i
  br i1 %or.cond138.i, label %while.end.i120.i.if.then63.i_crit_edge, label %if.end54.i

while.end.i120.i.if.then63.i_crit_edge:           ; preds = %while.end.i120.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then63.i

if.end54.i:                                       ; preds = %while.end.i120.i
  %sub.ptr.lhs.cast55.i = ptrtoint ptr %next.0.i108.i to i32
  %sub.ptr.rhs.cast56.i = ptrtoint ptr %incdec.ptr46.i to i32
  %sub.ptr.sub57.i = sub i32 %sub.ptr.lhs.cast55.i, %sub.ptr.rhs.cast56.i
  %call58.i = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.26, i32 noundef %sub.ptr.sub.i46, ptr noundef %incdec.ptr.i, i32 noundef %sub.ptr.sub57.i, ptr noundef %incdec.ptr46.i) #14
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %if.end54.i.while.cond.i_crit_edge, label %if.end54.i.if.then63.i_crit_edge

if.end54.i.if.then63.i_crit_edge:                 ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then63.i

if.end54.i.while.cond.i_crit_edge:                ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

if.then63.i:                                      ; preds = %if.end54.i.if.then63.i_crit_edge, %while.end.i120.i.if.then63.i_crit_edge, %while.body.i117.i.if.then63.i_crit_edge, %if.end45.i.if.then63.i_crit_edge, %lor.lhs.false40.i.if.then63.i_crit_edge, %action_arg_word_end.exit.i.if.then63.i_crit_edge, %while.body.i.i.if.then63.i_crit_edge, %if.end30.i.if.then63.i_crit_edge, %while.body.i.if.then63.i_crit_edge, %lor.lhs.false17.i.if.then63.i_crit_edge, %lor.lhs.false15.i.if.then63.i_crit_edge, %if.end12.i.if.then63.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %if.then14

if.end10:                                         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  %envp = getelementptr inbounds %struct.kobj_uevent_env, ptr %call7.i.i.i, i32 0, i32 1
  %call12 = tail call i32 @kobject_uevent_env(ptr noundef %kobj, i32 noundef %action.057.lcssa.i, ptr noundef %envp)
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %out

out:                                              ; preds = %if.end10, %if.then2
  %r.0 = phi i32 [ %call12, %if.end10 ], [ %call3, %if.then2 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0)
  %tobool13.not = icmp eq i32 %r.0, 0
  br i1 %tobool13.not, label %out.if.end23_crit_edge, label %out.if.then14_crit_edge

out.if.then14_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then14

out.if.end23_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then14:                                        ; preds = %out.if.then14_crit_edge, %if.then63.i, %if.end9.i40.if.then14_crit_edge, %if.end.i38.if.then14_crit_edge, %if.end4.if.then14_crit_edge, %if.end20.7.i.if.then14_crit_edge, %for.inc.6.i.if.then14_crit_edge, %if.end.i.if.then14_crit_edge, %entry.if.then14_crit_edge
  %tobool17.not64 = phi ptr [ @.str.7, %out.if.then14_crit_edge ], [ @.str.7, %if.end9.i40.if.then14_crit_edge ], [ @.str.1, %if.end.i.if.then14_crit_edge ], [ @.str.1, %entry.if.then14_crit_edge ], [ @.str.1, %if.end20.7.i.if.then14_crit_edge ], [ @.str.1, %for.inc.6.i.if.then14_crit_edge ], [ @.str.2, %if.end.i38.if.then14_crit_edge ], [ @.str.2, %if.then63.i ], [ @.str.2, %if.end4.if.then14_crit_edge ]
  %r.062 = phi i32 [ %r.0, %out.if.then14_crit_edge ], [ -12, %if.end9.i40.if.then14_crit_edge ], [ -22, %if.end.i.if.then14_crit_edge ], [ -22, %entry.if.then14_crit_edge ], [ -22, %if.end20.7.i.if.then14_crit_edge ], [ -22, %for.inc.6.i.if.then14_crit_edge ], [ -22, %if.end.i38.if.then14_crit_edge ], [ -22, %if.then63.i ], [ -22, %if.end4.if.then14_crit_edge ]
  %call15 = call ptr @kobject_get_path(ptr noundef %kobj, i32 noundef 3264) #14
  %tobool16.not = icmp eq ptr %call15, null
  %cond = select i1 %tobool16.not, ptr @.str.6, ptr %call15
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %cond, ptr noundef nonnull %tobool17.not64) #16
  call void @kfree(ptr noundef %call15) #14
  br label %if.end23

if.end23:                                         ; preds = %if.then14, %out.if.end23_crit_edge
  %r.063 = phi i32 [ %r.062, %if.then14 ], [ 0, %out.if.end23_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %no_uuid_envp) #14
  ret i32 %r.063
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kobject_uevent_env(ptr noundef %kobj, i32 noundef %action, ptr noundef readonly %envp_ext) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr [8 x ptr], ptr @kobject_actions, i32 0, i32 %action
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %action)
  %cmp = icmp eq i32 %action, 1
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %state_remove_uevent_sent = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 8
  %2 = ptrtoint ptr %state_remove_uevent_sent to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %state_remove_uevent_sent, align 4
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %state_remove_uevent_sent, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobject_uevent_env.__UNIQUE_ID_ddebug457, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@kobject_uevent_env, %while.cond)) #14
          to label %if.then5 [label %while.cond], !srcloc !120

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %kobj to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %kobj, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @kobject_uevent_env.__UNIQUE_ID_ddebug457, ptr noundef nonnull @.str.10, ptr noundef %4, ptr noundef %kobj, ptr noundef nonnull @.str.9) #14
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %if.then5, %do.body
  %top_kobj.0 = phi ptr [ %8, %land.rhs.while.cond_crit_edge ], [ %kobj, %do.body ], [ %kobj, %if.then5 ]
  %kset8 = getelementptr inbounds %struct.kobject, ptr %top_kobj.0, i32 0, i32 3
  %5 = ptrtoint ptr %kset8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %kset8, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %land.rhs, label %if.end34

land.rhs:                                         ; preds = %while.cond
  %parent = getelementptr inbounds %struct.kobject, ptr %top_kobj.0, i32 0, i32 2
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 4
  %tobool10.not = icmp eq ptr %8, null
  br i1 %tobool10.not, label %do.body15, label %land.rhs.while.cond_crit_edge

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

do.body15:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobject_uevent_env.__UNIQUE_ID_ddebug458, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@kobject_uevent_env, %cleanup215)) #14
          to label %if.then29 [label %cleanup215], !srcloc !120

if.then29:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %kobj to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %kobj, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @kobject_uevent_env.__UNIQUE_ID_ddebug458, ptr noundef nonnull @.str.11, ptr noundef %10, ptr noundef %kobj, ptr noundef nonnull @.str.9) #14
  br label %cleanup215

if.end34:                                         ; preds = %while.cond
  %uevent_ops36 = getelementptr inbounds %struct.kset, ptr %6, i32 0, i32 3
  %11 = ptrtoint ptr %uevent_ops36 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %uevent_ops36, align 4
  %uevent_suppress = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 8
  %13 = ptrtoint ptr %uevent_suppress to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load37 = load i8, ptr %uevent_suppress, align 4
  %14 = and i8 %bf.load37, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool39.not = icmp eq i8 %14, 0
  br i1 %tobool39.not, label %if.end60, label %do.body41

do.body41:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobject_uevent_env.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@kobject_uevent_env, %cleanup215)) #14
          to label %if.then55 [label %cleanup215], !srcloc !120

if.then55:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %kobj to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %kobj, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @kobject_uevent_env.__UNIQUE_ID_ddebug459, ptr noundef nonnull @.str.12, ptr noundef %16, ptr noundef %kobj, ptr noundef nonnull @.str.9) #14
  br label %cleanup215

if.end60:                                         ; preds = %if.end34
  %tobool61.not = icmp eq ptr %12, null
  br i1 %tobool61.not, label %if.end60.if.else_crit_edge, label %land.lhs.true

if.end60.if.else_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %if.end60
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %12, align 4
  %tobool62.not = icmp eq ptr %18, null
  br i1 %tobool62.not, label %land.lhs.true.land.lhs.true90_crit_edge, label %if.then63

land.lhs.true.land.lhs.true90_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true90

if.then63:                                        ; preds = %land.lhs.true
  %call65 = tail call i32 %18(ptr noundef %kobj) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %do.body68, label %if.then63.land.lhs.true90_crit_edge

if.then63.land.lhs.true90_crit_edge:              ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true90

do.body68:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobject_uevent_env.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@kobject_uevent_env, %cleanup215)) #14
          to label %if.then82 [label %cleanup215], !srcloc !120

if.then82:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %kobj to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %kobj, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @kobject_uevent_env.__UNIQUE_ID_ddebug460, ptr noundef nonnull @.str.13, ptr noundef %20, ptr noundef %kobj, ptr noundef nonnull @.str.9) #14
  br label %cleanup215

land.lhs.true90:                                  ; preds = %if.then63.land.lhs.true90_crit_edge, %land.lhs.true.land.lhs.true90_crit_edge
  %name = getelementptr inbounds %struct.kset_uevent_ops, ptr %12, i32 0, i32 1
  %21 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name, align 4
  %tobool91.not = icmp eq ptr %22, null
  br i1 %tobool91.not, label %land.lhs.true90.if.else_crit_edge, label %if.then92

land.lhs.true90.if.else_crit_edge:                ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then92:                                        ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #13
  %call94 = tail call ptr %22(ptr noundef %kobj) #14
  br label %if.end97

if.else:                                          ; preds = %land.lhs.true90.if.else_crit_edge, %if.end60.if.else_crit_edge
  %kobj95 = getelementptr inbounds %struct.kset, ptr %6, i32 0, i32 2
  %23 = ptrtoint ptr %kobj95 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %kobj95, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.else, %if.then92
  %subsystem.0 = phi ptr [ %call94, %if.then92 ], [ %24, %if.else ]
  %tobool98.not = icmp eq ptr %subsystem.0, null
  br i1 %tobool98.not, label %do.body100, label %if.end119

do.body100:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobject_uevent_env.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@kobject_uevent_env, %cleanup215)) #14
          to label %if.then114 [label %cleanup215], !srcloc !120

if.then114:                                       ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %kobj to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %kobj, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @kobject_uevent_env.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.14, ptr noundef %26, ptr noundef %kobj, ptr noundef nonnull @.str.9) #14
  br label %cleanup215

if.end119:                                        ; preds = %if.end97
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 2324) #15
  %tobool121.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool121.not, label %if.end119.cleanup215_crit_edge, label %if.end123

if.end119.cleanup215_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup215

if.end123:                                        ; preds = %if.end119
  %call124 = tail call ptr @kobject_get_path(ptr noundef %kobj, i32 noundef 3264) #14
  %tobool125.not = icmp eq ptr %call124, null
  br i1 %tobool125.not, label %if.end123.exit_crit_edge, label %if.end127

if.end123.exit_crit_edge:                         ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end127:                                        ; preds = %if.end123
  %call128 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.15, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end131, label %if.end127.exit_crit_edge

if.end127.exit_crit_edge:                         ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end131:                                        ; preds = %if.end127
  %call132 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.16, ptr noundef nonnull %call124)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end135, label %if.end131.exit_crit_edge

if.end131.exit_crit_edge:                         ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end135:                                        ; preds = %if.end131
  %call136 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %subsystem.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end139, label %if.end135.exit_crit_edge

if.end135.exit_crit_edge:                         ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end139:                                        ; preds = %if.end135
  %tobool140.not = icmp eq ptr %envp_ext, null
  br i1 %tobool140.not, label %if.end139.if.end149_crit_edge, label %for.cond.preheader

if.end139.if.end149_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end149

for.cond.preheader:                               ; preds = %if.end139
  %28 = ptrtoint ptr %envp_ext to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %envp_ext, align 4
  %tobool143.not326 = icmp eq ptr %29, null
  br i1 %tobool143.not326, label %for.cond.preheader.if.end149_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end149_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end149

for.cond:                                         ; preds = %for.body
  %inc = add i32 %i.0327, 1
  %arrayidx142 = getelementptr ptr, ptr %envp_ext, i32 %inc
  %30 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx142, align 4
  %tobool143.not = icmp eq ptr %31, null
  br i1 %tobool143.not, label %for.cond.if.end149_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.if.end149_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end149

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %32 = phi ptr [ %31, %for.cond.for.body_crit_edge ], [ %29, %for.cond.preheader.for.body_crit_edge ]
  %i.0327 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call145 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.18, ptr noundef nonnull %32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %for.cond, label %for.body.exit_crit_edge

for.body.exit_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end149:                                        ; preds = %for.cond.if.end149_crit_edge, %for.cond.preheader.if.end149_crit_edge, %if.end139.if.end149_crit_edge
  br i1 %tobool61.not, label %if.end149.if.end178_crit_edge, label %land.lhs.true151

if.end149.if.end178_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end178

land.lhs.true151:                                 ; preds = %if.end149
  %uevent = getelementptr inbounds %struct.kset_uevent_ops, ptr %12, i32 0, i32 2
  %33 = ptrtoint ptr %uevent to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %uevent, align 4
  %tobool152.not = icmp eq ptr %34, null
  br i1 %tobool152.not, label %land.lhs.true151.if.end178_crit_edge, label %if.then153

land.lhs.true151.if.end178_crit_edge:             ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end178

if.then153:                                       ; preds = %land.lhs.true151
  %call155 = tail call i32 %34(ptr noundef %kobj, ptr noundef nonnull %call7.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.then153.if.end178_crit_edge, label %do.body158

if.then153.if.end178_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end178

do.body158:                                       ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kobject_uevent_env.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@kobject_uevent_env, %exit)) #14
          to label %if.then172 [label %exit], !srcloc !120

if.then172:                                       ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %kobj to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %kobj, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @kobject_uevent_env.__UNIQUE_ID_ddebug462, ptr noundef nonnull @.str.19, ptr noundef %36, ptr noundef %kobj, ptr noundef nonnull @.str.9, i32 noundef %call155) #14
  br label %exit

if.end178:                                        ; preds = %if.then153.if.end178_crit_edge, %land.lhs.true151.if.end178_crit_edge, %if.end149.if.end178_crit_edge
  %37 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %action, label %if.end178.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 7, label %sw.bb182
  ]

if.end178.sw.epilog_crit_edge:                    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %uevent_suppress to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load179 = load i8, ptr %uevent_suppress, align 4
  %bf.set181 = or i8 %bf.load179, 32
  store i8 %bf.set181, ptr %uevent_suppress, align 4
  br label %sw.epilog

sw.bb182:                                         ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @zap_modalias_env(ptr noundef nonnull %call7.i.i)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb182, %sw.bb, %if.end178.sw.epilog_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @uevent_sock_mutex, i32 noundef 0) #14
  %39 = load i64, ptr @uevent_seqnum, align 8
  %inc183 = add i64 %39, 1
  store i64 %inc183, ptr @uevent_seqnum, align 8
  %call184 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.20, i64 noundef %inc183)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %if.end187, label %if.then186

if.then186:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef nonnull @uevent_sock_mutex) #14
  br label %exit

if.end187:                                        ; preds = %sw.epilog
  %call188 = tail call fastcc i32 @kobject_uevent_net_broadcast(ptr noundef %kobj, ptr noundef nonnull %call7.i.i, ptr noundef %1, ptr noundef nonnull %call124)
  tail call void @mutex_unlock(ptr noundef nonnull @uevent_sock_mutex) #14
  %40 = load i8, ptr @uevent_helper, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool189.not = icmp eq i8 %40, 0
  br i1 %tobool189.not, label %if.end187.exit_crit_edge, label %land.lhs.true190

if.end187.exit_crit_edge:                         ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

land.lhs.true190:                                 ; preds = %if.end187
  %call191 = tail call fastcc i32 @kobj_usermode_filter(ptr noundef %kobj)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call191)
  %tobool192.not = icmp eq i32 %call191, 0
  br i1 %tobool192.not, label %if.then193, label %land.lhs.true190.exit_crit_edge

land.lhs.true190.exit_crit_edge:                  ; preds = %land.lhs.true190
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.then193:                                       ; preds = %land.lhs.true190
  %call194 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %if.end197, label %if.then193.exit_crit_edge

if.then193.exit_crit_edge:                        ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end197:                                        ; preds = %if.then193
  %call198 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198)
  %tobool199.not = icmp eq i32 %call198, 0
  br i1 %tobool199.not, label %if.end201, label %if.end197.exit_crit_edge

if.end197.exit_crit_edge:                         ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end201:                                        ; preds = %if.end197
  %call202 = tail call fastcc i32 @init_uevent_argv(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %subsystem.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202)
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %if.end205, label %if.end201.exit_crit_edge

if.end201.exit_crit_edge:                         ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.end205:                                        ; preds = %if.end201
  %41 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call7.i.i, align 8
  %envp = getelementptr inbounds %struct.kobj_uevent_env, ptr %call7.i.i, i32 0, i32 1
  %call209 = tail call ptr @call_usermodehelper_setup(ptr noundef %42, ptr noundef nonnull %call7.i.i, ptr noundef %envp, i32 noundef 3264, ptr noundef null, ptr noundef nonnull @cleanup_uevent_env, ptr noundef nonnull %call7.i.i) #14
  %tobool210.not = icmp eq ptr %call209, null
  br i1 %tobool210.not, label %if.end205.exit_crit_edge, label %if.then211

if.end205.exit_crit_edge:                         ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #13
  br label %exit

if.then211:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #13
  %call212 = tail call i32 @call_usermodehelper_exec(ptr noundef nonnull %call209, i32 noundef 0) #14
  br label %exit

exit:                                             ; preds = %if.then211, %if.end205.exit_crit_edge, %if.end201.exit_crit_edge, %if.end197.exit_crit_edge, %if.then193.exit_crit_edge, %land.lhs.true190.exit_crit_edge, %if.end187.exit_crit_edge, %if.then186, %if.then172, %do.body158, %for.body.exit_crit_edge, %if.end135.exit_crit_edge, %if.end131.exit_crit_edge, %if.end127.exit_crit_edge, %if.end123.exit_crit_edge
  %retval1.2 = phi i32 [ %call128, %if.end127.exit_crit_edge ], [ %call132, %if.end131.exit_crit_edge ], [ %call136, %if.end135.exit_crit_edge ], [ %call155, %if.then172 ], [ %call184, %if.then186 ], [ %call188, %land.lhs.true190.exit_crit_edge ], [ %call188, %if.end187.exit_crit_edge ], [ -2, %if.end123.exit_crit_edge ], [ %call194, %if.then193.exit_crit_edge ], [ %call198, %if.end197.exit_crit_edge ], [ %call202, %if.end201.exit_crit_edge ], [ %call212, %if.then211 ], [ -12, %if.end205.exit_crit_edge ], [ %call155, %do.body158 ], [ %call145, %for.body.exit_crit_edge ]
  %env.2 = phi ptr [ %call7.i.i, %if.end127.exit_crit_edge ], [ %call7.i.i, %if.end131.exit_crit_edge ], [ %call7.i.i, %if.end135.exit_crit_edge ], [ %call7.i.i, %if.then172 ], [ %call7.i.i, %if.then186 ], [ %call7.i.i, %land.lhs.true190.exit_crit_edge ], [ %call7.i.i, %if.end187.exit_crit_edge ], [ %call7.i.i, %if.end123.exit_crit_edge ], [ %call7.i.i, %if.then193.exit_crit_edge ], [ %call7.i.i, %if.end197.exit_crit_edge ], [ %call7.i.i, %if.end201.exit_crit_edge ], [ null, %if.then211 ], [ %call7.i.i, %if.end205.exit_crit_edge ], [ %call7.i.i, %do.body158 ], [ %call7.i.i, %for.body.exit_crit_edge ]
  tail call void @kfree(ptr noundef %call124) #14
  tail call void @kfree(ptr noundef %env.2) #14
  br label %cleanup215

cleanup215:                                       ; preds = %exit, %if.end119.cleanup215_crit_edge, %if.then114, %do.body100, %if.then82, %do.body68, %if.then55, %do.body41, %if.then29, %do.body15
  %retval.0 = phi i32 [ %retval1.2, %exit ], [ -22, %if.then29 ], [ 0, %if.then55 ], [ 0, %if.then82 ], [ 0, %if.then114 ], [ -12, %if.end119.cleanup215_crit_edge ], [ -22, %do.body15 ], [ 0, %do.body41 ], [ 0, %do.body68 ], [ 0, %do.body100 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get_path(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @add_uevent_var(ptr noundef %env, ptr nocapture noundef readonly %format, ...) #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #14
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !121
  %envp_idx = getelementptr inbounds %struct.kobj_uevent_env, ptr %env, i32 0, i32 2
  %1 = ptrtoint ptr %envp_idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %envp_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %2)
  %cmp = icmp ugt i32 %2, 63
  br i1 %cmp, label %do.end, label %if.end16

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 660, i32 noundef 9, ptr noundef nonnull @.str.23) #14
  br label %cleanup

if.end16:                                         ; preds = %entry
  call void @llvm.va_start(ptr nonnull %args)
  %buflen = getelementptr inbounds %struct.kobj_uevent_env, ptr %env, i32 0, i32 4
  %3 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buflen, align 4
  %arrayidx = getelementptr %struct.kobj_uevent_env, ptr %env, i32 0, i32 3, i32 %4
  %sub = sub i32 2048, %4
  %5 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %5)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vsnprintf(ptr noundef %arrayidx, i32 noundef %sub, ptr noundef %format, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  %6 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %buflen, align 4
  %sub19 = sub i32 2048, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %sub19)
  %cmp20.not = icmp ult i32 %call, %sub19
  br i1 %cmp20.not, label %if.end48, label %do.end34

do.end34:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 671, i32 noundef 9, ptr noundef nonnull @.str.24) #14
  br label %cleanup

if.end48:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx51 = getelementptr %struct.kobj_uevent_env, ptr %env, i32 0, i32 3, i32 %7
  %8 = ptrtoint ptr %envp_idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %envp_idx, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %envp_idx, align 4
  %arrayidx53 = getelementptr %struct.kobj_uevent_env, ptr %env, i32 0, i32 1, i32 %9
  %10 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx51, ptr %arrayidx53, align 4
  %add = add nuw i32 %call, 1
  %11 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buflen, align 4
  %add55 = add i32 %add, %12
  store i32 %add55, ptr %buflen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %do.end34, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ -12, %do.end34 ], [ 0, %if.end48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #14
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zap_modalias_env(ptr nocapture noundef %env) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %envp_idx = getelementptr inbounds %struct.kobj_uevent_env, ptr %env, i32 0, i32 2
  %0 = ptrtoint ptr %envp_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %envp_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5556 = icmp sgt i32 %1, 0
  br i1 %cmp5556, label %for.body.lr.ph.lr.ph, label %entry.for.end28_crit_edge

entry.for.end28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end28

for.body.lr.ph.lr.ph:                             ; preds = %entry
  %buflen = getelementptr inbounds %struct.kobj_uevent_env, ptr %env, i32 0, i32 4
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then.for.body.lr.ph_crit_edge, %for.body.lr.ph.lr.ph
  %2 = phi i32 [ %1, %for.body.lr.ph.lr.ph ], [ %7, %if.then.for.body.lr.ph_crit_edge ]
  %i.0.ph57 = phi i32 [ 0, %for.body.lr.ph.lr.ph ], [ %add10, %if.then.for.body.lr.ph_crit_edge ]
  %arrayidx = getelementptr %struct.kobj_uevent_env, ptr %env, i32 0, i32 1, i32 %i.0.ph57
  %add10 = add nuw nsw i32 %i.0.ph57, 1
  %arrayidx11 = getelementptr %struct.kobj_uevent_env, ptr %env, i32 0, i32 1, i32 %add10
  br label %for.body

for.body:                                         ; preds = %if.end24.for.body_crit_edge, %for.body.lr.ph
  %3 = phi i32 [ %2, %for.body.lr.ph ], [ %dec, %if.end24.for.body_crit_edge ]
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @strncmp(ptr noundef %5, ptr noundef nonnull dereferenceable(10) @zap_modalias_env.modalias_prefix, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %6 = ptrtoint ptr %envp_idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %envp_idx, align 4
  %cmp55 = icmp slt i32 %add10, %7
  br i1 %cmp55, label %if.then.for.body.lr.ph_crit_edge, label %if.then.for.end28_crit_edge

if.then.for.end28_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end28

if.then.for.body.lr.ph_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.lr.ph

if.end:                                           ; preds = %for.body
  %call3 = tail call i32 @strlen(ptr noundef %5) #17
  %add = add i32 %call3, 1
  %sub = add nsw i32 %3, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.ph57, i32 %sub)
  %cmp5.not = icmp eq i32 %i.0.ph57, %sub
  br i1 %cmp5.not, label %if.end.if.end24_crit_edge, label %if.then6

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then6:                                         ; preds = %if.end
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx11, align 4
  %10 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buflen, align 4
  %sub12 = sub i32 %11, %add
  %12 = call ptr @memmove(ptr %5, ptr %9, i32 %sub12)
  %13 = ptrtoint ptr %envp_idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %envp_idx, align 4
  %sub1552 = add i32 %14, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.ph57, i32 %sub1552)
  %cmp1653 = icmp slt i32 %i.0.ph57, %sub1552
  br i1 %cmp1653, label %for.body17.lr.ph, label %if.then6.if.end24_crit_edge

if.then6.if.end24_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

for.body17.lr.ph:                                 ; preds = %if.then6
  %idx.neg = xor i32 %call3, -1
  br label %for.body17

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.body17.lr.ph
  %j.054 = phi i32 [ %i.0.ph57, %for.body17.lr.ph ], [ %add19, %for.body17.for.body17_crit_edge ]
  %add19 = add nuw nsw i32 %j.054, 1
  %arrayidx20 = getelementptr %struct.kobj_uevent_env, ptr %env, i32 0, i32 1, i32 %add19
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx20, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 %idx.neg
  %arrayidx22 = getelementptr %struct.kobj_uevent_env, ptr %env, i32 0, i32 1, i32 %j.054
  %17 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr, ptr %arrayidx22, align 4
  %18 = ptrtoint ptr %envp_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %envp_idx, align 4
  %sub15 = add i32 %19, -1
  %cmp16 = icmp slt i32 %add19, %sub15
  br i1 %cmp16, label %for.body17.for.body17_crit_edge, label %for.body17.if.end24_crit_edge

for.body17.if.end24_crit_edge:                    ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body17

if.end24:                                         ; preds = %for.body17.if.end24_crit_edge, %if.then6.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %20 = ptrtoint ptr %envp_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %envp_idx, align 4
  %dec = add i32 %21, -1
  store i32 %dec, ptr %envp_idx, align 4
  %22 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buflen, align 4
  %sub27 = sub i32 %23, %add
  store i32 %sub27, ptr %buflen, align 4
  %cmp = icmp slt i32 %i.0.ph57, %dec
  br i1 %cmp, label %if.end24.for.body_crit_edge, label %if.end24.for.end28_crit_edge

if.end24.for.end28_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end28

if.end24.for.body_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end28:                                        ; preds = %if.end24.for.end28_crit_edge, %if.then.for.end28_crit_edge, %entry.for.end28_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kobject_uevent_net_broadcast(ptr noundef %kobj, ptr nocapture noundef readonly %env, ptr noundef %action_string, ptr noundef %devpath) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @kobj_ns_ops(ptr noundef %kobj) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.land.lhs.true9_crit_edge

entry.land.lhs.true9_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true9

land.lhs.true:                                    ; preds = %entry
  %kset = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 3
  %0 = ptrtoint ptr %kset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kset, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %land.lhs.true.if.then22_crit_edge, label %if.then

land.lhs.true.if.then22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22

if.then:                                          ; preds = %land.lhs.true
  %parent = getelementptr inbounds %struct.kset, ptr %1, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %if.then.if.then22_crit_edge, label %if.end7

if.then.if.then22_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22

if.end7:                                          ; preds = %if.then
  %call6 = tail call ptr @kobj_ns_ops(ptr noundef nonnull %3) #14
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %if.end7.if.then22_crit_edge, label %if.end7.land.lhs.true9_crit_edge

if.end7.land.lhs.true9_crit_edge:                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true9

if.end7.if.then22_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22

land.lhs.true9:                                   ; preds = %if.end7.land.lhs.true9_crit_edge, %entry.land.lhs.true9_crit_edge
  %ops.151 = phi ptr [ %call6, %if.end7.land.lhs.true9_crit_edge ], [ %call, %entry.land.lhs.true9_crit_edge ]
  %netlink_ns = getelementptr inbounds %struct.kobj_ns_type_operations, ptr %ops.151, i32 0, i32 3
  %4 = ptrtoint ptr %netlink_ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netlink_ns, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %land.lhs.true9.if.then22_crit_edge, label %land.lhs.true11

land.lhs.true9.if.then22_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22

land.lhs.true11:                                  ; preds = %land.lhs.true9
  %ktype = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 4
  %6 = ptrtoint ptr %ktype to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ktype, align 4
  %namespace = getelementptr inbounds %struct.kobj_type, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %namespace to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %namespace, align 4
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %land.lhs.true11.if.then22_crit_edge, label %if.then13

land.lhs.true11.if.then22_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22

if.then13:                                        ; preds = %land.lhs.true11
  %10 = ptrtoint ptr %ops.151 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ops.151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp14 = icmp eq i32 %11, 1
  br i1 %cmp14, label %if.end20, label %if.then13.if.then22_crit_edge

if.then13.if.then22_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22

if.end20:                                         ; preds = %if.then13
  %call18 = tail call ptr %9(ptr noundef %kobj) #14
  %tobool21.not = icmp eq ptr %call18, null
  br i1 %tobool21.not, label %if.end20.if.then22_crit_edge, label %if.else

if.end20.if.then22_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then22

if.then22:                                        ; preds = %if.end20.if.then22_crit_edge, %if.then13.if.then22_crit_edge, %land.lhs.true11.if.then22_crit_edge, %land.lhs.true9.if.then22_crit_edge, %if.end7.if.then22_crit_edge, %if.then.if.then22_crit_edge, %land.lhs.true.if.then22_crit_edge
  %ue_sk.030.i = load ptr, ptr @uevent_sock_list, align 4
  %cmp.not31.i = icmp eq ptr %ue_sk.030.i, @uevent_sock_list
  br i1 %cmp.not31.i, label %if.then22.uevent_net_broadcast_untagged.exit_crit_edge, label %if.then22.for.body.i_crit_edge

if.then22.for.body.i_crit_edge:                   ; preds = %if.then22
  br label %for.body.i

if.then22.uevent_net_broadcast_untagged.exit_crit_edge: ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %uevent_net_broadcast_untagged.exit

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.then22.for.body.i_crit_edge
  %ue_sk.034.i = phi ptr [ %ue_sk.0.i, %cleanup.i.for.body.i_crit_edge ], [ %ue_sk.030.i, %if.then22.for.body.i_crit_edge ]
  %skb.033.i = phi ptr [ %skb.2.i, %cleanup.i.for.body.i_crit_edge ], [ null, %if.then22.for.body.i_crit_edge ]
  %retval1.032.i = phi i32 [ %retval1.2.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %if.then22.for.body.i_crit_edge ]
  %sk.i = getelementptr inbounds %struct.uevent_sock, ptr %ue_sk.034.i, i32 0, i32 1
  %12 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk.i, align 4
  %call.i = tail call i32 @netlink_has_listeners(ptr noundef %13, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %tobool2.not.i = icmp eq ptr %skb.033.i, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.then3.i:                                       ; preds = %if.end.i
  %call4.i = tail call fastcc ptr @alloc_uevent_skb(ptr noundef %env, ptr noundef %action_string, ptr noundef %devpath) #14
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.then3.i.cleanup.i_crit_edge, label %if.then3.i.if.end8.i_crit_edge

if.then3.i.if.end8.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

if.then3.i.cleanup.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end8.i:                                        ; preds = %if.then3.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %skb.1.i = phi ptr [ %skb.033.i, %if.end.i.if.end8.i_crit_edge ], [ %call4.i, %if.then3.i.if.end8.i_crit_edge ]
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 21
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %users.i.i, i32 1, i32 3, i32 1) #14
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i, ptr %users.i.i, i32 1, ptr elementtype(i32) %users.i.i) #14, !srcloc !122
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end8.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !123

if.end8.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end8.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.skb_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !124

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.skb_get.exit.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end8.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end8.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i.i, i32 noundef %.sink.i.i.i.i.i) #14
  br label %skb_get.exit.i

skb_get.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.skb_get.exit.i_crit_edge
  %call10.i = tail call i32 @netlink_broadcast(ptr noundef %13, ptr noundef nonnull %skb.1.i, i32 noundef 0, i32 noundef 1, i32 noundef 3264) #14
  %16 = zext i32 %call10.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %call10.i, label %skb_get.exit.i.cleanup.i_crit_edge [
    i32 -105, label %skb_get.exit.i.if.then13.i_crit_edge
    i32 -3, label %skb_get.exit.i.if.then13.i_crit_edge54
  ]

skb_get.exit.i.if.then13.i_crit_edge54:           ; preds = %skb_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

skb_get.exit.i.if.then13.i_crit_edge:             ; preds = %skb_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13.i

skb_get.exit.i.cleanup.i_crit_edge:               ; preds = %skb_get.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.then13.i:                                      ; preds = %skb_get.exit.i.if.then13.i_crit_edge, %skb_get.exit.i.if.then13.i_crit_edge54
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then13.i, %skb_get.exit.i.cleanup.i_crit_edge, %if.then3.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %retval1.2.i = phi i32 [ %retval1.032.i, %for.body.i.cleanup.i_crit_edge ], [ -12, %if.then3.i.cleanup.i_crit_edge ], [ 0, %if.then13.i ], [ %call10.i, %skb_get.exit.i.cleanup.i_crit_edge ]
  %skb.2.i = phi ptr [ %skb.033.i, %for.body.i.cleanup.i_crit_edge ], [ null, %if.then3.i.cleanup.i_crit_edge ], [ %skb.1.i, %if.then13.i ], [ %skb.1.i, %skb_get.exit.i.cleanup.i_crit_edge ]
  %17 = ptrtoint ptr %ue_sk.034.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %ue_sk.0.i = load ptr, ptr %ue_sk.034.i, align 4
  %cmp.not.i = icmp eq ptr %ue_sk.0.i, @uevent_sock_list
  br i1 %cmp.not.i, label %cleanup.i.uevent_net_broadcast_untagged.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

cleanup.i.uevent_net_broadcast_untagged.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uevent_net_broadcast_untagged.exit

uevent_net_broadcast_untagged.exit:               ; preds = %cleanup.i.uevent_net_broadcast_untagged.exit_crit_edge, %if.then22.uevent_net_broadcast_untagged.exit_crit_edge
  %retval1.0.lcssa.i = phi i32 [ 0, %if.then22.uevent_net_broadcast_untagged.exit_crit_edge ], [ %retval1.2.i, %cleanup.i.uevent_net_broadcast_untagged.exit_crit_edge ]
  %skb.0.lcssa.i = phi ptr [ null, %if.then22.uevent_net_broadcast_untagged.exit_crit_edge ], [ %skb.2.i, %cleanup.i.uevent_net_broadcast_untagged.exit_crit_edge ]
  tail call void @consume_skb(ptr noundef %skb.0.lcssa.i) #14
  br label %if.end25

if.else:                                          ; preds = %if.end20
  %uevent_sock = getelementptr inbounds %struct.net, ptr %call18, i32 0, i32 22
  %18 = ptrtoint ptr %uevent_sock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %uevent_sock, align 8
  %sk = getelementptr inbounds %struct.uevent_sock, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sk, align 4
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skc_net.i.i, align 4
  %user_ns.i = getelementptr inbounds %struct.net, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %user_ns.i, align 4
  %call1.i = tail call fastcc ptr @alloc_uevent_skb(ptr noundef %env, ptr noundef %action_string, ptr noundef %devpath) #14
  %tobool.not.i41 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i41, label %if.else.if.end25_crit_edge, label %if.end.i43

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.end.i43:                                       ; preds = %if.else
  %cmp.not.i42 = icmp eq ptr %25, @init_user_ns
  br i1 %cmp.not.i42, label %if.end.i43.if.end16.i_crit_edge, label %if.then2.i

if.end.i43.if.end16.i_crit_edge:                  ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.then2.i:                                       ; preds = %if.end.i43
  %call3.i = tail call i32 @make_kuid(ptr noundef %25, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i)
  %cmp.i.not.i = icmp eq i32 %call3.i, -1
  br i1 %cmp.i.not.i, label %if.then2.i.if.end7.i_crit_edge, label %if.then6.i

if.then2.i.if.end7.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

if.then6.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  %uid.i = getelementptr inbounds %struct.sk_buff, ptr %call1.i, i32 0, i32 3, i32 4
  %26 = ptrtoint ptr %uid.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call3.i, ptr %uid.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then6.i, %if.then2.i.if.end7.i_crit_edge
  %call9.i = tail call i32 @make_kgid(ptr noundef %25, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9.i)
  %cmp.i33.not.i = icmp eq i32 %call9.i, -1
  br i1 %cmp.i33.not.i, label %if.end7.i.if.end16.i_crit_edge, label %if.then13.i44

if.end7.i.if.end16.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.then13.i44:                                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  %gid.i = getelementptr inbounds %struct.sk_buff, ptr %call1.i, i32 0, i32 3, i32 8
  %27 = ptrtoint ptr %gid.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call9.i, ptr %gid.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then13.i44, %if.end7.i.if.end16.i_crit_edge, %if.end.i43.if.end16.i_crit_edge
  %call17.i = tail call i32 @netlink_broadcast(ptr noundef %21, ptr noundef nonnull %call1.i, i32 noundef 0, i32 noundef 1, i32 noundef 3264) #14
  %28 = zext i32 %call17.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %call17.i, label %if.end16.i.if.end25_crit_edge [
    i32 -105, label %if.end16.i.if.then20.i_crit_edge
    i32 -3, label %if.end16.i.if.then20.i_crit_edge55
  ]

if.end16.i.if.then20.i_crit_edge55:               ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20.i

if.end16.i.if.then20.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20.i

if.end16.i.if.end25_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then20.i:                                      ; preds = %if.end16.i.if.then20.i_crit_edge, %if.end16.i.if.then20.i_crit_edge55
  br label %if.end25

if.end25:                                         ; preds = %if.then20.i, %if.end16.i.if.end25_crit_edge, %if.else.if.end25_crit_edge, %uevent_net_broadcast_untagged.exit
  %ret.0 = phi i32 [ %retval1.0.lcssa.i, %uevent_net_broadcast_untagged.exit ], [ -12, %if.else.if.end25_crit_edge ], [ 0, %if.then20.i ], [ %call17.i, %if.end16.i.if.end25_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kobj_usermode_filter(ptr noundef %kobj) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call ptr @kobj_ns_ops(ptr noundef %kobj) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ktype = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 4
  %0 = ptrtoint ptr %ktype to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ktype, align 4
  %namespace = getelementptr inbounds %struct.kobj_type, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %namespace to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %namespace, align 4
  %call1 = tail call ptr %3(ptr noundef %kobj) #14
  %initial_ns = getelementptr inbounds %struct.kobj_ns_type_operations, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %initial_ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %initial_ns, align 4
  %call2 = tail call ptr %5() #14
  %cmp = icmp ne ptr %call1, %call2
  %conv = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_uevent_argv(ptr noundef %env, ptr noundef %subsystem) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %buflen = getelementptr inbounds %struct.kobj_uevent_env, ptr %env, i32 0, i32 4
  %0 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buflen, align 4
  %sub = sub i32 2048, %1
  %arrayidx = getelementptr %struct.kobj_uevent_env, ptr %env, i32 0, i32 3, i32 %1
  %call = tail call i32 @strlcpy(ptr noundef %arrayidx, ptr noundef %subsystem, i32 noundef %sub) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %sub)
  %cmp.not = icmp slt i32 %call, %sub
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %sub, i32 noundef %call) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %env to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @uevent_helper, ptr %env, align 4
  %3 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %buflen, align 4
  %arrayidx6 = getelementptr %struct.kobj_uevent_env, ptr %env, i32 0, i32 3, i32 %4
  %arrayidx8 = getelementptr [3 x ptr], ptr %env, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx6, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr [3 x ptr], ptr %env, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx10, align 4
  %add = add nsw i32 %call, 1
  %add12 = add i32 %add, %4
  store i32 %add12, ptr %buflen, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @call_usermodehelper_setup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cleanup_uevent_env(ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %data = getelementptr inbounds %struct.subprocess_info, ptr %info, i32 0, i32 9
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_usermodehelper_exec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kobject_uevent(ptr noundef %kobj, i32 noundef %action) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @kobject_uevent_env(ptr noundef %kobj, i32 noundef %action, ptr noundef null)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kobject_uevent_init() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @uevent_net_ops) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @uuid_is_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobj_ns_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_has_listeners(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @alloc_uevent_skb(ptr nocapture noundef readonly %env, ptr noundef %action_string, ptr noundef %devpath) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @strlen(ptr noundef %action_string) #17
  %call1 = tail call i32 @strlen(ptr noundef %devpath) #17
  %add = add i32 %call, 2
  %add2 = add i32 %add, %call1
  %buflen = getelementptr inbounds %struct.kobj_uevent_env, ptr %env, i32 0, i32 4
  %0 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buflen, align 4
  %add3 = add i32 %add2, %1
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add3, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %add2) #14
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %call5, ptr noundef nonnull @.str.37, ptr noundef %action_string, ptr noundef %devpath)
  %buf = getelementptr inbounds %struct.kobj_uevent_env, ptr %env, i32 0, i32 3
  %2 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buflen, align 4
  %call.i27 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %3) #14
  %4 = call ptr @memcpy(ptr %call.i27, ptr %buf, i32 %3)
  %uid = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 4
  %5 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %uid, align 4
  %gid = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %gid, align 4
  %dst_group = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 16
  %7 = ptrtoint ptr %dst_group to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %dst_group, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 12
  %8 = ptrtoint ptr %portid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %portid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_broadcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uevent_net_init(ptr noundef %net) #0 align 64 {
entry:
  %cfg = alloca %struct.netlink_kernel_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %cfg) #14
  %0 = call ptr @memcpy(ptr %cfg, ptr @__const.uevent_net_init.cfg, i32 28)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call ptr @__netlink_kernel_create(ptr noundef %net, i32 noundef 15, ptr noundef null, ptr noundef nonnull %cfg) #14
  %sk = getelementptr inbounds %struct.uevent_sock, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %sk, align 8
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #16
  call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %uevent_sock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 22
  %3 = ptrtoint ptr %uevent_sock to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %uevent_sock, align 8
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %call.i, i32 0, i32 9
  %4 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_net.i, align 4
  %user_ns = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns, align 4
  %cmp = icmp eq ptr %7, @init_user_ns
  br i1 %cmp, label %if.then9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  call void @mutex_lock_nested(ptr noundef nonnull @uevent_sock_mutex, i32 noundef 0) #14
  %8 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @uevent_sock_list, i32 0, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %8, ptr noundef nonnull @uevent_sock_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then9.list_add_tail.exit_crit_edge

if.then9.list_add_tail.exit_crit_edge:            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @uevent_sock_list, i32 0, i32 1), align 4
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @uevent_sock_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call7.i.i, ptr %8, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then9.list_add_tail.exit_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @uevent_sock_mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end6.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %list_add_tail.exit ], [ 0, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %cfg) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uevent_net_exit(ptr nocapture noundef readonly %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %uevent_sock = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 22
  %0 = ptrtoint ptr %uevent_sock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uevent_sock, align 8
  %sk = getelementptr inbounds %struct.uevent_sock, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skc_net.i, align 4
  %user_ns = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %user_ns, align 4
  %cmp = icmp eq ptr %7, @init_user_ns
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @uevent_sock_mutex, i32 noundef 0) #14
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @uevent_sock_mutex) #14
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk, align 4
  tail call void @netlink_kernel_release(ptr noundef %17) #14
  tail call void @kfree(ptr noundef %1) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uevent_net_rcv(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @netlink_rcv_skb(ptr noundef %skb, ptr noundef nonnull @uevent_net_rcv_skb) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uevent_net_rcv_skb(ptr noundef %skb, ptr noundef readnone %nlh, ptr noundef writeonly %extack) #0 align 64 {
entry:
  %buf.i = alloca [29 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %nlh, i32 16
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %sk = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 8
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i, align 4
  %user_ns = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %user_ns, align 4
  %call2 = tail call zeroext i1 @netlink_ns_capable(ptr noundef %skb, ptr noundef %5, i32 noundef 21) #14
  br i1 %call2, label %if.end7, label %do.body

do.body:                                          ; preds = %if.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @uevent_net_rcv_skb.__msg) #14
  %tobool4.not = icmp eq ptr %extack, null
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %if.then5

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @uevent_net_rcv_skb.__msg, ptr %extack, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @uevent_sock_mutex, i32 noundef 0) #14
  %uevent_sock = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 22
  %7 = ptrtoint ptr %uevent_sock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %uevent_sock, align 8
  %sk8 = getelementptr inbounds %struct.uevent_sock, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %sk8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk8, align 4
  call void @llvm.lifetime.start.p0(i64 29, ptr nonnull %buf.i) #14
  %11 = call ptr @memset(ptr %buf.i, i32 255, i32 29)
  %12 = load i64, ptr @uevent_seqnum, align 8
  %inc.i = add i64 %12, 1
  store i64 %inc.i, ptr @uevent_seqnum, align 8
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i, i32 noundef 29, ptr noundef nonnull @.str.20, i64 noundef %inc.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %call.i)
  %cmp1.i = icmp ugt i32 %call.i, 28
  br i1 %cmp1.i, label %if.end7.uevent_net_broadcast.exit_crit_edge, label %if.end.i

if.end7.uevent_net_broadcast.exit_crit_edge:      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %uevent_net_broadcast.exit

if.end.i:                                         ; preds = %if.end7
  %inc2.i = add nuw nsw i32 %call.i, 1
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i, align 4
  %add.i = add i32 %14, %inc2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %add.i)
  %cmp3.i = icmp ugt i32 %add.i, 2048
  br i1 %cmp3.i, label %do.body.i, label %if.end7.i

do.body.i:                                        ; preds = %if.end.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @uevent_net_broadcast.__msg) #14
  %tobool.not.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i, label %do.body.i.uevent_net_broadcast.exit_crit_edge, label %if.then5.i

do.body.i.uevent_net_broadcast.exit_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uevent_net_broadcast.exit

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @uevent_net_broadcast.__msg, ptr %extack, align 4
  br label %uevent_net_broadcast.exit

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = tail call ptr @skb_copy_expand(ptr noundef %skb, i32 noundef 0, i32 noundef %inc2.i, i32 noundef 3264) #14
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %if.end7.i.uevent_net_broadcast.exit_crit_edge, label %if.end11.i

if.end7.i.uevent_net_broadcast.exit_crit_edge:    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uevent_net_broadcast.exit

if.end11.i:                                       ; preds = %if.end7.i
  %call.i.i = tail call ptr @skb_put(ptr noundef nonnull %call8.i, i32 noundef %inc2.i) #14
  %16 = call ptr @memcpy(ptr %call.i.i, ptr %buf.i, i32 %inc2.i)
  %call14.i = tail call ptr @skb_pull(ptr noundef nonnull %call8.i, i32 noundef 16) #14
  %portid.i = getelementptr inbounds %struct.sk_buff, ptr %call8.i, i32 0, i32 3, i32 12
  %17 = ptrtoint ptr %portid.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %portid.i, align 4
  %dst_group.i = getelementptr inbounds %struct.sk_buff, ptr %call8.i, i32 0, i32 3, i32 16
  %18 = ptrtoint ptr %dst_group.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %dst_group.i, align 8
  %call16.i = tail call i32 @netlink_broadcast(ptr noundef %10, ptr noundef nonnull %call8.i, i32 noundef 0, i32 noundef 1, i32 noundef 3264) #14
  %19 = zext i32 %call16.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %call16.i, label %if.end11.i.uevent_net_broadcast.exit_crit_edge [
    i32 -105, label %if.end11.i.if.then20.i_crit_edge
    i32 -3, label %if.end11.i.if.then20.i_crit_edge16
  ]

if.end11.i.if.then20.i_crit_edge16:               ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20.i

if.end11.i.if.then20.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20.i

if.end11.i.uevent_net_broadcast.exit_crit_edge:   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %uevent_net_broadcast.exit

if.then20.i:                                      ; preds = %if.end11.i.if.then20.i_crit_edge, %if.end11.i.if.then20.i_crit_edge16
  br label %uevent_net_broadcast.exit

uevent_net_broadcast.exit:                        ; preds = %if.then20.i, %if.end11.i.uevent_net_broadcast.exit_crit_edge, %if.end7.i.uevent_net_broadcast.exit_crit_edge, %if.then5.i, %do.body.i.uevent_net_broadcast.exit_crit_edge, %if.end7.uevent_net_broadcast.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %if.end7.uevent_net_broadcast.exit_crit_edge ], [ -22, %if.then5.i ], [ -22, %do.body.i.uevent_net_broadcast.exit_crit_edge ], [ -12, %if.end7.i.uevent_net_broadcast.exit_crit_edge ], [ 0, %if.then20.i ], [ %call16.i, %if.end11.i.uevent_net_broadcast.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 29, ptr nonnull %buf.i) #14
  tail call void @mutex_unlock(ptr noundef nonnull @uevent_sock_mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %uevent_net_broadcast.exit, %if.then5, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %uevent_net_broadcast.exit ], [ -22, %entry.cleanup_crit_edge ], [ -1, %if.then5 ], [ -1, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_ns_capable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netlink_kernel_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlink_kernel_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind uwtable(sync) }
attributes #13 = { nomerge }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !37, !39, !41, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !92, !94, !96, !98, !99, !100, !101, !103, !105, !106, !107, !108, !110}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @uevent_helper, !1, !"uevent_helper", i1 false, i1 false}
!1 = !{!"../lib/kobject_uevent.c", i32 35, i32 6}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../lib/kobject_uevent.c", i32 194, i32 27}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../lib/kobject_uevent.c", i32 203, i32 9}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../lib/kobject_uevent.c", i32 215, i32 9}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../lib/kobject_uevent.c", i32 227, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @kobject_synth_uevent._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @kobject_synth_uevent._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../lib/kobject_uevent.c", i32 477, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @kobject_uevent_env.__UNIQUE_ID_ddebug457, !17, !"__UNIQUE_ID_ddebug457", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../lib/kobject_uevent.c", i32 486, i32 3}
!23 = !{ptr @kobject_uevent_env.__UNIQUE_ID_ddebug458, !22, !"__UNIQUE_ID_ddebug458", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../lib/kobject_uevent.c", i32 497, i32 3}
!26 = !{ptr @kobject_uevent_env.__UNIQUE_ID_ddebug459, !25, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../lib/kobject_uevent.c", i32 505, i32 4}
!29 = !{ptr @kobject_uevent_env.__UNIQUE_ID_ddebug460, !28, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../lib/kobject_uevent.c", i32 517, i32 3}
!32 = !{ptr @kobject_uevent_env.__UNIQUE_ID_ddebug461, !31, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../lib/kobject_uevent.c", i32 536, i32 31}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../lib/kobject_uevent.c", i32 539, i32 31}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../lib/kobject_uevent.c", i32 542, i32 31}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../lib/kobject_uevent.c", i32 549, i32 33}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../lib/kobject_uevent.c", i32 559, i32 4}
!43 = !{ptr @kobject_uevent_env.__UNIQUE_ID_ddebug462, !42, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../lib/kobject_uevent.c", i32 588, i32 31}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../lib/kobject_uevent.c", i32 602, i32 32}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../lib/kobject_uevent.c", i32 606, i32 6}
!50 = !{ptr @__ksymtab_kobject_uevent_env, !51, !"__ksymtab_kobject_uevent_env", i1 false, i1 false}
!51 = !{!"../lib/kobject_uevent.c", i32 629, i32 1}
!52 = !{ptr @__ksymtab_kobject_uevent, !53, !"__ksymtab_kobject_uevent", i1 false, i1 false}
!53 = !{!"../lib/kobject_uevent.c", i32 644, i32 1}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../lib/kobject_uevent.c", i32 660, i32 3}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../lib/kobject_uevent.c", i32 671, i32 3}
!58 = !{ptr @__ksymtab_add_uevent_var, !59, !"__ksymtab_add_uevent_var", i1 false, i1 false}
!59 = !{!"../lib/kobject_uevent.c", i32 679, i32 1}
!60 = !{ptr @__initcall__kmod_kobject_uevent__463_814_kobject_uevent_init2, !61, !"__initcall__kmod_kobject_uevent__463_814_kobject_uevent_init2", i1 false, i1 false}
!61 = !{!"../lib/kobject_uevent.c", i32 814, i32 1}
!62 = !{ptr @uevent_seqnum, !63, !"uevent_seqnum", i1 false, i1 false}
!63 = !{!"../lib/kobject_uevent.c", i32 33, i32 5}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../lib/kobject_uevent.c", i32 134, i32 26}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../lib/kobject_uevent.c", i32 168, i32 27}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../lib/kobject_uevent.c", i32 52, i32 16}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../lib/kobject_uevent.c", i32 53, i32 19}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../lib/kobject_uevent.c", i32 54, i32 19}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../lib/kobject_uevent.c", i32 55, i32 17}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../lib/kobject_uevent.c", i32 56, i32 19}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../lib/kobject_uevent.c", i32 57, i32 19}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../lib/kobject_uevent.c", i32 58, i32 17}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../lib/kobject_uevent.c", i32 59, i32 19}
!84 = !{ptr @kobject_actions, !85, !"kobject_actions", i1 false, i1 false}
!85 = !{!"../lib/kobject_uevent.c", i32 51, i32 20}
!86 = !{ptr @zap_modalias_env.modalias_prefix, !87, !"modalias_prefix", i1 false, i1 false}
!87 = !{!"../lib/kobject_uevent.c", i32 421, i32 20}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../lib/kobject_uevent.c", i32 48, i32 8}
!90 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @uevent_sock_mutex, !89, !"uevent_sock_mutex", i1 false, i1 false}
!92 = !{ptr @uevent_sock_list, !93, !"uevent_sock_list", i1 false, i1 false}
!93 = !{!"../lib/kobject_uevent.c", i32 44, i32 8}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../lib/kobject_uevent.c", i32 296, i32 19}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../lib/kobject_uevent.c", i32 259, i32 3}
!98 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @init_uevent_argv._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @init_uevent_argv._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @uevent_net_ops, !102, !"uevent_net_ops", i1 false, i1 false}
!102 = !{!"../lib/kobject_uevent.c", i32 803, i32 33}
!103 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../lib/kobject_uevent.c", i32 772, i32 3}
!105 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @uevent_net_init._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @uevent_net_init._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @uevent_net_rcv_skb.__msg, !109, !"__msg", i1 false, i1 false}
!109 = !{!"../lib/kobject_uevent.c", i32 741, i32 3}
!110 = !{ptr @uevent_net_broadcast.__msg, !111, !"__msg", i1 false, i1 false}
!111 = !{!"../lib/kobject_uevent.c", i32 698, i32 3}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i64 2148319348, i64 2148319353, i64 2148319366, i64 2148319410, i64 2148319444, i64 2148319465}
!121 = !{!"auto-init"}
!122 = !{i64 2148496280, i64 2148496312, i64 2148496341, i64 2148496375, i64 2148496406, i64 2148496429}
!123 = !{!"branch_weights", i32 1, i32 2000}
!124 = !{!"branch_weights", i32 2000, i32 1}
