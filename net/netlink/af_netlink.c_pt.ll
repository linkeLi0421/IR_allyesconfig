; ModuleID = '/llk/IR_all_yes/net/netlink/af_netlink.c_pt.bc'
source_filename = "../net/netlink/af_netlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nl_table\22, \22a\22\09"
module asm "\09.weak\09__crc_nl_table\09\09\09\09"
module asm "\09.long\09__crc_nl_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nl_table:\09\09\09\09\09"
module asm "\09.asciz \09\22nl_table\22\09\09\09\09\09"
module asm "__kstrtabns_nl_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nl_table_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_nl_table_lock\09\09\09\09"
module asm "\09.long\09__crc_nl_table_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nl_table_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22nl_table_lock\22\09\09\09\09\09"
module asm "__kstrtabns_nl_table_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+do_trace_netlink_extack\22, \22a\22\09"
module asm "\09.weak\09__crc_do_trace_netlink_extack\09\09\09\09"
module asm "\09.long\09__crc_do_trace_netlink_extack\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_do_trace_netlink_extack:\09\09\09\09\09"
module asm "\09.asciz \09\22do_trace_netlink_extack\22\09\09\09\09\09"
module asm "__kstrtabns_do_trace_netlink_extack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+netlink_add_tap\22, \22a\22\09"
module asm "\09.weak\09__crc_netlink_add_tap\09\09\09\09"
module asm "\09.long\09__crc_netlink_add_tap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlink_add_tap:\09\09\09\09\09"
module asm "\09.asciz \09\22netlink_add_tap\22\09\09\09\09\09"
module asm "__kstrtabns_netlink_add_tap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+netlink_remove_tap\22, \22a\22\09"
module asm "\09.weak\09__crc_netlink_remove_tap\09\09\09\09"
module asm "\09.long\09__crc_netlink_remove_tap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlink_remove_tap:\09\09\09\09\09"
module asm "\09.asciz \09\22netlink_remove_tap\22\09\09\09\09\09"
module asm "__kstrtabns_netlink_remove_tap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__netlink_ns_capable\22, \22a\22\09"
module asm "\09.weak\09__crc___netlink_ns_capable\09\09\09\09"
module asm "\09.long\09__crc___netlink_ns_capable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___netlink_ns_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22__netlink_ns_capable\22\09\09\09\09\09"
module asm "__kstrtabns___netlink_ns_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+netlink_ns_capable\22, \22a\22\09"
module asm "\09.weak\09__crc_netlink_ns_capable\09\09\09\09"
module asm "\09.long\09__crc_netlink_ns_capable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlink_ns_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22netlink_ns_capable\22\09\09\09\09\09"
module asm "__kstrtabns_netlink_ns_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+netlink_capable\22, \22a\22\09"
module asm "\09.weak\09__crc_netlink_capable\09\09\09\09"
module asm "\09.long\09__crc_netlink_capable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlink_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22netlink_capable\22\09\09\09\09\09"
module asm "__kstrtabns_netlink_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+netlink_net_capable\22, \22a\22\09"
module asm "\09.weak\09__crc_netlink_net_capable\09\09\09\09"
module asm "\09.long\09__crc_netlink_net_capable\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlink_net_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22netlink_net_capable\22\09\09\09\09\09"
module asm "__kstrtabns_netlink_net_capable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+netlink_unicast\22, \22a\22\09"
module asm "\09.weak\09__crc_netlink_unicast\09\09\09\09"
module asm "\09.long\09__crc_netlink_unicast\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlink_unicast:\09\09\09\09\09"
module asm "\09.asciz \09\22netlink_unicast\22\09\09\09\09\09"
module asm "__kstrtabns_netlink_unicast:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+netlink_has_listeners\22, \22a\22\09"
module asm "\09.weak\09__crc_netlink_has_listeners\09\09\09\09"
module asm "\09.long\09__crc_netlink_has_listeners\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlink_has_listeners:\09\09\09\09\09"
module asm "\09.asciz \09\22netlink_has_listeners\22\09\09\09\09\09"
module asm "__kstrtabns_netlink_has_listeners:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+netlink_strict_get_check\22, \22a\22\09"
module asm "\09.weak\09__crc_netlink_strict_get_check\09\09\09\09"
module asm "\09.long\09__crc_netlink_strict_get_check\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlink_strict_get_check:\09\09\09\09\09"
module asm "\09.asciz \09\22netlink_strict_get_check\22\09\09\09\09\09"
module asm "__kstrtabns_netlink_strict_get_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+netlink_broadcast\22, \22a\22\09"
module asm "\09.weak\09__crc_netlink_broadcast\09\09\09\09"
module asm "\09.long\09__crc_netlink_broadcast\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlink_broadcast:\09\09\09\09\09"
module asm "\09.asciz \09\22netlink_broadcast\22\09\09\09\09\09"
module asm "__kstrtabns_netlink_broadcast:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+netlink_set_err\22, \22a\22\09"
module asm "\09.weak\09__crc_netlink_set_err\09\09\09\09"
module asm "\09.long\09__crc_netlink_set_err\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlink_set_err:\09\09\09\09\09"
module asm "\09.asciz \09\22netlink_set_err\22\09\09\09\09\09"
module asm "__kstrtabns_netlink_set_err:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__netlink_kernel_create\22, \22a\22\09"
module asm "\09.weak\09__crc___netlink_kernel_create\09\09\09\09"
module asm "\09.long\09__crc___netlink_kernel_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___netlink_kernel_create:\09\09\09\09\09"
module asm "\09.asciz \09\22__netlink_kernel_create\22\09\09\09\09\09"
module asm "__kstrtabns___netlink_kernel_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+netlink_kernel_release\22, \22a\22\09"
module asm "\09.weak\09__crc_netlink_kernel_release\09\09\09\09"
module asm "\09.long\09__crc_netlink_kernel_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlink_kernel_release:\09\09\09\09\09"
module asm "\09.asciz \09\22netlink_kernel_release\22\09\09\09\09\09"
module asm "__kstrtabns_netlink_kernel_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__nlmsg_put\22, \22a\22\09"
module asm "\09.weak\09__crc___nlmsg_put\09\09\09\09"
module asm "\09.long\09__crc___nlmsg_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___nlmsg_put:\09\09\09\09\09"
module asm "\09.asciz \09\22__nlmsg_put\22\09\09\09\09\09"
module asm "__kstrtabns___nlmsg_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__netlink_dump_start\22, \22a\22\09"
module asm "\09.weak\09__crc___netlink_dump_start\09\09\09\09"
module asm "\09.long\09__crc___netlink_dump_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___netlink_dump_start:\09\09\09\09\09"
module asm "\09.asciz \09\22__netlink_dump_start\22\09\09\09\09\09"
module asm "__kstrtabns___netlink_dump_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+netlink_ack\22, \22a\22\09"
module asm "\09.weak\09__crc_netlink_ack\09\09\09\09"
module asm "\09.long\09__crc_netlink_ack\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlink_ack:\09\09\09\09\09"
module asm "\09.asciz \09\22netlink_ack\22\09\09\09\09\09"
module asm "__kstrtabns_netlink_ack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+netlink_rcv_skb\22, \22a\22\09"
module asm "\09.weak\09__crc_netlink_rcv_skb\09\09\09\09"
module asm "\09.long\09__crc_netlink_rcv_skb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlink_rcv_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22netlink_rcv_skb\22\09\09\09\09\09"
module asm "__kstrtabns_netlink_rcv_skb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nlmsg_notify\22, \22a\22\09"
module asm "\09.weak\09__crc_nlmsg_notify\09\09\09\09"
module asm "\09.long\09__crc_nlmsg_notify\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nlmsg_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22nlmsg_notify\22\09\09\09\09\09"
module asm "__kstrtabns_nlmsg_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+netlink_register_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_netlink_register_notifier\09\09\09\09"
module asm "\09.long\09__crc_netlink_register_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlink_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22netlink_register_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_netlink_register_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+netlink_unregister_notifier\22, \22a\22\09"
module asm "\09.weak\09__crc_netlink_unregister_notifier\09\09\09\09"
module asm "\09.long\09__crc_netlink_unregister_notifier\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netlink_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22netlink_unregister_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_netlink_unregister_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.0 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.1, %struct.trace_event, ptr, ptr, %union.anon.4, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.1 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.4 = type { ptr }
%union.anon.212 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.34 }
%union.anon.34 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.44, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.77, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.77 = type { ptr }
%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bpf_iter_reg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, [2 x %struct.bpf_ctx_arg_aux], ptr }
%struct.bpf_ctx_arg_aux = type { i32, i32, i32 }
%struct.bpf_iter_seq_info = type { ptr, ptr, ptr, i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_netlink_extack = type { %struct.trace_entry, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.182, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.200, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.182 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.200 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netlink_tap_net = type { %struct.list_head, %struct.mutex }
%struct.netlink_tap = type { ptr, ptr, %struct.list_head }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.97, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.97 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.85, i32, %struct.spinlock }
%union.anon.85 = type { %struct.anon.86 }
%struct.anon.86 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.137, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.27 }
%union.anon.27 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.29 }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.137 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.netlink_skb_parms = type { %struct.scm_creds, i32, i32, i32, ptr, i8, i32 }
%struct.scm_creds = type { i32, %struct.kuid_t, %struct.kgid_t }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.87, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.88, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.89, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.47, %union.anon.49, %union.anon.50, i16, i8, i8, i32, %union.anon.52, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.79, [0 x i32], %union.anon.80, i16, i16, %union.anon.81, %struct.refcount_struct, [0 x i32], %union.anon.82 }
%union.anon.47 = type { i64 }
%union.anon.49 = type { i32 }
%union.anon.50 = type { i32 }
%union.anon.52 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.78 }
%union.anon.78 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.79 = type { i32 }
%union.anon.80 = type { %struct.hlist_node }
%union.anon.81 = type { i32 }
%union.anon.82 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.87 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.88 = type { ptr }
%union.anon.89 = type { ptr }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.sk_buff = type { %union.anon.57, %union.anon.60, %union.anon.61, [48 x i8], %union.anon.62, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.64, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type { ptr, ptr, %union.anon.59 }
%union.anon.59 = type { ptr }
%union.anon.60 = type { ptr }
%union.anon.61 = type { i64 }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { i32, ptr }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.66, i32, i32, i32, i16, i16, %union.anon.68, i32, %union.anon.69, %union.anon.70, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.66 = type { i32 }
%union.anon.68 = type { i32 }
%union.anon.69 = type { i32 }
%union.anon.70 = type { i16 }
%struct.file = type { %union.anon.22, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.22 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.netlink_sock = type { %struct.sock, i32, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.wait_queue_head, i8, i8, i32, %struct.netlink_callback, ptr, %struct.mutex, ptr, ptr, ptr, ptr, %struct.rhash_head, %struct.callback_head, %struct.work_struct }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.186 }
%union.anon.186 = type { [6 x i32], [24 x i8] }
%struct.rhash_head = type { ptr }
%struct.netlink_table = type { %struct.rhashtable, %struct.hlist_head, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.listeners = type { %struct.callback_head, [0 x i32] }
%struct.netlink_kernel_cfg = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.netlink_compare_arg = type { %struct.possible_net_t, i32 }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.netlink_dump_control = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.netlink_notify = type { ptr, i32, i32 }
%struct.prot_inuse = type { i32, [64 x i32] }
%struct.sockaddr_nl = type { i16, i16, i32, i32 }
%struct.scm_cookie = type { ptr, ptr, %struct.scm_creds, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.56, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.53, %union.anon.54 }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.56 = type { ptr }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.46 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.46 = type { %struct.callback_head }
%struct.ucred = type { i32, i32, i32 }
%struct.nl_pktinfo = type { i32 }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.nl_seq_iter = type { %struct.seq_net_private, %struct.rhashtable_iter, i32 }
%struct.seq_net_private = type { ptr, ptr }
%struct.rhashtable_iter = type { ptr, ptr, ptr, %struct.rhashtable_walker, i32, i32, i8 }
%struct.rhashtable_walker = type { %struct.list_head, ptr }
%struct.bpf_iter__netlink = type { %union.anon.229, %union.anon.230 }
%union.anon.229 = type { i64 }
%union.anon.230 = type { i64 }
%struct.bpf_iter_meta = type { %union.anon.213, i64, i64 }
%union.anon.213 = type { i64 }

@__tpstrtab_netlink_extack = internal constant [15 x i8] c"netlink_extack\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_netlink_extack = dso_local global %struct.static_call_key { ptr @__traceiter_netlink_extack }, align 4
@__tracepoint_netlink_extack = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_netlink_extack, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_netlink_extack, ptr null, ptr @__traceiter_netlink_extack, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_netlink_extack = internal constant ptr @__tracepoint_netlink_extack, section "__tracepoints_ptrs", align 4
@str__netlink__trace_system_name = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"netlink\00", [24 x i8] zeroinitializer }, align 32
@trace_event_fields_netlink_extack = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.7, %union.anon.0 { %struct.anon { ptr @.str.8, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_netlink_extack = internal global %struct.trace_event_class { ptr @str__netlink__trace_system_name, ptr @trace_event_raw_event_netlink_extack, ptr @perf_trace_netlink_extack, ptr @trace_event_reg, ptr @trace_event_fields_netlink_extack, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_netlink_extack, i64 24), ptr getelementptr (i8, ptr @event_class_netlink_extack, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_netlink_extack = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_netlink_extack, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_netlink_extack = internal global { [25 x i8], [39 x i8] } { [25 x i8] c"\22msg=%s\22, __get_str(msg)\00", [39 x i8] zeroinitializer }, align 32
@event_netlink_extack = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_netlink_extack, %union.anon.1 { ptr @__tracepoint_netlink_extack }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_netlink_extack }, ptr @print_fmt_netlink_extack, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_netlink_extack = internal global ptr @event_netlink_extack, section "_ftrace_events", align 4
@__bpf_trace_tp_map_netlink_extack = internal global %union.anon.212 { %struct.bpf_raw_event_map { ptr @__tracepoint_netlink_extack, ptr @__bpf_trace_netlink_extack, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@nl_table = dso_local global ptr null, section ".data..read_mostly", align 4
@__kstrtab_nl_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_nl_table = external dso_local constant [0 x i8], align 1
@__ksymtab_nl_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nl_table to i32), ptr @__kstrtab_nl_table, ptr @__kstrtabns_nl_table }, section "___ksymtab_gpl+nl_table", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nl_table_lock\00", [18 x i8] zeroinitializer }, align 32
@nl_table_lock = dso_local global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_nl_table_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_nl_table_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_nl_table_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nl_table_lock to i32), ptr @__kstrtab_nl_table_lock, ptr @__kstrtabns_nl_table_lock }, section "___ksymtab_gpl+nl_table_lock", align 4
@__kstrtab_do_trace_netlink_extack = external dso_local constant [0 x i8], align 1
@__kstrtabns_do_trace_netlink_extack = external dso_local constant [0 x i8], align 1
@__ksymtab_do_trace_netlink_extack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @do_trace_netlink_extack to i32), ptr @__kstrtab_do_trace_netlink_extack, ptr @__kstrtabns_do_trace_netlink_extack }, section "___ksymtab+do_trace_netlink_extack", align 4
@netlink_tap_net_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_netlink_add_tap = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlink_add_tap = external dso_local constant [0 x i8], align 1
@__ksymtab_netlink_add_tap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlink_add_tap to i32), ptr @__kstrtab_netlink_add_tap, ptr @__kstrtabns_netlink_add_tap }, section "___ksymtab_gpl+netlink_add_tap", align 4
@__kstrtab_netlink_remove_tap = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlink_remove_tap = external dso_local constant [0 x i8], align 1
@__ksymtab_netlink_remove_tap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlink_remove_tap to i32), ptr @__kstrtab_netlink_remove_tap, ptr @__kstrtabns_netlink_remove_tap }, section "___ksymtab_gpl+netlink_remove_tap", align 4
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/netlink/af_netlink.c\00", [39 x i8] zeroinitializer }, align 32
@nl_table_users = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@nl_table_wait = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.7 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @nl_table_wait, i64 44), ptr getelementptr (i8, ptr @nl_table_wait, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@__kstrtab___netlink_ns_capable = external dso_local constant [0 x i8], align 1
@__kstrtabns___netlink_ns_capable = external dso_local constant [0 x i8], align 1
@__ksymtab___netlink_ns_capable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__netlink_ns_capable to i32), ptr @__kstrtab___netlink_ns_capable, ptr @__kstrtabns___netlink_ns_capable }, section "___ksymtab+__netlink_ns_capable", align 4
@__kstrtab_netlink_ns_capable = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlink_ns_capable = external dso_local constant [0 x i8], align 1
@__ksymtab_netlink_ns_capable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlink_ns_capable to i32), ptr @__kstrtab_netlink_ns_capable, ptr @__kstrtabns_netlink_ns_capable }, section "___ksymtab+netlink_ns_capable", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__kstrtab_netlink_capable = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlink_capable = external dso_local constant [0 x i8], align 1
@__ksymtab_netlink_capable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlink_capable to i32), ptr @__kstrtab_netlink_capable, ptr @__kstrtabns_netlink_capable }, section "___ksymtab+netlink_capable", align 4
@__kstrtab_netlink_net_capable = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlink_net_capable = external dso_local constant [0 x i8], align 1
@__ksymtab_netlink_net_capable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlink_net_capable to i32), ptr @__kstrtab_netlink_net_capable, ptr @__kstrtabns_netlink_net_capable }, section "___ksymtab+netlink_net_capable", align 4
@__kstrtab_netlink_unicast = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlink_unicast = external dso_local constant [0 x i8], align 1
@__ksymtab_netlink_unicast = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlink_unicast to i32), ptr @__kstrtab_netlink_unicast, ptr @__kstrtabns_netlink_unicast }, section "___ksymtab+netlink_unicast", align 4
@netlink_has_listeners.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_netlink_has_listeners = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlink_has_listeners = external dso_local constant [0 x i8], align 1
@__ksymtab_netlink_has_listeners = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlink_has_listeners to i32), ptr @__kstrtab_netlink_has_listeners, ptr @__kstrtabns_netlink_has_listeners }, section "___ksymtab_gpl+netlink_has_listeners", align 4
@__kstrtab_netlink_strict_get_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlink_strict_get_check = external dso_local constant [0 x i8], align 1
@__ksymtab_netlink_strict_get_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlink_strict_get_check to i32), ptr @__kstrtab_netlink_strict_get_check, ptr @__kstrtabns_netlink_strict_get_check }, section "___ksymtab_gpl+netlink_strict_get_check", align 4
@__kstrtab_netlink_broadcast = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlink_broadcast = external dso_local constant [0 x i8], align 1
@__ksymtab_netlink_broadcast = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlink_broadcast to i32), ptr @__kstrtab_netlink_broadcast, ptr @__kstrtabns_netlink_broadcast }, section "___ksymtab+netlink_broadcast", align 4
@__kstrtab_netlink_set_err = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlink_set_err = external dso_local constant [0 x i8], align 1
@__ksymtab_netlink_set_err = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlink_set_err to i32), ptr @__kstrtab_netlink_set_err, ptr @__kstrtabns_netlink_set_err }, section "___ksymtab+netlink_set_err", align 4
@__kstrtab___netlink_kernel_create = external dso_local constant [0 x i8], align 1
@__kstrtabns___netlink_kernel_create = external dso_local constant [0 x i8], align 1
@__ksymtab___netlink_kernel_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__netlink_kernel_create to i32), ptr @__kstrtab___netlink_kernel_create, ptr @__kstrtabns___netlink_kernel_create }, section "___ksymtab+__netlink_kernel_create", align 4
@__kstrtab_netlink_kernel_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlink_kernel_release = external dso_local constant [0 x i8], align 1
@__ksymtab_netlink_kernel_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlink_kernel_release to i32), ptr @__kstrtab_netlink_kernel_release, ptr @__kstrtabns_netlink_kernel_release }, section "___ksymtab+netlink_kernel_release", align 4
@__netlink_change_ngroups.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__kstrtab___nlmsg_put = external dso_local constant [0 x i8], align 1
@__kstrtabns___nlmsg_put = external dso_local constant [0 x i8], align 1
@__ksymtab___nlmsg_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__nlmsg_put to i32), ptr @__kstrtab___nlmsg_put, ptr @__kstrtabns___nlmsg_put }, section "___ksymtab+__nlmsg_put", align 4
@__kstrtab___netlink_dump_start = external dso_local constant [0 x i8], align 1
@__kstrtabns___netlink_dump_start = external dso_local constant [0 x i8], align 1
@__ksymtab___netlink_dump_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__netlink_dump_start to i32), ptr @__kstrtab___netlink_dump_start, ptr @__kstrtabns___netlink_dump_start }, section "___ksymtab+__netlink_dump_start", align 4
@__kstrtab_netlink_ack = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlink_ack = external dso_local constant [0 x i8], align 1
@__ksymtab_netlink_ack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlink_ack to i32), ptr @__kstrtab_netlink_ack, ptr @__kstrtabns_netlink_ack }, section "___ksymtab+netlink_ack", align 4
@__kstrtab_netlink_rcv_skb = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlink_rcv_skb = external dso_local constant [0 x i8], align 1
@__ksymtab_netlink_rcv_skb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlink_rcv_skb to i32), ptr @__kstrtab_netlink_rcv_skb, ptr @__kstrtabns_netlink_rcv_skb }, section "___ksymtab+netlink_rcv_skb", align 4
@__kstrtab_nlmsg_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_nlmsg_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_nlmsg_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nlmsg_notify to i32), ptr @__kstrtab_nlmsg_notify, ptr @__kstrtabns_nlmsg_notify }, section "___ksymtab+nlmsg_notify", align 4
@netlink_chain = internal global { %struct.blocking_notifier_head, [60 x i8] } { %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.74, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @netlink_chain, i64 56), ptr getelementptr (i8, ptr @netlink_chain, i64 56) }, ptr @netlink_chain, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.75, i8 0, i8 4, i8 0, i32 0, i32 0 } }, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_netlink_register_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlink_register_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_netlink_register_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlink_register_notifier to i32), ptr @__kstrtab_netlink_register_notifier, ptr @__kstrtabns_netlink_register_notifier }, section "___ksymtab+netlink_register_notifier", align 4
@__kstrtab_netlink_unregister_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_netlink_unregister_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_netlink_unregister_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netlink_unregister_notifier to i32), ptr @__kstrtab_netlink_unregister_notifier, ptr @__kstrtabns_netlink_unregister_notifier }, section "___ksymtab+netlink_unregister_notifier", align 4
@__initcall__kmod_af_netlink__607_2903_netlink_proto_init1 = internal global ptr @netlink_proto_init, section ".initcall1.init", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(null)\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__data_loc char[]\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msg\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msg=%s\0A\00", [24 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/trace/events/netlink.h\00", [33 x i8] zeroinitializer }, align 32
@trace_netlink_extack.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@__netlink_remove_tap._entry = internal constant %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.1, i32 225, ptr null, ptr null }, align 1
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014__netlink_remove_tap: %p not found\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__netlink_remove_tap\00", [43 x i8] zeroinitializer }, align 32
@__netlink_remove_tap._entry_ptr = internal global ptr @__netlink_remove_tap._entry, section ".printk_index", align 4
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nl_table_wait.lock\00", [45 x i8] zeroinitializer }, align 32
@__netlink_deliver_tap.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@netlink_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 16, ptr null, ptr @netlink_release, ptr @netlink_bind, ptr @netlink_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @netlink_getname, ptr @datagram_poll, ptr @netlink_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr @netlink_setsockopt, ptr @netlink_getsockopt, ptr null, ptr @netlink_sendmsg, ptr @netlink_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@netlink_proto = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1320, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.77 zeroinitializer, ptr null, [32 x i8] c"NETLINK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@__netlink_create.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nlk->cb_mutex\00", [18 x i8] zeroinitializer }, align 32
@nlk_cb_mutex_key_strings = internal constant { [33 x ptr], [60 x i8] } { [33 x ptr] [ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69], [60 x i8] zeroinitializer }, align 32
@nlk_cb_mutex_keys = internal global { [32 x %struct.lock_class_key], [64 x i8] } zeroinitializer, align 32
@__netlink_create.__key.21 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&nlk->wait\00", [21 x i8] zeroinitializer }, align 32
@genl_sk_destructing_cnt = external dso_local global %struct.atomic_t, align 4
@genl_sk_destructing_waitq = external dso_local global %struct.wait_queue_head, align 4
@netlink_release.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@netlink_rhashtable_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 8, i16 0, i16 1264, i32 0, i16 0, i8 1, ptr null, ptr @netlink_hash, ptr @netlink_compare }, [36 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast.__warned.24 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.26 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.28 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@netlink_update_listeners.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@deferred_put_nlk_sk.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&nlk->work)\00", [34 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_lookup.__warned.30 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@netlink_sendmsg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@netlink_sendmsg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.1, i32 1854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014Zero length message leads to an empty skb\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"netlink_sendmsg\00", [16 x i8] zeroinitializer }, align 32
@netlink_sendmsg._entry_ptr = internal global ptr @netlink_sendmsg._entry, section ".printk_index", align 4
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nlk_cb_mutex-ROUTE\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nlk_cb_mutex-1\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nlk_cb_mutex-USERSOCK\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nlk_cb_mutex-FIREWALL\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nlk_cb_mutex-SOCK_DIAG\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nlk_cb_mutex-NFLOG\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nlk_cb_mutex-XFRM\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nlk_cb_mutex-SELINUX\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nlk_cb_mutex-ISCSI\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nlk_cb_mutex-AUDIT\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nlk_cb_mutex-FIB_LOOKUP\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nlk_cb_mutex-CONNECTOR\00", [41 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nlk_cb_mutex-NETFILTER\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nlk_cb_mutex-IP6_FW\00", [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nlk_cb_mutex-DNRTMSG\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nlk_cb_mutex-KOBJECT_UEVENT\00", [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nlk_cb_mutex-GENERIC\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nlk_cb_mutex-17\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nlk_cb_mutex-SCSITRANSPORT\00", [37 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nlk_cb_mutex-ECRYPTFS\00", [42 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nlk_cb_mutex-RDMA\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nlk_cb_mutex-CRYPTO\00", [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nlk_cb_mutex-SMC\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nlk_cb_mutex-23\00", [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nlk_cb_mutex-24\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nlk_cb_mutex-25\00", [16 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nlk_cb_mutex-26\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nlk_cb_mutex-27\00", [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nlk_cb_mutex-28\00", [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nlk_cb_mutex-29\00", [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nlk_cb_mutex-30\00", [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nlk_cb_mutex-31\00", [16 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nlk_cb_mutex-MAX_LINKS\00", [41 x i8] zeroinitializer }, align 32
@netlink_sock_destruct._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.1, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Freeing alive netlink socket %p\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"netlink_sock_destruct\00", [42 x i8] zeroinitializer }, align 32
@netlink_sock_destruct._entry_ptr = internal global ptr @netlink_sock_destruct._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_insert_fast.__warned.73 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(netlink_chain).rwsem.wait_lock\00", [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(netlink_chain).rwsem\00", [42 x i8] zeroinitializer }, align 32
@netlink_family_ops = internal constant { %struct.net_proto_family, [20 x i8] } { %struct.net_proto_family { i32 16, ptr @netlink_create, ptr null }, [20 x i8] zeroinitializer }, align 32
@netlink_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @netlink_net_init, ptr null, ptr @netlink_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@netlink_tap_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @netlink_tap_init_net, ptr null, ptr null, ptr null, ptr @netlink_tap_net_id, i32 100 }, [32 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"netlink_init: Cannot allocate nl_table\0A\00", [56 x i8] zeroinitializer }, align 32
@netlink_reg_info = internal global { %struct.bpf_iter_reg, [36 x i8] } { %struct.bpf_iter_reg { ptr @.str.77, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, i32 0, [2 x %struct.bpf_ctx_arg_aux] [%struct.bpf_ctx_arg_aux { i32 8, i32 272, i32 0 }, %struct.bpf_ctx_arg_aux zeroinitializer], ptr @netlink_seq_info }, [36 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"netlink\00", [24 x i8] zeroinitializer }, align 32
@netlink_seq_info = internal constant { %struct.bpf_iter_seq_info, [16 x i8] } { %struct.bpf_iter_seq_info { ptr @netlink_seq_ops, ptr @bpf_iter_init_seq_net, ptr @bpf_iter_fini_seq_net, i32 48 }, [16 x i8] zeroinitializer }, align 32
@netlink_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @netlink_seq_start, ptr @netlink_seq_stop, ptr @netlink_seq_next, ptr @netlink_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"sk               Eth Pid        Groups   Rmem     Wmem     Dump  Locks    Drops    Inode\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%pK %-3d %-10u %08x %-8d %-8d %-5d %-8d %-8u %-8lu\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"netlink_add_usersock_entry: Cannot allocate listeners\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net-pf-%d-proto-%d\00", [45 x i8] zeroinitializer }, align 32
@netlink_tap_init_net.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&nn->netlink_tap_lock\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967279, i64 4294967280]
@__sancov_gen_cov_switch_values.84 = internal global [10 x i64] [i64 8, i64 16, i64 0, i64 2, i64 4, i64 5, i64 6, i64 10, i64 12, i64 16]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 16]
@__sancov_gen_cov_switch_values.86 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 8, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.87 = internal global [9 x i64] [i64 7, i64 32, i64 3, i64 4, i64 5, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.88 = private unnamed_addr constant [32 x i8] c"str__netlink__trace_system_name\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 36, i32 1 }
@___asan_gen_.91 = private unnamed_addr constant [34 x i8] c"trace_event_fields_netlink_extack\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [38 x i8] c"trace_event_type_funcs_netlink_extack\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [25 x i8] c"print_fmt_netlink_extack\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [21 x i8] c"event_netlink_extack\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [14 x i8] c"nl_table_lock\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 143, i32 1 }
@___asan_gen_.109 = private unnamed_addr constant [19 x i8] c"netlink_tap_net_id\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 183, i32 21 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 434, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [15 x i8] c"nl_table_users\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 145, i32 17 }
@___asan_gen_.118 = private unnamed_addr constant [14 x i8] c"nl_table_wait\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1370, i32 14 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2123, i32 9 }
@___asan_gen_.127 = private unnamed_addr constant [14 x i8] c"netlink_chain\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [34 x i8] c"../include/trace/events/netlink.h\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 9, i32 1 }
@___asan_gen_.146 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 108, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 45, i32 7 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 225, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 93, i32 8 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 322, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 695, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 723, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant [12 x i8] c"netlink_ops\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2746, i32 31 }
@___asan_gen_.175 = private unnamed_addr constant [14 x i8] c"netlink_proto\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 630, i32 21 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 656, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [25 x i8] c"nlk_cb_mutex_key_strings\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 97, i32 26 }
@___asan_gen_.184 = private unnamed_addr constant [18 x i8] c"nlk_cb_mutex_keys\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 95, i32 30 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 661, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [26 x i8] c"netlink_rhashtable_params\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2824, i32 39 }
@___asan_gen_.194 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1076, i32 8 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 738, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 230, i32 6 }
@___asan_gen_.206 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 214, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 156, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 1854, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 98, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 99, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 100, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 101, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 102, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 103, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 104, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 105, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 106, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 107, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 108, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 109, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 110, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 111, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 112, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 113, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 114, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 115, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 116, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 117, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 118, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 119, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 120, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 121, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 122, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 123, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 124, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 125, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 126, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 127, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 128, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 129, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 130, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 408, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 149, i32 8 }
@___asan_gen_.334 = private unnamed_addr constant [19 x i8] c"netlink_family_ops\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2767, i32 38 }
@___asan_gen_.337 = private unnamed_addr constant [16 x i8] c"netlink_net_ops\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2810, i32 48 }
@___asan_gen_.340 = private unnamed_addr constant [20 x i8] c"netlink_tap_net_ops\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 255, i32 33 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2900, i32 8 }
@___asan_gen_.346 = private unnamed_addr constant [17 x i8] c"netlink_reg_info\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2843, i32 28 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2844, i32 14 }
@___asan_gen_.352 = private unnamed_addr constant [17 x i8] c"netlink_seq_info\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2836, i32 39 }
@___asan_gen_.355 = private unnamed_addr constant [16 x i8] c"netlink_seq_ops\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2726, i32 36 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2641, i32 5 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2647, i32 19 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 2797, i32 9 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 691, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.373 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.374 = private constant [28 x i8] c"../net/netlink/af_netlink.c\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.374, i32 251, i32 2 }
@llvm.compiler.used = appending global [129 x ptr] [ptr @__bpf_trace_tp_map_netlink_extack, ptr @__event_netlink_extack, ptr @__initcall__kmod_af_netlink__607_2903_netlink_proto_init1, ptr @__ksymtab___netlink_dump_start, ptr @__ksymtab___netlink_kernel_create, ptr @__ksymtab___netlink_ns_capable, ptr @__ksymtab___nlmsg_put, ptr @__ksymtab_do_trace_netlink_extack, ptr @__ksymtab_netlink_ack, ptr @__ksymtab_netlink_add_tap, ptr @__ksymtab_netlink_broadcast, ptr @__ksymtab_netlink_capable, ptr @__ksymtab_netlink_has_listeners, ptr @__ksymtab_netlink_kernel_release, ptr @__ksymtab_netlink_net_capable, ptr @__ksymtab_netlink_ns_capable, ptr @__ksymtab_netlink_rcv_skb, ptr @__ksymtab_netlink_register_notifier, ptr @__ksymtab_netlink_remove_tap, ptr @__ksymtab_netlink_set_err, ptr @__ksymtab_netlink_strict_get_check, ptr @__ksymtab_netlink_unicast, ptr @__ksymtab_netlink_unregister_notifier, ptr @__ksymtab_nl_table, ptr @__ksymtab_nl_table_lock, ptr @__ksymtab_nlmsg_notify, ptr @__netlink_remove_tap._entry, ptr @__netlink_remove_tap._entry_ptr, ptr @__tracepoint_netlink_extack, ptr @__tracepoint_ptr_netlink_extack, ptr @event_class_netlink_extack, ptr @event_netlink_extack, ptr @netlink_sendmsg._entry, ptr @netlink_sendmsg._entry_ptr, ptr @netlink_sock_destruct._entry, ptr @netlink_sock_destruct._entry_ptr, ptr @str__netlink__trace_system_name, ptr @trace_event_fields_netlink_extack, ptr @trace_event_type_funcs_netlink_extack, ptr @print_fmt_netlink_extack, ptr @.str, ptr @nl_table_lock, ptr @netlink_tap_net_id, ptr @.str.1, ptr @nl_table_users, ptr @nl_table_wait, ptr @.str.4, ptr @.str.5, ptr @netlink_chain, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @netlink_ops, ptr @netlink_proto, ptr @.str.20, ptr @nlk_cb_mutex_key_strings, ptr @nlk_cb_mutex_keys, ptr @.str.22, ptr @netlink_rhashtable_params, ptr @.str.23, ptr @deferred_put_nlk_sk.__key, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.74, ptr @.str.75, ptr @netlink_family_ops, ptr @netlink_net_ops, ptr @netlink_tap_net_ops, ptr @.str.76, ptr @netlink_reg_info, ptr @.str.77, ptr @netlink_seq_info, ptr @netlink_seq_ops, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @netlink_tap_init_net.__key, ptr @.str.82], section "llvm.metadata"
@0 = internal global [96 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__netlink__trace_system_name to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_netlink_extack to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_netlink_extack to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_netlink_extack to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_netlink_extack to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nl_table_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlink_tap_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nl_table_users to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nl_table_wait to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlink_chain to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlink_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlink_proto to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlk_cb_mutex_key_strings to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nlk_cb_mutex_keys to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlink_rhashtable_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deferred_put_nlk_sk.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlink_sendmsg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlink_sock_destruct._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlink_family_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlink_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlink_tap_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlink_reg_info to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlink_seq_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlink_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netlink_tap_init_net.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_netlink_extack(ptr nocapture readnone %__data, ptr noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_netlink_extack, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, ptr noundef %msg) #22
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_netlink_extack(ptr noundef %__data, ptr noundef readonly %msg) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #22
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !303

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !304

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #22
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not.i20 = icmp eq ptr %msg, null
  %spec.select.i = select i1 %tobool.not.i20, ptr @.str.6, ptr %msg
  %call.i21 = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #25
  %add = add i32 %call.i21, 13
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef %add) #22
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %add.i = shl i32 %call.i21, 16
  %or.i = add i32 %add.i, 65548
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_netlink_extack, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i, ptr %__data_loc_msg, align 4
  %add.ptr = getelementptr i8, ptr %call3, i32 12
  %call9 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #26
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_netlink_extack(ptr noundef %__data, ptr noundef readonly %msg) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #22
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !305
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #22
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !305
  %tobool.not.i = icmp eq ptr %msg, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.6, ptr %msg
  %call.i = tail call i32 @strlen(ptr noundef nonnull %spec.select.i) #25
  %add.i = shl i32 %call.i, 16
  %or.i = add i32 %add.i, 65548
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i44.not = icmp eq ptr %15, null
  br i1 %tobool.not.i44.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %add12 = add i32 %call.i, 24
  %and = and i32 %add12, -8
  %sub = add i32 %and, -4
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef %sub, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #22
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #22
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #22
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !293) #22
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_netlink_extack, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %__data_loc_msg, align 4
  %add.ptr = getelementptr i8, ptr %call13, i32 12
  %call21 = call ptr @strcpy(ptr noundef %add.ptr, ptr noundef nonnull %spec.select.i) #26
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef %sub, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_netlink_extack(ptr noundef %__data, ptr noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %0 = ptrtoint ptr %msg to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @do_trace_netlink_extack(ptr noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_netlink_extack(ptr noundef %msg)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_netlink_extack(ptr noundef %msg) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_netlink_extack, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_netlink_extack, %do.body)) #22
          to label %if.end48 [label %do.body], !srcloc !306

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !293) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !303

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !307
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_netlink_extack, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, ptr noundef %msg) #22
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !308
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !308
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !303

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !309
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_netlink_extack, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_netlink_extack.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @trace_netlink_extack.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 24, ptr noundef nonnull @.str.4) #22
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !310
  %38 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlink_add_tap(ptr noundef %nt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nt, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %4 = load i32, ptr @netlink_tap_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef %3, i32 noundef %4)
  %5 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nt, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 32
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 824, i16 %8)
  %cmp.not = icmp eq i16 %8, 824
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !303

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %netlink_tap_lock = getelementptr inbounds %struct.netlink_tap_net, ptr %call1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %netlink_tap_lock, i32 noundef 0) #22
  %list = getelementptr inbounds %struct.netlink_tap, ptr %nt, i32 0, i32 2
  %9 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call1, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %call1, ptr noundef %10) #22
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_rcu.exit_crit_edge

if.end.list_add_rcu.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %list_add_rcu.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.netlink_tap, ptr %nt, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call1, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !311
  %13 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list, ptr %call1, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %14 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list, ptr %prev37.i.i, align 4
  br label %list_add_rcu.exit

list_add_rcu.exit:                                ; preds = %if.end.i.i, %if.end.list_add_rcu.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %netlink_tap_lock) #22
  %module = getelementptr inbounds %struct.netlink_tap, ptr %nt, i32 0, i32 1
  %15 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %module, align 4
  tail call void @__module_get(ptr noundef %16) #22
  br label %cleanup

cleanup:                                          ; preds = %list_add_rcu.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_rcu.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %0 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !312
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #22
  %call.i = tail call zeroext i1 @rcu_is_watching() #22
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #22
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.12, i32 noundef 45, ptr noundef nonnull @.str.4) #22
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #22
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #22
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !313
  %8 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #22
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #22
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlink_remove_tap(ptr noundef %nt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nt, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i.i, align 4
  %4 = load i32, ptr @netlink_tap_net_id, align 4
  %call1.i = tail call fastcc ptr @net_generic(ptr noundef %3, i32 noundef %4) #22
  %netlink_tap_lock.i = getelementptr inbounds %struct.netlink_tap_net, ptr %call1.i, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %netlink_tap_lock.i, i32 noundef 0) #22
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %call1.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %5 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %call1.i
  br i1 %cmp.not.i, label %do.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %tmp.0.i = getelementptr i8, ptr %.pn.i, i32 -8
  %cmp4.i = icmp eq ptr %tmp.0.i, %nt
  br i1 %cmp4.i, label %if.then.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %list5.i = getelementptr inbounds %struct.netlink_tap, ptr %nt, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list5.i) #22
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_rcu.exit.i_crit_edge

if.then.i.list_del_rcu.exit.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  %prev.i.i.i = getelementptr inbounds %struct.netlink_tap, ptr %nt, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %list5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %list5.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %if.then.i.list_del_rcu.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.netlink_tap, ptr %nt, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %netlink_tap_lock.i) #22
  %module.i = getelementptr inbounds %struct.netlink_tap, ptr %nt, i32 0, i32 1
  %13 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %module.i, align 4
  tail call void @module_put(ptr noundef %14) #22
  br label %__netlink_remove_tap.exit

do.end.i:                                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #24
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %nt) #27
  tail call void @mutex_unlock(ptr noundef %netlink_tap_lock.i) #22
  br label %__netlink_remove_tap.exit

__netlink_remove_tap.exit:                        ; preds = %do.end.i, %list_del_rcu.exit.i
  %cond.i = phi i32 [ 0, %list_del_rcu.exit.i ], [ -19, %do.end.i ]
  tail call void @synchronize_net() #22
  ret i32 %cond.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netlink_table_grab() #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 434) #22
  tail call void @_raw_write_lock_irq(ptr noundef nonnull @nl_table_lock) #22
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @nl_table_users, i32 noundef 4) #22
  %0 = load volatile i32, ptr @nl_table_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end144_crit_edge, label %if.then

entry.if.end144_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end144

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #22
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wait, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task, align 8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @default_wake_function, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %4, align 4
  call void @add_wait_queue_exclusive(ptr noundef nonnull @nl_table_wait, ptr noundef nonnull %wait) #22
  br label %__here

__here:                                           ; preds = %if.end72, %if.then
  %14 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 212
  %16 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 ptrtoint (ptr blockaddress(@netlink_table_grab, %__here) to i32), ptr %task_state_change, align 4
  %17 = load ptr, ptr %task, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 2, ptr %17, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !314
  %call.i.i149 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @nl_table_users, i32 noundef 4) #22
  %19 = load volatile i32, ptr @nl_table_users, align 4
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %__here123, label %if.end72

if.end72:                                         ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #24
  call void @_raw_write_unlock_irq(ptr noundef nonnull @nl_table_lock) #22
  call void @schedule() #22
  call void @_raw_write_lock_irq(ptr noundef nonnull @nl_table_lock) #22
  br label %__here

__here123:                                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #24
  %20 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %task, align 8
  %task_state_change127 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 212
  %22 = ptrtoint ptr %task_state_change127 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 ptrtoint (ptr blockaddress(@netlink_table_grab, %__here123) to i32), ptr %task_state_change127, align 4
  %23 = load ptr, ptr %task, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 0, ptr %23, align 128
  call void @remove_wait_queue(ptr noundef nonnull @nl_table_wait, ptr noundef nonnull %wait) #22
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #22
  br label %if.end144

if.end144:                                        ; preds = %__here123, %entry.if.end144_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @default_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue_exclusive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netlink_table_ungrab() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_unlock_irq(ptr noundef nonnull @nl_table_lock) #22
  tail call void @__wake_up(ptr noundef nonnull @nl_table_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__netlink_ns_capable(ptr nocapture noundef readonly %nsp, ptr noundef %user_ns, i32 noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.netlink_skb_parms, ptr %nsp, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %land.rhs

lor.lhs.false:                                    ; preds = %entry
  %sk = getelementptr inbounds %struct.netlink_skb_parms, ptr %nsp, i32 0, i32 4
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk, align 4
  %sk_socket = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 71
  %4 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk_socket, align 8
  %file = getelementptr inbounds %struct.socket, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %file, align 4
  %call = tail call zeroext i1 @file_ns_capable(ptr noundef %7, ptr noundef %user_ns, i32 noundef %cap) #22
  br i1 %call, label %lor.lhs.false.land.rhs_crit_edge, label %lor.lhs.false.land.end_crit_edge

lor.lhs.false.land.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %land.end

lor.lhs.false.land.rhs_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %call1 = tail call zeroext i1 @ns_capable(ptr noundef %user_ns, i32 noundef %cap) #22
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false.land.end_crit_edge
  %8 = phi i1 [ false, %lor.lhs.false.land.end_crit_edge ], [ %call1, %land.rhs ]
  ret i1 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @file_ns_capable(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @netlink_ns_capable(ptr nocapture noundef readonly %skb, ptr noundef %user_ns, i32 noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.land.rhs.i_crit_edge

entry.land.rhs.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %land.rhs.i

lor.lhs.false.i:                                  ; preds = %entry
  %sk.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %2 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk.i, align 4
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 71
  %4 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk_socket.i, align 8
  %file.i = getelementptr inbounds %struct.socket, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %file.i, align 4
  %call.i = tail call zeroext i1 @file_ns_capable(ptr noundef %7, ptr noundef %user_ns, i32 noundef %cap) #22
  br i1 %call.i, label %lor.lhs.false.i.land.rhs.i_crit_edge, label %lor.lhs.false.i.__netlink_ns_capable.exit_crit_edge

lor.lhs.false.i.__netlink_ns_capable.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %__netlink_ns_capable.exit

lor.lhs.false.i.land.rhs.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %lor.lhs.false.i.land.rhs.i_crit_edge, %entry.land.rhs.i_crit_edge
  %call1.i = tail call zeroext i1 @ns_capable(ptr noundef %user_ns, i32 noundef %cap) #22
  br label %__netlink_ns_capable.exit

__netlink_ns_capable.exit:                        ; preds = %land.rhs.i, %lor.lhs.false.i.__netlink_ns_capable.exit_crit_edge
  %8 = phi i1 [ false, %lor.lhs.false.i.__netlink_ns_capable.exit_crit_edge ], [ %call1.i, %land.rhs.i ]
  ret i1 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @netlink_capable(ptr nocapture noundef readonly %skb, i32 noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %0 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %entry.land.rhs.i.i_crit_edge

entry.land.rhs.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %land.rhs.i.i

lor.lhs.false.i.i:                                ; preds = %entry
  %sk.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %2 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk.i.i, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %3, i32 0, i32 71
  %4 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk_socket.i.i, align 8
  %file.i.i = getelementptr inbounds %struct.socket, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %file.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %file.i.i, align 4
  %call.i.i = tail call zeroext i1 @file_ns_capable(ptr noundef %7, ptr noundef nonnull @init_user_ns, i32 noundef %cap) #22
  br i1 %call.i.i, label %lor.lhs.false.i.i.land.rhs.i.i_crit_edge, label %lor.lhs.false.i.i.netlink_ns_capable.exit_crit_edge

lor.lhs.false.i.i.netlink_ns_capable.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_ns_capable.exit

lor.lhs.false.i.i.land.rhs.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %lor.lhs.false.i.i.land.rhs.i.i_crit_edge, %entry.land.rhs.i.i_crit_edge
  %call1.i.i = tail call zeroext i1 @ns_capable(ptr noundef nonnull @init_user_ns, i32 noundef %cap) #22
  br label %netlink_ns_capable.exit

netlink_ns_capable.exit:                          ; preds = %land.rhs.i.i, %lor.lhs.false.i.i.netlink_ns_capable.exit_crit_edge
  %8 = phi i1 [ false, %lor.lhs.false.i.i.netlink_ns_capable.exit_crit_edge ], [ %call1.i.i, %land.rhs.i.i ]
  ret i1 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @netlink_net_capable(ptr nocapture noundef readonly %skb, i32 noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %user_ns = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %user_ns, align 4
  %flags.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %entry.land.rhs.i.i_crit_edge

entry.land.rhs.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %land.rhs.i.i

lor.lhs.false.i.i:                                ; preds = %entry
  %sk.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %9 = ptrtoint ptr %sk.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk.i.i, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 71
  %11 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sk_socket.i.i, align 8
  %file.i.i = getelementptr inbounds %struct.socket, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %file.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %file.i.i, align 4
  %call.i.i = tail call zeroext i1 @file_ns_capable(ptr noundef %14, ptr noundef %6, i32 noundef %cap) #22
  br i1 %call.i.i, label %lor.lhs.false.i.i.land.rhs.i.i_crit_edge, label %lor.lhs.false.i.i.netlink_ns_capable.exit_crit_edge

lor.lhs.false.i.i.netlink_ns_capable.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_ns_capable.exit

lor.lhs.false.i.i.land.rhs.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %lor.lhs.false.i.i.land.rhs.i.i_crit_edge, %entry.land.rhs.i.i_crit_edge
  %call1.i.i = tail call zeroext i1 @ns_capable(ptr noundef %6, i32 noundef %cap) #22
  br label %netlink_ns_capable.exit

netlink_ns_capable.exit:                          ; preds = %land.rhs.i.i, %lor.lhs.false.i.i.netlink_ns_capable.exit_crit_edge
  %15 = phi i1 [ false, %lor.lhs.false.i.i.netlink_ns_capable.exit_crit_edge ], [ %call1.i.i, %land.rhs.i.i ]
  ret i1 %15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @netlink_getsockbyfilp(ptr nocapture noundef readonly %filp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  %4 = and i16 %3, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16384, i16 %4)
  %cmp = icmp eq i16 %4, -16384
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %sk = getelementptr i8, ptr %1, i32 -240
  %5 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sk, align 16
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %8)
  %cmp5.not = icmp eq i16 %8, 16
  br i1 %cmp5.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #22
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #22, !srcloc !315
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end9.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !304

if.end9.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end9
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !303

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.cleanup_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end9.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end9.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -88 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ %6, %if.else.i.i.i.i.cleanup_crit_edge ], [ %6, %if.end15.sink.split.i.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlink_attachskb(ptr noundef %sk, ptr noundef %skb, ptr nocapture noundef %timeo, ptr noundef readonly %ssk) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_backlog = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog, i32 noundef 4) #22
  %0 = ptrtoint ptr %sk_backlog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sk_backlog, align 4
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 15
  %2 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sk_rcvbuf, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp sgt i32 %1, %3
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 8
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end161, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #22
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %7 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %8 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %9 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %wait, align 4
  %11 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task, align 8
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %6, align 4
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @default_wake_function, ptr %7, align 4
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %8, align 4
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %9, align 4
  %19 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %timeo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool5.not = icmp eq i32 %20, 0
  br i1 %tobool5.not, label %if.then6, label %__here

if.then6:                                         ; preds = %if.then
  %tobool7.not = icmp eq ptr %ssk, null
  br i1 %tobool7.not, label %if.then6.if.then11_crit_edge, label %lor.lhs.false8

if.then6.if.then11_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then11

lor.lhs.false8:                                   ; preds = %if.then6
  %flags.i = getelementptr inbounds %struct.netlink_sock, ptr %ssk, i32 0, i32 4
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 4
  %and.i187 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i187)
  %tobool10.not = icmp eq i32 %and.i187, 0
  br i1 %tobool10.not, label %lor.lhs.false8.if.end_crit_edge, label %lor.lhs.false8.if.then11_crit_edge

lor.lhs.false8.if.then11_crit_edge:               ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then11

lor.lhs.false8.if.end_crit_edge:                  ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then11:                                        ; preds = %lor.lhs.false8.if.then11_crit_edge, %if.then6.if.then11_crit_edge
  %flags.i188 = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 4
  %23 = ptrtoint ptr %flags.i188 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i188, align 4
  %and.i189 = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i189)
  %tobool.not.i = icmp eq i32 %and.i189, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then11.netlink_overrun.exit_crit_edge

if.then11.netlink_overrun.exit_crit_edge:         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_overrun.exit

if.then.i:                                        ; preds = %if.then11
  %state.i = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 8
  %call2.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.then.i.netlink_overrun.exit_crit_edge

if.then.i.netlink_overrun.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_overrun.exit

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %25 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 105, ptr %sk_err.i, align 4
  tail call void @sk_error_report(ptr noundef %sk) #22
  br label %netlink_overrun.exit

netlink_overrun.exit:                             ; preds = %if.then4.i, %if.then.i.netlink_overrun.exit_crit_edge, %if.then11.netlink_overrun.exit_crit_edge
  %sk_drops.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_drops.i, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr %sk_drops.i, i32 1, i32 3, i32 1) #22
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_drops.i, ptr %sk_drops.i, i32 1, ptr elementtype(i32) %sk_drops.i) #22, !srcloc !316
  br label %if.end

if.end:                                           ; preds = %netlink_overrun.exit, %lor.lhs.false8.if.end_crit_edge
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !317
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #22
  %27 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #22, !srcloc !318
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i190, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !303

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #22
  br label %sock_put.exit

if.then.i190:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !319
  tail call void @sk_free(ptr noundef %sk) #22
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i190, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #22
  br label %cleanup

__here:                                           ; preds = %if.then
  %28 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %task, align 8
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 212
  %30 = ptrtoint ptr %task_state_change to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 ptrtoint (ptr blockaddress(@netlink_attachskb, %__here) to i32), ptr %task_state_change, align 4
  %31 = load ptr, ptr %task, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 1, ptr %31, align 128
  %wait68 = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 10
  call void @add_wait_queue(ptr noundef %wait68, ptr noundef nonnull %wait) #22
  %call.i.i185 = call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog, i32 noundef 4) #22
  %33 = ptrtoint ptr %sk_backlog to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %sk_backlog, align 4
  %35 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sk_rcvbuf, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp73 = icmp sgt i32 %34, %36
  br i1 %cmp73, label %__here.land.lhs.true_crit_edge, label %lor.lhs.false74

__here.land.lhs.true_crit_edge:                   ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #24
  br label %land.lhs.true

lor.lhs.false74:                                  ; preds = %__here
  %state75 = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 8
  %37 = ptrtoint ptr %state75 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %state75, align 4
  %and1.i186 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i186)
  %tobool77.not = icmp eq i32 %and1.i186, 0
  br i1 %tobool77.not, label %lor.lhs.false74.__here132_crit_edge, label %lor.lhs.false74.land.lhs.true_crit_edge

lor.lhs.false74.land.lhs.true_crit_edge:          ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #24
  br label %land.lhs.true

lor.lhs.false74.__here132_crit_edge:              ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #24
  br label %__here132

land.lhs.true:                                    ; preds = %lor.lhs.false74.land.lhs.true_crit_edge, %__here.land.lhs.true_crit_edge
  %39 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  %and1.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then79, label %land.lhs.true.__here132_crit_edge

land.lhs.true.__here132_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %__here132

if.then79:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  %42 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %timeo, align 4
  %call80 = call i32 @schedule_timeout(i32 noundef %43) #22
  %44 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call80, ptr %timeo, align 4
  br label %__here132

__here132:                                        ; preds = %if.then79, %land.lhs.true.__here132_crit_edge, %lor.lhs.false74.__here132_crit_edge
  %45 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task, align 8
  %task_state_change136 = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 212
  %47 = ptrtoint ptr %task_state_change136 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 ptrtoint (ptr blockaddress(@netlink_attachskb, %__here132) to i32), ptr %task_state_change136, align 4
  %48 = load ptr, ptr %task, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 0, ptr %48, align 128
  call void @remove_wait_queue(ptr noundef %wait68, ptr noundef nonnull %wait) #22
  %skc_refcnt.i191 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i192 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i191, i32 noundef 4) #22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !317
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i191, i32 1, i32 3, i32 1) #22
  %50 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i191, ptr %skc_refcnt.i191, i32 1, ptr elementtype(i32) %skc_refcnt.i191) #22, !srcloc !318
  %asmresult.i.i.i.i.i.i.i193 = extractvalue { i32, i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i193)
  %cmp.i.i.i.i194 = icmp eq i32 %asmresult.i.i.i.i.i.i.i193, 1
  br i1 %cmp.i.i.i.i194, label %if.then.i198, label %if.end5.i.i.i.i196

if.end5.i.i.i.i196:                               ; preds = %__here132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i193)
  %.not.i.i.i.i195 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i193, 0
  br i1 %.not.i.i.i.i195, label %if.end5.i.i.i.i196.sock_put.exit199_crit_edge, label %if.then10.i.i.i.i197, !prof !303

if.end5.i.i.i.i196.sock_put.exit199_crit_edge:    ; preds = %if.end5.i.i.i.i196
  call void @__sanitizer_cov_trace_pc() #24
  br label %sock_put.exit199

if.then10.i.i.i.i197:                             ; preds = %if.end5.i.i.i.i196
  call void @__sanitizer_cov_trace_pc() #24
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i191, i32 noundef 3) #22
  br label %sock_put.exit199

if.then.i198:                                     ; preds = %__here132
  call void @__sanitizer_cov_trace_pc() #24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !319
  call void @sk_free(ptr noundef %sk) #22
  br label %sock_put.exit199

sock_put.exit199:                                 ; preds = %if.then.i198, %if.then10.i.i.i.i197, %if.end5.i.i.i.i196.sock_put.exit199_crit_edge
  %51 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %stack.i.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %54, align 4
  %57 = and i32 %56, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i200 = icmp eq i32 %57, 0
  br i1 %tobool.not.i200, label %signal_pending.exit, label %sock_put.exit199.if.then158_crit_edge, !prof !303

sock_put.exit199.if.then158_crit_edge:            ; preds = %sock_put.exit199
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then158

signal_pending.exit:                              ; preds = %sock_put.exit199
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %54, align 4
  %and1.i.i.i.i.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool157.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool157.not, label %signal_pending.exit.cleanup_crit_edge, label %signal_pending.exit.if.then158_crit_edge

signal_pending.exit.if.then158_crit_edge:         ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then158

signal_pending.exit.cleanup_crit_edge:            ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then158:                                       ; preds = %signal_pending.exit.if.then158_crit_edge, %sock_put.exit199.if.then158_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #22
  %60 = ptrtoint ptr %timeo to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %timeo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %61)
  %cmp.i = icmp eq i32 %61, 2147483647
  %cond.i = select i1 %cmp.i, i32 -512, i32 -4
  br label %cleanup

cleanup:                                          ; preds = %if.then158, %signal_pending.exit.cleanup_crit_edge, %sock_put.exit
  %retval.0 = phi i32 [ %cond.i, %if.then158 ], [ -11, %sock_put.exit ], [ 1, %signal_pending.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #22
  br label %cleanup162

if.end161:                                        ; preds = %lor.lhs.false
  %62 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %cmp.not.i = icmp eq ptr %64, null
  br i1 %cmp.not.i, label %if.end161.if.end.i202_crit_edge, label %do.end.i, !prof !303

if.end161.if.end.i202_crit_edge:                  ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i202

do.end.i:                                         ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 387, i32 noundef 9, ptr noundef null) #22
  br label %if.end.i202

if.end.i202:                                      ; preds = %do.end.i, %if.end161.if.end.i202_crit_edge
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %sk, ptr %62, align 4
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %66 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @netlink_skb_destructor, ptr %destructor.i, align 4
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %67 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %truesize.i, align 8
  %call.i.i.i201 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr %sk_backlog, i32 1, i32 3, i32 1) #22
  %69 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog, ptr %sk_backlog, i32 %68, ptr elementtype(i32) %sk_backlog) #22, !srcloc !316
  %skc_prot.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %70 = ptrtoint ptr %skc_prot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %skc_prot.i.i.i, align 8
  %memory_allocated.i.i.i = getelementptr inbounds %struct.proto, ptr %71, i32 0, i32 32
  %72 = ptrtoint ptr %memory_allocated.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %memory_allocated.i.i.i, align 4
  %tobool.i.not.i.i = icmp eq ptr %73, null
  br i1 %tobool.i.not.i.i, label %if.end.i202.cleanup162_crit_edge, label %if.end.i.i

if.end.i202.cleanup162_crit_edge:                 ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup162

if.end.i.i:                                       ; preds = %if.end.i202
  call void @__sanitizer_cov_trace_pc() #24
  %74 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %truesize.i, align 8
  %sk_forward_alloc.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %76 = ptrtoint ptr %sk_forward_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sk_forward_alloc.i.i, align 8
  %sub.i.i = sub i32 %77, %75
  store i32 %sub.i.i, ptr %sk_forward_alloc.i.i, align 8
  br label %cleanup162

cleanup162:                                       ; preds = %if.end.i.i, %if.end.i202.cleanup162_crit_edge, %cleanup
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ 0, %if.end.i202.cleanup162_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlink_sendskb(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1.i, align 4
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i.i, align 4
  tail call fastcc void @netlink_deliver_tap(ptr noundef %3, ptr noundef %skb) #22
  %sk_receive_queue.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %sk_receive_queue.i, ptr noundef %skb) #22
  %sk_data_ready.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 77
  %4 = ptrtoint ptr %sk_data_ready.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk_data_ready.i, align 8
  tail call void %5(ptr noundef %sk) #22
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !317
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #22
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #22, !srcloc !318
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !303

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #22
  br label %sock_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !319
  tail call void @sk_free(ptr noundef %sk) #22
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__netlink_sendskb(ptr noundef %sk, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %len1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i, align 4
  tail call fastcc void @netlink_deliver_tap(ptr noundef %3, ptr noundef %skb)
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %sk_receive_queue, ptr noundef %skb) #22
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 77
  %4 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk_data_ready, align 8
  tail call void %5(ptr noundef %sk) #22
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netlink_detachskb(ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #22
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !317
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #22
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #22, !srcloc !318
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !303

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #22
  br label %sock_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !319
  tail call void @sk_free(ptr noundef %sk) #22
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlink_unicast(ptr noundef %ssk, ptr noundef %skb, i32 noundef %portid, i32 noundef %nonblock) #0 align 64 {
entry:
  %timeo = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %timeo) #22
  %0 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 3264, i32 2592
  %call1 = tail call fastcc ptr @netlink_trim(ptr noundef %skb, i32 noundef %cond.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nonblock)
  %tobool.not = icmp eq i32 %nonblock, 0
  br i1 %tobool.not, label %cond.false.i, label %entry.sock_sndtimeo.exit_crit_edge

entry.sock_sndtimeo.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %sock_sndtimeo.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 31
  %4 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sk_sndtimeo.i, align 8
  br label %sock_sndtimeo.exit

sock_sndtimeo.exit:                               ; preds = %cond.false.i, %entry.sock_sndtimeo.exit_crit_edge
  %cond.i44 = phi i32 [ %5, %cond.false.i ], [ 0, %entry.sock_sndtimeo.exit_crit_edge ]
  %6 = ptrtoint ptr %timeo to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond.i44, ptr %timeo, align 4
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %ssk, i32 0, i32 9
  %sk_protocol.i = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 46
  %portid7.i = getelementptr inbounds %struct.netlink_sock, ptr %ssk, i32 0, i32 1
  br label %retry

retry:                                            ; preds = %if.end14.retry_crit_edge, %sock_sndtimeo.exit
  %7 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skc_net.i.i, align 4
  %9 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sk_protocol.i, align 4
  %conv.i = zext i16 %10 to i32
  %call1.i = tail call fastcc ptr @netlink_lookup(ptr noundef %8, i32 noundef %conv.i, i32 noundef %portid) #22
  %tobool.not.i45 = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i45, label %retry.if.then_crit_edge, label %if.end.i

retry.if.then_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then

if.end.i:                                         ; preds = %retry
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %call1.i, i32 0, i32 4
  %11 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp.i = icmp eq i8 %12, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.netlink_getsockbyportid.exit_crit_edge

if.end.i.netlink_getsockbyportid.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_getsockbyportid.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %dst_portid.i = getelementptr inbounds %struct.netlink_sock, ptr %call1.i, i32 0, i32 2
  %13 = ptrtoint ptr %dst_portid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dst_portid.i, align 4
  %15 = ptrtoint ptr %portid7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %portid7.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp8.not.i = icmp eq i32 %14, %16
  br i1 %cmp8.not.i, label %land.lhs.true.i.netlink_getsockbyportid.exit_crit_edge, label %if.then10.i

land.lhs.true.i.netlink_getsockbyportid.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_getsockbyportid.exit

if.then10.i:                                      ; preds = %land.lhs.true.i
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %call1.i, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !317
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #22
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #22, !srcloc !318
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.then_crit_edge, label %if.then10.i.i.i.i.i, !prof !303

if.end5.i.i.i.i.i.if.then_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #22
  br label %if.then

if.then.i.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !319
  tail call void @sk_free(ptr noundef nonnull %call1.i) #22
  br label %if.then

netlink_getsockbyportid.exit:                     ; preds = %land.lhs.true.i.netlink_getsockbyportid.exit_crit_edge, %if.end.i.netlink_getsockbyportid.exit_crit_edge
  %cmp.i46 = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i46, label %netlink_getsockbyportid.exit.if.then_crit_edge, label %if.end

netlink_getsockbyportid.exit.if.then_crit_edge:   ; preds = %netlink_getsockbyportid.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then

if.then:                                          ; preds = %netlink_getsockbyportid.exit.if.then_crit_edge, %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.then_crit_edge, %retry.if.then_crit_edge
  %retval.0.i62 = phi ptr [ inttoptr (i32 -111 to ptr), %if.end5.i.i.i.i.i.if.then_crit_edge ], [ inttoptr (i32 -111 to ptr), %if.then10.i.i.i.i.i ], [ inttoptr (i32 -111 to ptr), %if.then.i.i ], [ inttoptr (i32 -111 to ptr), %retry.if.then_crit_edge ], [ %call1.i, %netlink_getsockbyportid.exit.if.then_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %call1, i32 noundef 0) #22
  %18 = ptrtoint ptr %retval.0.i62 to i32
  br label %cleanup

if.end:                                           ; preds = %netlink_getsockbyportid.exit
  %flags.i = getelementptr inbounds %struct.netlink_sock, ptr %call1.i, i32 0, i32 4
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %and.i47 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i47)
  %tobool7.not = icmp eq i32 %and.i47, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end
  %flags.i.le = getelementptr inbounds %struct.netlink_sock, ptr %call1.i, i32 0, i32 4
  %netlink_rcv.i = getelementptr inbounds %struct.netlink_sock, ptr %call1.i, i32 0, i32 17
  %21 = ptrtoint ptr %netlink_rcv.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %netlink_rcv.i, align 8
  %cmp.not.i = icmp eq ptr %22, null
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 6
  %23 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i, align 4
  %25 = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %cmp.not.i.i = icmp eq ptr %27, null
  br i1 %cmp.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %do.end.i.i, !prof !303

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 387, i32 noundef 9, ptr noundef null) #22
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.if.end.i.i_crit_edge
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call1.i, ptr %25, align 4
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 4, i32 0, i32 1
  %29 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @netlink_skb_destructor, ptr %destructor.i.i, align 4
  %truesize.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 20
  %30 = ptrtoint ptr %truesize.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %truesize.i.i, align 8
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %call1.i, i32 0, i32 9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i.i, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i.i, i32 1, i32 3, i32 1) #22
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i.i, ptr %sk_backlog.i.i, i32 %31, ptr elementtype(i32) %sk_backlog.i.i) #22, !srcloc !316
  %skc_prot.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %call1.i, i32 0, i32 8
  %33 = ptrtoint ptr %skc_prot.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %skc_prot.i.i.i.i, align 8
  %memory_allocated.i.i.i.i = getelementptr inbounds %struct.proto, ptr %34, i32 0, i32 32
  %35 = ptrtoint ptr %memory_allocated.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %memory_allocated.i.i.i.i, align 4
  %tobool.i.not.i.i.i = icmp eq ptr %36, null
  br i1 %tobool.i.not.i.i.i, label %if.end.i.i.netlink_skb_set_owner_r.exit.i_crit_edge, label %if.end.i.i.i

if.end.i.i.netlink_skb_set_owner_r.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_skb_set_owner_r.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %37 = ptrtoint ptr %truesize.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %truesize.i.i, align 8
  %sk_forward_alloc.i.i.i = getelementptr inbounds %struct.sock, ptr %call1.i, i32 0, i32 11
  %39 = ptrtoint ptr %sk_forward_alloc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sk_forward_alloc.i.i.i, align 8
  %sub.i.i.i = sub i32 %40, %38
  store i32 %sub.i.i.i, ptr %sk_forward_alloc.i.i.i, align 8
  br label %netlink_skb_set_owner_r.exit.i

netlink_skb_set_owner_r.exit.i:                   ; preds = %if.end.i.i.i, %if.end.i.i.netlink_skb_set_owner_r.exit.i_crit_edge
  %sk1.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 3, i32 24
  %41 = ptrtoint ptr %sk1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %ssk, ptr %sk1.i, align 8
  %42 = ptrtoint ptr %flags.i.le to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags.i.le, align 4
  %and.i.i.i48 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i48)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i48, 0
  br i1 %tobool.not.i.i, label %netlink_skb_set_owner_r.exit.i.if.then.i.i49_crit_edge, label %land.lhs.true.i.i

netlink_skb_set_owner_r.exit.i.if.then.i.i49_crit_edge: ; preds = %netlink_skb_set_owner_r.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then.i.i49

land.lhs.true.i.i:                                ; preds = %netlink_skb_set_owner_r.exit.i
  %flags.i5.i.i = getelementptr inbounds %struct.netlink_sock, ptr %ssk, i32 0, i32 4
  %44 = ptrtoint ptr %flags.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags.i5.i.i, align 4
  %and.i6.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6.i.i)
  %tobool2.not.i.i = icmp eq i32 %and.i6.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.if.then.i.i49_crit_edge, label %land.lhs.true.i.i.netlink_deliver_tap_kernel.exit.i_crit_edge

land.lhs.true.i.i.netlink_deliver_tap_kernel.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_deliver_tap_kernel.exit.i

land.lhs.true.i.i.if.then.i.i49_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then.i.i49

if.then.i.i49:                                    ; preds = %land.lhs.true.i.i.if.then.i.i49_crit_edge, %netlink_skb_set_owner_r.exit.i.if.then.i.i49_crit_edge
  %skc_net.i.i.i = getelementptr inbounds %struct.sock_common, ptr %call1.i, i32 0, i32 9
  %46 = ptrtoint ptr %skc_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %skc_net.i.i.i, align 4
  tail call fastcc void @netlink_deliver_tap(ptr noundef %47, ptr noundef %call1) #22
  br label %netlink_deliver_tap_kernel.exit.i

netlink_deliver_tap_kernel.exit.i:                ; preds = %if.then.i.i49, %land.lhs.true.i.i.netlink_deliver_tap_kernel.exit.i_crit_edge
  %48 = ptrtoint ptr %netlink_rcv.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %netlink_rcv.i, align 8
  tail call void %49(ptr noundef %call1) #22
  tail call void @consume_skb(ptr noundef %call1) #22
  br label %if.end.i54

if.else.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @kfree_skb_reason(ptr noundef %call1, i32 noundef 0) #22
  br label %if.end.i54

if.end.i54:                                       ; preds = %if.else.i, %netlink_deliver_tap_kernel.exit.i
  %ret.0.i = phi i32 [ %24, %netlink_deliver_tap_kernel.exit.i ], [ -111, %if.else.i ]
  %skc_refcnt.i.i50 = getelementptr inbounds %struct.sock_common, ptr %call1.i, i32 0, i32 19
  %call.i.i.i.i.i.i.i51 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i50, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !317
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i50, i32 1, i32 3, i32 1) #22
  %50 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i50, ptr %skc_refcnt.i.i50, i32 1, ptr elementtype(i32) %skc_refcnt.i.i50) #22, !srcloc !318
  %asmresult.i.i.i.i.i.i.i.i52 = extractvalue { i32, i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i52)
  %cmp.i.i.i.i.i53 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i52, 1
  br i1 %cmp.i.i.i.i.i53, label %if.then.i15.i, label %if.end5.i.i.i.i.i56

if.end5.i.i.i.i.i56:                              ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i52)
  %.not.i.i.i.i.i55 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i52, 0
  br i1 %.not.i.i.i.i.i55, label %if.end5.i.i.i.i.i56.cleanup_crit_edge, label %if.then10.i.i.i.i.i57, !prof !303

if.end5.i.i.i.i.i56.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i56
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then10.i.i.i.i.i57:                            ; preds = %if.end5.i.i.i.i.i56
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i50, i32 noundef 3) #22
  br label %cleanup

if.then.i15.i:                                    ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !319
  tail call void @sk_free(ptr noundef nonnull %call1.i) #22
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call.i = tail call i32 @sk_filter_trim_cap(ptr noundef nonnull %call1.i, ptr noundef %call1, i32 noundef 1) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end10
  %len = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 6
  %51 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len, align 4
  tail call void @kfree_skb_reason(ptr noundef %call1, i32 noundef 0) #22
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call1.i, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !317
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #22
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #22, !srcloc !318
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i58, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !303

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #22
  br label %cleanup

if.then.i58:                                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !319
  tail call void @sk_free(ptr noundef nonnull %call1.i) #22
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %call15 = call i32 @netlink_attachskb(ptr noundef nonnull %call1.i, ptr noundef %call1, ptr noundef nonnull %timeo, ptr noundef %ssk)
  %54 = zext i32 %call15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call15, label %if.end14.cleanup_crit_edge [
    i32 1, label %if.end14.retry_crit_edge
    i32 0, label %if.end20
  ]

if.end14.retry_crit_edge:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #24
  br label %retry

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #24
  %call21 = tail call i32 @netlink_sendskb(ptr noundef nonnull %call1.i, ptr noundef %call1)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end14.cleanup_crit_edge, %if.then.i58, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then.i15.i, %if.then10.i.i.i.i.i57, %if.end5.i.i.i.i.i56.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %18, %if.then ], [ %call21, %if.end20 ], [ %ret.0.i, %if.end5.i.i.i.i.i56.cleanup_crit_edge ], [ %ret.0.i, %if.then10.i.i.i.i.i57 ], [ %ret.0.i, %if.then.i15.i ], [ %52, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %52, %if.then10.i.i.i.i ], [ %52, %if.then.i58 ], [ %call15, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %timeo) #22
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @netlink_trim(ptr noundef %skb, i32 noundef %allocation) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %cmp.not = icmp eq ptr %2, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !303

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1286, i32 noundef 9, ptr noundef null) #22
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %end = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %3 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %end, align 4
  %tail = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %5 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %6 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %head = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head, align 8
  %call = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %8) #22
  br i1 %call, label %if.end.cleanup32_crit_edge, label %lor.lhs.false

if.end.cleanup32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup32

lor.lhs.false:                                    ; preds = %if.end
  %mul = shl i32 %sub.ptr.sub, 1
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %9 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %truesize, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %10)
  %cmp19 = icmp ult i32 %mul, %10
  br i1 %cmp19, label %lor.lhs.false.cleanup32_crit_edge, label %if.end21

lor.lhs.false.cleanup32_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup32

if.end21:                                         ; preds = %lor.lhs.false
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i, i32 noundef 4) #22
  %11 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i.not = icmp eq i32 %12, 1
  br i1 %cmp.i.not, label %if.end21.if.end29_crit_edge, label %if.then24

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end29

if.then24:                                        ; preds = %if.end21
  %call25 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef %allocation) #22
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.then24.cleanup32_crit_edge, label %cleanup

if.then24.cleanup32_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup32

cleanup:                                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @consume_skb(ptr noundef %skb) #22
  br label %if.end29

if.end29:                                         ; preds = %cleanup, %if.end21.if.end29_crit_edge
  %skb.addr.1 = phi ptr [ %call25, %cleanup ], [ %skb, %if.end21.if.end29_crit_edge ]
  %sub = sub i32 0, %sub.ptr.sub
  %and = and i32 %allocation, -74753
  %or30 = or i32 %and, 73728
  %call31 = tail call i32 @pskb_expand_head(ptr noundef %skb.addr.1, i32 noundef 0, i32 noundef %sub, i32 noundef %or30) #22
  br label %cleanup32

cleanup32:                                        ; preds = %if.end29, %if.then24.cleanup32_crit_edge, %lor.lhs.false.cleanup32_crit_edge, %if.end.cleanup32_crit_edge
  %retval.1 = phi ptr [ %skb.addr.1, %if.end29 ], [ %skb, %lor.lhs.false.cleanup32_crit_edge ], [ %skb, %if.end.cleanup32_crit_edge ], [ %skb, %if.then24.cleanup32_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlink_has_listeners(ptr nocapture noundef readonly %sk, i32 noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i40 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i40)
  %tobool.not = icmp eq i32 %and.i40, 0
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !304

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netlink/af_netlink.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1367, 0\0A.popsection", ""() #22, !srcloc !320
  unreachable

do.end9:                                          ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !312
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #22
  %call.i = tail call zeroext i1 @rcu_is_watching() #22
  br i1 %call.i, label %do.end9.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end9.rcu_read_lock.exit_crit_edge:             ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end9
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #22
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end9.rcu_read_lock.exit_crit_edge
  %6 = load ptr, ptr @nl_table, align 4
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %7 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %sk_protocol, align 4
  %idxprom = zext i16 %8 to i32
  %listeners13 = getelementptr %struct.netlink_table, ptr %6, i32 %idxprom, i32 2
  %9 = ptrtoint ptr %listeners13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %listeners13, align 4
  %call15 = tail call i32 @rcu_read_lock_held() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end24_crit_edge

rcu_read_lock.exit.do.end24_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end24

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call17 = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true.do.end24_crit_edge, label %land.lhs.true19

land.lhs.true.do.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end24

land.lhs.true19:                                  ; preds = %land.lhs.true
  %.b39 = load i1, ptr @netlink_has_listeners.__warned, align 1
  br i1 %.b39, label %land.lhs.true19.do.end24_crit_edge, label %if.then21

land.lhs.true19.do.end24_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end24

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @netlink_has_listeners.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1370, ptr noundef nonnull @.str.4) #22
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %land.lhs.true19.do.end24_crit_edge, %land.lhs.true.do.end24_crit_edge, %rcu_read_lock.exit.do.end24_crit_edge
  %tobool26.not = icmp eq ptr %10, null
  br i1 %tobool26.not, label %do.end24.if.end34_crit_edge, label %land.lhs.true27

do.end24.if.end34_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end34

land.lhs.true27:                                  ; preds = %do.end24
  %sub = add i32 %group, -1
  %11 = load ptr, ptr @nl_table, align 4
  %12 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sk_protocol, align 4
  %idxprom29 = zext i16 %13 to i32
  %groups = getelementptr %struct.netlink_table, ptr %11, i32 %idxprom29, i32 4
  %14 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %groups, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %15)
  %cmp = icmp ult i32 %sub, %15
  br i1 %cmp, label %if.then31, label %land.lhs.true27.if.end34_crit_edge

land.lhs.true27.if.end34_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end34

if.then31:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #24
  %masks = getelementptr inbounds %struct.listeners, ptr %10, i32 0, i32 1
  %div3.i = lshr i32 %sub, 5
  %arrayidx.i = getelementptr i32, ptr %masks, i32 %div3.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %sub, 31
  %shr.i = lshr i32 %17, %and.i
  %and1.i = and i32 %shr.i, 1
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %land.lhs.true27.if.end34_crit_edge, %do.end24.if.end34_crit_edge
  %res.0 = phi i32 [ %and1.i, %if.then31 ], [ 0, %land.lhs.true27.if.end34_crit_edge ], [ 0, %do.end24.if.end34_crit_edge ]
  %call.i41 = tail call zeroext i1 @rcu_is_watching() #22
  br i1 %call.i41, label %if.end34.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i44

if.end34.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_unlock.exit

land.lhs.true.i44:                                ; preds = %if.end34
  %call1.i42 = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i42)
  %tobool.not.i43 = icmp eq i32 %call1.i42, 0
  br i1 %tobool.not.i43, label %land.lhs.true.i44.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i46

land.lhs.true.i44.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i44
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_unlock.exit

land.lhs.true2.i46:                               ; preds = %land.lhs.true.i44
  %.b4.i45 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i45, label %land.lhs.true2.i46.rcu_read_unlock.exit_crit_edge, label %if.then.i47

land.lhs.true2.i46.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i46
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_unlock.exit

if.then.i47:                                      ; preds = %land.lhs.true2.i46
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #22
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i47, %land.lhs.true2.i46.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i44.rcu_read_unlock.exit_crit_edge, %if.end34.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !313
  %18 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i.i.i48 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i48 to ptr
  %preempt_count.i.i.i.i49 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i49 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i49, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i49, align 4
  tail call void @rcu_read_unlock_strict() #22
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #22
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @netlink_strict_get_check(ptr nocapture noundef readonly %skb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 8
  %flags = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlink_broadcast(ptr noundef %ssk, ptr noundef %skb, i32 noundef %portid, i32 noundef %group, i32 noundef %allocation) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %ssk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %call1 = tail call fastcc ptr @netlink_trim(ptr noundef %skb, i32 noundef %allocation)
  %call.i = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @nl_table_lock) #22
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nl_table_users, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr nonnull @nl_table_users, i32 1, i32 3, i32 1) #22
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nl_table_users, ptr nonnull @nl_table_users, i32 1, ptr nonnull elementtype(i32) @nl_table_users) #22, !srcloc !316
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @nl_table_lock, i32 noundef %call.i) #22
  %3 = load ptr, ptr @nl_table, align 4
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 46
  %4 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sk_protocol, align 4
  %idxprom = zext i16 %5 to i32
  %mc_list = getelementptr %struct.netlink_table, ptr %3, i32 %idxprom, i32 1
  %6 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mc_list, align 4
  %tobool.not = icmp eq ptr %7, null
  %add.ptr = getelementptr i8, ptr %7, i32 -24
  %tobool8.not99119 = icmp eq ptr %add.ptr, null
  %tobool8.not99 = or i1 %tobool.not, %tobool8.not99119
  br i1 %tobool8.not99, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sub.i = add i32 %group, -1
  %div3.i.i = lshr i32 %sub.i, 5
  %and.i.i = and i32 %sub.i, 31
  %8 = shl nuw i32 1, %and.i.i
  %user_ns.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 11
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 21
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 4, i32 0, i32 1
  %9 = getelementptr inbounds %struct.sk_buff, ptr %call1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %do_one_broadcast.exit.for.body_crit_edge, %for.body.lr.ph
  %sk.0108 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr15, %do_one_broadcast.exit.for.body_crit_edge ]
  %info.sroa.32.0106 = phi ptr [ null, %for.body.lr.ph ], [ %info.sroa.32.4, %do_one_broadcast.exit.for.body_crit_edge ]
  %info.sroa.24.0105 = phi i32 [ 0, %for.body.lr.ph ], [ %info.sroa.24.2, %do_one_broadcast.exit.for.body_crit_edge ]
  %info.sroa.20.0104 = phi i32 [ 0, %for.body.lr.ph ], [ %info.sroa.20.2, %do_one_broadcast.exit.for.body_crit_edge ]
  %info.sroa.16.0102 = phi i32 [ 0, %for.body.lr.ph ], [ %info.sroa.16.2, %do_one_broadcast.exit.for.body_crit_edge ]
  %info.sroa.13.0100 = phi i32 [ 0, %for.body.lr.ph ], [ %info.sroa.13.2, %do_one_broadcast.exit.for.body_crit_edge ]
  %cmp.i = icmp eq ptr %sk.0108, %ssk
  br i1 %cmp.i, label %for.body.do_one_broadcast.exit_crit_edge, label %if.end.i

for.body.do_one_broadcast.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %do_one_broadcast.exit

if.end.i:                                         ; preds = %for.body
  %portid.i = getelementptr inbounds %struct.netlink_sock, ptr %sk.0108, i32 0, i32 1
  %10 = ptrtoint ptr %portid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %portid.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %portid)
  %cmp2.i = icmp eq i32 %11, %portid
  br i1 %cmp2.i, label %if.end.i.do_one_broadcast.exit_crit_edge, label %lor.lhs.false.i

if.end.i.do_one_broadcast.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do_one_broadcast.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %ngroups.i = getelementptr inbounds %struct.netlink_sock, ptr %sk.0108, i32 0, i32 6
  %12 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ngroups.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %13)
  %cmp3.not.i = icmp ult i32 %sub.i, %13
  br i1 %cmp3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.do_one_broadcast.exit_crit_edge

lor.lhs.false.i.do_one_broadcast.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do_one_broadcast.exit

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %groups.i = getelementptr inbounds %struct.netlink_sock, ptr %sk.0108, i32 0, i32 7
  %14 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %groups.i, align 8
  %arrayidx.i.i = getelementptr i32, ptr %15, i32 %div3.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.i.i, align 4
  %18 = and i32 %17, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %lor.lhs.false4.i.do_one_broadcast.exit_crit_edge, label %if.end9.i

lor.lhs.false4.i.do_one_broadcast.exit_crit_edge: ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do_one_broadcast.exit

if.end9.i:                                        ; preds = %lor.lhs.false4.i
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk.0108, i32 0, i32 9
  %19 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %skc_net.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %20, %1
  br i1 %cmp.i.not.i, label %if.end9.i.if.end26.i_crit_edge, label %if.then13.i

if.end9.i.if.end26.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end26.i

if.then13.i:                                      ; preds = %if.end9.i
  %flags.i = getelementptr inbounds %struct.netlink_sock, ptr %sk.0108, i32 0, i32 4
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool14.not.i, label %if.then13.i.do_one_broadcast.exit_crit_edge, label %if.end16.i

if.then13.i.do_one_broadcast.exit_crit_edge:      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do_one_broadcast.exit

if.end16.i:                                       ; preds = %if.then13.i
  %call19.i = tail call zeroext i1 @peernet_has_id(ptr noundef %20, ptr noundef %1) #22
  br i1 %call19.i, label %if.end21.i, label %if.end16.i.do_one_broadcast.exit_crit_edge

if.end16.i.do_one_broadcast.exit_crit_edge:       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do_one_broadcast.exit

if.end21.i:                                       ; preds = %if.end16.i
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %sk.0108, i32 0, i32 71
  %23 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sk_socket.i, align 8
  %file.i = getelementptr inbounds %struct.socket, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %file.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %file.i, align 4
  %27 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %user_ns.i, align 4
  %call23.i = tail call zeroext i1 @file_ns_capable(ptr noundef %26, ptr noundef %28, i32 noundef 11) #22
  br i1 %call23.i, label %if.end21.i.if.end26.i_crit_edge, label %if.end21.i.do_one_broadcast.exit_crit_edge

if.end21.i.do_one_broadcast.exit_crit_edge:       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do_one_broadcast.exit

if.end21.i.if.end26.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end21.i.if.end26.i_crit_edge, %if.end9.i.if.end26.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %info.sroa.13.0100)
  %tobool27.not.i = icmp eq i32 %info.sroa.13.0100, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.end26.i
  %flags.i.i = getelementptr inbounds %struct.netlink_sock, ptr %sk.0108, i32 0, i32 4
  %29 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i.i, align 4
  %and.i136.i = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i136.i)
  %tobool.not.i.i = icmp eq i32 %and.i136.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then28.i.netlink_overrun.exit.i_crit_edge

if.then28.i.netlink_overrun.exit.i_crit_edge:     ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_overrun.exit.i

if.then.i.i:                                      ; preds = %if.then28.i
  %state.i.i = getelementptr inbounds %struct.netlink_sock, ptr %sk.0108, i32 0, i32 8
  %call2.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %if.then.i.i.netlink_overrun.exit.i_crit_edge

if.then.i.i.netlink_overrun.exit.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_overrun.exit.i

if.then4.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %sk_err.i.i = getelementptr inbounds %struct.sock, ptr %sk.0108, i32 0, i32 51
  %31 = ptrtoint ptr %sk_err.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 105, ptr %sk_err.i.i, align 4
  tail call void @sk_error_report(ptr noundef nonnull %sk.0108) #22
  br label %netlink_overrun.exit.i

netlink_overrun.exit.i:                           ; preds = %if.then4.i.i, %if.then.i.i.netlink_overrun.exit.i_crit_edge, %if.then28.i.netlink_overrun.exit.i_crit_edge
  %sk_drops.i.i = getelementptr inbounds %struct.sock, ptr %sk.0108, i32 0, i32 5
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_drops.i.i, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr %sk_drops.i.i, i32 1, i32 3, i32 1) #22
  %32 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_drops.i.i, ptr %sk_drops.i.i, i32 1, ptr elementtype(i32) %sk_drops.i.i) #22, !srcloc !316
  br label %do_one_broadcast.exit

if.end29.i:                                       ; preds = %if.end26.i
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %sk.0108, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #22
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #22, !srcloc !315
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end29.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !304

if.end29.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end29.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %34 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %.not.i.i.i.i.i = icmp sgt i32 %34, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !303

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end29.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end29.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #22
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge
  %cmp30.i = icmp eq ptr %info.sroa.32.0106, null
  br i1 %cmp30.i, label %if.then31.i, label %sock_hold.exit.i.if.end53.i_crit_edge

sock_hold.exit.i.if.end53.i_crit_edge:            ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end53.i

if.then31.i:                                      ; preds = %sock_hold.exit.i
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #22
  %35 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp.i137.not.i = icmp eq i32 %36, 1
  br i1 %cmp.i137.not.i, label %if.else.i, label %if.then34.i

if.then34.i:                                      ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #24
  %call36.i = tail call ptr @skb_clone(ptr noundef %call1, i32 noundef %allocation) #22
  br label %if.end43.i

if.else.i:                                        ; preds = %if.then31.i
  %call.i.i.i.i.i.i75 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr %users.i.i, i32 1, i32 3, i32 1) #22
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i, ptr %users.i.i, i32 1, ptr elementtype(i32) %users.i.i) #22, !srcloc !315
  %asmresult.i.i.i.i.i.i76 = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i76)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i76, 0
  br i1 %tobool1.not.i.i.i.i, label %if.else.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !304

if.else.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.else.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i76, 1
  %38 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i76
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %.not.i.i.i.i77 = icmp sgt i32 %38, -1
  br i1 %.not.i.i.i.i77, label %if.else.i.i.i.i.skb_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !303

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.skb_get.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %skb_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.else.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.else.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i.i, i32 noundef %.sink.i.i.i.i) #22
  br label %skb_get.exit

skb_get.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.skb_get.exit_crit_edge
  %39 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %destructor.i.i, align 4
  %tobool.not.i139.i = icmp eq ptr %40, null
  br i1 %tobool.not.i139.i, label %do.body.i.i, label %if.then.i140.i

if.then.i140.i:                                   ; preds = %skb_get.exit
  call void @__sanitizer_cov_trace_pc() #24
  tail call void %40(ptr noundef %call1) #22
  %41 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %destructor.i.i, align 4
  %42 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %9, align 4
  br label %if.end43.i

do.body.i.i:                                      ; preds = %skb_get.exit
  %43 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %9, align 4
  %tobool3.not.i141.i = icmp eq ptr %44, null
  br i1 %tobool3.not.i141.i, label %do.body.i.i.if.end43.i_crit_edge, label %do.body7.i.i, !prof !303

do.body.i.i.if.end43.i_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end43.i

do.body7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #22, !srcloc !321
  unreachable

if.end43.i:                                       ; preds = %do.body.i.i.if.end43.i_crit_edge, %if.then.i140.i, %if.then34.i
  %info.sroa.32.1 = phi ptr [ %call36.i, %if.then34.i ], [ %call1, %do.body.i.i.if.end43.i_crit_edge ], [ %call1, %if.then.i140.i ]
  %cmp45.i = icmp eq ptr %info.sroa.32.1, null
  br i1 %cmp45.i, label %if.then46.i, label %if.end43.i.if.end53.i_crit_edge

if.end43.i.if.end53.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end53.i

if.then46.i:                                      ; preds = %if.end43.i
  %flags.i63 = getelementptr inbounds %struct.netlink_sock, ptr %sk.0108, i32 0, i32 4
  %45 = ptrtoint ptr %flags.i63 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags.i63, align 4
  %and.i64 = and i32 %46, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i64)
  %tobool.not.i65 = icmp eq i32 %and.i64, 0
  br i1 %tobool.not.i65, label %if.then.i69, label %if.then46.i.netlink_overrun.exit74_crit_edge

if.then46.i.netlink_overrun.exit74_crit_edge:     ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_overrun.exit74

if.then.i69:                                      ; preds = %if.then46.i
  %state.i66 = getelementptr inbounds %struct.netlink_sock, ptr %sk.0108, i32 0, i32 8
  %call2.i67 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i66) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i67)
  %tobool3.not.i68 = icmp eq i32 %call2.i67, 0
  br i1 %tobool3.not.i68, label %if.then4.i71, label %if.then.i69.netlink_overrun.exit74_crit_edge

if.then.i69.netlink_overrun.exit74_crit_edge:     ; preds = %if.then.i69
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_overrun.exit74

if.then4.i71:                                     ; preds = %if.then.i69
  call void @__sanitizer_cov_trace_pc() #24
  %sk_err.i70 = getelementptr inbounds %struct.sock, ptr %sk.0108, i32 0, i32 51
  %47 = ptrtoint ptr %sk_err.i70 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 105, ptr %sk_err.i70, align 4
  tail call void @sk_error_report(ptr noundef nonnull %sk.0108) #22
  br label %netlink_overrun.exit74

netlink_overrun.exit74:                           ; preds = %if.then4.i71, %if.then.i69.netlink_overrun.exit74_crit_edge, %if.then46.i.netlink_overrun.exit74_crit_edge
  %sk_drops.i72 = getelementptr inbounds %struct.sock, ptr %sk.0108, i32 0, i32 5
  %call.i.i.i73 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_drops.i72, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr %sk_drops.i72, i32 1, i32 3, i32 1) #22
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_drops.i72, ptr %sk_drops.i72, i32 1, ptr elementtype(i32) %sk_drops.i72) #22, !srcloc !316
  %49 = ptrtoint ptr %flags.i63 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags.i63, align 4
  %and49.i = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  %spec.select92 = select i1 %tobool50.not.i, i32 %info.sroa.16.0102, i32 1
  br label %out.i

if.end53.i:                                       ; preds = %if.end43.i.if.end53.i_crit_edge, %sock_hold.exit.i.if.end53.i_crit_edge
  %info.sroa.32.2 = phi ptr [ %info.sroa.32.1, %if.end43.i.if.end53.i_crit_edge ], [ %info.sroa.32.0106, %sock_hold.exit.i.if.end53.i_crit_edge ]
  %call.i.i = tail call i32 @sk_filter_trim_cap(ptr noundef nonnull %sk.0108, ptr noundef nonnull %info.sroa.32.2, i32 noundef 1) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool56.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool56.not.i, label %if.end60.i, label %if.then57.i

if.then57.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @kfree_skb_reason(ptr noundef nonnull %info.sroa.32.2, i32 noundef 0) #22
  br label %out.i

if.end60.i:                                       ; preds = %if.end53.i
  %51 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %skc_net.i.i, align 4
  %call63.i = tail call i32 @peernet2id(ptr noundef %52, ptr noundef %1) #22
  %nsid.i = getelementptr inbounds %struct.sk_buff, ptr %info.sroa.32.2, i32 0, i32 3, i32 32
  %53 = ptrtoint ptr %nsid.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call63.i, ptr %nsid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call63.i)
  %cmp68.not.i = icmp eq i32 %call63.i, -1
  br i1 %cmp68.not.i, label %if.end60.i.if.end72.i_crit_edge, label %if.then69.i

if.end60.i.if.end72.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end72.i

if.then69.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #24
  %nsid_is_set.i = getelementptr inbounds %struct.sk_buff, ptr %info.sroa.32.2, i32 0, i32 3, i32 28
  %54 = ptrtoint ptr %nsid_is_set.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %nsid_is_set.i, align 4
  br label %if.end72.i

if.end72.i:                                       ; preds = %if.then69.i, %if.end60.i.if.end72.i_crit_edge
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %sk.0108, i32 0, i32 9
  %call.i.i.i57 = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #22
  %55 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %sk_backlog.i, align 4
  %sk_rcvbuf.i = getelementptr inbounds %struct.sock, ptr %sk.0108, i32 0, i32 15
  %57 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sk_rcvbuf.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp.not.i = icmp sgt i32 %56, %58
  br i1 %cmp.not.i, label %if.end72.i.if.then76.i_crit_edge, label %land.lhs.true.i

if.end72.i.if.then76.i_crit_edge:                 ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then76.i

land.lhs.true.i:                                  ; preds = %if.end72.i
  %state.i58 = getelementptr inbounds %struct.netlink_sock, ptr %sk.0108, i32 0, i32 8
  %59 = ptrtoint ptr %state.i58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %state.i58, align 4
  %and1.i.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i59 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i59, label %if.then.i60, label %land.lhs.true.i.if.then76.i_crit_edge

land.lhs.true.i.if.then76.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then76.i

if.then.i60:                                      ; preds = %land.lhs.true.i
  %61 = getelementptr inbounds %struct.sk_buff, ptr %info.sroa.32.2, i32 0, i32 1
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %cmp.not.i.i = icmp eq ptr %63, null
  br i1 %cmp.not.i.i, label %if.then.i60.if.end.i.i_crit_edge, label %do.end.i.i, !prof !303

if.then.i60.if.end.i.i_crit_edge:                 ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i60
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 387, i32 noundef 9, ptr noundef null) #22
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i60.if.end.i.i_crit_edge
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %sk.0108, ptr %61, align 4
  %destructor.i.i61 = getelementptr inbounds %struct.sk_buff, ptr %info.sroa.32.2, i32 0, i32 4, i32 0, i32 1
  %65 = ptrtoint ptr %destructor.i.i61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @netlink_skb_destructor, ptr %destructor.i.i61, align 4
  %truesize.i.i = getelementptr inbounds %struct.sk_buff, ptr %info.sroa.32.2, i32 0, i32 20
  %66 = ptrtoint ptr %truesize.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %truesize.i.i, align 8
  %call.i.i.i.i62 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i, i32 1, i32 3, i32 1) #22
  %68 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i, ptr %sk_backlog.i, i32 %67, ptr elementtype(i32) %sk_backlog.i) #22, !srcloc !316
  %skc_prot.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk.0108, i32 0, i32 8
  %69 = ptrtoint ptr %skc_prot.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %skc_prot.i.i.i.i, align 8
  %memory_allocated.i.i.i.i = getelementptr inbounds %struct.proto, ptr %70, i32 0, i32 32
  %71 = ptrtoint ptr %memory_allocated.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %memory_allocated.i.i.i.i, align 4
  %tobool.i.not.i.i.i = icmp eq ptr %72, null
  br i1 %tobool.i.not.i.i.i, label %if.end.i.i.netlink_broadcast_deliver.exit_crit_edge, label %if.end.i.i.i

if.end.i.i.netlink_broadcast_deliver.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_broadcast_deliver.exit

if.end.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %73 = ptrtoint ptr %truesize.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %truesize.i.i, align 8
  %sk_forward_alloc.i.i.i = getelementptr inbounds %struct.sock, ptr %sk.0108, i32 0, i32 11
  %75 = ptrtoint ptr %sk_forward_alloc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %sk_forward_alloc.i.i.i, align 8
  %sub.i.i.i = sub i32 %76, %74
  store i32 %sub.i.i.i, ptr %sk_forward_alloc.i.i.i, align 8
  br label %netlink_broadcast_deliver.exit

netlink_broadcast_deliver.exit:                   ; preds = %if.end.i.i.i, %if.end.i.i.netlink_broadcast_deliver.exit_crit_edge
  %77 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %skc_net.i.i, align 4
  tail call fastcc void @netlink_deliver_tap(ptr noundef %78, ptr noundef nonnull %info.sroa.32.2) #22
  %sk_receive_queue.i.i = getelementptr inbounds %struct.sock, ptr %sk.0108, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %sk_receive_queue.i.i, ptr noundef nonnull %info.sroa.32.2) #22
  %sk_data_ready.i.i = getelementptr inbounds %struct.sock, ptr %sk.0108, i32 0, i32 77
  %79 = ptrtoint ptr %sk_data_ready.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %sk_data_ready.i.i, align 8
  tail call void %80(ptr noundef nonnull %sk.0108) #22
  %call.i.i16.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #22
  %81 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %sk_backlog.i, align 4
  %83 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %sk_rcvbuf.i, align 8
  %shr.i = ashr i32 %84, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %shr.i)
  %cmp8.i = icmp sgt i32 %82, %shr.i
  %conv.i = zext i1 %cmp8.i to i32
  %or.i = or i32 %info.sroa.20.0104, %conv.i
  br label %out.i

if.then76.i:                                      ; preds = %land.lhs.true.i.if.then76.i_crit_edge, %if.end72.i.if.then76.i_crit_edge
  %flags.i52 = getelementptr inbounds %struct.netlink_sock, ptr %sk.0108, i32 0, i32 4
  %85 = ptrtoint ptr %flags.i52 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %flags.i52, align 4
  %and.i53 = and i32 %86, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53)
  %tobool.not.i54 = icmp eq i32 %and.i53, 0
  br i1 %tobool.not.i54, label %if.then.i55, label %if.then76.i.netlink_overrun.exit_crit_edge

if.then76.i.netlink_overrun.exit_crit_edge:       ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_overrun.exit

if.then.i55:                                      ; preds = %if.then76.i
  %state.i = getelementptr inbounds %struct.netlink_sock, ptr %sk.0108, i32 0, i32 8
  %call2.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.then.i55.netlink_overrun.exit_crit_edge

if.then.i55.netlink_overrun.exit_crit_edge:       ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_overrun.exit

if.then4.i:                                       ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #24
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %sk.0108, i32 0, i32 51
  %87 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 105, ptr %sk_err.i, align 4
  tail call void @sk_error_report(ptr noundef nonnull %sk.0108) #22
  br label %netlink_overrun.exit

netlink_overrun.exit:                             ; preds = %if.then4.i, %if.then.i55.netlink_overrun.exit_crit_edge, %if.then76.i.netlink_overrun.exit_crit_edge
  %sk_drops.i = getelementptr inbounds %struct.sock, ptr %sk.0108, i32 0, i32 5
  %call.i.i.i56 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_drops.i, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr %sk_drops.i, i32 1, i32 3, i32 1) #22
  %88 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_drops.i, ptr %sk_drops.i, i32 1, ptr elementtype(i32) %sk_drops.i) #22, !srcloc !316
  %89 = ptrtoint ptr %flags.i52 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %flags.i52, align 4
  %and78.i = and i32 %90, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.i)
  %tobool79.not.i = icmp eq i32 %and78.i, 0
  %spec.select93 = select i1 %tobool79.not.i, i32 %info.sroa.16.0102, i32 1
  br label %out.i

out.i:                                            ; preds = %netlink_overrun.exit, %netlink_broadcast_deliver.exit, %if.then57.i, %netlink_overrun.exit74
  %info.sroa.13.1 = phi i32 [ 0, %netlink_broadcast_deliver.exit ], [ 0, %if.then57.i ], [ 1, %netlink_overrun.exit74 ], [ 0, %netlink_overrun.exit ]
  %info.sroa.16.1 = phi i32 [ %info.sroa.16.0102, %netlink_broadcast_deliver.exit ], [ %info.sroa.16.0102, %if.then57.i ], [ %spec.select92, %netlink_overrun.exit74 ], [ %spec.select93, %netlink_overrun.exit ]
  %info.sroa.20.1 = phi i32 [ %or.i, %netlink_broadcast_deliver.exit ], [ %info.sroa.20.0104, %if.then57.i ], [ %info.sroa.20.0104, %netlink_overrun.exit74 ], [ %info.sroa.20.0104, %netlink_overrun.exit ]
  %info.sroa.24.1 = phi i32 [ 1, %netlink_broadcast_deliver.exit ], [ %info.sroa.24.0105, %if.then57.i ], [ %info.sroa.24.0105, %netlink_overrun.exit74 ], [ %info.sroa.24.0105, %netlink_overrun.exit ]
  %info.sroa.32.3 = phi ptr [ null, %netlink_broadcast_deliver.exit ], [ null, %if.then57.i ], [ null, %netlink_overrun.exit74 ], [ %info.sroa.32.2, %netlink_overrun.exit ]
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !317
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #22
  %91 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #22, !srcloc !318
  %asmresult.i.i.i.i.i.i.i49 = extractvalue { i32, i32, i32 } %91, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i49)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i49, 1
  br i1 %cmp.i.i.i.i, label %if.then.i50, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i49)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i49, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.do_one_broadcast.exit_crit_edge, label %if.then10.i.i.i.i, !prof !303

if.end5.i.i.i.i.do_one_broadcast.exit_crit_edge:  ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do_one_broadcast.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #22
  br label %do_one_broadcast.exit

if.then.i50:                                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !319
  tail call void @sk_free(ptr noundef nonnull %sk.0108) #22
  br label %do_one_broadcast.exit

do_one_broadcast.exit:                            ; preds = %if.then.i50, %if.then10.i.i.i.i, %if.end5.i.i.i.i.do_one_broadcast.exit_crit_edge, %netlink_overrun.exit.i, %if.end21.i.do_one_broadcast.exit_crit_edge, %if.end16.i.do_one_broadcast.exit_crit_edge, %if.then13.i.do_one_broadcast.exit_crit_edge, %lor.lhs.false4.i.do_one_broadcast.exit_crit_edge, %lor.lhs.false.i.do_one_broadcast.exit_crit_edge, %if.end.i.do_one_broadcast.exit_crit_edge, %for.body.do_one_broadcast.exit_crit_edge
  %info.sroa.13.2 = phi i32 [ %info.sroa.13.0100, %for.body.do_one_broadcast.exit_crit_edge ], [ %info.sroa.13.0100, %if.end.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.13.0100, %lor.lhs.false4.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.13.0100, %netlink_overrun.exit.i ], [ %info.sroa.13.0100, %if.then13.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.13.0100, %if.end21.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.13.0100, %if.end16.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.13.0100, %lor.lhs.false.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.13.1, %if.end5.i.i.i.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.13.1, %if.then10.i.i.i.i ], [ %info.sroa.13.1, %if.then.i50 ]
  %info.sroa.16.2 = phi i32 [ %info.sroa.16.0102, %for.body.do_one_broadcast.exit_crit_edge ], [ %info.sroa.16.0102, %if.end.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.16.0102, %lor.lhs.false4.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.16.0102, %netlink_overrun.exit.i ], [ %info.sroa.16.0102, %if.then13.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.16.0102, %if.end21.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.16.0102, %if.end16.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.16.0102, %lor.lhs.false.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.16.1, %if.end5.i.i.i.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.16.1, %if.then10.i.i.i.i ], [ %info.sroa.16.1, %if.then.i50 ]
  %info.sroa.20.2 = phi i32 [ %info.sroa.20.0104, %for.body.do_one_broadcast.exit_crit_edge ], [ %info.sroa.20.0104, %if.end.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.20.0104, %lor.lhs.false4.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.20.0104, %netlink_overrun.exit.i ], [ %info.sroa.20.0104, %if.then13.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.20.0104, %if.end21.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.20.0104, %if.end16.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.20.0104, %lor.lhs.false.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.20.1, %if.end5.i.i.i.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.20.1, %if.then10.i.i.i.i ], [ %info.sroa.20.1, %if.then.i50 ]
  %info.sroa.24.2 = phi i32 [ %info.sroa.24.0105, %for.body.do_one_broadcast.exit_crit_edge ], [ %info.sroa.24.0105, %if.end.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.24.0105, %lor.lhs.false4.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.24.0105, %netlink_overrun.exit.i ], [ %info.sroa.24.0105, %if.then13.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.24.0105, %if.end21.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.24.0105, %if.end16.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.24.0105, %lor.lhs.false.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.24.1, %if.end5.i.i.i.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.24.1, %if.then10.i.i.i.i ], [ %info.sroa.24.1, %if.then.i50 ]
  %info.sroa.32.4 = phi ptr [ %info.sroa.32.0106, %for.body.do_one_broadcast.exit_crit_edge ], [ %info.sroa.32.0106, %if.end.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.32.0106, %lor.lhs.false4.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.32.0106, %netlink_overrun.exit.i ], [ %info.sroa.32.0106, %if.then13.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.32.0106, %if.end21.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.32.0106, %if.end16.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.32.0106, %lor.lhs.false.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.32.3, %if.end5.i.i.i.i.do_one_broadcast.exit_crit_edge ], [ %info.sroa.32.3, %if.then10.i.i.i.i ], [ %info.sroa.32.3, %if.then.i50 ]
  %92 = getelementptr inbounds %struct.sock_common, ptr %sk.0108, i32 0, i32 7
  %93 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %92, align 8
  %tobool11.not = icmp eq ptr %94, null
  %add.ptr15 = getelementptr i8, ptr %94, i32 -24
  %tobool8.not120 = icmp eq ptr %add.ptr15, null
  %tobool8.not = or i1 %tobool11.not, %tobool8.not120
  br i1 %tobool8.not, label %do_one_broadcast.exit.for.end_crit_edge, label %do_one_broadcast.exit.for.body_crit_edge

do_one_broadcast.exit.for.body_crit_edge:         ; preds = %do_one_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

do_one_broadcast.exit.for.end_crit_edge:          ; preds = %do_one_broadcast.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.end:                                          ; preds = %do_one_broadcast.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %info.sroa.16.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %info.sroa.16.2, %do_one_broadcast.exit.for.end_crit_edge ]
  %info.sroa.20.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %info.sroa.20.2, %do_one_broadcast.exit.for.end_crit_edge ]
  %info.sroa.24.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %info.sroa.24.2, %do_one_broadcast.exit.for.end_crit_edge ]
  %info.sroa.32.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %info.sroa.32.4, %do_one_broadcast.exit.for.end_crit_edge ]
  tail call void @consume_skb(ptr noundef %call1) #22
  %call.i.i.i46 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nl_table_users, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !322
  tail call void @llvm.prefetch.p0(ptr nonnull @nl_table_users, i32 1, i32 3, i32 1) #22
  %95 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nl_table_users, ptr nonnull @nl_table_users, i32 1, ptr nonnull elementtype(i32) @nl_table_users) #22, !srcloc !323
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %95, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !324
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %for.end.netlink_unlock_table.exit_crit_edge

for.end.netlink_unlock_table.exit_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_unlock_table.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @__wake_up(ptr noundef nonnull @nl_table_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #22
  br label %netlink_unlock_table.exit

netlink_unlock_table.exit:                        ; preds = %if.then.i, %for.end.netlink_unlock_table.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %info.sroa.16.0.lcssa)
  %tobool20.not = icmp eq i32 %info.sroa.16.0.lcssa, 0
  br i1 %tobool20.not, label %if.end, label %if.then

if.then:                                          ; preds = %netlink_unlock_table.exit
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @kfree_skb_reason(ptr noundef %info.sroa.32.0.lcssa, i32 noundef 0) #22
  br label %cleanup

if.end:                                           ; preds = %netlink_unlock_table.exit
  tail call void @consume_skb(ptr noundef %info.sroa.32.0.lcssa) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %info.sroa.24.0.lcssa)
  %tobool24.not = icmp eq i32 %info.sroa.24.0.lcssa, 0
  br i1 %tobool24.not, label %if.end.cleanup_crit_edge, label %if.then25

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %info.sroa.20.0.lcssa)
  %tobool27.not = icmp ne i32 %info.sroa.20.0.lcssa, 0
  %and.i48 = and i32 %allocation, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48)
  %tobool.i = icmp ne i32 %and.i48, 0
  %or.cond = and i1 %tobool.i, %tobool27.not
  br i1 %or.cond, label %if.then29, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then29:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @yield() #22
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.then25.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -105, %if.then ], [ 0, %if.then29 ], [ 0, %if.then25.cleanup_crit_edge ], [ -3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netlink_lock_table() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %call = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @nl_table_lock) #22
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nl_table_users, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr nonnull @nl_table_users, i32 1, i32 3, i32 1) #22
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nl_table_users, ptr nonnull @nl_table_users, i32 1, ptr nonnull elementtype(i32) @nl_table_users) #22, !srcloc !316
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @nl_table_lock, i32 noundef %call) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netlink_unlock_table() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nl_table_users, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !322
  tail call void @llvm.prefetch.p0(ptr nonnull @nl_table_users, i32 1, i32 3, i32 1) #22
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nl_table_users, ptr nonnull @nl_table_users, i32 1, ptr nonnull elementtype(i32) @nl_table_users) #22, !srcloc !323
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !324
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @__wake_up(ptr noundef nonnull @nl_table_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @yield() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlink_set_err(ptr noundef %ssk, i32 noundef %portid, i32 noundef %group, i32 noundef %code) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 0, %code
  tail call void @_raw_read_lock(ptr noundef nonnull @nl_table_lock) #22
  %0 = load ptr, ptr @nl_table, align 4
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 46
  %1 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %sk_protocol, align 4
  %idxprom = zext i16 %2 to i32
  %mc_list = getelementptr %struct.netlink_table, ptr %0, i32 %idxprom, i32 1
  %3 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mc_list, align 4
  %tobool.not = icmp eq ptr %4, null
  %add.ptr = getelementptr i8, ptr %4, i32 -24
  %tobool5.not2631 = icmp eq ptr %add.ptr, null
  %tobool5.not26 = or i1 %tobool.not, %tobool5.not2631
  br i1 %tobool5.not26, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %skc_net.i35.i = getelementptr inbounds %struct.sock_common, ptr %ssk, i32 0, i32 9
  %sub.i = add i32 %group, -1
  %div3.i.i = lshr i32 %sub.i, 5
  %and.i.i = and i32 %sub.i, 31
  %5 = shl nuw i32 1, %and.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -105, i32 %code)
  %cmp17.i = icmp eq i32 %code, -105
  br label %for.body

for.body:                                         ; preds = %do_one_set_err.exit.for.body_crit_edge, %for.body.lr.ph
  %sk.028 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr12, %do_one_set_err.exit.for.body_crit_edge ]
  %ret.027 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %do_one_set_err.exit.for.body_crit_edge ]
  %cmp.i = icmp eq ptr %sk.028, %ssk
  br i1 %cmp.i, label %for.body.do_one_set_err.exit_crit_edge, label %if.end.i

for.body.do_one_set_err.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %do_one_set_err.exit

if.end.i:                                         ; preds = %for.body
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk.028, i32 0, i32 9
  %6 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_net.i.i, align 4
  %8 = ptrtoint ptr %skc_net.i35.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skc_net.i35.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %9
  br i1 %cmp.i.not.i, label %if.end6.i, label %if.end.i.do_one_set_err.exit_crit_edge

if.end.i.do_one_set_err.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do_one_set_err.exit

if.end6.i:                                        ; preds = %if.end.i
  %portid.i = getelementptr inbounds %struct.netlink_sock, ptr %sk.028, i32 0, i32 1
  %10 = ptrtoint ptr %portid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %portid.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %portid)
  %cmp8.i = icmp eq i32 %11, %portid
  br i1 %cmp8.i, label %if.end6.i.do_one_set_err.exit_crit_edge, label %lor.lhs.false.i

if.end6.i.do_one_set_err.exit_crit_edge:          ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do_one_set_err.exit

lor.lhs.false.i:                                  ; preds = %if.end6.i
  %ngroups.i = getelementptr inbounds %struct.netlink_sock, ptr %sk.028, i32 0, i32 6
  %12 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ngroups.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %13)
  %cmp9.not.i = icmp ult i32 %sub.i, %13
  br i1 %cmp9.not.i, label %lor.lhs.false10.i, label %lor.lhs.false.i.do_one_set_err.exit_crit_edge

lor.lhs.false.i.do_one_set_err.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do_one_set_err.exit

lor.lhs.false10.i:                                ; preds = %lor.lhs.false.i
  %groups.i = getelementptr inbounds %struct.netlink_sock, ptr %sk.028, i32 0, i32 7
  %14 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %groups.i, align 8
  %arrayidx.i.i = getelementptr i32, ptr %15, i32 %div3.i.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.i.i, align 4
  %18 = and i32 %17, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool14.not.i = icmp eq i32 %18, 0
  br i1 %tobool14.not.i, label %lor.lhs.false10.i.do_one_set_err.exit_crit_edge, label %if.end16.i

lor.lhs.false10.i.do_one_set_err.exit_crit_edge:  ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do_one_set_err.exit

if.end16.i:                                       ; preds = %lor.lhs.false10.i
  br i1 %cmp17.i, label %land.lhs.true.i, label %if.end16.i.if.end20.i_crit_edge

if.end16.i.if.end20.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end20.i

land.lhs.true.i:                                  ; preds = %if.end16.i
  %flags.i = getelementptr inbounds %struct.netlink_sock, ptr %sk.028, i32 0, i32 4
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool18.not.i, label %land.lhs.true.i.if.end20.i_crit_edge, label %land.lhs.true.i.do_one_set_err.exit_crit_edge

land.lhs.true.i.do_one_set_err.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do_one_set_err.exit

land.lhs.true.i.if.end20.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end20.i

if.end20.i:                                       ; preds = %land.lhs.true.i.if.end20.i_crit_edge, %if.end16.i.if.end20.i_crit_edge
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %sk.028, i32 0, i32 51
  %21 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub, ptr %sk_err.i, align 4
  tail call void @sk_error_report(ptr noundef nonnull %sk.028) #22
  br label %do_one_set_err.exit

do_one_set_err.exit:                              ; preds = %if.end20.i, %land.lhs.true.i.do_one_set_err.exit_crit_edge, %lor.lhs.false10.i.do_one_set_err.exit_crit_edge, %lor.lhs.false.i.do_one_set_err.exit_crit_edge, %if.end6.i.do_one_set_err.exit_crit_edge, %if.end.i.do_one_set_err.exit_crit_edge, %for.body.do_one_set_err.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %for.body.do_one_set_err.exit_crit_edge ], [ 0, %if.end6.i.do_one_set_err.exit_crit_edge ], [ 0, %lor.lhs.false.i.do_one_set_err.exit_crit_edge ], [ 0, %if.end20.i ], [ 0, %lor.lhs.false10.i.do_one_set_err.exit_crit_edge ], [ 0, %if.end.i.do_one_set_err.exit_crit_edge ], [ 1, %land.lhs.true.i.do_one_set_err.exit_crit_edge ]
  %add = add i32 %ret.0.i, %ret.027
  %22 = getelementptr inbounds %struct.sock_common, ptr %sk.028, i32 0, i32 7
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %tobool8.not = icmp eq ptr %24, null
  %add.ptr12 = getelementptr i8, ptr %24, i32 -24
  %tobool5.not32 = icmp eq ptr %add.ptr12, null
  %tobool5.not = or i1 %tobool8.not, %tobool5.not32
  br i1 %tobool5.not, label %do_one_set_err.exit.for.end_crit_edge, label %do_one_set_err.exit.for.body_crit_edge

do_one_set_err.exit.for.body_crit_edge:           ; preds = %do_one_set_err.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

do_one_set_err.exit.for.end_crit_edge:            ; preds = %do_one_set_err.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.end:                                          ; preds = %do_one_set_err.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %do_one_set_err.exit.for.end_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @nl_table_lock) #22
  ret i32 %ret.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__netlink_kernel_create(ptr noundef %net, i32 noundef %unit, ptr noundef %module, ptr noundef readonly %cfg) #0 align 64 {
entry:
  %sock = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sock) #22
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sock, align 4, !annotation !305
  %tobool.not = icmp eq ptr %cfg, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %cb_mutex1 = getelementptr inbounds %struct.netlink_kernel_cfg, ptr %cfg, i32 0, i32 3
  %1 = ptrtoint ptr %cb_mutex1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cb_mutex1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %2, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  %3 = load ptr, ptr @nl_table, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %do.body6, label %do.end11, !prof !304

do.body6:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netlink/af_netlink.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2037, 0\0A.popsection", ""() #22, !srcloc !325
  unreachable

do.end11:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %unit)
  %4 = icmp ugt i32 %unit, 31
  br i1 %4, label %do.end11.cleanup_crit_edge, label %if.end14

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end14:                                         ; preds = %do.end11
  %call = call i32 @sock_create_lite(i32 noundef 16, i32 noundef 2, i32 noundef %unit, ptr noundef nonnull %sock) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool15.not = icmp eq i32 %call, 0
  br i1 %tobool15.not, label %if.end17, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %5 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sock, align 4
  %call18 = call fastcc i32 @__netlink_create(ptr noundef %net, ptr noundef %6, ptr noundef %cond, i32 noundef %unit, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  %7 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sock, align 4
  br i1 %cmp19, label %out_sock_release_nosk, label %if.end21

if.end21:                                         ; preds = %if.end17
  %sk22 = getelementptr inbounds %struct.socket, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %sk22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk22, align 16
  br i1 %tobool.not, label %if.end21.if.end8.i.i_crit_edge, label %lor.lhs.false24

if.end21.if.end8.i.i_crit_edge:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end8.i.i

lor.lhs.false24:                                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #24
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cfg, align 4
  %13 = call i32 @llvm.umax.i32(i32 %12, i32 32)
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %lor.lhs.false24, %if.end21.if.end8.i.i_crit_edge
  %groups.0 = phi i32 [ 32, %if.end21.if.end8.i.i_crit_edge ], [ %13, %lor.lhs.false24 ]
  %add = add i32 %groups.0, 31
  %and = lshr i32 %add, 3
  %div162 = and i32 %and, 536870908
  %add30 = add nuw nsw i32 %div162, 8
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add30, i32 noundef 3520) #28
  %tobool32.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool32.not, label %if.end8.i.i.out_sock_release_crit_edge, label %if.end34

if.end8.i.i.out_sock_release_crit_edge:           ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %out_sock_release

if.end34:                                         ; preds = %if.end8.i.i
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 77
  %14 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @netlink_data_ready, ptr %sk_data_ready, align 8
  br i1 %tobool.not, label %if.end34.if.end40_crit_edge, label %land.lhs.true

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end40

land.lhs.true:                                    ; preds = %if.end34
  %input = getelementptr inbounds %struct.netlink_kernel_cfg, ptr %cfg, i32 0, i32 2
  %15 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %input, align 4
  %tobool36.not = icmp eq ptr %16, null
  br i1 %tobool36.not, label %land.lhs.true.if.end40_crit_edge, label %if.then37

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end40

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  %netlink_rcv = getelementptr inbounds %struct.netlink_sock, ptr %10, i32 0, i32 17
  %17 = ptrtoint ptr %netlink_rcv to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %netlink_rcv, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %land.lhs.true.if.end40_crit_edge, %if.end34.if.end40_crit_edge
  %call41 = call fastcc i32 @netlink_insert(ptr noundef %10, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.end40.out_sock_release_crit_edge

if.end40.out_sock_release_crit_edge:              ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #24
  br label %out_sock_release

if.end44:                                         ; preds = %if.end40
  %flags = getelementptr inbounds %struct.netlink_sock, ptr %10, i32 0, i32 4
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %or = or i32 %19, 1
  store i32 %or, ptr %flags, align 4
  call void @netlink_table_grab()
  %20 = load ptr, ptr @nl_table, align 4
  %registered = getelementptr %struct.netlink_table, ptr %20, i32 %unit, i32 10
  %21 = ptrtoint ptr %registered to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %registered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool46.not = icmp eq i32 %22, 0
  br i1 %tobool46.not, label %if.then47, label %if.else114

if.then47:                                        ; preds = %if.end44
  %groups49 = getelementptr %struct.netlink_table, ptr %20, i32 %unit, i32 4
  %23 = ptrtoint ptr %groups49 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %groups.0, ptr %groups49, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !326
  %24 = load ptr, ptr @nl_table, align 4
  %listeners80 = getelementptr %struct.netlink_table, ptr %24, i32 %unit, i32 2
  %25 = ptrtoint ptr %listeners80 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %call9.i.i, ptr %listeners80, align 4
  %26 = load ptr, ptr @nl_table, align 4
  %cb_mutex93 = getelementptr %struct.netlink_table, ptr %26, i32 %unit, i32 5
  %27 = ptrtoint ptr %cb_mutex93 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %cond, ptr %cb_mutex93, align 4
  %28 = load ptr, ptr @nl_table, align 4
  %module95 = getelementptr %struct.netlink_table, ptr %28, i32 %unit, i32 6
  %29 = ptrtoint ptr %module95 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %module, ptr %module95, align 4
  br i1 %tobool.not, label %if.then47.if.end111_crit_edge, label %if.then97

if.then47.if.end111_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end111

if.then97:                                        ; preds = %if.then47
  %bind = getelementptr inbounds %struct.netlink_kernel_cfg, ptr %cfg, i32 0, i32 4
  %30 = ptrtoint ptr %bind to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bind, align 4
  %32 = load ptr, ptr @nl_table, align 4
  %bind99 = getelementptr %struct.netlink_table, ptr %32, i32 %unit, i32 7
  %33 = ptrtoint ptr %bind99 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %bind99, align 4
  %unbind = getelementptr inbounds %struct.netlink_kernel_cfg, ptr %cfg, i32 0, i32 5
  %34 = ptrtoint ptr %unbind to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %unbind, align 4
  %36 = load ptr, ptr @nl_table, align 4
  %unbind101 = getelementptr %struct.netlink_table, ptr %36, i32 %unit, i32 8
  %37 = ptrtoint ptr %unbind101 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %35, ptr %unbind101, align 4
  %flags102 = getelementptr inbounds %struct.netlink_kernel_cfg, ptr %cfg, i32 0, i32 1
  %38 = ptrtoint ptr %flags102 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags102, align 4
  %40 = load ptr, ptr @nl_table, align 4
  %flags104 = getelementptr %struct.netlink_table, ptr %40, i32 %unit, i32 3
  %41 = ptrtoint ptr %flags104 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %39, ptr %flags104, align 4
  %compare = getelementptr inbounds %struct.netlink_kernel_cfg, ptr %cfg, i32 0, i32 6
  %42 = ptrtoint ptr %compare to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %compare, align 4
  %tobool105.not = icmp eq ptr %43, null
  br i1 %tobool105.not, label %if.then97.if.end111_crit_edge, label %if.then106

if.then97.if.end111_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end111

if.then106:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #24
  %44 = load ptr, ptr @nl_table, align 4
  %compare109 = getelementptr %struct.netlink_table, ptr %44, i32 %unit, i32 9
  %45 = ptrtoint ptr %compare109 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %compare109, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then106, %if.then97.if.end111_crit_edge, %if.then47.if.end111_crit_edge
  %46 = load ptr, ptr @nl_table, align 4
  %registered113 = getelementptr %struct.netlink_table, ptr %46, i32 %unit, i32 10
  %47 = ptrtoint ptr %registered113 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %registered113, align 4
  br label %if.end117

if.else114:                                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #24
  call void @kfree(ptr noundef nonnull %call9.i.i) #22
  %48 = load ptr, ptr @nl_table, align 4
  %registered116 = getelementptr %struct.netlink_table, ptr %48, i32 %unit, i32 10
  %49 = ptrtoint ptr %registered116 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %registered116, align 4
  %inc = add i32 %50, 1
  store i32 %inc, ptr %registered116, align 4
  br label %if.end117

if.end117:                                        ; preds = %if.else114, %if.end111
  call void @_raw_write_unlock_irq(ptr noundef nonnull @nl_table_lock) #22
  call void @__wake_up(ptr noundef nonnull @nl_table_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #22
  br label %cleanup

out_sock_release:                                 ; preds = %if.end40.out_sock_release_crit_edge, %if.end8.i.i.out_sock_release_crit_edge
  call void @kfree(ptr noundef %call9.i.i) #22
  %cmp.i = icmp eq ptr %10, null
  br i1 %cmp.i, label %out_sock_release.cleanup_crit_edge, label %lor.lhs.false.i

out_sock_release.cleanup_crit_edge:               ; preds = %out_sock_release
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %out_sock_release
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 71
  %51 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sk_socket.i, align 8
  %cmp1.i = icmp eq ptr %52, null
  br i1 %cmp1.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #24
  call void @sock_release(ptr noundef nonnull %52) #22
  br label %cleanup

out_sock_release_nosk:                            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #24
  call void @sock_release(ptr noundef %8) #22
  br label %cleanup

cleanup:                                          ; preds = %out_sock_release_nosk, %if.end.i, %lor.lhs.false.i.cleanup_crit_edge, %out_sock_release.cleanup_crit_edge, %if.end117, %if.end14.cleanup_crit_edge, %do.end11.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %out_sock_release_nosk ], [ %10, %if.end117 ], [ null, %do.end11.cleanup_crit_edge ], [ null, %if.end14.cleanup_crit_edge ], [ null, %out_sock_release.cleanup_crit_edge ], [ null, %lor.lhs.false.i.cleanup_crit_edge ], [ null, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock) #22
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_create_lite(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__netlink_create(ptr noundef %net, ptr noundef %sock, ptr noundef %cb_mutex, i32 noundef %protocol, i32 noundef %kern) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @netlink_ops, ptr %ops, align 4
  %call = tail call ptr @sk_alloc(ptr noundef %net, i32 noundef 16, i32 noundef 3264, ptr noundef nonnull @netlink_proto, i32 noundef %kern) #22
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call) #22
  %tobool2.not = icmp eq ptr %cb_mutex, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %cb_mutex4 = getelementptr inbounds %struct.netlink_sock, ptr %call, i32 0, i32 15
  %1 = ptrtoint ptr %cb_mutex4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cb_mutex, ptr %cb_mutex4, align 8
  br label %do.body13

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %cb_def_mutex = getelementptr inbounds %struct.netlink_sock, ptr %call, i32 0, i32 16
  %cb_mutex5 = getelementptr inbounds %struct.netlink_sock, ptr %call, i32 0, i32 15
  %2 = ptrtoint ptr %cb_mutex5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cb_def_mutex, ptr %cb_mutex5, align 8
  tail call void @__mutex_init(ptr noundef %cb_def_mutex, ptr noundef nonnull @.str.20, ptr noundef nonnull @__netlink_create.__key) #22
  %3 = ptrtoint ptr %cb_mutex5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cb_mutex5, align 8
  %dep_map = getelementptr inbounds %struct.mutex, ptr %4, i32 0, i32 5
  %arrayidx = getelementptr [33 x ptr], ptr @nlk_cb_mutex_key_strings, i32 0, i32 %protocol
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr %struct.lock_class_key, ptr @nlk_cb_mutex_keys, i32 %protocol
  %wait_type_inner = getelementptr inbounds %struct.mutex, ptr %4, i32 0, i32 5, i32 4
  %7 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef %6, ptr noundef %add.ptr, i32 noundef 0, i8 noundef zeroext %8, i8 noundef zeroext 0, i8 noundef zeroext 0) #22
  br label %do.body13

do.body13:                                        ; preds = %if.else, %if.then3
  %wait = getelementptr inbounds %struct.netlink_sock, ptr %call, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.22, ptr noundef nonnull @__netlink_create.__key.21) #22
  %sk_destruct = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 82
  %9 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @netlink_sock_destruct, ptr %sk_destruct, align 4
  %conv = trunc i32 %protocol to i16
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 46
  %10 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %sk_protocol, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body13 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netlink_data_ready(ptr nocapture noundef readnone %sk) #5 align 64 {
entry:
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netlink/af_netlink.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2017, 0\0A.popsection", ""() #22, !srcloc !327
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netlink_insert(ptr noundef %sk, i32 noundef %portid) unnamed_addr #0 align 64 {
entry:
  %arg.i = alloca %struct.netlink_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @nl_table, align 4
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %1 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %sk_protocol, align 4
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #22
  %portid1 = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 1
  %3 = ptrtoint ptr %portid1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %portid1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %portid)
  %cmp = icmp eq i32 %4, %portid
  %cond = select i1 %cmp, i32 0, i32 -16
  %bound = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 11
  %5 = ptrtoint ptr %bound to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bound, align 8, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.err32_crit_edge

entry.err32_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %err32

if.end:                                           ; preds = %entry
  %idxprom = zext i16 %2 to i32
  %arrayidx = getelementptr %struct.netlink_table, ptr %0, i32 %idxprom
  %7 = ptrtoint ptr %portid1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %portid, ptr %portid1, align 8
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #22
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #22, !srcloc !315
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !304

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !303

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #22
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i) #22
  %10 = getelementptr inbounds %struct.netlink_compare_arg, ptr %arg.i, i32 0, i32 1
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %11 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skc_net.i.i, align 4
  %13 = ptrtoint ptr %portid1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %portid1, align 8
  %15 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %arg.i, align 4
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %10, align 4
  %node.i = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 21
  %obj_hashfn.i.i = getelementptr inbounds %struct.rhashtable, ptr %arrayidx, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %obj_hashfn.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %obj_hashfn.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %do.body5.i.i, label %do.end10.i.i, !prof !304

do.body5.i.i:                                     ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/rhashtable.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 956, 0\0A.popsection", ""() #22, !srcloc !329
  unreachable

do.end10.i.i:                                     ; preds = %sock_hold.exit
  %19 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %22, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !312
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #22
  %call.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #22
  br i1 %call.i.i.i.i, label %do.end10.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.end10.i.i.rcu_read_lock.exit.i.i.i_crit_edge:  ; preds = %do.end10.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.end10.i.i
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #22
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %do.end10.i.i.rcu_read_lock.exit.i.i.i_crit_edge
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %arrayidx, align 4
  %call.i.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %arrayidx) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %rcu_read_lock.exit.i.i.i.do.end12.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.do.end12.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end12.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %rcu_read_lock.exit.i.i.i
  %call5.i.i.i = tail call i32 @rcu_read_lock_held() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge

lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end12.i.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %call7.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge, label %land.lhs.true9.i.i.i

land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end12.i.i.i

land.lhs.true9.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b2.i.i.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i.i.i, label %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge:    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end12.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 715, ptr noundef nonnull @.str.4) #22
  br label %do.end12.i.i.i

do.end12.i.i.i:                                   ; preds = %if.then.i.i.i, %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge, %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.do.end12.i.i.i_crit_edge
  %head_offset.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %arrayidx, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %head_offset.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %head_offset.i.i.i.i.i, align 2
  %conv.i.i.i.i.i = zext i16 %26 to i32
  %idx.neg.i.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %node.i, i32 %idx.neg.i.i.i.i.i
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %24, i32 0, i32 2
  %27 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %skc_net.i.i14.i = getelementptr inbounds %struct.sock_common, ptr %add.ptr.i.i.i.i.i, i32 0, i32 9
  %29 = ptrtoint ptr %skc_net.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %skc_net.i.i14.i, align 4
  %portid.i15.i = getelementptr inbounds %struct.netlink_sock, ptr %add.ptr.i.i.i.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %portid.i15.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %portid.i15.i, align 8
  %add1.i.i.i = add i32 %28, -559038729
  %add33.i.i.i = add i32 %32, %add1.i.i.i
  %33 = ptrtoint ptr %30 to i32
  %add36.i.i.i = add i32 %add1.i.i.i, %33
  %xor37.i.i.i = xor i32 %add33.i.i.i, %add1.i.i.i
  %or.i140.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add33.i.i.i, i32 %add33.i.i.i, i32 14) #22
  %sub39.i.i.i = sub i32 %xor37.i.i.i, %or.i140.i.i.i
  %xor40.i.i.i = xor i32 %sub39.i.i.i, %add36.i.i.i
  %or.i141.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i, i32 %sub39.i.i.i, i32 11) #22
  %sub42.i.i.i = sub i32 %xor40.i.i.i, %or.i141.i.i.i
  %xor43.i.i.i = xor i32 %sub42.i.i.i, %add33.i.i.i
  %or.i142.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i, i32 %sub42.i.i.i, i32 25) #22
  %sub45.i.i.i = sub i32 %xor43.i.i.i, %or.i142.i.i.i
  %xor46.i.i.i = xor i32 %sub45.i.i.i, %sub39.i.i.i
  %or.i143.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i, i32 %sub45.i.i.i, i32 16) #22
  %sub48.i.i.i = sub i32 %xor46.i.i.i, %or.i143.i.i.i
  %xor49.i.i.i = xor i32 %sub48.i.i.i, %sub42.i.i.i
  %or.i144.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i, i32 %sub48.i.i.i, i32 4) #22
  %sub51.i.i.i = sub i32 %xor49.i.i.i, %or.i144.i.i.i
  %xor52.i.i.i = xor i32 %sub51.i.i.i, %sub45.i.i.i
  %or.i145.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i, i32 %sub51.i.i.i, i32 14) #22
  %sub54.i.i.i = sub i32 %xor52.i.i.i, %or.i145.i.i.i
  %xor55.i.i.i = xor i32 %sub54.i.i.i, %sub48.i.i.i
  %or.i146.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i, i32 %sub54.i.i.i, i32 24) #22
  %sub57.i.i.i = sub i32 %xor55.i.i.i, %or.i146.i.i.i
  %34 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %24, align 128
  %sub.i.i.i.i.i.i = add i32 %35, -1
  %and.i3.i.i.i.i.i = and i32 %sub57.i.i.i, %sub.i.i.i.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %24, i32 0, i32 1
  %36 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i5.i.i.i = icmp eq i32 %37, 0
  br i1 %tobool.not.i5.i.i.i, label %cond.false.i8.i.i.i, label %cond.true.i7.i.i.i, !prof !303

cond.true.i7.i.i.i:                               ; preds = %do.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %call.i6.i.i.i = tail call ptr @rht_bucket_nested_insert(ptr noundef %arrayidx, ptr noundef %24, i32 noundef %and.i3.i.i.i.i.i) #22
  br label %rht_bucket_insert.exit.i.i.i

cond.false.i8.i.i.i:                              ; preds = %do.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %24, i32 0, i32 8, i32 %and.i3.i.i.i.i.i
  br label %rht_bucket_insert.exit.i.i.i

rht_bucket_insert.exit.i.i.i:                     ; preds = %cond.false.i8.i.i.i, %cond.true.i7.i.i.i
  %cond.i9.i.i.i = phi ptr [ %call.i6.i.i.i, %cond.true.i7.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i8.i.i.i ]
  %tobool17.not.i.i.i = icmp eq ptr %cond.i9.i.i.i, null
  br i1 %tobool17.not.i.i.i, label %rht_bucket_insert.exit.i.i.i.out.i.i.i_crit_edge, label %if.end19.i.i.i

rht_bucket_insert.exit.i.i.i.out.i.i.i_crit_edge: ; preds = %rht_bucket_insert.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %out.i.i.i

if.end19.i.i.i:                                   ; preds = %rht_bucket_insert.exit.i.i.i
  tail call fastcc void @rht_lock(ptr noundef %24, ptr noundef nonnull %cond.i9.i.i.i) #22
  %future_tbl.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %24, i32 0, i32 5
  %38 = ptrtoint ptr %future_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %future_tbl.i.i.i, align 4
  %tobool25.not.i.i.i = icmp eq ptr %39, null
  br i1 %tobool25.not.i.i.i, label %if.end30.i.i.i, label %if.end19.i.i.i.slow_path.i.i.i_crit_edge, !prof !303

if.end19.i.i.i.slow_path.i.i.i_crit_edge:         ; preds = %if.end19.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %slow_path.i.i.i

slow_path.i.i.i:                                  ; preds = %rht_grow_above_100.exit.i.i.i.slow_path.i.i.i_crit_edge, %for.end.i.i.i.slow_path.i.i.i_crit_edge, %if.end19.i.i.i.slow_path.i.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %24, ptr noundef nonnull %cond.i9.i.i.i) #22
  %call.i11.i.i.i = tail call zeroext i1 @rcu_is_watching() #22
  br i1 %call.i11.i.i.i, label %slow_path.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %land.lhs.true.i14.i.i.i

slow_path.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %slow_path.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_unlock.exit.i.i.i

land.lhs.true.i14.i.i.i:                          ; preds = %slow_path.i.i.i
  %call1.i12.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12.i.i.i)
  %tobool.not.i13.i.i.i = icmp eq i32 %call1.i12.i.i.i, 0
  br i1 %tobool.not.i13.i.i.i, label %land.lhs.true.i14.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %land.lhs.true2.i16.i.i.i

land.lhs.true.i14.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i14.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_unlock.exit.i.i.i

land.lhs.true2.i16.i.i.i:                         ; preds = %land.lhs.true.i14.i.i.i
  %.b4.i15.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15.i.i.i, label %land.lhs.true2.i16.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, label %if.then.i17.i.i.i

land.lhs.true2.i16.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i16.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_unlock.exit.i.i.i

if.then.i17.i.i.i:                                ; preds = %land.lhs.true2.i16.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #22
  br label %rcu_read_unlock.exit.i.i.i

rcu_read_unlock.exit.i.i.i:                       ; preds = %if.then.i17.i.i.i, %land.lhs.true2.i16.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, %land.lhs.true.i14.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge, %slow_path.i.i.i.rcu_read_unlock.exit.i.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !313
  %40 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i.i.i18.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i18.i.i.i to ptr
  %preempt_count.i.i.i.i19.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i19.i.i.i, align 4
  %sub.i.i.i20.i.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i.i20.i.i.i, ptr %preempt_count.i.i.i.i19.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #22
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #22
  %call29.i.i.i = call ptr @rhashtable_insert_slow(ptr noundef %arrayidx, ptr noundef nonnull %arg.i, ptr noundef %node.i) #22
  br label %__netlink_insert.exit

if.end30.i.i.i:                                   ; preds = %if.end19.i.i.i
  %call.i21.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %24, i32 noundef %and.i3.i.i.i.i.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21.i.i.i)
  %tobool.not.i22.i.i.i = icmp eq i32 %call.i21.i.i.i, 0
  br i1 %tobool.not.i22.i.i.i, label %land.lhs.true.i24.i.i.i, label %if.end30.i.i.i.rht_ptr.exit.i.i.i_crit_edge

if.end30.i.i.i.rht_ptr.exit.i.i.i_crit_edge:      ; preds = %if.end30.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rht_ptr.exit.i.i.i

land.lhs.true.i24.i.i.i:                          ; preds = %if.end30.i.i.i
  %call1.i23.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23.i.i.i)
  %tobool2.not.i.i.i.i = icmp eq i32 %call1.i23.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i, label %land.lhs.true.i24.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i

land.lhs.true.i24.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i24.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rht_ptr.exit.i.i.i

land.lhs.true3.i.i.i.i:                           ; preds = %land.lhs.true.i24.i.i.i
  %.b7.i.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i.i, label %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, label %if.then.i25.i.i.i

land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rht_ptr.exit.i.i.i

if.then.i25.i.i.i:                                ; preds = %land.lhs.true3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 377, ptr noundef nonnull @.str.5) #22
  br label %rht_ptr.exit.i.i.i

rht_ptr.exit.i.i.i:                               ; preds = %if.then.i25.i.i.i, %land.lhs.true3.i.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %land.lhs.true.i24.i.i.i.rht_ptr.exit.i.i.i_crit_edge, %if.end30.i.i.i.rht_ptr.exit.i.i.i_crit_edge
  %44 = ptrtoint ptr %cond.i9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cond.i9.i.i.i, align 4
  %46 = ptrtoint ptr %45 to i32
  %and.i.i.i.i.i = and i32 %46, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  %47 = ptrtoint ptr %cond.i9.i.i.i to i32
  %or.i.i.i.i.i = or i32 %47, 1
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i.i.i.i
  %and.i84.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84.i.i.i)
  %tobool.i.not85.i.i.i = icmp eq i32 %and.i84.i.i.i, 0
  br i1 %tobool.i.not85.i.i.i, label %for.body.lr.ph.i.i.i, label %rht_ptr.exit.i.i.i.if.end152.i.i.i_crit_edge

rht_ptr.exit.i.i.i.if.end152.i.i.i_crit_edge:     ; preds = %rht_ptr.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end152.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %rht_ptr.exit.i.i.i
  %48 = inttoptr i32 %cond.i.i.i.i.i to ptr
  %49 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %10, align 4
  br label %lor.lhs.false36.i.i.i

lor.lhs.false36.i.i.i:                            ; preds = %do.end147.i.i.i.lor.lhs.false36.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %head.087.i.i.i = phi ptr [ %48, %for.body.lr.ph.i.i.i ], [ %60, %do.end147.i.i.i.lor.lhs.false36.i.i.i_crit_edge ]
  %elasticity.086.i.i.i = phi i32 [ 16, %for.body.lr.ph.i.i.i ], [ %dec.i.i.i, %do.end147.i.i.i.lor.lhs.false36.i.i.i_crit_edge ]
  %dec.i.i.i = add i32 %elasticity.086.i.i.i, -1
  %51 = ptrtoint ptr %head_offset.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %head_offset.i.i.i.i.i, align 2
  %conv.i29.i.i.i = zext i16 %52 to i32
  %idx.neg.i30.i.i.i = sub nsw i32 0, %conv.i29.i.i.i
  %add.ptr.i31.i.i.i = getelementptr i8, ptr %head.087.i.i.i, i32 %idx.neg.i30.i.i.i
  %portid.i.i = getelementptr inbounds %struct.netlink_sock, ptr %add.ptr.i31.i.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %portid.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %portid.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %50)
  %cmp.not.i.i = icmp eq i32 %54, %50
  br i1 %cmp.not.i.i, label %netlink_compare.exit.i, label %lor.lhs.false36.i.i.i.do.body136.i.i.i_crit_edge

lor.lhs.false36.i.i.i.do.body136.i.i.i_crit_edge: ; preds = %lor.lhs.false36.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body136.i.i.i

netlink_compare.exit.i:                           ; preds = %lor.lhs.false36.i.i.i
  %skc_net.i.i.i = getelementptr inbounds %struct.sock_common, ptr %add.ptr.i31.i.i.i, i32 0, i32 9
  %55 = ptrtoint ptr %skc_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %skc_net.i.i.i, align 4
  %57 = ptrtoint ptr %arg.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arg.i, align 4
  %cmp.i.i13.not.i = icmp eq ptr %56, %58
  br i1 %cmp.i.i13.not.i, label %netlink_compare.exit.i.out_unlock.i.i.i_crit_edge, label %netlink_compare.exit.i.do.body136.i.i.i_crit_edge

netlink_compare.exit.i.do.body136.i.i.i_crit_edge: ; preds = %netlink_compare.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body136.i.i.i

netlink_compare.exit.i.out_unlock.i.i.i_crit_edge: ; preds = %netlink_compare.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %out_unlock.i.i.i

do.body136.i.i.i:                                 ; preds = %netlink_compare.exit.i.do.body136.i.i.i_crit_edge, %lor.lhs.false36.i.i.i.do.body136.i.i.i_crit_edge
  %call137.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %24, i32 noundef %and.i3.i.i.i.i.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i.i.i)
  %tobool138.not.i.i.i = icmp eq i32 %call137.i.i.i, 0
  br i1 %tobool138.not.i.i.i, label %land.lhs.true139.i.i.i, label %do.body136.i.i.i.do.end147.i.i.i_crit_edge

do.body136.i.i.i.do.end147.i.i.i_crit_edge:       ; preds = %do.body136.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end147.i.i.i

land.lhs.true139.i.i.i:                           ; preds = %do.body136.i.i.i
  %call140.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i.i.i)
  %tobool141.not.i.i.i = icmp eq i32 %call140.i.i.i, 0
  br i1 %tobool141.not.i.i.i, label %land.lhs.true139.i.i.i.do.end147.i.i.i_crit_edge, label %land.lhs.true142.i.i.i

land.lhs.true139.i.i.i.do.end147.i.i.i_crit_edge: ; preds = %land.lhs.true139.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end147.i.i.i

land.lhs.true142.i.i.i:                           ; preds = %land.lhs.true139.i.i.i
  %.b2811.i.i.i = load i1, ptr @__rhashtable_insert_fast.__warned.73, align 1
  br i1 %.b2811.i.i.i, label %land.lhs.true142.i.i.i.do.end147.i.i.i_crit_edge, label %if.then144.i.i.i

land.lhs.true142.i.i.i.do.end147.i.i.i_crit_edge: ; preds = %land.lhs.true142.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end147.i.i.i

if.then144.i.i.i:                                 ; preds = %land.lhs.true142.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @__rhashtable_insert_fast.__warned.73, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 732, ptr noundef nonnull @.str.5) #22
  br label %do.end147.i.i.i

do.end147.i.i.i:                                  ; preds = %if.then144.i.i.i, %land.lhs.true142.i.i.i.do.end147.i.i.i_crit_edge, %land.lhs.true139.i.i.i.do.end147.i.i.i_crit_edge, %do.body136.i.i.i.do.end147.i.i.i_crit_edge
  %59 = ptrtoint ptr %head.087.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %head.087.i.i.i, align 4
  %61 = ptrtoint ptr %60 to i32
  %and.i.i.i.i = and i32 %61, 1
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %do.end147.i.i.i.lor.lhs.false36.i.i.i_crit_edge, label %for.end.i.i.i

do.end147.i.i.i.lor.lhs.false36.i.i.i_crit_edge:  ; preds = %do.end147.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %lor.lhs.false36.i.i.i

for.end.i.i.i:                                    ; preds = %do.end147.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i.i.i)
  %phi.cmp.i.i.i = icmp slt i32 %dec.i.i.i, 1
  br i1 %phi.cmp.i.i.i, label %for.end.i.i.i.slow_path.i.i.i_crit_edge, label %for.end.i.i.i.if.end152.i.i.i_crit_edge

for.end.i.i.i.if.end152.i.i.i_crit_edge:          ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end152.i.i.i

for.end.i.i.i.slow_path.i.i.i_crit_edge:          ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %slow_path.i.i.i

if.end152.i.i.i:                                  ; preds = %for.end.i.i.i.if.end152.i.i.i_crit_edge, %rht_ptr.exit.i.i.i.if.end152.i.i.i_crit_edge
  %nelems.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %arrayidx, i32 0, i32 8
  %call.i.i.i39.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #22
  %62 = ptrtoint ptr %nelems.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %nelems.i.i.i.i, align 4
  %max_elems.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %arrayidx, i32 0, i32 2
  %64 = ptrtoint ptr %max_elems.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %max_elems.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp.i.not.i.i.i = icmp ult i32 %63, %65
  br i1 %cmp.i.not.i.i.i, label %if.end162.i.i.i, label %if.end152.i.i.i.out_unlock.i.i.i_crit_edge, !prof !303

if.end152.i.i.i.out_unlock.i.i.i_crit_edge:       ; preds = %if.end152.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %out_unlock.i.i.i

if.end162.i.i.i:                                  ; preds = %if.end152.i.i.i
  %call.i.i.i41.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #22
  %66 = ptrtoint ptr %nelems.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %nelems.i.i.i.i, align 4
  %68 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %24, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %69)
  %cmp.i42.i.i.i = icmp ugt i32 %67, %69
  br i1 %cmp.i42.i.i.i, label %rht_grow_above_100.exit.i.i.i, label %if.end162.i.i.i.if.end171.i.i.i_crit_edge

if.end162.i.i.i.if.end171.i.i.i_crit_edge:        ; preds = %if.end162.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end171.i.i.i

rht_grow_above_100.exit.i.i.i:                    ; preds = %if.end162.i.i.i
  %max_size.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %arrayidx, i32 0, i32 3, i32 4
  %70 = ptrtoint ptr %max_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %max_size.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i43.i.i.i = icmp eq i32 %71, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %71)
  %cmp4.i.i.i.i = icmp ult i32 %69, %71
  %spec.select.i.i.i.i = select i1 %tobool.not.i43.i.i.i, i1 true, i1 %cmp4.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %rht_grow_above_100.exit.i.i.i.slow_path.i.i.i_crit_edge, label %rht_grow_above_100.exit.i.i.i.if.end171.i.i.i_crit_edge, !prof !304

rht_grow_above_100.exit.i.i.i.if.end171.i.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end171.i.i.i

rht_grow_above_100.exit.i.i.i.slow_path.i.i.i_crit_edge: ; preds = %rht_grow_above_100.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %slow_path.i.i.i

if.end171.i.i.i:                                  ; preds = %rht_grow_above_100.exit.i.i.i.if.end171.i.i.i_crit_edge, %if.end162.i.i.i.if.end171.i.i.i_crit_edge
  %call.i44.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %24, i32 noundef %and.i3.i.i.i.i.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i.i.i)
  %tobool.not.i45.i.i.i = icmp eq i32 %call.i44.i.i.i, 0
  br i1 %tobool.not.i45.i.i.i, label %land.lhs.true.i48.i.i.i, label %if.end171.i.i.i.rht_ptr.exit56.i.i.i_crit_edge

if.end171.i.i.i.rht_ptr.exit56.i.i.i_crit_edge:   ; preds = %if.end171.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rht_ptr.exit56.i.i.i

land.lhs.true.i48.i.i.i:                          ; preds = %if.end171.i.i.i
  %call1.i46.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46.i.i.i)
  %tobool2.not.i47.i.i.i = icmp eq i32 %call1.i46.i.i.i, 0
  br i1 %tobool2.not.i47.i.i.i, label %land.lhs.true.i48.i.i.i.rht_ptr.exit56.i.i.i_crit_edge, label %land.lhs.true3.i50.i.i.i

land.lhs.true.i48.i.i.i.rht_ptr.exit56.i.i.i_crit_edge: ; preds = %land.lhs.true.i48.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rht_ptr.exit56.i.i.i

land.lhs.true3.i50.i.i.i:                         ; preds = %land.lhs.true.i48.i.i.i
  %.b7.i49.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i49.i.i.i, label %land.lhs.true3.i50.i.i.i.rht_ptr.exit56.i.i.i_crit_edge, label %if.then.i51.i.i.i

land.lhs.true3.i50.i.i.i.rht_ptr.exit56.i.i.i_crit_edge: ; preds = %land.lhs.true3.i50.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rht_ptr.exit56.i.i.i

if.then.i51.i.i.i:                                ; preds = %land.lhs.true3.i50.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 377, ptr noundef nonnull @.str.5) #22
  br label %rht_ptr.exit56.i.i.i

rht_ptr.exit56.i.i.i:                             ; preds = %if.then.i51.i.i.i, %land.lhs.true3.i50.i.i.i.rht_ptr.exit56.i.i.i_crit_edge, %land.lhs.true.i48.i.i.i.rht_ptr.exit56.i.i.i_crit_edge, %if.end171.i.i.i.rht_ptr.exit56.i.i.i_crit_edge
  %72 = ptrtoint ptr %cond.i9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %cond.i9.i.i.i, align 4
  %74 = ptrtoint ptr %73 to i32
  %and.i.i52.i.i.i = and i32 %74, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i52.i.i.i)
  %tobool.not.i.i53.i.i.i = icmp eq i32 %and.i.i52.i.i.i, 0
  %cond.i.i55.i.i.i = select i1 %tobool.not.i.i53.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i52.i.i.i
  %75 = inttoptr i32 %cond.i.i55.i.i.i to ptr
  %76 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %75, ptr %node.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i.i.i, i32 1, i32 3, i32 1) #22
  %77 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i.i, ptr %nelems.i.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i.i) #22, !srcloc !316
  tail call fastcc void @rht_assign_unlock(ptr noundef %24, ptr noundef nonnull %cond.i9.i.i.i, ptr noundef %node.i) #22
  %call.i.i.i58.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #22
  %78 = ptrtoint ptr %nelems.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %nelems.i.i.i.i, align 4
  %80 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %24, align 128
  %div8.i.i.i.i = lshr i32 %81, 2
  %mul.i.i.i.i = mul nuw i32 %div8.i.i.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %mul.i.i.i.i)
  %cmp.i59.i.i.i = icmp ugt i32 %79, %mul.i.i.i.i
  br i1 %cmp.i59.i.i.i, label %rht_grow_above_75.exit.i.i.i, label %rht_ptr.exit56.i.i.i.out.i.i.i_crit_edge

rht_ptr.exit56.i.i.i.out.i.i.i_crit_edge:         ; preds = %rht_ptr.exit56.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %out.i.i.i

rht_grow_above_75.exit.i.i.i:                     ; preds = %rht_ptr.exit56.i.i.i
  %max_size.i60.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %arrayidx, i32 0, i32 3, i32 4
  %82 = ptrtoint ptr %max_size.i60.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %max_size.i60.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.i61.i.i.i = icmp eq i32 %83, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %83)
  %cmp4.i62.i.i.i = icmp ult i32 %81, %83
  %spec.select.i63.i.i.i = select i1 %tobool.not.i61.i.i.i, i1 true, i1 %cmp4.i62.i.i.i
  br i1 %spec.select.i63.i.i.i, label %if.then207.i.i.i, label %rht_grow_above_75.exit.i.i.i.out.i.i.i_crit_edge

rht_grow_above_75.exit.i.i.i.out.i.i.i_crit_edge: ; preds = %rht_grow_above_75.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %out.i.i.i

if.then207.i.i.i:                                 ; preds = %rht_grow_above_75.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %run_work.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %arrayidx, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %84 = load ptr, ptr @system_wq, align 4
  %call.i.i65.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %84, ptr noundef %run_work.i.i.i) #22
  br label %out.i.i.i

out.i.i.i:                                        ; preds = %out_unlock.i.i.i, %if.then207.i.i.i, %rht_grow_above_75.exit.i.i.i.out.i.i.i_crit_edge, %rht_ptr.exit56.i.i.i.out.i.i.i_crit_edge, %rht_bucket_insert.exit.i.i.i.out.i.i.i_crit_edge
  %data.2.i.i.i = phi ptr [ %data.3.i.i.i, %out_unlock.i.i.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.i.i.out.i.i.i_crit_edge ], [ null, %if.then207.i.i.i ], [ null, %rht_grow_above_75.exit.i.i.i.out.i.i.i_crit_edge ], [ null, %rht_ptr.exit56.i.i.i.out.i.i.i_crit_edge ]
  %call.i66.i.i.i = tail call zeroext i1 @rcu_is_watching() #22
  br i1 %call.i66.i.i.i, label %out.i.i.i.rcu_read_unlock.exit76.i.i.i_crit_edge, label %land.lhs.true.i69.i.i.i

out.i.i.i.rcu_read_unlock.exit76.i.i.i_crit_edge: ; preds = %out.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_unlock.exit76.i.i.i

land.lhs.true.i69.i.i.i:                          ; preds = %out.i.i.i
  %call1.i67.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67.i.i.i)
  %tobool.not.i68.i.i.i = icmp eq i32 %call1.i67.i.i.i, 0
  br i1 %tobool.not.i68.i.i.i, label %land.lhs.true.i69.i.i.i.rcu_read_unlock.exit76.i.i.i_crit_edge, label %land.lhs.true2.i71.i.i.i

land.lhs.true.i69.i.i.i.rcu_read_unlock.exit76.i.i.i_crit_edge: ; preds = %land.lhs.true.i69.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_unlock.exit76.i.i.i

land.lhs.true2.i71.i.i.i:                         ; preds = %land.lhs.true.i69.i.i.i
  %.b4.i70.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i70.i.i.i, label %land.lhs.true2.i71.i.i.i.rcu_read_unlock.exit76.i.i.i_crit_edge, label %if.then.i72.i.i.i

land.lhs.true2.i71.i.i.i.rcu_read_unlock.exit76.i.i.i_crit_edge: ; preds = %land.lhs.true2.i71.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_unlock.exit76.i.i.i

if.then.i72.i.i.i:                                ; preds = %land.lhs.true2.i71.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #22
  br label %rcu_read_unlock.exit76.i.i.i

rcu_read_unlock.exit76.i.i.i:                     ; preds = %if.then.i72.i.i.i, %land.lhs.true2.i71.i.i.i.rcu_read_unlock.exit76.i.i.i_crit_edge, %land.lhs.true.i69.i.i.i.rcu_read_unlock.exit76.i.i.i_crit_edge, %out.i.i.i.rcu_read_unlock.exit76.i.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !313
  %85 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i.i.i73.i.i.i = and i32 %85, -16384
  %86 = inttoptr i32 %and.i.i.i.i.i73.i.i.i to ptr
  %preempt_count.i.i.i.i74.i.i.i = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %preempt_count.i.i.i.i74.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %preempt_count.i.i.i.i74.i.i.i, align 4
  %sub.i.i.i75.i.i.i = add i32 %88, -1
  store volatile i32 %sub.i.i.i75.i.i.i, ptr %preempt_count.i.i.i.i74.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #22
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #22
  br label %__netlink_insert.exit

out_unlock.i.i.i:                                 ; preds = %if.end152.i.i.i.out_unlock.i.i.i_crit_edge, %netlink_compare.exit.i.out_unlock.i.i.i_crit_edge
  %data.3.i.i.i = phi ptr [ inttoptr (i32 -7 to ptr), %if.end152.i.i.i.out_unlock.i.i.i_crit_edge ], [ %add.ptr.i31.i.i.i, %netlink_compare.exit.i.out_unlock.i.i.i_crit_edge ]
  tail call fastcc void @rht_unlock(ptr noundef %24, ptr noundef nonnull %cond.i9.i.i.i) #22
  br label %out.i.i.i

__netlink_insert.exit:                            ; preds = %rcu_read_unlock.exit76.i.i.i, %rcu_read_unlock.exit.i.i.i
  %retval.0.i.i.i = phi ptr [ %call29.i.i.i, %rcu_read_unlock.exit.i.i.i ], [ %data.2.i.i.i, %rcu_read_unlock.exit76.i.i.i ]
  %cmp.i.i.i = icmp ugt ptr %retval.0.i.i.i, inttoptr (i32 -4096 to ptr)
  %89 = ptrtoint ptr %retval.0.i.i.i to i32
  %cmp.i.i = icmp eq ptr %retval.0.i.i.i, null
  %cond.i.i = select i1 %cmp.i.i, i32 0, i32 -17
  %retval.0.i.i = select i1 %cmp.i.i.i, i32 %89, i32 %cond.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i) #22
  %90 = zext i32 %retval.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %retval.0.i.i, label %if.end12.thread.fold.split [
    i32 0, label %do.end
    i32 -16, label %__netlink_insert.exit.if.end12.thread_crit_edge
    i32 -17, label %91
  ], !prof !330

__netlink_insert.exit.if.end12.thread_crit_edge:  ; preds = %__netlink_insert.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end12.thread

91:                                               ; preds = %__netlink_insert.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end12.thread

if.end12.thread.fold.split:                       ; preds = %__netlink_insert.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end12.thread

if.end12.thread:                                  ; preds = %if.end12.thread.fold.split, %91, %__netlink_insert.exit.if.end12.thread_crit_edge
  %92 = phi i32 [ -98, %91 ], [ -75, %__netlink_insert.exit.if.end12.thread_crit_edge ], [ %retval.0.i.i, %if.end12.thread.fold.split ]
  %call.i.i.i.i.i.i48 = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !317
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #22
  %93 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #22, !srcloc !318
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %93, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end12.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i49 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i49, label %if.end5.i.i.i.i.err32_crit_edge, label %if.then10.i.i.i.i, !prof !303

if.end5.i.i.i.i.err32_crit_edge:                  ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %err32

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #22
  br label %err32

if.then.i:                                        ; preds = %if.end12.thread
  call void @__sanitizer_cov_trace_pc() #24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !319
  call void @sk_free(ptr noundef %sk) #22
  br label %err32

do.end:                                           ; preds = %__netlink_insert.exit
  call void @__sanitizer_cov_trace_pc() #24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !331
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %portid)
  %tobool25 = icmp ne i32 %portid, 0
  %frombool = zext i1 %tobool25 to i8
  %94 = ptrtoint ptr %bound to i32
  call void @__asan_store1_noabort(i32 %94)
  store volatile i8 %frombool, ptr %bound, align 8
  br label %err32

err32:                                            ; preds = %do.end, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.err32_crit_edge, %entry.err32_crit_edge
  %err.1 = phi i32 [ %cond, %entry.err32_crit_edge ], [ 0, %do.end ], [ %92, %if.end5.i.i.i.i.err32_crit_edge ], [ %92, %if.then10.i.i.i.i ], [ %92, %if.then.i ]
  call void @release_sock(ptr noundef %sk) #22
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netlink_kernel_release(ptr noundef readonly %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %sk, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %0 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_socket, align 8
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @sock_release(ptr noundef nonnull %1) #22
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__netlink_change_ngroups(ptr nocapture noundef readonly %sk, i32 noundef %groups) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @nl_table, align 4
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %1 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %sk_protocol, align 4
  %idxprom = zext i16 %2 to i32
  %3 = tail call i32 @llvm.umax.i32(i32 %groups, i32 32)
  %groups1 = getelementptr %struct.netlink_table, ptr %0, i32 %idxprom, i32 4
  %4 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %groups1, align 4
  %add = add i32 %5, 31
  %and = lshr i32 %add, 3
  %div90 = and i32 %and, 536870908
  %add2 = add i32 %3, 31
  %and3 = lshr i32 %add2, 3
  %div491 = and i32 %and3, 536870908
  call void @__sanitizer_cov_trace_cmp4(i32 %div90, i32 %div491)
  %cmp5 = icmp ult i32 %div90, %div491
  br i1 %cmp5, label %if.end8.i.i, label %entry.if.end75_crit_edge

entry.if.end75_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end75

if.end8.i.i:                                      ; preds = %entry
  %add10 = add nuw nsw i32 %div491, 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add10, i32 noundef 2848) #28
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup_crit_edge, label %do.body

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

do.body:                                          ; preds = %if.end8.i.i
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rwlock_t, ptr @nl_table_lock, i32 0, i32 4), i32 noundef -1) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call15 = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true17

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end

land.lhs.true17:                                  ; preds = %land.lhs.true
  %.b93 = load i1, ptr @__netlink_change_ngroups.__warned, align 1
  br i1 %.b93, label %land.lhs.true17.do.end_crit_edge, label %if.then19

land.lhs.true17.do.end_crit_edge:                 ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end

if.then19:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @__netlink_change_ngroups.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 2123, ptr noundef nonnull @.str.5) #22
  br label %do.end

do.end:                                           ; preds = %if.then19, %land.lhs.true17.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %listeners = getelementptr %struct.netlink_table, ptr %0, i32 %idxprom, i32 2
  %6 = ptrtoint ptr %listeners to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %listeners, align 4
  %masks = getelementptr inbounds %struct.listeners, ptr %call9.i.i, i32 0, i32 1
  %masks21 = getelementptr inbounds %struct.listeners, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %groups1, align 4
  %add24 = add i32 %9, 31
  %and25 = lshr i32 %add24, 3
  %div2692 = and i32 %and25, 536870908
  %10 = call ptr @memcpy(ptr %masks, ptr %masks21, i32 %div2692)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !332
  %11 = ptrtoint ptr %listeners to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call9.i.i, ptr %listeners, align 4
  %tobool67.not = icmp eq ptr %7, null
  br i1 %tobool67.not, label %do.end.if.end75_crit_edge, label %do.end71

do.end.if.end75_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end75

do.end71:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @kvfree_call_rcu(ptr noundef nonnull %7, ptr noundef null) #22
  br label %if.end75

if.end75:                                         ; preds = %do.end71, %do.end.if.end75_crit_edge, %entry.if.end75_crit_edge
  %12 = ptrtoint ptr %groups1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %3, ptr %groups1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %if.end8.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end75 ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlink_change_ngroups(ptr nocapture noundef readonly %sk, i32 noundef %groups) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @netlink_table_grab()
  %call = tail call i32 @__netlink_change_ngroups(ptr noundef %sk, i32 noundef %groups)
  tail call void @_raw_write_unlock_irq(ptr noundef nonnull @nl_table_lock) #22
  tail call void @__wake_up(ptr noundef nonnull @nl_table_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #22
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__netlink_clear_multicast_users(ptr nocapture noundef readonly %ksk, i32 noundef %group) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @nl_table, align 4
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %ksk, i32 0, i32 46
  %1 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %sk_protocol, align 4
  %idxprom = zext i16 %2 to i32
  %mc_list = getelementptr %struct.netlink_table, ptr %0, i32 %idxprom, i32 1
  %3 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mc_list, align 4
  %tobool.not = icmp eq ptr %4, null
  %add.ptr = getelementptr i8, ptr %4, i32 -24
  %tobool2.not2124 = icmp eq ptr %add.ptr, null
  %tobool2.not21 = or i1 %tobool.not, %tobool2.not2124
  br i1 %tobool2.not21, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sub.i = add i32 %group, -1
  %div3.i.i = lshr i32 %sub.i, 5
  %and.i.i = and i32 %sub.i, 31
  %shl.i.i = shl nuw i32 1, %and.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  br label %for.body

for.body:                                         ; preds = %netlink_update_socket_mc.exit.for.body_crit_edge, %for.body.lr.ph
  %sk.022 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr9, %netlink_update_socket_mc.exit.for.body_crit_edge ]
  %groups.i = getelementptr inbounds %struct.netlink_sock, ptr %sk.022, i32 0, i32 7
  %5 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %groups.i, align 8
  %arrayidx.i.i = getelementptr i32, ptr %6, i32 %div3.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i.i, align 4
  %shr.i.i = lshr i32 %8, %and.i.i
  %and1.i.i = and i32 %shr.i.i, 1
  %subscriptions2.i = getelementptr inbounds %struct.netlink_sock, ptr %sk.022, i32 0, i32 5
  %9 = ptrtoint ptr %subscriptions2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %subscriptions2.i, align 8
  %and.i22.i = and i32 %8, %neg.i.i
  store i32 %and.i22.i, ptr %arrayidx.i.i, align 4
  %sub3.i = sub i32 %10, %and1.i.i
  %11 = load i32, ptr %subscriptions2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp ne i32 %11, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %10, %and1.i.i
  %or.cond.i.i = and i1 %tobool2.not.i.i, %tobool.not.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body
  %12 = getelementptr inbounds %struct.sock_common, ptr %sk.022, i32 0, i32 7
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %pprev2.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk.022, i32 0, i32 7, i32 0, i32 1
  %15 = ptrtoint ptr %pprev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pprev2.i.i.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %14, ptr %16, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.netlink_update_socket_mc.exit_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.netlink_update_socket_mc.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_update_socket_mc.exit

do.body13.i.i.i.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %pprev14.i.i.i.i, align 4
  br label %netlink_update_socket_mc.exit

if.else.i.i:                                      ; preds = %for.body
  %or.cond17.i.i = or i1 %tobool2.not.i.i, %tobool.not.i.i
  br i1 %or.cond17.i.i, label %if.else.i.i.netlink_update_socket_mc.exit_crit_edge, label %if.then7.i.i

if.else.i.i.netlink_update_socket_mc.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_update_socket_mc.exit

if.then7.i.i:                                     ; preds = %if.else.i.i
  %19 = load ptr, ptr @nl_table, align 4
  %sk_protocol.i.i = getelementptr inbounds %struct.sock, ptr %sk.022, i32 0, i32 46
  %20 = ptrtoint ptr %sk_protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %sk_protocol.i.i, align 4
  %idxprom.i.i = zext i16 %21 to i32
  %mc_list.i.i = getelementptr %struct.netlink_table, ptr %19, i32 %idxprom.i.i, i32 1
  %22 = getelementptr inbounds %struct.sock_common, ptr %sk.022, i32 0, i32 7
  %23 = ptrtoint ptr %mc_list.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mc_list.i.i, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %24, ptr %22, align 4
  %tobool.not.i.i18.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i18.i.i, label %if.then7.i.i.sk_add_bind_node.exit.i.i_crit_edge, label %do.body12.i.i.i.i

if.then7.i.i.sk_add_bind_node.exit.i.i_crit_edge: ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %sk_add_bind_node.exit.i.i

do.body12.i.i.i.i:                                ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %24, i32 0, i32 1
  %26 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %22, ptr %pprev.i.i.i.i, align 4
  br label %sk_add_bind_node.exit.i.i

sk_add_bind_node.exit.i.i:                        ; preds = %do.body12.i.i.i.i, %if.then7.i.i.sk_add_bind_node.exit.i.i_crit_edge
  %27 = ptrtoint ptr %mc_list.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %22, ptr %mc_list.i.i, align 4
  %pprev34.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk.022, i32 0, i32 7, i32 0, i32 1
  %28 = ptrtoint ptr %pprev34.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %mc_list.i.i, ptr %pprev34.i.i.i.i, align 4
  br label %netlink_update_socket_mc.exit

netlink_update_socket_mc.exit:                    ; preds = %sk_add_bind_node.exit.i.i, %if.else.i.i.netlink_update_socket_mc.exit_crit_edge, %do.body13.i.i.i.i, %if.then.i.i.netlink_update_socket_mc.exit_crit_edge
  %29 = ptrtoint ptr %subscriptions2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub3.i, ptr %subscriptions2.i, align 8
  tail call fastcc void @netlink_update_listeners(ptr noundef nonnull %sk.022) #22
  %30 = getelementptr inbounds %struct.sock_common, ptr %sk.022, i32 0, i32 7
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 8
  %tobool5.not = icmp eq ptr %32, null
  %add.ptr9 = getelementptr i8, ptr %32, i32 -24
  %tobool2.not25 = icmp eq ptr %add.ptr9, null
  %tobool2.not = or i1 %tobool5.not, %tobool2.not25
  br i1 %tobool2.not, label %netlink_update_socket_mc.exit.for.end_crit_edge, label %netlink_update_socket_mc.exit.for.body_crit_edge

netlink_update_socket_mc.exit.for.body_crit_edge: ; preds = %netlink_update_socket_mc.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

netlink_update_socket_mc.exit.for.end_crit_edge:  ; preds = %netlink_update_socket_mc.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.end:                                          ; preds = %netlink_update_socket_mc.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netlink_update_socket_mc(ptr noundef %nlk, i32 noundef %group, i32 noundef %is_new) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_new)
  %tobool = icmp ne i32 %is_new, 0
  %sub = add i32 %group, -1
  %groups = getelementptr inbounds %struct.netlink_sock, ptr %nlk, i32 0, i32 7
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 8
  %div3.i = lshr i32 %sub, 5
  %arrayidx.i = getelementptr i32, ptr %1, i32 %div3.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %sub, 31
  %shr.i = lshr i32 %3, %and.i
  %and1.i = and i32 %shr.i, 1
  %subscriptions2 = getelementptr inbounds %struct.netlink_sock, ptr %nlk, i32 0, i32 5
  %4 = ptrtoint ptr %subscriptions2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %subscriptions2, align 8
  %shl.i = shl nuw i32 1, %and.i
  %neg.i = xor i32 %shl.i, -1
  %and.i22 = and i32 %3, %neg.i
  %or.i = or i32 %3, %shl.i
  %storemerge = select i1 %tobool, i32 %or.i, i32 %and.i22
  store i32 %storemerge, ptr %arrayidx.i, align 4
  %sub3 = sub i32 %5, %and1.i
  %lnot.ext = zext i1 %tobool to i32
  %add = add i32 %sub3, %lnot.ext
  %6 = load i32, ptr %subscriptions2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp ne i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool2.not.i = icmp eq i32 %add, 0
  %or.cond.i = and i1 %tobool2.not.i, %tobool.not.i
  br i1 %or.cond.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %7 = getelementptr inbounds %struct.sock_common, ptr %nlk, i32 0, i32 7
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.sock_common, ptr %nlk, i32 0, i32 7, i32 0, i32 1
  %10 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pprev2.i.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %9, ptr %11, align 4
  %tobool.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i, label %if.then.i.netlink_update_subscriptions.exit_crit_edge, label %do.body13.i.i.i

if.then.i.netlink_update_subscriptions.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_update_subscriptions.exit

do.body13.i.i.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %pprev14.i.i.i, align 4
  br label %netlink_update_subscriptions.exit

if.else.i:                                        ; preds = %entry
  %or.cond17.i = or i1 %tobool2.not.i, %tobool.not.i
  br i1 %or.cond17.i, label %if.else.i.netlink_update_subscriptions.exit_crit_edge, label %if.then7.i

if.else.i.netlink_update_subscriptions.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_update_subscriptions.exit

if.then7.i:                                       ; preds = %if.else.i
  %14 = load ptr, ptr @nl_table, align 4
  %sk_protocol.i = getelementptr inbounds %struct.sock, ptr %nlk, i32 0, i32 46
  %15 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sk_protocol.i, align 4
  %idxprom.i = zext i16 %16 to i32
  %mc_list.i = getelementptr %struct.netlink_table, ptr %14, i32 %idxprom.i, i32 1
  %17 = getelementptr inbounds %struct.sock_common, ptr %nlk, i32 0, i32 7
  %18 = ptrtoint ptr %mc_list.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mc_list.i, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %19, ptr %17, align 4
  %tobool.not.i.i18.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i18.i, label %if.then7.i.sk_add_bind_node.exit.i_crit_edge, label %do.body12.i.i.i

if.then7.i.sk_add_bind_node.exit.i_crit_edge:     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %sk_add_bind_node.exit.i

do.body12.i.i.i:                                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #24
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %19, i32 0, i32 1
  %21 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %17, ptr %pprev.i.i.i, align 4
  br label %sk_add_bind_node.exit.i

sk_add_bind_node.exit.i:                          ; preds = %do.body12.i.i.i, %if.then7.i.sk_add_bind_node.exit.i_crit_edge
  %22 = ptrtoint ptr %mc_list.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %17, ptr %mc_list.i, align 4
  %pprev34.i.i.i = getelementptr inbounds %struct.sock_common, ptr %nlk, i32 0, i32 7, i32 0, i32 1
  %23 = ptrtoint ptr %pprev34.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %mc_list.i, ptr %pprev34.i.i.i, align 4
  br label %netlink_update_subscriptions.exit

netlink_update_subscriptions.exit:                ; preds = %sk_add_bind_node.exit.i, %if.else.i.netlink_update_subscriptions.exit_crit_edge, %do.body13.i.i.i, %if.then.i.netlink_update_subscriptions.exit_crit_edge
  %24 = ptrtoint ptr %subscriptions2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add, ptr %subscriptions2, align 8
  tail call fastcc void @netlink_update_listeners(ptr noundef %nlk)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef %type, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.i = add i32 %len, 16
  %sub = add i32 %len, 19
  %and = and i32 %sub, -4
  %call1 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %and) #22
  %conv = trunc i32 %type to i16
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %call1, i32 0, i32 1
  %0 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %nlmsg_type, align 4
  %1 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add.i, ptr %call1, align 4
  %conv2 = trunc i32 %flags to i16
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %call1, i32 0, i32 2
  %2 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv2, ptr %nlmsg_flags, align 2
  %nlmsg_pid = getelementptr inbounds %struct.nlmsghdr, ptr %call1, i32 0, i32 4
  %3 = ptrtoint ptr %nlmsg_pid to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %portid, ptr %nlmsg_pid, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %seq, ptr %nlmsg_seq, align 4
  %add.ptr.i = getelementptr i8, ptr %call1, i32 16
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %len
  %sub12 = sub i32 %and, %add.i
  %5 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub12)
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__netlink_dump_start(ptr nocapture noundef readonly %ssk, ptr noundef %skb, ptr noundef %nlh, ptr nocapture noundef readonly %control) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %users = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #22
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #22, !srcloc !315
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !304

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !303

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users, i32 noundef %.sink.i.i.i) #22
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %ssk, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i, align 4
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %ssk, i32 0, i32 46
  %4 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sk_protocol, align 4
  %conv = zext i16 %5 to i32
  %portid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %6 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %portid, align 4
  %call2 = tail call fastcc ptr @netlink_lookup(ptr noundef %3, i32 noundef %conv, i32 noundef %7)
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %refcount_inc.exit.error_free_crit_edge, label %if.end

refcount_inc.exit.error_free_crit_edge:           ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %error_free

if.end:                                           ; preds = %refcount_inc.exit
  %cb_mutex = getelementptr inbounds %struct.netlink_sock, ptr %call2, i32 0, i32 15
  %8 = ptrtoint ptr %cb_mutex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cb_mutex, align 8
  tail call void @mutex_lock_nested(ptr noundef %9, i32 noundef 0) #22
  %cb_running = getelementptr inbounds %struct.netlink_sock, ptr %call2, i32 0, i32 12
  %10 = ptrtoint ptr %cb_running to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cb_running, align 1, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end6, label %if.end.error_unlock_crit_edge

if.end.error_unlock_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %error_unlock

if.end6:                                          ; preds = %if.end
  %module = getelementptr inbounds %struct.netlink_dump_control, ptr %control, i32 0, i32 4
  %12 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %module, align 4
  %call7 = tail call zeroext i1 @try_module_get(ptr noundef %13) #22
  br i1 %call7, label %if.end9, label %if.end6.error_unlock_crit_edge

if.end6.error_unlock_crit_edge:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #24
  br label %error_unlock

if.end9:                                          ; preds = %if.end6
  %cb10 = getelementptr inbounds %struct.netlink_sock, ptr %call2, i32 0, i32 14
  %14 = call ptr @memset(ptr %cb10, i32 0, i32 96)
  %dump = getelementptr inbounds %struct.netlink_dump_control, ptr %control, i32 0, i32 1
  %15 = ptrtoint ptr %dump to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dump, align 4
  %dump11 = getelementptr inbounds %struct.netlink_sock, ptr %call2, i32 0, i32 14, i32 2
  %17 = ptrtoint ptr %dump11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %dump11, align 4
  %done = getelementptr inbounds %struct.netlink_dump_control, ptr %control, i32 0, i32 2
  %18 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %done, align 4
  %done12 = getelementptr inbounds %struct.netlink_sock, ptr %call2, i32 0, i32 14, i32 3
  %20 = ptrtoint ptr %done12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %done12, align 4
  %nlh13 = getelementptr inbounds %struct.netlink_sock, ptr %call2, i32 0, i32 14, i32 1
  %21 = ptrtoint ptr %nlh13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %nlh, ptr %nlh13, align 4
  %data = getelementptr inbounds %struct.netlink_dump_control, ptr %control, i32 0, i32 3
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %data14 = getelementptr inbounds %struct.netlink_sock, ptr %call2, i32 0, i32 14, i32 4
  %24 = ptrtoint ptr %data14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %data14, align 4
  %25 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %module, align 4
  %module16 = getelementptr inbounds %struct.netlink_sock, ptr %call2, i32 0, i32 14, i32 5
  %27 = ptrtoint ptr %module16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %module16, align 4
  %min_dump_alloc = getelementptr inbounds %struct.netlink_dump_control, ptr %control, i32 0, i32 5
  %28 = ptrtoint ptr %min_dump_alloc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %min_dump_alloc, align 4
  %min_dump_alloc17 = getelementptr inbounds %struct.netlink_sock, ptr %call2, i32 0, i32 14, i32 9
  %30 = ptrtoint ptr %min_dump_alloc17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %min_dump_alloc17, align 4
  %31 = ptrtoint ptr %cb10 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %skb, ptr %cb10, align 4
  %sk20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 24
  %32 = ptrtoint ptr %sk20 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sk20, align 8
  %flags = getelementptr inbounds %struct.netlink_sock, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %strict_check = getelementptr inbounds %struct.netlink_sock, ptr %call2, i32 0, i32 14, i32 12
  %36 = trunc i32 %35 to i8
  %37 = lshr i8 %36, 7
  %38 = ptrtoint ptr %strict_check to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %strict_check, align 4
  %39 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %control, align 4
  %tobool24.not = icmp eq ptr %40, null
  br i1 %tobool24.not, label %if.end9.if.end31_crit_edge, label %if.then25

if.end9.if.end31_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end31

if.then25:                                        ; preds = %if.end9
  %call27 = tail call i32 %40(ptr noundef %cb10) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then25.if.end31_crit_edge, label %error_put

if.then25.if.end31_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end31

if.end31:                                         ; preds = %if.then25.if.end31_crit_edge, %if.end9.if.end31_crit_edge
  %41 = ptrtoint ptr %cb_running to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %cb_running, align 1
  %dump_done_errno = getelementptr inbounds %struct.netlink_sock, ptr %call2, i32 0, i32 13
  %42 = ptrtoint ptr %dump_done_errno to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2147483647, ptr %dump_done_errno, align 4
  %43 = ptrtoint ptr %cb_mutex to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cb_mutex, align 8
  tail call void @mutex_unlock(ptr noundef %44) #22
  %call34 = tail call fastcc i32 @netlink_dump(ptr noundef nonnull %call2)
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call2, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !317
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #22
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #22, !srcloc !318
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !303

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #22
  br label %sock_put.exit

if.then.i:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !319
  tail call void @sk_free(ptr noundef nonnull %call2) #22
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  %.call34 = select i1 %tobool35.not, i32 -4, i32 %call34
  br label %cleanup

error_put:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #24
  %46 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %module, align 4
  tail call void @module_put(ptr noundef %47) #22
  br label %error_unlock

error_unlock:                                     ; preds = %error_put, %if.end6.error_unlock_crit_edge, %if.end.error_unlock_crit_edge
  %ret.0 = phi i32 [ %call27, %error_put ], [ -16, %if.end.error_unlock_crit_edge ], [ -93, %if.end6.error_unlock_crit_edge ]
  %skc_refcnt.i79 = getelementptr inbounds %struct.sock_common, ptr %call2, i32 0, i32 19
  %call.i.i.i.i.i.i80 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i79, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !317
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i79, i32 1, i32 3, i32 1) #22
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i79, ptr %skc_refcnt.i79, i32 1, ptr elementtype(i32) %skc_refcnt.i79) #22, !srcloc !318
  %asmresult.i.i.i.i.i.i.i81 = extractvalue { i32, i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i81)
  %cmp.i.i.i.i82 = icmp eq i32 %asmresult.i.i.i.i.i.i.i81, 1
  br i1 %cmp.i.i.i.i82, label %if.then.i86, label %if.end5.i.i.i.i84

if.end5.i.i.i.i84:                                ; preds = %error_unlock
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i81)
  %.not.i.i.i.i83 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i81, 0
  br i1 %.not.i.i.i.i83, label %if.end5.i.i.i.i84.sock_put.exit87_crit_edge, label %if.then10.i.i.i.i85, !prof !303

if.end5.i.i.i.i84.sock_put.exit87_crit_edge:      ; preds = %if.end5.i.i.i.i84
  call void @__sanitizer_cov_trace_pc() #24
  br label %sock_put.exit87

if.then10.i.i.i.i85:                              ; preds = %if.end5.i.i.i.i84
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i79, i32 noundef 3) #22
  br label %sock_put.exit87

if.then.i86:                                      ; preds = %error_unlock
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !319
  tail call void @sk_free(ptr noundef nonnull %call2) #22
  br label %sock_put.exit87

sock_put.exit87:                                  ; preds = %if.then.i86, %if.then10.i.i.i.i85, %if.end5.i.i.i.i84.sock_put.exit87_crit_edge
  %49 = ptrtoint ptr %cb_mutex to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cb_mutex, align 8
  tail call void @mutex_unlock(ptr noundef %50) #22
  br label %error_free

error_free:                                       ; preds = %sock_put.exit87, %refcount_inc.exit.error_free_crit_edge
  %ret.1 = phi i32 [ %ret.0, %sock_put.exit87 ], [ -111, %refcount_inc.exit.error_free_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #22
  br label %cleanup

cleanup:                                          ; preds = %error_free, %sock_put.exit
  %retval.0 = phi i32 [ %ret.1, %error_free ], [ %.call34, %sock_put.exit ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @refcount_inc(ptr noundef %r) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #22
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r, ptr %r, i32 1, ptr elementtype(i32) %r) #22, !srcloc !315
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %entry.if.end15.sink.split.i.i_crit_edge, label %if.else.i.i, !prof !304

entry.if.end15.sink.split.i.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i

if.else.i.i:                                      ; preds = %entry
  %add.i.i = add i32 %asmresult.i.i.i.i, 1
  %1 = or i32 %add.i.i, %asmresult.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i, label %if.else.i.i.__refcount_inc.exit_crit_edge, label %if.else.i.i.if.end15.sink.split.i.i_crit_edge, !prof !303

if.else.i.i.if.end15.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i

if.else.i.i.__refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %__refcount_inc.exit

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i.if.end15.sink.split.i.i_crit_edge, %entry.if.end15.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %r, i32 noundef %.sink.i.i) #22
  br label %__refcount_inc.exit

__refcount_inc.exit:                              ; preds = %if.end15.sink.split.i.i, %if.else.i.i.__refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @netlink_lookup(ptr noundef %net, i32 noundef %protocol, i32 noundef %portid) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @nl_table, align 4
  %arrayidx = getelementptr %struct.netlink_table, ptr %0, i32 %protocol
  %1 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !312
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #22
  %call.i = tail call zeroext i1 @rcu_is_watching() #22
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #22
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call fastcc ptr @__netlink_lookup(ptr noundef %arrayidx, i32 noundef %portid, ptr noundef %net)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %rcu_read_lock.exit.if.end_crit_edge, label %if.then

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #22
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #22, !srcloc !315
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !304

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !303

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #22
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %rcu_read_lock.exit.if.end_crit_edge
  %call.i3 = tail call zeroext i1 @rcu_is_watching() #22
  br i1 %call.i3, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i6

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_unlock.exit

land.lhs.true.i6:                                 ; preds = %if.end
  %call1.i4 = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4)
  %tobool.not.i5 = icmp eq i32 %call1.i4, 0
  br i1 %tobool.not.i5, label %land.lhs.true.i6.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i8

land.lhs.true.i6.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_unlock.exit

land.lhs.true2.i8:                                ; preds = %land.lhs.true.i6
  %.b4.i7 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7, label %land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge, label %if.then.i9

land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_unlock.exit

if.then.i9:                                       ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #22
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i9, %land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i6.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !313
  %7 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i.i.i10 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i10 to ptr
  %preempt_count.i.i.i.i11 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i11, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i11, align 4
  tail call void @rcu_read_unlock_strict() #22
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #22
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netlink_dump(ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  %extack = alloca %struct.netlink_ext_ack, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack) #22
  %0 = call ptr @memset(ptr %extack, i32 0, i32 36)
  %cb_mutex = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 15
  %1 = ptrtoint ptr %cb_mutex to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cb_mutex, align 8
  tail call void @mutex_lock_nested(ptr noundef %2, i32 noundef 0) #22
  %cb_running = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 12
  %3 = ptrtoint ptr %cb_running to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cb_running, align 1, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.errout_skb_crit_edge, label %if.end

entry.errout_skb_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %errout_skb

if.end:                                           ; preds = %entry
  %sk_backlog = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog, i32 noundef 4) #22
  %5 = ptrtoint ptr %sk_backlog to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %sk_backlog, align 4
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 15
  %7 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sk_rcvbuf, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.not = icmp slt i32 %6, %8
  br i1 %cmp.not, label %if.end3, label %if.end.errout_skb_crit_edge

if.end.errout_skb_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %errout_skb

if.end3:                                          ; preds = %if.end
  %cb4 = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 14
  %min_dump_alloc = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 14, i32 9
  %9 = ptrtoint ptr %min_dump_alloc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %min_dump_alloc, align 4
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 3840)
  %max_recvmsg_len = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 9
  %12 = ptrtoint ptr %max_recvmsg_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_recvmsg_len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp6 = icmp ult i32 %11, %13
  br i1 %cmp6, label %if.end10, label %if.end3.if.end14_crit_edge

if.end3.if.end14_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end14

if.end10:                                         ; preds = %if.end3
  %call.i = tail call ptr @__alloc_skb(i32 noundef %13, i32 noundef 75968, i32 noundef 0, i32 noundef -1) #22
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.end10.if.end14_crit_edge, label %if.end10.if.end17_crit_edge

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end17

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end14

if.end14:                                         ; preds = %if.end10.if.end14_crit_edge, %if.end3.if.end14_crit_edge
  %call.i117 = tail call ptr @__alloc_skb(i32 noundef %11, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #22
  %tobool15.not = icmp eq ptr %call.i117, null
  br i1 %tobool15.not, label %if.end14.errout_skb_crit_edge, label %if.end14.if.end17_crit_edge

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end17

if.end14.errout_skb_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #24
  br label %errout_skb

if.end17:                                         ; preds = %if.end14.if.end17_crit_edge, %if.end10.if.end17_crit_edge
  %alloc_size.1141 = phi i32 [ %11, %if.end14.if.end17_crit_edge ], [ %13, %if.end10.if.end17_crit_edge ]
  %skb.1139 = phi ptr [ %call.i117, %if.end14.if.end17_crit_edge ], [ %call.i, %if.end10.if.end17_crit_edge ]
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1139, i32 0, i32 7
  %14 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.i.not.i = icmp eq i32 %15, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.end17.skb_tailroom.exit_crit_edge

if.end17.skb_tailroom.exit_crit_edge:             ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #24
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #24
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1139, i32 0, i32 17
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1139, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.end17.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %if.end17.skb_tailroom.exit_crit_edge ]
  %sub = sub i32 %cond.i, %alloc_size.1141
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1139, i32 0, i32 19
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 %sub
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i118 = getelementptr inbounds %struct.sk_buff, ptr %skb.1139, i32 0, i32 16
  %22 = ptrtoint ptr %tail.i118 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tail.i118, align 8
  %add.ptr1.i = getelementptr i8, ptr %23, i32 %sub
  store ptr %add.ptr1.i, ptr %tail.i118, align 8
  %24 = getelementptr inbounds %struct.sk_buff, ptr %skb.1139, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %cmp.not.i = icmp eq ptr %26, null
  br i1 %cmp.not.i, label %skb_tailroom.exit.if.end.i_crit_edge, label %do.end.i, !prof !303

skb_tailroom.exit.if.end.i_crit_edge:             ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i

do.end.i:                                         ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 387, i32 noundef 9, ptr noundef null) #22
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %skb_tailroom.exit.if.end.i_crit_edge
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %sk, ptr %24, align 4
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1139, i32 0, i32 4, i32 0, i32 1
  %28 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @netlink_skb_destructor, ptr %destructor.i, align 4
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1139, i32 0, i32 20
  %29 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %truesize.i, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr %sk_backlog, i32 1, i32 3, i32 1) #22
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog, ptr %sk_backlog, i32 %30, ptr elementtype(i32) %sk_backlog) #22, !srcloc !316
  %skc_prot.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %32 = ptrtoint ptr %skc_prot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %skc_prot.i.i.i, align 8
  %memory_allocated.i.i.i = getelementptr inbounds %struct.proto, ptr %33, i32 0, i32 32
  %34 = ptrtoint ptr %memory_allocated.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %memory_allocated.i.i.i, align 4
  %tobool.i.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.i.not.i.i, label %if.end.i.netlink_skb_set_owner_r.exit_crit_edge, label %if.end.i.i

if.end.i.netlink_skb_set_owner_r.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_skb_set_owner_r.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  %36 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %truesize.i, align 8
  %sk_forward_alloc.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %38 = ptrtoint ptr %sk_forward_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sk_forward_alloc.i.i, align 8
  %sub.i.i = sub i32 %39, %37
  store i32 %sub.i.i, ptr %sk_forward_alloc.i.i, align 8
  br label %netlink_skb_set_owner_r.exit

netlink_skb_set_owner_r.exit:                     ; preds = %if.end.i.i, %if.end.i.netlink_skb_set_owner_r.exit_crit_edge
  %dump_done_errno = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 13
  %40 = ptrtoint ptr %dump_done_errno to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dump_done_errno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp19 = icmp sgt i32 %41, 0
  br i1 %cmp19, label %if.end25, label %netlink_skb_set_owner_r.exit.lor.lhs.false_crit_edge

netlink_skb_set_owner_r.exit.lor.lhs.false_crit_edge: ; preds = %netlink_skb_set_owner_r.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %lor.lhs.false

if.end25:                                         ; preds = %netlink_skb_set_owner_r.exit
  %extack21 = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 14, i32 6
  %42 = ptrtoint ptr %extack21 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %extack, ptr %extack21, align 4
  %dump = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 14, i32 2
  %43 = ptrtoint ptr %dump to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dump, align 4
  %call22 = call i32 %44(ptr noundef nonnull %skb.1139, ptr noundef %cb4) #22
  %45 = ptrtoint ptr %dump_done_errno to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call22, ptr %dump_done_errno, align 4
  %46 = ptrtoint ptr %extack21 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %extack21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp27 = icmp sgt i32 %call22, 0
  br i1 %cmp27, label %if.end25.if.then31_crit_edge, label %if.end25.lor.lhs.false_crit_edge

if.end25.lor.lhs.false_crit_edge:                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #24
  br label %lor.lhs.false

if.end25.if.then31_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then31

lor.lhs.false:                                    ; preds = %if.end25.lor.lhs.false_crit_edge, %netlink_skb_set_owner_r.exit.lor.lhs.false_crit_edge
  %47 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.i.not.i120 = icmp eq i32 %48, 0
  br i1 %tobool.i.not.i120, label %skb_tailroom.exit128, label %lor.lhs.false.if.then31_crit_edge

lor.lhs.false.if.then31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then31

skb_tailroom.exit128:                             ; preds = %lor.lhs.false
  %end.i121 = getelementptr inbounds %struct.sk_buff, ptr %skb.1139, i32 0, i32 17
  %49 = ptrtoint ptr %end.i121 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %end.i121, align 4
  %51 = ptrtoint ptr %tail.i118 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tail.i118, align 8
  %sub.ptr.lhs.cast.i123 = ptrtoint ptr %50 to i32
  %sub.ptr.rhs.cast.i124 = ptrtoint ptr %52 to i32
  %sub.ptr.sub.i125 = sub i32 %sub.ptr.lhs.cast.i123, %sub.ptr.rhs.cast.i124
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i125)
  %cmp30 = icmp slt i32 %sub.ptr.sub.i125, 20
  br i1 %cmp30, label %skb_tailroom.exit128.if.then31_crit_edge, label %skb_tailroom.exit.i.i.i

skb_tailroom.exit128.if.then31_crit_edge:         ; preds = %skb_tailroom.exit128
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then31

if.then31:                                        ; preds = %skb_tailroom.exit128.if.then31_crit_edge, %lor.lhs.false.if.then31_crit_edge, %if.end25.if.then31_crit_edge
  %53 = ptrtoint ptr %cb_mutex to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cb_mutex, align 8
  call void @mutex_unlock(ptr noundef %54) #22
  %call.i129 = call i32 @sk_filter_trim_cap(ptr noundef %sk, ptr noundef nonnull %skb.1139, i32 noundef 1) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %tobool34.not = icmp eq i32 %call.i129, 0
  br i1 %tobool34.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #24
  call void @kfree_skb_reason(ptr noundef nonnull %skb.1139, i32 noundef 0) #22
  br label %cleanup

if.else:                                          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #24
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %55 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %skc_net.i.i, align 4
  call fastcc void @netlink_deliver_tap(ptr noundef %56, ptr noundef nonnull %skb.1139) #22
  %sk_receive_queue.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  call void @skb_queue_tail(ptr noundef %sk_receive_queue.i, ptr noundef nonnull %skb.1139) #22
  %sk_data_ready.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 77
  %57 = ptrtoint ptr %sk_data_ready.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %sk_data_ready.i, align 8
  call void %58(ptr noundef %sk) #22
  br label %cleanup

skb_tailroom.exit.i.i.i:                          ; preds = %skb_tailroom.exit128
  %answer_flags.i = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 14, i32 8
  %59 = ptrtoint ptr %answer_flags.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %answer_flags.i, align 2
  %61 = ptrtoint ptr %end.i121 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %end.i121, align 4
  %63 = ptrtoint ptr %tail.i118 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tail.i118, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %62 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %64 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.ptr.sub.i.i.i.i, 20
  br i1 %cmp.i.i.i, label %skb_tailroom.exit.i.i.i.netlink_dump_done.exit_crit_edge, label %nlmsg_put_answer.exit.i, !prof !304

skb_tailroom.exit.i.i.i.netlink_dump_done.exit_crit_edge: ; preds = %skb_tailroom.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_dump_done.exit

nlmsg_put_answer.exit.i:                          ; preds = %skb_tailroom.exit.i.i.i
  %65 = or i16 %60, 2
  %nlh.i.i = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 14, i32 1
  %66 = ptrtoint ptr %nlh.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %nlh.i.i, align 4
  %nlmsg_seq.i.i = getelementptr inbounds %struct.nlmsghdr, ptr %67, i32 0, i32 3
  %68 = ptrtoint ptr %nlmsg_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nlmsg_seq.i.i, align 4
  %70 = ptrtoint ptr %cb4 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cb4, align 4
  %portid.i.i = getelementptr inbounds %struct.sk_buff, ptr %71, i32 0, i32 3, i32 12
  %72 = ptrtoint ptr %portid.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %portid.i.i, align 4
  %call1.i.i.i.i = call ptr @skb_put(ptr noundef nonnull %skb.1139, i32 noundef 20) #22
  %nlmsg_type.i.i.i.i = getelementptr inbounds %struct.nlmsghdr, ptr %call1.i.i.i.i, i32 0, i32 1
  %74 = ptrtoint ptr %nlmsg_type.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 3, ptr %nlmsg_type.i.i.i.i, align 4
  %75 = ptrtoint ptr %call1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 20, ptr %call1.i.i.i.i, align 4
  %nlmsg_flags.i.i.i.i = getelementptr inbounds %struct.nlmsghdr, ptr %call1.i.i.i.i, i32 0, i32 2
  %76 = ptrtoint ptr %nlmsg_flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %65, ptr %nlmsg_flags.i.i.i.i, align 2
  %nlmsg_pid.i.i.i.i = getelementptr inbounds %struct.nlmsghdr, ptr %call1.i.i.i.i, i32 0, i32 4
  %77 = ptrtoint ptr %nlmsg_pid.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %73, ptr %nlmsg_pid.i.i.i.i, align 4
  %nlmsg_seq.i.i.i.i = getelementptr inbounds %struct.nlmsghdr, ptr %call1.i.i.i.i, i32 0, i32 3
  %78 = ptrtoint ptr %nlmsg_seq.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %69, ptr %nlmsg_seq.i.i.i.i, align 4
  %tobool.not.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool.not.i, label %nlmsg_put_answer.exit.i.netlink_dump_done.exit_crit_edge, label %if.end23.i, !prof !304

nlmsg_put_answer.exit.i.netlink_dump_done.exit_crit_edge: ; preds = %nlmsg_put_answer.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_dump_done.exit

if.end23.i:                                       ; preds = %nlmsg_put_answer.exit.i
  %prev_seq.i.i = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 14, i32 10
  %79 = ptrtoint ptr %prev_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %prev_seq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i.i = icmp eq i32 %80, 0
  br i1 %tobool.not.i.i, label %if.end23.i.nl_dump_check_consistent.exit.i_crit_edge, label %land.lhs.true.i.i

if.end23.i.nl_dump_check_consistent.exit.i_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %nl_dump_check_consistent.exit.i

land.lhs.true.i.i:                                ; preds = %if.end23.i
  %seq.i.i = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 14, i32 11
  %81 = ptrtoint ptr %seq.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %seq.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %80)
  %cmp.not.i.i = icmp eq i32 %82, %80
  br i1 %cmp.not.i.i, label %land.lhs.true.i.i.nl_dump_check_consistent.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.nl_dump_check_consistent.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %nl_dump_check_consistent.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %83 = or i16 %60, 18
  %84 = ptrtoint ptr %nlmsg_flags.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %nlmsg_flags.i.i.i.i, align 2
  br label %nl_dump_check_consistent.exit.i

nl_dump_check_consistent.exit.i:                  ; preds = %if.then.i.i, %land.lhs.true.i.i.nl_dump_check_consistent.exit.i_crit_edge, %if.end23.i.nl_dump_check_consistent.exit.i_crit_edge
  %seq3.i.i = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 14, i32 11
  %85 = ptrtoint ptr %seq3.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %seq3.i.i, align 4
  %87 = ptrtoint ptr %prev_seq.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %prev_seq.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i.i.i, i32 16
  %88 = ptrtoint ptr %dump_done_errno to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dump_done_errno, align 4
  %90 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 %89, ptr %add.ptr.i.i, align 1
  %91 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %extack, align 4
  %tobool25.not.i = icmp eq ptr %92, null
  br i1 %tobool25.not.i, label %nl_dump_check_consistent.exit.i.if.end42_crit_edge, label %land.lhs.true.i

nl_dump_check_consistent.exit.i.if.end42_crit_edge: ; preds = %nl_dump_check_consistent.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end42

land.lhs.true.i:                                  ; preds = %nl_dump_check_consistent.exit.i
  %flags.i = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 4
  %93 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %94, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool26.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool26.not.i, label %land.lhs.true.i.if.end42_crit_edge, label %if.then27.i

land.lhs.true.i.if.end42_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end42

if.then27.i:                                      ; preds = %land.lhs.true.i
  %95 = ptrtoint ptr %nlmsg_flags.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %nlmsg_flags.i.i.i.i, align 2
  %97 = or i16 %96, 512
  store i16 %97, ptr %nlmsg_flags.i.i.i.i, align 2
  %call.i.i131 = call i32 @strlen(ptr noundef nonnull %92) #25
  %add.i.i = add i32 %call.i.i131, 1
  %call1.i.i = call i32 @nla_put(ptr noundef nonnull %skb.1139, i32 noundef 1, i32 noundef %add.i.i, ptr noundef nonnull %92) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool33.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool33.not.i, label %if.then34.i, label %if.then27.i.if.end42_crit_edge

if.then27.i.if.end42_crit_edge:                   ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end42

if.then34.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #24
  %98 = ptrtoint ptr %tail.i118 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %tail.i118, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %99 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call1.i.i.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %100 = ptrtoint ptr %call1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %sub.ptr.sub.i.i, ptr %call1.i.i.i.i, align 4
  br label %if.end42

netlink_dump_done.exit:                           ; preds = %nlmsg_put_answer.exit.i.netlink_dump_done.exit_crit_edge, %skb_tailroom.exit.i.i.i.netlink_dump_done.exit_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2197, i32 noundef 9, ptr noundef null) #22
  br label %errout_skb

if.end42:                                         ; preds = %if.then34.i, %if.then27.i.if.end42_crit_edge, %land.lhs.true.i.if.end42_crit_edge, %nl_dump_check_consistent.exit.i.if.end42_crit_edge
  %call.i132 = call i32 @sk_filter_trim_cap(ptr noundef %sk, ptr noundef nonnull %skb.1139, i32 noundef 1) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %tobool44.not = icmp eq i32 %call.i132, 0
  br i1 %tobool44.not, label %if.else46, label %if.then45

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #24
  call void @kfree_skb_reason(ptr noundef nonnull %skb.1139, i32 noundef 0) #22
  br label %if.end48

if.else46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #24
  %call47 = call fastcc i32 @__netlink_sendskb(ptr noundef %sk, ptr noundef nonnull %skb.1139)
  br label %if.end48

if.end48:                                         ; preds = %if.else46, %if.then45
  %done = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 14, i32 3
  %101 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %done, align 4
  %tobool49.not = icmp eq ptr %102, null
  br i1 %tobool49.not, label %if.end48.if.end53_crit_edge, label %if.then50

if.end48.if.end53_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end53

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #24
  %call52 = call i32 %102(ptr noundef %cb4) #22
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end48.if.end53_crit_edge
  %103 = ptrtoint ptr %cb_running to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %cb_running, align 1
  %module55 = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 14, i32 5
  %104 = ptrtoint ptr %module55 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %module55, align 4
  %106 = ptrtoint ptr %cb4 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %cb4, align 4
  %108 = ptrtoint ptr %cb_mutex to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cb_mutex, align 8
  call void @mutex_unlock(ptr noundef %109) #22
  call void @module_put(ptr noundef %105) #22
  call void @consume_skb(ptr noundef %107) #22
  br label %cleanup

errout_skb:                                       ; preds = %netlink_dump_done.exit, %if.end14.errout_skb_crit_edge, %if.end.errout_skb_crit_edge, %entry.errout_skb_crit_edge
  %skb.2 = phi ptr [ null, %if.end.errout_skb_crit_edge ], [ %skb.1139, %netlink_dump_done.exit ], [ null, %if.end14.errout_skb_crit_edge ], [ null, %entry.errout_skb_crit_edge ]
  %err.0 = phi i32 [ -105, %if.end.errout_skb_crit_edge ], [ -105, %netlink_dump_done.exit ], [ -105, %if.end14.errout_skb_crit_edge ], [ -22, %entry.errout_skb_crit_edge ]
  %110 = ptrtoint ptr %cb_mutex to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cb_mutex, align 8
  call void @mutex_unlock(ptr noundef %111) #22
  call void @kfree_skb_reason(ptr noundef %skb.2, i32 noundef 0) #22
  br label %cleanup

cleanup:                                          ; preds = %errout_skb, %if.end53, %if.else, %if.then35
  %retval.0 = phi i32 [ %err.0, %errout_skb ], [ 0, %if.end53 ], [ 0, %if.else ], [ 0, %if.then35 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack) #22
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netlink_ack(ptr nocapture noundef readonly %in_skb, ptr noundef %nlh, i32 noundef %err, ptr noundef %extack) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 3, i32 24
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 8
  %flags1 = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags1, align 4
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %tobool3.not = icmp eq ptr %extack, null
  %or.cond = or i1 %tobool3.not, %tobool.not
  br i1 %or.cond, label %if.end.thread, label %land.lhs.true4

land.lhs.true4:                                   ; preds = %entry
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %extack, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %land.lhs.true4.if.end_crit_edge, label %if.then

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #24
  %call7 = tail call i32 @strlen(ptr noundef nonnull %5) #26
  %sub.i = add i32 %call7, 8
  %and.i = and i32 %sub.i, -4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true4.if.end_crit_edge
  %tlvlen.0 = phi i32 [ %and.i, %if.then ], [ 0, %land.lhs.true4.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool10.not = icmp eq i32 %err, 0
  br i1 %tobool10.not, label %land.lhs.true33.critedge, label %if.end.land.lhs.true11_crit_edge

if.end.land.lhs.true11_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %land.lhs.true11

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool10.not348 = icmp eq i32 %err, 0
  br i1 %tobool10.not348, label %if.end.thread.if.end53_crit_edge, label %if.end.thread.land.lhs.true11_crit_edge

if.end.thread.land.lhs.true11_crit_edge:          ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #24
  br label %land.lhs.true11

if.end.thread.if.end53_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end53

land.lhs.true11:                                  ; preds = %if.end.thread.land.lhs.true11_crit_edge, %if.end.land.lhs.true11_crit_edge
  %tlvlen.0349 = phi i32 [ 0, %if.end.thread.land.lhs.true11_crit_edge ], [ %tlvlen.0, %if.end.land.lhs.true11_crit_edge ]
  %and13 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.then15, label %land.lhs.true11.if.end18_crit_edge

land.lhs.true11.if.end18_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end18

if.then15:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #24
  %6 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nlh, align 4
  %add17 = add i32 %7, 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %land.lhs.true11.if.end18_crit_edge
  %flags.0 = phi i32 [ 0, %if.then15 ], [ 256, %land.lhs.true11.if.end18_crit_edge ]
  %payload.0 = phi i32 [ %add17, %if.then15 ], [ 20, %land.lhs.true11.if.end18_crit_edge ]
  br i1 %or.cond, label %if.end18.if.end53_crit_edge, label %land.lhs.true33.thread

if.end18.if.end53_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end53

land.lhs.true33.critedge:                         ; preds = %if.end
  %cookie_len = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 4
  %8 = ptrtoint ptr %cookie_len to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cookie_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool34.not = icmp eq i8 %9, 0
  br i1 %tobool34.not, label %land.lhs.true33.critedge.if.end53_crit_edge, label %if.then35

land.lhs.true33.critedge.if.end53_crit_edge:      ; preds = %land.lhs.true33.critedge
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end53

land.lhs.true33.thread:                           ; preds = %if.end18
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %10 = ptrtoint ptr %bad_attr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bad_attr, align 4
  %tobool25.not = icmp eq ptr %11, null
  %add28 = add i32 %tlvlen.0349, 8
  %spec.select330 = select i1 %tobool25.not, i32 %tlvlen.0349, i32 %add28
  %cookie_len377 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 4
  %12 = ptrtoint ptr %cookie_len377 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cookie_len377, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool34.not378 = icmp eq i8 %13, 0
  %conv389 = zext i8 %13 to i32
  %sub.i315390 = add nuw nsw i32 %conv389, 7
  %and.i316391 = and i32 %sub.i315390, 508
  %add39392 = select i1 %tobool34.not378, i32 0, i32 %and.i316391
  %tlvlen.2371 = add i32 %spec.select330, %add39392
  %policy = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %14 = ptrtoint ptr %policy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %policy, align 4
  %tobool48.not = icmp eq ptr %15, null
  br i1 %tobool48.not, label %land.lhs.true33.thread.if.end53_crit_edge, label %if.then49

land.lhs.true33.thread.if.end53_crit_edge:        ; preds = %land.lhs.true33.thread
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end53

if.then35:                                        ; preds = %land.lhs.true33.critedge
  call void @__sanitizer_cov_trace_pc() #24
  %conv = zext i8 %9 to i32
  %sub.i315 = add nuw nsw i32 %conv, 7
  %and.i316 = and i32 %sub.i315, 508
  %add39 = add i32 %and.i316, %tlvlen.0
  br label %if.end53

if.then49:                                        ; preds = %land.lhs.true33.thread
  call void @__sanitizer_cov_trace_pc() #24
  %call51 = tail call i32 @netlink_policy_dump_attr_size_estimate(ptr noundef nonnull %15) #22
  %add52 = add i32 %call51, %tlvlen.2371
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %if.then35, %land.lhs.true33.thread.if.end53_crit_edge, %land.lhs.true33.critedge.if.end53_crit_edge, %if.end18.if.end53_crit_edge, %if.end.thread.if.end53_crit_edge
  %payload.0328336367 = phi i32 [ %payload.0, %if.then49 ], [ %payload.0, %land.lhs.true33.thread.if.end53_crit_edge ], [ 20, %if.then35 ], [ 20, %if.end.thread.if.end53_crit_edge ], [ %payload.0, %if.end18.if.end53_crit_edge ], [ 20, %land.lhs.true33.critedge.if.end53_crit_edge ]
  %flags.0327337366 = phi i32 [ %flags.0, %if.then49 ], [ %flags.0, %land.lhs.true33.thread.if.end53_crit_edge ], [ 256, %if.then35 ], [ 256, %if.end.thread.if.end53_crit_edge ], [ %flags.0, %if.end18.if.end53_crit_edge ], [ 256, %land.lhs.true33.critedge.if.end53_crit_edge ]
  %tobool10.not350365 = phi i1 [ false, %if.then49 ], [ false, %land.lhs.true33.thread.if.end53_crit_edge ], [ true, %if.then35 ], [ true, %if.end.thread.if.end53_crit_edge ], [ false, %if.end18.if.end53_crit_edge ], [ true, %land.lhs.true33.critedge.if.end53_crit_edge ]
  %tlvlen.3 = phi i32 [ %add52, %if.then49 ], [ %tlvlen.2371, %land.lhs.true33.thread.if.end53_crit_edge ], [ %add39, %if.then35 ], [ 0, %if.end.thread.if.end53_crit_edge ], [ %tlvlen.0349, %if.end18.if.end53_crit_edge ], [ %tlvlen.0, %land.lhs.true33.critedge.if.end53_crit_edge ]
  %add58 = add i32 %payload.0328336367, 19
  %sub.i.i = add i32 %add58, %tlvlen.3
  %and.i.i = and i32 %sub.i.i, -4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %and.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #22
  %tobool60.not = icmp eq ptr %call.i.i, null
  br i1 %tobool60.not, label %if.then61, label %if.end66

if.then61:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #24
  %16 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sk, align 8
  %sk_err = getelementptr inbounds %struct.sock, ptr %17, i32 0, i32 51
  %18 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 105, ptr %sk_err, align 4
  %19 = load ptr, ptr %sk, align 8
  tail call void @sk_error_report(ptr noundef %19) #22
  br label %cleanup

if.end66:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tlvlen.3)
  %tobool54.not = icmp eq i32 %tlvlen.3, 0
  %or56 = or i32 %flags.0327337366, 512
  %spec.select = select i1 %tobool54.not, i32 %flags.0327337366, i32 %or56
  %portid = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 3, i32 12
  %20 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %portid, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 3
  %22 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nlmsg_seq, align 4
  %add.i.i = add i32 %payload.0328336367, 16
  %and.i318 = and i32 %add58, -4
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %and.i318) #22
  %nlmsg_type.i = getelementptr inbounds %struct.nlmsghdr, ptr %call1.i, i32 0, i32 1
  %24 = ptrtoint ptr %nlmsg_type.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 2, ptr %nlmsg_type.i, align 4
  %25 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add.i.i, ptr %call1.i, align 4
  %conv2.i = trunc i32 %spec.select to i16
  %nlmsg_flags.i = getelementptr inbounds %struct.nlmsghdr, ptr %call1.i, i32 0, i32 2
  %26 = ptrtoint ptr %nlmsg_flags.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv2.i, ptr %nlmsg_flags.i, align 2
  %nlmsg_pid.i = getelementptr inbounds %struct.nlmsghdr, ptr %call1.i, i32 0, i32 4
  %27 = ptrtoint ptr %nlmsg_pid.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %21, ptr %nlmsg_pid.i, align 4
  %nlmsg_seq.i = getelementptr inbounds %struct.nlmsghdr, ptr %call1.i, i32 0, i32 3
  %28 = ptrtoint ptr %nlmsg_seq.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %23, ptr %nlmsg_seq.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i, i32 16
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %payload.0328336367
  %sub12.i = sub i32 %and.i318, %add.i.i
  %29 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub12.i)
  %add.ptr.i319 = getelementptr i8, ptr %call1.i, i32 16
  %30 = ptrtoint ptr %add.ptr.i319 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %err, ptr %add.ptr.i319, align 4
  %msg = getelementptr i8, ptr %call1.i, i32 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %payload.0328336367)
  %cmp = icmp ugt i32 %payload.0328336367, 20
  br i1 %cmp, label %cond.true, label %if.end66.cond.end_crit_edge

if.end66.cond.end_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #24
  br label %cond.end

cond.true:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #24
  %31 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nlh, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end66.cond.end_crit_edge
  %cond = phi i32 [ %32, %cond.true ], [ 16, %if.end66.cond.end_crit_edge ]
  %33 = call ptr @memcpy(ptr %msg, ptr %nlh, i32 %cond)
  br i1 %or.cond, label %cond.end.if.end226_crit_edge, label %if.then75

cond.end.if.end226_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end226

if.then75:                                        ; preds = %cond.end
  %34 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %extack, align 4
  %tobool77.not = icmp eq ptr %35, null
  br i1 %tobool77.not, label %if.then75.if.end103_crit_edge, label %if.then78

if.then75.if.end103_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end103

if.then78:                                        ; preds = %if.then75
  %call.i = tail call i32 @strlen(ptr noundef nonnull %35) #25
  %add.i = add i32 %call.i, 1
  %call1.i320 = tail call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef %add.i, ptr noundef nonnull %35) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i320)
  %tobool81.not = icmp eq i32 %call1.i320, 0
  br i1 %tobool81.not, label %if.then78.if.end103_crit_edge, label %do.end, !prof !303

if.then78.if.end103_crit_edge:                    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end103

do.end:                                           ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2445, i32 noundef 9, ptr noundef null) #22
  br label %if.end103

if.end103:                                        ; preds = %do.end, %if.then78.if.end103_crit_edge, %if.then75.if.end103_crit_edge
  br i1 %tobool10.not350365, label %if.end103.if.end181_crit_edge, label %land.lhs.true105

if.end103.if.end181_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end181

land.lhs.true105:                                 ; preds = %if.end103
  %bad_attr106 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %36 = ptrtoint ptr %bad_attr106 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bad_attr106, align 4
  %tobool107.not = icmp eq ptr %37, null
  br i1 %tobool107.not, label %land.lhs.true105.if.end181_crit_edge, label %land.lhs.true108

land.lhs.true105.if.end181_crit_edge:             ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end181

land.lhs.true108:                                 ; preds = %land.lhs.true105
  %data = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 19
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data, align 4
  %cmp111 = icmp ult ptr %37, %39
  br i1 %cmp111, label %land.lhs.true108.do.end132_crit_edge, label %lor.rhs

land.lhs.true108.do.end132_crit_edge:             ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end132

lor.rhs:                                          ; preds = %land.lhs.true108
  %len = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 6
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len, align 4
  %add.ptr = getelementptr i8, ptr %39, i32 %41
  %cmp115.not = icmp ult ptr %37, %add.ptr
  br i1 %cmp115.not, label %if.then147.critedge, label %lor.rhs.do.end132_crit_edge, !prof !303

lor.rhs.do.end132_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end132

do.end132:                                        ; preds = %lor.rhs.do.end132_crit_edge, %land.lhs.true108.do.end132_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2450, i32 noundef 9, ptr noundef null) #22
  br label %if.end181

if.then147.critedge:                              ; preds = %lor.rhs
  %sub.ptr.lhs.cast = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %nlh to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #22
  %42 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub.ptr.sub, ptr %tmp.i, align 4
  %call.i321 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i321)
  %tobool151.not = icmp eq i32 %call.i321, 0
  br i1 %tobool151.not, label %if.then147.critedge.if.end181_crit_edge, label %do.end167, !prof !303

if.then147.critedge.if.end181_crit_edge:          ; preds = %if.then147.critedge
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end181

do.end167:                                        ; preds = %if.then147.critedge
  call void @__sanitizer_cov_trace_pc() #24
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2453, i32 noundef 9, ptr noundef null) #22
  br label %if.end181

if.end181:                                        ; preds = %do.end167, %if.then147.critedge.if.end181_crit_edge, %do.end132, %land.lhs.true105.if.end181_crit_edge, %if.end103.if.end181_crit_edge
  %cookie_len182 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 4
  %43 = ptrtoint ptr %cookie_len182 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %cookie_len182, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool183.not = icmp eq i8 %44, 0
  br i1 %tobool183.not, label %if.end181.if.end219_crit_edge, label %if.then184

if.end181.if.end219_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end219

if.then184:                                       ; preds = %if.end181
  %conv187 = zext i8 %44 to i32
  %cookie = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 3
  %call188 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 3, i32 noundef %conv187, ptr noundef %cookie) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %if.then184.if.end219_crit_edge, label %do.end205, !prof !303

if.then184.if.end219_crit_edge:                   ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end219

do.end205:                                        ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #24
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2456, i32 noundef 9, ptr noundef null) #22
  br label %if.end219

if.end219:                                        ; preds = %do.end205, %if.then184.if.end219_crit_edge, %if.end181.if.end219_crit_edge
  %policy220 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %45 = ptrtoint ptr %policy220 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %policy220, align 4
  %tobool221.not = icmp eq ptr %46, null
  br i1 %tobool221.not, label %if.end219.if.end226_crit_edge, label %if.then222

if.end219.if.end226_crit_edge:                    ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end226

if.then222:                                       ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #24
  %call224 = call i32 @netlink_policy_dump_write_attr(ptr noundef nonnull %call.i.i, ptr noundef nonnull %46, i32 noundef 4) #22
  br label %if.end226

if.end226:                                        ; preds = %if.then222, %if.end219.if.end226_crit_edge, %cond.end.if.end226_crit_edge
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %47 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %48 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call1.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %49 = ptrtoint ptr %call1.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub.ptr.sub.i, ptr %call1.i, align 4
  %50 = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %53 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %portid, align 4
  %call.i322 = call i32 @netlink_unicast(ptr noundef %52, ptr noundef nonnull %call.i.i, i32 noundef %54, i32 noundef 64) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end226, %if.then61
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_policy_dump_attr_size_estimate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_policy_dump_write_attr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlink_rcv_skb(ptr noundef %skb, ptr nocapture noundef readonly %cb) #0 align 64 {
entry:
  %extack = alloca %struct.netlink_ext_ack, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %extack) #22
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp.not57 = icmp ult i32 %1, 16
  br i1 %cmp.not57, label %entry.cleanup35_crit_edge, label %while.body.lr.ph

entry.cleanup35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup35

while.body.lr.ph:                                 ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %while.body

while.body:                                       ; preds = %skip.while.body_crit_edge, %while.body.lr.ph
  %2 = phi i32 [ %1, %while.body.lr.ph ], [ %22, %skip.while.body_crit_edge ]
  %3 = call ptr @memset(ptr %extack, i32 0, i32 36)
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp2 = icmp ult i32 %7, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %7)
  %cmp5 = icmp ult i32 %2, %7
  %or.cond56 = select i1 %cmp2, i1 true, i1 %cmp5
  br i1 %or.cond56, label %while.body.cleanup35_crit_edge, label %if.end

while.body.cleanup35_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup35

if.end:                                           ; preds = %while.body
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nlmsg_flags, align 2
  %10 = and i16 %9, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  br i1 %tobool.not, label %if.end.ack_crit_edge, label %if.end7

if.end.ack_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %ack

if.end7:                                          ; preds = %if.end
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %nlmsg_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %12)
  %cmp9 = icmp ult i16 %12, 16
  br i1 %cmp9, label %if.end7.ack_crit_edge, label %if.end12

if.end7.ack_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #24
  br label %ack

if.end12:                                         ; preds = %if.end7
  %call13 = call i32 %cb(ptr noundef %skb, ptr noundef %5, ptr noundef nonnull %extack) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call13)
  %cmp14 = icmp eq i32 %call13, -4
  br i1 %cmp14, label %if.end12.skip_crit_edge, label %if.end12.ack_crit_edge

if.end12.ack_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #24
  br label %ack

if.end12.skip_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #24
  br label %skip

ack:                                              ; preds = %if.end12.ack_crit_edge, %if.end7.ack_crit_edge, %if.end.ack_crit_edge
  %err.0 = phi i32 [ 0, %if.end7.ack_crit_edge ], [ %call13, %if.end12.ack_crit_edge ], [ 0, %if.end.ack_crit_edge ]
  %13 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %nlmsg_flags, align 2
  %15 = and i16 %14, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool21.not = icmp eq i16 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool23.not = icmp eq i32 %err.0, 0
  %or.cond = select i1 %tobool21.not, i1 %tobool23.not, i1 false
  br i1 %or.cond, label %ack.skip_crit_edge, label %if.then24

ack.skip_crit_edge:                               ; preds = %ack
  call void @__sanitizer_cov_trace_pc() #24
  br label %skip

if.then24:                                        ; preds = %ack
  call void @__sanitizer_cov_trace_pc() #24
  call void @netlink_ack(ptr noundef %skb, ptr noundef %5, i32 noundef %err.0, ptr noundef nonnull %extack)
  br label %skip

skip:                                             ; preds = %if.then24, %ack.skip_crit_edge, %if.end12.skip_crit_edge
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %5, align 4
  %sub = add i32 %17, 3
  %and27 = and i32 %sub, -4
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %20 = call i32 @llvm.umin.i32(i32 %and27, i32 %19)
  %call34 = call ptr @skb_pull(ptr noundef %skb, i32 noundef %20) #22
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %cmp.not = icmp ult i32 %22, 16
  br i1 %cmp.not, label %skip.cleanup35_crit_edge, label %skip.while.body_crit_edge

skip.while.body_crit_edge:                        ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.body

skip.cleanup35_crit_edge:                         ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup35

cleanup35:                                        ; preds = %skip.cleanup35_crit_edge, %while.body.cleanup35_crit_edge, %entry.cleanup35_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %extack) #22
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nlmsg_notify(ptr noundef %sk, ptr noundef %skb, i32 noundef %portid, i32 noundef %group, i32 noundef %report, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %group)
  %tobool.not = icmp eq i32 %group, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %report)
  %tobool1.not = icmp eq i32 %report, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then2:                                         ; preds = %if.then
  %users = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #22
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #22, !srcloc !315
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then2.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !304

if.then2.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then2
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !303

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end_crit_edge:                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then2.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then2.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users, i32 noundef %.sink.i.i.i) #22
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %exclude_portid.0 = phi i32 [ 0, %if.then.if.end_crit_edge ], [ %portid, %if.else.i.i.i.if.end_crit_edge ], [ %portid, %if.end15.sink.split.i.i.i ]
  %dst_group.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %2 = ptrtoint ptr %dst_group.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %group, ptr %dst_group.i, align 8
  %call.i = tail call i32 @netlink_broadcast(ptr noundef %sk, ptr noundef %skb, i32 noundef %exclude_portid.0, i32 noundef %group, i32 noundef %flags) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %call.i)
  %cmp = icmp eq i32 %call.i, -3
  %spec.store.select = select i1 %cmp, i32 0, i32 %call.i
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %err.0 = phi i32 [ %spec.store.select, %if.end ], [ 0, %entry.if.end5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %report)
  %tobool6.not = icmp eq i32 %report, 0
  br i1 %tobool6.not, label %if.end5.if.end12_crit_edge, label %if.then7

if.end5.if.end12_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end12

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #24
  %call.i21 = tail call i32 @netlink_unicast(ptr noundef %sk, ptr noundef %skb, i32 noundef %portid, i32 noundef 64) #22
  %3 = tail call i32 @llvm.smin.i32(i32 %call.i21, i32 0) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool9.not = icmp eq i32 %err.0, 0
  %spec.select = select i1 %tobool9.not, i32 %3, i32 %err.0
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end5.if.end12_crit_edge
  %err.2 = phi i32 [ %spec.select, %if.then7 ], [ %err.0, %if.end5.if.end12_crit_edge ]
  ret i32 %err.2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bpf_iter_netlink(ptr nocapture noundef readnone %meta, ptr nocapture noundef readnone %sk) local_unnamed_addr #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlink_register_notifier(ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @netlink_chain, ptr noundef %nb) #22
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netlink_unregister_notifier(ptr noundef %nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @netlink_chain, ptr noundef %nb) #22
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @netlink_proto_init() #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @proto_register(ptr noundef nonnull @netlink_proto, i32 noundef 0) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.end:                                           ; preds = %entry
  store i32 0, ptr getelementptr inbounds (%struct.bpf_iter_reg, ptr @netlink_reg_info, i32 0, i32 8, i32 0, i32 2), align 4
  %call.i = tail call i32 @bpf_iter_reg_target(ptr noundef nonnull @netlink_reg_info) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %do.end, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

do.end:                                           ; preds = %if.end
  %call1.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 8576, i32 noundef 3520, i32 noundef 2) #28
  store ptr %call1.i.i.i.i, ptr @nl_table, align 4
  %tobool5.not = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool5.not, label %do.end.panic_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.panic_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %panic

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.026 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %0 = load ptr, ptr @nl_table, align 4
  %arrayidx = getelementptr %struct.netlink_table, ptr %0, i32 %i.026
  %call9 = tail call i32 @rhashtable_init(ptr noundef %arrayidx, ptr noundef nonnull @netlink_rhashtable_params) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %while.cond.preheader, label %for.inc

while.cond.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.026)
  %cmp1228 = icmp ugt i32 %i.026, 1
  br i1 %cmp1228, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.end

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dec29.in = phi i32 [ %dec29, %while.body.while.body_crit_edge ], [ %i.026, %while.cond.preheader.while.body_crit_edge ]
  %dec29 = add nsw i32 %dec29.in, -1
  %1 = load ptr, ptr @nl_table, align 4
  %arrayidx13 = getelementptr %struct.netlink_table, ptr %1, i32 %dec29
  tail call void @rhashtable_destroy(ptr noundef %arrayidx13) #22
  %cmp12 = icmp sgt i32 %dec29.in, 2
  br i1 %cmp12, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %2 = load ptr, ptr @nl_table, align 4
  tail call void @kfree(ptr noundef %2) #22
  br label %panic

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.026, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  tail call fastcc void @netlink_add_usersock_entry() #29
  %call16 = tail call i32 @sock_register(ptr noundef nonnull @netlink_family_ops) #22
  %call17 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @netlink_net_ops) #22
  %call18 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @netlink_tap_net_ops) #22
  tail call void @rtnetlink_init() #22
  br label %out

out:                                              ; preds = %for.end, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call.i, %if.end.out_crit_edge ], [ 0, %for.end ]
  ret i32 %err.0

panic:                                            ; preds = %while.end, %do.end.panic_crit_edge
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.76) #30
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_netlink_extack(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %__data_loc_msg = getelementptr inbounds %struct.trace_event_raw_netlink_extack, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %__data_loc_msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %__data_loc_msg, align 4
  %and = and i32 %3, 65535
  %add.ptr = getelementptr i8, ptr %1, i32 %and
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.9, ptr noundef %add.ptr) #22
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #10

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netlink_skb_destructor(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %head = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 8
  %call = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %1) #22
  br i1 %call, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end7

if.then:                                          ; preds = %entry
  %cloned = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %2 = ptrtoint ptr %cloned to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %cloned, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then.if.then4_crit_edge, label %lor.lhs.false

if.then.if.then4_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.then
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %3 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %end.i, align 4
  %dataref = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dataref, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !322
  tail call void @llvm.prefetch.p0(ptr %dataref, i32 1, i32 3, i32 1) #22
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dataref, ptr %dataref, i32 1, ptr elementtype(i32) %dataref) #22, !srcloc !323
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !324
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool3.not = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool3.not, label %lor.lhs.false.if.then4_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.then.if.then4_crit_edge
  %6 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head, align 8
  tail call void @vfree(ptr noundef %7) #22
  br label %if.end

if.end:                                           ; preds = %if.then4, %lor.lhs.false.if.end_crit_edge
  %8 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %head, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  %9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %cmp.not = icmp eq ptr %11, null
  br i1 %cmp.not, label %if.end7.if.end9_crit_edge, label %if.then8

if.end7.if.end9_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end9

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @sock_rfree(ptr noundef %skb) #22
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end7.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_rfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netlink_deliver_tap(ptr noundef %net, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @netlink_tap_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %1 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !312
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #22
  %call.i = tail call zeroext i1 @rcu_is_watching() #22
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #22
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %call, align 4
  %cmp.i.not = icmp eq ptr %6, %call
  br i1 %cmp.i.not, label %rcu_read_lock.exit.if.end_crit_edge, label %if.then, !prof !303

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #24
  tail call fastcc void @__netlink_deliver_tap(ptr noundef %skb, ptr noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.then, %rcu_read_lock.exit.if.end_crit_edge
  %call.i6 = tail call zeroext i1 @rcu_is_watching() #22
  br i1 %call.i6, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i9

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_unlock.exit

land.lhs.true.i9:                                 ; preds = %if.end
  %call1.i7 = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7)
  %tobool.not.i8 = icmp eq i32 %call1.i7, 0
  br i1 %tobool.not.i8, label %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i11

land.lhs.true.i9.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_unlock.exit

land.lhs.true2.i11:                               ; preds = %land.lhs.true.i9
  %.b4.i10 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i10, label %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, label %if.then.i12

land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_unlock.exit

if.then.i12:                                      ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #22
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i12, %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !313
  %7 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i.i.i13 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i13 to ptr
  %preempt_count.i.i.i.i14 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i14, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i14, align 4
  tail call void @rcu_read_unlock_strict() #22
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__netlink_deliver_tap(ptr noundef %skb, ptr noundef %nn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %sk_protocol.i = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 46
  %3 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %sk_protocol.i, align 4
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.84)
  switch i16 %4, label %entry.cleanup_crit_edge [
    i16 0, label %entry.do.body_crit_edge
    i16 2, label %entry.do.body_crit_edge38
    i16 4, label %entry.do.body_crit_edge39
    i16 5, label %entry.do.body_crit_edge40
    i16 6, label %entry.do.body_crit_edge41
    i16 10, label %entry.do.body_crit_edge42
    i16 12, label %entry.do.body_crit_edge43
    i16 16, label %entry.do.body_crit_edge44
  ]

entry.do.body_crit_edge44:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body

entry.do.body_crit_edge43:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body

entry.do.body_crit_edge42:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body

entry.do.body_crit_edge41:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body

entry.do.body_crit_edge40:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body

entry.do.body_crit_edge39:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body

entry.do.body_crit_edge38:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge38, %entry.do.body_crit_edge39, %entry.do.body_crit_edge40, %entry.do.body_crit_edge41, %entry.do.body_crit_edge42, %entry.do.body_crit_edge43, %entry.do.body_crit_edge44
  %call1 = tail call i32 @rcu_read_lock_any_held() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b34 = load i1, ptr @__netlink_deliver_tap.__warned, align 1
  br i1 %.b34, label %land.lhs.true4.do.end_crit_edge, label %if.then6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @__netlink_deliver_tap.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 322, ptr noundef nonnull @.str.16) #22
  br label %do.end

do.end:                                           ; preds = %if.then6, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %portid.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %dst_group.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %for.cond

for.cond:                                         ; preds = %__netlink_deliver_tap_skb.exit.for.cond_crit_edge, %do.end
  %.pn.in = phi ptr [ %nn, %do.end ], [ %.pn, %__netlink_deliver_tap_skb.exit.for.cond_crit_edge ]
  %6 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %nn
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %tmp.0 = getelementptr i8, ptr %.pn, i32 -8
  %7 = ptrtoint ptr %tmp.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tmp.0, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %0, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 127
  %11 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nd_net.i.i, align 4
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 9
  %13 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skc_net.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %12, %14
  br i1 %cmp.i.not.i, label %if.end.i, label %for.body.__netlink_deliver_tap_skb.exit_crit_edge

for.body.__netlink_deliver_tap_skb.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %__netlink_deliver_tap_skb.exit

if.end.i:                                         ; preds = %for.body
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.dev_hold.exit.i_crit_edge, label %do.body1.i.i

if.end.i.dev_hold.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %dev_hold.exit.i

do.body1.i.i:                                     ; preds = %if.end.i
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !333
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 118
  %16 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %24, %18
  %25 = inttoptr i32 %add.i.i to ptr
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add13.i.i = add i32 %27, 1
  store i32 %add13.i.i, ptr %25, align 4
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #22, !srcloc !334
  %and.i.i.i.i = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !304

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @warn_bogus_irq_restore() #22
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %15) #22, !srcloc !335
  br label %dev_hold.exit.i

dev_hold.exit.i:                                  ; preds = %do.end30.i.i, %if.end.i.dev_hold.exit.i_crit_edge
  %29 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i, align 8
  %call3.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %30) #22
  br i1 %call3.i, label %if.then4.i, label %if.end7.i

if.then4.i:                                       ; preds = %dev_hold.exit.i
  %31 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i.i.i, align 4
  %33 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef %sub.ptr.sub.i.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #22
  %cmp.i39.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp.i39.i, label %if.then4.i.if.end21.i_crit_edge, label %if.end7.thread56.i

if.then4.i.if.end21.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end21.i

if.end7.thread56.i:                               ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #24
  %35 = ptrtoint ptr %portid.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %portid.i.i, align 4
  %cb2.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3
  %portid3.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 12
  %37 = ptrtoint ptr %portid3.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %portid3.i.i, align 4
  %38 = ptrtoint ptr %dst_group.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dst_group.i.i, align 8
  %dst_group6.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 16
  %40 = ptrtoint ptr %dst_group6.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %dst_group6.i.i, align 8
  %41 = call ptr @memcpy(ptr %cb2.i.i, ptr %cb.i.i, i32 12)
  %42 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i.i, align 4
  %call.i1.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %sub.ptr.sub.i.i.i) #22
  %44 = call ptr @memcpy(ptr %call.i1.i.i, ptr %43, i32 %sub.ptr.sub.i.i.i)
  br label %if.then9.i

if.end7.i:                                        ; preds = %dev_hold.exit.i
  %call6.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #22
  %tobool8.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool8.not.i, label %if.end7.i.if.end21.i_crit_edge, label %if.end7.i.if.then9.i_crit_edge

if.end7.i.if.then9.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then9.i

if.end7.i.if.end21.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end21.i

if.then9.i:                                       ; preds = %if.end7.i.if.then9.i_crit_edge, %if.end7.thread56.i
  %nskb.059.i = phi ptr [ %call.i.i.i, %if.end7.thread56.i ], [ %call6.i, %if.end7.i.if.then9.i_crit_edge ]
  %45 = getelementptr inbounds %struct.anon.58, ptr %nskb.059.i, i32 0, i32 2
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %8, ptr %45, align 8
  %sk_protocol.i35 = getelementptr inbounds %struct.sock, ptr %10, i32 0, i32 46
  %47 = ptrtoint ptr %sk_protocol.i35 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %sk_protocol.i35, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %nskb.059.i, i32 0, i32 15, i32 0, i32 18
  %49 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %protocol.i, align 8
  %flags.i.i = getelementptr inbounds %struct.netlink_sock, ptr %10, i32 0, i32 4
  %50 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool11.not.i = icmp eq i32 %and.i.i, 0
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %nskb.059.i, i32 0, i32 15
  %52 = select i1 %tobool11.not.i, i16 -16384, i16 -8192
  %53 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  %bf.set.i = or i16 %52, %bf.clear.i
  store i16 %bf.set.i, ptr %pkt_type.i, align 8
  %data.i40.i = getelementptr inbounds %struct.sk_buff, ptr %nskb.059.i, i32 0, i32 19
  %54 = ptrtoint ptr %data.i40.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i40.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %nskb.059.i, i32 0, i32 18
  %56 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %55 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %57 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i41.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %nskb.059.i, i32 0, i32 15, i32 0, i32 20
  %58 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv.i41.i, ptr %network_header.i.i, align 4
  %call12.i = tail call i32 @dev_queue_xmit(ptr noundef nonnull %nskb.059.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp.i = icmp sgt i32 %call12.i, 0
  br i1 %cmp.i, label %if.then16.i, label %if.then9.i.if.end21.i_crit_edge, !prof !304

if.then9.i.if.end21.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end21.i

if.then16.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call12.i)
  %cmp17.not.i = icmp eq i32 %call12.i, 2
  %cond19.i = select i1 %cmp17.not.i, i32 0, i32 -105
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then16.i, %if.then9.i.if.end21.i_crit_edge, %if.end7.i.if.end21.i_crit_edge, %if.then4.i.if.end21.i_crit_edge
  %ret.0.i = phi i32 [ %cond19.i, %if.then16.i ], [ %call12.i, %if.then9.i.if.end21.i_crit_edge ], [ -12, %if.end7.i.if.end21.i_crit_edge ], [ -12, %if.then4.i.if.end21.i_crit_edge ]
  br i1 %tobool.not.i.i, label %if.end21.i.__netlink_deliver_tap_skb.exit_crit_edge, label %do.body1.i51.i

if.end21.i.__netlink_deliver_tap_skb.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %__netlink_deliver_tap_skb.exit

do.body1.i51.i:                                   ; preds = %if.end21.i
  %59 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !333
  %pcpu_refcnt.i43.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 118
  %60 = ptrtoint ptr %pcpu_refcnt.i43.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pcpu_refcnt.i43.i, align 4
  %62 = ptrtoint ptr %61 to i32
  %63 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i44.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i44.i to ptr
  %cpu.i45.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %cpu.i45.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cpu.i45.i, align 4
  %arrayidx.i46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %66
  %67 = ptrtoint ptr %arrayidx.i46.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i46.i, align 4
  %add.i47.i = add i32 %68, %62
  %69 = inttoptr i32 %add.i47.i to ptr
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %69, align 4
  %add13.i48.i = add i32 %71, -1
  store i32 %add13.i48.i, ptr %69, align 4
  %72 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #22, !srcloc !334
  %and.i.i.i49.i = and i32 %72, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i49.i)
  %tobool24.not.i50.i = icmp eq i32 %and.i.i.i49.i, 0
  br i1 %tobool24.not.i50.i, label %if.then28.i52.i, label %do.body1.i51.i.do.end30.i53.i_crit_edge, !prof !304

do.body1.i51.i.do.end30.i53.i_crit_edge:          ; preds = %do.body1.i51.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end30.i53.i

if.then28.i52.i:                                  ; preds = %do.body1.i51.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @warn_bogus_irq_restore() #22
  br label %do.end30.i53.i

do.end30.i53.i:                                   ; preds = %if.then28.i52.i, %do.body1.i51.i.do.end30.i53.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %59) #22, !srcloc !335
  br label %__netlink_deliver_tap_skb.exit

__netlink_deliver_tap_skb.exit:                   ; preds = %do.end30.i53.i, %if.end21.i.__netlink_deliver_tap_skb.exit_crit_edge, %for.body.__netlink_deliver_tap_skb.exit_crit_edge
  %retval.0.i36 = phi i32 [ 0, %for.body.__netlink_deliver_tap_skb.exit_crit_edge ], [ %ret.0.i, %if.end21.i.__netlink_deliver_tap_skb.exit_crit_edge ], [ %ret.0.i, %do.end30.i53.i ]
  %tobool15.not = icmp eq i32 %retval.0.i36, 0
  br i1 %tobool15.not, label %__netlink_deliver_tap_skb.exit.for.cond_crit_edge, label %__netlink_deliver_tap_skb.exit.cleanup_crit_edge, !prof !303

__netlink_deliver_tap_skb.exit.cleanup_crit_edge: ; preds = %__netlink_deliver_tap_skb.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

__netlink_deliver_tap_skb.exit.for.cond_crit_edge: ; preds = %__netlink_deliver_tap_skb.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond

cleanup:                                          ; preds = %__netlink_deliver_tap_skb.exit.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sk_filter_trim_cap(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @peernet_has_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @peernet2id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netlink_sock_destruct(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %cb_running = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 12
  %0 = ptrtoint ptr %cb_running to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cb_running, align 1, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end9

if.then:                                          ; preds = %entry
  %cb = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 14
  %done = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 14, i32 3
  %2 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %done, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  %call6 = tail call i32 %3(ptr noundef %cb) #22
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %module = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 14, i32 5
  %4 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %module, align 4
  tail call void @module_put(ptr noundef %5) #22
  %6 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cb, align 8
  tail call void @kfree_skb_reason(ptr noundef %7, i32 noundef 0) #22
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %sk_receive_queue) #22
  %8 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and1.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #24
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %sk) #27
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %sk_backlog = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog, i32 noundef 4) #22
  %11 = ptrtoint ptr %sk_backlog to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %sk_backlog, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool15.not = icmp eq i32 %12, 0
  br i1 %tobool15.not, label %if.end13.if.end33_crit_edge, label %do.end27, !prof !303

if.end13.if.end33_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end33

do.end27:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 412, i32 noundef 9, ptr noundef null) #22
  br label %if.end33

if.end33:                                         ; preds = %do.end27, %if.end13.if.end33_crit_edge
  %sk_wmem_alloc = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 23
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc, i32 noundef 4) #22
  %13 = ptrtoint ptr %sk_wmem_alloc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %sk_wmem_alloc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool43.not = icmp eq i32 %14, 0
  br i1 %tobool43.not, label %if.end33.if.end65_crit_edge, label %do.end59, !prof !303

if.end33.if.end65_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end65

do.end59:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 413, i32 noundef 9, ptr noundef null) #22
  br label %if.end65

if.end65:                                         ; preds = %do.end59, %if.end33.if.end65_crit_edge
  %groups = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 7
  %15 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %groups, align 8
  %tobool75.not = icmp eq ptr %16, null
  br i1 %tobool75.not, label %if.end65.cleanup_crit_edge, label %do.end91, !prof !303

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

do.end91:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 414, i32 noundef 9, ptr noundef null) #22
  br label %cleanup

cleanup:                                          ; preds = %do.end91, %if.end65.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlink_release(ptr nocapture noundef %sock) #0 align 64 {
entry:
  %n = alloca %struct.netlink_notify, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr @nl_table, align 4
  %sk_protocol.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 46
  %3 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %sk_protocol.i, align 4
  %idxprom.i = zext i16 %4 to i32
  %arrayidx.i152 = getelementptr %struct.netlink_table, ptr %2, i32 %idxprom.i
  %node.i = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 21
  %5 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !312
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #22
  %call.i.i.i.i = tail call zeroext i1 @rcu_is_watching() #22
  br i1 %call.i.i.i.i, label %if.end.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end.rcu_read_lock.exit.i.i.i_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end
  %call1.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b4.i.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i.i, label %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #22
  br label %rcu_read_lock.exit.i.i.i

rcu_read_lock.exit.i.i.i:                         ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rcu_read_lock.exit.i.i.i_crit_edge, %if.end.rcu_read_lock.exit.i.i.i_crit_edge
  %9 = ptrtoint ptr %arrayidx.i152 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx.i152, align 4
  %call.i.i47.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %arrayidx.i152) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i47.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i47.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %rcu_read_lock.exit.i.i.i.do.end10.i.i.i_crit_edge

rcu_read_lock.exit.i.i.i.do.end10.i.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end10.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %rcu_read_lock.exit.i.i.i
  %call3.i.i.i = tail call i32 @rcu_read_lock_held() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i.do.end10.i.i.i_crit_edge

lor.lhs.false.i.i.i.do.end10.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end10.i.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %call5.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %land.lhs.true.i.i.i.do.end10.i.i.i_crit_edge, label %land.lhs.true7.i.i.i

land.lhs.true.i.i.i.do.end10.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end10.i.i.i

land.lhs.true7.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b2.i.i.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i.i.i, label %land.lhs.true7.i.i.i.do.end10.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true7.i.i.i.do.end10.i.i.i_crit_edge:    ; preds = %land.lhs.true7.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end10.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true7.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 1076, ptr noundef nonnull @.str.4) #22
  br label %do.end10.i.i.i

do.end10.i.i.i:                                   ; preds = %if.then.i.i.i, %land.lhs.true7.i.i.i.do.end10.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end10.i.i.i_crit_edge, %lor.lhs.false.i.i.i.do.end10.i.i.i_crit_edge, %rcu_read_lock.exit.i.i.i.do.end10.i.i.i_crit_edge
  %head_offset.i.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %arrayidx.i152, i32 0, i32 3, i32 3
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %do.end33.i.i.i.while.cond.i.i.i_crit_edge, %do.end10.i.i.i
  %tbl.0.i.i.i = phi ptr [ %10, %do.end10.i.i.i ], [ %46, %do.end33.i.i.i.while.cond.i.i.i_crit_edge ]
  %11 = ptrtoint ptr %head_offset.i.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %head_offset.i.i.i.i.i.i, align 2
  %conv.i.i.i.i.i.i = zext i16 %12 to i32
  %idx.neg.i.i.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i.i.i
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %node.i, i32 %idx.neg.i.i.i.i.i.i
  %hash_rnd.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i.i.i, align 8
  %skc_net.i.i.i = getelementptr inbounds %struct.sock_common, ptr %add.ptr.i.i.i.i.i.i, i32 0, i32 9
  %15 = ptrtoint ptr %skc_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skc_net.i.i.i, align 4
  %portid.i.i = getelementptr inbounds %struct.netlink_sock, ptr %add.ptr.i.i.i.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %portid.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %portid.i.i, align 8
  %add1.i.i.i = add i32 %14, -559038729
  %add33.i.i.i = add i32 %18, %add1.i.i.i
  %19 = ptrtoint ptr %16 to i32
  %add36.i.i.i = add i32 %add1.i.i.i, %19
  %xor37.i.i.i = xor i32 %add33.i.i.i, %add1.i.i.i
  %or.i140.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add33.i.i.i, i32 %add33.i.i.i, i32 14) #22
  %sub39.i.i.i = sub i32 %xor37.i.i.i, %or.i140.i.i.i
  %xor40.i.i.i = xor i32 %sub39.i.i.i, %add36.i.i.i
  %or.i141.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i, i32 %sub39.i.i.i, i32 11) #22
  %sub42.i.i.i = sub i32 %xor40.i.i.i, %or.i141.i.i.i
  %xor43.i.i.i = xor i32 %sub42.i.i.i, %add33.i.i.i
  %or.i142.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i, i32 %sub42.i.i.i, i32 25) #22
  %sub45.i.i.i = sub i32 %xor43.i.i.i, %or.i142.i.i.i
  %xor46.i.i.i = xor i32 %sub45.i.i.i, %sub39.i.i.i
  %or.i143.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i, i32 %sub45.i.i.i, i32 16) #22
  %sub48.i.i.i = sub i32 %xor46.i.i.i, %or.i143.i.i.i
  %xor49.i.i.i = xor i32 %sub48.i.i.i, %sub42.i.i.i
  %or.i144.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i, i32 %sub48.i.i.i, i32 4) #22
  %sub51.i.i.i = sub i32 %xor49.i.i.i, %or.i144.i.i.i
  %xor52.i.i.i = xor i32 %sub51.i.i.i, %sub45.i.i.i
  %or.i145.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i, i32 %sub51.i.i.i, i32 14) #22
  %sub54.i.i.i = sub i32 %xor52.i.i.i, %or.i145.i.i.i
  %xor55.i.i.i = xor i32 %sub54.i.i.i, %sub48.i.i.i
  %or.i146.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i, i32 %sub54.i.i.i, i32 24) #22
  %sub57.i.i.i = sub i32 %xor55.i.i.i, %or.i146.i.i.i
  %20 = ptrtoint ptr %tbl.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tbl.0.i.i.i, align 128
  %sub.i.i.i.i.i.i.i = add i32 %21, -1
  %and.i3.i.i.i.i.i.i = and i32 %sub57.i.i.i, %sub.i.i.i.i.i.i.i
  %nest.i.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %nest.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nest.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i3.i.i.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i3.i.i.i.i, label %cond.false.i5.i.i.i.i, label %cond.true.i4.i.i.i.i, !prof !303

cond.true.i4.i.i.i.i:                             ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %call.i.i.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i.i.i, i32 noundef %and.i3.i.i.i.i.i.i) #22
  br label %rht_bucket_var.exit.i.i.i.i

cond.false.i5.i.i.i.i:                            ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %arrayidx.i.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 8, i32 %and.i3.i.i.i.i.i.i
  br label %rht_bucket_var.exit.i.i.i.i

rht_bucket_var.exit.i.i.i.i:                      ; preds = %cond.false.i5.i.i.i.i, %cond.true.i4.i.i.i.i
  %cond.i6.i.i.i.i = phi ptr [ %call.i.i.i.i.i, %cond.true.i4.i.i.i.i ], [ %arrayidx.i.i.i.i.i, %cond.false.i5.i.i.i.i ]
  %tobool.not.i3.i.i.i = icmp eq ptr %cond.i6.i.i.i.i, null
  br i1 %tobool.not.i3.i.i.i, label %rht_bucket_var.exit.i.i.i.i.land.rhs.i.i.i_crit_edge, label %if.end.i.i.i.i

rht_bucket_var.exit.i.i.i.i.land.rhs.i.i.i_crit_edge: ; preds = %rht_bucket_var.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %land.rhs.i.i.i

if.end.i.i.i.i:                                   ; preds = %rht_bucket_var.exit.i.i.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i.i.i, ptr noundef nonnull %cond.i6.i.i.i.i) #22
  %call.i8.i.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i.i, i32 noundef %and.i3.i.i.i.i.i.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i.i.i)
  %tobool.not.i9.i.i.i.i = icmp eq i32 %call.i8.i.i.i.i, 0
  br i1 %tobool.not.i9.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %if.end.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge

if.end.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge:    ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rht_ptr.exit.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i
  %call1.i.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool2.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool2.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge, label %land.lhs.true3.i.i.i.i.i

land.lhs.true.i.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rht_ptr.exit.i.i.i.i

land.lhs.true3.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %.b7.i.i.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i.i.i, label %land.lhs.true3.i.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true3.i.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rht_ptr.exit.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true3.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 377, ptr noundef nonnull @.str.5) #22
  br label %rht_ptr.exit.i.i.i.i

rht_ptr.exit.i.i.i.i:                             ; preds = %if.then.i.i.i.i.i, %land.lhs.true3.i.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge, %if.end.i.i.i.i.rht_ptr.exit.i.i.i.i_crit_edge
  %24 = ptrtoint ptr %cond.i6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cond.i6.i.i.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  %and.i.i.i.i.i.i = and i32 %26, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  %27 = ptrtoint ptr %cond.i6.i.i.i.i to i32
  %or.i.i.i.i.i.i = or i32 %27, 1
  %cond.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 %or.i.i.i.i.i.i, i32 %and.i.i.i.i.i.i
  %and.i20.i.i.i.i = and i32 %cond.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i.i.i)
  %tobool.i.not21.i.i.i.i = icmp eq i32 %and.i20.i.i.i.i, 0
  br i1 %tobool.i.not21.i.i.i.i, label %for.body.preheader.i.i.i.i, label %rht_ptr.exit.i.i.i.i.unlocked.i.i.i.i_crit_edge

rht_ptr.exit.i.i.i.i.unlocked.i.i.i.i_crit_edge:  ; preds = %rht_ptr.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %unlocked.i.i.i.i

for.body.preheader.i.i.i.i:                       ; preds = %rht_ptr.exit.i.i.i.i
  %28 = inttoptr i32 %cond.i.i.i.i.i.i to ptr
  %cmp.not.i21.i.i.i = icmp eq ptr %node.i, %28
  br i1 %cmp.not.i21.i.i.i, label %for.body.preheader.i.i.i.i.do.body54.i.i.i.i_crit_edge, label %for.body.preheader.i.i.i.i.do.body145.i.i.i.i_crit_edge

for.body.preheader.i.i.i.i.do.body145.i.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i.i
  br label %do.body145.i.i.i.i

for.body.preheader.i.i.i.i.do.body54.i.i.i.i_crit_edge: ; preds = %for.body.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body54.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %do.end156.i.i.i.i
  %cmp.not.i.i.i.i = icmp eq ptr %33, %node.i
  br i1 %cmp.not.i.i.i.i, label %for.body.i.i.i.i.do.body54.i.i.i.i_crit_edge, label %for.body.i.i.i.i.do.body145.i.i.i.i_crit_edge

for.body.i.i.i.i.do.body145.i.i.i.i_crit_edge:    ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body145.i.i.i.i

for.body.i.i.i.i.do.body54.i.i.i.i_crit_edge:     ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body54.i.i.i.i

do.body54.i.i.i.i:                                ; preds = %for.body.i.i.i.i.do.body54.i.i.i.i_crit_edge, %for.body.preheader.i.i.i.i.do.body54.i.i.i.i_crit_edge
  %pprev.023.i.lcssa.i.i.i = phi ptr [ %he.022.i22.i.i.i, %for.body.i.i.i.i.do.body54.i.i.i.i_crit_edge ], [ null, %for.body.preheader.i.i.i.i.do.body54.i.i.i.i_crit_edge ]
  %call55.i.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i.i, i32 noundef %and.i3.i.i.i.i.i.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i.i.i)
  %tobool56.not.i.i.i.i = icmp eq i32 %call55.i.i.i.i, 0
  br i1 %tobool56.not.i.i.i.i, label %land.lhs.true57.i.i.i.i, label %do.body54.i.i.i.i.do.end65.i.i.i.i_crit_edge

do.body54.i.i.i.i.do.end65.i.i.i.i_crit_edge:     ; preds = %do.body54.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end65.i.i.i.i

land.lhs.true57.i.i.i.i:                          ; preds = %do.body54.i.i.i.i
  %call58.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i.i.i)
  %tobool59.not.i.i.i.i = icmp eq i32 %call58.i.i.i.i, 0
  br i1 %tobool59.not.i.i.i.i, label %land.lhs.true57.i.i.i.i.do.end65.i.i.i.i_crit_edge, label %land.lhs.true60.i.i.i.i

land.lhs.true57.i.i.i.i.do.end65.i.i.i.i_crit_edge: ; preds = %land.lhs.true57.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end65.i.i.i.i

land.lhs.true60.i.i.i.i:                          ; preds = %land.lhs.true57.i.i.i.i
  %.b2.i.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.26, align 1
  br i1 %.b2.i.i.i.i, label %land.lhs.true60.i.i.i.i.do.end65.i.i.i.i_crit_edge, label %if.then62.i.i.i.i

land.lhs.true60.i.i.i.i.do.end65.i.i.i.i_crit_edge: ; preds = %land.lhs.true60.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end65.i.i.i.i

if.then62.i.i.i.i:                                ; preds = %land.lhs.true60.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.26, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 1032, ptr noundef nonnull @.str.5) #22
  br label %do.end65.i.i.i.i

do.end65.i.i.i.i:                                 ; preds = %if.then62.i.i.i.i, %land.lhs.true60.i.i.i.i.do.end65.i.i.i.i_crit_edge, %land.lhs.true57.i.i.i.i.do.end65.i.i.i.i_crit_edge, %do.body54.i.i.i.i.do.end65.i.i.i.i_crit_edge
  %29 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %node.i, align 4
  %tobool103.not.i.i.i.i = icmp eq ptr %pprev.023.i.lcssa.i.i.i, null
  br i1 %tobool103.not.i.i.i.i, label %if.else142.i.i.i.i, label %do.body105.i.i.i.i

do.body105.i.i.i.i:                               ; preds = %do.end65.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !336
  %31 = ptrtoint ptr %pprev.023.i.lcssa.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %30, ptr %pprev.023.i.lcssa.i.i.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i.i, ptr noundef nonnull %cond.i6.i.i.i.i) #22
  br label %if.then160.i.i.i.i

if.else142.i.i.i.i:                               ; preds = %do.end65.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i.i.i, ptr noundef nonnull %cond.i6.i.i.i.i, ptr noundef %30) #22
  br label %if.then160.i.i.i.i

do.body145.i.i.i.i:                               ; preds = %for.body.i.i.i.i.do.body145.i.i.i.i_crit_edge, %for.body.preheader.i.i.i.i.do.body145.i.i.i.i_crit_edge
  %he.022.i22.i.i.i = phi ptr [ %33, %for.body.i.i.i.i.do.body145.i.i.i.i_crit_edge ], [ %28, %for.body.preheader.i.i.i.i.do.body145.i.i.i.i_crit_edge ]
  %call146.i.i.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i.i.i, i32 noundef %and.i3.i.i.i.i.i.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i.i.i)
  %tobool147.not.i.i.i.i = icmp eq i32 %call146.i.i.i.i, 0
  br i1 %tobool147.not.i.i.i.i, label %land.lhs.true148.i.i.i.i, label %do.body145.i.i.i.i.do.end156.i.i.i.i_crit_edge

do.body145.i.i.i.i.do.end156.i.i.i.i_crit_edge:   ; preds = %do.body145.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end156.i.i.i.i

land.lhs.true148.i.i.i.i:                         ; preds = %do.body145.i.i.i.i
  %call149.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i.i.i)
  %tobool150.not.i.i.i.i = icmp eq i32 %call149.i.i.i.i, 0
  br i1 %tobool150.not.i.i.i.i, label %land.lhs.true148.i.i.i.i.do.end156.i.i.i.i_crit_edge, label %land.lhs.true151.i.i.i.i

land.lhs.true148.i.i.i.i.do.end156.i.i.i.i_crit_edge: ; preds = %land.lhs.true148.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end156.i.i.i.i

land.lhs.true151.i.i.i.i:                         ; preds = %land.lhs.true148.i.i.i.i
  %.b2281.i.i.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.28, align 1
  br i1 %.b2281.i.i.i.i, label %land.lhs.true151.i.i.i.i.do.end156.i.i.i.i_crit_edge, label %if.then153.i.i.i.i

land.lhs.true151.i.i.i.i.do.end156.i.i.i.i_crit_edge: ; preds = %land.lhs.true151.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end156.i.i.i.i

if.then153.i.i.i.i:                               ; preds = %land.lhs.true151.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.28, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 1004, ptr noundef nonnull @.str.5) #22
  br label %do.end156.i.i.i.i

do.end156.i.i.i.i:                                ; preds = %if.then153.i.i.i.i, %land.lhs.true151.i.i.i.i.do.end156.i.i.i.i_crit_edge, %land.lhs.true148.i.i.i.i.do.end156.i.i.i.i_crit_edge, %do.body145.i.i.i.i.do.end156.i.i.i.i_crit_edge
  %32 = ptrtoint ptr %he.022.i22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %he.022.i22.i.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  %and.i.i.i.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %for.body.i.i.i.i, label %do.end156.i.i.i.i.unlocked.i.i.i.i_crit_edge

do.end156.i.i.i.i.unlocked.i.i.i.i_crit_edge:     ; preds = %do.end156.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %unlocked.i.i.i.i

unlocked.i.i.i.i:                                 ; preds = %do.end156.i.i.i.i.unlocked.i.i.i.i_crit_edge, %rht_ptr.exit.i.i.i.i.unlocked.i.i.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i.i.i, ptr noundef nonnull %cond.i6.i.i.i.i) #22
  br label %land.rhs.i.i.i

if.then160.i.i.i.i:                               ; preds = %if.else142.i.i.i.i, %do.body105.i.i.i.i
  %nelems.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %arrayidx.i152, i32 0, i32 8
  %call.i.i.i.i.i48.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i.i.i, i32 1, i32 3, i32 1) #22
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i.i.i, ptr %nelems.i.i.i.i, i32 1, ptr elementtype(i32) %nelems.i.i.i.i) #22, !srcloc !337
  %automatic_shrinking.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %arrayidx.i152, i32 0, i32 3, i32 6
  %36 = ptrtoint ptr %automatic_shrinking.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %automatic_shrinking.i.i.i.i, align 2, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool161.not.i.i.i.i = icmp eq i8 %37, 0
  br i1 %tobool161.not.i.i.i.i, label %if.then160.i.i.i.i.while.end.i.i.i_crit_edge, label %land.rhs162.i.i.i.i

if.then160.i.i.i.i.while.end.i.i.i_crit_edge:     ; preds = %if.then160.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.end.i.i.i

land.rhs162.i.i.i.i:                              ; preds = %if.then160.i.i.i.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i.i.i, i32 noundef 4) #22
  %38 = ptrtoint ptr %nelems.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %nelems.i.i.i.i, align 4
  %40 = ptrtoint ptr %tbl.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tbl.0.i.i.i, align 128
  %mul.i.i.i.i.i = mul i32 %41, 3
  %div.i.i.i.i.i = udiv i32 %mul.i.i.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %div.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp ult i32 %39, %div.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i, label %rht_shrink_below_30.exit.i.i.i.i, label %land.rhs162.i.i.i.i.while.end.i.i.i_crit_edge

land.rhs162.i.i.i.i.while.end.i.i.i_crit_edge:    ; preds = %land.rhs162.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.end.i.i.i

rht_shrink_below_30.exit.i.i.i.i:                 ; preds = %land.rhs162.i.i.i.i
  %min_size.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %arrayidx.i152, i32 0, i32 3, i32 5
  %42 = ptrtoint ptr %min_size.i.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %min_size.i.i.i.i.i, align 4
  %conv.i11.i.i.i.i = zext i16 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %conv.i11.i.i.i.i)
  %cmp2.i.i.i.i.i = icmp ugt i32 %41, %conv.i11.i.i.i.i
  br i1 %cmp2.i.i.i.i.i, label %if.then168.i.i.i.i, label %rht_shrink_below_30.exit.i.i.i.i.while.end.i.i.i_crit_edge, !prof !304

rht_shrink_below_30.exit.i.i.i.i.while.end.i.i.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.end.i.i.i

if.then168.i.i.i.i:                               ; preds = %rht_shrink_below_30.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %run_work.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %arrayidx.i152, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %44 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %44, ptr noundef %run_work.i.i.i.i) #22
  br label %while.end.i.i.i

land.rhs.i.i.i:                                   ; preds = %unlocked.i.i.i.i, %rht_bucket_var.exit.i.i.i.i.land.rhs.i.i.i_crit_edge
  %future_tbl.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 5
  %45 = ptrtoint ptr %future_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %future_tbl.i.i.i, align 4
  %call20.i.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %arrayidx.i152) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i.i)
  %tobool21.not.i.i.i = icmp eq i32 %call20.i.i.i, 0
  br i1 %tobool21.not.i.i.i, label %lor.lhs.false22.i.i.i, label %land.rhs.i.i.i.do.end33.i.i.i_crit_edge

land.rhs.i.i.i.do.end33.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end33.i.i.i

lor.lhs.false22.i.i.i:                            ; preds = %land.rhs.i.i.i
  %call23.i.i.i = tail call i32 @rcu_read_lock_held() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %call23.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %land.lhs.true25.i.i.i, label %lor.lhs.false22.i.i.i.do.end33.i.i.i_crit_edge

lor.lhs.false22.i.i.i.do.end33.i.i.i_crit_edge:   ; preds = %lor.lhs.false22.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end33.i.i.i

land.lhs.true25.i.i.i:                            ; preds = %lor.lhs.false22.i.i.i
  %call26.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i.i)
  %tobool27.not.i.i.i = icmp eq i32 %call26.i.i.i, 0
  br i1 %tobool27.not.i.i.i, label %land.lhs.true25.i.i.i.do.end33.i.i.i_crit_edge, label %land.lhs.true28.i.i.i

land.lhs.true25.i.i.i.do.end33.i.i.i_crit_edge:   ; preds = %land.lhs.true25.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end33.i.i.i

land.lhs.true28.i.i.i:                            ; preds = %land.lhs.true25.i.i.i
  %.b401.i.i.i = load i1, ptr @__rhashtable_remove_fast.__warned.24, align 1
  br i1 %.b401.i.i.i, label %land.lhs.true28.i.i.i.do.end33.i.i.i_crit_edge, label %if.then30.i.i.i

land.lhs.true28.i.i.i.do.end33.i.i.i_crit_edge:   ; preds = %land.lhs.true28.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end33.i.i.i

if.then30.i.i.i:                                  ; preds = %land.lhs.true28.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @__rhashtable_remove_fast.__warned.24, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 1085, ptr noundef nonnull @.str.4) #22
  br label %do.end33.i.i.i

do.end33.i.i.i:                                   ; preds = %if.then30.i.i.i, %land.lhs.true28.i.i.i.do.end33.i.i.i_crit_edge, %land.lhs.true25.i.i.i.do.end33.i.i.i_crit_edge, %lor.lhs.false22.i.i.i.do.end33.i.i.i_crit_edge, %land.rhs.i.i.i.do.end33.i.i.i_crit_edge
  %tobool35.not.i.i.i = icmp eq ptr %46, null
  br i1 %tobool35.not.i.i.i, label %do.end33.i.i.i.while.end.i.i.i_crit_edge, label %do.end33.i.i.i.while.cond.i.i.i_crit_edge

do.end33.i.i.i.while.cond.i.i.i_crit_edge:        ; preds = %do.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.cond.i.i.i

do.end33.i.i.i.while.end.i.i.i_crit_edge:         ; preds = %do.end33.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %do.end33.i.i.i.while.end.i.i.i_crit_edge, %if.then168.i.i.i.i, %rht_shrink_below_30.exit.i.i.i.i.while.end.i.i.i_crit_edge, %land.rhs162.i.i.i.i.while.end.i.i.i_crit_edge, %if.then160.i.i.i.i.while.end.i.i.i_crit_edge
  %tobool.not.i = phi i1 [ true, %if.then168.i.i.i.i ], [ true, %rht_shrink_below_30.exit.i.i.i.i.while.end.i.i.i_crit_edge ], [ true, %land.rhs162.i.i.i.i.while.end.i.i.i_crit_edge ], [ true, %if.then160.i.i.i.i.while.end.i.i.i_crit_edge ], [ false, %do.end33.i.i.i.while.end.i.i.i_crit_edge ]
  %call.i4.i.i.i = tail call zeroext i1 @rcu_is_watching() #22
  br i1 %call.i4.i.i.i, label %while.end.i.i.i.rhashtable_remove_fast.exit.i_crit_edge, label %land.lhs.true.i7.i.i.i

while.end.i.i.i.rhashtable_remove_fast.exit.i_crit_edge: ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rhashtable_remove_fast.exit.i

land.lhs.true.i7.i.i.i:                           ; preds = %while.end.i.i.i
  %call1.i5.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i.i.i)
  %tobool.not.i6.i.i.i = icmp eq i32 %call1.i5.i.i.i, 0
  br i1 %tobool.not.i6.i.i.i, label %land.lhs.true.i7.i.i.i.rhashtable_remove_fast.exit.i_crit_edge, label %land.lhs.true2.i9.i.i.i

land.lhs.true.i7.i.i.i.rhashtable_remove_fast.exit.i_crit_edge: ; preds = %land.lhs.true.i7.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rhashtable_remove_fast.exit.i

land.lhs.true2.i9.i.i.i:                          ; preds = %land.lhs.true.i7.i.i.i
  %.b4.i8.i.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i.i.i, label %land.lhs.true2.i9.i.i.i.rhashtable_remove_fast.exit.i_crit_edge, label %if.then.i10.i.i.i

land.lhs.true2.i9.i.i.i.rhashtable_remove_fast.exit.i_crit_edge: ; preds = %land.lhs.true2.i9.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rhashtable_remove_fast.exit.i

if.then.i10.i.i.i:                                ; preds = %land.lhs.true2.i9.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #22
  br label %rhashtable_remove_fast.exit.i

rhashtable_remove_fast.exit.i:                    ; preds = %if.then.i10.i.i.i, %land.lhs.true2.i9.i.i.i.rhashtable_remove_fast.exit.i_crit_edge, %land.lhs.true.i7.i.i.i.rhashtable_remove_fast.exit.i_crit_edge, %while.end.i.i.i.rhashtable_remove_fast.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !313
  %47 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i.i.i11.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i11.i.i.i to ptr
  %preempt_count.i.i.i.i12.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i.i.i12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i.i.i12.i.i.i, align 4
  %sub.i.i.i.i.i.i = add i32 %50, -1
  store volatile i32 %sub.i.i.i.i.i.i, ptr %preempt_count.i.i.i.i12.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #22
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #22
  br i1 %tobool.not.i, label %if.then.i, label %rhashtable_remove_fast.exit.i.if.end23.i_crit_edge

rhashtable_remove_fast.exit.i.if.end23.i_crit_edge: ; preds = %rhashtable_remove_fast.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end23.i

if.then.i:                                        ; preds = %rhashtable_remove_fast.exit.i
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i49.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #22
  %51 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %skc_refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp.i = icmp eq i32 %52, 1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !304

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 616, i32 noundef 9, ptr noundef null) #22
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !317
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #22
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #22, !srcloc !318
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.i, label %if.end.i.if.end23.i_crit_edge, !prof !304

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end23.i

if.then3.i.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 4) #22
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then3.i.i.i.i, %if.end.i.if.end23.i_crit_edge, %rhashtable_remove_fast.exit.i.if.end23.i_crit_edge
  tail call void @netlink_table_grab() #22
  %subscriptions.i = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 5
  %54 = ptrtoint ptr %subscriptions.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %subscriptions.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool25.not.i = icmp eq i32 %55, 0
  br i1 %tobool25.not.i, label %if.end23.i.if.end27.i_crit_edge, label %if.then26.i

if.end23.i.if.end27.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end27.i

if.then26.i:                                      ; preds = %if.end23.i
  %56 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 7
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 7, i32 0, i32 1
  %59 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pprev2.i.i.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %58, ptr %60, align 4
  %tobool.not.i.i50.i = icmp eq ptr %58, null
  br i1 %tobool.not.i.i50.i, label %if.then26.i.__sk_del_bind_node.exit.i_crit_edge, label %do.body13.i.i.i

if.then26.i.__sk_del_bind_node.exit.i_crit_edge:  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %__sk_del_bind_node.exit.i

do.body13.i.i.i:                                  ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #24
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %58, i32 0, i32 1
  %62 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %60, ptr %pprev14.i.i.i, align 4
  br label %__sk_del_bind_node.exit.i

__sk_del_bind_node.exit.i:                        ; preds = %do.body13.i.i.i, %if.then26.i.__sk_del_bind_node.exit.i_crit_edge
  tail call fastcc void @netlink_update_listeners(ptr noundef %1) #22
  br label %if.end27.i

if.end27.i:                                       ; preds = %__sk_del_bind_node.exit.i, %if.end23.i.if.end27.i_crit_edge
  %63 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %sk_protocol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %64)
  %cmp29.i = icmp eq i16 %64, 16
  br i1 %cmp29.i, label %if.then31.i, label %if.end27.i.netlink_remove.exit_crit_edge

if.end27.i.netlink_remove.exit_crit_edge:         ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_remove.exit

if.then31.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #24
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @genl_sk_destructing_cnt, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr nonnull @genl_sk_destructing_cnt, i32 1, i32 3, i32 1) #22
  %65 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @genl_sk_destructing_cnt, ptr nonnull @genl_sk_destructing_cnt, i32 1, ptr nonnull elementtype(i32) @genl_sk_destructing_cnt) #22, !srcloc !316
  br label %netlink_remove.exit

netlink_remove.exit:                              ; preds = %if.then31.i, %if.end27.i.netlink_remove.exit_crit_edge
  tail call void @_raw_write_unlock_irq(ptr noundef nonnull @nl_table_lock) #22
  tail call void @__wake_up(ptr noundef nonnull @nl_table_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #22
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #22
  %66 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %or.i.i.i = or i32 %68, 1
  store i32 %or.i.i.i, ptr %66, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %69 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %sk_socket.i.i, align 8
  %70 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %70, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #22
  %netlink_unbind = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 19
  %72 = ptrtoint ptr %netlink_unbind to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %netlink_unbind, align 8
  %tobool2.not = icmp eq ptr %73, null
  br i1 %tobool2.not, label %netlink_remove.exit.if.end10_crit_edge, label %for.cond.preheader

netlink_remove.exit.if.end10_crit_edge:           ; preds = %netlink_remove.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end10

for.cond.preheader:                               ; preds = %netlink_remove.exit
  %ngroups = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 6
  %74 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ngroups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp171.not = icmp eq i32 %75, 0
  br i1 %cmp171.not, label %for.cond.preheader.if.end10_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end10_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end10

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %groups = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 7
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0172 = phi i32 [ 0, %for.body.lr.ph ], [ %inc.pre-phi, %for.inc.for.body_crit_edge ]
  %76 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %groups, align 8
  %div3.i = lshr i32 %i.0172, 5
  %arrayidx.i = getelementptr i32, ptr %77, i32 %div3.i
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.0172, 31
  %80 = shl nuw i32 1, %and.i
  %81 = and i32 %79, %80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool5.not = icmp eq i32 %81, 0
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %if.then6

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  %.pre = add nuw i32 %i.0172, 1
  br label %for.inc

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  %82 = ptrtoint ptr %netlink_unbind to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %netlink_unbind, align 8
  %84 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %skc_net.i, align 4
  %add = add nuw i32 %i.0172, 1
  tail call void %83(ptr noundef %85, i32 noundef %add) #22
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %for.body.for.inc_crit_edge
  %inc.pre-phi = phi i32 [ %.pre, %for.body.for.inc_crit_edge ], [ %add, %if.then6 ]
  %86 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ngroups, align 4
  %cmp = icmp ult i32 %inc.pre-phi, %87
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end10_crit_edge

for.inc.if.end10_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end10

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

if.end10:                                         ; preds = %for.inc.if.end10_crit_edge, %for.cond.preheader.if.end10_crit_edge, %netlink_remove.exit.if.end10_crit_edge
  %88 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %sk_protocol.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %89)
  %cmp11 = icmp eq i16 %89, 16
  br i1 %cmp11, label %land.lhs.true, label %if.end10.if.end17_crit_edge

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @genl_sk_destructing_cnt, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !322
  tail call void @llvm.prefetch.p0(ptr nonnull @genl_sk_destructing_cnt, i32 1, i32 3, i32 1) #22
  %90 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @genl_sk_destructing_cnt, ptr nonnull @genl_sk_destructing_cnt, i32 1, ptr nonnull elementtype(i32) @genl_sk_destructing_cnt) #22, !srcloc !323
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %90, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !324
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp14 = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp14, label %if.then16, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end17

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @__wake_up(ptr noundef nonnull @genl_sk_destructing_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #22
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %land.lhs.true.if.end17_crit_edge, %if.end10.if.end17_crit_edge
  %91 = ptrtoint ptr %sk1 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %sk1, align 16
  %wait = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 10
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 0, ptr noundef null) #22
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 26
  tail call void @skb_queue_purge(ptr noundef %sk_write_queue) #22
  %portid = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 1
  %92 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %portid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool19.not = icmp eq i32 %93, 0
  br i1 %tobool19.not, label %if.end17.if.end30_crit_edge, label %land.lhs.true20

if.end17.if.end30_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end30

land.lhs.true20:                                  ; preds = %if.end17
  %bound = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 11
  %94 = ptrtoint ptr %bound to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %bound, align 8, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool21.not = icmp eq i8 %95, 0
  br i1 %tobool21.not, label %land.lhs.true20.if.end30_crit_edge, label %if.then23

land.lhs.true20.if.end30_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end30

if.then23:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %n) #22
  %96 = getelementptr inbounds %struct.netlink_notify, ptr %n, i32 0, i32 1
  %97 = getelementptr inbounds %struct.netlink_notify, ptr %n, i32 0, i32 2
  %skc_net.i153 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %98 = ptrtoint ptr %skc_net.i153 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %skc_net.i153, align 4
  %100 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %99, ptr %n, align 4
  %101 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %93, ptr %96, align 4
  %102 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %sk_protocol.i, align 4
  %conv28 = zext i16 %103 to i32
  %104 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %conv28, ptr %97, align 4
  %call29 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @netlink_chain, i32 noundef 1, ptr noundef nonnull %n) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %n) #22
  br label %if.end30

if.end30:                                         ; preds = %if.then23, %land.lhs.true20.if.end30_crit_edge, %if.end17.if.end30_crit_edge
  %module = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 20
  %105 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %module, align 4
  call void @module_put(ptr noundef %106) #22
  %flags.i = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 4
  %107 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %flags.i, align 4
  %and.i154 = and i32 %108, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i154)
  %tobool32.not = icmp eq i32 %and.i154, 0
  br i1 %tobool32.not, label %if.end30.if.end112_crit_edge, label %if.then33

if.end30.if.end112_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end112

if.then33:                                        ; preds = %if.end30
  call void @netlink_table_grab()
  %109 = load ptr, ptr @nl_table, align 4
  %110 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %sk_protocol.i, align 4
  %idxprom = zext i16 %111 to i32
  %registered = getelementptr %struct.netlink_table, ptr %109, i32 %idxprom, i32 10
  %112 = ptrtoint ptr %registered to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %registered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp35 = icmp eq i32 %113, 0
  br i1 %cmp35, label %do.body40, label %do.end46, !prof !304

do.body40:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #24
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netlink/af_netlink.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 796, 0\0A.popsection", ""() #22, !srcloc !338
  unreachable

do.end46:                                         ; preds = %if.then33
  %dec = add i32 %113, -1
  %114 = ptrtoint ptr %registered to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %dec, ptr %registered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp51 = icmp eq i32 %dec, 0
  br i1 %cmp51, label %if.then53, label %do.end46.if.end111_crit_edge

do.end46.if.end111_crit_edge:                     ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end111

if.then53:                                        ; preds = %do.end46
  %call.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rwlock_t, ptr @nl_table_lock, i32 0, i32 4), i32 noundef -1) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool56.not = icmp eq i32 %call.i, 0
  br i1 %tobool56.not, label %land.lhs.true57, label %if.then53.do.end65_crit_edge

if.then53.do.end65_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end65

land.lhs.true57:                                  ; preds = %if.then53
  %call58 = call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true57.do.end65_crit_edge, label %land.lhs.true60

land.lhs.true57.do.end65_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end65

land.lhs.true60:                                  ; preds = %land.lhs.true57
  %.b151 = load i1, ptr @netlink_release.__warned, align 1
  br i1 %.b151, label %land.lhs.true60.do.end65_crit_edge, label %if.then62

land.lhs.true60.do.end65_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end65

if.then62:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @netlink_release.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 800, ptr noundef nonnull @.str.5) #22
  br label %do.end65

do.end65:                                         ; preds = %if.then62, %land.lhs.true60.do.end65_crit_edge, %land.lhs.true57.do.end65_crit_edge, %if.then53.do.end65_crit_edge
  %115 = load ptr, ptr @nl_table, align 4
  %116 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %sk_protocol.i, align 4
  %idxprom67 = zext i16 %117 to i32
  %listeners = getelementptr %struct.netlink_table, ptr %115, i32 %idxprom67, i32 2
  %118 = ptrtoint ptr %listeners to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %listeners, align 4
  store volatile ptr null, ptr %listeners, align 4
  %tobool86.not = icmp eq ptr %119, null
  br i1 %tobool86.not, label %do.end65.if.end91_crit_edge, label %do.end90

do.end65.if.end91_crit_edge:                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end91

do.end90:                                         ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #24
  call void @kvfree_call_rcu(ptr noundef nonnull %119, ptr noundef null) #22
  br label %if.end91

if.end91:                                         ; preds = %do.end90, %do.end65.if.end91_crit_edge
  %120 = load ptr, ptr @nl_table, align 4
  %121 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %sk_protocol.i, align 4
  %idxprom95 = zext i16 %122 to i32
  %module97 = getelementptr %struct.netlink_table, ptr %120, i32 %idxprom95, i32 6
  %123 = ptrtoint ptr %module97 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %module97, align 4
  %124 = load ptr, ptr @nl_table, align 4
  %125 = load i16, ptr %sk_protocol.i, align 4
  %idxprom99 = zext i16 %125 to i32
  %bind = getelementptr %struct.netlink_table, ptr %124, i32 %idxprom99, i32 7
  %126 = ptrtoint ptr %bind to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr null, ptr %bind, align 4
  %127 = load ptr, ptr @nl_table, align 4
  %128 = load i16, ptr %sk_protocol.i, align 4
  %idxprom102 = zext i16 %128 to i32
  %unbind = getelementptr %struct.netlink_table, ptr %127, i32 %idxprom102, i32 8
  %129 = ptrtoint ptr %unbind to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %unbind, align 4
  %130 = load ptr, ptr @nl_table, align 4
  %131 = load i16, ptr %sk_protocol.i, align 4
  %idxprom105 = zext i16 %131 to i32
  %flags = getelementptr %struct.netlink_table, ptr %130, i32 %idxprom105, i32 3
  %132 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %flags, align 4
  %133 = load ptr, ptr @nl_table, align 4
  %134 = load i16, ptr %sk_protocol.i, align 4
  %idxprom108 = zext i16 %134 to i32
  %registered110 = getelementptr %struct.netlink_table, ptr %133, i32 %idxprom108, i32 10
  %135 = ptrtoint ptr %registered110 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %registered110, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.end91, %do.end46.if.end111_crit_edge
  call void @_raw_write_unlock_irq(ptr noundef nonnull @nl_table_lock) #22
  call void @__wake_up(ptr noundef nonnull @nl_table_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #22
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %if.end30.if.end112_crit_edge
  %skc_net.i155 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %136 = ptrtoint ptr %skc_net.i155 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %skc_net.i155, align 4
  %138 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !333
  %prot_inuse.i = getelementptr inbounds %struct.net, ptr %137, i32 0, i32 29, i32 2
  %139 = ptrtoint ptr %prot_inuse.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %prot_inuse.i, align 8
  %141 = load i32, ptr getelementptr inbounds (%struct.proto, ptr @netlink_proto, i32 0, i32 26), align 4
  %arrayidx.i156 = getelementptr %struct.prot_inuse, ptr %140, i32 0, i32 1, i32 %141
  %142 = ptrtoint ptr %arrayidx.i156 to i32
  %143 = call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i = and i32 %143, -16384
  %144 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %144, i32 0, i32 3
  %145 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %146
  %147 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add i32 %148, %142
  %149 = inttoptr i32 %add.i to ptr
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %149, align 4
  %add15.i = add i32 %151, -1
  store i32 %add15.i, ptr %149, align 4
  %152 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #22, !srcloc !334
  %and.i.i.i = and i32 %152, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i157 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i157, label %if.then.i158, label %if.end112.sock_prot_inuse_add.exit_crit_edge, !prof !304

if.end112.sock_prot_inuse_add.exit_crit_edge:     ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #24
  br label %sock_prot_inuse_add.exit

if.then.i158:                                     ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #24
  call void @warn_bogus_irq_restore() #22
  br label %sock_prot_inuse_add.exit

sock_prot_inuse_add.exit:                         ; preds = %if.then.i158, %if.end112.sock_prot_inuse_add.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %138) #22, !srcloc !335
  %rcu114 = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 22
  call void @call_rcu(ptr noundef %rcu114, ptr noundef nonnull @deferred_put_nlk_sk) #22
  br label %cleanup

cleanup:                                          ; preds = %sock_prot_inuse_add.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlink_bind(ptr nocapture noundef readonly %sock, ptr nocapture noundef readonly %addr, i32 noundef %addr_len) #0 align 64 {
entry:
  %groups = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %groups)
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %addr_len)
  %cmp = icmp ult i32 %addr_len, 12
  br i1 %cmp, label %entry.cleanup729_crit_edge, label %if.end

entry.cleanup729_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup729

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %5)
  %cmp3.not = icmp eq i16 %5, 16
  br i1 %cmp3.not, label %if.end6, label %if.end.cleanup729_crit_edge

if.end.cleanup729_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup729

if.end6:                                          ; preds = %if.end
  %nl_groups = getelementptr inbounds %struct.sockaddr_nl, ptr %addr, i32 0, i32 3
  %6 = ptrtoint ptr %nl_groups to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nl_groups, align 4
  %8 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %groups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end6.if.end16_crit_edge, label %if.then7

if.end6.if.end16_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end16

if.then7:                                         ; preds = %if.end6
  %9 = load ptr, ptr @nl_table, align 4
  %sk_protocol.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 46
  %10 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sk_protocol.i, align 4
  %idxprom.i = zext i16 %11 to i32
  %flags.i = getelementptr %struct.netlink_table, ptr %9, i32 %idxprom.i, i32 3
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %and.i813 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i813)
  %tobool.not.i = icmp eq i32 %and.i813, 0
  br i1 %tobool.not.i, label %netlink_allowed.exit, label %if.then7.if.end11_crit_edge

if.then7.if.end11_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end11

netlink_allowed.exit:                             ; preds = %if.then7
  %user_ns.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 11
  %14 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %user_ns.i, align 4
  %call2.i = tail call zeroext i1 @ns_capable(ptr noundef %15, i32 noundef 12) #22
  br i1 %call2.i, label %netlink_allowed.exit.if.end11_crit_edge, label %netlink_allowed.exit.cleanup729_crit_edge

netlink_allowed.exit.cleanup729_crit_edge:        ; preds = %netlink_allowed.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup729

netlink_allowed.exit.if.end11_crit_edge:          ; preds = %netlink_allowed.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end11

if.end11:                                         ; preds = %netlink_allowed.exit.if.end11_crit_edge, %if.then7.if.end11_crit_edge
  %call12 = tail call fastcc i32 @netlink_realloc_groups(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.if.end16_crit_edge, label %if.end11.cleanup729_crit_edge

if.end11.cleanup729_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup729

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end16

if.end16:                                         ; preds = %if.end11.if.end16_crit_edge, %if.end6.if.end16_crit_edge
  %ngroups = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ngroups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %17)
  %cmp17 = icmp ult i32 %17, 32
  br i1 %cmp17, label %if.then19, label %if.end16.do.end_crit_edge

if.end16.do.end_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #24
  %notmask = shl nsw i32 -1, %17
  %sub = xor i32 %notmask, -1
  %18 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %18)
  %groups.0.833 = load i32, ptr %groups, align 4
  %and = and i32 %groups.0.833, %sub
  store i32 %and, ptr %groups, align 4
  br label %do.end

do.end:                                           ; preds = %if.then19, %if.end16.do.end_crit_edge
  %bound22 = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %bound22 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load volatile i8, ptr %bound22, align 8, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool23.not = icmp eq i8 %20, 0
  br i1 %tobool23.not, label %do.end.if.end38_crit_edge, label %do.end31

do.end.if.end38_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end38

do.end31:                                         ; preds = %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !339
  %nl_pid = getelementptr inbounds %struct.sockaddr_nl, ptr %addr, i32 0, i32 2
  %21 = ptrtoint ptr %nl_pid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nl_pid, align 4
  %portid = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %portid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp34.not = icmp eq i32 %22, %24
  br i1 %cmp34.not, label %do.end31.if.end38_crit_edge, label %do.end31.cleanup729_crit_edge

do.end31.cleanup729_crit_edge:                    ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup729

do.end31.if.end38_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end38

if.end38:                                         ; preds = %do.end31.if.end38_crit_edge, %do.end.if.end38_crit_edge
  %netlink_bind = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 18
  %25 = ptrtoint ptr %netlink_bind to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netlink_bind, align 4
  %tobool39.not = icmp eq ptr %26, null
  br i1 %tobool39.not, label %if.end38.if.end53_crit_edge, label %land.lhs.true

if.end38.if.end53_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end53

land.lhs.true:                                    ; preds = %if.end38
  %27 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %27)
  %groups.0.834 = load i32, ptr %groups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %groups.0.834)
  %tobool40.not = icmp eq i32 %groups.0.834, 0
  br i1 %tobool40.not, label %land.lhs.true.if.end53_crit_edge, label %land.lhs.true.for.body_crit_edge

land.lhs.true.for.body_crit_edge:                 ; preds = %land.lhs.true
  br label %for.body

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end53

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %land.lhs.true.for.body_crit_edge
  %group.0830 = phi i32 [ %inc.pre-phi, %for.inc.for.body_crit_edge ], [ 0, %land.lhs.true.for.body_crit_edge ]
  %28 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %28)
  %groups.0. = load volatile i32, ptr %groups, align 4
  %29 = shl nuw i32 1, %group.0830
  %30 = and i32 %groups.0., %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool45.not = icmp eq i32 %30, 0
  br i1 %tobool45.not, label %for.body.for.inc_crit_edge, label %if.end47

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  %.pre = add nuw nsw i32 %group.0830, 1
  br label %for.inc

if.end47:                                         ; preds = %for.body
  %31 = ptrtoint ptr %netlink_bind to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %netlink_bind, align 4
  %add = add nuw nsw i32 %group.0830, 1
  %call49 = tail call i32 %32(ptr noundef %3, i32 noundef %add) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end47.for.inc_crit_edge, label %cleanup.thread

if.end47.for.inc_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

cleanup.thread:                                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #24
  %33 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %33)
  %groups.0.835 = load i32, ptr %groups, align 4
  tail call fastcc void @netlink_undo_bind(i32 noundef %group.0830, i32 noundef %groups.0.835, ptr noundef %1)
  br label %cleanup729

for.inc:                                          ; preds = %if.end47.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc.pre-phi = phi i32 [ %.pre, %for.body.for.inc_crit_edge ], [ %add, %if.end47.for.inc_crit_edge ]
  %exitcond.not = icmp eq i32 %inc.pre-phi, 32
  br i1 %exitcond.not, label %for.inc.if.end53_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.inc.if.end53_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end53

if.end53:                                         ; preds = %for.inc.if.end53_crit_edge, %land.lhs.true.if.end53_crit_edge, %if.end38.if.end53_crit_edge
  %call.i = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @nl_table_lock) #22
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nl_table_users, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr nonnull @nl_table_users, i32 1, i32 3, i32 1) #22
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nl_table_users, ptr nonnull @nl_table_users, i32 1, ptr nonnull elementtype(i32) @nl_table_users) #22, !srcloc !316
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @nl_table_lock, i32 noundef %call.i) #22
  br i1 %tobool23.not, label %if.then55, label %if.end53.if.end64_crit_edge

if.end53.if.end64_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end64

if.then55:                                        ; preds = %if.end53
  %nl_pid56 = getelementptr inbounds %struct.sockaddr_nl, ptr %addr, i32 0, i32 2
  %35 = ptrtoint ptr %nl_pid56 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nl_pid56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool57.not = icmp eq i32 %36, 0
  br i1 %tobool57.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #24
  %call59 = tail call fastcc i32 @netlink_insert(ptr noundef %1, i32 noundef %36)
  br label %cond.end

cond.false:                                       ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #24
  %call60 = tail call fastcc i32 @netlink_autobind(ptr noundef %sock)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call59, %cond.true ], [ %call60, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool61.not = icmp eq i32 %cond, 0
  br i1 %tobool61.not, label %cond.end.if.end64_crit_edge, label %if.then62

cond.end.if.end64_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end64

if.then62:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #24
  %37 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %37)
  %groups.0.836 = load i32, ptr %groups, align 4
  tail call fastcc void @netlink_undo_bind(i32 noundef 32, i32 noundef %groups.0.836, ptr noundef %1)
  br label %unlock

if.end64:                                         ; preds = %cond.end.if.end64_crit_edge, %if.end53.if.end64_crit_edge
  %38 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %38)
  %groups.0.837 = load i32, ptr %groups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %groups.0.837)
  %tobool65.not = icmp eq i32 %groups.0.837, 0
  br i1 %tobool65.not, label %land.lhs.true66, label %if.end64.if.end73_crit_edge

if.end64.if.end73_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end73

land.lhs.true66:                                  ; preds = %if.end64
  %groups67 = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 7
  %39 = ptrtoint ptr %groups67 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %groups67, align 8
  %cmp68 = icmp eq ptr %40, null
  br i1 %cmp68, label %land.lhs.true66.unlock_crit_edge, label %lor.lhs.false

land.lhs.true66.unlock_crit_edge:                 ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #24
  br label %unlock

lor.lhs.false:                                    ; preds = %land.lhs.true66
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool71.not = icmp eq i32 %42, 0
  br i1 %tobool71.not, label %lor.lhs.false.unlock_crit_edge, label %lor.lhs.false.if.end73_crit_edge

lor.lhs.false.if.end73_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end73

lor.lhs.false.unlock_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %unlock

if.end73:                                         ; preds = %lor.lhs.false.if.end73_crit_edge, %if.end64.if.end73_crit_edge
  %call.i.i.i814 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nl_table_users, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !322
  tail call void @llvm.prefetch.p0(ptr nonnull @nl_table_users, i32 1, i32 3, i32 1) #22
  %43 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nl_table_users, ptr nonnull @nl_table_users, i32 1, ptr nonnull elementtype(i32) @nl_table_users) #22, !srcloc !323
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %43, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !324
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.end73.netlink_unlock_table.exit_crit_edge

if.end73.netlink_unlock_table.exit_crit_edge:     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_unlock_table.exit

if.then.i:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @__wake_up(ptr noundef nonnull @nl_table_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #22
  br label %netlink_unlock_table.exit

netlink_unlock_table.exit:                        ; preds = %if.then.i, %if.end73.netlink_unlock_table.exit_crit_edge
  tail call void @netlink_table_grab()
  %subscriptions = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 5
  %44 = ptrtoint ptr %subscriptions to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %subscriptions, align 8
  %46 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %46)
  %groups.0.838 = load i32, ptr %groups, align 4
  %call.i815 = tail call i32 @__sw_hweight32(i32 noundef %groups.0.838) #22
  %add362 = add i32 %call.i815, %45
  %groups363 = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 7
  %47 = ptrtoint ptr %groups363 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %groups363, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %call.i816 = tail call i32 @__sw_hweight32(i32 noundef %50) #22
  %sub723 = sub i32 %add362, %call.i816
  %51 = ptrtoint ptr %subscriptions to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %subscriptions, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i817 = icmp ne i32 %52, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %add362, i32 %call.i816)
  %tobool2.not.i = icmp eq i32 %add362, %call.i816
  %or.cond.i = and i1 %tobool2.not.i, %tobool.not.i817
  br i1 %or.cond.i, label %if.then.i818, label %if.else.i

if.then.i818:                                     ; preds = %netlink_unlock_table.exit
  %53 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 7
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 7, i32 0, i32 1
  %56 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pprev2.i.i.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %55, ptr %57, align 4
  %tobool.not.i.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i.i, label %if.then.i818.netlink_update_subscriptions.exit_crit_edge, label %do.body13.i.i.i

if.then.i818.netlink_update_subscriptions.exit_crit_edge: ; preds = %if.then.i818
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_update_subscriptions.exit

do.body13.i.i.i:                                  ; preds = %if.then.i818
  call void @__sanitizer_cov_trace_pc() #24
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %55, i32 0, i32 1
  %59 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %57, ptr %pprev14.i.i.i, align 4
  br label %netlink_update_subscriptions.exit

if.else.i:                                        ; preds = %netlink_unlock_table.exit
  %or.cond17.i = or i1 %tobool2.not.i, %tobool.not.i817
  br i1 %or.cond17.i, label %if.else.i.netlink_update_subscriptions.exit_crit_edge, label %if.then7.i

if.else.i.netlink_update_subscriptions.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_update_subscriptions.exit

if.then7.i:                                       ; preds = %if.else.i
  %60 = load ptr, ptr @nl_table, align 4
  %sk_protocol.i819 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 46
  %61 = ptrtoint ptr %sk_protocol.i819 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %sk_protocol.i819, align 4
  %idxprom.i820 = zext i16 %62 to i32
  %mc_list.i = getelementptr %struct.netlink_table, ptr %60, i32 %idxprom.i820, i32 1
  %63 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 7
  %64 = ptrtoint ptr %mc_list.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mc_list.i, align 4
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %65, ptr %63, align 4
  %tobool.not.i.i18.i = icmp eq ptr %65, null
  br i1 %tobool.not.i.i18.i, label %if.then7.i.sk_add_bind_node.exit.i_crit_edge, label %do.body12.i.i.i

if.then7.i.sk_add_bind_node.exit.i_crit_edge:     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %sk_add_bind_node.exit.i

do.body12.i.i.i:                                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #24
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %65, i32 0, i32 1
  %67 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %63, ptr %pprev.i.i.i, align 4
  br label %sk_add_bind_node.exit.i

sk_add_bind_node.exit.i:                          ; preds = %do.body12.i.i.i, %if.then7.i.sk_add_bind_node.exit.i_crit_edge
  %68 = ptrtoint ptr %mc_list.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %63, ptr %mc_list.i, align 4
  %pprev34.i.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 7, i32 0, i32 1
  %69 = ptrtoint ptr %pprev34.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %mc_list.i, ptr %pprev34.i.i.i, align 4
  br label %netlink_update_subscriptions.exit

netlink_update_subscriptions.exit:                ; preds = %sk_add_bind_node.exit.i, %if.else.i.netlink_update_subscriptions.exit_crit_edge, %do.body13.i.i.i, %if.then.i818.netlink_update_subscriptions.exit_crit_edge
  %70 = ptrtoint ptr %subscriptions to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %sub723, ptr %subscriptions, align 8
  %71 = ptrtoint ptr %groups363 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %groups363, align 8
  %73 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %73)
  %groups.0.839 = load i32, ptr %groups, align 4
  %74 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %groups.0.839, ptr %72, align 4
  tail call fastcc void @netlink_update_listeners(ptr noundef %1)
  tail call void @_raw_write_unlock_irq(ptr noundef nonnull @nl_table_lock) #22
  tail call void @__wake_up(ptr noundef nonnull @nl_table_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #22
  br label %cleanup729

unlock:                                           ; preds = %lor.lhs.false.unlock_crit_edge, %land.lhs.true66.unlock_crit_edge, %if.then62
  %err.6 = phi i32 [ 0, %land.lhs.true66.unlock_crit_edge ], [ 0, %lor.lhs.false.unlock_crit_edge ], [ %cond, %if.then62 ]
  %call.i.i.i821 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nl_table_users, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !322
  tail call void @llvm.prefetch.p0(ptr nonnull @nl_table_users, i32 1, i32 3, i32 1) #22
  %75 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nl_table_users, ptr nonnull @nl_table_users, i32 1, ptr nonnull elementtype(i32) @nl_table_users) #22, !srcloc !323
  %asmresult.i.i.i.i.i.i822 = extractvalue { i32, i32 } %75, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !324
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i822)
  %cmp.i.i.i823 = icmp eq i32 %asmresult.i.i.i.i.i.i822, 0
  br i1 %cmp.i.i.i823, label %if.then.i824, label %unlock.cleanup729_crit_edge

unlock.cleanup729_crit_edge:                      ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup729

if.then.i824:                                     ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @__wake_up(ptr noundef nonnull @nl_table_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #22
  br label %cleanup729

cleanup729:                                       ; preds = %if.then.i824, %unlock.cleanup729_crit_edge, %netlink_update_subscriptions.exit, %cleanup.thread, %do.end31.cleanup729_crit_edge, %if.end11.cleanup729_crit_edge, %netlink_allowed.exit.cleanup729_crit_edge, %if.end.cleanup729_crit_edge, %entry.cleanup729_crit_edge
  %retval.1 = phi i32 [ 0, %netlink_update_subscriptions.exit ], [ -22, %entry.cleanup729_crit_edge ], [ -22, %if.end.cleanup729_crit_edge ], [ -1, %netlink_allowed.exit.cleanup729_crit_edge ], [ %call12, %if.end11.cleanup729_crit_edge ], [ -22, %do.end31.cleanup729_crit_edge ], [ %call49, %cleanup.thread ], [ %err.6, %unlock.cleanup729_crit_edge ], [ %err.6, %if.then.i824 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %groups)
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlink_connect(ptr nocapture noundef readonly %sock, ptr nocapture noundef readonly %addr, i32 noundef %alen, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %alen)
  %cmp = icmp ult i32 %alen, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.85)
  switch i16 %3, label %if.end.cleanup_crit_edge [
    i16 0, label %if.then4
    i16 16, label %if.end11
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %5)
  store volatile i8 0, ptr %skc_state, align 2
  %dst_portid = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dst_portid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %dst_portid, align 4
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %alen)
  %cmp12 = icmp ult i32 %alen, 12
  br i1 %cmp12, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %nl_groups = getelementptr inbounds %struct.sockaddr_nl, ptr %addr, i32 0, i32 3
  %7 = ptrtoint ptr %nl_groups to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nl_groups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end15.land.lhs.true_crit_edge

if.end15.land.lhs.true_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #24
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end15
  %nl_pid = getelementptr inbounds %struct.sockaddr_nl, ptr %addr, i32 0, i32 2
  %9 = ptrtoint ptr %nl_pid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nl_pid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool16.not = icmp eq i32 %10, 0
  br i1 %tobool16.not, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %land.lhs.true

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %if.end15.land.lhs.true_crit_edge
  %11 = load ptr, ptr @nl_table, align 4
  %sk_protocol.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 46
  %12 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sk_protocol.i, align 4
  %idxprom.i = zext i16 %13 to i32
  %flags.i = getelementptr %struct.netlink_table, ptr %11, i32 %idxprom.i, i32 3
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %netlink_allowed.exit, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end

netlink_allowed.exit:                             ; preds = %land.lhs.true
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skc_net.i.i, align 4
  %user_ns.i = getelementptr inbounds %struct.net, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %user_ns.i, align 4
  %call2.i = tail call zeroext i1 @ns_capable(ptr noundef %19, i32 noundef 12) #22
  br i1 %call2.i, label %netlink_allowed.exit.do.end_crit_edge, label %netlink_allowed.exit.cleanup_crit_edge

netlink_allowed.exit.cleanup_crit_edge:           ; preds = %netlink_allowed.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

netlink_allowed.exit.do.end_crit_edge:            ; preds = %netlink_allowed.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end

do.end:                                           ; preds = %netlink_allowed.exit.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge
  %bound = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %bound to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load volatile i8, ptr %bound, align 8, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool21.not = icmp eq i8 %21, 0
  br i1 %tobool21.not, label %if.end25, label %do.end.if.then28_crit_edge

do.end.if.then28_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then28

if.end25:                                         ; preds = %do.end
  %call24 = tail call fastcc i32 @netlink_autobind(ptr noundef %sock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp26 = icmp eq i32 %call24, 0
  br i1 %cmp26, label %if.end25.if.then28_crit_edge, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end25.if.then28_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then28

if.then28:                                        ; preds = %if.end25.if.then28_crit_edge, %do.end.if.then28_crit_edge
  %skc_state30 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %skc_state30 to i32
  call void @__asan_store1_noabort(i32 %22)
  store volatile i8 1, ptr %skc_state30, align 2
  %nl_pid31 = getelementptr inbounds %struct.sockaddr_nl, ptr %addr, i32 0, i32 2
  %23 = ptrtoint ptr %nl_pid31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nl_pid31, align 4
  %dst_portid32 = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %dst_portid32 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %dst_portid32, align 4
  %26 = ptrtoint ptr %nl_groups to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nl_groups, align 4
  %28 = tail call i32 @llvm.cttz.i32(i32 %27, i1 true), !range !340
  %29 = add nuw nsw i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %iszero = icmp eq i32 %27, 0
  %ffs = select i1 %iszero, i32 0, i32 %29
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then28, %if.then4
  %ffs.sink = phi i32 [ %ffs, %if.then28 ], [ 0, %if.then4 ]
  %dst_group34 = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %dst_group34 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %ffs.sink, ptr %dst_group34, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end25.cleanup_crit_edge, %netlink_allowed.exit.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ -1, %netlink_allowed.exit.cleanup_crit_edge ], [ %call24, %if.end25.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlink_getname(ptr nocapture noundef readonly %sock, ptr nocapture noundef writeonly %addr, i32 noundef %peer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 16, ptr %addr, align 4
  %nl_pad = getelementptr inbounds %struct.sockaddr_nl, ptr %addr, i32 0, i32 1
  %3 = ptrtoint ptr %nl_pad to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %nl_pad, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %peer)
  %tobool.not = icmp eq i32 %peer, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %dst_portid = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dst_portid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dst_portid, align 4
  %nl_pid = getelementptr inbounds %struct.sockaddr_nl, ptr %addr, i32 0, i32 2
  %6 = ptrtoint ptr %nl_pid to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %nl_pid, align 4
  %dst_group = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %dst_group to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dst_group, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  %sub.i = add i32 %8, -1
  %shl.i = shl nuw i32 1, %sub.i
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %shl.i
  %nl_groups = getelementptr inbounds %struct.sockaddr_nl, ptr %addr, i32 0, i32 3
  %9 = ptrtoint ptr %nl_groups to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond.i, ptr %nl_groups, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %portid = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %portid, align 8
  %nl_pid3 = getelementptr inbounds %struct.sockaddr_nl, ptr %addr, i32 0, i32 2
  %12 = ptrtoint ptr %nl_pid3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %nl_pid3, align 4
  %call.i = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @nl_table_lock) #22
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nl_table_users, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr nonnull @nl_table_users, i32 1, i32 3, i32 1) #22
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nl_table_users, ptr nonnull @nl_table_users, i32 1, ptr nonnull elementtype(i32) @nl_table_users) #22, !srcloc !316
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @nl_table_lock, i32 noundef %call.i) #22
  %groups = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %groups, align 8
  %tobool4.not = icmp eq ptr %15, null
  br i1 %tobool4.not, label %if.else.cond.end_crit_edge, label %cond.true

if.else.cond.end_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  br label %cond.end

cond.true:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.else.cond.end_crit_edge
  %cond = phi i32 [ %17, %cond.true ], [ 0, %if.else.cond.end_crit_edge ]
  %nl_groups6 = getelementptr inbounds %struct.sockaddr_nl, ptr %addr, i32 0, i32 3
  %18 = ptrtoint ptr %nl_groups6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond, ptr %nl_groups6, align 4
  %call.i.i.i16 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nl_table_users, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !322
  tail call void @llvm.prefetch.p0(ptr nonnull @nl_table_users, i32 1, i32 3, i32 1) #22
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nl_table_users, ptr nonnull @nl_table_users, i32 1, ptr nonnull elementtype(i32) @nl_table_users) #22, !srcloc !323
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !324
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then.i:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @__wake_up(ptr noundef nonnull @nl_table_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #22
  br label %if.end

if.end:                                           ; preds = %if.then.i, %cond.end.if.end_crit_edge, %if.then
  ret i32 12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @netlink_ioctl(ptr nocapture noundef readnone %sock, i32 noundef %cmd, i32 noundef %arg) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -515
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlink_setsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #22
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 270, i32 %level)
  %cmp.not = icmp eq i32 %level, 270
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %optlen)
  %cmp2 = icmp ugt i32 %optlen, 3
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %3 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true
  tail call void @__might_fault(ptr noundef nonnull @.str.33, i32 noundef 156) #22
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #22
  br i1 %call.i.i.i.i, label %if.then.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.i.i.if.then11.i.i.i.i_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i.i.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 4, i32 -1226833920) #31, !srcloc !341
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i1.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i1.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !303

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val, i32 noundef 4) #22
  %5 = call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #11, !srcloc !342
  %and.i.i.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #22, !srcloc !343
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %val, ptr noundef %3, i32 noundef 4) #22
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #22, !srcloc !343
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end5_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !303

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.if.end5_crit_edge:                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end5

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.03.i.i.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %if.then.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 4, %res.03.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %val, i32 %sub.i.i.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.03.i.i.i.i)
  br label %cleanup

if.end.i.i:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %3, align 1
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %val, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end.i.i, %if.end.i.i.i.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %12 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %optname, label %if.end5.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %if.end5.sw.bb10_crit_edge
    i32 2, label %if.end5.sw.bb10_crit_edge144
    i32 4, label %sw.bb43
    i32 5, label %sw.bb52
    i32 8, label %sw.bb61
    i32 10, label %sw.bb74
    i32 11, label %sw.bb83
    i32 12, label %sw.bb92
  ]

if.end5.sw.bb10_crit_edge144:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb10

if.end5.sw.bb10_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.bb10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

sw.bb:                                            ; preds = %if.end5
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool6.not = icmp eq i32 %14, 0
  %flags8 = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags8, align 4
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #24
  %or = or i32 %16, 2
  %17 = ptrtoint ptr %flags8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or, ptr %flags8, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #24
  %and = and i32 %16, -3
  %18 = ptrtoint ptr %flags8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and, ptr %flags8, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %if.end5.sw.bb10_crit_edge, %if.end5.sw.bb10_crit_edge144
  %19 = load ptr, ptr @nl_table, align 4
  %20 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sk1, align 16
  %sk_protocol.i = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 46
  %22 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sk_protocol.i, align 4
  %idxprom.i = zext i16 %23 to i32
  %flags.i = getelementptr %struct.netlink_table, ptr %19, i32 %idxprom.i, i32 3
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %netlink_allowed.exit, label %sw.bb10.if.end14_crit_edge

sw.bb10.if.end14_crit_edge:                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end14

netlink_allowed.exit:                             ; preds = %sw.bb10
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %21, i32 0, i32 9
  %26 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %skc_net.i.i, align 4
  %user_ns.i = getelementptr inbounds %struct.net, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %user_ns.i, align 4
  %call2.i = call zeroext i1 @ns_capable(ptr noundef %29, i32 noundef 12) #22
  br i1 %call2.i, label %netlink_allowed.exit.if.end14_crit_edge, label %netlink_allowed.exit.cleanup_crit_edge

netlink_allowed.exit.cleanup_crit_edge:           ; preds = %netlink_allowed.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

netlink_allowed.exit.if.end14_crit_edge:          ; preds = %netlink_allowed.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end14

if.end14:                                         ; preds = %netlink_allowed.exit.if.end14_crit_edge, %sw.bb10.if.end14_crit_edge
  %call15 = call fastcc i32 @netlink_realloc_groups(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %30 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool19.not = icmp eq i32 %31, 0
  br i1 %tobool19.not, label %if.end18.cleanup_crit_edge, label %lor.lhs.false

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end18
  %sub = add i32 %31, -1
  %ngroups = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 6
  %32 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ngroups, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %33)
  %cmp20.not = icmp ult i32 %sub, %33
  br i1 %cmp20.not, label %if.end22, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %optname)
  %cmp23 = icmp eq i32 %optname, 1
  br i1 %cmp23, label %land.lhs.true24, label %if.end22.if.end33_crit_edge

if.end22.if.end33_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end33

land.lhs.true24:                                  ; preds = %if.end22
  %netlink_bind = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 18
  %34 = ptrtoint ptr %netlink_bind to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %netlink_bind, align 4
  %tobool25.not = icmp eq ptr %35, null
  br i1 %tobool25.not, label %land.lhs.true24.if.end33_crit_edge, label %if.then26

land.lhs.true24.if.end33_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end33

if.then26:                                        ; preds = %land.lhs.true24
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %36 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %skc_net.i, align 4
  %call29 = call i32 %35(ptr noundef %37, i32 noundef %31) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then26.if.end33_crit_edge, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then26.if.end33_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end33

if.end33:                                         ; preds = %if.then26.if.end33_crit_edge, %land.lhs.true24.if.end33_crit_edge, %if.end22.if.end33_crit_edge
  call void @netlink_table_grab()
  %38 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val, align 4
  %conv = zext i1 %cmp23 to i32
  call fastcc void @netlink_update_socket_mc(ptr noundef %1, i32 noundef %39, i32 noundef %conv)
  call void @netlink_table_ungrab()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %optname)
  %cmp35 = icmp eq i32 %optname, 2
  br i1 %cmp35, label %land.lhs.true37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

land.lhs.true37:                                  ; preds = %if.end33
  %netlink_unbind = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 19
  %40 = ptrtoint ptr %netlink_unbind to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %netlink_unbind, align 8
  %tobool38.not = icmp eq ptr %41, null
  br i1 %tobool38.not, label %land.lhs.true37.cleanup_crit_edge, label %if.then39

land.lhs.true37.cleanup_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then39:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #24
  %skc_net.i139 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %42 = ptrtoint ptr %skc_net.i139 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %skc_net.i139, align 4
  %44 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val, align 4
  call void %41(ptr noundef %43, i32 noundef %45) #22
  br label %cleanup

sw.bb43:                                          ; preds = %if.end5
  %46 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool44.not = icmp eq i32 %47, 0
  %flags49 = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 4
  %48 = ptrtoint ptr %flags49 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags49, align 4
  br i1 %tobool44.not, label %if.else48, label %if.then45

if.then45:                                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #24
  %or47 = or i32 %49, 4
  %50 = ptrtoint ptr %flags49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or47, ptr %flags49, align 4
  br label %cleanup

if.else48:                                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #24
  %and50 = and i32 %49, -5
  %51 = ptrtoint ptr %flags49 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %and50, ptr %flags49, align 4
  br label %cleanup

sw.bb52:                                          ; preds = %if.end5
  %52 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool53.not = icmp eq i32 %53, 0
  %flags58 = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 4
  %54 = ptrtoint ptr %flags58 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags58, align 4
  br i1 %tobool53.not, label %if.else57, label %if.then54

if.then54:                                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #24
  %or56 = or i32 %55, 8
  %56 = ptrtoint ptr %flags58 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or56, ptr %flags58, align 4
  %state = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 8
  call void @_clear_bit(i32 noundef 0, ptr noundef %state) #22
  %wait = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 10
  call void @__wake_up(ptr noundef %wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #22
  br label %cleanup

if.else57:                                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #24
  %and59 = and i32 %55, -9
  %57 = ptrtoint ptr %flags58 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and59, ptr %flags58, align 4
  br label %cleanup

sw.bb61:                                          ; preds = %if.end5
  %skc_net.i140 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %58 = ptrtoint ptr %skc_net.i140 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %skc_net.i140, align 4
  %user_ns = getelementptr inbounds %struct.net, ptr %59, i32 0, i32 11
  %60 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %user_ns, align 4
  %call63 = call zeroext i1 @ns_capable(ptr noundef %61, i32 noundef 11) #22
  br i1 %call63, label %if.end65, label %sw.bb61.cleanup_crit_edge

sw.bb61.cleanup_crit_edge:                        ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end65:                                         ; preds = %sw.bb61
  %62 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool66.not = icmp eq i32 %63, 0
  %flags71 = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 4
  %64 = ptrtoint ptr %flags71 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags71, align 4
  br i1 %tobool66.not, label %if.else70, label %if.then67

if.then67:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #24
  %or69 = or i32 %65, 16
  %66 = ptrtoint ptr %flags71 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or69, ptr %flags71, align 4
  br label %cleanup

if.else70:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #24
  %and72 = and i32 %65, -17
  %67 = ptrtoint ptr %flags71 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %and72, ptr %flags71, align 4
  br label %cleanup

sw.bb74:                                          ; preds = %if.end5
  %68 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool75.not = icmp eq i32 %69, 0
  %flags80 = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 4
  %70 = ptrtoint ptr %flags80 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %flags80, align 4
  br i1 %tobool75.not, label %if.else79, label %if.then76

if.then76:                                        ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #24
  %or78 = or i32 %71, 32
  %72 = ptrtoint ptr %flags80 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %or78, ptr %flags80, align 4
  br label %cleanup

if.else79:                                        ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #24
  %and81 = and i32 %71, -33
  %73 = ptrtoint ptr %flags80 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %and81, ptr %flags80, align 4
  br label %cleanup

sw.bb83:                                          ; preds = %if.end5
  %74 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool84.not = icmp eq i32 %75, 0
  %flags89 = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 4
  %76 = ptrtoint ptr %flags89 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags89, align 4
  br i1 %tobool84.not, label %if.else88, label %if.then85

if.then85:                                        ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #24
  %or87 = or i32 %77, 64
  %78 = ptrtoint ptr %flags89 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or87, ptr %flags89, align 4
  br label %cleanup

if.else88:                                        ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #24
  %and90 = and i32 %77, -65
  %79 = ptrtoint ptr %flags89 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %and90, ptr %flags89, align 4
  br label %cleanup

sw.bb92:                                          ; preds = %if.end5
  %80 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool93.not = icmp eq i32 %81, 0
  %flags98 = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 4
  %82 = ptrtoint ptr %flags98 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags98, align 4
  br i1 %tobool93.not, label %if.else97, label %if.then94

if.then94:                                        ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #24
  %or96 = or i32 %83, 128
  %84 = ptrtoint ptr %flags98 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %or96, ptr %flags98, align 4
  br label %cleanup

if.else97:                                        ; preds = %sw.bb92
  call void @__sanitizer_cov_trace_pc() #24
  %and99 = and i32 %83, -129
  %85 = ptrtoint ptr %flags98 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %and99, ptr %flags98, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else97, %if.then94, %if.else88, %if.then85, %if.else79, %if.then76, %if.else70, %if.then67, %sw.bb61.cleanup_crit_edge, %if.else57, %if.then54, %if.else48, %if.then45, %if.then39, %land.lhs.true37.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.then26.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %netlink_allowed.exit.cleanup_crit_edge, %if.else, %if.then7, %if.end5.cleanup_crit_edge, %if.then11.i.i.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -92, %entry.cleanup_crit_edge ], [ -1, %netlink_allowed.exit.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end18.cleanup_crit_edge ], [ %call29, %if.then26.cleanup_crit_edge ], [ -1, %sw.bb61.cleanup_crit_edge ], [ 0, %if.else ], [ 0, %if.then7 ], [ 0, %if.then39 ], [ 0, %land.lhs.true37.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ], [ 0, %if.else48 ], [ 0, %if.then45 ], [ 0, %if.else57 ], [ 0, %if.then54 ], [ 0, %if.else70 ], [ 0, %if.then67 ], [ 0, %if.else79 ], [ 0, %if.then76 ], [ 0, %if.else88 ], [ 0, %if.then85 ], [ 0, %if.else97 ], [ 0, %if.then94 ], [ -92, %if.end5.cleanup_crit_edge ], [ -14, %if.then11.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #22
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlink_getsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 270, i32 %level)
  %cmp.not = icmp eq i32 %level, 270
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1728) #22
  %2 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #11, !srcloc !342
  %and.i = and i32 %4, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #22, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #22, !srcloc !345
  %asmresult = extractvalue { i32, i32 } %5, 0
  %asmresult3 = extractvalue { i32, i32 } %5, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #22, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult3)
  %cmp7 = icmp slt i32 %asmresult3, 0
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %6 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %optname, label %if.end9.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb42
    i32 5, label %sw.bb87
    i32 9, label %sw.bb132
    i32 10, label %sw.bb180
    i32 11, label %sw.bb225
    i32 12, label %sw.bb270
  ]

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %asmresult3)
  %cmp10 = icmp ult i32 %asmresult3, 4
  br i1 %cmp10, label %sw.bb.cleanup_crit_edge, label %if.end12

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end12:                                         ; preds = %sw.bb
  %flags = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1739) #22
  %9 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i365 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i365 to ptr
  %cpu_domain.i.i366 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i366) #11, !srcloc !342
  %and.i367 = and i32 %11, -13
  %or.i368 = or i32 %and.i367, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i368) #22, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  %12 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 4, i32 -1226833921) #22, !srcloc !346
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #22, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool23.not = icmp eq i32 %12, 0
  br i1 %tobool23.not, label %lor.lhs.false, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end12
  %13 = trunc i32 %8 to i8
  %14 = lshr i8 %13, 1
  %15 = and i8 %14, 1
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1740) #22
  %16 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i369 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i369 to ptr
  %cpu_domain.i.i370 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i370) #11, !srcloc !342
  %and.i371 = and i32 %18, -13
  %or.i372 = or i32 %and.i371, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i372) #22, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  %19 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i8 %15, i32 -1226833921) #22, !srcloc !347
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #22, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool39.not = icmp eq i32 %19, 0
  br i1 %tobool39.not, label %lor.lhs.false.sw.epilog_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %asmresult3)
  %cmp43 = icmp ult i32 %asmresult3, 4
  br i1 %cmp43, label %sw.bb42.cleanup_crit_edge, label %if.end46

sw.bb42.cleanup_crit_edge:                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end46:                                         ; preds = %sw.bb42
  %flags47 = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %flags47 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags47, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1749) #22
  %22 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i373 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i373 to ptr
  %cpu_domain.i.i374 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i374) #11, !srcloc !342
  %and.i375 = and i32 %24, -13
  %or.i376 = or i32 %and.i375, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i376) #22, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  %25 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 4, i32 -1226833921) #22, !srcloc !348
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #22, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool66.not = icmp eq i32 %25, 0
  br i1 %tobool66.not, label %lor.lhs.false67, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

lor.lhs.false67:                                  ; preds = %if.end46
  %26 = trunc i32 %21 to i8
  %27 = lshr i8 %26, 2
  %28 = and i8 %27, 1
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1750) #22
  %29 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i377 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i377 to ptr
  %cpu_domain.i.i378 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 4
  %31 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i378) #11, !srcloc !342
  %and.i379 = and i32 %31, -13
  %or.i380 = or i32 %and.i379, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i380) #22, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  %32 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i8 %28, i32 -1226833921) #22, !srcloc !349
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %31) #22, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool84.not = icmp eq i32 %32, 0
  br i1 %tobool84.not, label %lor.lhs.false67.sw.epilog_crit_edge, label %lor.lhs.false67.cleanup_crit_edge

lor.lhs.false67.cleanup_crit_edge:                ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

lor.lhs.false67.sw.epilog_crit_edge:              ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

sw.bb87:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %asmresult3)
  %cmp88 = icmp ult i32 %asmresult3, 4
  br i1 %cmp88, label %sw.bb87.cleanup_crit_edge, label %if.end91

sw.bb87.cleanup_crit_edge:                        ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end91:                                         ; preds = %sw.bb87
  %flags92 = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %flags92 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags92, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1759) #22
  %35 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i381 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i381 to ptr
  %cpu_domain.i.i382 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 4
  %37 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i382) #11, !srcloc !342
  %and.i383 = and i32 %37, -13
  %or.i384 = or i32 %and.i383, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i384) #22, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  %38 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 4, i32 -1226833921) #22, !srcloc !350
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #22, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool111.not = icmp eq i32 %38, 0
  br i1 %tobool111.not, label %lor.lhs.false112, label %if.end91.cleanup_crit_edge

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

lor.lhs.false112:                                 ; preds = %if.end91
  %39 = trunc i32 %34 to i8
  %40 = lshr i8 %39, 3
  %41 = and i8 %40, 1
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1760) #22
  %42 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i385 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i385 to ptr
  %cpu_domain.i.i386 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 4
  %44 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i386) #11, !srcloc !342
  %and.i387 = and i32 %44, -13
  %or.i388 = or i32 %and.i387, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i388) #22, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  %45 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i8 %41, i32 -1226833921) #22, !srcloc !351
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #22, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool129.not = icmp eq i32 %45, 0
  br i1 %tobool129.not, label %lor.lhs.false112.sw.epilog_crit_edge, label %lor.lhs.false112.cleanup_crit_edge

lor.lhs.false112.cleanup_crit_edge:               ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

lor.lhs.false112.sw.epilog_crit_edge:             ; preds = %lor.lhs.false112
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

sw.bb132:                                         ; preds = %if.end9
  tail call fastcc void @netlink_lock_table()
  %ngroups = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 6
  %46 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ngroups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp133421 = icmp eq i32 %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %asmresult3)
  %cmp135422 = icmp ult i32 %asmresult3, 4
  %or.cond423 = select i1 %cmp133421, i1 true, i1 %cmp135422
  br i1 %or.cond423, label %sw.bb132.for.end_crit_edge, label %if.end138.lr.ph

sw.bb132.for.end_crit_edge:                       ; preds = %sw.bb132
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

if.end138.lr.ph:                                  ; preds = %sw.bb132
  %groups = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 7
  br label %if.end138

for.cond:                                         ; preds = %if.end138
  %add = add i32 %pos.0424, 4
  %mul = shl i32 %add, 3
  %48 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ngroups, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %49)
  %cmp133 = icmp uge i32 %mul, %49
  %sub = sub i32 %asmresult3, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp135 = icmp ult i32 %sub, 4
  %or.cond = select i1 %cmp133, i1 true, i1 %cmp135
  br i1 %or.cond, label %for.cond.for.end_crit_edge, label %for.cond.if.end138_crit_edge

for.cond.if.end138_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end138

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

if.end138:                                        ; preds = %for.cond.if.end138_crit_edge, %if.end138.lr.ph
  %pos.0424 = phi i32 [ 0, %if.end138.lr.ph ], [ %add, %for.cond.if.end138_crit_edge ]
  %div364 = lshr exact i32 %pos.0424, 2
  %add.ptr = getelementptr i8, ptr %optval, i32 %pos.0424
  %50 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %groups, align 8
  %arrayidx = getelementptr i32, ptr %51, i32 %div364
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1776) #22
  %54 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i389 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i389 to ptr
  %cpu_domain.i.i390 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 4
  %56 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i390) #11, !srcloc !342
  %and.i391 = and i32 %56, -13
  %or.i392 = or i32 %and.i391, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i392) #22, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  %57 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr, i32 %53, i32 -1226833921) #22, !srcloc !352
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %56) #22, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool155.not = icmp eq i32 %57, 0
  br i1 %tobool155.not, label %for.cond, label %if.end138.for.end_crit_edge

if.end138.for.end_crit_edge:                      ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.end:                                          ; preds = %if.end138.for.end_crit_edge, %for.cond.for.end_crit_edge, %sw.bb132.for.end_crit_edge
  %err.0 = phi i32 [ 0, %sw.bb132.for.end_crit_edge ], [ -14, %if.end138.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  %58 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ngroups, align 4
  %div163363 = lshr i32 %59, 3
  %add164 = add nuw nsw i32 %div163363, 3
  %and165 = and i32 %add164, 1073741820
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1781) #22
  %60 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i393 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i393 to ptr
  %cpu_domain.i.i394 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 4
  %62 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i394) #11, !srcloc !342
  %and.i395 = and i32 %62, -13
  %or.i396 = or i32 %and.i395, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i396) #22, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  %63 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %and165, i32 -1226833921) #22, !srcloc !353
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %62) #22, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool177.not = icmp eq i32 %63, 0
  %spec.select = select i1 %tobool177.not, i32 %err.0, i32 -14
  tail call fastcc void @netlink_unlock_table()
  br label %sw.epilog

sw.bb180:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %asmresult3)
  %cmp181 = icmp ult i32 %asmresult3, 4
  br i1 %cmp181, label %sw.bb180.cleanup_crit_edge, label %if.end184

sw.bb180.cleanup_crit_edge:                       ; preds = %sw.bb180
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end184:                                        ; preds = %sw.bb180
  %flags185 = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 4
  %64 = ptrtoint ptr %flags185 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags185, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1791) #22
  %66 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i397 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i397 to ptr
  %cpu_domain.i.i398 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 4
  %68 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i398) #11, !srcloc !342
  %and.i399 = and i32 %68, -13
  %or.i400 = or i32 %and.i399, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i400) #22, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  %69 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 4, i32 -1226833921) #22, !srcloc !354
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %68) #22, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool204.not = icmp eq i32 %69, 0
  br i1 %tobool204.not, label %lor.lhs.false205, label %if.end184.cleanup_crit_edge

if.end184.cleanup_crit_edge:                      ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

lor.lhs.false205:                                 ; preds = %if.end184
  %70 = trunc i32 %65 to i8
  %71 = lshr i8 %70, 5
  %72 = and i8 %71, 1
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1792) #22
  %73 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i401 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i401 to ptr
  %cpu_domain.i.i402 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 4
  %75 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i402) #11, !srcloc !342
  %and.i403 = and i32 %75, -13
  %or.i404 = or i32 %and.i403, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i404) #22, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  %76 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i8 %72, i32 -1226833921) #22, !srcloc !355
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %75) #22, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool222.not = icmp eq i32 %76, 0
  br i1 %tobool222.not, label %lor.lhs.false205.sw.epilog_crit_edge, label %lor.lhs.false205.cleanup_crit_edge

lor.lhs.false205.cleanup_crit_edge:               ; preds = %lor.lhs.false205
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

lor.lhs.false205.sw.epilog_crit_edge:             ; preds = %lor.lhs.false205
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

sw.bb225:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %asmresult3)
  %cmp226 = icmp ult i32 %asmresult3, 4
  br i1 %cmp226, label %sw.bb225.cleanup_crit_edge, label %if.end229

sw.bb225.cleanup_crit_edge:                       ; preds = %sw.bb225
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end229:                                        ; preds = %sw.bb225
  %flags230 = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 4
  %77 = ptrtoint ptr %flags230 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags230, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1801) #22
  %79 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i405 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i405 to ptr
  %cpu_domain.i.i406 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 4
  %81 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i406) #11, !srcloc !342
  %and.i407 = and i32 %81, -13
  %or.i408 = or i32 %and.i407, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i408) #22, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  %82 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 4, i32 -1226833921) #22, !srcloc !356
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %81) #22, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool249.not = icmp eq i32 %82, 0
  br i1 %tobool249.not, label %lor.lhs.false250, label %if.end229.cleanup_crit_edge

if.end229.cleanup_crit_edge:                      ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

lor.lhs.false250:                                 ; preds = %if.end229
  %83 = trunc i32 %78 to i8
  %84 = lshr i8 %83, 6
  %85 = and i8 %84, 1
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1801) #22
  %86 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i409 = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i409 to ptr
  %cpu_domain.i.i410 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 4
  %88 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i410) #11, !srcloc !342
  %and.i411 = and i32 %88, -13
  %or.i412 = or i32 %and.i411, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i412) #22, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  %89 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i8 %85, i32 -1226833921) #22, !srcloc !357
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %88) #22, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool267.not = icmp eq i32 %89, 0
  br i1 %tobool267.not, label %lor.lhs.false250.sw.epilog_crit_edge, label %lor.lhs.false250.cleanup_crit_edge

lor.lhs.false250.cleanup_crit_edge:               ; preds = %lor.lhs.false250
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

lor.lhs.false250.sw.epilog_crit_edge:             ; preds = %lor.lhs.false250
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

sw.bb270:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %asmresult3)
  %cmp271 = icmp ult i32 %asmresult3, 4
  br i1 %cmp271, label %sw.bb270.cleanup_crit_edge, label %if.end274

sw.bb270.cleanup_crit_edge:                       ; preds = %sw.bb270
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end274:                                        ; preds = %sw.bb270
  %flags275 = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 4
  %90 = ptrtoint ptr %flags275 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %flags275, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1810) #22
  %92 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i413 = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i.i413 to ptr
  %cpu_domain.i.i414 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 4
  %94 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i414) #11, !srcloc !342
  %and.i415 = and i32 %94, -13
  %or.i416 = or i32 %and.i415, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i416) #22, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  %95 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 4, i32 -1226833921) #22, !srcloc !358
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %94) #22, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool294.not = icmp eq i32 %95, 0
  br i1 %tobool294.not, label %lor.lhs.false295, label %if.end274.cleanup_crit_edge

if.end274.cleanup_crit_edge:                      ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

lor.lhs.false295:                                 ; preds = %if.end274
  %96 = trunc i32 %91 to i8
  %97 = lshr i8 %96, 7
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1810) #22
  %98 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i417 = and i32 %98, -16384
  %99 = inttoptr i32 %and.i.i.i417 to ptr
  %cpu_domain.i.i418 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 4
  %100 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i418) #11, !srcloc !342
  %and.i419 = and i32 %100, -13
  %or.i420 = or i32 %and.i419, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i420) #22, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  %101 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i8 %97, i32 -1226833921) #22, !srcloc !359
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %100) #22, !srcloc !343
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #22, !srcloc !344
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool312.not = icmp eq i32 %101, 0
  br i1 %tobool312.not, label %lor.lhs.false295.sw.epilog_crit_edge, label %lor.lhs.false295.cleanup_crit_edge

lor.lhs.false295.cleanup_crit_edge:               ; preds = %lor.lhs.false295
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

lor.lhs.false295.sw.epilog_crit_edge:             ; preds = %lor.lhs.false295
  call void @__sanitizer_cov_trace_pc() #24
  br label %sw.epilog

sw.epilog:                                        ; preds = %lor.lhs.false295.sw.epilog_crit_edge, %lor.lhs.false250.sw.epilog_crit_edge, %lor.lhs.false205.sw.epilog_crit_edge, %for.end, %lor.lhs.false112.sw.epilog_crit_edge, %lor.lhs.false67.sw.epilog_crit_edge, %lor.lhs.false.sw.epilog_crit_edge, %if.end9.sw.epilog_crit_edge
  %err.2 = phi i32 [ %spec.select, %for.end ], [ 0, %lor.lhs.false.sw.epilog_crit_edge ], [ 0, %lor.lhs.false67.sw.epilog_crit_edge ], [ 0, %lor.lhs.false112.sw.epilog_crit_edge ], [ 0, %lor.lhs.false205.sw.epilog_crit_edge ], [ 0, %lor.lhs.false250.sw.epilog_crit_edge ], [ 0, %lor.lhs.false295.sw.epilog_crit_edge ], [ -92, %if.end9.sw.epilog_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %lor.lhs.false295.cleanup_crit_edge, %if.end274.cleanup_crit_edge, %sw.bb270.cleanup_crit_edge, %lor.lhs.false250.cleanup_crit_edge, %if.end229.cleanup_crit_edge, %sw.bb225.cleanup_crit_edge, %lor.lhs.false205.cleanup_crit_edge, %if.end184.cleanup_crit_edge, %sw.bb180.cleanup_crit_edge, %lor.lhs.false112.cleanup_crit_edge, %if.end91.cleanup_crit_edge, %sw.bb87.cleanup_crit_edge, %lor.lhs.false67.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %sw.bb42.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %sw.epilog ], [ -92, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -14, %lor.lhs.false.cleanup_crit_edge ], [ -14, %if.end12.cleanup_crit_edge ], [ -22, %sw.bb42.cleanup_crit_edge ], [ -14, %lor.lhs.false67.cleanup_crit_edge ], [ -14, %if.end46.cleanup_crit_edge ], [ -22, %sw.bb87.cleanup_crit_edge ], [ -14, %lor.lhs.false112.cleanup_crit_edge ], [ -14, %if.end91.cleanup_crit_edge ], [ -22, %sw.bb180.cleanup_crit_edge ], [ -14, %lor.lhs.false205.cleanup_crit_edge ], [ -14, %if.end184.cleanup_crit_edge ], [ -22, %sw.bb225.cleanup_crit_edge ], [ -14, %lor.lhs.false250.cleanup_crit_edge ], [ -14, %if.end229.cleanup_crit_edge ], [ -22, %sw.bb270.cleanup_crit_edge ], [ -14, %lor.lhs.false295.cleanup_crit_edge ], [ -14, %if.end274.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlink_sendmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %len) #0 align 64 {
entry:
  %scm = alloca %struct.scm_cookie, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msg, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %scm) #22
  %4 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 1
  %5 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 2
  %6 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 2, i32 1
  %7 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 2, i32 2
  %8 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 3
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %9 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_flags, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %land.end, label %if.end22

land.end:                                         ; preds = %if.end
  %.b149 = load i1, ptr @netlink_sendmsg.__already_done, align 1
  br i1 %.b149, label %land.end.cleanup_crit_edge, label %if.then8, !prof !303

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then8:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @netlink_sendmsg.__already_done, align 1
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #27
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %11 = call ptr @memset(ptr %scm, i32 0, i32 24)
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %6, align 4
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %7, align 4
  %14 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 111
  %18 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %19, i32 0, i32 22, i32 1
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 4
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 99
  %22 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cred.i, align 16
  %uid7.i = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %uid7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %agg.tmp.sroa.0.0.copyload.i = load i32, ptr %uid7.i, align 4
  %gid15.i = getelementptr inbounds %struct.cred, ptr %23, i32 0, i32 5
  %25 = ptrtoint ptr %gid15.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %agg.tmp8.sroa.0.0.copyload.i = load i32, ptr %gid15.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i.i, label %if.end22.scm_set_cred.exit.i_crit_edge, label %if.then.i.i.i

if.end22.scm_set_cred.exit.i_crit_edge:           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #24
  br label %scm_set_cred.exit.i

if.then.i.i.i:                                    ; preds = %if.end22
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %21, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr nonnull %21, i32 1, i32 3, i32 1) #22
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %21, ptr nonnull %21, i32 1, ptr nonnull elementtype(i32) %21) #22, !srcloc !315
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !304

if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %27 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %.not.i.i.i.i.i.i = icmp sgt i32 %27, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.scm_set_cred.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !303

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.scm_set_cred.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %scm_set_cred.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %21, i32 noundef %.sink.i.i.i.i.i.i) #22
  br label %scm_set_cred.exit.i

scm_set_cred.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.scm_set_cred.exit.i_crit_edge, %if.end22.scm_set_cred.exit.i_crit_edge
  %28 = ptrtoint ptr %scm to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %21, ptr %scm, align 4
  %call3.i.i = tail call i32 @pid_vnr(ptr noundef %21) #22
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call3.i.i, ptr %5, align 4
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %agg.tmp.sroa.0.0.copyload.i, ptr %6, align 4
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %agg.tmp8.sroa.0.0.copyload.i, ptr %7, align 4
  %call.i.i = call i32 @security_socket_getpeersec_dgram(ptr noundef %sock, ptr noundef null, ptr noundef %8) #22
  %msg_controllen.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %32 = ptrtoint ptr %msg_controllen.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msg_controllen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i = icmp eq i32 %33, 0
  br i1 %cmp.i, label %scm_set_cred.exit.i.if.end26_crit_edge, label %scm_send.exit

scm_set_cred.exit.i.if.end26_crit_edge:           ; preds = %scm_set_cred.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end26

scm_send.exit:                                    ; preds = %scm_set_cred.exit.i
  %call19.i = call i32 @__scm_send(ptr noundef %sock, ptr noundef %msg, ptr noundef nonnull %scm) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp24 = icmp slt i32 %call19.i, 0
  br i1 %cmp24, label %scm_send.exit.cleanup_crit_edge, label %scm_send.exit.if.end26_crit_edge

scm_send.exit.if.end26_crit_edge:                 ; preds = %scm_send.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end26

scm_send.exit.cleanup_crit_edge:                  ; preds = %scm_send.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end26:                                         ; preds = %scm_send.exit.if.end26_crit_edge, %scm_set_cred.exit.i.if.end26_crit_edge
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %34 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_namelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool27.not = icmp eq i32 %35, 0
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %35)
  %cmp30 = icmp ult i32 %35, 12
  br i1 %cmp30, label %if.then28.out_crit_edge, label %if.end32

if.then28.out_crit_edge:                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.end32:                                         ; preds = %if.then28
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %37)
  %cmp33.not = icmp eq i16 %37, 16
  br i1 %cmp33.not, label %if.end36, label %if.end32.out_crit_edge

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.end36:                                         ; preds = %if.end32
  %nl_pid = getelementptr inbounds %struct.sockaddr_nl, ptr %3, i32 0, i32 2
  %38 = ptrtoint ptr %nl_pid to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nl_pid, align 4
  %nl_groups = getelementptr inbounds %struct.sockaddr_nl, ptr %3, i32 0, i32 3
  %40 = ptrtoint ptr %nl_groups to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nl_groups, align 4
  %42 = call i32 @llvm.cttz.i32(i32 %41, i1 true), !range !340
  %43 = add nuw nsw i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %iszero = icmp eq i32 %41, 0
  %ffs = select i1 %iszero, i32 0, i32 %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool38.not = icmp eq i32 %39, 0
  %or.cond = select i1 %iszero, i1 %tobool38.not, i1 false
  br i1 %or.cond, label %if.end36.do.end48_crit_edge, label %land.lhs.true

if.end36.do.end48_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end48

land.lhs.true:                                    ; preds = %if.end36
  %call39 = call fastcc i32 @netlink_allowed(ptr noundef %sock, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true.out_crit_edge, label %land.lhs.true.do.end48_crit_edge

land.lhs.true.do.end48_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end48

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.else:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #24
  %dst_portid43 = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %dst_portid43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dst_portid43, align 4
  %dst_group44 = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 3
  %46 = ptrtoint ptr %dst_group44 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dst_group44, align 8
  br label %do.end48

do.end48:                                         ; preds = %if.else, %land.lhs.true.do.end48_crit_edge, %if.end36.do.end48_crit_edge
  %dst_portid.0 = phi i32 [ %45, %if.else ], [ 0, %if.end36.do.end48_crit_edge ], [ %39, %land.lhs.true.do.end48_crit_edge ]
  %dst_group.0 = phi i32 [ %47, %if.else ], [ %ffs, %if.end36.do.end48_crit_edge ], [ %ffs, %land.lhs.true.do.end48_crit_edge ]
  %netlink_skb_flags.0 = phi i32 [ 0, %if.else ], [ 8, %if.end36.do.end48_crit_edge ], [ 8, %land.lhs.true.do.end48_crit_edge ]
  %bound = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 11
  %48 = ptrtoint ptr %bound to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load volatile i8, ptr %bound, align 8, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool50.not = icmp eq i8 %49, 0
  br i1 %tobool50.not, label %if.then52, label %do.end61

if.then52:                                        ; preds = %do.end48
  %call53 = call fastcc i32 @netlink_autobind(ptr noundef %sock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then52.if.end64_crit_edge, label %if.then52.out_crit_edge

if.then52.out_crit_edge:                          ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.then52.if.end64_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end64

do.end61:                                         ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !360
  br label %if.end64

if.end64:                                         ; preds = %do.end61, %if.then52.if.end64_crit_edge
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 21
  %50 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sk_sndbuf, align 4
  %sub = add i32 %51, -32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %len)
  %cmp65 = icmp ult i32 %sub, %len
  br i1 %cmp65, label %if.end64.out_crit_edge, label %if.end68

if.end64.out_crit_edge:                           ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.end68:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_const_cmp4(i32 3840, i32 %len)
  %cmp.i150 = icmp ugt i32 %len, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dst_group.0)
  %tobool.not.i = icmp eq i32 %dst_group.0, 0
  %or.cond.i = and i1 %cmp.i150, %tobool.not.i
  br i1 %or.cond.i, label %if.end.i, label %netlink_alloc_large_skb.exit

if.end.i:                                         ; preds = %if.end68
  %52 = add i32 %len, 383
  %add1.i = and i32 %52, -128
  %call2.i = call noalias ptr @vmalloc(i32 noundef %add1.i) #28
  %cmp3.i = icmp eq ptr %call2.i, null
  br i1 %cmp3.i, label %if.end.i.out_crit_edge, label %if.end5.i

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = call ptr @__build_skb(ptr noundef nonnull %call2.i, i32 noundef %add1.i) #22
  %cmp7.i = icmp eq ptr %call6.i, null
  br i1 %cmp7.i, label %if.then8.i, label %netlink_alloc_large_skb.exit.thread161

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #24
  call void @vfree(ptr noundef nonnull %call2.i) #22
  br label %out

netlink_alloc_large_skb.exit.thread161:           ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #24
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %call6.i, i32 0, i32 4, i32 0, i32 1
  %53 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @netlink_skb_destructor, ptr %destructor.i, align 4
  br label %if.end73

netlink_alloc_large_skb.exit:                     ; preds = %if.end68
  %call.i.i151 = call ptr @__alloc_skb(i32 noundef %len, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #22
  %cmp70 = icmp eq ptr %call.i.i151, null
  br i1 %cmp70, label %netlink_alloc_large_skb.exit.out_crit_edge, label %netlink_alloc_large_skb.exit.if.end73_crit_edge

netlink_alloc_large_skb.exit.if.end73_crit_edge:  ; preds = %netlink_alloc_large_skb.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end73

netlink_alloc_large_skb.exit.out_crit_edge:       ; preds = %netlink_alloc_large_skb.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.end73:                                         ; preds = %netlink_alloc_large_skb.exit.if.end73_crit_edge, %netlink_alloc_large_skb.exit.thread161
  %retval.0.i152164 = phi ptr [ %call6.i, %netlink_alloc_large_skb.exit.thread161 ], [ %call.i.i151, %netlink_alloc_large_skb.exit.if.end73_crit_edge ]
  %portid = getelementptr inbounds %struct.netlink_sock, ptr %1, i32 0, i32 1
  %54 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %portid, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i152164, i32 0, i32 3
  %portid74 = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i152164, i32 0, i32 3, i32 12
  %56 = ptrtoint ptr %portid74 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %portid74, align 4
  %dst_group76 = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i152164, i32 0, i32 3, i32 16
  %57 = ptrtoint ptr %dst_group76 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %dst_group.0, ptr %dst_group76, align 8
  %58 = call ptr @memcpy(ptr %cb, ptr %5, i32 12)
  %flags = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i152164, i32 0, i32 3, i32 20
  %59 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %netlink_skb_flags.0, ptr %flags, align 4
  %call80 = call ptr @skb_put(ptr noundef nonnull %retval.0.i152164, i32 noundef %len) #22
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp9.i.i.i.i = icmp slt i32 %len, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i.i

land.rhs16.i.i.i.i:                               ; preds = %if.end73
  %.b1.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge, label %if.then27.i.i.i.i, !prof !303

land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge: ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %copy_from_iter.exit.i.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 230, i32 noundef 9, ptr noundef null) #22
  br label %copy_from_iter.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #24
  call void @__check_object_size(ptr noundef %call80, i32 noundef %len, i1 noundef zeroext false) #22
  %call3.i.i.i = call i32 @_copy_from_iter(ptr noundef %call80, i32 noundef %len, ptr noundef %msg_iter.i) #22
  br label %copy_from_iter.exit.i.i

copy_from_iter.exit.i.i:                          ; preds = %if.then.i.i.i.i.i, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call3.i.i.i, %if.then.i.i.i.i.i ], [ 0, %if.then27.i.i.i.i ], [ 0, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %len)
  %cmp.i.i = icmp eq i32 %retval.0.i.i.i, %len
  br i1 %cmp.i.i, label %if.end84, label %if.then83, !prof !303

if.then83:                                        ; preds = %copy_from_iter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #24
  call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %retval.0.i.i.i) #22
  call void @kfree_skb_reason(ptr noundef nonnull %retval.0.i152164, i32 noundef 0) #22
  br label %out

if.end84:                                         ; preds = %copy_from_iter.exit.i.i
  %call85 = call i32 @security_netlink_send(ptr noundef %1, ptr noundef nonnull %retval.0.i152164) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.then87

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #24
  call void @kfree_skb_reason(ptr noundef nonnull %retval.0.i152164, i32 noundef 0) #22
  br label %out

if.end88:                                         ; preds = %if.end84
  br i1 %tobool.not.i, label %if.end88.if.end92_crit_edge, label %if.then90

if.end88.if.end92_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end92

if.then90:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #24
  %users = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i152164, i32 0, i32 21
  call fastcc void @refcount_inc(ptr noundef %users)
  %call91 = call i32 @netlink_broadcast(ptr noundef %1, ptr noundef nonnull %retval.0.i152164, i32 noundef %dst_portid.0, i32 noundef %dst_group.0, i32 noundef 3264)
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %if.end88.if.end92_crit_edge
  %60 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %msg_flags, align 4
  %and94 = and i32 %61, 64
  %call95 = call i32 @netlink_unicast(ptr noundef %1, ptr noundef nonnull %retval.0.i152164, i32 noundef %dst_portid.0, i32 noundef %and94)
  br label %out

out:                                              ; preds = %if.end92, %if.then87, %if.then83, %netlink_alloc_large_skb.exit.out_crit_edge, %if.then8.i, %if.end.i.out_crit_edge, %if.end64.out_crit_edge, %if.then52.out_crit_edge, %land.lhs.true.out_crit_edge, %if.end32.out_crit_edge, %if.then28.out_crit_edge
  %err.0 = phi i32 [ -22, %if.then28.out_crit_edge ], [ -22, %if.end32.out_crit_edge ], [ -90, %if.end64.out_crit_edge ], [ -105, %netlink_alloc_large_skb.exit.out_crit_edge ], [ -14, %if.then83 ], [ %call85, %if.then87 ], [ %call95, %if.end92 ], [ %call53, %if.then52.out_crit_edge ], [ -1, %land.lhs.true.out_crit_edge ], [ -105, %if.end.i.out_crit_edge ], [ -105, %if.then8.i ]
  %62 = ptrtoint ptr %scm to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %scm, align 4
  call void @put_pid(ptr noundef %63) #22
  %64 = ptrtoint ptr %scm to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %scm, align 4
  %65 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %4, align 4
  %tobool.not.i153 = icmp eq ptr %66, null
  br i1 %tobool.not.i153, label %out.cleanup_crit_edge, label %if.then.i154

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then.i154:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #24
  call void @__scm_destroy(ptr noundef nonnull %scm) #22
  br label %cleanup

cleanup:                                          ; preds = %if.then.i154, %out.cleanup_crit_edge, %scm_send.exit.cleanup_crit_edge, %if.then8, %land.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -61, %if.then8 ], [ -61, %land.end.cleanup_crit_edge ], [ %call19.i, %scm_send.exit.cleanup_crit_edge ], [ %err.0, %out.cleanup_crit_edge ], [ %err.0, %if.then.i154 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %scm) #22
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlink_recvmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  %secdata.i.i = alloca ptr, align 4
  %seclen.i.i = alloca i32, align 4
  %ucreds.i = alloca %struct.ucred, align 4
  %info.i = alloca %struct.nl_pktinfo, align 4
  %scm = alloca %struct.scm_cookie, align 4
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %scm) #22
  %0 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 1
  %1 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 2
  %2 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 2, i32 1
  %3 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 2, i32 2
  %4 = getelementptr inbounds %struct.scm_cookie, ptr %scm, i32 0, i32 3
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %5 = call ptr @memset(ptr %scm, i32 255, i32 24)
  %6 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #22
  %8 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %err, align 4, !annotation !305
  %and2 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 64
  %call3 = call ptr @skb_recv_datagram(ptr noundef %7, i32 noundef %flags, i32 noundef %and, ptr noundef nonnull %err) #22
  %cmp = icmp eq ptr %call3, null
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.end5:                                          ; preds = %if.end
  %max_recvmsg_len = getelementptr inbounds %struct.netlink_sock, ptr %7, i32 0, i32 9
  %9 = ptrtoint ptr %max_recvmsg_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_recvmsg_len, align 8
  %11 = call i32 @llvm.umax.i32(i32 %10, i32 %len)
  %12 = call i32 @llvm.umin.i32(i32 %11, i32 32512)
  %13 = ptrtoint ptr %max_recvmsg_len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %max_recvmsg_len, align 8
  %len16 = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 6
  %14 = ptrtoint ptr %len16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %len)
  %cmp17 = icmp ugt i32 %15, %len
  br i1 %cmp17, label %if.then18, label %if.end5.if.end19_crit_edge

if.end5.if.end19_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end19

if.then18:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #24
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %16 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_flags, align 4
  %or = or i32 %17, 32
  store i32 %or, ptr %msg_flags, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end5.if.end19_crit_edge
  %copied.0 = phi i32 [ %len, %if.then18 ], [ %15, %if.end5.if.end19_crit_edge ]
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 19
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 18
  %20 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 15, i32 0, i32 19
  %22 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call.i = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %call3, i32 noundef 0, ptr noundef %msg_iter.i, i32 noundef %copied.0) #22
  %23 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call.i, ptr %err, align 4
  %24 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %msg, align 8
  %tobool21.not = icmp eq ptr %25, null
  br i1 %tobool21.not, label %if.end19.if.end27_crit_edge, label %if.then22

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end27

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #24
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 16, ptr %25, align 4
  %nl_pad = getelementptr inbounds %struct.sockaddr_nl, ptr %25, i32 0, i32 1
  %27 = ptrtoint ptr %nl_pad to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %nl_pad, align 2
  %portid = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 3, i32 12
  %28 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %portid, align 4
  %nl_pid = getelementptr inbounds %struct.sockaddr_nl, ptr %25, i32 0, i32 2
  %30 = ptrtoint ptr %nl_pid to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %nl_pid, align 4
  %dst_group = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 3, i32 16
  %31 = ptrtoint ptr %dst_group to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dst_group, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  %sub.i = add i32 %32, -1
  %shl.i = shl nuw i32 1, %sub.i
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %shl.i
  %nl_groups = getelementptr inbounds %struct.sockaddr_nl, ptr %25, i32 0, i32 3
  %33 = ptrtoint ptr %nl_groups to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %cond.i, ptr %nl_groups, align 4
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %34 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 12, ptr %msg_namelen, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %if.end19.if.end27_crit_edge
  %flags28 = getelementptr inbounds %struct.netlink_sock, ptr %7, i32 0, i32 4
  %35 = ptrtoint ptr %flags28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags28, align 4
  %and29 = and i32 %36, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.if.end32_crit_edge, label %if.then31

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end32

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info.i) #22
  %dst_group.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 3, i32 16
  %37 = ptrtoint ptr %dst_group.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dst_group.i, align 8
  %39 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %info.i, align 4
  %call.i119 = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 270, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %info.i) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info.i) #22
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end27.if.end32_crit_edge
  %40 = ptrtoint ptr %flags28 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags28, align 4
  %and34 = and i32 %41, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end32.if.end37_crit_edge, label %if.then36

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end37

if.then36:                                        ; preds = %if.end32
  %nsid_is_set.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 3, i32 28
  %42 = ptrtoint ptr %nsid_is_set.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %nsid_is_set.i, align 4, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i120 = icmp eq i8 %43, 0
  br i1 %tobool.not.i120, label %if.then36.if.end37_crit_edge, label %if.end.i

if.then36.if.end37_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end37

if.end.i:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #24
  %nsid.i = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 3, i32 32
  %call.i121 = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 270, i32 noundef 8, i32 noundef 4, ptr noundef %nsid.i) #22
  br label %if.end37

if.end37:                                         ; preds = %if.end.i, %if.then36.if.end37_crit_edge, %if.end32.if.end37_crit_edge
  %44 = call ptr @memset(ptr %scm, i32 0, i32 24)
  %cb38 = getelementptr inbounds %struct.sk_buff, ptr %call3, i32 0, i32 3
  %45 = call ptr @memcpy(ptr %1, ptr %cb38, i32 12)
  %and40 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end37.if.end44_crit_edge, label %if.then42

if.end37.if.end44_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end44

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #24
  %46 = ptrtoint ptr %len16 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len16, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end37.if.end44_crit_edge
  %copied.1 = phi i32 [ %47, %if.then42 ], [ %copied.0, %if.end37.if.end44_crit_edge ]
  call void @skb_free_datagram(ptr noundef %7, ptr noundef nonnull %call3) #22
  %cb_running = getelementptr inbounds %struct.netlink_sock, ptr %7, i32 0, i32 12
  %48 = ptrtoint ptr %cb_running to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %cb_running, align 1, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool45.not = icmp eq i8 %49, 0
  br i1 %tobool45.not, label %if.end44.if.end53_crit_edge, label %land.lhs.true

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end53

land.lhs.true:                                    ; preds = %if.end44
  %sk_backlog = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 9
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog, i32 noundef 4) #22
  %50 = ptrtoint ptr %sk_backlog to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %sk_backlog, align 4
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 15
  %52 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sk_rcvbuf, align 8
  %div = sdiv i32 %53, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %div)
  %cmp47.not = icmp sgt i32 %51, %div
  br i1 %cmp47.not, label %land.lhs.true.if.end53_crit_edge, label %if.then48

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end53

if.then48:                                        ; preds = %land.lhs.true
  %call49 = call fastcc i32 @netlink_dump(ptr noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then48.if.end53_crit_edge, label %if.then51

if.then48.if.end53_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end53

if.then51:                                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #24
  %sub = sub i32 0, %call49
  %sk_err = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 51
  %54 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %sub, ptr %sk_err, align 4
  call void @sk_error_report(ptr noundef %7) #22
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.then48.if.end53_crit_edge, %land.lhs.true.if.end53_crit_edge, %if.end44.if.end53_crit_edge
  %55 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %tobool.not.i122 = icmp eq ptr %57, null
  %flags1.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 2
  %58 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %flags1.i, align 4
  %60 = and i32 %59, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool2.not.i = icmp eq i32 %60, 0
  br i1 %tobool.not.i122, label %if.then.i, label %if.end5.i

if.then.i:                                        ; preds = %if.end53
  br i1 %tobool2.not.i, label %lor.lhs.false.i, label %if.then.i.if.then4.i_crit_edge

if.then.i.if.then4.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then4.i

lor.lhs.false.i:                                  ; preds = %if.then.i
  %61 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %0, align 4
  %tobool3.not.i = icmp eq ptr %62, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.if.end.i123_crit_edge, label %lor.lhs.false.i.if.then4.i_crit_edge

lor.lhs.false.i.if.then4.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then4.i

lor.lhs.false.i.if.end.i123_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i123

if.then4.i:                                       ; preds = %lor.lhs.false.i.if.then4.i_crit_edge, %if.then.i.if.then4.i_crit_edge
  %msg_flags.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %63 = ptrtoint ptr %msg_flags.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %msg_flags.i, align 4
  %or.i = or i32 %64, 8
  store i32 %or.i, ptr %msg_flags.i, align 4
  br label %if.end.i123

if.end.i123:                                      ; preds = %if.then4.i, %lor.lhs.false.i.if.end.i123_crit_edge
  %65 = ptrtoint ptr %scm to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %scm, align 4
  call void @put_pid(ptr noundef %66) #22
  %67 = ptrtoint ptr %scm to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %scm, align 4
  %68 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %0, align 4
  %tobool.not.i.i = icmp eq ptr %69, null
  br i1 %tobool.not.i.i, label %if.end.i123.out_crit_edge, label %if.then.i.i

if.end.i123.out_crit_edge:                        ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.then.i.i:                                      ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #24
  call void @__scm_destroy(ptr noundef nonnull %scm) #22
  br label %out

if.end5.i:                                        ; preds = %if.end53
  br i1 %tobool2.not.i, label %if.end5.i.if.end21.i_crit_edge, label %if.then9.i

if.end5.i.if.end21.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end21.i

if.then9.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #24
  %70 = call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %task.i, align 8
  %cred.i = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 99
  %74 = ptrtoint ptr %cred.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cred.i, align 16
  %user_ns.i = getelementptr inbounds %struct.cred, ptr %75, i32 0, i32 25
  %76 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %user_ns.i, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ucreds.i) #22
  %78 = getelementptr inbounds %struct.ucred, ptr %ucreds.i, i32 0, i32 1
  %79 = getelementptr inbounds %struct.ucred, ptr %ucreds.i, i32 0, i32 2
  %80 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %1, align 4
  %82 = ptrtoint ptr %ucreds.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %ucreds.i, align 4
  %83 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %.unpack.i = load i32, ptr %2, align 4
  %84 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call15.i = call i32 @from_kuid_munged(ptr noundef %77, [1 x i32] %84) #22
  %85 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %call15.i, ptr %78, align 4
  %86 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %.unpack1.i = load i32, ptr %3, align 4
  %87 = insertvalue [1 x i32] undef, i32 %.unpack1.i, 0
  %call19.i = call i32 @from_kgid_munged(ptr noundef %77, [1 x i32] %87) #22
  %88 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %call19.i, ptr %79, align 4
  %call20.i = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 1, i32 noundef 2, i32 noundef 12, ptr noundef nonnull %ucreds.i) #22
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ucreds.i) #22
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then9.i, %if.end5.i.if.end21.i_crit_edge
  %89 = ptrtoint ptr %scm to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %scm, align 4
  call void @put_pid(ptr noundef %90) #22
  %91 = ptrtoint ptr %scm to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %scm, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secdata.i.i) #22
  %92 = ptrtoint ptr %secdata.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 -1 to ptr), ptr %secdata.i.i, align 4, !annotation !305
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seclen.i.i) #22
  %93 = ptrtoint ptr %seclen.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -1, ptr %seclen.i.i, align 4, !annotation !305
  %94 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %flags1.i, align 4
  %96 = and i32 %95, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i4.i = icmp eq i32 %96, 0
  br i1 %tobool.not.i4.i, label %if.end21.i.scm_passec.exit.i_crit_edge, label %if.then.i5.i

if.end21.i.scm_passec.exit.i_crit_edge:           ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %scm_passec.exit.i

if.then.i5.i:                                     ; preds = %if.end21.i
  %97 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %4, align 4
  %call1.i.i = call i32 @security_secid_to_secctx(i32 noundef %98, ptr noundef nonnull %secdata.i.i, ptr noundef nonnull %seclen.i.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %if.then.i5.i.scm_passec.exit.i_crit_edge

if.then.i5.i.scm_passec.exit.i_crit_edge:         ; preds = %if.then.i5.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %scm_passec.exit.i

if.then3.i.i:                                     ; preds = %if.then.i5.i
  call void @__sanitizer_cov_trace_pc() #24
  %99 = ptrtoint ptr %seclen.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %seclen.i.i, align 4
  %101 = ptrtoint ptr %secdata.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %secdata.i.i, align 4
  %call4.i.i = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 1, i32 noundef 3, i32 noundef %100, ptr noundef %102) #22
  %103 = ptrtoint ptr %secdata.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %secdata.i.i, align 4
  %105 = ptrtoint ptr %seclen.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %seclen.i.i, align 4
  call void @security_release_secctx(ptr noundef %104, i32 noundef %106) #22
  br label %scm_passec.exit.i

scm_passec.exit.i:                                ; preds = %if.then3.i.i, %if.then.i5.i.scm_passec.exit.i_crit_edge, %if.end21.i.scm_passec.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seclen.i.i) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secdata.i.i) #22
  %107 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %0, align 4
  %tobool23.not.i = icmp eq ptr %108, null
  br i1 %tobool23.not.i, label %scm_passec.exit.i.out_crit_edge, label %if.end25.i

scm_passec.exit.i.out_crit_edge:                  ; preds = %scm_passec.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %out

if.end25.i:                                       ; preds = %scm_passec.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  call void @scm_detach_fds(ptr noundef %msg, ptr noundef nonnull %scm) #22
  br label %out

out:                                              ; preds = %if.end25.i, %scm_passec.exit.i.out_crit_edge, %if.then.i.i, %if.end.i123.out_crit_edge, %if.end.out_crit_edge
  %copied.2 = phi i32 [ 0, %if.end.out_crit_edge ], [ %copied.1, %if.end.i123.out_crit_edge ], [ %copied.1, %if.then.i.i ], [ %copied.1, %scm_passec.exit.i.out_crit_edge ], [ %copied.1, %if.end25.i ]
  %sk_receive_queue.i = getelementptr inbounds %struct.sock, ptr %7, i32 0, i32 8
  %109 = ptrtoint ptr %sk_receive_queue.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile ptr, ptr %sk_receive_queue.i, align 4
  %cmp.i.i = icmp eq ptr %110, %sk_receive_queue.i
  br i1 %cmp.i.i, label %if.then.i124, label %out.if.end.i126_crit_edge

out.if.end.i126_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i126

if.then.i124:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #24
  %state.i = getelementptr inbounds %struct.netlink_sock, ptr %7, i32 0, i32 8
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i) #22
  br label %if.end.i126

if.end.i126:                                      ; preds = %if.then.i124, %out.if.end.i126_crit_edge
  %state2.i = getelementptr inbounds %struct.netlink_sock, ptr %7, i32 0, i32 8
  %111 = ptrtoint ptr %state2.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile i32, ptr %state2.i, align 4
  %and1.i.i = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i125 = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i125, label %if.then4.i127, label %if.end.i126.netlink_rcv_wake.exit_crit_edge

if.end.i126.netlink_rcv_wake.exit_crit_edge:      ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_rcv_wake.exit

if.then4.i127:                                    ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #24
  %wait.i = getelementptr inbounds %struct.netlink_sock, ptr %7, i32 0, i32 10
  call void @__wake_up(ptr noundef %wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #22
  br label %netlink_rcv_wake.exit

netlink_rcv_wake.exit:                            ; preds = %if.then4.i127, %if.end.i126.netlink_rcv_wake.exit_crit_edge
  %113 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool54.not = icmp eq i32 %114, 0
  %spec.select = select i1 %tobool54.not, i32 %copied.2, i32 %114
  br label %cleanup

cleanup:                                          ; preds = %netlink_rcv_wake.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %netlink_rcv_wake.exit ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %scm) #22
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @deferred_put_nlk_sk(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -1268
  %groups = getelementptr i8, ptr %head, i32 -284
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 8
  tail call void @kfree(ptr noundef %1) #22
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %groups, align 8
  %skc_refcnt = getelementptr i8, ptr %head, i32 -1168
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !317
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt, i32 1, i32 3, i32 1) #22
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt, ptr %skc_refcnt, i32 1, ptr elementtype(i32) %skc_refcnt) #22, !srcloc !318
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !303

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt, i32 noundef 3) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !319
  %cb_running = getelementptr i8, ptr %head, i32 -219
  %4 = ptrtoint ptr %cb_running to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cb_running, align 1, !range !328
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %land.lhs.true

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %done = getelementptr i8, ptr %head, i32 -200
  %6 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %done, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.if.end12_crit_edge, label %do.body

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end12

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  %work = getelementptr i8, ptr %head, i32 8
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #22
  %8 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr i8, ptr %head, i32 24
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.29, ptr noundef nonnull @deferred_put_nlk_sk.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #22
  %entry8 = getelementptr i8, ptr %head, i32 12
  %9 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr i8, ptr %head, i32 16
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry8, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %head, i32 20
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @netlink_sock_destruct_work, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %work) #22
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  tail call void @sk_free(ptr noundef %add.ptr) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.body, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netlink_update_listeners(ptr nocapture noundef readonly %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @nl_table, align 4
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %1 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %sk_protocol, align 4
  %idxprom = zext i16 %2 to i32
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rwlock_t, ptr @nl_table_lock, i32 0, i32 4), i32 noundef -1) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b63 = load i1, ptr @netlink_update_listeners.__warned, align 1
  br i1 %.b63, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @netlink_update_listeners.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 554, ptr noundef nonnull @.str.5) #22
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %listeners5 = getelementptr %struct.netlink_table, ptr %0, i32 %idxprom, i32 2
  %3 = ptrtoint ptr %listeners5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %listeners5, align 4
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %for.cond.preheader

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end
  %groups = getelementptr %struct.netlink_table, ptr %0, i32 %idxprom, i32 4
  %5 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %groups, align 4
  %add71 = add i32 %6, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add71)
  %cmp73.not = icmp ult i32 %add71, 32
  br i1 %cmp73.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mc_list = getelementptr %struct.netlink_table, ptr %0, i32 %idxprom, i32 1
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.074 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.end.for.body_crit_edge ]
  %7 = ptrtoint ptr %mc_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mc_list, align 4
  %tobool11.not = icmp eq ptr %8, null
  %add.ptr = getelementptr i8, ptr %8, i32 -24
  %tobool14.not6775 = icmp eq ptr %add.ptr, null
  %tobool14.not67 = or i1 %tobool11.not, %tobool14.not6775
  br i1 %tobool14.not67, label %for.body.for.end_crit_edge, label %for.body.for.body15_crit_edge

for.body.for.body15_crit_edge:                    ; preds = %for.body
  br label %for.body15

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.body15:                                       ; preds = %for.inc.for.body15_crit_edge, %for.body.for.body15_crit_edge
  %sk.addr.069 = phi ptr [ %add.ptr33, %for.inc.for.body15_crit_edge ], [ %add.ptr, %for.body.for.body15_crit_edge ]
  %mask.068 = phi i32 [ %mask.1, %for.inc.for.body15_crit_edge ], [ 0, %for.body.for.body15_crit_edge ]
  %ngroups = getelementptr inbounds %struct.netlink_sock, ptr %sk.addr.069, i32 0, i32 6
  %9 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ngroups, align 4
  %add17 = add i32 %10, 31
  %div2062 = lshr i32 %add17, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %i.074, i32 %div2062)
  %cmp21 = icmp ult i32 %i.074, %div2062
  br i1 %cmp21, label %if.then22, label %for.body15.for.inc_crit_edge

for.body15.for.inc_crit_edge:                     ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

if.then22:                                        ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #24
  %groups24 = getelementptr inbounds %struct.netlink_sock, ptr %sk.addr.069, i32 0, i32 7
  %11 = ptrtoint ptr %groups24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %groups24, align 8
  %arrayidx25 = getelementptr i32, ptr %12, i32 %i.074
  %13 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx25, align 4
  %or = or i32 %14, %mask.068
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %for.body15.for.inc_crit_edge
  %mask.1 = phi i32 [ %or, %if.then22 ], [ %mask.068, %for.body15.for.inc_crit_edge ]
  %15 = getelementptr inbounds %struct.sock_common, ptr %sk.addr.069, i32 0, i32 7
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %tobool29.not = icmp eq ptr %17, null
  %add.ptr33 = getelementptr i8, ptr %17, i32 -24
  %tobool14.not76 = icmp eq ptr %add.ptr33, null
  %tobool14.not = or i1 %tobool29.not, %tobool14.not76
  br i1 %tobool14.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body15_crit_edge

for.inc.for.body15_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body15

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %mask.0.lcssa = phi i32 [ 0, %for.body.for.end_crit_edge ], [ %mask.1, %for.inc.for.end_crit_edge ]
  %arrayidx37 = getelementptr %struct.listeners, ptr %4, i32 0, i32 1, i32 %i.074
  %18 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mask.0.lcssa, ptr %arrayidx37, align 4
  %inc = add nuw nsw i32 %i.074, 1
  %19 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %groups, align 4
  %add = add i32 %20, 31
  %div960 = lshr i32 %add, 5
  %cmp = icmp ult i32 %inc, %div960
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !361
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #22
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !362

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #22
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #22, !srcloc !363
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !364
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !303

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !365
  %7 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !366
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #22, !srcloc !367
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #24
  %13 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !368
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #22
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !304

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #22, !srcloc !369
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #24
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !370
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #22
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #22, !srcloc !371
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !372
  %3 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !373
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !374
  %2 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @netlink_hash(ptr nocapture noundef readonly %data, i32 noundef %len, i32 noundef %seed) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %data, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %portid = getelementptr inbounds %struct.netlink_sock, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %portid, align 8
  %add1.i = add i32 %seed, -559038729
  %add33.i = add i32 %3, %add1.i
  %4 = ptrtoint ptr %1 to i32
  %add36.i = add i32 %add1.i, %4
  %xor37.i = xor i32 %add33.i, %add1.i
  %or.i140.i = tail call i32 @llvm.fshl.i32(i32 %add33.i, i32 %add33.i, i32 14) #22
  %sub39.i = sub i32 %xor37.i, %or.i140.i
  %xor40.i = xor i32 %sub39.i, %add36.i
  %or.i141.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i, i32 %sub39.i, i32 11) #22
  %sub42.i = sub i32 %xor40.i, %or.i141.i
  %xor43.i = xor i32 %sub42.i, %add33.i
  %or.i142.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i, i32 %sub42.i, i32 25) #22
  %sub45.i = sub i32 %xor43.i, %or.i142.i
  %xor46.i = xor i32 %sub45.i, %sub39.i
  %or.i143.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i, i32 %sub45.i, i32 16) #22
  %sub48.i = sub i32 %xor46.i, %or.i143.i
  %xor49.i = xor i32 %sub48.i, %sub42.i
  %or.i144.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i, i32 %sub48.i, i32 4) #22
  %sub51.i = sub i32 %xor49.i, %or.i144.i
  %xor52.i = xor i32 %sub51.i, %sub45.i
  %or.i145.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i, i32 %sub51.i, i32 14) #22
  %sub54.i = sub i32 %xor52.i, %or.i145.i
  %xor55.i = xor i32 %sub54.i, %sub48.i
  %or.i146.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i, i32 %sub54.i, i32 24) #22
  %sub57.i = sub i32 %xor55.i, %or.i146.i
  ret i32 %sub57.i
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @netlink_compare(ptr nocapture noundef readonly %arg, ptr nocapture noundef readonly %ptr) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %key = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key, align 4
  %portid = getelementptr inbounds %struct.netlink_sock, ptr %ptr, i32 0, i32 1
  %2 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %portid, align 8
  %portid1 = getelementptr inbounds %struct.netlink_compare_arg, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %portid1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %portid1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %ptr, i32 0, i32 9
  %6 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_net.i, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %cmp.i = icmp ne ptr %7, %9
  %phi.cast = zext i1 %cmp.i to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %10 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netlink_sock_destruct_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1276
  tail call void @sk_free(ptr noundef %add.ptr) #22
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netlink_allowed(ptr nocapture noundef readonly %sock, i32 noundef %flag) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %0 = load ptr, ptr @nl_table, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %1 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk, align 16
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 46
  %3 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %sk_protocol, align 4
  %idxprom = zext i16 %4 to i32
  %flags = getelementptr %struct.netlink_table, ptr %0, i32 %idxprom, i32 3
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, %flag
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %7 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skc_net.i, align 4
  %user_ns = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %user_ns, align 4
  %call2 = tail call zeroext i1 @ns_capable(ptr noundef %10, i32 noundef 12) #22
  %phi.cast = zext i1 %call2 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %11 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netlink_realloc_groups(ptr nocapture noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @netlink_table_grab()
  %0 = load ptr, ptr @nl_table, align 4
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %1 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %sk_protocol, align 4
  %idxprom = zext i16 %2 to i32
  %groups1 = getelementptr %struct.netlink_table, ptr %0, i32 %idxprom, i32 4
  %3 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %groups1, align 4
  %registered = getelementptr %struct.netlink_table, ptr %0, i32 %idxprom, i32 10
  %5 = ptrtoint ptr %registered to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %registered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.out_unlock_crit_edge, label %if.end

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %out_unlock

if.end:                                           ; preds = %entry
  %ngroups = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 6
  %7 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ngroups, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %4)
  %cmp.not = icmp ult i32 %8, %4
  br i1 %cmp.not, label %if.end6, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %out_unlock

if.end6:                                          ; preds = %if.end
  %groups7 = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 7
  %9 = ptrtoint ptr %groups7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %groups7, align 8
  %add = add i32 %4, 31
  %and = lshr i32 %add, 3
  %div37 = and i32 %and, 536870908
  %call8 = tail call noalias ptr @krealloc(ptr noundef %10, i32 noundef %div37, i32 noundef 2592) #32
  %cmp9 = icmp eq ptr %call8, null
  br i1 %cmp9, label %if.end6.out_unlock_crit_edge, label %if.end11

if.end6.out_unlock_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #24
  br label %out_unlock

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #24
  %11 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ngroups, align 4
  %add13 = add i32 %12, 31
  %and14 = lshr i32 %add13, 3
  %div1538 = and i32 %and14, 536870908
  %add.ptr = getelementptr i8, ptr %call8, i32 %div1538
  %sub = sub nsw i32 %div37, %div1538
  %13 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  %14 = ptrtoint ptr %groups7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call8, ptr %groups7, align 8
  store i32 %4, ptr %ngroups, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.end11, %if.end6.out_unlock_crit_edge, %if.end.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %err.0 = phi i32 [ 0, %if.end.out_unlock_crit_edge ], [ 0, %if.end11 ], [ -2, %entry.out_unlock_crit_edge ], [ -12, %if.end6.out_unlock_crit_edge ]
  tail call void @_raw_write_unlock_irq(ptr noundef nonnull @nl_table_lock) #22
  tail call void @__wake_up(ptr noundef nonnull @nl_table_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #22
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netlink_undo_bind(i32 noundef %group, i32 noundef %groups, ptr nocapture noundef readonly %sk) unnamed_addr #0 align 64 {
entry:
  %groups.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %groups.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %groups, ptr %groups.addr, align 4
  %netlink_unbind = getelementptr inbounds %struct.netlink_sock, ptr %sk, i32 0, i32 19
  %1 = ptrtoint ptr %netlink_unbind to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %netlink_unbind, align 8
  %tobool.not = icmp ne ptr %2, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %group)
  %cmp13 = icmp sgt i32 %group, 0
  %or.cond = and i1 %tobool.not, %cmp13
  br i1 %or.cond, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %undo.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc.pre-phi, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %groups.addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %groups.addr.0. = load volatile i32, ptr %groups.addr, align 4
  %and.i = and i32 %undo.014, 31
  %4 = shl nuw i32 1, %and.i
  %5 = and i32 %groups.addr.0., %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.then3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  %.pre = add nuw nsw i32 %undo.014, 1
  br label %for.inc

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  %6 = ptrtoint ptr %netlink_unbind to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netlink_unbind, align 8
  %8 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skc_net.i, align 4
  %add = add nuw nsw i32 %undo.014, 1
  tail call void %7(ptr noundef %9, i32 noundef %add) #22
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %for.body.for.inc_crit_edge
  %inc.pre-phi = phi i32 [ %.pre, %for.body.for.inc_crit_edge ], [ %add, %if.then3 ]
  %exitcond.not = icmp eq i32 %inc.pre-phi, %group
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netlink_autobind(ptr nocapture noundef readonly %sock) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skc_net.i, align 4
  %4 = load ptr, ptr @nl_table, align 4
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 46
  %5 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sk_protocol, align 4
  %idxprom = zext i16 %6 to i32
  %arrayidx = getelementptr %struct.netlink_table, ptr %4, i32 %idxprom
  %7 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %call.i28 = tail call i32 @__task_pid_nr_ns(ptr noundef %10, i32 noundef 1, ptr noundef null) #22
  br label %retry.outer

retry.outer:                                      ; preds = %if.end11, %entry
  %portid.0.ph = phi i32 [ %rover.1, %if.end11 ], [ %call.i28, %entry ]
  %rover.0.ph = phi i32 [ %dec, %if.end11 ], [ -4096, %entry ]
  br label %retry

retry:                                            ; preds = %if.end12.retry_crit_edge, %retry.outer
  tail call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 828, i32 noundef 0) #22
  %call.i29 = tail call i32 @__cond_resched() #22
  %11 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !312
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #22
  %call.i = tail call zeroext i1 @rcu_is_watching() #22
  br i1 %call.i, label %retry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

retry.rcu_read_lock.exit_crit_edge:               ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %retry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #22
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %retry.rcu_read_lock.exit_crit_edge
  %call5 = tail call fastcc ptr @__netlink_lookup(ptr noundef %arrayidx, i32 noundef %portid.0.ph, ptr noundef %3)
  %tobool.not = icmp eq ptr %call5, null
  %call.i30 = tail call zeroext i1 @rcu_is_watching() #22
  br i1 %call.i30, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i33

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_unlock.exit

land.lhs.true.i33:                                ; preds = %rcu_read_lock.exit
  %call1.i31 = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i31)
  %tobool.not.i32 = icmp eq i32 %call1.i31, 0
  br i1 %tobool.not.i32, label %land.lhs.true.i33.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i35

land.lhs.true.i33.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i33
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_unlock.exit

land.lhs.true2.i35:                               ; preds = %land.lhs.true.i33
  %.b4.i34 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i34, label %land.lhs.true2.i35.rcu_read_unlock.exit_crit_edge, label %if.then.i36

land.lhs.true2.i35.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i35
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_unlock.exit

if.then.i36:                                      ; preds = %land.lhs.true2.i35
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #22
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i36, %land.lhs.true2.i35.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i33.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !313
  %15 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i.i.i37 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i37 to ptr
  %preempt_count.i.i.i.i38 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i.i.i38, align 4
  %sub.i.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i38, align 4
  tail call void @rcu_read_unlock_strict() #22
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #22
  br i1 %tobool.not, label %if.end12, label %if.then

if.then:                                          ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %rover.0.ph)
  %cmp = icmp eq i32 %rover.0.ph, -4096
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  %call.i39 = tail call i32 @prandom_u32() #22
  %conv.i = zext i32 %call.i39 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 2147479552
  %shr.i = lshr i64 %mul.i, 32
  %conv2.i = trunc i64 %shr.i to i32
  %add40 = or i32 %conv2.i, -2147483648
  br label %if.end11

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  %19 = tail call i32 @llvm.smin.i32(i32 %rover.0.ph, i32 -4097)
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then7
  %rover.1 = phi i32 [ %add40, %if.then7 ], [ %19, %if.else ]
  %dec = add i32 %rover.1, -1
  br label %retry.outer

if.end12:                                         ; preds = %rcu_read_unlock.exit
  %call13 = tail call fastcc i32 @netlink_insert(ptr noundef %1, i32 noundef %portid.0.ph)
  %cmp14 = icmp eq i32 %call13, -98
  br i1 %cmp14, label %if.end12.retry_crit_edge, label %if.end16

if.end12.retry_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #24
  br label %retry

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call13)
  %cmp17 = icmp eq i32 %call13, -16
  %spec.store.select20 = select i1 %cmp17, i32 0, i32 %call13
  ret i32 %spec.store.select20
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__netlink_lookup(ptr noundef %table, i32 noundef %portid, ptr noundef %net) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !312
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #22
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #22
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 696, ptr noundef nonnull @.str.18) #22
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %table, align 4
  %call.i.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %table) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i, label %rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge

rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end12.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %rcu_read_lock.exit.i
  %call5.i.i.i = tail call i32 @rcu_read_lock_held() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge

lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end12.i.i.i

land.lhs.true.i.i.i:                              ; preds = %lor.lhs.false.i.i.i
  %call7.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge, label %land.lhs.true9.i.i.i

land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end12.i.i.i

land.lhs.true9.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b92.i.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i.i, label %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge:    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end12.i.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true9.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 594, ptr noundef nonnull @.str.4) #22
  br label %do.end12.i.i.i

do.end12.i.i.i:                                   ; preds = %if.then.i.i.i, %land.lhs.true9.i.i.i.do.end12.i.i.i_crit_edge, %land.lhs.true.i.i.i.do.end12.i.i.i_crit_edge, %lor.lhs.false.i.i.i.do.end12.i.i.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i.i.i_crit_edge
  %head_offset.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %table, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %net to i32
  br label %restart.i.i.i

restart.i.i.i:                                    ; preds = %do.end60.i.i.i.restart.i.i.i_crit_edge, %do.end12.i.i.i
  %tbl.0.i.i.i = phi ptr [ %5, %do.end12.i.i.i ], [ %29, %do.end60.i.i.i.restart.i.i.i_crit_edge ]
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add1.i.i.i.i.i.i = add i32 %8, -559038729
  %add33.i.i.i.i.i.i = add i32 %add1.i.i.i.i.i.i, %portid
  %add36.i.i.i.i.i.i = add i32 %add1.i.i.i.i.i.i, %6
  %xor37.i.i.i.i.i.i = xor i32 %add33.i.i.i.i.i.i, %add1.i.i.i.i.i.i
  %or.i140.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add33.i.i.i.i.i.i, i32 %add33.i.i.i.i.i.i, i32 14) #22
  %sub39.i.i.i.i.i.i = sub i32 %xor37.i.i.i.i.i.i, %or.i140.i.i.i.i.i.i
  %xor40.i.i.i.i.i.i = xor i32 %sub39.i.i.i.i.i.i, %add36.i.i.i.i.i.i
  %or.i141.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i.i.i.i, i32 %sub39.i.i.i.i.i.i, i32 11) #22
  %sub42.i.i.i.i.i.i = sub i32 %xor40.i.i.i.i.i.i, %or.i141.i.i.i.i.i.i
  %xor43.i.i.i.i.i.i = xor i32 %sub42.i.i.i.i.i.i, %add33.i.i.i.i.i.i
  %or.i142.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i.i.i.i, i32 %sub42.i.i.i.i.i.i, i32 25) #22
  %sub45.i.i.i.i.i.i = sub i32 %xor43.i.i.i.i.i.i, %or.i142.i.i.i.i.i.i
  %xor46.i.i.i.i.i.i = xor i32 %sub45.i.i.i.i.i.i, %sub39.i.i.i.i.i.i
  %or.i143.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i.i.i.i, i32 %sub45.i.i.i.i.i.i, i32 16) #22
  %sub48.i.i.i.i.i.i = sub i32 %xor46.i.i.i.i.i.i, %or.i143.i.i.i.i.i.i
  %xor49.i.i.i.i.i.i = xor i32 %sub48.i.i.i.i.i.i, %sub42.i.i.i.i.i.i
  %or.i144.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i.i.i.i, i32 %sub48.i.i.i.i.i.i, i32 4) #22
  %sub51.i.i.i.i.i.i = sub i32 %xor49.i.i.i.i.i.i, %or.i144.i.i.i.i.i.i
  %xor52.i.i.i.i.i.i = xor i32 %sub51.i.i.i.i.i.i, %sub45.i.i.i.i.i.i
  %or.i145.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i.i.i.i, i32 %sub51.i.i.i.i.i.i, i32 14) #22
  %sub54.i.i.i.i.i.i = sub i32 %xor52.i.i.i.i.i.i, %or.i145.i.i.i.i.i.i
  %xor55.i.i.i.i.i.i = xor i32 %sub54.i.i.i.i.i.i, %sub48.i.i.i.i.i.i
  %or.i146.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i.i.i.i, i32 %sub54.i.i.i.i.i.i, i32 24) #22
  %sub57.i.i.i.i.i.i = sub i32 %xor55.i.i.i.i.i.i, %or.i146.i.i.i.i.i.i
  %9 = ptrtoint ptr %tbl.0.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tbl.0.i.i.i, align 128
  %sub.i.i.i.i.i = add i32 %10, -1
  %and.i3.i.i.i.i = and i32 %sub57.i.i.i.i.i.i, %sub.i.i.i.i.i
  %nest.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %nest.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nest.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i.i.i, label %cond.false.i.i.i.i, label %cond.true.i.i.i.i, !prof !303

cond.true.i.i.i.i:                                ; preds = %restart.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %call.i.i.i.i = tail call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i.i, i32 noundef %and.i3.i.i.i.i) #22
  br label %rht_bucket.exit.i.i.i

cond.false.i.i.i.i:                               ; preds = %restart.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %arrayidx.i.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket.exit.i.i.i

rht_bucket.exit.i.i.i:                            ; preds = %cond.false.i.i.i.i, %cond.true.i.i.i.i
  %cond.i.i.i.i = phi ptr [ %call.i.i.i.i, %cond.true.i.i.i.i ], [ %arrayidx.i.i.i.i, %cond.false.i.i.i.i ]
  %13 = ptrtoint ptr %cond.i.i.i.i to i32
  %or.i.i.i.i.i = or i32 %13, 1
  %14 = inttoptr i32 %or.i.i.i.i.i to ptr
  br label %do.body16.i.i.i

do.body16.i.i.i:                                  ; preds = %do.cond34.i.i.i.do.body16.i.i.i_crit_edge, %rht_bucket.exit.i.i.i
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !375
  %15 = ptrtoint ptr %cond.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %cond.i.i.i.i, align 4
  %call.i93.i.i.i = tail call i32 @rcu_read_lock_held() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i.i)
  %tobool.not.i94.i.i.i = icmp eq i32 %call.i93.i.i.i, 0
  br i1 %tobool.not.i94.i.i.i, label %land.lhs.true.i.i.i.i, label %do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge

do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %do.body16.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rht_ptr_rcu.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body16.i.i.i
  %call2.i.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, label %land.lhs.true4.i.i.i.i

land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rht_ptr_rcu.exit.i.i.i

land.lhs.true4.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %.b11.i.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i.i, label %land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rht_ptr_rcu.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 369, ptr noundef nonnull @.str.4) #22
  br label %rht_ptr_rcu.exit.i.i.i

rht_ptr_rcu.exit.i.i.i:                           ; preds = %if.then.i.i.i.i, %land.lhs.true4.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge, %do.body16.i.i.i.rht_ptr_rcu.exit.i.i.i_crit_edge
  %17 = ptrtoint ptr %16 to i32
  %and.i.i95.i.i.i = and i32 %17, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i.i.i)
  %tobool.not.i.i96.i.i.i = icmp eq i32 %and.i.i95.i.i.i, 0
  %cond.i.i.i.i.i = select i1 %tobool.not.i.i96.i.i.i, i32 %or.i.i.i.i.i, i32 %and.i.i95.i.i.i
  %18 = inttoptr i32 %cond.i.i.i.i.i to ptr
  %and.i106.i.i.i = and i32 %cond.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i.i.i)
  %tobool.i.not107.i.i.i = icmp eq i32 %and.i106.i.i.i, 0
  br i1 %tobool.i.not107.i.i.i, label %for.body.i.i.i.preheader, label %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge

rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge: ; preds = %rht_ptr_rcu.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.cond34.i.i.i

for.body.i.i.i.preheader:                         ; preds = %rht_ptr_rcu.exit.i.i.i
  %19 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i98.i.i.i = zext i16 %20 to i32
  %idx.neg.i99.i.i.i = sub nsw i32 0, %conv.i98.i.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i.i.preheader
  %he.0108.i.i.i = phi ptr [ %26, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %18, %for.body.i.i.i.preheader ]
  %add.ptr.i100.i.i.i = getelementptr i8, ptr %he.0108.i.i.i, i32 %idx.neg.i99.i.i.i
  %portid.i = getelementptr inbounds %struct.netlink_sock, ptr %add.ptr.i100.i.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %portid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %portid.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %portid)
  %cmp.not.i = icmp eq i32 %22, %portid
  br i1 %cmp.not.i, label %netlink_compare.exit, label %for.body.i.i.i.for.inc.i.i.i_crit_edge

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.i.i.i

netlink_compare.exit:                             ; preds = %for.body.i.i.i
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %add.ptr.i100.i.i.i, i32 0, i32 9
  %23 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %skc_net.i.i, align 4
  %cmp.i.i.not = icmp eq ptr %24, %net
  br i1 %cmp.i.i.not, label %__rhashtable_lookup.exit.i.i, label %netlink_compare.exit.for.inc.i.i.i_crit_edge

netlink_compare.exit.for.inc.i.i.i_crit_edge:     ; preds = %netlink_compare.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %netlink_compare.exit.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %25 = ptrtoint ptr %he.0108.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %he.0108.i.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  %and.i.i.i.i = and i32 %27, 1
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.do.cond34.i.i.i_crit_edge

for.inc.i.i.i.do.cond34.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.cond34.i.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i.i.i

do.cond34.i.i.i:                                  ; preds = %for.inc.i.i.i.do.cond34.i.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge
  %he.0.lcssa.i.i.i = phi ptr [ %18, %rht_ptr_rcu.exit.i.i.i.do.cond34.i.i.i_crit_edge ], [ %26, %for.inc.i.i.i.do.cond34.i.i.i_crit_edge ]
  %cmp.not.i.i.i = icmp eq ptr %he.0.lcssa.i.i.i, %14
  br i1 %cmp.not.i.i.i, label %do.end39.i.i.i, label %do.cond34.i.i.i.do.body16.i.i.i_crit_edge

do.cond34.i.i.i.do.body16.i.i.i_crit_edge:        ; preds = %do.cond34.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body16.i.i.i

do.end39.i.i.i:                                   ; preds = %do.cond34.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !376
  %future_tbl.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %future_tbl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %future_tbl.i.i.i, align 4
  %call47.i.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %table) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i.i)
  %tobool48.not.i.i.i = icmp eq i32 %call47.i.i.i, 0
  br i1 %tobool48.not.i.i.i, label %lor.lhs.false49.i.i.i, label %do.end39.i.i.i.do.end60.i.i.i_crit_edge

do.end39.i.i.i.do.end60.i.i.i_crit_edge:          ; preds = %do.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end60.i.i.i

lor.lhs.false49.i.i.i:                            ; preds = %do.end39.i.i.i
  %call50.i.i.i = tail call i32 @rcu_read_lock_held() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i.i)
  %tobool51.not.i.i.i = icmp eq i32 %call50.i.i.i, 0
  br i1 %tobool51.not.i.i.i, label %land.lhs.true52.i.i.i, label %lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge

lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %lor.lhs.false49.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end60.i.i.i

land.lhs.true52.i.i.i:                            ; preds = %lor.lhs.false49.i.i.i
  %call53.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i.i)
  %tobool54.not.i.i.i = icmp eq i32 %call53.i.i.i, 0
  br i1 %tobool54.not.i.i.i, label %land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge, label %land.lhs.true55.i.i.i

land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %land.lhs.true52.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end60.i.i.i

land.lhs.true55.i.i.i:                            ; preds = %land.lhs.true52.i.i.i
  %.b9091.i.i.i = load i1, ptr @__rhashtable_lookup.__warned.30, align 1
  br i1 %.b9091.i.i.i, label %land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge, label %if.then57.i.i.i

land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge:   ; preds = %land.lhs.true55.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end60.i.i.i

if.then57.i.i.i:                                  ; preds = %land.lhs.true55.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @__rhashtable_lookup.__warned.30, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 614, ptr noundef nonnull @.str.4) #22
  br label %do.end60.i.i.i

do.end60.i.i.i:                                   ; preds = %if.then57.i.i.i, %land.lhs.true55.i.i.i.do.end60.i.i.i_crit_edge, %land.lhs.true52.i.i.i.do.end60.i.i.i_crit_edge, %lor.lhs.false49.i.i.i.do.end60.i.i.i_crit_edge, %do.end39.i.i.i.do.end60.i.i.i_crit_edge
  %tobool62.not.i.i.i = icmp eq ptr %29, null
  br i1 %tobool62.not.i.i.i, label %do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge, label %do.end60.i.i.i.restart.i.i.i_crit_edge, !prof !303

do.end60.i.i.i.restart.i.i.i_crit_edge:           ; preds = %do.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %restart.i.i.i

do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge: ; preds = %do.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rhashtable_lookup.exit.i

__rhashtable_lookup.exit.i.i:                     ; preds = %netlink_compare.exit
  call void @__sanitizer_cov_trace_pc() #24
  %tobool.not.i1.i = icmp eq ptr %he.0108.i.i.i, null
  %spec.select = select i1 %tobool.not.i1.i, ptr null, ptr %add.ptr.i100.i.i.i
  br label %rhashtable_lookup.exit.i

rhashtable_lookup.exit.i:                         ; preds = %__rhashtable_lookup.exit.i.i, %do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge
  %cond.i.i = phi ptr [ %spec.select, %__rhashtable_lookup.exit.i.i ], [ null, %do.end60.i.i.i.rhashtable_lookup.exit.i_crit_edge ]
  %call.i2.i = tail call zeroext i1 @rcu_is_watching() #22
  br i1 %call.i2.i, label %rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge, label %land.lhs.true.i5.i

rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rhashtable_lookup_fast.exit

land.lhs.true.i5.i:                               ; preds = %rhashtable_lookup.exit.i
  %call1.i3.i = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge, label %land.lhs.true2.i7.i

land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rhashtable_lookup_fast.exit

land.lhs.true2.i7.i:                              ; preds = %land.lhs.true.i5.i
  %.b4.i6.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i, label %land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge, label %if.then.i8.i

land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge: ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rhashtable_lookup_fast.exit

if.then.i8.i:                                     ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 724, ptr noundef nonnull @.str.19) #22
  br label %rhashtable_lookup_fast.exit

rhashtable_lookup_fast.exit:                      ; preds = %if.then.i8.i, %land.lhs.true2.i7.i.rhashtable_lookup_fast.exit_crit_edge, %land.lhs.true.i5.i.rhashtable_lookup_fast.exit_crit_edge, %rhashtable_lookup.exit.i.rhashtable_lookup_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !313
  %30 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i.i.i.i9.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i9.i to ptr
  %preempt_count.i.i.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i10.i, align 4
  %sub.i.i.i.i = add i32 %33, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i10.i, align 4
  tail call void @rcu_read_unlock_strict() #22
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #22
  ret ptr %cond.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #18

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_netlink_send(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__scm_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_socket_getpeersec_dgram(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #19

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__build_skb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__scm_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_cmsg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scm_detach_fds(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_secid_to_secctx(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_release_secctx(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #20

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netlink_add_usersock_entry() unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #33
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.80) #30
  unreachable

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @netlink_table_grab()
  %1 = load ptr, ptr @nl_table, align 4
  %groups2 = getelementptr %struct.netlink_table, ptr %1, i32 2, i32 4
  %2 = ptrtoint ptr %groups2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 32, ptr %groups2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !377
  %3 = load ptr, ptr @nl_table, align 4
  %listeners27 = getelementptr %struct.netlink_table, ptr %3, i32 2, i32 2
  %4 = ptrtoint ptr %listeners27 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %call7.i.i, ptr %listeners27, align 4
  %5 = load ptr, ptr @nl_table, align 4
  %module = getelementptr %struct.netlink_table, ptr %5, i32 2, i32 6
  %6 = ptrtoint ptr %module to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %module, align 4
  %7 = load ptr, ptr @nl_table, align 4
  %registered = getelementptr %struct.netlink_table, ptr %7, i32 2, i32 10
  %8 = ptrtoint ptr %registered to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %registered, align 4
  %9 = load ptr, ptr @nl_table, align 4
  %flags = getelementptr %struct.netlink_table, ptr %9, i32 2, i32 3
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %flags, align 4
  tail call void @_raw_write_unlock_irq(ptr noundef nonnull @nl_table_lock) #22
  tail call void @__wake_up(ptr noundef nonnull @nl_table_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnetlink_init() local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #21

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_iter_reg_target(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_iter_init_seq_net(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_iter_fini_seq_net(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @netlink_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %posp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %link = getelementptr inbounds %struct.nl_seq_iter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %link, align 4
  %3 = load ptr, ptr @nl_table, align 4
  %hti.i = getelementptr inbounds %struct.nl_seq_iter, ptr %1, i32 0, i32 1
  tail call void @rhashtable_walk_enter(ptr noundef %3, ptr noundef %hti.i) #22
  %call.i.i = tail call i32 @rhashtable_walk_start_check(ptr noundef %hti.i) #22
  %4 = ptrtoint ptr %posp to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %posp, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not10 = icmp eq i64 %5, 0
  br i1 %tobool.not10, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %pos.011 = phi i64 [ %dec, %for.body.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  %call2 = tail call fastcc ptr @__netlink_seq_next(ptr noundef %seq)
  %dec = add i64 %pos.011, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec)
  %tobool.not = icmp eq i64 %dec, 0
  %tobool1.not = icmp eq ptr %call2, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %or.cond9 = select i1 %or.cond, i1 true, i1 %cmp.i
  br i1 %or.cond9, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %obj.0.lcssa = phi ptr [ inttoptr (i32 1 to ptr), %entry.for.end_crit_edge ], [ %call2, %for.body.for.end_crit_edge ]
  ret ptr %obj.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netlink_seq_stop(ptr noundef %seq, ptr noundef readnone %v) #0 align 64 {
entry:
  %ctx.i = alloca %struct.bpf_iter__netlink, align 8
  %meta = alloca %struct.bpf_iter_meta, align 8
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %meta) #22
  %0 = getelementptr inbounds %struct.bpf_iter_meta, ptr %meta, i32 0, i32 2
  %tobool.not = icmp eq ptr %v, null
  %1 = call ptr @memset(ptr %meta, i32 255, i32 24)
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end4

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %meta to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %seq, ptr %meta, align 8
  %call = call ptr @bpf_iter_get_info(ptr noundef nonnull %meta, i1 noundef zeroext true) #22
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then.if.end4_crit_edge, label %if.then2

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end4

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctx.i) #22
  %3 = getelementptr inbounds %struct.bpf_iter__netlink, ptr %ctx.i, i32 0, i32 1
  %4 = call ptr @memset(ptr %ctx.i, i32 255, i32 16)
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %0, align 8
  %dec.i = add i64 %6, -1
  store i64 %dec.i, ptr %0, align 8
  %7 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %meta, ptr %ctx.i, align 8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %3, align 8
  %call1.i = call i32 @bpf_iter_run_prog(ptr noundef nonnull %call, ptr noundef nonnull %ctx.i) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctx.i) #22
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %9 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private.i, align 8
  %link.i = getelementptr inbounds %struct.nl_seq_iter, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %link.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %12)
  %cmp.i = icmp sgt i32 %12, 31
  br i1 %cmp.i, label %if.end4.netlink_native_seq_stop.exit_crit_edge, label %if.end.i

if.end4.netlink_native_seq_stop.exit_crit_edge:   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_native_seq_stop.exit

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #24
  %hti.i.i = getelementptr inbounds %struct.nl_seq_iter, ptr %10, i32 0, i32 1
  call void @rhashtable_walk_stop(ptr noundef %hti.i.i) #22
  call void @rhashtable_walk_exit(ptr noundef %hti.i.i) #22
  br label %netlink_native_seq_stop.exit

netlink_native_seq_stop.exit:                     ; preds = %if.end.i, %if.end4.netlink_native_seq_stop.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %meta) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @netlink_seq_next(ptr nocapture noundef readonly %seq, ptr nocapture noundef readnone %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  %call = tail call fastcc ptr @__netlink_seq_next(ptr noundef %seq)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlink_seq_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  %ctx.i = alloca %struct.bpf_iter__netlink, align 8
  %meta = alloca %struct.bpf_iter_meta, align 8
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %meta) #22
  %0 = getelementptr inbounds %struct.bpf_iter_meta, ptr %meta, i32 0, i32 2
  %1 = call ptr @memset(ptr %meta, i32 255, i32 24)
  %2 = ptrtoint ptr %meta to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %seq, ptr %meta, align 8
  %call = call ptr @bpf_iter_get_info(ptr noundef nonnull %meta, i1 noundef zeroext false) #22
  %tobool.not = icmp eq ptr %call, null
  %cmp.i = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.78) #22
  br label %cleanup

if.else.i:                                        ; preds = %if.then
  %sk_protocol.i = getelementptr inbounds %struct.sock, ptr %v, i32 0, i32 46
  %3 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %sk_protocol.i, align 4
  %conv.i = zext i16 %4 to i32
  %portid.i = getelementptr inbounds %struct.netlink_sock, ptr %v, i32 0, i32 1
  %5 = ptrtoint ptr %portid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %portid.i, align 8
  %groups.i = getelementptr inbounds %struct.netlink_sock, ptr %v, i32 0, i32 7
  %7 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %groups.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.else.i.cond.end.i_crit_edge, label %cond.true.i

if.else.i.cond.end.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #24
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.else.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %10, %cond.true.i ], [ 0, %if.else.i.cond.end.i_crit_edge ]
  %sk_backlog.i.i = getelementptr inbounds %struct.sock, ptr %v, i32 0, i32 9
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i.i, i32 noundef 4) #22
  %11 = ptrtoint ptr %sk_backlog.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %sk_backlog.i.i, align 4
  %sk_wmem_alloc.i.i = getelementptr inbounds %struct.sock, ptr %v, i32 0, i32 23
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc.i.i, i32 noundef 4) #22
  %13 = ptrtoint ptr %sk_wmem_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %sk_wmem_alloc.i.i, align 4
  %sub.i.i = add i32 %14, -1
  %cb_running.i = getelementptr inbounds %struct.netlink_sock, ptr %v, i32 0, i32 12
  %15 = ptrtoint ptr %cb_running.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cb_running.i, align 1, !range !328
  %17 = zext i8 %16 to i32
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %v, i32 0, i32 19
  %call.i.i.i1.i = call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #22
  %18 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %skc_refcnt.i, align 4
  %sk_drops.i = getelementptr inbounds %struct.sock, ptr %v, i32 0, i32 5
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sk_drops.i, i32 noundef 4) #22
  %20 = ptrtoint ptr %sk_drops.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %sk_drops.i, align 4
  %call8.i = call i32 @sock_i_ino(ptr noundef %v) #22
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.79, ptr noundef %v, i32 noundef %conv.i, i32 noundef %6, i32 noundef %cond.i, i32 noundef %12, i32 noundef %sub.i.i, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %call8.i) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ctx.i) #22
  %22 = getelementptr inbounds %struct.bpf_iter__netlink, ptr %ctx.i, i32 0, i32 1
  %23 = call ptr @memset(ptr %ctx.i, i32 255, i32 16)
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %0, align 8
  %dec.i = add i64 %25, -1
  store i64 %dec.i, ptr %0, align 8
  %26 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %meta, ptr %ctx.i, align 8
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %v, ptr %22, align 8
  %call1.i = call i32 @bpf_iter_run_prog(ptr noundef nonnull %call, ptr noundef nonnull %ctx.i) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ctx.i) #22
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %cond.end.i, %if.then.i
  %retval.0 = phi i32 [ %call1.i, %if.then2 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %cond.end.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %meta) #22
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__netlink_seq_next(ptr nocapture noundef readonly %seq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %hti = getelementptr inbounds %struct.nl_seq_iter, ptr %1, i32 0, i32 1
  %link = getelementptr inbounds %struct.nl_seq_iter, ptr %1, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %call = tail call ptr @rhashtable_walk_next(ptr noundef %hti) #22
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end4

if.then:                                          ; preds = %for.cond
  %cmp = icmp eq ptr %call, inttoptr (i32 -11 to ptr)
  br i1 %cmp, label %if.then.for.cond.backedge_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then.for.cond.backedge_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond.backedge

if.end4:                                          ; preds = %for.cond
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end6, label %do.cond

if.end6:                                          ; preds = %if.end4
  tail call void @rhashtable_walk_stop(ptr noundef %hti) #22
  tail call void @rhashtable_walk_exit(ptr noundef %hti) #22
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %link, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %inc)
  %cmp7 = icmp sgt i32 %inc, 31
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #24
  %4 = load ptr, ptr @nl_table, align 4
  %arrayidx.i = getelementptr %struct.netlink_table, ptr %4, i32 %inc
  tail call void @rhashtable_walk_enter(ptr noundef %arrayidx.i, ptr noundef %hti) #22
  %call.i.i = tail call i32 @rhashtable_walk_start_check(ptr noundef %hti) #22
  br label %for.cond.backedge

do.cond:                                          ; preds = %if.end4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  %7 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %cmp12.not = icmp eq ptr %6, %10
  br i1 %cmp12.not, label %do.cond.cleanup_crit_edge, label %do.cond.for.cond.backedge_crit_edge

do.cond.for.cond.backedge_crit_edge:              ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond.backedge

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

for.cond.backedge:                                ; preds = %do.cond.for.cond.backedge_crit_edge, %if.end9, %if.then.for.cond.backedge_crit_edge
  br label %for.cond

cleanup:                                          ; preds = %do.cond.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_enter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_walk_start_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_walk_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_iter_get_info(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_iter_run_prog(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_ino(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlink_create(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol, i32 noundef %kern) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %sock, align 128
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %type, align 4
  %3 = and i16 %2, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %3)
  %switch = icmp eq i16 %3, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %protocol)
  %4 = icmp ugt i32 %protocol, 31
  br i1 %4, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %5 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %protocol, i32 32) #22, !srcloc !378
  %and = and i32 %5, %protocol
  %call.i = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @nl_table_lock) #22
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nl_table_users, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr nonnull @nl_table_users, i32 1, i32 3, i32 1) #22
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nl_table_users, ptr nonnull @nl_table_users, i32 1, ptr nonnull elementtype(i32) @nl_table_users) #22, !srcloc !316
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @nl_table_lock, i32 noundef %call.i) #22
  %7 = load ptr, ptr @nl_table, align 4
  %registered = getelementptr %struct.netlink_table, ptr %7, i32 %and, i32 10
  %8 = ptrtoint ptr %registered to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %registered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then15, label %if.end11.if.end17_crit_edge

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end17

if.then15:                                        ; preds = %if.end11
  %call.i.i.i74 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nl_table_users, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !322
  tail call void @llvm.prefetch.p0(ptr nonnull @nl_table_users, i32 1, i32 3, i32 1) #22
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nl_table_users, ptr nonnull @nl_table_users, i32 1, ptr nonnull elementtype(i32) @nl_table_users) #22, !srcloc !323
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !324
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %if.then15.netlink_unlock_table.exit_crit_edge

if.then15.netlink_unlock_table.exit_crit_edge:    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_unlock_table.exit

if.then.i:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @__wake_up(ptr noundef nonnull @nl_table_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #22
  br label %netlink_unlock_table.exit

netlink_unlock_table.exit:                        ; preds = %if.then.i, %if.then15.netlink_unlock_table.exit_crit_edge
  %call16 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.81, i32 noundef 16, i32 noundef %and) #22
  %call.i75 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @nl_table_lock) #22
  %call.i.i.i76 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nl_table_users, i32 noundef 4) #22
  tail call void @llvm.prefetch.p0(ptr nonnull @nl_table_users, i32 1, i32 3, i32 1) #22
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nl_table_users, ptr nonnull @nl_table_users, i32 1, ptr nonnull elementtype(i32) @nl_table_users) #22, !srcloc !316
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @nl_table_lock, i32 noundef %call.i75) #22
  br label %if.end17

if.end17:                                         ; preds = %netlink_unlock_table.exit, %if.end11.if.end17_crit_edge
  %12 = load ptr, ptr @nl_table, align 4
  %registered19 = getelementptr %struct.netlink_table, ptr %12, i32 %and, i32 10
  %13 = ptrtoint ptr %registered19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %registered19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool20.not = icmp eq i32 %14, 0
  br i1 %tobool20.not, label %if.end17.if.end29_crit_edge, label %land.lhs.true21

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end29

land.lhs.true21:                                  ; preds = %if.end17
  %module23 = getelementptr %struct.netlink_table, ptr %12, i32 %and, i32 6
  %15 = ptrtoint ptr %module23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %module23, align 4
  %call24 = tail call zeroext i1 @try_module_get(ptr noundef %16) #22
  br i1 %call24, label %if.then26, label %land.lhs.true21.if.end29_crit_edge

land.lhs.true21.if.end29_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end29

if.then26:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #24
  %17 = load ptr, ptr @nl_table, align 4
  %module28 = getelementptr %struct.netlink_table, ptr %17, i32 %and, i32 6
  %18 = ptrtoint ptr %module28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %module28, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %land.lhs.true21.if.end29_crit_edge, %if.end17.if.end29_crit_edge
  %cmp36 = phi i1 [ false, %if.then26 ], [ true, %land.lhs.true21.if.end29_crit_edge ], [ true, %if.end17.if.end29_crit_edge ]
  %err.0 = phi i32 [ 0, %if.then26 ], [ -93, %land.lhs.true21.if.end29_crit_edge ], [ -93, %if.end17.if.end29_crit_edge ]
  %module.0 = phi ptr [ %19, %if.then26 ], [ null, %land.lhs.true21.if.end29_crit_edge ], [ null, %if.end17.if.end29_crit_edge ]
  %20 = load ptr, ptr @nl_table, align 4
  %cb_mutex31 = getelementptr %struct.netlink_table, ptr %20, i32 %and, i32 5
  %21 = ptrtoint ptr %cb_mutex31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cb_mutex31, align 4
  %bind33 = getelementptr %struct.netlink_table, ptr %20, i32 %and, i32 7
  %23 = ptrtoint ptr %bind33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bind33, align 4
  %unbind35 = getelementptr %struct.netlink_table, ptr %20, i32 %and, i32 8
  %25 = ptrtoint ptr %unbind35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %unbind35, align 4
  %call.i.i.i77 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @nl_table_users, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !322
  tail call void @llvm.prefetch.p0(ptr nonnull @nl_table_users, i32 1, i32 3, i32 1) #22
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @nl_table_users, ptr nonnull @nl_table_users, i32 1, ptr nonnull elementtype(i32) @nl_table_users) #22, !srcloc !323
  %asmresult.i.i.i.i.i.i78 = extractvalue { i32, i32 } %27, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !324
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i78)
  %cmp.i.i.i79 = icmp eq i32 %asmresult.i.i.i.i.i.i78, 0
  br i1 %cmp.i.i.i79, label %if.then.i80, label %if.end29.netlink_unlock_table.exit81_crit_edge

if.end29.netlink_unlock_table.exit81_crit_edge:   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #24
  br label %netlink_unlock_table.exit81

if.then.i80:                                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @__wake_up(ptr noundef nonnull @nl_table_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #22
  br label %netlink_unlock_table.exit81

netlink_unlock_table.exit81:                      ; preds = %if.then.i80, %if.end29.netlink_unlock_table.exit81_crit_edge
  br i1 %cmp36, label %netlink_unlock_table.exit81.cleanup_crit_edge, label %if.end39

netlink_unlock_table.exit81.cleanup_crit_edge:    ; preds = %netlink_unlock_table.exit81
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end39:                                         ; preds = %netlink_unlock_table.exit81
  %call40 = tail call fastcc i32 @__netlink_create(ptr noundef %net, ptr noundef %sock, ptr noundef %22, i32 noundef %and, i32 noundef %kern)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %out_module, label %if.end44

if.end44:                                         ; preds = %if.end39
  %28 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !333
  %prot_inuse.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 29, i32 2
  %29 = ptrtoint ptr %prot_inuse.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prot_inuse.i, align 8
  %31 = load i32, ptr getelementptr inbounds (%struct.proto, ptr @netlink_proto, i32 0, i32 26), align 4
  %arrayidx.i = getelementptr %struct.prot_inuse, ptr %30, i32 0, i32 1, i32 %31
  %32 = ptrtoint ptr %arrayidx.i to i32
  %33 = tail call i32 @llvm.read_register.i32(metadata !293) #22
  %and.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu.i, align 4
  %arrayidx14.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx14.i, align 4
  %add.i = add i32 %38, %32
  %39 = inttoptr i32 %add.i to ptr
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %add15.i = add i32 %41, 1
  store i32 %add15.i, ptr %39, align 4
  %42 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #22, !srcloc !334
  %and.i.i.i = and i32 %42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i82, label %if.end44.sock_prot_inuse_add.exit_crit_edge, !prof !304

if.end44.sock_prot_inuse_add.exit_crit_edge:      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #24
  br label %sock_prot_inuse_add.exit

if.then.i82:                                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @warn_bogus_irq_restore() #22
  br label %sock_prot_inuse_add.exit

sock_prot_inuse_add.exit:                         ; preds = %if.then.i82, %if.end44.sock_prot_inuse_add.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %28) #22, !srcloc !335
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %43 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sk, align 16
  %module46 = getelementptr inbounds %struct.netlink_sock, ptr %44, i32 0, i32 20
  %45 = ptrtoint ptr %module46 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %module.0, ptr %module46, align 4
  %netlink_bind = getelementptr inbounds %struct.netlink_sock, ptr %44, i32 0, i32 18
  %46 = ptrtoint ptr %netlink_bind to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %24, ptr %netlink_bind, align 4
  %netlink_unbind = getelementptr inbounds %struct.netlink_sock, ptr %44, i32 0, i32 19
  %47 = ptrtoint ptr %netlink_unbind to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %26, ptr %netlink_unbind, align 8
  br label %cleanup

out_module:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @module_put(ptr noundef %module.0) #22
  br label %cleanup

cleanup:                                          ; preds = %out_module, %sock_prot_inuse_add.exit, %netlink_unlock_table.exit81.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -94, %entry.cleanup_crit_edge ], [ -93, %if.end.cleanup_crit_edge ], [ %err.0, %netlink_unlock_table.exit81.cleanup_crit_edge ], [ %call40, %out_module ], [ 0, %sock_prot_inuse_add.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlink_net_init(ptr nocapture noundef readonly %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  %call = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.77, i16 noundef zeroext 0, ptr noundef %1, ptr noundef nonnull @netlink_seq_ops, i32 noundef 48, ptr noundef null) #22
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netlink_net_exit(ptr nocapture noundef readonly %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %0 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proc_net, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.77, ptr noundef %1) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netlink_tap_init_net(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @netlink_tap_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %1 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call, ptr %call, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %prev.i, align 4
  %netlink_tap_lock = getelementptr inbounds %struct.netlink_tap_net, ptr %call, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %netlink_tap_lock, ptr noundef nonnull @.str.82, ptr noundef nonnull @netlink_tap_init_net.__key) #22
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #22

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #23 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #23 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 96)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { noreturn nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #19 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #20 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #21 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #22 = { nounwind }
attributes #23 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #24 = { nomerge }
attributes #25 = { nobuiltin nounwind }
attributes #26 = { nobuiltin }
attributes #27 = { cold nounwind }
attributes #28 = { nounwind allocsize(0) }
attributes #29 = { cold }
attributes #30 = { cold noreturn nounwind }
attributes #31 = { nounwind readnone }
attributes #32 = { nounwind allocsize(1) }
attributes #33 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !46, !48, !50, !52, !54, !56, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !80, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !94, !95, !97, !98, !100, !101, !102, !103, !105, !107, !108, !110, !111, !113, !114, !115, !117, !118, !120, !121, !123, !124, !126, !128, !130, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !152, !154, !156, !158, !160, !161, !163, !165, !167, !168, !169, !170, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !252, !253, !254, !256, !258, !260, !262, !263, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292}
!llvm.named.register.sp = !{!293}
!llvm.module.flags = !{!294, !295, !296, !297, !298, !299, !300, !301}
!llvm.ident = !{!302}

!0 = !{ptr @__tracepoint_netlink_extack, !1, !"__tracepoint_netlink_extack", i1 false, i1 false}
!1 = !{!"../include/trace/events/netlink.h", i32 9, i32 1}
!2 = !{ptr @__tracepoint_ptr_netlink_extack, !1, !"__tracepoint_ptr_netlink_extack", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_netlink_extack, !1, !"__SCK__tp_func_netlink_extack", i1 false, i1 false}
!4 = !{ptr @event_class_netlink_extack, !1, !"event_class_netlink_extack", i1 false, i1 false}
!5 = !{ptr @event_netlink_extack, !1, !"event_netlink_extack", i1 false, i1 false}
!6 = !{ptr @__event_netlink_extack, !1, !"__event_netlink_extack", i1 false, i1 false}
!7 = !{ptr @__bpf_trace_tp_map_netlink_extack, !1, !"__bpf_trace_tp_map_netlink_extack", i1 false, i1 false}
!8 = !{ptr @__ksymtab_nl_table, !9, !"__ksymtab_nl_table", i1 false, i1 false}
!9 = !{!"../net/netlink/af_netlink.c", i32 91, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/netlink/af_netlink.c", i32 143, i32 1}
!12 = !{ptr @nl_table_lock, !11, !"nl_table_lock", i1 false, i1 false}
!13 = !{ptr @__ksymtab_nl_table_lock, !14, !"__ksymtab_nl_table_lock", i1 false, i1 false}
!14 = !{!"../net/netlink/af_netlink.c", i32 144, i32 1}
!15 = !{ptr @__ksymtab_do_trace_netlink_extack, !16, !"__ksymtab_do_trace_netlink_extack", i1 false, i1 false}
!16 = !{!"../net/netlink/af_netlink.c", i32 158, i32 1}
!17 = !{ptr @__ksymtab_netlink_add_tap, !18, !"__ksymtab_netlink_add_tap", i1 false, i1 false}
!18 = !{!"../net/netlink/af_netlink.c", i32 206, i32 1}
!19 = !{ptr @__ksymtab_netlink_remove_tap, !20, !"__ksymtab_netlink_remove_tap", i1 false, i1 false}
!20 = !{!"../net/netlink/af_netlink.c", i32 244, i32 1}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/netlink/af_netlink.c", i32 434, i32 2}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../net/netlink/af_netlink.c", i32 443, i32 4}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../net/netlink/af_netlink.c", i32 451, i32 3}
!27 = !{ptr @__ksymtab___netlink_ns_capable, !28, !"__ksymtab___netlink_ns_capable", i1 false, i1 false}
!28 = !{!"../net/netlink/af_netlink.c", i32 871, i32 1}
!29 = !{ptr @__ksymtab_netlink_ns_capable, !30, !"__ksymtab_netlink_ns_capable", i1 false, i1 false}
!30 = !{!"../net/netlink/af_netlink.c", i32 888, i32 1}
!31 = !{ptr @__ksymtab_netlink_capable, !32, !"__ksymtab_netlink_capable", i1 false, i1 false}
!32 = !{!"../net/netlink/af_netlink.c", i32 903, i32 1}
!33 = !{ptr @__ksymtab_netlink_net_capable, !34, !"__ksymtab_netlink_net_capable", i1 false, i1 false}
!34 = !{!"../net/netlink/af_netlink.c", i32 919, i32 1}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../net/netlink/af_netlink.c", i32 1235, i32 3}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../net/netlink/af_netlink.c", i32 1243, i32 3}
!39 = !{ptr @__ksymtab_netlink_unicast, !40, !"__ksymtab_netlink_unicast", i1 false, i1 false}
!40 = !{!"../net/netlink/af_netlink.c", i32 1360, i32 1}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../net/netlink/af_netlink.c", i32 1370, i32 14}
!43 = !{ptr @.str.4, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @__ksymtab_netlink_has_listeners, !45, !"__ksymtab_netlink_has_listeners", i1 false, i1 false}
!45 = !{!"../net/netlink/af_netlink.c", i32 1379, i32 1}
!46 = !{ptr @__ksymtab_netlink_strict_get_check, !47, !"__ksymtab_netlink_strict_get_check", i1 false, i1 false}
!47 = !{!"../net/netlink/af_netlink.c", i32 1387, i32 1}
!48 = !{ptr @__ksymtab_netlink_broadcast, !49, !"__ksymtab_netlink_broadcast", i1 false, i1 false}
!49 = !{!"../net/netlink/af_netlink.c", i32 1533, i32 1}
!50 = !{ptr @__ksymtab_netlink_set_err, !51, !"__ksymtab_netlink_set_err", i1 false, i1 false}
!51 = !{!"../net/netlink/af_netlink.c", i32 1598, i32 1}
!52 = !{ptr @__ksymtab___netlink_kernel_create, !53, !"__ksymtab___netlink_kernel_create", i1 false, i1 false}
!53 = !{!"../net/netlink/af_netlink.c", i32 2099, i32 1}
!54 = !{ptr @__ksymtab_netlink_kernel_release, !55, !"__ksymtab_netlink_kernel_release", i1 false, i1 false}
!55 = !{!"../net/netlink/af_netlink.c", i32 2109, i32 1}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../net/netlink/af_netlink.c", i32 2123, i32 9}
!58 = !{ptr @.str.5, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @__ksymtab___nlmsg_put, !60, !"__ksymtab___nlmsg_put", i1 false, i1 false}
!60 = !{!"../net/netlink/af_netlink.c", i32 2182, i32 1}
!61 = !{ptr @__ksymtab___netlink_dump_start, !62, !"__ksymtab___netlink_dump_start", i1 false, i1 false}
!62 = !{!"../net/netlink/af_netlink.c", i32 2394, i32 1}
!63 = !{ptr @__ksymtab_netlink_ack, !64, !"__ksymtab_netlink_ack", i1 false, i1 false}
!64 = !{!"../net/netlink/af_netlink.c", i32 2466, i32 1}
!65 = !{ptr @__ksymtab_netlink_rcv_skb, !66, !"__ksymtab_netlink_rcv_skb", i1 false, i1 false}
!66 = !{!"../net/netlink/af_netlink.c", i32 2511, i32 1}
!67 = !{ptr @__ksymtab_nlmsg_notify, !68, !"__ksymtab_nlmsg_notify", i1 false, i1 false}
!68 = !{!"../net/netlink/af_netlink.c", i32 2552, i32 1}
!69 = !{ptr @__ksymtab_netlink_register_notifier, !70, !"__ksymtab_netlink_register_notifier", i1 false, i1 false}
!70 = !{!"../net/netlink/af_netlink.c", i32 2738, i32 1}
!71 = !{ptr @__ksymtab_netlink_unregister_notifier, !72, !"__ksymtab_netlink_unregister_notifier", i1 false, i1 false}
!72 = !{!"../net/netlink/af_netlink.c", i32 2744, i32 1}
!73 = !{ptr @__initcall__kmod_af_netlink__607_2903_netlink_proto_init1, !74, !"__initcall__kmod_af_netlink__607_2903_netlink_proto_init1", i1 false, i1 false}
!74 = !{!"../net/netlink/af_netlink.c", i32 2903, i32 1}
!75 = !{ptr @nl_table, !76, !"nl_table", i1 false, i1 false}
!76 = !{!"../net/netlink/af_netlink.c", i32 90, i32 23}
!77 = !{ptr @netlink_tap_net_id, !78, !"netlink_tap_net_id", i1 false, i1 false}
!78 = !{!"../net/netlink/af_netlink.c", i32 183, i32 21}
!79 = !{ptr @__tpstrtab_netlink_extack, !1, !"__tpstrtab_netlink_extack", i1 false, i1 false}
!80 = !{ptr @str__netlink__trace_system_name, !81, !"str__netlink__trace_system_name", i1 false, i1 false}
!81 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!82 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @trace_event_fields_netlink_extack, !1, !"trace_event_fields_netlink_extack", i1 false, i1 false}
!86 = !{ptr @trace_event_type_funcs_netlink_extack, !1, !"trace_event_type_funcs_netlink_extack", i1 false, i1 false}
!87 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @print_fmt_netlink_extack, !1, !"print_fmt_netlink_extack", i1 false, i1 false}
!89 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!90 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!91 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!94 = !{ptr @.str.11, !93, !"<string literal>", i1 false, i1 false}
!95 = distinct !{null, !96, !"__warned", i1 false, i1 false}
!96 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!97 = !{ptr @.str.12, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.13, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../net/netlink/af_netlink.c", i32 225, i32 2}
!100 = !{ptr @.str.14, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @__netlink_remove_tap._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @__netlink_remove_tap._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @nl_table_users, !104, !"nl_table_users", i1 false, i1 false}
!104 = !{!"../net/netlink/af_netlink.c", i32 145, i32 17}
!105 = !{ptr @.str.15, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/netlink/af_netlink.c", i32 93, i32 8}
!107 = !{ptr @nl_table_wait, !106, !"nl_table_wait", i1 false, i1 false}
!108 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!109 = !{!"../net/netlink/af_netlink.c", i32 322, i32 2}
!110 = !{ptr @.str.16, !109, !"<string literal>", i1 false, i1 false}
!111 = distinct !{null, !112, !"__warned", i1 false, i1 false}
!112 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!113 = !{ptr @.str.17, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.18, !112, !"<string literal>", i1 false, i1 false}
!115 = distinct !{null, !116, !"__warned", i1 false, i1 false}
!116 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!117 = !{ptr @.str.19, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @__netlink_create.__key, !119, !"__key", i1 false, i1 false}
!119 = !{!"../net/netlink/af_netlink.c", i32 656, i32 3}
!120 = !{ptr @.str.20, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @__netlink_create.__key.21, !122, !"__key", i1 false, i1 false}
!122 = !{!"../net/netlink/af_netlink.c", i32 661, i32 2}
!123 = !{ptr @.str.22, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @netlink_ops, !125, !"netlink_ops", i1 false, i1 false}
!125 = !{!"../net/netlink/af_netlink.c", i32 2746, i32 31}
!126 = distinct !{null, !127, !"__warned", i1 false, i1 false}
!127 = !{!"../net/netlink/af_netlink.c", i32 800, i32 10}
!128 = distinct !{null, !129, !"__warned", i1 false, i1 false}
!129 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!130 = !{ptr @.str.23, !129, !"<string literal>", i1 false, i1 false}
!131 = distinct !{null, !132, !"__warned", i1 false, i1 false}
!132 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!133 = distinct !{null, !134, !"__warned", i1 false, i1 false}
!134 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!135 = distinct !{null, !136, !"__warned", i1 false, i1 false}
!136 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!137 = distinct !{null, !138, !"__warned", i1 false, i1 false}
!138 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!139 = distinct !{null, !140, !"__warned", i1 false, i1 false}
!140 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!141 = distinct !{null, !142, !"__warned", i1 false, i1 false}
!142 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!143 = distinct !{null, !144, !"__warned", i1 false, i1 false}
!144 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!145 = !{ptr @netlink_rhashtable_params, !146, !"netlink_rhashtable_params", i1 false, i1 false}
!146 = !{!"../net/netlink/af_netlink.c", i32 2824, i32 39}
!147 = distinct !{null, !148, !"__warned", i1 false, i1 false}
!148 = !{!"../net/netlink/af_netlink.c", i32 554, i32 14}
!149 = !{ptr @deferred_put_nlk_sk.__key, !150, !"__key", i1 false, i1 false}
!150 = !{!"../net/netlink/af_netlink.c", i32 738, i32 3}
!151 = !{ptr @.str.29, !150, !"<string literal>", i1 false, i1 false}
!152 = distinct !{null, !153, !"__warned", i1 false, i1 false}
!153 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!154 = distinct !{null, !155, !"__warned", i1 false, i1 false}
!155 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!156 = distinct !{null, !157, !"__warned", i1 false, i1 false}
!157 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!158 = distinct !{null, !159, !"__already_done", i1 false, i1 false}
!159 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!160 = !{ptr @.str.31, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.32, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!163 = !{ptr @.str.33, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!165 = distinct !{null, !166, !"__already_done", i1 false, i1 false}
!166 = !{!"../net/netlink/af_netlink.c", i32 1854, i32 3}
!167 = !{ptr @.str.34, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.35, !166, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @netlink_sendmsg._entry, !166, !"_entry", i1 false, i1 false}
!170 = !{ptr @netlink_sendmsg._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!171 = distinct !{null, !172, !"__warned", i1 false, i1 false}
!172 = !{!"../include/net/scm.h", i32 85, i32 41}
!173 = distinct !{null, !174, !"__warned", i1 false, i1 false}
!174 = !{!"../include/net/scm.h", i32 85, i32 56}
!175 = distinct !{null, !176, !"__warned", i1 false, i1 false}
!176 = !{!"../include/net/scm.h", i32 124, i32 39}
!177 = !{ptr @netlink_proto, !178, !"netlink_proto", i1 false, i1 false}
!178 = !{!"../net/netlink/af_netlink.c", i32 630, i32 21}
!179 = !{ptr @.str.37, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../net/netlink/af_netlink.c", i32 98, i32 2}
!181 = !{ptr @.str.38, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../net/netlink/af_netlink.c", i32 99, i32 2}
!183 = !{ptr @.str.39, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../net/netlink/af_netlink.c", i32 100, i32 2}
!185 = !{ptr @.str.40, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../net/netlink/af_netlink.c", i32 101, i32 2}
!187 = !{ptr @.str.41, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../net/netlink/af_netlink.c", i32 102, i32 2}
!189 = !{ptr @.str.42, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../net/netlink/af_netlink.c", i32 103, i32 2}
!191 = !{ptr @.str.43, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../net/netlink/af_netlink.c", i32 104, i32 2}
!193 = !{ptr @.str.44, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../net/netlink/af_netlink.c", i32 105, i32 2}
!195 = !{ptr @.str.45, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../net/netlink/af_netlink.c", i32 106, i32 2}
!197 = !{ptr @.str.46, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../net/netlink/af_netlink.c", i32 107, i32 2}
!199 = !{ptr @.str.47, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../net/netlink/af_netlink.c", i32 108, i32 2}
!201 = !{ptr @.str.48, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../net/netlink/af_netlink.c", i32 109, i32 2}
!203 = !{ptr @.str.49, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../net/netlink/af_netlink.c", i32 110, i32 2}
!205 = !{ptr @.str.50, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../net/netlink/af_netlink.c", i32 111, i32 2}
!207 = !{ptr @.str.51, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../net/netlink/af_netlink.c", i32 112, i32 2}
!209 = !{ptr @.str.52, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../net/netlink/af_netlink.c", i32 113, i32 2}
!211 = !{ptr @.str.53, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../net/netlink/af_netlink.c", i32 114, i32 2}
!213 = !{ptr @.str.54, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../net/netlink/af_netlink.c", i32 115, i32 2}
!215 = !{ptr @.str.55, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../net/netlink/af_netlink.c", i32 116, i32 2}
!217 = !{ptr @.str.56, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../net/netlink/af_netlink.c", i32 117, i32 2}
!219 = !{ptr @.str.57, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../net/netlink/af_netlink.c", i32 118, i32 2}
!221 = !{ptr @.str.58, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../net/netlink/af_netlink.c", i32 119, i32 2}
!223 = !{ptr @.str.59, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../net/netlink/af_netlink.c", i32 120, i32 2}
!225 = !{ptr @.str.60, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../net/netlink/af_netlink.c", i32 121, i32 2}
!227 = !{ptr @.str.61, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../net/netlink/af_netlink.c", i32 122, i32 2}
!229 = !{ptr @.str.62, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../net/netlink/af_netlink.c", i32 123, i32 2}
!231 = !{ptr @.str.63, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../net/netlink/af_netlink.c", i32 124, i32 2}
!233 = !{ptr @.str.64, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../net/netlink/af_netlink.c", i32 125, i32 2}
!235 = !{ptr @.str.65, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../net/netlink/af_netlink.c", i32 126, i32 2}
!237 = !{ptr @.str.66, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../net/netlink/af_netlink.c", i32 127, i32 2}
!239 = !{ptr @.str.67, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../net/netlink/af_netlink.c", i32 128, i32 2}
!241 = !{ptr @.str.68, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../net/netlink/af_netlink.c", i32 129, i32 2}
!243 = !{ptr @.str.69, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../net/netlink/af_netlink.c", i32 130, i32 2}
!245 = !{ptr @nlk_cb_mutex_key_strings, !246, !"nlk_cb_mutex_key_strings", i1 false, i1 false}
!246 = !{!"../net/netlink/af_netlink.c", i32 97, i32 26}
!247 = !{ptr @nlk_cb_mutex_keys, !248, !"nlk_cb_mutex_keys", i1 false, i1 false}
!248 = !{!"../net/netlink/af_netlink.c", i32 95, i32 30}
!249 = !{ptr @.str.70, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../net/netlink/af_netlink.c", i32 408, i32 3}
!251 = !{ptr @.str.71, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @netlink_sock_destruct._entry, !250, !"_entry", i1 false, i1 false}
!253 = !{ptr @netlink_sock_destruct._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!254 = distinct !{null, !255, !"__warned", i1 false, i1 false}
!255 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!256 = distinct !{null, !257, !"__warned", i1 false, i1 false}
!257 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!258 = distinct !{null, !259, !"__warned", i1 false, i1 false}
!259 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!260 = !{ptr @.str.74, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../net/netlink/af_netlink.c", i32 149, i32 8}
!262 = !{ptr @.str.75, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @netlink_chain, !261, !"netlink_chain", i1 false, i1 false}
!264 = !{ptr @.str.76, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../net/netlink/af_netlink.c", i32 2900, i32 8}
!266 = distinct !{null, !267, !"btf_netlink_sock_id", i1 false, i1 false}
!267 = !{!"../net/netlink/af_netlink.c", i32 2833, i32 1}
!268 = !{ptr @.str.77, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../net/netlink/af_netlink.c", i32 2844, i32 14}
!270 = !{ptr @netlink_reg_info, !271, !"netlink_reg_info", i1 false, i1 false}
!271 = !{!"../net/netlink/af_netlink.c", i32 2843, i32 28}
!272 = !{ptr @netlink_seq_info, !273, !"netlink_seq_info", i1 false, i1 false}
!273 = !{!"../net/netlink/af_netlink.c", i32 2836, i32 39}
!274 = !{ptr @netlink_seq_ops, !275, !"netlink_seq_ops", i1 false, i1 false}
!275 = !{!"../net/netlink/af_netlink.c", i32 2726, i32 36}
!276 = !{ptr @.str.78, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../net/netlink/af_netlink.c", i32 2641, i32 5}
!278 = !{ptr @.str.79, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../net/netlink/af_netlink.c", i32 2647, i32 19}
!280 = !{ptr @.str.80, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../net/netlink/af_netlink.c", i32 2797, i32 9}
!282 = !{ptr @netlink_family_ops, !283, !"netlink_family_ops", i1 false, i1 false}
!283 = !{!"../net/netlink/af_netlink.c", i32 2767, i32 38}
!284 = !{ptr @.str.81, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../net/netlink/af_netlink.c", i32 691, i32 3}
!286 = !{ptr @netlink_net_ops, !287, !"netlink_net_ops", i1 false, i1 false}
!287 = !{!"../net/netlink/af_netlink.c", i32 2810, i32 48}
!288 = !{ptr @netlink_tap_net_ops, !289, !"netlink_tap_net_ops", i1 false, i1 false}
!289 = !{!"../net/netlink/af_netlink.c", i32 255, i32 33}
!290 = !{ptr @netlink_tap_init_net.__key, !291, !"__key", i1 false, i1 false}
!291 = !{!"../net/netlink/af_netlink.c", i32 251, i32 2}
!292 = !{ptr @.str.82, !291, !"<string literal>", i1 false, i1 false}
!293 = !{!"sp"}
!294 = !{i32 1, !"wchar_size", i32 2}
!295 = !{i32 1, !"min_enum_size", i32 4}
!296 = !{i32 8, !"branch-target-enforcement", i32 0}
!297 = !{i32 8, !"sign-return-address", i32 0}
!298 = !{i32 8, !"sign-return-address-all", i32 0}
!299 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!300 = !{i32 7, !"uwtable", i32 1}
!301 = !{i32 7, !"frame-pointer", i32 2}
!302 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!303 = !{!"branch_weights", i32 2000, i32 1}
!304 = !{!"branch_weights", i32 1, i32 2000}
!305 = !{!"auto-init"}
!306 = !{i64 2149021061, i64 2149021066, i64 2149021079, i64 2149021123, i64 2149021157, i64 2149021178}
!307 = !{i64 2158429785}
!308 = !{i64 2158429982}
!309 = !{i64 2149432402}
!310 = !{i64 2149433438}
!311 = !{i64 2152308865}
!312 = !{i64 2149423843}
!313 = !{i64 2149424109}
!314 = !{i64 2159161940}
!315 = !{i64 2148409214, i64 2148409246, i64 2148409275, i64 2148409309, i64 2148409340, i64 2148409363}
!316 = !{i64 2148407684, i64 2148407710, i64 2148407739, i64 2148407773, i64 2148407804, i64 2148407827}
!317 = !{i64 2148497239}
!318 = !{i64 2148411679, i64 2148411711, i64 2148411740, i64 2148411774, i64 2148411805, i64 2148411828}
!319 = !{i64 2149373353}
!320 = !{i64 2159227794, i64 2159228284, i64 2159227831, i64 2159227887, i64 2159227921, i64 2159227945, i64 2159227986, i64 2159228007, i64 2159228035, i64 2159228069}
!321 = !{i64 2155298999, i64 2155299487, i64 2155299036, i64 2155299092, i64 2155299126, i64 2155299150, i64 2155299191, i64 2155299212, i64 2155299240, i64 2155299274}
!322 = !{i64 2148496160}
!323 = !{i64 2148410869, i64 2148410901, i64 2148410930, i64 2148410964, i64 2148410995, i64 2148411018}
!324 = !{i64 2148496389}
!325 = !{i64 2159406668, i64 2159407158, i64 2159406705, i64 2159406761, i64 2159406795, i64 2159406819, i64 2159406860, i64 2159406881, i64 2159406909, i64 2159406943}
!326 = !{i64 2159414302}
!327 = !{i64 2159405052, i64 2159405542, i64 2159405089, i64 2159405145, i64 2159405179, i64 2159405203, i64 2159405244, i64 2159405265, i64 2159405293, i64 2159405327}
!328 = !{i8 0, i8 2}
!329 = !{i64 2157480003, i64 2157480494, i64 2157480040, i64 2157480096, i64 2157480130, i64 2157480154, i64 2157480195, i64 2157480216, i64 2157480244, i64 2157480278}
!330 = !{!"branch_weights", i32 2000, i32 4002, i32 2, i32 2000}
!331 = !{i64 2159173410}
!332 = !{i64 2159432162}
!333 = !{i64 811384, i64 811445}
!334 = !{i64 814116}
!335 = !{i64 814401}
!336 = !{i64 2157502334}
!337 = !{i64 2148410149, i64 2148410175, i64 2148410204, i64 2148410238, i64 2148410269, i64 2148410292}
!338 = !{i64 2159182376, i64 2159182865, i64 2159182413, i64 2159182469, i64 2159182503, i64 2159182527, i64 2159182568, i64 2159182589, i64 2159182617, i64 2159182651}
!339 = !{i64 2159205195}
!340 = !{i32 0, i32 33}
!341 = !{i64 2153382794, i64 2153382819}
!342 = !{i64 5878349}
!343 = !{i64 5878546}
!344 = !{i64 2153363779}
!345 = !{i64 2159256906, i64 2159257186, i64 2159257520, i64 2159257854}
!346 = !{i64 2159266392, i64 2159266672, i64 2159267006, i64 2159267340}
!347 = !{i64 2159271256, i64 2159271536, i64 2159271870, i64 2159272204}
!348 = !{i64 2159288041, i64 2159288321, i64 2159288655, i64 2159288989}
!349 = !{i64 2159292905, i64 2159293185, i64 2159293519, i64 2159293853}
!350 = !{i64 2159305629, i64 2159305909, i64 2159306243, i64 2159306577}
!351 = !{i64 2159310493, i64 2159310773, i64 2159311107, i64 2159311441}
!352 = !{i64 2159323378, i64 2159323658, i64 2159323992, i64 2159324326}
!353 = !{i64 2159332784, i64 2159333064, i64 2159333398, i64 2159333732}
!354 = !{i64 2159341586, i64 2159341866, i64 2159342200, i64 2159342534}
!355 = !{i64 2159346450, i64 2159346730, i64 2159347064, i64 2159347398}
!356 = !{i64 2159359176, i64 2159359456, i64 2159359790, i64 2159360124}
!357 = !{i64 2159364040, i64 2159364320, i64 2159364654, i64 2159364988}
!358 = !{i64 2159376766, i64 2159377046, i64 2159377380, i64 2159377714}
!359 = !{i64 2159381630, i64 2159381910, i64 2159382244, i64 2159382578}
!360 = !{i64 2159395812}
!361 = !{i64 2152111055}
!362 = !{!"branch_weights", i32 2146410443, i32 1073205}
!363 = !{i64 2148416542, i64 2148416574, i64 2148416603, i64 2148416637, i64 2148416668, i64 2148416691}
!364 = !{i64 2148505647}
!365 = !{i64 2152111215}
!366 = !{i64 2152111492}
!367 = !{i64 2152111334}
!368 = !{i64 2152111697}
!369 = !{i64 2152112760, i64 2152113252, i64 2152112797, i64 2152112853, i64 2152112887, i64 2152112911, i64 2152112952, i64 2152112973, i64 2152113001, i64 2152113035}
!370 = !{i64 2148504534}
!371 = !{i64 2148414929, i64 2148414961, i64 2148414990, i64 2148415024, i64 2148415055, i64 2148415078}
!372 = !{i64 2152114155}
!373 = !{i64 2157428031}
!374 = !{i64 2157430330}
!375 = !{i64 2157434958}
!376 = !{i64 2157438392}
!377 = !{i64 2159467923}
!378 = !{i64 667694, i64 667711}
