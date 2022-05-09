; ModuleID = '/llk/IR_all_yes/net/vmw_vsock/af_vsock.c_pt.bc'
source_filename = "../net/vmw_vsock/af_vsock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+vsock_bind_table\22, \22a\22\09"
module asm "\09.weak\09__crc_vsock_bind_table\09\09\09\09"
module asm "\09.long\09__crc_vsock_bind_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsock_bind_table:\09\09\09\09\09"
module asm "\09.asciz \09\22vsock_bind_table\22\09\09\09\09\09"
module asm "__kstrtabns_vsock_bind_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vsock_connected_table\22, \22a\22\09"
module asm "\09.weak\09__crc_vsock_connected_table\09\09\09\09"
module asm "\09.long\09__crc_vsock_connected_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsock_connected_table:\09\09\09\09\09"
module asm "\09.asciz \09\22vsock_connected_table\22\09\09\09\09\09"
module asm "__kstrtabns_vsock_connected_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vsock_table_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_vsock_table_lock\09\09\09\09"
module asm "\09.long\09__crc_vsock_table_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsock_table_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22vsock_table_lock\22\09\09\09\09\09"
module asm "__kstrtabns_vsock_table_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vsock_insert_connected\22, \22a\22\09"
module asm "\09.weak\09__crc_vsock_insert_connected\09\09\09\09"
module asm "\09.long\09__crc_vsock_insert_connected\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsock_insert_connected:\09\09\09\09\09"
module asm "\09.asciz \09\22vsock_insert_connected\22\09\09\09\09\09"
module asm "__kstrtabns_vsock_insert_connected:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vsock_remove_bound\22, \22a\22\09"
module asm "\09.weak\09__crc_vsock_remove_bound\09\09\09\09"
module asm "\09.long\09__crc_vsock_remove_bound\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsock_remove_bound:\09\09\09\09\09"
module asm "\09.asciz \09\22vsock_remove_bound\22\09\09\09\09\09"
module asm "__kstrtabns_vsock_remove_bound:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vsock_remove_connected\22, \22a\22\09"
module asm "\09.weak\09__crc_vsock_remove_connected\09\09\09\09"
module asm "\09.long\09__crc_vsock_remove_connected\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsock_remove_connected:\09\09\09\09\09"
module asm "\09.asciz \09\22vsock_remove_connected\22\09\09\09\09\09"
module asm "__kstrtabns_vsock_remove_connected:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vsock_find_bound_socket\22, \22a\22\09"
module asm "\09.weak\09__crc_vsock_find_bound_socket\09\09\09\09"
module asm "\09.long\09__crc_vsock_find_bound_socket\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsock_find_bound_socket:\09\09\09\09\09"
module asm "\09.asciz \09\22vsock_find_bound_socket\22\09\09\09\09\09"
module asm "__kstrtabns_vsock_find_bound_socket:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vsock_find_connected_socket\22, \22a\22\09"
module asm "\09.weak\09__crc_vsock_find_connected_socket\09\09\09\09"
module asm "\09.long\09__crc_vsock_find_connected_socket\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsock_find_connected_socket:\09\09\09\09\09"
module asm "\09.asciz \09\22vsock_find_connected_socket\22\09\09\09\09\09"
module asm "__kstrtabns_vsock_find_connected_socket:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vsock_remove_sock\22, \22a\22\09"
module asm "\09.weak\09__crc_vsock_remove_sock\09\09\09\09"
module asm "\09.long\09__crc_vsock_remove_sock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsock_remove_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22vsock_remove_sock\22\09\09\09\09\09"
module asm "__kstrtabns_vsock_remove_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vsock_for_each_connected_socket\22, \22a\22\09"
module asm "\09.weak\09__crc_vsock_for_each_connected_socket\09\09\09\09"
module asm "\09.long\09__crc_vsock_for_each_connected_socket\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsock_for_each_connected_socket:\09\09\09\09\09"
module asm "\09.asciz \09\22vsock_for_each_connected_socket\22\09\09\09\09\09"
module asm "__kstrtabns_vsock_for_each_connected_socket:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vsock_add_pending\22, \22a\22\09"
module asm "\09.weak\09__crc_vsock_add_pending\09\09\09\09"
module asm "\09.long\09__crc_vsock_add_pending\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsock_add_pending:\09\09\09\09\09"
module asm "\09.asciz \09\22vsock_add_pending\22\09\09\09\09\09"
module asm "__kstrtabns_vsock_add_pending:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vsock_remove_pending\22, \22a\22\09"
module asm "\09.weak\09__crc_vsock_remove_pending\09\09\09\09"
module asm "\09.long\09__crc_vsock_remove_pending\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsock_remove_pending:\09\09\09\09\09"
module asm "\09.asciz \09\22vsock_remove_pending\22\09\09\09\09\09"
module asm "__kstrtabns_vsock_remove_pending:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vsock_enqueue_accept\22, \22a\22\09"
module asm "\09.weak\09__crc_vsock_enqueue_accept\09\09\09\09"
module asm "\09.long\09__crc_vsock_enqueue_accept\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsock_enqueue_accept:\09\09\09\09\09"
module asm "\09.asciz \09\22vsock_enqueue_accept\22\09\09\09\09\09"
module asm "__kstrtabns_vsock_enqueue_accept:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vsock_assign_transport\22, \22a\22\09"
module asm "\09.weak\09__crc_vsock_assign_transport\09\09\09\09"
module asm "\09.long\09__crc_vsock_assign_transport\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsock_assign_transport:\09\09\09\09\09"
module asm "\09.asciz \09\22vsock_assign_transport\22\09\09\09\09\09"
module asm "__kstrtabns_vsock_assign_transport:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vsock_find_cid\22, \22a\22\09"
module asm "\09.weak\09__crc_vsock_find_cid\09\09\09\09"
module asm "\09.long\09__crc_vsock_find_cid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsock_find_cid:\09\09\09\09\09"
module asm "\09.asciz \09\22vsock_find_cid\22\09\09\09\09\09"
module asm "__kstrtabns_vsock_find_cid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vsock_create_connected\22, \22a\22\09"
module asm "\09.weak\09__crc_vsock_create_connected\09\09\09\09"
module asm "\09.long\09__crc_vsock_create_connected\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsock_create_connected:\09\09\09\09\09"
module asm "\09.asciz \09\22vsock_create_connected\22\09\09\09\09\09"
module asm "__kstrtabns_vsock_create_connected:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vsock_stream_has_data\22, \22a\22\09"
module asm "\09.weak\09__crc_vsock_stream_has_data\09\09\09\09"
module asm "\09.long\09__crc_vsock_stream_has_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsock_stream_has_data:\09\09\09\09\09"
module asm "\09.asciz \09\22vsock_stream_has_data\22\09\09\09\09\09"
module asm "__kstrtabns_vsock_stream_has_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vsock_stream_has_space\22, \22a\22\09"
module asm "\09.weak\09__crc_vsock_stream_has_space\09\09\09\09"
module asm "\09.long\09__crc_vsock_stream_has_space\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsock_stream_has_space:\09\09\09\09\09"
module asm "\09.asciz \09\22vsock_stream_has_space\22\09\09\09\09\09"
module asm "__kstrtabns_vsock_stream_has_space:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vsock_core_get_transport\22, \22a\22\09"
module asm "\09.weak\09__crc_vsock_core_get_transport\09\09\09\09"
module asm "\09.long\09__crc_vsock_core_get_transport\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsock_core_get_transport:\09\09\09\09\09"
module asm "\09.asciz \09\22vsock_core_get_transport\22\09\09\09\09\09"
module asm "__kstrtabns_vsock_core_get_transport:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vsock_core_register\22, \22a\22\09"
module asm "\09.weak\09__crc_vsock_core_register\09\09\09\09"
module asm "\09.long\09__crc_vsock_core_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsock_core_register:\09\09\09\09\09"
module asm "\09.asciz \09\22vsock_core_register\22\09\09\09\09\09"
module asm "__kstrtabns_vsock_core_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vsock_core_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_vsock_core_unregister\09\09\09\09"
module asm "\09.long\09__crc_vsock_core_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsock_core_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22vsock_core_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_vsock_core_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.114, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.114 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.32 }
%union.anon.32 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.34, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vsock_sock = type { %struct.sock, ptr, %struct.sockaddr_vm, %struct.sockaddr_vm, %struct.list_head, %struct.list_head, i8, i8, i32, ptr, i32, ptr, %struct.list_head, %struct.list_head, i8, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, i8, i32, i8, i8, i64, i64, i64, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.119, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.120, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.121, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.2, %union.anon.4, %union.anon.5, i16, i8, i8, i32, %union.anon.7, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.115, [0 x i32], %union.anon.116, i16, i16, %union.anon.117, %struct.refcount_struct, [0 x i32], %union.anon.118 }
%union.anon.2 = type { i64 }
%union.anon.4 = type { i32 }
%union.anon.5 = type { i32 }
%union.anon.7 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { %struct.hlist_node }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.119 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.120 = type { ptr }
%union.anon.121 = type { ptr }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr_vm = type { i16, i16, i32, i32, i8, [3 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.vsock_transport = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.36 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.36 = type { %struct.callback_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.85, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.17 }
%struct.llist_node = type { ptr }
%union.anon.17 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.85 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.113, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.8, %union.anon.111 }
%union.anon.8 = type { ptr }
%union.anon.111 = type { i64 }
%union.anon.113 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.socket_alloc = type { %struct.socket, %struct.inode, [112 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.140, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.141, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.142, ptr, %struct.address_space, %struct.list_head, %union.anon.143, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.140 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.141 = type { %struct.callback_head }
%union.anon.142 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.143 = type { ptr }
%struct.__kernel_sock_timeval = type { i64, i64 }
%union.anon.146 = type { %struct.__kernel_sock_timeval }
%struct.vsock_transport_send_notify_data = type { i64, i64 }
%struct.vsock_transport_recv_notify_data = type { i64, i64, i8 }

@vsock_bind_table = dso_local global { [252 x %struct.list_head], [480 x i8] } zeroinitializer, align 32
@__kstrtab_vsock_bind_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsock_bind_table = external dso_local constant [0 x i8], align 1
@__ksymtab_vsock_bind_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsock_bind_table to i32), ptr @__kstrtab_vsock_bind_table, ptr @__kstrtabns_vsock_bind_table }, section "___ksymtab_gpl+vsock_bind_table", align 4
@vsock_connected_table = dso_local global { [251 x %struct.list_head], [488 x i8] } zeroinitializer, align 32
@__kstrtab_vsock_connected_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsock_connected_table = external dso_local constant [0 x i8], align 1
@__ksymtab_vsock_connected_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsock_connected_table to i32), ptr @__kstrtab_vsock_connected_table, ptr @__kstrtabns_vsock_connected_table }, section "___ksymtab_gpl+vsock_connected_table", align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vsock_table_lock\00", [47 x i8] zeroinitializer }, align 32
@vsock_table_lock = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_vsock_table_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsock_table_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_vsock_table_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsock_table_lock to i32), ptr @__kstrtab_vsock_table_lock, ptr @__kstrtabns_vsock_table_lock }, section "___ksymtab_gpl+vsock_table_lock", align 4
@__kstrtab_vsock_insert_connected = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsock_insert_connected = external dso_local constant [0 x i8], align 1
@__ksymtab_vsock_insert_connected = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsock_insert_connected to i32), ptr @__kstrtab_vsock_insert_connected, ptr @__kstrtabns_vsock_insert_connected }, section "___ksymtab_gpl+vsock_insert_connected", align 4
@__kstrtab_vsock_remove_bound = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsock_remove_bound = external dso_local constant [0 x i8], align 1
@__ksymtab_vsock_remove_bound = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsock_remove_bound to i32), ptr @__kstrtab_vsock_remove_bound, ptr @__kstrtabns_vsock_remove_bound }, section "___ksymtab_gpl+vsock_remove_bound", align 4
@__kstrtab_vsock_remove_connected = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsock_remove_connected = external dso_local constant [0 x i8], align 1
@__ksymtab_vsock_remove_connected = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsock_remove_connected to i32), ptr @__kstrtab_vsock_remove_connected, ptr @__kstrtabns_vsock_remove_connected }, section "___ksymtab_gpl+vsock_remove_connected", align 4
@__kstrtab_vsock_find_bound_socket = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsock_find_bound_socket = external dso_local constant [0 x i8], align 1
@__ksymtab_vsock_find_bound_socket = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsock_find_bound_socket to i32), ptr @__kstrtab_vsock_find_bound_socket, ptr @__kstrtabns_vsock_find_bound_socket }, section "___ksymtab_gpl+vsock_find_bound_socket", align 4
@__kstrtab_vsock_find_connected_socket = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsock_find_connected_socket = external dso_local constant [0 x i8], align 1
@__ksymtab_vsock_find_connected_socket = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsock_find_connected_socket to i32), ptr @__kstrtab_vsock_find_connected_socket, ptr @__kstrtabns_vsock_find_connected_socket }, section "___ksymtab_gpl+vsock_find_connected_socket", align 4
@__kstrtab_vsock_remove_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsock_remove_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_vsock_remove_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsock_remove_sock to i32), ptr @__kstrtab_vsock_remove_sock, ptr @__kstrtabns_vsock_remove_sock }, section "___ksymtab_gpl+vsock_remove_sock", align 4
@__kstrtab_vsock_for_each_connected_socket = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsock_for_each_connected_socket = external dso_local constant [0 x i8], align 1
@__ksymtab_vsock_for_each_connected_socket = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsock_for_each_connected_socket to i32), ptr @__kstrtab_vsock_for_each_connected_socket, ptr @__kstrtabns_vsock_for_each_connected_socket }, section "___ksymtab_gpl+vsock_for_each_connected_socket", align 4
@__kstrtab_vsock_add_pending = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsock_add_pending = external dso_local constant [0 x i8], align 1
@__ksymtab_vsock_add_pending = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsock_add_pending to i32), ptr @__kstrtab_vsock_add_pending, ptr @__kstrtabns_vsock_add_pending }, section "___ksymtab_gpl+vsock_add_pending", align 4
@__kstrtab_vsock_remove_pending = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsock_remove_pending = external dso_local constant [0 x i8], align 1
@__ksymtab_vsock_remove_pending = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsock_remove_pending to i32), ptr @__kstrtab_vsock_remove_pending, ptr @__kstrtabns_vsock_remove_pending }, section "___ksymtab_gpl+vsock_remove_pending", align 4
@__kstrtab_vsock_enqueue_accept = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsock_enqueue_accept = external dso_local constant [0 x i8], align 1
@__ksymtab_vsock_enqueue_accept = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsock_enqueue_accept to i32), ptr @__kstrtab_vsock_enqueue_accept, ptr @__kstrtabns_vsock_enqueue_accept }, section "___ksymtab_gpl+vsock_enqueue_accept", align 4
@transport_dgram = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@transport_local = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@transport_h2g = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@transport_g2h = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_vsock_assign_transport = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsock_assign_transport = external dso_local constant [0 x i8], align 1
@__ksymtab_vsock_assign_transport = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsock_assign_transport to i32), ptr @__kstrtab_vsock_assign_transport, ptr @__kstrtabns_vsock_assign_transport }, section "___ksymtab_gpl+vsock_assign_transport", align 4
@__kstrtab_vsock_find_cid = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsock_find_cid = external dso_local constant [0 x i8], align 1
@__ksymtab_vsock_find_cid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsock_find_cid to i32), ptr @__kstrtab_vsock_find_cid, ptr @__kstrtabns_vsock_find_cid }, section "___ksymtab_gpl+vsock_find_cid", align 4
@__kstrtab_vsock_create_connected = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsock_create_connected = external dso_local constant [0 x i8], align 1
@__ksymtab_vsock_create_connected = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsock_create_connected to i32), ptr @__kstrtab_vsock_create_connected, ptr @__kstrtabns_vsock_create_connected }, section "___ksymtab_gpl+vsock_create_connected", align 4
@__kstrtab_vsock_stream_has_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsock_stream_has_data = external dso_local constant [0 x i8], align 1
@__ksymtab_vsock_stream_has_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsock_stream_has_data to i32), ptr @__kstrtab_vsock_stream_has_data, ptr @__kstrtabns_vsock_stream_has_data }, section "___ksymtab_gpl+vsock_stream_has_data", align 4
@__kstrtab_vsock_stream_has_space = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsock_stream_has_space = external dso_local constant [0 x i8], align 1
@__ksymtab_vsock_stream_has_space = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsock_stream_has_space to i32), ptr @__kstrtab_vsock_stream_has_space, ptr @__kstrtabns_vsock_stream_has_space }, section "___ksymtab_gpl+vsock_stream_has_space", align 4
@vsock_device = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 0, ptr @.str.2, ptr @vsock_device_ops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@vsock_proto = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1400, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.114 zeroinitializer, ptr null, [32 x i8] c"AF_VSOCK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_vsock_core_get_transport = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsock_core_get_transport = external dso_local constant [0 x i8], align 1
@__ksymtab_vsock_core_get_transport = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsock_core_get_transport to i32), ptr @__kstrtab_vsock_core_get_transport, ptr @__kstrtabns_vsock_core_get_transport }, section "___ksymtab_gpl+vsock_core_get_transport", align 4
@vsock_register_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @vsock_register_mutex, i64 52), ptr getelementptr (i8, ptr @vsock_register_mutex, i64 52) }, ptr @vsock_register_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_vsock_core_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsock_core_register = external dso_local constant [0 x i8], align 1
@__ksymtab_vsock_core_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsock_core_register to i32), ptr @__kstrtab_vsock_core_register, ptr @__kstrtabns_vsock_core_register }, section "___ksymtab_gpl+vsock_core_register", align 4
@__kstrtab_vsock_core_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsock_core_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_vsock_core_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsock_core_unregister to i32), ptr @__kstrtab_vsock_core_unregister, ptr @__kstrtabns_vsock_core_unregister }, section "___ksymtab_gpl+vsock_core_unregister", align 4
@__initcall__kmod_vsock__458_2410_vsock_init6 = internal global ptr @vsock_init, section ".initcall6.init", align 4
@__exitcall_vsock_exit = internal global ptr @vsock_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author459 = internal constant [26 x i8] c"vsock.author=VMware, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description460 = internal constant [47 x i8] c"vsock.description=VMware Virtual Socket Family\00", section ".modinfo", align 1
@__UNIQUE_ID_version461 = internal constant [24 x i8] c"vsock.version=1.0.2.0-k\00", section ".modinfo", align 1
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vsock\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"1.0.2.0-k\00", [22 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.2, ptr @.str.3 }, section "__modver", align 4
@__UNIQUE_ID_file462 = internal constant [31 x i8] c"vsock.file=net/vmw_vsock/vsock\00", section ".modinfo", align 1
@__UNIQUE_ID_license463 = internal constant [21 x i8] c"vsock.license=GPL v2\00", section ".modinfo", align 1
@__vsock_create.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&vsk->connect_work)->work)\00", [49 x i8] zeroinitializer }, align 32
@__vsock_create.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&vsk->connect_work)->timer\00", [35 x i8] zeroinitializer }, align 32
@__vsock_create.__key.7 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&vsk->pending_work)->work)\00", [49 x i8] zeroinitializer }, align 32
@__vsock_create.__key.9 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&vsk->pending_work)->timer\00", [35 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@vsock_device_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsock_dev_ioctl, ptr null, ptr null, i32 0, ptr @nonseekable_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/vmw_vsock/af_vsock.c\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"vsock_register_mutex.wait_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vsock_register_mutex\00", [43 x i8] zeroinitializer }, align 32
@vsock_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.12, i32 2294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Failed to register misc device\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vsock_init\00", [21 x i8] zeroinitializer }, align 32
@vsock_init._entry_ptr = internal global ptr @vsock_init._entry, section ".printk_index", align 4
@vsock_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.12, i32 2300, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Cannot register vsock protocol\0A\00", [62 x i8] zeroinitializer }, align 32
@vsock_init._entry_ptr.19 = internal global ptr @vsock_init._entry.17, section ".printk_index", align 4
@vsock_family_ops = internal constant { %struct.net_proto_family, [20 x i8] } { %struct.net_proto_family { i32 40, ptr @vsock_create, ptr null }, [20 x i8] zeroinitializer }, align 32
@vsock_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.12, i32 2307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013could not register af_vsock (%d) address family: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@vsock_init._entry_ptr.22 = internal global ptr @vsock_init._entry.20, section ".printk_index", align 4
@vsock_dgram_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 40, ptr null, ptr @vsock_release, ptr @vsock_bind, ptr @vsock_dgram_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @vsock_getname, ptr @vsock_poll, ptr @sock_no_ioctl, ptr null, ptr @sock_no_listen, ptr @vsock_shutdown, ptr null, ptr null, ptr null, ptr @vsock_dgram_sendmsg, ptr @vsock_dgram_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@vsock_stream_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 40, ptr null, ptr @vsock_release, ptr @vsock_bind, ptr @vsock_connect, ptr @sock_no_socketpair, ptr @vsock_accept, ptr @vsock_getname, ptr @vsock_poll, ptr @sock_no_ioctl, ptr null, ptr @vsock_listen, ptr @vsock_shutdown, ptr @vsock_connectible_setsockopt, ptr @vsock_connectible_getsockopt, ptr null, ptr @vsock_connectible_sendmsg, ptr @vsock_connectible_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@vsock_seqpacket_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 40, ptr null, ptr @vsock_release, ptr @vsock_bind, ptr @vsock_connect, ptr @sock_no_socketpair, ptr @vsock_accept, ptr @vsock_getname, ptr @vsock_poll, ptr @sock_no_ioctl, ptr null, ptr @vsock_listen, ptr @vsock_shutdown, ptr @vsock_connectible_setsockopt, ptr @vsock_connectible_getsockopt, ptr null, ptr @vsock_connectible_sendmsg, ptr @vsock_connectible_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__vsock_bind_connectible.port = internal unnamed_addr global i32 0, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 40]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967199]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.32 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 6, i64 8]
@__sancov_gen_cov_switch_values.33 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 6, i64 8]
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"vsock_bind_table\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 174, i32 18 }
@___asan_gen_.37 = private unnamed_addr constant [22 x i8] c"vsock_connected_table\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 176, i32 18 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"vsock_table_lock\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 178, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"transport_dgram\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 139, i32 38 }
@___asan_gen_.49 = private unnamed_addr constant [16 x i8] c"transport_local\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 141, i32 38 }
@___asan_gen_.52 = private unnamed_addr constant [14 x i8] c"transport_h2g\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 135, i32 38 }
@___asan_gen_.55 = private unnamed_addr constant [14 x i8] c"transport_g2h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 137, i32 38 }
@___asan_gen_.58 = private unnamed_addr constant [13 x i8] c"vsock_device\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 2279, i32 26 }
@___asan_gen_.61 = private unnamed_addr constant [12 x i8] c"vsock_proto\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 119, i32 21 }
@___asan_gen_.64 = private unnamed_addr constant [21 x i8] c"vsock_register_mutex\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 2415, i32 1 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 764, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 765, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 286, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"vsock_device_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 2270, i32 37 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 2245, i32 7 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 142, i32 8 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 2294, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 2300, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"vsock_family_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 2222, i32 38 }
@___asan_gen_.121 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 2306, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [16 x i8] c"vsock_dgram_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 1248, i32 31 }
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"vsock_stream_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 2132, i32 31 }
@___asan_gen_.133 = private unnamed_addr constant [20 x i8] c"vsock_seqpacket_ops\00", align 1
@___asan_gen_.134 = private constant [28 x i8] c"../net/vmw_vsock/af_vsock.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 2153, i32 31 }
@___asan_gen_.137 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 2024, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 230, i32 6 }
@___asan_gen_.143 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 214, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 156, i32 2 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_author459, ptr @__UNIQUE_ID_description460, ptr @__UNIQUE_ID_file462, ptr @__UNIQUE_ID_license463, ptr @__UNIQUE_ID_version461, ptr @__exitcall_vsock_exit, ptr @__initcall__kmod_vsock__458_2410_vsock_init6, ptr @__ksymtab_vsock_add_pending, ptr @__ksymtab_vsock_assign_transport, ptr @__ksymtab_vsock_bind_table, ptr @__ksymtab_vsock_connected_table, ptr @__ksymtab_vsock_core_get_transport, ptr @__ksymtab_vsock_core_register, ptr @__ksymtab_vsock_core_unregister, ptr @__ksymtab_vsock_create_connected, ptr @__ksymtab_vsock_enqueue_accept, ptr @__ksymtab_vsock_find_bound_socket, ptr @__ksymtab_vsock_find_cid, ptr @__ksymtab_vsock_find_connected_socket, ptr @__ksymtab_vsock_for_each_connected_socket, ptr @__ksymtab_vsock_insert_connected, ptr @__ksymtab_vsock_remove_bound, ptr @__ksymtab_vsock_remove_connected, ptr @__ksymtab_vsock_remove_pending, ptr @__ksymtab_vsock_remove_sock, ptr @__ksymtab_vsock_stream_has_data, ptr @__ksymtab_vsock_stream_has_space, ptr @__ksymtab_vsock_table_lock, ptr @__modver_attr, ptr @vsock_exit, ptr @vsock_init._entry, ptr @vsock_init._entry.17, ptr @vsock_init._entry.20, ptr @vsock_init._entry_ptr, ptr @vsock_init._entry_ptr.19, ptr @vsock_init._entry_ptr.22, ptr @vsock_bind_table, ptr @vsock_connected_table, ptr @.str, ptr @vsock_table_lock, ptr @transport_dgram, ptr @transport_local, ptr @transport_h2g, ptr @transport_g2h, ptr @vsock_device, ptr @vsock_proto, ptr @vsock_register_mutex, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @vsock_device_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @vsock_family_ops, ptr @.str.21, ptr @vsock_dgram_ops, ptr @vsock_stream_ops, ptr @vsock_seqpacket_ops, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsock_bind_table to i32), i32 2016, i32 2496, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsock_connected_table to i32), i32 2008, i32 2496, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsock_table_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @transport_dgram to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @transport_local to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @transport_h2g to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @transport_g2h to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsock_device to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsock_proto to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsock_register_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsock_device_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsock_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsock_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsock_family_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsock_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsock_dgram_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsock_stream_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsock_seqpacket_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsock_insert_connected(ptr noundef %vsk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %svm_cid = getelementptr inbounds %struct.vsock_sock, ptr %vsk, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %svm_cid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %svm_cid, align 4
  %svm_port = getelementptr inbounds %struct.vsock_sock, ptr %vsk, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %svm_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %svm_port, align 4
  %xor = xor i32 %3, %1
  %rem = urem i32 %xor, 251
  %arrayidx = getelementptr [251 x %struct.list_head], ptr @vsock_connected_table, i32 0, i32 %rem
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @vsock_table_lock) #9
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %vsk, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #9, !srcloc !142
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !143

entry.if.end15.sink.split.i.i.i.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %entry
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !144

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #9
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge
  %connected_table.i = getelementptr inbounds %struct.vsock_sock, ptr %vsk, i32 0, i32 5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %connected_table.i, ptr noundef %arrayidx, ptr noundef %7) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %sock_hold.exit.i.__vsock_insert_connected.exit_crit_edge

sock_hold.exit.i.__vsock_insert_connected.exit_crit_edge: ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__vsock_insert_connected.exit

if.end.i.i.i:                                     ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %connected_table.i, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %connected_table.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %connected_table.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.vsock_sock, ptr %vsk, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx, ptr %prev3.i.i.i, align 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %connected_table.i, ptr %arrayidx, align 4
  br label %__vsock_insert_connected.exit

__vsock_insert_connected.exit:                    ; preds = %if.end.i.i.i, %sock_hold.exit.i.__vsock_insert_connected.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @vsock_table_lock) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsock_remove_bound(ptr noundef %vsk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @vsock_table_lock) #9
  %bound_table.i = getelementptr inbounds %struct.vsock_sock, ptr %vsk, i32 0, i32 4
  %0 = ptrtoint ptr %bound_table.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %bound_table.i, align 4
  %cmp.i.i.not = icmp eq ptr %1, %bound_table.i
  br i1 %cmp.i.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bound_table.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.list_del_init.exit.i_crit_edge

if.then.list_del_init.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.vsock_sock, ptr %vsk, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %bound_table.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bound_table.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.list_del_init.exit.i_crit_edge
  %8 = ptrtoint ptr %bound_table.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %bound_table.i, ptr %bound_table.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.vsock_sock, ptr %vsk, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %bound_table.i, ptr %prev.i3.i.i, align 4
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %vsk, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #9, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !144

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #9
  br label %if.end

if.then.i.i:                                      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @sk_free(ptr noundef %vsk) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @vsock_table_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsock_remove_connected(ptr noundef %vsk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @vsock_table_lock) #9
  %connected_table.i = getelementptr inbounds %struct.vsock_sock, ptr %vsk, i32 0, i32 5
  %0 = ptrtoint ptr %connected_table.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %connected_table.i, align 4
  %cmp.i.i.not = icmp eq ptr %1, %connected_table.i
  br i1 %cmp.i.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %connected_table.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.list_del_init.exit.i_crit_edge

if.then.list_del_init.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.vsock_sock, ptr %vsk, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %connected_table.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connected_table.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.list_del_init.exit.i_crit_edge
  %8 = ptrtoint ptr %connected_table.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %connected_table.i, ptr %connected_table.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.vsock_sock, ptr %vsk, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %connected_table.i, ptr %prev.i3.i.i, align 4
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %vsk, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #9, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !144

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #9
  br label %if.end

if.then.i.i:                                      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @sk_free(ptr noundef %vsk) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @vsock_table_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vsock_find_bound_socket(ptr noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @vsock_table_lock) #9
  %svm_port.i = getelementptr inbounds %struct.sockaddr_vm, ptr %addr, i32 0, i32 2
  %0 = ptrtoint ptr %svm_port.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %svm_port.i, align 4
  %rem.i = urem i32 %1, 251
  %arrayidx.i = getelementptr [252 x %struct.list_head], ptr @vsock_bind_table, i32 0, i32 %rem.i
  %svm_cid10.i = getelementptr inbounds %struct.sockaddr_vm, ptr %addr, i32 0, i32 3
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn40.i = load ptr, ptr %arrayidx.i, align 4
  %cmp.not43.i = icmp eq ptr %.pn40.i, %arrayidx.i
  br i1 %cmp.not43.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn44.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn40.i, %entry.for.body.i_crit_edge ]
  %local_addr.i = getelementptr i8, ptr %.pn44.i, i32 -32
  %call.i = tail call zeroext i1 @vsock_addr_equals_addr(ptr noundef %addr, ptr noundef %local_addr.i) #9
  br i1 %call.i, label %for.body.i.__vsock_find_bound_socket.exit_crit_edge, label %if.end.i

for.body.i.__vsock_find_bound_socket.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__vsock_find_bound_socket.exit

if.end.i:                                         ; preds = %for.body.i
  %3 = ptrtoint ptr %svm_port.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %svm_port.i, align 4
  %svm_port6.i = getelementptr i8, ptr %.pn44.i, i32 -28
  %5 = ptrtoint ptr %svm_port6.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %svm_port6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp7.i = icmp eq i32 %4, %6
  br i1 %cmp7.i, label %land.lhs.true.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %svm_cid.i = getelementptr i8, ptr %.pn44.i, i32 -24
  %7 = ptrtoint ptr %svm_cid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %svm_cid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp9.i = icmp eq i32 %8, -1
  br i1 %cmp9.i, label %land.lhs.true.i.__vsock_find_bound_socket.exit_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.__vsock_find_bound_socket.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__vsock_find_bound_socket.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %9 = ptrtoint ptr %svm_cid10.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %svm_cid10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp11.i = icmp eq i32 %10, -1
  br i1 %cmp11.i, label %lor.lhs.false.i.__vsock_find_bound_socket.exit_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

lor.lhs.false.i.__vsock_find_bound_socket.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__vsock_find_bound_socket.exit

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %11 = ptrtoint ptr %.pn44.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn44.i, align 4
  %rem2.i = urem i32 %4, 251
  %arrayidx3.i = getelementptr [252 x %struct.list_head], ptr @vsock_bind_table, i32 0, i32 %rem2.i
  %cmp.not.i = icmp eq ptr %.pn.i, %arrayidx3.i
  br i1 %cmp.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

__vsock_find_bound_socket.exit:                   ; preds = %lor.lhs.false.i.__vsock_find_bound_socket.exit_crit_edge, %land.lhs.true.i.__vsock_find_bound_socket.exit_crit_edge, %for.body.i.__vsock_find_bound_socket.exit_crit_edge
  %retval.0.i = getelementptr i8, ptr %.pn44.i, i32 -996
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %__vsock_find_bound_socket.exit.if.end_crit_edge, label %if.then

__vsock_find_bound_socket.exit.if.end_crit_edge:  ; preds = %__vsock_find_bound_socket.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %__vsock_find_bound_socket.exit
  %skc_refcnt.i = getelementptr i8, ptr %.pn44.i, i32 -896
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !142
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !143

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !144

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #9
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %__vsock_find_bound_socket.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i5 = phi ptr [ null, %__vsock_find_bound_socket.exit.if.end_crit_edge ], [ %retval.0.i, %if.else.i.i.i.i.if.end_crit_edge ], [ %retval.0.i, %if.end15.sink.split.i.i.i.i ], [ null, %entry.if.end_crit_edge ], [ null, %for.inc.i.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @vsock_table_lock) #9
  ret ptr %retval.0.i5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vsock_find_connected_socket(ptr noundef %src, ptr nocapture noundef readonly %dst) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @vsock_table_lock) #9
  %svm_cid.i = getelementptr inbounds %struct.sockaddr_vm, ptr %src, i32 0, i32 3
  %0 = ptrtoint ptr %svm_cid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %svm_cid.i, align 4
  %svm_port.i = getelementptr inbounds %struct.sockaddr_vm, ptr %dst, i32 0, i32 2
  %2 = ptrtoint ptr %svm_port.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %svm_port.i, align 4
  %xor.i = xor i32 %3, %1
  %rem.i = urem i32 %xor.i, 251
  %arrayidx.i = getelementptr [251 x %struct.list_head], ptr @vsock_connected_table, i32 0, i32 %rem.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn24.i = load ptr, ptr %arrayidx.i, align 4
  %cmp.not28.i = icmp eq ptr %.pn24.i, %arrayidx.i
  br i1 %cmp.not28.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn29.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn24.i, %entry.for.body.i_crit_edge ]
  %remote_addr.i = getelementptr i8, ptr %.pn29.i, i32 -24
  %call.i = tail call zeroext i1 @vsock_addr_equals_addr(ptr noundef %src, ptr noundef %remote_addr.i) #9
  br i1 %call.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %5 = ptrtoint ptr %svm_port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %svm_port.i, align 4
  %svm_port7.i = getelementptr i8, ptr %.pn29.i, i32 -36
  %7 = ptrtoint ptr %svm_port7.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %svm_port7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp8.i = icmp eq i32 %6, %8
  br i1 %cmp8.i, label %__vsock_find_connected_socket.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %9 = ptrtoint ptr %.pn29.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i = load ptr, ptr %.pn29.i, align 4
  %10 = ptrtoint ptr %svm_cid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %svm_cid.i, align 4
  %12 = ptrtoint ptr %svm_port.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %svm_port.i, align 4
  %xor3.i = xor i32 %13, %11
  %rem4.i = urem i32 %xor3.i, 251
  %arrayidx5.i = getelementptr [251 x %struct.list_head], ptr @vsock_connected_table, i32 0, i32 %rem4.i
  %cmp.not.i = icmp eq ptr %.pn.i, %arrayidx5.i
  br i1 %cmp.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

__vsock_find_connected_socket.exit:               ; preds = %land.lhs.true.i
  %vsk.0.le.i = getelementptr i8, ptr %.pn29.i, i32 -1004
  %tobool.not = icmp eq ptr %vsk.0.le.i, null
  br i1 %tobool.not, label %__vsock_find_connected_socket.exit.if.end_crit_edge, label %if.then

__vsock_find_connected_socket.exit.if.end_crit_edge: ; preds = %__vsock_find_connected_socket.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %__vsock_find_connected_socket.exit
  %skc_refcnt.i = getelementptr i8, ptr %.pn29.i, i32 -904
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !142
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !143

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !144

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #9
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %__vsock_find_connected_socket.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i5 = phi ptr [ null, %__vsock_find_connected_socket.exit.if.end_crit_edge ], [ %vsk.0.le.i, %if.else.i.i.i.i.if.end_crit_edge ], [ %vsk.0.le.i, %if.end15.sink.split.i.i.i.i ], [ null, %entry.if.end_crit_edge ], [ null, %for.inc.i.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @vsock_table_lock) #9
  ret ptr %retval.0.i5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsock_remove_sock(ptr noundef %vsk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @vsock_remove_bound(ptr noundef %vsk)
  tail call void @vsock_remove_connected(ptr noundef %vsk)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsock_for_each_connected_socket(ptr noundef readnone %transport, ptr nocapture noundef readonly %fn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @vsock_table_lock) #9
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %i.025 = phi i32 [ 0, %entry ], [ %inc, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr [251 x %struct.list_head], ptr @vsock_connected_table, i32 0, i32 %i.025
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn20 = load ptr, ptr %arrayidx, align 4
  %cmp3.not22 = icmp eq ptr %.pn20, %arrayidx
  br i1 %cmp3.not22, label %for.body.for.end_crit_edge, label %for.body.for.body4_crit_edge

for.body.for.body4_crit_edge:                     ; preds = %for.body
  br label %for.body4

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body4:                                        ; preds = %for.inc.for.body4_crit_edge, %for.body.for.body4_crit_edge
  %.pn23 = phi ptr [ %.pn, %for.inc.for.body4_crit_edge ], [ %.pn20, %for.body.for.body4_crit_edge ]
  %transport5 = getelementptr i8, ptr %.pn23, i32 -44
  %1 = ptrtoint ptr %transport5 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %transport5, align 8
  %cmp6.not = icmp eq ptr %2, %transport
  br i1 %cmp6.not, label %if.end, label %for.body4.for.inc_crit_edge

for.body4.for.inc_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #11
  %vsk.024 = getelementptr i8, ptr %.pn23, i32 -1004
  tail call void %fn(ptr noundef %vsk.024) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body4.for.inc_crit_edge
  %3 = ptrtoint ptr %.pn23 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn23, align 4
  %cmp3.not = icmp eq ptr %.pn, %arrayidx
  br i1 %cmp3.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body4_crit_edge

for.inc.for.body4_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body4

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, 251
  br i1 %exitcond.not, label %for.end13, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @vsock_table_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsock_add_pending(ptr noundef %listener, ptr noundef %pending) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %pending, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !142
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !143

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !144

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #9
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %skc_refcnt.i4 = getelementptr inbounds %struct.sock_common, ptr %listener, i32 0, i32 19
  %call.i.i.i.i.i.i5 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i4, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i4, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i4, ptr %skc_refcnt.i4, i32 1, ptr elementtype(i32) %skc_refcnt.i4) #9, !srcloc !142
  %asmresult.i.i.i.i.i.i6 = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i6)
  %tobool1.not.i.i.i.i7 = icmp eq i32 %asmresult.i.i.i.i.i.i6, 0
  br i1 %tobool1.not.i.i.i.i7, label %sock_hold.exit.if.end15.sink.split.i.i.i.i12_crit_edge, label %if.else.i.i.i.i10, !prof !143

sock_hold.exit.if.end15.sink.split.i.i.i.i12_crit_edge: ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i12

if.else.i.i.i.i10:                                ; preds = %sock_hold.exit
  %add.i.i.i.i8 = add i32 %asmresult.i.i.i.i.i.i6, 1
  %3 = or i32 %add.i.i.i.i8, %asmresult.i.i.i.i.i.i6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i9 = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i9, label %if.else.i.i.i.i10.sock_hold.exit13_crit_edge, label %if.else.i.i.i.i10.if.end15.sink.split.i.i.i.i12_crit_edge, !prof !144

if.else.i.i.i.i10.if.end15.sink.split.i.i.i.i12_crit_edge: ; preds = %if.else.i.i.i.i10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i12

if.else.i.i.i.i10.sock_hold.exit13_crit_edge:     ; preds = %if.else.i.i.i.i10
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_hold.exit13

if.end15.sink.split.i.i.i.i12:                    ; preds = %if.else.i.i.i.i10.if.end15.sink.split.i.i.i.i12_crit_edge, %sock_hold.exit.if.end15.sink.split.i.i.i.i12_crit_edge
  %.sink.i.i.i.i11 = phi i32 [ 2, %sock_hold.exit.if.end15.sink.split.i.i.i.i12_crit_edge ], [ 1, %if.else.i.i.i.i10.if.end15.sink.split.i.i.i.i12_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i4, i32 noundef %.sink.i.i.i.i11) #9
  br label %sock_hold.exit13

sock_hold.exit13:                                 ; preds = %if.end15.sink.split.i.i.i.i12, %if.else.i.i.i.i10.sock_hold.exit13_crit_edge
  %pending_links = getelementptr inbounds %struct.vsock_sock, ptr %pending, i32 0, i32 12
  %pending_links1 = getelementptr inbounds %struct.vsock_sock, ptr %listener, i32 0, i32 12
  %prev.i = getelementptr inbounds %struct.vsock_sock, ptr %listener, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %pending_links, ptr noundef %5, ptr noundef %pending_links1) #9
  br i1 %call.i.i, label %if.end.i.i, label %sock_hold.exit13.list_add_tail.exit_crit_edge

sock_hold.exit13.list_add_tail.exit_crit_edge:    ; preds = %sock_hold.exit13
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %sock_hold.exit13
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pending_links, ptr %prev.i, align 4
  %7 = ptrtoint ptr %pending_links to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pending_links1, ptr %pending_links, align 4
  %prev3.i.i = getelementptr inbounds %struct.vsock_sock, ptr %pending, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %pending_links, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %sock_hold.exit13.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsock_remove_pending(ptr noundef %listener, ptr noundef %pending) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pending_links = getelementptr inbounds %struct.vsock_sock, ptr %pending, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pending_links) #9
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.vsock_sock, ptr %pending, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %pending_links to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pending_links, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %pending_links to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %pending_links, ptr %pending_links, align 4
  %prev.i3.i = getelementptr inbounds %struct.vsock_sock, ptr %pending, i32 0, i32 12, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pending_links, ptr %prev.i3.i, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %listener, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !146
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !144

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #9
  br label %sock_put.exit

if.then.i:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @sk_free(ptr noundef %listener) #9
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  %skc_refcnt.i2 = getelementptr inbounds %struct.sock_common, ptr %pending, i32 0, i32 19
  %call.i.i.i.i.i.i3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i2, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i2, i32 1, i32 3, i32 1) #9
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i2, ptr %skc_refcnt.i2, i32 1, ptr elementtype(i32) %skc_refcnt.i2) #9, !srcloc !146
  %asmresult.i.i.i.i.i.i.i4 = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i4)
  %cmp.i.i.i.i5 = icmp eq i32 %asmresult.i.i.i.i.i.i.i4, 1
  br i1 %cmp.i.i.i.i5, label %if.then.i9, label %if.end5.i.i.i.i7

if.end5.i.i.i.i7:                                 ; preds = %sock_put.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i4)
  %.not.i.i.i.i6 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i4, 0
  br i1 %.not.i.i.i.i6, label %if.end5.i.i.i.i7.sock_put.exit10_crit_edge, label %if.then10.i.i.i.i8, !prof !144

if.end5.i.i.i.i7.sock_put.exit10_crit_edge:       ; preds = %if.end5.i.i.i.i7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_put.exit10

if.then10.i.i.i.i8:                               ; preds = %if.end5.i.i.i.i7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i2, i32 noundef 3) #9
  br label %sock_put.exit10

if.then.i9:                                       ; preds = %sock_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @sk_free(ptr noundef %pending) #9
  br label %sock_put.exit10

sock_put.exit10:                                  ; preds = %if.then.i9, %if.then10.i.i.i.i8, %if.end5.i.i.i.i7.sock_put.exit10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsock_enqueue_accept(ptr noundef %listener, ptr noundef %connected) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %connected, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !142
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !143

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !144

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #9
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %skc_refcnt.i4 = getelementptr inbounds %struct.sock_common, ptr %listener, i32 0, i32 19
  %call.i.i.i.i.i.i5 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i4, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i4, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i4, ptr %skc_refcnt.i4, i32 1, ptr elementtype(i32) %skc_refcnt.i4) #9, !srcloc !142
  %asmresult.i.i.i.i.i.i6 = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i6)
  %tobool1.not.i.i.i.i7 = icmp eq i32 %asmresult.i.i.i.i.i.i6, 0
  br i1 %tobool1.not.i.i.i.i7, label %sock_hold.exit.if.end15.sink.split.i.i.i.i12_crit_edge, label %if.else.i.i.i.i10, !prof !143

sock_hold.exit.if.end15.sink.split.i.i.i.i12_crit_edge: ; preds = %sock_hold.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i12

if.else.i.i.i.i10:                                ; preds = %sock_hold.exit
  %add.i.i.i.i8 = add i32 %asmresult.i.i.i.i.i.i6, 1
  %3 = or i32 %add.i.i.i.i8, %asmresult.i.i.i.i.i.i6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i9 = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i9, label %if.else.i.i.i.i10.sock_hold.exit13_crit_edge, label %if.else.i.i.i.i10.if.end15.sink.split.i.i.i.i12_crit_edge, !prof !144

if.else.i.i.i.i10.if.end15.sink.split.i.i.i.i12_crit_edge: ; preds = %if.else.i.i.i.i10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i12

if.else.i.i.i.i10.sock_hold.exit13_crit_edge:     ; preds = %if.else.i.i.i.i10
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_hold.exit13

if.end15.sink.split.i.i.i.i12:                    ; preds = %if.else.i.i.i.i10.if.end15.sink.split.i.i.i.i12_crit_edge, %sock_hold.exit.if.end15.sink.split.i.i.i.i12_crit_edge
  %.sink.i.i.i.i11 = phi i32 [ 2, %sock_hold.exit.if.end15.sink.split.i.i.i.i12_crit_edge ], [ 1, %if.else.i.i.i.i10.if.end15.sink.split.i.i.i.i12_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i4, i32 noundef %.sink.i.i.i.i11) #9
  br label %sock_hold.exit13

sock_hold.exit13:                                 ; preds = %if.end15.sink.split.i.i.i.i12, %if.else.i.i.i.i10.sock_hold.exit13_crit_edge
  %accept_queue = getelementptr inbounds %struct.vsock_sock, ptr %connected, i32 0, i32 13
  %accept_queue1 = getelementptr inbounds %struct.vsock_sock, ptr %listener, i32 0, i32 13
  %prev.i = getelementptr inbounds %struct.vsock_sock, ptr %listener, i32 0, i32 13, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %accept_queue, ptr noundef %5, ptr noundef %accept_queue1) #9
  br i1 %call.i.i, label %if.end.i.i, label %sock_hold.exit13.list_add_tail.exit_crit_edge

sock_hold.exit13.list_add_tail.exit_crit_edge:    ; preds = %sock_hold.exit13
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %sock_hold.exit13
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %accept_queue, ptr %prev.i, align 4
  %7 = ptrtoint ptr %accept_queue to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %accept_queue1, ptr %accept_queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.vsock_sock, ptr %connected, i32 0, i32 13, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %accept_queue, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %sock_hold.exit13.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vsock_assign_transport(ptr noundef %vsk, ptr noundef %psk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %svm_cid = getelementptr inbounds %struct.vsock_sock, ptr %vsk, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %svm_cid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %svm_cid, align 4
  %tobool.not = icmp eq ptr %psk, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %svm_cid2 = getelementptr inbounds %struct.vsock_sock, ptr %vsk, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %svm_cid2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %svm_cid2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ugt i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp6 = icmp ugt i32 %1, 2
  %or.cond = select i1 %cmp, i1 %cmp6, i1 false
  br i1 %or.cond, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %svm_flags = getelementptr inbounds %struct.vsock_sock, ptr %vsk, i32 0, i32 3, i32 4
  %4 = ptrtoint ptr %svm_flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %svm_flags, align 4
  %6 = or i8 %5, 1
  store i8 %6, ptr %svm_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %svm_flags10 = getelementptr inbounds %struct.vsock_sock, ptr %vsk, i32 0, i32 3, i32 4
  %7 = ptrtoint ptr %svm_flags10 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %svm_flags10, align 4
  %sk_type = getelementptr inbounds %struct.sock, ptr %vsk, i32 0, i32 45
  %9 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sk_type, align 2
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i16 %10, label %if.end.cleanup_crit_edge [
    i16 2, label %if.end.sw.epilog.sink.split_crit_edge
    i16 1, label %if.end.sw.bb12_crit_edge
    i16 5, label %if.end.sw.bb12_crit_edge94
  ]

if.end.sw.bb12_crit_edge94:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12

if.end.sw.bb12_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb12

if.end.sw.epilog.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb12:                                          ; preds = %if.end.sw.bb12_crit_edge, %if.end.sw.bb12_crit_edge94
  %12 = load ptr, ptr @transport_local, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %sw.bb12.if.else_crit_edge, label %if.end.i

sw.bb12.if.else_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end.i:                                         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp eq i32 %1, 1
  br i1 %cmp.i, label %if.end.i.sw.epilog.sink.split_crit_edge, label %if.end2.i

if.end.i.sw.epilog.sink.split_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

if.end2.i:                                        ; preds = %if.end.i
  %13 = load ptr, ptr @transport_g2h, align 4
  %tobool3.not.i = icmp eq ptr %13, null
  br i1 %tobool3.not.i, label %vsock_use_local_transport.exit, label %if.then4.i

if.then4.i:                                       ; preds = %if.end2.i
  %get_local_cid.i = getelementptr inbounds %struct.vsock_transport, ptr %13, i32 0, i32 33
  %14 = ptrtoint ptr %get_local_cid.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_local_cid.i, align 4
  %call.i = tail call i32 %15() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %1)
  %cmp5.i = icmp eq i32 %call.i, %1
  br i1 %cmp5.i, label %if.then4.i.sw.epilog.sink.split_crit_edge, label %if.then4.i.if.else_crit_edge

if.then4.i.if.else_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then4.i.sw.epilog.sink.split_crit_edge:        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

vsock_use_local_transport.exit:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp6.i = icmp eq i32 %1, 2
  br i1 %cmp6.i, label %vsock_use_local_transport.exit.sw.epilog.sink.split_crit_edge, label %vsock_use_local_transport.exit.if.else_crit_edge

vsock_use_local_transport.exit.if.else_crit_edge: ; preds = %vsock_use_local_transport.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

vsock_use_local_transport.exit.sw.epilog.sink.split_crit_edge: ; preds = %vsock_use_local_transport.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

if.else:                                          ; preds = %vsock_use_local_transport.exit.if.else_crit_edge, %if.then4.i.if.else_crit_edge, %sw.bb12.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp14 = icmp ult i32 %1, 3
  br i1 %cmp14, label %if.else.sw.epilog.sink.split_crit_edge, label %lor.lhs.false

if.else.sw.epilog.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

lor.lhs.false:                                    ; preds = %if.else
  %16 = load ptr, ptr @transport_h2g, align 4
  %tobool16.not = icmp ne ptr %16, null
  %17 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool19.not = icmp eq i8 %17, 0
  %or.cond88 = select i1 %tobool16.not, i1 %tobool19.not, i1 false
  br i1 %or.cond88, label %lor.lhs.false.sw.epilog_crit_edge, label %lor.lhs.false.sw.epilog.sink.split_crit_edge

lor.lhs.false.sw.epilog.sink.split_crit_edge:     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %lor.lhs.false.sw.epilog.sink.split_crit_edge, %if.else.sw.epilog.sink.split_crit_edge, %vsock_use_local_transport.exit.sw.epilog.sink.split_crit_edge, %if.then4.i.sw.epilog.sink.split_crit_edge, %if.end.i.sw.epilog.sink.split_crit_edge, %if.end.sw.epilog.sink.split_crit_edge
  %transport_local.sink = phi ptr [ @transport_dgram, %if.end.sw.epilog.sink.split_crit_edge ], [ @transport_local, %if.end.i.sw.epilog.sink.split_crit_edge ], [ @transport_local, %if.then4.i.sw.epilog.sink.split_crit_edge ], [ @transport_local, %vsock_use_local_transport.exit.sw.epilog.sink.split_crit_edge ], [ @transport_g2h, %lor.lhs.false.sw.epilog.sink.split_crit_edge ], [ @transport_g2h, %if.else.sw.epilog.sink.split_crit_edge ]
  %18 = ptrtoint ptr %transport_local.sink to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %transport_local.sink, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %lor.lhs.false.sw.epilog_crit_edge
  %new_transport.0 = phi ptr [ %16, %lor.lhs.false.sw.epilog_crit_edge ], [ %19, %sw.epilog.sink.split ]
  %transport = getelementptr inbounds %struct.vsock_sock, ptr %vsk, i32 0, i32 1
  %20 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %transport, align 8
  %tobool24.not = icmp eq ptr %21, null
  br i1 %tobool24.not, label %sw.epilog.if.end32_crit_edge, label %if.then25

sw.epilog.if.end32_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then25:                                        ; preds = %sw.epilog
  %cmp27 = icmp eq ptr %21, %new_transport.0
  br i1 %cmp27, label %if.then25.cleanup_crit_edge, label %if.end30

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %if.then25
  %release = getelementptr inbounds %struct.vsock_transport, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %release, align 4
  tail call void %23(ptr noundef %vsk) #9
  %24 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %transport, align 8
  %tobool.not.i89 = icmp eq ptr %25, null
  br i1 %tobool.not.i89, label %if.end30.if.end32_crit_edge, label %if.end.i90

if.end30.if.end32_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.end.i90:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %destruct.i = getelementptr inbounds %struct.vsock_transport, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %destruct.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %destruct.i, align 4
  tail call void %27(ptr noundef %vsk) #9
  %28 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %transport, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  tail call void @module_put(ptr noundef %31) #9
  %32 = ptrtoint ptr %transport to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %transport, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.end.i90, %if.end30.if.end32_crit_edge, %sw.epilog.if.end32_crit_edge
  %tobool33.not = icmp eq ptr %new_transport.0, null
  br i1 %tobool33.not, label %if.end32.cleanup_crit_edge, label %lor.lhs.false34

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false34:                                  ; preds = %if.end32
  %33 = ptrtoint ptr %new_transport.0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %new_transport.0, align 4
  %call35 = tail call zeroext i1 @try_module_get(ptr noundef %34) #9
  br i1 %call35, label %if.end37, label %lor.lhs.false34.cleanup_crit_edge

lor.lhs.false34.cleanup_crit_edge:                ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37:                                         ; preds = %lor.lhs.false34
  %35 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %36)
  %cmp40 = icmp eq i16 %36, 5
  br i1 %cmp40, label %if.then42, label %if.end37.if.end50_crit_edge

if.end37.if.end50_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then42:                                        ; preds = %if.end37
  %seqpacket_allow = getelementptr inbounds %struct.vsock_transport, ptr %new_transport.0, i32 0, i32 19
  %37 = ptrtoint ptr %seqpacket_allow to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %seqpacket_allow, align 4
  %tobool43.not = icmp eq ptr %38, null
  br i1 %tobool43.not, label %if.then42.if.then47_crit_edge, label %lor.lhs.false44

if.then42.if.then47_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47

lor.lhs.false44:                                  ; preds = %if.then42
  %call46 = tail call zeroext i1 %38(i32 noundef %1) #9
  br i1 %call46, label %lor.lhs.false44.if.end50_crit_edge, label %lor.lhs.false44.if.then47_crit_edge

lor.lhs.false44.if.then47_crit_edge:              ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47

lor.lhs.false44.if.end50_crit_edge:               ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then47:                                        ; preds = %lor.lhs.false44.if.then47_crit_edge, %if.then42.if.then47_crit_edge
  %39 = ptrtoint ptr %new_transport.0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %new_transport.0, align 4
  tail call void @module_put(ptr noundef %40) #9
  br label %cleanup

if.end50:                                         ; preds = %lor.lhs.false44.if.end50_crit_edge, %if.end37.if.end50_crit_edge
  %init = getelementptr inbounds %struct.vsock_transport, ptr %new_transport.0, i32 0, i32 1
  %41 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init, align 4
  %call51 = tail call i32 %42(ptr noundef %vsk, ptr noundef %psk) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end55, label %if.then53

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %new_transport.0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %new_transport.0, align 4
  tail call void @module_put(ptr noundef %44) #9
  br label %cleanup

if.end55:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %transport to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %new_transport.0, ptr %transport, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then53, %if.then47, %lor.lhs.false34.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.then25.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call51, %if.then53 ], [ 0, %if.end55 ], [ -94, %if.then47 ], [ -94, %if.end.cleanup_crit_edge ], [ 0, %if.then25.cleanup_crit_edge ], [ -19, %lor.lhs.false34.cleanup_crit_edge ], [ -19, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @vsock_find_cid(i32 noundef %cid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @transport_g2h, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %get_local_cid = getelementptr inbounds %struct.vsock_transport, ptr %0, i32 0, i32 33
  %1 = ptrtoint ptr %get_local_cid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %get_local_cid, align 4
  %call = tail call i32 %2() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %cid)
  %cmp = icmp eq i32 %call, %cid
  br i1 %cmp, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = load ptr, ptr @transport_h2g, align 4
  %tobool1.not = icmp ne ptr %3, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cid)
  %cmp3 = icmp eq i32 %cid, 2
  %or.cond = and i1 %cmp3, %tobool1.not
  br i1 %or.cond, label %if.end.return_crit_edge, label %if.end5

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = load ptr, ptr @transport_local, align 4
  %tobool6.not = icmp ne ptr %4, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cid)
  %cmp8 = icmp eq i32 %cid, 1
  %or.cond13 = and i1 %cmp8, %tobool6.not
  br label %return

return:                                           ; preds = %if.end5, %if.end.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i1 [ true, %land.lhs.true.return_crit_edge ], [ true, %if.end.return_crit_edge ], [ %or.cond13, %if.end5 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vsock_create_connected(ptr noundef %parent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %parent, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %sk_type = getelementptr inbounds %struct.sock, ptr %parent, i32 0, i32 45
  %2 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sk_type, align 2
  %call1 = tail call fastcc ptr @__vsock_create(ptr noundef %1, ptr noundef null, ptr noundef %parent, i16 noundef zeroext %3, i32 noundef 0)
  ret ptr %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__vsock_create(ptr noundef %net, ptr noundef %sock, ptr noundef %parent, i16 noundef zeroext %type, i32 noundef %kern) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @sk_alloc(ptr noundef %net, i32 noundef 40, i32 noundef 3264, ptr noundef nonnull @vsock_proto, i32 noundef %kern) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call) #9
  %tobool1.not = icmp eq ptr %sock, null
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sk_type = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 45
  %0 = ptrtoint ptr %sk_type to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %type, ptr %sk_type, align 2
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %local_addr = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 2
  tail call void @vsock_addr_init(ptr noundef %local_addr, i32 noundef -1, i32 noundef -1) #9
  %remote_addr = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 3
  tail call void @vsock_addr_init(ptr noundef %remote_addr, i32 noundef -1, i32 noundef -1) #9
  %sk_destruct = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 82
  %1 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @vsock_sk_destruct, ptr %sk_destruct, align 4
  %sk_backlog_rcv = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 80
  %2 = ptrtoint ptr %sk_backlog_rcv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @vsock_queue_rcv_skb, ptr %sk_backlog_rcv, align 4
  %3 = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 13
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and.i.i = and i32 %5, -3
  store i32 %and.i.i, ptr %3, align 4
  %bound_table = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %bound_table to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %bound_table, ptr %bound_table, align 4
  %prev.i = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %bound_table, ptr %prev.i, align 4
  %connected_table = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %connected_table to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %connected_table, ptr %connected_table, align 4
  %prev.i1 = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %prev.i1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %connected_table, ptr %prev.i1, align 4
  %listener = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 11
  %10 = ptrtoint ptr %listener to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %listener, align 4
  %pending_links = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 12
  %11 = ptrtoint ptr %pending_links to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %pending_links, ptr %pending_links, align 4
  %prev.i2 = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 12, i32 1
  %12 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pending_links, ptr %prev.i2, align 4
  %accept_queue = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 13
  %13 = ptrtoint ptr %accept_queue to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %accept_queue, ptr %accept_queue, align 4
  %prev.i3 = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 13, i32 1
  %14 = ptrtoint ptr %prev.i3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %accept_queue, ptr %prev.i3, align 4
  %rejected = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 14
  %15 = ptrtoint ptr %rejected to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %rejected, align 8
  %sent_request = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 20
  %16 = ptrtoint ptr %sent_request to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %sent_request, align 8
  %ignore_connecting_rst = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 21
  %17 = ptrtoint ptr %ignore_connecting_rst to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %ignore_connecting_rst, align 1
  %peer_shutdown = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 19
  %18 = ptrtoint ptr %peer_shutdown to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %peer_shutdown, align 4
  %connect_work = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 15
  tail call void @__init_work(ptr noundef %connect_work, i32 noundef 0) #9
  %19 = ptrtoint ptr %connect_work to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -64, ptr %connect_work, align 4
  %lockdep_map = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 15, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @__vsock_create.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry11 = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 15, i32 0, i32 1
  %20 = ptrtoint ptr %entry11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %entry11, ptr %entry11, align 4
  %prev.i4 = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 15, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %entry11, ptr %prev.i4, align 4
  %func = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 15, i32 0, i32 2
  %22 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @vsock_connect_timeout, ptr %func, align 4
  %timer = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 15, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.6, ptr noundef nonnull @__vsock_create.__key.5) #9
  %pending_work = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 16
  tail call void @__init_work(ptr noundef %pending_work, i32 noundef 0) #9
  %23 = ptrtoint ptr %pending_work to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -64, ptr %pending_work, align 8
  %lockdep_map30 = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 16, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map30, ptr noundef nonnull @.str.8, ptr noundef nonnull @__vsock_create.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry33 = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 16, i32 0, i32 1
  %24 = ptrtoint ptr %entry33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry33, ptr %entry33, align 4
  %prev.i5 = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 16, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry33, ptr %prev.i5, align 4
  %func36 = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 16, i32 0, i32 2
  %26 = ptrtoint ptr %func36 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @vsock_pending_work, ptr %func36, align 4
  %timer41 = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 16, i32 1
  tail call void @init_timer_key(ptr noundef %timer41, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.10, ptr noundef nonnull @__vsock_create.__key.9) #9
  %tobool46.not = icmp eq ptr %parent, null
  br i1 %tobool46.not, label %if.else, label %if.then48

if.then48:                                        ; preds = %if.end3
  %trusted = getelementptr inbounds %struct.vsock_sock, ptr %parent, i32 0, i32 6
  %27 = ptrtoint ptr %trusted to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %trusted, align 4, !range !148
  %trusted50 = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 6
  %29 = ptrtoint ptr %trusted50 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %trusted50, align 4
  %owner = getelementptr inbounds %struct.vsock_sock, ptr %parent, i32 0, i32 9
  %30 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %owner, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.then48.get_cred.exit_crit_edge, label %do.body.i

if.then48.get_cred.exit_crit_edge:                ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_cred.exit

do.body.i:                                        ; preds = %if.then48
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %31) #9
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !143

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__invalid_creds(ptr noundef nonnull %31, ptr noundef nonnull @.str.11, i32 noundef 253) #9
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %32 = getelementptr inbounds %struct.cred, ptr %31, i32 0, i32 28
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %32, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %31, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull %31, i32 1, i32 3, i32 1) #9
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %31, ptr nonnull %31, i32 1, ptr nonnull elementtype(i32) %31) #9, !srcloc !149
  br label %get_cred.exit

get_cred.exit:                                    ; preds = %__validate_creds.exit.i, %if.then48.get_cred.exit_crit_edge
  %owner52 = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 9
  %35 = ptrtoint ptr %owner52 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %31, ptr %owner52, align 4
  %connect_timeout = getelementptr inbounds %struct.vsock_sock, ptr %parent, i32 0, i32 10
  %36 = ptrtoint ptr %connect_timeout to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %connect_timeout, align 8
  %connect_timeout53 = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 10
  %38 = ptrtoint ptr %connect_timeout53 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %connect_timeout53, align 8
  %buffer_size = getelementptr inbounds %struct.vsock_sock, ptr %parent, i32 0, i32 22
  %39 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %buffer_size, align 8
  %buffer_size54 = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 22
  %41 = ptrtoint ptr %buffer_size54 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %buffer_size54, align 8
  %buffer_min_size = getelementptr inbounds %struct.vsock_sock, ptr %parent, i32 0, i32 23
  %42 = ptrtoint ptr %buffer_min_size to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %buffer_min_size, align 8
  %buffer_min_size55 = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 23
  %44 = ptrtoint ptr %buffer_min_size55 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %buffer_min_size55, align 8
  %buffer_max_size = getelementptr inbounds %struct.vsock_sock, ptr %parent, i32 0, i32 24
  %45 = ptrtoint ptr %buffer_max_size to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %buffer_max_size, align 8
  %buffer_max_size56 = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 24
  %47 = ptrtoint ptr %buffer_max_size56 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %buffer_max_size56, align 8
  tail call void @security_sk_clone(ptr noundef nonnull %parent, ptr noundef nonnull %call) #9
  br label %cleanup

if.else:                                          ; preds = %if.end3
  %call57 = tail call zeroext i1 @ns_capable_noaudit(ptr noundef nonnull @init_user_ns, i32 noundef 12) #9
  %trusted58 = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 6
  %frombool59 = zext i1 %call57 to i8
  %48 = ptrtoint ptr %trusted58 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %frombool59, ptr %trusted58, align 4
  %49 = tail call i32 @llvm.read_register.i32(metadata !132) #9
  %and.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %52, i32 0, i32 99
  %53 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cred, align 16
  %tobool.not.i6 = icmp eq ptr %54, null
  br i1 %tobool.not.i6, label %if.else.get_cred.exit12_crit_edge, label %do.body.i8

if.else.get_cred.exit12_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_cred.exit12

do.body.i8:                                       ; preds = %if.else
  %call.i.i7 = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %54) #9
  br i1 %call.i.i7, label %if.then.i.i9, label %do.body.i8.__validate_creds.exit.i11_crit_edge, !prof !143

do.body.i8.__validate_creds.exit.i11_crit_edge:   ; preds = %do.body.i8
  call void @__sanitizer_cov_trace_pc() #11
  br label %__validate_creds.exit.i11

if.then.i.i9:                                     ; preds = %do.body.i8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__invalid_creds(ptr noundef nonnull %54, ptr noundef nonnull @.str.11, i32 noundef 253) #9
  br label %__validate_creds.exit.i11

__validate_creds.exit.i11:                        ; preds = %if.then.i.i9, %do.body.i8.__validate_creds.exit.i11_crit_edge
  %55 = getelementptr inbounds %struct.cred, ptr %54, i32 0, i32 28
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %55, align 4
  %call.i.i.i.i10 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %54, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr nonnull %54, i32 1, i32 3, i32 1) #9
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %54, ptr nonnull %54, i32 1, ptr nonnull elementtype(i32) %54) #9, !srcloc !149
  br label %get_cred.exit12

get_cred.exit12:                                  ; preds = %__validate_creds.exit.i11, %if.else.get_cred.exit12_crit_edge
  %owner65 = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 9
  %58 = ptrtoint ptr %owner65 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %54, ptr %owner65, align 4
  %connect_timeout66 = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 10
  %59 = ptrtoint ptr %connect_timeout66 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 200, ptr %connect_timeout66, align 8
  %buffer_size67 = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 22
  %60 = ptrtoint ptr %buffer_size67 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 262144, ptr %buffer_size67, align 8
  %buffer_min_size68 = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 23
  %61 = ptrtoint ptr %buffer_min_size68 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 128, ptr %buffer_min_size68, align 8
  %buffer_max_size69 = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 24
  %62 = ptrtoint ptr %buffer_max_size69 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 262144, ptr %buffer_max_size69, align 8
  br label %cleanup

cleanup:                                          ; preds = %get_cred.exit12, %get_cred.exit, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @vsock_stream_has_data(ptr noundef %vsk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %transport = getelementptr inbounds %struct.vsock_sock, ptr %vsk, i32 0, i32 1
  %0 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport, align 8
  %stream_has_data = getelementptr inbounds %struct.vsock_transport, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %stream_has_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream_has_data, align 4
  %call = tail call i64 %3(ptr noundef %vsk) #9
  ret i64 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @vsock_stream_has_space(ptr noundef %vsk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %transport = getelementptr inbounds %struct.vsock_sock, ptr %vsk, i32 0, i32 1
  %0 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport, align 8
  %stream_has_space = getelementptr inbounds %struct.vsock_transport, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %stream_has_space to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream_has_space, align 4
  %call = tail call i64 %3(ptr noundef %vsk) #9
  ret i64 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vsock_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @misc_deregister(ptr noundef nonnull @vsock_device) #9
  tail call void @sock_unregister(i32 noundef 40) #9
  tail call void @proto_unregister(ptr noundef nonnull @vsock_proto) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_unregister(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @vsock_core_get_transport(ptr nocapture noundef readonly %vsk) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %transport = getelementptr inbounds %struct.vsock_sock, ptr %vsk, i32 0, i32 1
  %0 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport, align 8
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vsock_core_register(ptr noundef %t, i32 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @vsock_register_mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @transport_h2g, align 4
  %1 = load ptr, ptr @transport_g2h, align 4
  %2 = load ptr, ptr @transport_dgram, align 4
  %3 = load ptr, ptr @transport_local, align 4
  %and = and i32 %features, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then2:                                         ; preds = %if.end
  %tobool3.not = icmp eq ptr %0, null
  br i1 %tobool3.not, label %if.then2.if.end6_crit_edge, label %if.then2.err_busy_crit_edge

if.then2.err_busy_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_busy

if.then2.if.end6_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end6:                                          ; preds = %if.then2.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %t_h2g.0 = phi ptr [ %0, %if.end.if.end6_crit_edge ], [ %t, %if.then2.if.end6_crit_edge ]
  %and7 = and i32 %features, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end6.if.end13_crit_edge, label %if.then9

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then9:                                         ; preds = %if.end6
  %tobool10.not = icmp eq ptr %1, null
  br i1 %tobool10.not, label %if.then9.if.end13_crit_edge, label %if.then9.err_busy_crit_edge

if.then9.err_busy_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_busy

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end13:                                         ; preds = %if.then9.if.end13_crit_edge, %if.end6.if.end13_crit_edge
  %t_g2h.0 = phi ptr [ %1, %if.end6.if.end13_crit_edge ], [ %t, %if.then9.if.end13_crit_edge ]
  %and14 = and i32 %features, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end20_crit_edge, label %if.then16

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then16:                                        ; preds = %if.end13
  %tobool17.not = icmp eq ptr %2, null
  br i1 %tobool17.not, label %if.then16.if.end20_crit_edge, label %if.then16.err_busy_crit_edge

if.then16.err_busy_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_busy

if.then16.if.end20_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end20:                                         ; preds = %if.then16.if.end20_crit_edge, %if.end13.if.end20_crit_edge
  %t_dgram.0 = phi ptr [ %2, %if.end13.if.end20_crit_edge ], [ %t, %if.then16.if.end20_crit_edge ]
  %and21 = and i32 %features, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end27_crit_edge, label %if.then23

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then23:                                        ; preds = %if.end20
  %tobool24.not = icmp eq ptr %3, null
  br i1 %tobool24.not, label %if.then23.if.end27_crit_edge, label %if.then23.err_busy_crit_edge

if.then23.err_busy_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_busy

if.then23.if.end27_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end27:                                         ; preds = %if.then23.if.end27_crit_edge, %if.end20.if.end27_crit_edge
  %t_local.0 = phi ptr [ %3, %if.end20.if.end27_crit_edge ], [ %t, %if.then23.if.end27_crit_edge ]
  store ptr %t_h2g.0, ptr @transport_h2g, align 4
  store ptr %t_g2h.0, ptr @transport_g2h, align 4
  store ptr %t_dgram.0, ptr @transport_dgram, align 4
  store ptr %t_local.0, ptr @transport_local, align 4
  br label %err_busy

err_busy:                                         ; preds = %if.end27, %if.then23.err_busy_crit_edge, %if.then16.err_busy_crit_edge, %if.then9.err_busy_crit_edge, %if.then2.err_busy_crit_edge
  %err.0 = phi i32 [ 0, %if.end27 ], [ -16, %if.then2.err_busy_crit_edge ], [ -16, %if.then9.err_busy_crit_edge ], [ -16, %if.then16.err_busy_crit_edge ], [ -16, %if.then23.err_busy_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @vsock_register_mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %err_busy, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_busy ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsock_core_unregister(ptr nocapture noundef readnone %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @vsock_register_mutex, i32 noundef 0) #9
  %0 = load ptr, ptr @transport_h2g, align 4
  %cmp = icmp eq ptr %0, %t
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store ptr null, ptr @transport_h2g, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load ptr, ptr @transport_g2h, align 4
  %cmp1 = icmp eq ptr %1, %t
  br i1 %cmp1, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  store ptr null, ptr @transport_g2h, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %2 = load ptr, ptr @transport_dgram, align 4
  %cmp4 = icmp eq ptr %2, %t
  br i1 %cmp4, label %if.then5, label %if.end3.if.end6_crit_edge

if.end3.if.end6_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  store ptr null, ptr @transport_dgram, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3.if.end6_crit_edge
  %3 = load ptr, ptr @transport_local, align 4
  %cmp7 = icmp eq ptr %3, %t
  br i1 %cmp7, label %if.then8, label %if.end6.if.end9_crit_edge

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  store ptr null, ptr @transport_local, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @vsock_register_mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vsock_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.014.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [252 x %struct.list_head], ptr @vsock_bind_table, i32 0, i32 %i.014.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %arrayidx.i, ptr %arrayidx.i, align 4
  %prev.i.i = getelementptr [252 x %struct.list_head], ptr @vsock_bind_table, i32 0, i32 %i.014.i, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %arrayidx.i, ptr %prev.i.i, align 4
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 252
  br i1 %exitcond.not.i, label %for.body.i.for.body3.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.for.body3.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.body.i.for.body3.i_crit_edge
  %i.115.i = phi i32 [ %inc6.i, %for.body3.i.for.body3.i_crit_edge ], [ 0, %for.body.i.for.body3.i_crit_edge ]
  %arrayidx4.i = getelementptr [251 x %struct.list_head], ptr @vsock_connected_table, i32 0, i32 %i.115.i
  %2 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %arrayidx4.i, ptr %arrayidx4.i, align 4
  %prev.i13.i = getelementptr [251 x %struct.list_head], ptr @vsock_connected_table, i32 0, i32 %i.115.i, i32 1
  %3 = ptrtoint ptr %prev.i13.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx4.i, ptr %prev.i13.i, align 4
  %inc6.i = add nuw nsw i32 %i.115.i, 1
  %exitcond16.not.i = icmp eq i32 %inc6.i, 251
  br i1 %exitcond16.not.i, label %vsock_init_tables.exit, label %for.body3.i.for.body3.i_crit_edge

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3.i

vsock_init_tables.exit:                           ; preds = %for.body3.i
  store ptr null, ptr getelementptr inbounds (%struct.proto, ptr @vsock_proto, i32 0, i32 51), align 4
  store i32 255, ptr @vsock_device, align 4
  %call = tail call i32 @misc_register(ptr noundef nonnull @vsock_device) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %vsock_init_tables.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #12
  br label %cleanup

if.end:                                           ; preds = %vsock_init_tables.exit
  %call2 = tail call i32 @proto_register(ptr noundef nonnull @vsock_proto, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #12
  br label %err_deregister_misc

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @sock_register(ptr noundef nonnull @vsock_family_ops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %do.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef 40, i32 noundef %call11) #12
  tail call void @proto_unregister(ptr noundef nonnull @vsock_proto) #9
  br label %err_deregister_misc

err_deregister_misc:                              ; preds = %do.end16, %do.end7
  %err.0 = phi i32 [ %call2, %do.end7 ], [ %call11, %do.end16 ]
  tail call void @misc_deregister(ptr noundef nonnull @vsock_device) #9
  br label %cleanup

cleanup:                                          ; preds = %err_deregister_misc, %if.end10.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end10.cleanup_crit_edge ], [ %call, %do.end ], [ %err.0, %err_deregister_misc ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vsock_addr_equals_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsock_addr_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsock_sk_destruct(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %transport.i = getelementptr inbounds %struct.vsock_sock, ptr %sk, i32 0, i32 1
  %0 = ptrtoint ptr %transport.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.vsock_deassign_transport.exit_crit_edge, label %if.end.i

entry.vsock_deassign_transport.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vsock_deassign_transport.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %destruct.i = getelementptr inbounds %struct.vsock_transport, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %destruct.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %destruct.i, align 4
  tail call void %3(ptr noundef %sk) #9
  %4 = ptrtoint ptr %transport.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %transport.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void @module_put(ptr noundef %7) #9
  %8 = ptrtoint ptr %transport.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %transport.i, align 8
  br label %vsock_deassign_transport.exit

vsock_deassign_transport.exit:                    ; preds = %if.end.i, %entry.vsock_deassign_transport.exit_crit_edge
  %local_addr = getelementptr inbounds %struct.vsock_sock, ptr %sk, i32 0, i32 2
  tail call void @vsock_addr_init(ptr noundef %local_addr, i32 noundef -1, i32 noundef -1) #9
  %remote_addr = getelementptr inbounds %struct.vsock_sock, ptr %sk, i32 0, i32 3
  tail call void @vsock_addr_init(ptr noundef %remote_addr, i32 noundef -1, i32 noundef -1) #9
  %owner = getelementptr inbounds %struct.vsock_sock, ptr %sk, i32 0, i32 9
  %9 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %owner, align 4
  %tobool.not.i4 = icmp eq ptr %10, null
  br i1 %tobool.not.i4, label %vsock_deassign_transport.exit.put_cred.exit_crit_edge, label %do.body.i

vsock_deassign_transport.exit.put_cred.exit_crit_edge: ; preds = %vsock_deassign_transport.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_cred.exit

do.body.i:                                        ; preds = %vsock_deassign_transport.exit
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %10) #9
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !143

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__invalid_creds(ptr noundef nonnull %10, ptr noundef nonnull @.str.11, i32 noundef 286) #9
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %10, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !150
  tail call void @llvm.prefetch.p0(ptr nonnull %10, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %10, ptr nonnull %10, i32 1, ptr nonnull elementtype(i32) %10) #9, !srcloc !151
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_cred(ptr noundef nonnull %10) #9
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge, %vsock_deassign_transport.exit.put_cred.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsock_queue_rcv_skb(ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sock_queue_rcv_skb(ptr noundef %sk, ptr noundef %skb) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsock_connect_timeout(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1052
  tail call void @lock_sock_nested(ptr noundef %add.ptr, i32 noundef 0) #9
  %skc_state = getelementptr i8, ptr %work, i32 -1034
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp eq i8 %1, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sk_shutdown = getelementptr i8, ptr %work, i32 -186
  %2 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sk_shutdown, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp4.not = icmp eq i8 %3, 3
  br i1 %cmp4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %4)
  store volatile i8 7, ptr %skc_state, align 2
  %sk_err = getelementptr i8, ptr %work, i32 -360
  %5 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 110, ptr %sk_err, align 4
  tail call void @sk_error_report(ptr noundef %add.ptr) #9
  %transport1.i = getelementptr i8, ptr %work, i32 -92
  %6 = ptrtoint ptr %transport1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transport1.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %lor.lhs.false.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.i:                                  ; preds = %if.then
  %cancel_pkt.i = getelementptr inbounds %struct.vsock_transport, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %cancel_pkt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cancel_pkt.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %if.end.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 %9(ptr noundef %add.ptr) #9
  br label %if.end

if.end:                                           ; preds = %if.end.i, %lor.lhs.false.i.if.end_crit_edge, %if.then.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @release_sock(ptr noundef %add.ptr) #9
  %skc_refcnt.i = getelementptr i8, ptr %work, i32 -952
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !146
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !144

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #9
  br label %sock_put.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @sk_free(ptr noundef %add.ptr) #9
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsock_pending_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1152
  %listener2 = getelementptr i8, ptr %work, i32 -124
  %0 = ptrtoint ptr %listener2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %listener2, align 4
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  tail call void @lock_sock_nested(ptr noundef %add.ptr, i32 noundef 1) #9
  %pending_links.i = getelementptr i8, ptr %work, i32 -120
  %2 = ptrtoint ptr %pending_links.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pending_links.i, align 4
  %cmp.i.i.not = icmp eq ptr %3, %pending_links.i
  br i1 %cmp.i.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vsock_remove_pending(ptr noundef %1, ptr noundef %add.ptr)
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 53
  %4 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sk_ack_backlog.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %sk_ack_backlog.i, align 4
  br label %if.end4

if.else:                                          ; preds = %entry
  %rejected = getelementptr i8, ptr %work, i32 -104
  %6 = ptrtoint ptr %rejected to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rejected, align 8, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %out, label %if.else.if.end4_crit_edge

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end4:                                          ; preds = %if.else.if.end4_crit_edge, %if.then
  tail call void @vsock_remove_connected(ptr noundef %add.ptr)
  %skc_state = getelementptr i8, ptr %work, i32 -1134
  %8 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %8)
  store volatile i8 7, ptr %skc_state, align 2
  tail call void @release_sock(ptr noundef %add.ptr) #9
  tail call void @release_sock(ptr noundef %1) #9
  %skc_refcnt.i = getelementptr i8, ptr %work, i32 -1052
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !146
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end7_crit_edge, label %if.then10.i.i.i.i, !prof !144

if.end5.i.i.i.i.if.end7_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #9
  br label %if.end7

if.then.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @sk_free(ptr noundef %add.ptr) #9
  br label %if.end7

out:                                              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @release_sock(ptr noundef %add.ptr) #9
  tail call void @release_sock(ptr noundef %1) #9
  br label %if.end7

if.end7:                                          ; preds = %out, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end7_crit_edge
  %skc_refcnt.i21 = getelementptr i8, ptr %work, i32 -1052
  %call.i.i.i.i.i.i22 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i21, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i21, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i21, ptr %skc_refcnt.i21, i32 1, ptr elementtype(i32) %skc_refcnt.i21) #9, !srcloc !146
  %asmresult.i.i.i.i.i.i.i23 = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i23)
  %cmp.i.i.i.i24 = icmp eq i32 %asmresult.i.i.i.i.i.i.i23, 1
  br i1 %cmp.i.i.i.i24, label %if.then.i28, label %if.end5.i.i.i.i26

if.end5.i.i.i.i26:                                ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i23)
  %.not.i.i.i.i25 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i23, 0
  br i1 %.not.i.i.i.i25, label %if.end5.i.i.i.i26.sock_put.exit29_crit_edge, label %if.then10.i.i.i.i27, !prof !144

if.end5.i.i.i.i26.sock_put.exit29_crit_edge:      ; preds = %if.end5.i.i.i.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_put.exit29

if.then10.i.i.i.i27:                              ; preds = %if.end5.i.i.i.i26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i21, i32 noundef 3) #9
  br label %sock_put.exit29

if.then.i28:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @sk_free(ptr noundef %add.ptr) #9
  br label %sock_put.exit29

sock_put.exit29:                                  ; preds = %if.then.i28, %if.then10.i.i.i.i27, %if.end5.i.i.i.i26.sock_put.exit29_crit_edge
  %skc_refcnt.i30 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i31 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i30, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i30, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i30, ptr %skc_refcnt.i30, i32 1, ptr elementtype(i32) %skc_refcnt.i30) #9, !srcloc !146
  %asmresult.i.i.i.i.i.i.i32 = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i32)
  %cmp.i.i.i.i33 = icmp eq i32 %asmresult.i.i.i.i.i.i.i32, 1
  br i1 %cmp.i.i.i.i33, label %if.then.i37, label %if.end5.i.i.i.i35

if.end5.i.i.i.i35:                                ; preds = %sock_put.exit29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i32)
  %.not.i.i.i.i34 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i32, 0
  br i1 %.not.i.i.i.i34, label %if.end5.i.i.i.i35.sock_put.exit38_crit_edge, label %if.then10.i.i.i.i36, !prof !144

if.end5.i.i.i.i35.sock_put.exit38_crit_edge:      ; preds = %if.end5.i.i.i.i35
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_put.exit38

if.then10.i.i.i.i36:                              ; preds = %if.end5.i.i.i.i35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i30, i32 noundef 3) #9
  br label %sock_put.exit38

if.then.i37:                                      ; preds = %sock_put.exit29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @sk_free(ptr noundef %1) #9
  br label %sock_put.exit38

sock_put.exit38:                                  ; preds = %if.then.i37, %if.then10.i.i.i.i36, %if.end5.i.i.i.i35.sock_put.exit38_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sk_clone(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable_noaudit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_error_report(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsock_dev_ioctl(ptr nocapture noundef readnone %filp, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 1977, i32 %cmd)
  %cond.i = icmp eq i32 %cmd, 1977
  br i1 %cond.i, label %sw.bb.i, label %entry.vsock_dev_do_ioctl.exit_crit_edge

entry.vsock_dev_do_ioctl.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vsock_dev_do_ioctl.exit

sw.bb.i:                                          ; preds = %entry
  %1 = load ptr, ptr @transport_g2h, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.else.i, label %sw.bb.i.if.end6.sink.split.i_crit_edge

sw.bb.i.if.end6.sink.split.i_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.sink.split.i

if.else.i:                                        ; preds = %sw.bb.i
  %2 = load ptr, ptr @transport_h2g, align 4
  %tobool2.not.i = icmp eq ptr %2, null
  br i1 %tobool2.not.i, label %if.else.i.if.end6.i_crit_edge, label %if.else.i.if.end6.sink.split.i_crit_edge

if.else.i.if.end6.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.sink.split.i

if.else.i.if.end6.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.end6.sink.split.i:                             ; preds = %if.else.i.if.end6.sink.split.i_crit_edge, %sw.bb.i.if.end6.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %1, %sw.bb.i.if.end6.sink.split.i_crit_edge ], [ %2, %if.else.i.if.end6.sink.split.i_crit_edge ]
  %get_local_cid4.i = getelementptr inbounds %struct.vsock_transport, ptr %.sink.i, i32 0, i32 33
  %3 = ptrtoint ptr %get_local_cid4.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_local_cid4.i, align 4
  %call5.i = tail call i32 %4() #9
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end6.sink.split.i, %if.else.i.if.end6.i_crit_edge
  %cid.0.i = phi i32 [ -1, %if.else.i.if.end6.i_crit_edge ], [ %call5.i, %if.end6.sink.split.i ]
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 2245) #9
  %5 = tail call i32 @llvm.read_register.i32(metadata !132) #9
  %and.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #6, !srcloc !153
  %and.i.i = and i32 %7, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #9, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  %8 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %cid.0.i, i32 -1226833921) #9, !srcloc !156
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #9, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  %spec.select.i = select i1 %cmp.not.i, i32 0, i32 -14
  br label %vsock_dev_do_ioctl.exit

vsock_dev_do_ioctl.exit:                          ; preds = %if.end6.i, %entry.vsock_dev_do_ioctl.exit_crit_edge
  %retval1.0.i = phi i32 [ %spec.select.i, %if.end6.i ], [ -515, %entry.vsock_dev_do_ioctl.exit_crit_edge ]
  ret i32 %retval1.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsock_create(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol, i32 noundef %kern) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sock, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %protocol to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %protocol, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.if.end3_crit_edge
    i32 40, label %if.end.if.end3_crit_edge36
  ]

if.end.if.end3_crit_edge36:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end.if.end3_crit_edge, %if.end.if.end3_crit_edge36
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %type, align 4
  %conv = sext i16 %2 to i32
  %3 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %conv, label %if.end3.cleanup_crit_edge [
    i32 2, label %if.end3.sw.epilog_crit_edge
    i32 1, label %sw.bb4
    i32 5, label %sw.bb6
  ]

if.end3.sw.epilog_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb4:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb4, %if.end3.sw.epilog_crit_edge
  %vsock_seqpacket_ops.sink = phi ptr [ @vsock_seqpacket_ops, %sw.bb6 ], [ @vsock_stream_ops, %sw.bb4 ], [ @vsock_dgram_ops, %if.end3.sw.epilog_crit_edge ]
  %ops7 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %4 = ptrtoint ptr %ops7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %vsock_seqpacket_ops.sink, ptr %ops7, align 4
  %5 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %sock, align 128
  %call = tail call fastcc ptr @__vsock_create(ptr noundef %net, ptr noundef nonnull %sock, ptr noundef null, i16 noundef zeroext 0, i32 noundef %kern)
  %tobool8.not = icmp eq ptr %call, null
  br i1 %tobool8.not, label %sw.epilog.cleanup_crit_edge, label %if.end10

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %sw.epilog
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %7)
  %cmp13 = icmp eq i16 %7, 2
  br i1 %cmp13, label %if.then15, label %if.end10.if.end21_crit_edge

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then15:                                        ; preds = %if.end10
  %call16 = tail call i32 @vsock_assign_transport(ptr noundef nonnull %call, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.then15.if.end21_crit_edge

if.then15.if.end21_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then19:                                        ; preds = %if.then15
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !146
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !144

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #9
  br label %cleanup

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @sk_free(ptr noundef nonnull %call) #9
  br label %cleanup

if.end21:                                         ; preds = %if.then15.if.end21_crit_edge, %if.end10.if.end21_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @vsock_table_lock) #9
  %skc_refcnt.i.i.i = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 19
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i, i32 1, i32 3, i32 1) #9
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i, ptr %skc_refcnt.i.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i) #9, !srcloc !142
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.end21.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !143

if.end21.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.end21
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !144

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_hold.exit.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.end21.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.end21.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #9
  br label %sock_hold.exit.i.i

sock_hold.exit.i.i:                               ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge
  %bound_table.i.i = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 4
  %11 = load ptr, ptr getelementptr inbounds ([252 x %struct.list_head], ptr @vsock_bind_table, i32 0, i32 251), align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %bound_table.i.i, ptr noundef getelementptr inbounds ([252 x %struct.list_head], ptr @vsock_bind_table, i32 0, i32 251), ptr noundef %11) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %sock_hold.exit.i.i.vsock_insert_unbound.exit_crit_edge

sock_hold.exit.i.i.vsock_insert_unbound.exit_crit_edge: ; preds = %sock_hold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vsock_insert_unbound.exit

if.end.i.i.i.i:                                   ; preds = %sock_hold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %bound_table.i.i, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %bound_table.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %bound_table.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.vsock_sock, ptr %call, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr getelementptr inbounds ([252 x %struct.list_head], ptr @vsock_bind_table, i32 0, i32 251), ptr %prev3.i.i.i.i, align 4
  store volatile ptr %bound_table.i.i, ptr getelementptr inbounds ([252 x %struct.list_head], ptr @vsock_bind_table, i32 0, i32 251), align 4
  br label %vsock_insert_unbound.exit

vsock_insert_unbound.exit:                        ; preds = %if.end.i.i.i.i, %sock_hold.exit.i.i.vsock_insert_unbound.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @vsock_table_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %vsock_insert_unbound.exit, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %vsock_insert_unbound.exit ], [ -22, %entry.cleanup_crit_edge ], [ -93, %if.end.cleanup_crit_edge ], [ -94, %if.end3.cleanup_crit_edge ], [ -12, %sw.epilog.cleanup_crit_edge ], [ %call16, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call16, %if.then10.i.i.i.i ], [ %call16, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsock_release(ptr nocapture noundef %sock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  tail call fastcc void @__vsock_release(ptr noundef %1, i32 noundef 0)
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sk, align 16
  %3 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %sock, align 128
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsock_bind(ptr nocapture noundef readonly %sock, ptr noundef %addr, i32 noundef %addr_len) #0 align 64 {
entry:
  %vm_addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vm_addr) #9
  %0 = ptrtoint ptr %vm_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %vm_addr, align 4, !annotation !157
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %1 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk1, align 16
  %call = call i32 @vsock_addr_cast(ptr noundef %addr, i32 noundef %addr_len, ptr noundef nonnull %vm_addr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @lock_sock_nested(ptr noundef %2, i32 noundef 0) #9
  %3 = ptrtoint ptr %vm_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vm_addr, align 4
  %call2 = call fastcc i32 @__vsock_bind(ptr noundef %2, ptr noundef %4)
  call void @release_sock(ptr noundef %2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vm_addr) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsock_dgram_connect(ptr nocapture noundef %sock, ptr noundef %addr, i32 noundef %addr_len, i32 noundef %flags) #0 align 64 {
entry:
  %local_addr.i = alloca %struct.sockaddr_vm, align 4
  %remote_addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remote_addr) #9
  %0 = ptrtoint ptr %remote_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %remote_addr, align 4, !annotation !157
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %1 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk1, align 16
  %call = call i32 @vsock_addr_cast(ptr noundef %addr, i32 noundef %addr_len, ptr noundef nonnull %remote_addr) #9
  %3 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %call, label %entry.cleanup_crit_edge [
    i32 -97, label %land.lhs.true
    i32 0, label %if.end8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %remote_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remote_addr, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp2 = icmp eq i16 %7, 0
  br i1 %cmp2, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call void @lock_sock_nested(ptr noundef %2, i32 noundef 0) #9
  %remote_addr4 = getelementptr inbounds %struct.vsock_sock, ptr %2, i32 0, i32 3
  call void @vsock_addr_init(ptr noundef %remote_addr4, i32 noundef -1, i32 noundef -1) #9
  br label %cleanup.sink.split.sink.split

if.end8:                                          ; preds = %entry
  call void @lock_sock_nested(ptr noundef %2, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %local_addr.i) #9
  %local_addr2.i = getelementptr inbounds %struct.vsock_sock, ptr %2, i32 0, i32 2
  %8 = call ptr @memset(ptr %local_addr.i, i32 255, i32 16)
  %call.i = call zeroext i1 @vsock_addr_bound(ptr noundef %local_addr2.i) #9
  br i1 %call.i, label %vsock_auto_bind.exit.thread, label %vsock_auto_bind.exit

vsock_auto_bind.exit.thread:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %local_addr.i) #9
  br label %if.end11

vsock_auto_bind.exit:                             ; preds = %if.end8
  call void @vsock_addr_init(ptr noundef nonnull %local_addr.i, i32 noundef -1, i32 noundef -1) #9
  %call3.i = call fastcc i32 @__vsock_bind(ptr noundef %2, ptr noundef nonnull %local_addr.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %local_addr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %vsock_auto_bind.exit.if.end11_crit_edge, label %vsock_auto_bind.exit.cleanup.sink.split_crit_edge

vsock_auto_bind.exit.cleanup.sink.split_crit_edge: ; preds = %vsock_auto_bind.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

vsock_auto_bind.exit.if.end11_crit_edge:          ; preds = %vsock_auto_bind.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end11:                                         ; preds = %vsock_auto_bind.exit.if.end11_crit_edge, %vsock_auto_bind.exit.thread
  %transport = getelementptr inbounds %struct.vsock_sock, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %transport, align 8
  %dgram_allow = getelementptr inbounds %struct.vsock_transport, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %dgram_allow to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dgram_allow, align 4
  %13 = ptrtoint ptr %remote_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %remote_addr, align 4
  %svm_cid = getelementptr inbounds %struct.sockaddr_vm, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %svm_cid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %svm_cid, align 4
  %svm_port = getelementptr inbounds %struct.sockaddr_vm, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %svm_port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %svm_port, align 4
  %call12 = call zeroext i1 %12(i32 noundef %16, i32 noundef %18) #9
  br i1 %call12, label %if.end14, label %if.end11.cleanup.sink.split_crit_edge

if.end11.cleanup.sink.split_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %remote_addr15 = getelementptr inbounds %struct.vsock_sock, ptr %2, i32 0, i32 3
  %19 = ptrtoint ptr %remote_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %remote_addr, align 4
  %21 = call ptr @memcpy(ptr %remote_addr15, ptr %20, i32 16)
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.end14, %if.then
  %.sink = phi i32 [ 3, %if.end14 ], [ 1, %if.then ]
  %22 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink, ptr %sock, align 128
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end11.cleanup.sink.split_crit_edge, %vsock_auto_bind.exit.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call3.i, %vsock_auto_bind.exit.cleanup.sink.split_crit_edge ], [ -22, %if.end11.cleanup.sink.split_crit_edge ], [ 0, %cleanup.sink.split.sink.split ]
  call void @release_sock(ptr noundef %2) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remote_addr) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsock_getname(ptr nocapture noundef readonly %sock, ptr nocapture noundef writeonly %addr, i32 noundef %peer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %peer)
  %tobool.not = icmp eq i32 %peer, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sock, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %if.end, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %remote_addr = getelementptr inbounds %struct.vsock_sock, ptr %1, i32 0, i32 3
  br label %if.end3

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %local_addr = getelementptr inbounds %struct.vsock_sock, ptr %1, i32 0, i32 2
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.end
  %vm_addr.0 = phi ptr [ %remote_addr, %if.end ], [ %local_addr, %if.else ]
  %tobool4.not = icmp eq ptr %vm_addr.0, null
  br i1 %tobool4.not, label %if.end3.out_crit_edge, label %do.end

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %4 = call ptr @memcpy(ptr %addr, ptr %vm_addr.0, i32 16)
  br label %out

out:                                              ; preds = %do.end, %if.end3.out_crit_edge, %if.then.out_crit_edge
  %err.0 = phi i32 [ 16, %do.end ], [ -107, %if.then.out_crit_edge ], [ -22, %if.end3.out_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #9
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsock_poll(ptr noundef %file, ptr nocapture noundef readonly %sock, ptr noundef %wait) #0 align 64 {
entry:
  %data_ready_now = alloca i8, align 1
  %space_avail_now = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %2, align 8
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %5 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  %tobool3.not.i = icmp eq ptr %4, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %6(ptr noundef %file, ptr noundef nonnull %4, ptr noundef nonnull %wait) #9
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %sk_err = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %7 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 8
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 66
  %9 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sk_shutdown, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %10)
  %cmp = icmp eq i8 %10, 3
  br i1 %cmp, label %poll_wait.exit.if.then8_crit_edge, label %lor.lhs.false

poll_wait.exit.if.then8_crit_edge:                ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

lor.lhs.false:                                    ; preds = %poll_wait.exit
  %11 = and i8 %10, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5.not = icmp eq i8 %11, 0
  br i1 %tobool5.not, label %lor.lhs.false.if.end10_crit_edge, label %land.lhs.true

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

land.lhs.true:                                    ; preds = %lor.lhs.false
  %peer_shutdown = getelementptr inbounds %struct.vsock_sock, ptr %1, i32 0, i32 19
  %12 = ptrtoint ptr %peer_shutdown to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %peer_shutdown, align 4
  %and6 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.if.then8_crit_edge

land.lhs.true.if.then8_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %land.lhs.true.if.then8_crit_edge, %poll_wait.exit.if.then8_crit_edge
  %or9 = or i32 %spec.select, 16
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.lhs.true.if.end10_crit_edge, %lor.lhs.false.if.end10_crit_edge
  %mask.1 = phi i32 [ %or9, %if.then8 ], [ %spec.select, %land.lhs.true.if.end10_crit_edge ], [ %spec.select, %lor.lhs.false.if.end10_crit_edge ]
  %14 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool14.not = icmp eq i8 %14, 0
  br i1 %tobool14.not, label %lor.lhs.false15, label %if.end10.if.then19_crit_edge

if.end10.if.then19_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

lor.lhs.false15:                                  ; preds = %if.end10
  %peer_shutdown16 = getelementptr inbounds %struct.vsock_sock, ptr %1, i32 0, i32 19
  %15 = ptrtoint ptr %peer_shutdown16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %peer_shutdown16, align 4
  %and17 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %lor.lhs.false15.if.end21_crit_edge, label %lor.lhs.false15.if.then19_crit_edge

lor.lhs.false15.if.then19_crit_edge:              ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19

lor.lhs.false15.if.end21_crit_edge:               ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then19:                                        ; preds = %lor.lhs.false15.if.then19_crit_edge, %if.end10.if.then19_crit_edge
  %or20 = or i32 %mask.1, 8192
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %lor.lhs.false15.if.end21_crit_edge
  %mask.2 = phi i32 [ %or20, %if.then19 ], [ %mask.1, %lor.lhs.false15.if.end21_crit_edge ]
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %18)
  %cmp23 = icmp eq i16 %18, 2
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %sk_receive_queue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %sk_receive_queue, align 4
  %cmp.i = icmp ne ptr %20, %sk_receive_queue
  %tobool14.not.not = xor i1 %tobool14.not, true
  %brmerge = select i1 %cmp.i, i1 true, i1 %tobool14.not.not
  %or33 = or i32 %mask.2, 65
  %mask.3 = select i1 %brmerge, i32 %or33, i32 %mask.2
  %21 = and i8 %10, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool38.not = icmp eq i8 %21, 0
  %or40 = or i32 %mask.3, 772
  %spec.select178 = select i1 %tobool38.not, i32 %or40, i32 %mask.3
  br label %if.end134

if.else:                                          ; preds = %if.end21
  %sk_type = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %22 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sk_type, align 2
  %24 = and i16 %23, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %24)
  %25 = icmp eq i16 %24, 1
  br i1 %25, label %if.then43, label %if.else.if.end134_crit_edge

if.else.if.end134_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end134

if.then43:                                        ; preds = %if.else
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  %transport44 = getelementptr inbounds %struct.vsock_sock, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %transport44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %transport44, align 8
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %29)
  %cmp46 = icmp eq i8 %29, 10
  br i1 %cmp46, label %land.lhs.true48, label %if.then43.if.end52_crit_edge

if.then43.if.end52_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

land.lhs.true48:                                  ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  %accept_queue.i = getelementptr inbounds %struct.vsock_sock, ptr %1, i32 0, i32 13
  %30 = ptrtoint ptr %accept_queue.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %accept_queue.i, align 4
  %cmp.i.i = icmp eq ptr %31, %accept_queue.i
  %or51 = or i32 %mask.2, 65
  %spec.select179 = select i1 %cmp.i.i, i32 %mask.2, i32 %or51
  br label %if.end52

if.end52:                                         ; preds = %land.lhs.true48, %if.then43.if.end52_crit_edge
  %mask.4 = phi i32 [ %mask.2, %if.then43.if.end52_crit_edge ], [ %spec.select179, %land.lhs.true48 ]
  %tobool53.not = icmp eq ptr %27, null
  br i1 %tobool53.not, label %if.end52.if.end74_crit_edge, label %land.lhs.true54

if.end52.if.end74_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

land.lhs.true54:                                  ; preds = %if.end52
  %stream_is_active = getelementptr inbounds %struct.vsock_transport, ptr %27, i32 0, i32 15
  %32 = ptrtoint ptr %stream_is_active to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stream_is_active, align 4
  %call55 = tail call zeroext i1 %33(ptr noundef %1) #9
  br i1 %call55, label %land.lhs.true57, label %land.lhs.true54.if.end74_crit_edge

land.lhs.true54.if.end74_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

land.lhs.true57:                                  ; preds = %land.lhs.true54
  %34 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sk_shutdown, align 2
  %36 = and i8 %35, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool61.not = icmp eq i8 %36, 0
  br i1 %tobool61.not, label %if.then62, label %land.lhs.true57.if.end74_crit_edge

land.lhs.true57.if.end74_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.then62:                                        ; preds = %land.lhs.true57
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data_ready_now) #9
  %37 = ptrtoint ptr %data_ready_now to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %data_ready_now, align 1
  %notify_poll_in = getelementptr inbounds %struct.vsock_transport, ptr %27, i32 0, i32 21
  %38 = ptrtoint ptr %notify_poll_in to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %notify_poll_in, align 4
  %call63 = call i32 %39(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %data_ready_now) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.then66, label %if.else68

if.then66:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  %or67 = or i32 %mask.4, 8
  br label %if.end73

if.else68:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %data_ready_now to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %data_ready_now, align 1, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool69.not = icmp eq i8 %41, 0
  %or71 = or i32 %mask.4, 65
  %spec.select180 = select i1 %tobool69.not, i32 %mask.4, i32 %or71
  br label %if.end73

if.end73:                                         ; preds = %if.else68, %if.then66
  %mask.5 = phi i32 [ %or67, %if.then66 ], [ %spec.select180, %if.else68 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data_ready_now) #9
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %land.lhs.true57.if.end74_crit_edge, %land.lhs.true54.if.end74_crit_edge, %if.end52.if.end74_crit_edge
  %mask.6 = phi i32 [ %mask.4, %land.lhs.true57.if.end74_crit_edge ], [ %mask.5, %if.end73 ], [ %mask.4, %land.lhs.true54.if.end74_crit_edge ], [ %mask.4, %if.end52.if.end74_crit_edge ]
  %42 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %sk_shutdown, align 2
  %44 = and i8 %43, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool78.not = icmp eq i8 %44, 0
  br i1 %tobool78.not, label %lor.lhs.false79, label %if.end74.if.then83_crit_edge

if.end74.if.then83_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then83

lor.lhs.false79:                                  ; preds = %if.end74
  %peer_shutdown80 = getelementptr inbounds %struct.vsock_sock, ptr %1, i32 0, i32 19
  %45 = ptrtoint ptr %peer_shutdown80 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %peer_shutdown80, align 4
  %and81 = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %lor.lhs.false79.if.end85_crit_edge, label %lor.lhs.false79.if.then83_crit_edge

lor.lhs.false79.if.then83_crit_edge:              ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then83

lor.lhs.false79.if.end85_crit_edge:               ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then83:                                        ; preds = %lor.lhs.false79.if.then83_crit_edge, %if.end74.if.then83_crit_edge
  %or84 = or i32 %mask.6, 65
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %lor.lhs.false79.if.end85_crit_edge
  %mask.7 = phi i32 [ %or84, %if.then83 ], [ %mask.6, %lor.lhs.false79.if.end85_crit_edge ]
  br i1 %tobool53.not, label %if.end85.if.end112_crit_edge, label %land.lhs.true87

if.end85.if.end112_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

land.lhs.true87:                                  ; preds = %if.end85
  %47 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %48)
  %cmp91 = icmp eq i8 %48, 1
  %49 = and i8 %43, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool97.not = icmp eq i8 %49, 0
  %or.cond = select i1 %cmp91, i1 %tobool97.not, i1 false
  br i1 %or.cond, label %if.then98, label %land.lhs.true87.if.end112_crit_edge

land.lhs.true87.if.end112_crit_edge:              ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

if.then98:                                        ; preds = %land.lhs.true87
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %space_avail_now) #9
  %50 = ptrtoint ptr %space_avail_now to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %space_avail_now, align 1
  %notify_poll_out = getelementptr inbounds %struct.vsock_transport, ptr %27, i32 0, i32 22
  %51 = ptrtoint ptr %notify_poll_out to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %notify_poll_out, align 4
  %call100 = call i32 %52(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %space_avail_now) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %if.then103, label %if.else105

if.then103:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #11
  %or104 = or i32 %mask.7, 8
  br label %if.end110

if.else105:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %space_avail_now to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %space_avail_now, align 1, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool106.not = icmp eq i8 %54, 0
  %or108 = or i32 %mask.7, 260
  %spec.select181 = select i1 %tobool106.not, i32 %mask.7, i32 %or108
  br label %if.end110

if.end110:                                        ; preds = %if.else105, %if.then103
  %mask.8 = phi i32 [ %or104, %if.then103 ], [ %spec.select181, %if.else105 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %space_avail_now) #9
  br label %if.end112

if.end112:                                        ; preds = %if.end110, %land.lhs.true87.if.end112_crit_edge, %if.end85.if.end112_crit_edge
  %mask.9 = phi i32 [ %mask.8, %if.end110 ], [ %mask.7, %land.lhs.true87.if.end112_crit_edge ], [ %mask.7, %if.end85.if.end112_crit_edge ]
  %55 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %56)
  %cmp116 = icmp eq i8 %56, 7
  br i1 %cmp116, label %if.end112.if.then124_crit_edge, label %lor.lhs.false118

if.end112.if.then124_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then124

lor.lhs.false118:                                 ; preds = %if.end112
  %57 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %58)
  %cmp122 = icmp eq i8 %58, 11
  br i1 %cmp122, label %lor.lhs.false118.if.then124_crit_edge, label %lor.lhs.false118.if.end132_crit_edge

lor.lhs.false118.if.end132_crit_edge:             ; preds = %lor.lhs.false118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

lor.lhs.false118.if.then124_crit_edge:            ; preds = %lor.lhs.false118
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then124

if.then124:                                       ; preds = %lor.lhs.false118.if.then124_crit_edge, %if.end112.if.then124_crit_edge
  %59 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %sk_shutdown, align 2
  %61 = and i8 %60, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool128.not = icmp eq i8 %61, 0
  %or130 = or i32 %mask.9, 260
  %spec.select182 = select i1 %tobool128.not, i32 %or130, i32 %mask.9
  br label %if.end132

if.end132:                                        ; preds = %if.then124, %lor.lhs.false118.if.end132_crit_edge
  %mask.10 = phi i32 [ %mask.9, %lor.lhs.false118.if.end132_crit_edge ], [ %spec.select182, %if.then124 ]
  call void @release_sock(ptr noundef %1) #9
  br label %if.end134

if.end134:                                        ; preds = %if.end132, %if.else.if.end134_crit_edge, %if.then25
  %mask.11 = phi i32 [ %mask.10, %if.end132 ], [ %mask.2, %if.else.if.end134_crit_edge ], [ %spec.select178, %if.then25 ]
  ret i32 %mask.11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsock_shutdown(ptr nocapture noundef %sock, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %inc = add i32 %mode, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %0 = icmp ugt i32 %mode, 2
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sk2 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %1 = ptrtoint ptr %sk2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk2, align 16
  tail call void @lock_sock_nested(ptr noundef %2, i32 noundef 0) #9
  %3 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sock, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %sk_type = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 45
  %5 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sk_type, align 2
  %7 = and i16 %6, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %8 = icmp eq i16 %7, 1
  br i1 %8, label %if.then3.out_crit_edge, label %if.then3.if.then10_crit_edge

if.then3.if.then10_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.then3.out_crit_edge:                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %sock, align 128
  br label %if.then10

if.then10:                                        ; preds = %if.else, %if.then3.if.then10_crit_edge
  %err.0 = phi i32 [ -107, %if.then3.if.then10_crit_edge ], [ 0, %if.else ]
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 66
  %10 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sk_shutdown, align 2
  %12 = trunc i32 %inc to i8
  %conv11 = or i8 %11, %12
  store i8 %conv11, ptr %sk_shutdown, align 2
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 76
  %13 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk_state_change, align 4
  tail call void %14(ptr noundef %2) #9
  %sk_type12 = getelementptr inbounds %struct.sock, ptr %2, i32 0, i32 45
  %15 = ptrtoint ptr %sk_type12 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %sk_type12, align 2
  %17 = and i16 %16, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %17)
  %18 = icmp eq i16 %17, 1
  br i1 %18, label %if.then14, label %if.then10.out_crit_edge

if.then10.out_crit_edge:                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then14:                                        ; preds = %if.then10
  %19 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %and.i.i = and i32 %21, -3
  store i32 %and.i.i, ptr %19, align 4
  %transport.i = getelementptr inbounds %struct.vsock_sock, ptr %2, i32 0, i32 1
  %22 = ptrtoint ptr %transport.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %transport.i, align 8
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.then14.out_crit_edge, label %if.end.i

if.then14.out_crit_edge:                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %shutdown.i = getelementptr inbounds %struct.vsock_transport, ptr %23, i32 0, i32 32
  %24 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %shutdown.i, align 4
  %call.i = tail call i32 %25(ptr noundef %2, i32 noundef %inc) #9
  br label %out

out:                                              ; preds = %if.end.i, %if.then14.out_crit_edge, %if.then10.out_crit_edge, %if.then3.out_crit_edge
  %err.1 = phi i32 [ -107, %if.then3.out_crit_edge ], [ %err.0, %if.then10.out_crit_edge ], [ %err.0, %if.then14.out_crit_edge ], [ %err.0, %if.end.i ]
  tail call void @release_sock(ptr noundef %2) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsock_dgram_sendmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len) #0 align 64 {
entry:
  %local_addr.i = alloca %struct.sockaddr_vm, align 4
  %remote_addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remote_addr) #9
  %0 = ptrtoint ptr %remote_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %remote_addr, align 4, !annotation !157
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %1 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msg_flags, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %3 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %4, i32 noundef 0) #9
  %transport2 = getelementptr inbounds %struct.vsock_sock, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %transport2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %transport2, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %local_addr.i) #9
  %local_addr2.i = getelementptr inbounds %struct.vsock_sock, ptr %4, i32 0, i32 2
  %7 = call ptr @memset(ptr %local_addr.i, i32 255, i32 16)
  %call.i = tail call zeroext i1 @vsock_addr_bound(ptr noundef %local_addr2.i) #9
  br i1 %call.i, label %vsock_auto_bind.exit.thread, label %vsock_auto_bind.exit

vsock_auto_bind.exit.thread:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %local_addr.i) #9
  br label %if.end5

vsock_auto_bind.exit:                             ; preds = %if.end
  call void @vsock_addr_init(ptr noundef nonnull %local_addr.i, i32 noundef -1, i32 noundef -1) #9
  %call3.i = call fastcc i32 @__vsock_bind(ptr noundef %4, ptr noundef nonnull %local_addr.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %local_addr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool3.not = icmp eq i32 %call3.i, 0
  br i1 %tobool3.not, label %vsock_auto_bind.exit.if.end5_crit_edge, label %vsock_auto_bind.exit.out_crit_edge

vsock_auto_bind.exit.out_crit_edge:               ; preds = %vsock_auto_bind.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

vsock_auto_bind.exit.if.end5_crit_edge:           ; preds = %vsock_auto_bind.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end5:                                          ; preds = %vsock_auto_bind.exit.if.end5_crit_edge, %vsock_auto_bind.exit.thread
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %msg, align 8
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %if.end5.if.else_crit_edge, label %land.lhs.true

if.end5.if.else_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end5
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_namelen, align 4
  %call8 = call i32 @vsock_addr_cast(ptr noundef nonnull %9, i32 noundef %11, ptr noundef nonnull %remote_addr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp eq i32 %call8, 0
  br i1 %cmp, label %if.then9, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then9:                                         ; preds = %land.lhs.true
  %12 = ptrtoint ptr %remote_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %remote_addr, align 4
  %svm_cid = getelementptr inbounds %struct.sockaddr_vm, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %svm_cid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %svm_cid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp10 = icmp eq i32 %15, -1
  br i1 %cmp10, label %if.then11, label %if.then9.if.end14_crit_edge

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %get_local_cid = getelementptr inbounds %struct.vsock_transport, ptr %6, i32 0, i32 33
  %16 = ptrtoint ptr %get_local_cid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %get_local_cid, align 4
  %call12 = call i32 %17() #9
  %18 = ptrtoint ptr %remote_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %remote_addr, align 4
  %svm_cid13 = getelementptr inbounds %struct.sockaddr_vm, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %svm_cid13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call12, ptr %svm_cid13, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then9.if.end14_crit_edge
  %21 = ptrtoint ptr %remote_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %remote_addr, align 4
  %call15 = call zeroext i1 @vsock_addr_bound(ptr noundef %22) #9
  br i1 %call15, label %if.end14.if.end34_crit_edge, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end14.if.end34_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end5.if.else_crit_edge
  %23 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sock, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp18 = icmp eq i32 %24, 3
  br i1 %cmp18, label %if.then19, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then19:                                        ; preds = %if.else
  %remote_addr20 = getelementptr inbounds %struct.vsock_sock, ptr %4, i32 0, i32 3
  %25 = ptrtoint ptr %remote_addr to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %remote_addr20, ptr %remote_addr, align 4
  %svm_cid21 = getelementptr inbounds %struct.vsock_sock, ptr %4, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %svm_cid21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %svm_cid21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp22 = icmp eq i32 %27, -1
  br i1 %cmp22, label %if.then23, label %if.then19.if.end27_crit_edge

if.then19.if.end27_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %get_local_cid24 = getelementptr inbounds %struct.vsock_transport, ptr %6, i32 0, i32 33
  %28 = ptrtoint ptr %get_local_cid24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %get_local_cid24, align 4
  %call25 = call i32 %29() #9
  %30 = ptrtoint ptr %remote_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %remote_addr, align 4
  %svm_cid26 = getelementptr inbounds %struct.sockaddr_vm, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %svm_cid26 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call25, ptr %svm_cid26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.then19.if.end27_crit_edge
  %call29 = call zeroext i1 @vsock_addr_bound(ptr noundef %remote_addr20) #9
  br i1 %call29, label %if.end27.if.end34_crit_edge, label %if.end27.out_crit_edge

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.end34:                                         ; preds = %if.end27.if.end34_crit_edge, %if.end14.if.end34_crit_edge
  %dgram_allow = getelementptr inbounds %struct.vsock_transport, ptr %6, i32 0, i32 9
  %33 = ptrtoint ptr %dgram_allow to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dgram_allow, align 4
  %35 = ptrtoint ptr %remote_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %remote_addr, align 4
  %svm_cid35 = getelementptr inbounds %struct.sockaddr_vm, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %svm_cid35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %svm_cid35, align 4
  %svm_port = getelementptr inbounds %struct.sockaddr_vm, ptr %36, i32 0, i32 2
  %39 = ptrtoint ptr %svm_port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %svm_port, align 4
  %call36 = call zeroext i1 %34(i32 noundef %38, i32 noundef %40) #9
  br i1 %call36, label %if.end38, label %if.end34.out_crit_edge

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end38:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %dgram_enqueue = getelementptr inbounds %struct.vsock_transport, ptr %6, i32 0, i32 8
  %41 = ptrtoint ptr %dgram_enqueue to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dgram_enqueue, align 4
  %43 = ptrtoint ptr %remote_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %remote_addr, align 4
  %call39 = call i32 %42(ptr noundef %4, ptr noundef %44, ptr noundef %msg, i32 noundef %len) #9
  br label %out

out:                                              ; preds = %if.end38, %if.end34.out_crit_edge, %if.end27.out_crit_edge, %if.else.out_crit_edge, %if.end14.out_crit_edge, %vsock_auto_bind.exit.out_crit_edge
  %err.0 = phi i32 [ %call3.i, %vsock_auto_bind.exit.out_crit_edge ], [ %call39, %if.end38 ], [ -22, %if.end14.out_crit_edge ], [ -22, %if.end27.out_crit_edge ], [ -22, %if.else.out_crit_edge ], [ -22, %if.end34.out_crit_edge ]
  call void @release_sock(ptr noundef %4) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remote_addr) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsock_dgram_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %transport = getelementptr inbounds %struct.vsock_sock, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transport, align 8
  %dgram_dequeue = getelementptr inbounds %struct.vsock_transport, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %dgram_dequeue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dgram_dequeue, align 4
  %call = tail call i32 %5(ptr noundef %1, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__vsock_release(ptr noundef %sk, i32 noundef %level) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sk, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then:                                          ; preds = %entry
  tail call void @lock_sock_nested(ptr noundef nonnull %sk, i32 noundef %level) #9
  %transport = getelementptr inbounds %struct.vsock_sock, ptr %sk, i32 0, i32 1
  %0 = ptrtoint ptr %transport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %release = getelementptr inbounds %struct.vsock_transport, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %release, align 4
  tail call void %3(ptr noundef nonnull %sk) #9
  br label %if.end5

if.else:                                          ; preds = %if.then
  %sk_type = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %4 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %sk_type, align 2
  %6 = and i16 %5, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %6)
  %7 = icmp eq i16 %6, 1
  br i1 %7, label %if.then4, label %if.else.if.end5_crit_edge

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vsock_remove_bound(ptr noundef nonnull %sk) #9
  tail call void @vsock_remove_connected(ptr noundef nonnull %sk) #9
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.else.if.end5_crit_edge, %if.then2
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #9
  %8 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %or.i.i.i = or i32 %10, 1
  store i32 %or.i.i.i, ptr %8, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %11 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %sk_socket.i.i, align 8
  %12 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %12, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #9
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %14 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %sk_shutdown, align 2
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %sk_receive_queue) #9
  %call630 = tail call fastcc ptr @vsock_dequeue_accept(ptr noundef nonnull %sk)
  %cmp.not31 = icmp eq ptr %call630, null
  br i1 %cmp.not31, label %if.end5.while.end_crit_edge, label %if.end5.while.body_crit_edge

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  br label %while.body

if.end5.while.end_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %sock_put.exit.while.body_crit_edge, %if.end5.while.body_crit_edge
  %call632 = phi ptr [ %call6, %sock_put.exit.while.body_crit_edge ], [ %call630, %if.end5.while.body_crit_edge ]
  tail call fastcc void @__vsock_release(ptr noundef nonnull %call632, i32 noundef 1)
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call632, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !146
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !144

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #9
  br label %sock_put.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @sk_free(ptr noundef nonnull %call632) #9
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  %call6 = tail call fastcc ptr @vsock_dequeue_accept(ptr noundef nonnull %sk)
  %cmp.not = icmp eq ptr %call6, null
  br i1 %cmp.not, label %sock_put.exit.while.end_crit_edge, label %sock_put.exit.while.body_crit_edge

sock_put.exit.while.body_crit_edge:               ; preds = %sock_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

sock_put.exit.while.end_crit_edge:                ; preds = %sock_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %sock_put.exit.while.end_crit_edge, %if.end5.while.end_crit_edge
  tail call void @release_sock(ptr noundef nonnull %sk) #9
  %skc_refcnt.i21 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i22 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i21, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i21, i32 1, i32 3, i32 1) #9
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i21, ptr %skc_refcnt.i21, i32 1, ptr elementtype(i32) %skc_refcnt.i21) #9, !srcloc !146
  %asmresult.i.i.i.i.i.i.i23 = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i23)
  %cmp.i.i.i.i24 = icmp eq i32 %asmresult.i.i.i.i.i.i.i23, 1
  br i1 %cmp.i.i.i.i24, label %if.then.i28, label %if.end5.i.i.i.i26

if.end5.i.i.i.i26:                                ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i23)
  %.not.i.i.i.i25 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i23, 0
  br i1 %.not.i.i.i.i25, label %if.end5.i.i.i.i26.if.end7_crit_edge, label %if.then10.i.i.i.i27, !prof !144

if.end5.i.i.i.i26.if.end7_crit_edge:              ; preds = %if.end5.i.i.i.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then10.i.i.i.i27:                              ; preds = %if.end5.i.i.i.i26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i21, i32 noundef 3) #9
  br label %if.end7

if.then.i28:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @sk_free(ptr noundef nonnull %sk) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then.i28, %if.then10.i.i.i.i27, %if.end5.i.i.i.i26.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @vsock_dequeue_accept(ptr noundef %listener) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %accept_queue = getelementptr inbounds %struct.vsock_sock, ptr %listener, i32 0, i32 13
  %0 = ptrtoint ptr %accept_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %accept_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %accept_queue
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -1040
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
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
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %listener, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !145
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !146
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !144

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #9
  br label %cleanup

if.then.i:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !147
  tail call void @sk_free(ptr noundef %listener) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %add.ptr, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %add.ptr, %if.then10.i.i.i.i ], [ %add.ptr, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsock_addr_cast(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__vsock_bind(ptr noundef %sk, ptr noundef %addr) unnamed_addr #0 align 64 {
entry:
  %new_addr.i = alloca %struct.sockaddr_vm, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %local_addr = getelementptr inbounds %struct.vsock_sock, ptr %sk, i32 0, i32 2
  %call = tail call zeroext i1 @vsock_addr_bound(ptr noundef %local_addr) #9
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %svm_cid = getelementptr inbounds %struct.sockaddr_vm, ptr %addr, i32 0, i32 3
  %0 = ptrtoint ptr %svm_cid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %svm_cid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not = icmp eq i32 %1, -1
  br i1 %cmp.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %2 = load ptr, ptr @transport_g2h, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %land.lhs.true.if.end.i_crit_edge, label %land.lhs.true.i

land.lhs.true.if.end.i_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %get_local_cid.i = getelementptr inbounds %struct.vsock_transport, ptr %2, i32 0, i32 33
  %3 = ptrtoint ptr %get_local_cid.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_local_cid.i, align 4
  %call.i = tail call i32 %4() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %1)
  %cmp.i = icmp eq i32 %call.i, %1
  br i1 %cmp.i, label %land.lhs.true.i.if.end5_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i.if.end5_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %land.lhs.true.if.end.i_crit_edge
  %5 = load ptr, ptr @transport_h2g, align 4
  %tobool1.not.i = icmp ne ptr %5, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp3.i = icmp eq i32 %1, 2
  %or.cond.i = and i1 %cmp3.i, %tobool1.not.i
  br i1 %or.cond.i, label %if.end.i.if.end5_crit_edge, label %vsock_find_cid.exit

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

vsock_find_cid.exit:                              ; preds = %if.end.i
  %6 = load ptr, ptr @transport_local, align 4
  %tobool6.not.i = icmp ne ptr %6, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp8.i = icmp eq i32 %1, 1
  %or.cond13.i = and i1 %cmp8.i, %tobool6.not.i
  br i1 %or.cond13.i, label %vsock_find_cid.exit.if.end5_crit_edge, label %vsock_find_cid.exit.cleanup_crit_edge

vsock_find_cid.exit.cleanup_crit_edge:            ; preds = %vsock_find_cid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

vsock_find_cid.exit.if.end5_crit_edge:            ; preds = %vsock_find_cid.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end5:                                          ; preds = %vsock_find_cid.exit.if.end5_crit_edge, %if.end.i.if.end5_crit_edge, %land.lhs.true.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %7 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sk_socket, align 8
  %type = getelementptr inbounds %struct.socket, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %type, align 4
  %conv = sext i16 %10 to i32
  %11 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %conv, label %if.end5.cleanup_crit_edge [
    i32 1, label %if.end5.sw.bb_crit_edge
    i32 5, label %if.end5.sw.bb_crit_edge44
    i32 2, label %sw.bb7
  ]

if.end5.sw.bb_crit_edge44:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end5.sw.bb_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end5.sw.bb_crit_edge, %if.end5.sw.bb_crit_edge44
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @vsock_table_lock) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %new_addr.i) #9
  %12 = getelementptr inbounds %struct.sockaddr_vm, ptr %new_addr.i, i32 0, i32 2
  %13 = getelementptr inbounds %struct.sockaddr_vm, ptr %new_addr.i, i32 0, i32 3
  %14 = call ptr @memset(ptr %new_addr.i, i32 255, i32 16)
  %15 = load i32, ptr @__vsock_bind_connectible.port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i16 = icmp eq i32 %15, 0
  br i1 %tobool.not.i16, label %if.then.i, label %sw.bb.if.end.i18_crit_edge

sw.bb.if.end.i18_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i18

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 @prandom_u32() #9
  %conv.i.i = zext i32 %call.i.i to i64
  %mul.i.i = mul nuw i64 %conv.i.i, 4294966272
  %shr.i.i = lshr i64 %mul.i.i, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %add.i = add nuw i32 %conv2.i.i, 1024
  store i32 %add.i, ptr @__vsock_bind_connectible.port, align 4
  br label %if.end.i18

if.end.i18:                                       ; preds = %if.then.i, %sw.bb.if.end.i18_crit_edge
  %16 = ptrtoint ptr %svm_cid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %svm_cid, align 4
  %svm_port.i = getelementptr inbounds %struct.sockaddr_vm, ptr %addr, i32 0, i32 2
  %18 = ptrtoint ptr %svm_port.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %svm_port.i, align 4
  call void @vsock_addr_init(ptr noundef nonnull %new_addr.i, i32 noundef %17, i32 noundef %19) #9
  %20 = ptrtoint ptr %svm_port.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %svm_port.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i17 = icmp eq i32 %21, -1
  br i1 %cmp.i17, label %if.end.i18.for.body.i_crit_edge, label %if.else.i

if.end.i18.for.body.i_crit_edge:                  ; preds = %if.end.i18
  br label %for.body.i

for.cond.i:                                       ; preds = %__vsock_find_bound_socket.exit.i
  %inc12.i = add nuw nsw i32 %i.085.i, 1
  %exitcond.not.i = icmp eq i32 %inc12.i, 24
  br i1 %exitcond.not.i, label %for.cond.i.__vsock_bind_connectible.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.__vsock_bind_connectible.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__vsock_bind_connectible.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i18.for.body.i_crit_edge
  %i.085.i = phi i32 [ %inc12.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end.i18.for.body.i_crit_edge ]
  %22 = load i32, ptr @__vsock_bind_connectible.port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %22)
  %cmp4.i = icmp ult i32 %22, 1024
  br i1 %cmp4.i, label %if.then5.i, label %for.body.i.if.end6.i_crit_edge

for.body.i.if.end6.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then5.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  store i32 1024, ptr @__vsock_bind_connectible.port, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %for.body.i.if.end6.i_crit_edge
  %23 = load i32, ptr @__vsock_bind_connectible.port, align 4
  %inc.i = add i32 %23, 1
  store i32 %inc.i, ptr @__vsock_bind_connectible.port, align 4
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %12, align 4
  %rem.i.i = urem i32 %23, 251
  %arrayidx.i.i = getelementptr [252 x %struct.list_head], ptr @vsock_bind_table, i32 0, i32 %rem.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn40.i.i = load ptr, ptr %arrayidx.i.i, align 4
  %cmp.not43.i.i = icmp eq ptr %.pn40.i.i, %arrayidx.i.i
  br i1 %cmp.not43.i.i, label %if.end6.i.if.end26.i_crit_edge, label %if.end6.i.for.body.i.i_crit_edge

if.end6.i.for.body.i.i_crit_edge:                 ; preds = %if.end6.i
  br label %for.body.i.i

if.end6.i.if.end26.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end6.i.for.body.i.i_crit_edge
  %.pn44.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn40.i.i, %if.end6.i.for.body.i.i_crit_edge ]
  %local_addr.i.i = getelementptr i8, ptr %.pn44.i.i, i32 -32
  %call.i39.i = call zeroext i1 @vsock_addr_equals_addr(ptr noundef nonnull %new_addr.i, ptr noundef %local_addr.i.i) #9
  br i1 %call.i39.i, label %for.body.i.i.__vsock_find_bound_socket.exit.i_crit_edge, label %if.end.i.i

for.body.i.i.__vsock_find_bound_socket.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__vsock_find_bound_socket.exit.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %26 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %12, align 4
  %svm_port6.i.i = getelementptr i8, ptr %.pn44.i.i, i32 -28
  %28 = ptrtoint ptr %svm_port6.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %svm_port6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp7.i.i = icmp eq i32 %27, %29
  br i1 %cmp7.i.i, label %land.lhs.true.i.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %svm_cid.i.i = getelementptr i8, ptr %.pn44.i.i, i32 -24
  %30 = ptrtoint ptr %svm_cid.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %svm_cid.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp9.i.i = icmp eq i32 %31, -1
  br i1 %cmp9.i.i, label %land.lhs.true.i.i.__vsock_find_bound_socket.exit.i_crit_edge, label %lor.lhs.false.i.i

land.lhs.true.i.i.__vsock_find_bound_socket.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__vsock_find_bound_socket.exit.i

lor.lhs.false.i.i:                                ; preds = %land.lhs.true.i.i
  %32 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp11.i.i = icmp eq i32 %33, -1
  br i1 %cmp11.i.i, label %lor.lhs.false.i.i.__vsock_find_bound_socket.exit.i_crit_edge, label %lor.lhs.false.i.i.for.inc.i.i_crit_edge

lor.lhs.false.i.i.for.inc.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

lor.lhs.false.i.i.__vsock_find_bound_socket.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__vsock_find_bound_socket.exit.i

for.inc.i.i:                                      ; preds = %lor.lhs.false.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge
  %34 = ptrtoint ptr %.pn44.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn.i.i = load ptr, ptr %.pn44.i.i, align 4
  %rem2.i.i = urem i32 %27, 251
  %arrayidx3.i.i = getelementptr [252 x %struct.list_head], ptr @vsock_bind_table, i32 0, i32 %rem2.i.i
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %arrayidx3.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end26.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.if.end26.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

__vsock_find_bound_socket.exit.i:                 ; preds = %lor.lhs.false.i.i.__vsock_find_bound_socket.exit.i_crit_edge, %land.lhs.true.i.i.__vsock_find_bound_socket.exit.i_crit_edge, %for.body.i.i.__vsock_find_bound_socket.exit.i_crit_edge
  %retval.0.i.i = getelementptr i8, ptr %.pn44.i.i, i32 -996
  %tobool9.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool9.not.i, label %__vsock_find_bound_socket.exit.i.if.end26.i_crit_edge, label %for.cond.i

__vsock_find_bound_socket.exit.i.if.end26.i_crit_edge: ; preds = %__vsock_find_bound_socket.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.else.i:                                        ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %21)
  %cmp18.i = icmp ult i32 %21, 1024
  br i1 %cmp18.i, label %land.lhs.true.i19, label %if.else.i.if.end21.i_crit_edge

if.else.i.if.end21.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

land.lhs.true.i19:                                ; preds = %if.else.i
  %call19.i = call zeroext i1 @capable(i32 noundef 10) #9
  br i1 %call19.i, label %land.lhs.true.i19.if.end21.i_crit_edge, label %land.lhs.true.i19.__vsock_bind_connectible.exit_crit_edge

land.lhs.true.i19.__vsock_bind_connectible.exit_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %__vsock_bind_connectible.exit

land.lhs.true.i19.if.end21.i_crit_edge:           ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.end21.i:                                       ; preds = %land.lhs.true.i19.if.end21.i_crit_edge, %if.else.i.if.end21.i_crit_edge
  %35 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %12, align 4
  %rem.i41.i = urem i32 %36, 251
  %arrayidx.i42.i = getelementptr [252 x %struct.list_head], ptr @vsock_bind_table, i32 0, i32 %rem.i41.i
  %37 = ptrtoint ptr %arrayidx.i42.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn40.i44.i = load ptr, ptr %arrayidx.i42.i, align 4
  %cmp.not43.i45.i = icmp eq ptr %.pn40.i44.i, %arrayidx.i42.i
  br i1 %cmp.not43.i45.i, label %if.end21.i.if.end26.i_crit_edge, label %if.end21.i.for.body.i49.i_crit_edge

if.end21.i.for.body.i49.i_crit_edge:              ; preds = %if.end21.i
  br label %for.body.i49.i

if.end21.i.if.end26.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

for.body.i49.i:                                   ; preds = %for.inc.i62.i.for.body.i49.i_crit_edge, %if.end21.i.for.body.i49.i_crit_edge
  %.pn44.i46.i = phi ptr [ %.pn.i58.i, %for.inc.i62.i.for.body.i49.i_crit_edge ], [ %.pn40.i44.i, %if.end21.i.for.body.i49.i_crit_edge ]
  %local_addr.i47.i = getelementptr i8, ptr %.pn44.i46.i, i32 -32
  %call.i48.i = call zeroext i1 @vsock_addr_equals_addr(ptr noundef nonnull %new_addr.i, ptr noundef %local_addr.i47.i) #9
  br i1 %call.i48.i, label %for.body.i49.i.__vsock_find_bound_socket.exit70.i_crit_edge, label %if.end.i52.i

for.body.i49.i.__vsock_find_bound_socket.exit70.i_crit_edge: ; preds = %for.body.i49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__vsock_find_bound_socket.exit70.i

if.end.i52.i:                                     ; preds = %for.body.i49.i
  %38 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %12, align 4
  %svm_port6.i50.i = getelementptr i8, ptr %.pn44.i46.i, i32 -28
  %40 = ptrtoint ptr %svm_port6.i50.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %svm_port6.i50.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp7.i51.i = icmp eq i32 %39, %41
  br i1 %cmp7.i51.i, label %land.lhs.true.i55.i, label %if.end.i52.i.for.inc.i62.i_crit_edge

if.end.i52.i.for.inc.i62.i_crit_edge:             ; preds = %if.end.i52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i62.i

land.lhs.true.i55.i:                              ; preds = %if.end.i52.i
  %svm_cid.i53.i = getelementptr i8, ptr %.pn44.i46.i, i32 -24
  %42 = ptrtoint ptr %svm_cid.i53.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %svm_cid.i53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %cmp9.i54.i = icmp eq i32 %43, -1
  br i1 %cmp9.i54.i, label %land.lhs.true.i55.i.__vsock_find_bound_socket.exit70.i_crit_edge, label %lor.lhs.false.i57.i

land.lhs.true.i55.i.__vsock_find_bound_socket.exit70.i_crit_edge: ; preds = %land.lhs.true.i55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__vsock_find_bound_socket.exit70.i

lor.lhs.false.i57.i:                              ; preds = %land.lhs.true.i55.i
  %44 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp11.i56.i = icmp eq i32 %45, -1
  br i1 %cmp11.i56.i, label %lor.lhs.false.i57.i.__vsock_find_bound_socket.exit70.i_crit_edge, label %lor.lhs.false.i57.i.for.inc.i62.i_crit_edge

lor.lhs.false.i57.i.for.inc.i62.i_crit_edge:      ; preds = %lor.lhs.false.i57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i62.i

lor.lhs.false.i57.i.__vsock_find_bound_socket.exit70.i_crit_edge: ; preds = %lor.lhs.false.i57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__vsock_find_bound_socket.exit70.i

for.inc.i62.i:                                    ; preds = %lor.lhs.false.i57.i.for.inc.i62.i_crit_edge, %if.end.i52.i.for.inc.i62.i_crit_edge
  %46 = ptrtoint ptr %.pn44.i46.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn.i58.i = load ptr, ptr %.pn44.i46.i, align 4
  %rem2.i59.i = urem i32 %39, 251
  %arrayidx3.i60.i = getelementptr [252 x %struct.list_head], ptr @vsock_bind_table, i32 0, i32 %rem2.i59.i
  %cmp.not.i61.i = icmp eq ptr %.pn.i58.i, %arrayidx3.i60.i
  br i1 %cmp.not.i61.i, label %for.inc.i62.i.if.end26.i_crit_edge, label %for.inc.i62.i.for.body.i49.i_crit_edge

for.inc.i62.i.for.body.i49.i_crit_edge:           ; preds = %for.inc.i62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i49.i

for.inc.i62.i.if.end26.i_crit_edge:               ; preds = %for.inc.i62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

__vsock_find_bound_socket.exit70.i:               ; preds = %lor.lhs.false.i57.i.__vsock_find_bound_socket.exit70.i_crit_edge, %land.lhs.true.i55.i.__vsock_find_bound_socket.exit70.i_crit_edge, %for.body.i49.i.__vsock_find_bound_socket.exit70.i_crit_edge
  %retval.0.i69.i = getelementptr i8, ptr %.pn44.i46.i, i32 -996
  %tobool23.not.i = icmp eq ptr %retval.0.i69.i, null
  br i1 %tobool23.not.i, label %__vsock_find_bound_socket.exit70.i.if.end26.i_crit_edge, label %__vsock_find_bound_socket.exit70.i.__vsock_bind_connectible.exit_crit_edge

__vsock_find_bound_socket.exit70.i.__vsock_bind_connectible.exit_crit_edge: ; preds = %__vsock_find_bound_socket.exit70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__vsock_bind_connectible.exit

__vsock_find_bound_socket.exit70.i.if.end26.i_crit_edge: ; preds = %__vsock_find_bound_socket.exit70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.end26.i:                                       ; preds = %__vsock_find_bound_socket.exit70.i.if.end26.i_crit_edge, %for.inc.i62.i.if.end26.i_crit_edge, %if.end21.i.if.end26.i_crit_edge, %__vsock_find_bound_socket.exit.i.if.end26.i_crit_edge, %for.inc.i.i.if.end26.i_crit_edge, %if.end6.i.if.end26.i_crit_edge
  %47 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %13, align 4
  %49 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %12, align 4
  call void @vsock_addr_init(ptr noundef %local_addr, i32 noundef %48, i32 noundef %50) #9
  %bound_table.i.i = getelementptr inbounds %struct.vsock_sock, ptr %sk, i32 0, i32 4
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %bound_table.i.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end26.i.list_del_init.exit.i.i_crit_edge

if.end26.i.list_del_init.exit.i.i_crit_edge:      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr inbounds %struct.vsock_sock, ptr %sk, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i.i.i, align 4
  %53 = ptrtoint ptr %bound_table.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bound_table.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev1.i.i.i.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %54, ptr %52, align 4
  br label %list_del_init.exit.i.i

list_del_init.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.end26.i.list_del_init.exit.i.i_crit_edge
  %57 = ptrtoint ptr %bound_table.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %bound_table.i.i, ptr %bound_table.i.i, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.vsock_sock, ptr %sk, i32 0, i32 4, i32 1
  %58 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %bound_table.i.i, ptr %prev.i3.i.i.i, align 4
  %skc_refcnt.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !145
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i, i32 1, i32 3, i32 1) #9
  %59 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i, ptr %skc_refcnt.i.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i) #9, !srcloc !146
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.__vsock_remove_bound.exit.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !144

if.end5.i.i.i.i.i.i.__vsock_remove_bound.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__vsock_remove_bound.exit.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i, i32 noundef 3) #9
  br label %__vsock_remove_bound.exit.i

if.then.i.i.i:                                    ; preds = %list_del_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !147
  call void @sk_free(ptr noundef %sk) #9
  br label %__vsock_remove_bound.exit.i

__vsock_remove_bound.exit.i:                      ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.__vsock_remove_bound.exit.i_crit_edge
  %svm_port30.i = getelementptr inbounds %struct.vsock_sock, ptr %sk, i32 0, i32 2, i32 2
  %60 = ptrtoint ptr %svm_port30.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %svm_port30.i, align 4
  %rem.i = urem i32 %61, 251
  %arrayidx.i = getelementptr [252 x %struct.list_head], ptr @vsock_bind_table, i32 0, i32 %rem.i
  %call.i.i.i.i.i.i.i72.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i, i32 1, i32 3, i32 1) #9
  %62 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i, ptr %skc_refcnt.i.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i) #9, !srcloc !142
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %__vsock_remove_bound.exit.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !143

__vsock_remove_bound.exit.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %__vsock_remove_bound.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %__vsock_remove_bound.exit.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %63 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %63)
  %.not.i.i.i.i.i73.i = icmp sgt i32 %63, -1
  br i1 %.not.i.i.i.i.i73.i, label %if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !144

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_hold.exit.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %__vsock_remove_bound.exit.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %__vsock_remove_bound.exit.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #9
  br label %sock_hold.exit.i.i

sock_hold.exit.i.i:                               ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.sock_hold.exit.i.i_crit_edge
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i.i75.i = call zeroext i1 @__list_add_valid(ptr noundef %bound_table.i.i, ptr noundef %arrayidx.i, ptr noundef %65) #9
  br i1 %call.i.i.i75.i, label %if.end.i.i.i76.i, label %sock_hold.exit.i.i.__vsock_bind_connectible.exit_crit_edge

sock_hold.exit.i.i.__vsock_bind_connectible.exit_crit_edge: ; preds = %sock_hold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__vsock_bind_connectible.exit

if.end.i.i.i76.i:                                 ; preds = %sock_hold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %bound_table.i.i, ptr %prev1.i.i.i.i, align 4
  %67 = ptrtoint ptr %bound_table.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %65, ptr %bound_table.i.i, align 4
  %68 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %arrayidx.i, ptr %prev.i3.i.i.i, align 4
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %bound_table.i.i, ptr %arrayidx.i, align 4
  br label %__vsock_bind_connectible.exit

__vsock_bind_connectible.exit:                    ; preds = %if.end.i.i.i76.i, %sock_hold.exit.i.i.__vsock_bind_connectible.exit_crit_edge, %__vsock_find_bound_socket.exit70.i.__vsock_bind_connectible.exit_crit_edge, %land.lhs.true.i19.__vsock_bind_connectible.exit_crit_edge, %for.cond.i.__vsock_bind_connectible.exit_crit_edge
  %retval.1.i = phi i32 [ -13, %land.lhs.true.i19.__vsock_bind_connectible.exit_crit_edge ], [ -98, %__vsock_find_bound_socket.exit70.i.__vsock_bind_connectible.exit_crit_edge ], [ 0, %sock_hold.exit.i.i.__vsock_bind_connectible.exit_crit_edge ], [ 0, %if.end.i.i.i76.i ], [ -99, %for.cond.i.__vsock_bind_connectible.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %new_addr.i) #9
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @vsock_table_lock) #9
  br label %cleanup

sw.bb7:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %transport.i = getelementptr inbounds %struct.vsock_sock, ptr %sk, i32 0, i32 1
  %70 = ptrtoint ptr %transport.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %transport.i, align 8
  %dgram_bind.i = getelementptr inbounds %struct.vsock_transport, ptr %71, i32 0, i32 6
  %72 = ptrtoint ptr %dgram_bind.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dgram_bind.i, align 4
  %call.i20 = tail call i32 %73(ptr noundef %sk, ptr noundef %addr) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb7, %__vsock_bind_connectible.exit, %if.end5.cleanup_crit_edge, %vsock_find_cid.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -99, %vsock_find_cid.exit.cleanup_crit_edge ], [ %call.i20, %sw.bb7 ], [ %retval.1.i, %__vsock_bind_connectible.exit ], [ -22, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vsock_addr_bound(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsock_auto_bind(ptr noundef %vsk) unnamed_addr #0 align 64 {
entry:
  %local_addr = alloca %struct.sockaddr_vm, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %local_addr) #9
  %local_addr2 = getelementptr inbounds %struct.vsock_sock, ptr %vsk, i32 0, i32 2
  %0 = call ptr @memset(ptr %local_addr, i32 255, i32 16)
  %call = tail call zeroext i1 @vsock_addr_bound(ptr noundef %local_addr2) #9
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @vsock_addr_init(ptr noundef nonnull %local_addr, i32 noundef -1, i32 noundef -1) #9
  %call3 = call fastcc i32 @__vsock_bind(ptr noundef %vsk, ptr noundef nonnull %local_addr)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %local_addr) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsock_connect(ptr nocapture noundef %sock, ptr noundef %addr, i32 noundef %addr_len, i32 noundef %flags) #0 align 64 {
entry:
  %remote_addr = alloca ptr, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remote_addr) #9
  %0 = ptrtoint ptr %remote_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %remote_addr, align 4, !annotation !157
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wait, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !132) #9
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
  store ptr @autoremove_wake_function, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %3, ptr %4, align 4
  %sk5 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %14 = ptrtoint ptr %sk5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk5, align 16
  call void @lock_sock_nested(ptr noundef %15, i32 noundef 0) #9
  %16 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sock, align 128
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %17, label %sw.default [
    i32 3, label %entry.out_crit_edge
    i32 4, label %sw.bb6
    i32 2, label %sw.bb7
  ]

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb7:                                           ; preds = %entry
  %and = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb7.sw.epilog_crit_edge, label %sw.bb7.out_crit_edge

sw.bb7.out_crit_edge:                             ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 4
  %19 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %20)
  %cmp = icmp eq i8 %20, 10
  br i1 %cmp, label %sw.default.out_crit_edge, label %lor.lhs.false

sw.default.out_crit_edge:                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false:                                    ; preds = %sw.default
  %call9 = call i32 @vsock_addr_cast(ptr noundef %addr, i32 noundef %addr_len, ptr noundef nonnull %remote_addr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %if.end13, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end13:                                         ; preds = %lor.lhs.false
  %remote_addr14 = getelementptr inbounds %struct.vsock_sock, ptr %15, i32 0, i32 3
  %21 = ptrtoint ptr %remote_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %remote_addr, align 4
  %23 = call ptr @memcpy(ptr %remote_addr14, ptr %22, i32 16)
  %call15 = call i32 @vsock_assign_transport(ptr noundef %15, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end18:                                         ; preds = %if.end13
  %transport19 = getelementptr inbounds %struct.vsock_sock, ptr %15, i32 0, i32 1
  %24 = ptrtoint ptr %transport19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %transport19, align 8
  %tobool20.not = icmp eq ptr %25, null
  br i1 %tobool20.not, label %if.end18.out_crit_edge, label %lor.lhs.false21

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false21:                                  ; preds = %if.end18
  %stream_allow = getelementptr inbounds %struct.vsock_transport, ptr %25, i32 0, i32 16
  %26 = ptrtoint ptr %stream_allow to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stream_allow, align 4
  %28 = ptrtoint ptr %remote_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %remote_addr, align 4
  %svm_cid = getelementptr inbounds %struct.sockaddr_vm, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %svm_cid to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %svm_cid, align 4
  %svm_port = getelementptr inbounds %struct.sockaddr_vm, ptr %29, i32 0, i32 2
  %32 = ptrtoint ptr %svm_port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %svm_port, align 4
  %call22 = call zeroext i1 %27(i32 noundef %31, i32 noundef %33) #9
  br i1 %call22, label %if.end24, label %lor.lhs.false21.out_crit_edge

lor.lhs.false21.out_crit_edge:                    ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end24:                                         ; preds = %lor.lhs.false21
  %call25 = call fastcc i32 @vsock_auto_bind(ptr noundef %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end28:                                         ; preds = %if.end24
  %34 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %34)
  store volatile i8 2, ptr %skc_state, align 2
  %connect = getelementptr inbounds %struct.vsock_transport, ptr %25, i32 0, i32 5
  %35 = ptrtoint ptr %connect to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %connect, align 4
  %call31 = call i32 %36(ptr noundef %15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end28.out_crit_edge, label %if.end35

if.end28.out_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %sock, align 128
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end35, %sw.bb7.sw.epilog_crit_edge
  %err.0 = phi i32 [ -115, %if.end35 ], [ -114, %sw.bb7.sw.epilog_crit_edge ]
  %connect_timeout = getelementptr inbounds %struct.vsock_sock, ptr %15, i32 0, i32 10
  %38 = ptrtoint ptr %connect_timeout to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %connect_timeout, align 8
  %40 = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 17
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %40, align 8
  call void @prepare_to_wait(ptr noundef %42, ptr noundef nonnull %wait, i32 noundef 1) #9
  %skc_state39 = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 4
  %43 = ptrtoint ptr %skc_state39 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load volatile i8, ptr %skc_state39, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %44)
  %cmp41.not150 = icmp eq i8 %44, 1
  br i1 %cmp41.not150, label %sw.epilog.while.end_crit_edge, label %land.rhs.lr.ph

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %sw.epilog
  %sk_err = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 51
  %and45 = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br label %land.rhs

land.rhs:                                         ; preds = %if.end75.land.rhs_crit_edge, %land.rhs.lr.ph
  %timeout.0151 = phi i32 [ %39, %land.rhs.lr.ph ], [ %call50, %if.end75.land.rhs_crit_edge ]
  %45 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp43 = icmp eq i32 %46, 0
  br i1 %cmp43, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %land.rhs
  br i1 %tobool46.not, label %if.end49, label %if.then47

if.then47:                                        ; preds = %while.body
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 19
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %47 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !142
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then47.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !143

if.then47.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then47
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %48 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %.not.i.i.i.i = icmp sgt i32 %48, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !144

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then47.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then47.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #9
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  %connect_work = getelementptr inbounds %struct.vsock_sock, ptr %15, i32 0, i32 15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %49 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %49, ptr noundef %connect_work, i32 noundef %39) #9
  br label %out_wait

if.end49:                                         ; preds = %while.body
  call void @release_sock(ptr noundef %15) #9
  %call50 = call i32 @schedule_timeout(i32 noundef %timeout.0151) #9
  call void @lock_sock_nested(ptr noundef %15, i32 noundef 0) #9
  %50 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %stack.i.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %53, align 4
  %56 = and i32 %55, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i = icmp eq i32 %56, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end49.if.then55_crit_edge, !prof !144

if.end49.if.then55_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then55

signal_pending.exit:                              ; preds = %if.end49
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %53, align 4
  %and1.i.i.i.i.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool54.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool54.not, label %if.else, label %signal_pending.exit.if.then55_crit_edge

signal_pending.exit.if.then55_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then55

if.then55:                                        ; preds = %signal_pending.exit.if.then55_crit_edge, %if.end49.if.then55_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %call50)
  %cmp.i = icmp eq i32 %call50, 2147483647
  %cond.i = select i1 %cmp.i, i32 -512, i32 -4
  %59 = ptrtoint ptr %skc_state39 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load volatile i8, ptr %skc_state39, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %60)
  %cmp60 = icmp eq i8 %60, 1
  %conv62 = select i1 %cmp60, i8 11, i8 7
  %61 = ptrtoint ptr %skc_state39 to i32
  call void @__asan_store1_noabort(i32 %61)
  store volatile i8 %conv62, ptr %skc_state39, align 2
  %62 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %sock, align 128
  %transport1.i = getelementptr inbounds %struct.vsock_sock, ptr %15, i32 0, i32 1
  %63 = ptrtoint ptr %transport1.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %transport1.i, align 8
  %tobool.not.i129 = icmp eq ptr %64, null
  br i1 %tobool.not.i129, label %if.then55.vsock_transport_cancel_pkt.exit_crit_edge, label %lor.lhs.false.i

if.then55.vsock_transport_cancel_pkt.exit_crit_edge: ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #11
  br label %vsock_transport_cancel_pkt.exit

lor.lhs.false.i:                                  ; preds = %if.then55
  %cancel_pkt.i = getelementptr inbounds %struct.vsock_transport, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %cancel_pkt.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cancel_pkt.i, align 4
  %tobool2.not.i = icmp eq ptr %66, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.vsock_transport_cancel_pkt.exit_crit_edge, label %if.end.i130

lor.lhs.false.i.vsock_transport_cancel_pkt.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vsock_transport_cancel_pkt.exit

if.end.i130:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call i32 %66(ptr noundef %15) #9
  br label %vsock_transport_cancel_pkt.exit

vsock_transport_cancel_pkt.exit:                  ; preds = %if.end.i130, %lor.lhs.false.i.vsock_transport_cancel_pkt.exit_crit_edge, %if.then55.vsock_transport_cancel_pkt.exit_crit_edge
  call void @vsock_remove_connected(ptr noundef %15)
  br label %out_wait

if.else:                                          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp67 = icmp eq i32 %call50, 0
  br i1 %cmp67, label %if.then69, label %if.end75

if.then69:                                        ; preds = %if.else
  %67 = ptrtoint ptr %skc_state39 to i32
  call void @__asan_store1_noabort(i32 %67)
  store volatile i8 7, ptr %skc_state39, align 2
  %68 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %sock, align 128
  %transport1.i131 = getelementptr inbounds %struct.vsock_sock, ptr %15, i32 0, i32 1
  %69 = ptrtoint ptr %transport1.i131 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %transport1.i131, align 8
  %tobool.not.i132 = icmp eq ptr %70, null
  br i1 %tobool.not.i132, label %if.then69.out_wait_crit_edge, label %lor.lhs.false.i135

if.then69.out_wait_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_wait

lor.lhs.false.i135:                               ; preds = %if.then69
  %cancel_pkt.i133 = getelementptr inbounds %struct.vsock_transport, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %cancel_pkt.i133 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %cancel_pkt.i133, align 4
  %tobool2.not.i134 = icmp eq ptr %72, null
  br i1 %tobool2.not.i134, label %lor.lhs.false.i135.out_wait_crit_edge, label %if.end.i137

lor.lhs.false.i135.out_wait_crit_edge:            ; preds = %lor.lhs.false.i135
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_wait

if.end.i137:                                      ; preds = %lor.lhs.false.i135
  call void @__sanitizer_cov_trace_pc() #11
  %call.i136 = call i32 %72(ptr noundef %15) #9
  br label %out_wait

if.end75:                                         ; preds = %if.else
  %73 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile ptr, ptr %40, align 8
  call void @prepare_to_wait(ptr noundef %74, ptr noundef nonnull %wait, i32 noundef 1) #9
  %75 = ptrtoint ptr %skc_state39 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load volatile i8, ptr %skc_state39, align 2
  %cmp41.not = icmp eq i8 %76, 1
  br i1 %cmp41.not, label %if.end75.while.end_crit_edge, label %if.end75.land.rhs_crit_edge

if.end75.land.rhs_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

if.end75.while.end_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end75.while.end_crit_edge, %land.rhs.while.end_crit_edge, %sw.epilog.while.end_crit_edge
  %sk_err77 = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 51
  %77 = ptrtoint ptr %sk_err77 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sk_err77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool78.not = icmp eq i32 %78, 0
  br i1 %tobool78.not, label %while.end.out_wait_crit_edge, label %if.then79

while.end.out_wait_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_wait

if.then79:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 0, %78
  %79 = ptrtoint ptr %skc_state39 to i32
  call void @__asan_store1_noabort(i32 %79)
  store volatile i8 7, ptr %skc_state39, align 2
  %80 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %sock, align 128
  br label %out_wait

out_wait:                                         ; preds = %if.then79, %while.end.out_wait_crit_edge, %if.end.i137, %lor.lhs.false.i135.out_wait_crit_edge, %if.then69.out_wait_crit_edge, %vsock_transport_cancel_pkt.exit, %sock_hold.exit
  %err.1 = phi i32 [ %err.0, %sock_hold.exit ], [ %cond.i, %vsock_transport_cancel_pkt.exit ], [ %sub, %if.then79 ], [ 0, %while.end.out_wait_crit_edge ], [ -110, %if.then69.out_wait_crit_edge ], [ -110, %lor.lhs.false.i135.out_wait_crit_edge ], [ -110, %if.end.i137 ]
  %81 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile ptr, ptr %40, align 8
  call void @finish_wait(ptr noundef %82, ptr noundef nonnull %wait) #9
  br label %out

out:                                              ; preds = %out_wait, %if.end28.out_crit_edge, %if.end24.out_crit_edge, %lor.lhs.false21.out_crit_edge, %if.end18.out_crit_edge, %if.end13.out_crit_edge, %lor.lhs.false.out_crit_edge, %sw.default.out_crit_edge, %sw.bb7.out_crit_edge, %sw.bb6, %entry.out_crit_edge
  %err.2 = phi i32 [ %call15, %if.end13.out_crit_edge ], [ %call25, %if.end24.out_crit_edge ], [ %call31, %if.end28.out_crit_edge ], [ %err.1, %out_wait ], [ -114, %sw.bb7.out_crit_edge ], [ -22, %sw.bb6 ], [ -106, %entry.out_crit_edge ], [ -22, %lor.lhs.false.out_crit_edge ], [ -22, %sw.default.out_crit_edge ], [ -101, %lor.lhs.false21.out_crit_edge ], [ -101, %if.end18.out_crit_edge ]
  call void @release_sock(ptr noundef %15) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remote_addr) #9
  ret i32 %err.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsock_accept(ptr nocapture noundef readonly %sock, ptr noundef %newsock, i32 noundef %flags, i1 noundef zeroext %kern) #0 align 64 {
entry:
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !132) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %13 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk, align 16
  call void @lock_sock_nested(ptr noundef %14, i32 noundef 0) #9
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %type, align 4
  %17 = and i16 %16, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %17)
  %18 = icmp eq i16 %17, 1
  br i1 %18, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 4
  %19 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %20)
  %cmp.not = icmp eq i8 %20, 10
  br i1 %cmp.not, label %if.end8, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end8:                                          ; preds = %if.end
  %and = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false.i, label %if.end8.sock_rcvtimeo.exit_crit_edge

if.end8.sock_rcvtimeo.exit_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_rcvtimeo.exit

cond.false.i:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 62
  %21 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sk_rcvtimeo.i, align 4
  br label %sock_rcvtimeo.exit

sock_rcvtimeo.exit:                               ; preds = %cond.false.i, %if.end8.sock_rcvtimeo.exit_crit_edge
  %cond.i = phi i32 [ %22, %cond.false.i ], [ 0, %if.end8.sock_rcvtimeo.exit_crit_edge ]
  %23 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 17
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %23, align 8
  call void @prepare_to_wait(ptr noundef %25, ptr noundef nonnull %wait, i32 noundef 1) #9
  %call1178 = call fastcc ptr @vsock_dequeue_accept(ptr noundef %14)
  %cmp1279 = icmp eq ptr %call1178, null
  br i1 %cmp1279, label %land.rhs.lr.ph, label %sock_rcvtimeo.exit.while.end_crit_edge

sock_rcvtimeo.exit.while.end_crit_edge:           ; preds = %sock_rcvtimeo.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %sock_rcvtimeo.exit
  %sk_err = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 51
  br label %land.rhs

land.rhs:                                         ; preds = %if.end28.land.rhs_crit_edge, %land.rhs.lr.ph
  %timeout.080 = phi i32 [ %cond.i, %land.rhs.lr.ph ], [ %call16, %if.end28.land.rhs_crit_edge ]
  %26 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp14 = icmp eq i32 %27, 0
  br i1 %cmp14, label %while.body, label %land.rhs.while.end.loopexit_crit_edge

land.rhs.while.end.loopexit_crit_edge:            ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.loopexit

while.body:                                       ; preds = %land.rhs
  call void @release_sock(ptr noundef %14) #9
  %call16 = call i32 @schedule_timeout(i32 noundef %timeout.080) #9
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %23, align 8
  call void @finish_wait(ptr noundef %29, ptr noundef nonnull %wait) #9
  call void @lock_sock_nested(ptr noundef %14, i32 noundef 0) #9
  %30 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stack.i.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %33, align 4
  %36 = and i32 %35, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %while.body.if.then22_crit_edge, !prof !144

while.body.if.then22_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

signal_pending.exit:                              ; preds = %while.body
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %33, align 4
  %and1.i.i.i.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool21.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool21.not, label %if.else, label %signal_pending.exit.if.then22_crit_edge

signal_pending.exit.if.then22_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

if.then22:                                        ; preds = %signal_pending.exit.if.then22_crit_edge, %while.body.if.then22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %call16)
  %cmp.i = icmp eq i32 %call16, 2147483647
  %cond.i67 = select i1 %cmp.i, i32 -512, i32 -4
  br label %out

if.else:                                          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp24 = icmp eq i32 %call16, 0
  br i1 %cmp24, label %if.else.out_crit_edge, label %if.end28

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end28:                                         ; preds = %if.else
  %39 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %23, align 8
  call void @prepare_to_wait(ptr noundef %40, ptr noundef nonnull %wait, i32 noundef 1) #9
  %call11 = call fastcc ptr @vsock_dequeue_accept(ptr noundef %14)
  %cmp12 = icmp eq ptr %call11, null
  br i1 %cmp12, label %if.end28.land.rhs_crit_edge, label %if.end28.while.end.loopexit_crit_edge

if.end28.while.end.loopexit_crit_edge:            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.loopexit

if.end28.land.rhs_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

while.end.loopexit:                               ; preds = %if.end28.while.end.loopexit_crit_edge, %land.rhs.while.end.loopexit_crit_edge
  %call11.lcssa.ph = phi ptr [ null, %land.rhs.while.end.loopexit_crit_edge ], [ %call11, %if.end28.while.end.loopexit_crit_edge ]
  %41 = xor i1 %cmp14, true
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %sock_rcvtimeo.exit.while.end_crit_edge
  %call11.lcssa = phi ptr [ %call1178, %sock_rcvtimeo.exit.while.end_crit_edge ], [ %call11.lcssa.ph, %while.end.loopexit ]
  %cmp12.lcssa = phi i1 [ false, %sock_rcvtimeo.exit.while.end_crit_edge ], [ %41, %while.end.loopexit ]
  %42 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %23, align 8
  call void @finish_wait(ptr noundef %43, ptr noundef nonnull %wait) #9
  %sk_err31 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 51
  %44 = ptrtoint ptr %sk_err31 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sk_err31, align 4
  %sub = sub i32 0, %45
  br i1 %cmp12.lcssa, label %while.end.out_crit_edge, label %if.then37

while.end.out_crit_edge:                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then37:                                        ; preds = %while.end
  %sk_ack_backlog.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 53
  %46 = ptrtoint ptr %sk_ack_backlog.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sk_ack_backlog.i, align 4
  %sub.i = add i32 %47, -1
  store volatile i32 %sub.i, ptr %sk_ack_backlog.i, align 4
  call void @lock_sock_nested(ptr noundef nonnull %call11.lcssa, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool38.not = icmp eq i32 %45, 0
  br i1 %tobool38.not, label %if.else40, label %if.then39

if.then39:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  %rejected = getelementptr inbounds %struct.vsock_sock, ptr %call11.lcssa, i32 0, i32 14
  %48 = ptrtoint ptr %rejected to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %rejected, align 8
  br label %if.end41

if.else40:                                        ; preds = %if.then37
  %49 = ptrtoint ptr %newsock to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3, ptr %newsock, align 128
  %sk1.i = getelementptr inbounds %struct.socket, ptr %newsock, i32 0, i32 4
  %50 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sk1.i, align 16
  %tobool.not.i68 = icmp eq ptr %51, null
  br i1 %tobool.not.i68, label %if.else40.sock_graft.exit_crit_edge, label %do.end.i, !prof !144

if.else40.sock_graft.exit_crit_edge:              ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_graft.exit

do.end.i:                                         ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 2024, i32 noundef 9, ptr noundef null) #9
  br label %sock_graft.exit

sock_graft.exit:                                  ; preds = %do.end.i, %if.else40.sock_graft.exit_crit_edge
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %call11.lcssa, i32 0, i32 50
  call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #9
  %wq.i = getelementptr inbounds %struct.socket, ptr %newsock, i32 0, i32 7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !158
  %52 = getelementptr inbounds %struct.sock, ptr %call11.lcssa, i32 0, i32 17
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %wq.i, ptr %52, align 8
  %54 = ptrtoint ptr %sk1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call11.lcssa, ptr %sk1.i, align 16
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %call11.lcssa, i32 0, i32 71
  %55 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %newsock, ptr %sk_socket.i.i, align 8
  %sk_uid.i = getelementptr inbounds %struct.sock, ptr %call11.lcssa, i32 0, i32 55
  %i_uid.i = getelementptr inbounds %struct.socket_alloc, ptr %newsock, i32 0, i32 1, i32 2
  %56 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %i_uid.i, align 4
  %58 = ptrtoint ptr %sk_uid.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %sk_uid.i, align 4
  call void @security_sock_graft(ptr noundef nonnull %call11.lcssa, ptr noundef %newsock) #9
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #9
  br label %if.end41

if.end41:                                         ; preds = %sock_graft.exit, %if.then39
  call void @release_sock(ptr noundef nonnull %call11.lcssa) #9
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call11.lcssa, i32 0, i32 19
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !145
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #9
  %59 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #9, !srcloc !146
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i, !prof !144

if.end5.i.i.i.i.out_crit_edge:                    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #9
  br label %out

if.then.i:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !147
  call void @sk_free(ptr noundef nonnull %call11.lcssa) #9
  br label %out

out:                                              ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_crit_edge, %while.end.out_crit_edge, %if.else.out_crit_edge, %if.then22, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.1 = phi i32 [ %cond.i67, %if.then22 ], [ %sub, %while.end.out_crit_edge ], [ -95, %entry.out_crit_edge ], [ -22, %if.end.out_crit_edge ], [ %sub, %if.end5.i.i.i.i.out_crit_edge ], [ %sub, %if.then10.i.i.i.i ], [ %sub, %if.then.i ], [ -11, %if.else.out_crit_edge ]
  call void @release_sock(ptr noundef %14) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsock_listen(ptr nocapture noundef readonly %sock, i32 noundef %backlog) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  %sk_type = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sk_type, align 2
  %4 = and i16 %3, -5
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %4)
  %5 = icmp eq i16 %4, 1
  br i1 %5, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sock, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not = icmp eq i32 %7, 1
  br i1 %cmp.not, label %if.end3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end3:                                          ; preds = %if.end
  %local_addr = getelementptr inbounds %struct.vsock_sock, ptr %1, i32 0, i32 2
  %call4 = tail call zeroext i1 @vsock_addr_bound(ptr noundef %local_addr) #9
  br i1 %call4, label %if.end6, label %if.end3.out_crit_edge

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %sk_max_ack_backlog = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 54
  %8 = ptrtoint ptr %sk_max_ack_backlog to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %backlog, ptr %sk_max_ack_backlog, align 8
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %9)
  store volatile i8 10, ptr %skc_state, align 2
  br label %out

out:                                              ; preds = %if.end6, %if.end3.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ 0, %if.end6 ], [ -95, %entry.out_crit_edge ], [ -22, %if.end.out_crit_edge ], [ -22, %if.end3.out_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #9
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsock_connectible_setsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #0 align 64 {
entry:
  %val = alloca i64, align 8
  %tv = alloca %struct.__kernel_sock_timeval, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %val, align 8, !annotation !157
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %level)
  %cmp.not = icmp eq i32 %level, 40
  br i1 %cmp.not, label %if.end, label %entry.cleanup55_crit_edge

entry.cleanup55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup55

if.end:                                           ; preds = %entry
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %1 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %2, i32 noundef 0) #9
  %transport2 = getelementptr inbounds %struct.vsock_sock, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %transport2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %transport2, align 8
  %5 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %optname, label %if.end.exit_crit_edge [
    i32 0, label %do.body
    i32 2, label %do.body10
    i32 1, label %do.body21
    i32 8, label %if.end.sw.bb32_crit_edge
    i32 6, label %if.end.sw.bb32_crit_edge162
  ]

if.end.sw.bb32_crit_edge162:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

if.end.sw.bb32_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %optlen)
  %cmp3 = icmp ult i32 %optlen, 8
  br i1 %cmp3, label %do.body.exit_crit_edge, label %if.end5

do.body.exit_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end5:                                          ; preds = %do.body
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %6 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end5
  tail call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 156) #9
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i.i, label %if.then.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.i.i.if.then11.i.i.i.i_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i.i.i
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 8, i32 -1226833920) #13, !srcloc !159
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i1.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i1.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !144

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val, i32 noundef 8) #9
  %8 = call i32 @llvm.read_register.i32(metadata !132) #9
  %and.i.i.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #6, !srcloc !153
  %and.i.i.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #9, !srcloc !154
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %val, ptr noundef %6, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #9, !srcloc !154
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.do.end_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !144

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.do.end_crit_edge:                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.then.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.03.i.i.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 8, %if.then.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 8, %res.03.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %val, i32 %sub.i.i.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.03.i.i.i.i)
  br label %exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %6, align 1
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %val, align 8
  br label %do.end

do.end:                                           ; preds = %if.end.i.i, %if.end.i.i.i.i.do.end_crit_edge
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %val, align 8
  call fastcc void @vsock_update_buffer_size(ptr noundef %2, ptr noundef %4, i64 noundef %16)
  br label %exit

do.body10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %optlen)
  %cmp11 = icmp ult i32 %optlen, 8
  br i1 %cmp11, label %do.body10.exit_crit_edge, label %if.end13

do.body10.exit_crit_edge:                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end13:                                         ; preds = %do.body10
  %src.coerce.fca.0.extract.i.i104 = extractvalue [2 x i32] %optval.coerce, 0
  %17 = inttoptr i32 %src.coerce.fca.0.extract.i.i104 to ptr
  %sockptr.coerce.fca.1.extract.i.i.i105 = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i105)
  %bf.cast.i.i.i106 = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i105, 0
  br i1 %bf.cast.i.i.i106, label %if.end.i.i127, label %if.then.i.i.i111

if.then.i.i.i111:                                 ; preds = %if.end13
  tail call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 156) #9
  %call.i.i.i.i110 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i.i110, label %if.then.i.i.i111.if.then11.i.i.i.i126_crit_edge, label %land.lhs.true.i.i.i.i114

if.then.i.i.i111.if.then11.i.i.i.i126_crit_edge:  ; preds = %if.then.i.i.i111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i126

land.lhs.true.i.i.i.i114:                         ; preds = %if.then.i.i.i111
  %18 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 8, i32 -1226833920) #13, !srcloc !159
  %asmresult.i.i.i.i112 = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i112)
  %cmp.i1.i.i.i113 = icmp eq i32 %asmresult.i.i.i.i112, 0
  br i1 %cmp.i1.i.i.i113, label %if.end.i.i.i.i122, label %land.lhs.true.i.i.i.i114.if.then11.i.i.i.i126_crit_edge, !prof !144

land.lhs.true.i.i.i.i114.if.then11.i.i.i.i126_crit_edge: ; preds = %land.lhs.true.i.i.i.i114
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i126

if.end.i.i.i.i122:                                ; preds = %land.lhs.true.i.i.i.i114
  %call.i.i.i.i.i115 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val, i32 noundef 8) #9
  %19 = call i32 @llvm.read_register.i32(metadata !132) #9
  %and.i.i.i.i.i.i.i.i116 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i.i.i116 to ptr
  %cpu_domain.i.i.i.i.i.i.i117 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i117) #6, !srcloc !153
  %and.i.i.i.i.i.i118 = and i32 %21, -13
  %or.i.i.i.i.i.i119 = or i32 %and.i.i.i.i.i.i118, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i119) #9, !srcloc !154
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  %call1.i.i.i.i.i120 = call i32 @arm_copy_from_user(ptr noundef nonnull %val, ptr noundef %17, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #9, !srcloc !154
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i120)
  %tobool4.not.i.i.i.i121 = icmp eq i32 %call1.i.i.i.i.i120, 0
  br i1 %tobool4.not.i.i.i.i121, label %if.end.i.i.i.i122.do.end19_crit_edge, label %if.end.i.i.i.i122.if.then11.i.i.i.i126_crit_edge, !prof !144

if.end.i.i.i.i122.if.then11.i.i.i.i126_crit_edge: ; preds = %if.end.i.i.i.i122
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i126

if.end.i.i.i.i122.do.end19_crit_edge:             ; preds = %if.end.i.i.i.i122
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end19

if.then11.i.i.i.i126:                             ; preds = %if.end.i.i.i.i122.if.then11.i.i.i.i126_crit_edge, %land.lhs.true.i.i.i.i114.if.then11.i.i.i.i126_crit_edge, %if.then.i.i.i111.if.then11.i.i.i.i126_crit_edge
  %res.03.i.i.i.i123 = phi i32 [ %call1.i.i.i.i.i120, %if.end.i.i.i.i122.if.then11.i.i.i.i126_crit_edge ], [ 8, %if.then.i.i.i111.if.then11.i.i.i.i126_crit_edge ], [ 8, %land.lhs.true.i.i.i.i114.if.then11.i.i.i.i126_crit_edge ]
  %sub.i.i.i.i124 = sub i32 8, %res.03.i.i.i.i123
  %add.ptr.i.i.i.i125 = getelementptr i8, ptr %val, i32 %sub.i.i.i.i124
  %22 = call ptr @memset(ptr %add.ptr.i.i.i.i125, i32 0, i32 %res.03.i.i.i.i123)
  br label %exit

if.end.i.i127:                                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %17, align 1
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %val, align 8
  br label %do.end19

do.end19:                                         ; preds = %if.end.i.i127, %if.end.i.i.i.i122.do.end19_crit_edge
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %val, align 8
  %buffer_max_size = getelementptr inbounds %struct.vsock_sock, ptr %2, i32 0, i32 24
  %28 = ptrtoint ptr %buffer_max_size to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %buffer_max_size, align 8
  %buffer_size = getelementptr inbounds %struct.vsock_sock, ptr %2, i32 0, i32 22
  %29 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %buffer_size, align 8
  call fastcc void @vsock_update_buffer_size(ptr noundef %2, ptr noundef %4, i64 noundef %30)
  br label %exit

do.body21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %optlen)
  %cmp22 = icmp ult i32 %optlen, 8
  br i1 %cmp22, label %do.body21.exit_crit_edge, label %if.end24

do.body21.exit_crit_edge:                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end24:                                         ; preds = %do.body21
  %src.coerce.fca.0.extract.i.i130 = extractvalue [2 x i32] %optval.coerce, 0
  %31 = inttoptr i32 %src.coerce.fca.0.extract.i.i130 to ptr
  %sockptr.coerce.fca.1.extract.i.i.i131 = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i131)
  %bf.cast.i.i.i132 = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i131, 0
  br i1 %bf.cast.i.i.i132, label %if.end.i.i153, label %if.then.i.i.i137

if.then.i.i.i137:                                 ; preds = %if.end24
  tail call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 156) #9
  %call.i.i.i.i136 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i.i136, label %if.then.i.i.i137.if.then11.i.i.i.i152_crit_edge, label %land.lhs.true.i.i.i.i140

if.then.i.i.i137.if.then11.i.i.i.i152_crit_edge:  ; preds = %if.then.i.i.i137
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i152

land.lhs.true.i.i.i.i140:                         ; preds = %if.then.i.i.i137
  %32 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %31, i32 8, i32 -1226833920) #13, !srcloc !159
  %asmresult.i.i.i.i138 = extractvalue { i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i138)
  %cmp.i1.i.i.i139 = icmp eq i32 %asmresult.i.i.i.i138, 0
  br i1 %cmp.i1.i.i.i139, label %if.end.i.i.i.i148, label %land.lhs.true.i.i.i.i140.if.then11.i.i.i.i152_crit_edge, !prof !144

land.lhs.true.i.i.i.i140.if.then11.i.i.i.i152_crit_edge: ; preds = %land.lhs.true.i.i.i.i140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i152

if.end.i.i.i.i148:                                ; preds = %land.lhs.true.i.i.i.i140
  %call.i.i.i.i.i141 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val, i32 noundef 8) #9
  %33 = call i32 @llvm.read_register.i32(metadata !132) #9
  %and.i.i.i.i.i.i.i.i142 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i.i.i.i142 to ptr
  %cpu_domain.i.i.i.i.i.i.i143 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 4
  %35 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i143) #6, !srcloc !153
  %and.i.i.i.i.i.i144 = and i32 %35, -13
  %or.i.i.i.i.i.i145 = or i32 %and.i.i.i.i.i.i144, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i145) #9, !srcloc !154
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  %call1.i.i.i.i.i146 = call i32 @arm_copy_from_user(ptr noundef nonnull %val, ptr noundef %31, i32 noundef 8) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %35) #9, !srcloc !154
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i146)
  %tobool4.not.i.i.i.i147 = icmp eq i32 %call1.i.i.i.i.i146, 0
  br i1 %tobool4.not.i.i.i.i147, label %if.end.i.i.i.i148.do.end30_crit_edge, label %if.end.i.i.i.i148.if.then11.i.i.i.i152_crit_edge, !prof !144

if.end.i.i.i.i148.if.then11.i.i.i.i152_crit_edge: ; preds = %if.end.i.i.i.i148
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i152

if.end.i.i.i.i148.do.end30_crit_edge:             ; preds = %if.end.i.i.i.i148
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

if.then11.i.i.i.i152:                             ; preds = %if.end.i.i.i.i148.if.then11.i.i.i.i152_crit_edge, %land.lhs.true.i.i.i.i140.if.then11.i.i.i.i152_crit_edge, %if.then.i.i.i137.if.then11.i.i.i.i152_crit_edge
  %res.03.i.i.i.i149 = phi i32 [ %call1.i.i.i.i.i146, %if.end.i.i.i.i148.if.then11.i.i.i.i152_crit_edge ], [ 8, %if.then.i.i.i137.if.then11.i.i.i.i152_crit_edge ], [ 8, %land.lhs.true.i.i.i.i140.if.then11.i.i.i.i152_crit_edge ]
  %sub.i.i.i.i150 = sub i32 8, %res.03.i.i.i.i149
  %add.ptr.i.i.i.i151 = getelementptr i8, ptr %val, i32 %sub.i.i.i.i150
  %36 = call ptr @memset(ptr %add.ptr.i.i.i.i151, i32 0, i32 %res.03.i.i.i.i149)
  br label %exit

if.end.i.i153:                                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %31 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %38 = load i64, ptr %31, align 1
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %val, align 8
  br label %do.end30

do.end30:                                         ; preds = %if.end.i.i153, %if.end.i.i.i.i148.do.end30_crit_edge
  %40 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %val, align 8
  %buffer_min_size = getelementptr inbounds %struct.vsock_sock, ptr %2, i32 0, i32 23
  %42 = ptrtoint ptr %buffer_min_size to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %buffer_min_size, align 8
  %buffer_size31 = getelementptr inbounds %struct.vsock_sock, ptr %2, i32 0, i32 22
  %43 = ptrtoint ptr %buffer_size31 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %buffer_size31, align 8
  call fastcc void @vsock_update_buffer_size(ptr noundef %2, ptr noundef %4, i64 noundef %44)
  br label %exit

sw.bb32:                                          ; preds = %if.end.sw.bb32_crit_edge, %if.end.sw.bb32_crit_edge162
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tv) #9
  %45 = getelementptr inbounds %struct.__kernel_sock_timeval, ptr %tv, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %optname)
  %cmp33 = icmp eq i32 %optname, 6
  %46 = call ptr @memset(ptr %tv, i32 255, i32 16)
  %call34 = call i32 @sock_copy_user_timeval(ptr noundef nonnull %tv, [2 x i32] %optval.coerce, i32 noundef %optlen, i1 noundef zeroext %cmp33) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool.not = icmp eq i32 %call34, 0
  br i1 %tobool.not, label %if.end36, label %sw.bb32.cleanup_crit_edge

sw.bb32.cleanup_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end36:                                         ; preds = %sw.bb32
  %47 = ptrtoint ptr %tv to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %tv, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %48)
  %cmp37 = icmp sgt i64 %48, -1
  br i1 %cmp37, label %land.lhs.true, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end36
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %45, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1000000, i64 %50)
  %cmp38 = icmp slt i64 %50, 1000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 21474835, i64 %48)
  %cmp41 = icmp ult i64 %48, 21474835
  %or.cond = select i1 %cmp38, i1 %cmp41, i1 false
  br i1 %or.cond, label %if.then42, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i64 %50 to i32
  %sub = add i32 %conv, 9999
  %div = udiv i32 %sub, 10000
  %51 = trunc i64 %48 to i32
  %52 = mul nuw nsw i32 %51, 100
  %conv47 = add nuw i32 %div, %52
  %connect_timeout = getelementptr inbounds %struct.vsock_sock, ptr %2, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv47)
  %cmp49 = icmp eq i32 %conv47, 0
  %spec.store.select = select i1 %cmp49, i32 200, i32 %conv47
  %53 = ptrtoint ptr %connect_timeout to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %spec.store.select, ptr %connect_timeout, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %land.lhs.true.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %sw.bb32.cleanup_crit_edge
  %err.1 = phi i32 [ %call34, %sw.bb32.cleanup_crit_edge ], [ 0, %if.then42 ], [ -34, %land.lhs.true.cleanup_crit_edge ], [ -34, %if.end36.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tv) #9
  br label %exit

exit:                                             ; preds = %cleanup, %do.end30, %if.then11.i.i.i.i152, %do.body21.exit_crit_edge, %do.end19, %if.then11.i.i.i.i126, %do.body10.exit_crit_edge, %do.end, %if.then11.i.i.i.i, %do.body.exit_crit_edge, %if.end.exit_crit_edge
  %err.2 = phi i32 [ %err.1, %cleanup ], [ 0, %do.end30 ], [ 0, %do.end19 ], [ 0, %do.end ], [ -22, %do.body.exit_crit_edge ], [ -22, %do.body10.exit_crit_edge ], [ -22, %do.body21.exit_crit_edge ], [ -92, %if.end.exit_crit_edge ], [ -14, %if.then11.i.i.i.i ], [ -14, %if.then11.i.i.i.i126 ], [ -14, %if.then11.i.i.i.i152 ]
  call void @release_sock(ptr noundef %2) #9
  br label %cleanup55

cleanup55:                                        ; preds = %exit, %entry.cleanup55_crit_edge
  %retval.0 = phi i32 [ %err.2, %exit ], [ -92, %entry.cleanup55_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsock_connectible_getsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #0 align 64 {
entry:
  %v = alloca %union.anon.146, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %v) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %level)
  %cmp.not = icmp eq i32 %level, 40
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 1681) #9
  %2 = tail call i32 @llvm.read_register.i32(metadata !132) #9
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !153
  %and.i = and i32 %4, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #9, !srcloc !160
  %asmresult = extractvalue { i32, i32 } %5, 0
  %asmresult2 = extractvalue { i32, i32 } %5, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #9, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = call ptr @memset(ptr %v, i32 0, i32 16)
  %7 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %optname, label %if.end5.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb6
    i32 1, label %sw.bb7
    i32 8, label %if.end5.sw.bb8_crit_edge
    i32 6, label %if.end5.sw.bb8_crit_edge53
  ]

if.end5.sw.bb8_crit_edge53:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8

if.end5.sw.bb8_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %buffer_size = getelementptr inbounds %struct.vsock_sock, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %buffer_size, align 8
  %10 = ptrtoint ptr %v to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %v, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %buffer_max_size = getelementptr inbounds %struct.vsock_sock, ptr %1, i32 0, i32 24
  %11 = ptrtoint ptr %buffer_max_size to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %buffer_max_size, align 8
  %13 = ptrtoint ptr %v to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %v, align 8
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %buffer_min_size = getelementptr inbounds %struct.vsock_sock, ptr %1, i32 0, i32 23
  %14 = ptrtoint ptr %buffer_min_size to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %buffer_min_size, align 8
  %16 = ptrtoint ptr %v to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %v, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end5.sw.bb8_crit_edge, %if.end5.sw.bb8_crit_edge53
  %connect_timeout = getelementptr inbounds %struct.vsock_sock, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %connect_timeout to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %connect_timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %optname)
  %cmp9 = icmp eq i32 %optname, 6
  %call10 = call i32 @sock_get_timeout(i32 noundef %18, ptr noundef nonnull %v, i1 noundef zeroext %cmp9) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb
  %lv.0 = phi i32 [ %call10, %sw.bb8 ], [ 8, %sw.bb7 ], [ 8, %sw.bb6 ], [ 8, %sw.bb ]
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult2, i32 %lv.0)
  %cmp11 = icmp slt i32 %asmresult2, %lv.0
  br i1 %cmp11, label %sw.epilog.cleanup_crit_edge, label %if.end13

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %lv.0)
  %cmp1.i.i = icmp ugt i32 %lv.0, 16
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !143

if.then3.i.i:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.25, i32 noundef 16, i32 noundef %lv.0) #9
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end13
  call void @__check_object_size(ptr noundef nonnull %v, i32 noundef %lv.0, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.26, i32 noundef 174) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %19 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %lv.0, i32 -1226833920) #13, !srcloc !161
  %asmresult.i.i = extractvalue { i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %v, i32 noundef %lv.0) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %v, i32 noundef %lv.0) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %lv.0, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %lv.0, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool18.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool18.not, label %if.end20, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 1716) #9
  %20 = call i32 @llvm.read_register.i32(metadata !132) #9
  %and.i.i.i47 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i47 to ptr
  %cpu_domain.i.i48 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i48) #6, !srcloc !153
  %and.i49 = and i32 %22, -13
  %or.i50 = or i32 %and.i49, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i50) #9, !srcloc !154
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  %23 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 %lv.0, i32 -1226833921) #9, !srcloc !162
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #9, !srcloc !154
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !155
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool30.not = icmp eq i32 %23, 0
  %. = select i1 %tobool30.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %copy_to_user.exit.cleanup_crit_edge, %if.then3.i.i, %sw.epilog.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -92, %entry.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ -92, %if.end5.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ %., %if.end20 ], [ -14, %if.then3.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %v) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsock_connectible_sendmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len) #0 align 64 {
entry:
  %send_data = alloca %struct.vsock_transport_send_notify_data, align 8
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_data) #9
  %0 = call ptr @memset(ptr %send_data, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wait, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !132) #9
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
  store ptr @woken_wake_function, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %3, ptr %3, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %3, ptr %4, align 4
  %sk4 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %14 = ptrtoint ptr %sk4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk4, align 16
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %16 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_flags, align 4
  %and = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup138_crit_edge

entry.cleanup138_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup138

if.end:                                           ; preds = %entry
  call void @lock_sock_nested(ptr noundef %15, i32 noundef 0) #9
  %transport5 = getelementptr inbounds %struct.vsock_sock, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %transport5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %transport5, align 8
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %20 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_namelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool6.not = icmp eq i32 %21, 0
  br i1 %tobool6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 4
  %22 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp = icmp eq i8 %23, 1
  %cond = select i1 %cmp, i32 -106, i32 -95
  br label %out

if.end9:                                          ; preds = %if.end
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 66
  %24 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %sk_shutdown, align 2
  %26 = and i8 %25, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool12.not = icmp eq i8 %26, 0
  br i1 %tobool12.not, label %lor.lhs.false, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false:                                    ; preds = %if.end9
  %peer_shutdown = getelementptr inbounds %struct.vsock_sock, ptr %15, i32 0, i32 19
  %27 = ptrtoint ptr %peer_shutdown to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %peer_shutdown, align 4
  %and13 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end16, label %lor.lhs.false.out_crit_edge

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end16:                                         ; preds = %lor.lhs.false
  %tobool17.not = icmp eq ptr %19, null
  br i1 %tobool17.not, label %if.end16.out_crit_edge, label %lor.lhs.false18

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false18:                                  ; preds = %if.end16
  %skc_state20 = getelementptr inbounds %struct.sock_common, ptr %15, i32 0, i32 4
  %29 = ptrtoint ptr %skc_state20 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load volatile i8, ptr %skc_state20, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp22.not = icmp eq i8 %30, 1
  br i1 %cmp22.not, label %lor.lhs.false24, label %lor.lhs.false18.out_crit_edge

lor.lhs.false18.out_crit_edge:                    ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false24:                                  ; preds = %lor.lhs.false18
  %local_addr = getelementptr inbounds %struct.vsock_sock, ptr %15, i32 0, i32 2
  %call25 = call zeroext i1 @vsock_addr_bound(ptr noundef %local_addr) #9
  br i1 %call25, label %if.end27, label %lor.lhs.false24.out_crit_edge

lor.lhs.false24.out_crit_edge:                    ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end27:                                         ; preds = %lor.lhs.false24
  %remote_addr = getelementptr inbounds %struct.vsock_sock, ptr %15, i32 0, i32 3
  %call28 = call zeroext i1 @vsock_addr_bound(ptr noundef %remote_addr) #9
  br i1 %call28, label %if.end30, label %if.end27.out_crit_edge

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end30:                                         ; preds = %if.end27
  %31 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_flags, align 4
  %and32 = and i32 %32, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %cond.false.i, label %if.end30.sock_sndtimeo.exit_crit_edge

if.end30.sock_sndtimeo.exit_crit_edge:            ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_sndtimeo.exit

cond.false.i:                                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %sk_sndtimeo.i = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 31
  %33 = ptrtoint ptr %sk_sndtimeo.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sk_sndtimeo.i, align 8
  br label %sock_sndtimeo.exit

sock_sndtimeo.exit:                               ; preds = %cond.false.i, %if.end30.sock_sndtimeo.exit_crit_edge
  %cond.i = phi i32 [ %34, %cond.false.i ], [ 0, %if.end30.sock_sndtimeo.exit_crit_edge ]
  %notify_send_init = getelementptr inbounds %struct.vsock_transport, ptr %19, i32 0, i32 27
  %35 = ptrtoint ptr %notify_send_init to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %notify_send_init, align 4
  %call35 = call i32 %36(ptr noundef %15, ptr noundef nonnull %send_data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp40234.not = icmp eq i32 %len, 0
  %or.cond277 = or i1 %cmp36, %cmp40234.not
  br i1 %or.cond277, label %sock_sndtimeo.exit.out_crit_edge, label %while.body.lr.ph

sock_sndtimeo.exit.out_crit_edge:                 ; preds = %sock_sndtimeo.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

while.body.lr.ph:                                 ; preds = %sock_sndtimeo.exit
  %37 = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 17
  %sk_err = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 51
  %notify_send_pre_block = getelementptr inbounds %struct.vsock_transport, ptr %19, i32 0, i32 28
  %notify_send_pre_enqueue = getelementptr inbounds %struct.vsock_transport, ptr %19, i32 0, i32 29
  %sk_type = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 45
  %stream_enqueue = getelementptr inbounds %struct.vsock_transport, ptr %19, i32 0, i32 11
  %seqpacket_enqueue = getelementptr inbounds %struct.vsock_transport, ptr %19, i32 0, i32 18
  %notify_send_post_enqueue = getelementptr inbounds %struct.vsock_transport, ptr %19, i32 0, i32 30
  br label %while.body

while.body:                                       ; preds = %if.end118.while.body_crit_edge, %while.body.lr.ph
  %timeout.0236 = phi i32 [ %cond.i, %while.body.lr.ph ], [ %timeout.1, %if.end118.while.body_crit_edge ]
  %total_written.0235 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %if.end118.while.body_crit_edge ]
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %37, align 8
  call void @add_wait_queue(ptr noundef %39, ptr noundef nonnull %wait) #9
  br label %while.cond43

while.cond43:                                     ; preds = %if.else.while.cond43_crit_edge, %while.body
  %timeout.1 = phi i32 [ %timeout.0236, %while.body ], [ %call69, %if.else.while.cond43_crit_edge ]
  %40 = ptrtoint ptr %transport5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %transport5, align 8
  %stream_has_space.i = getelementptr inbounds %struct.vsock_transport, ptr %41, i32 0, i32 13
  %42 = ptrtoint ptr %stream_has_space.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %stream_has_space.i, align 4
  %call.i = call i64 %43(ptr noundef %15) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call.i)
  %cmp45 = icmp eq i64 %call.i, 0
  br i1 %cmp45, label %land.lhs.true, label %while.cond43.while.end_crit_edge

while.cond43.while.end_crit_edge:                 ; preds = %while.cond43
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.lhs.true:                                    ; preds = %while.cond43
  %44 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp47 = icmp eq i32 %45, 0
  br i1 %cmp47, label %land.lhs.true49, label %land.lhs.true.while.end_crit_edge

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.lhs.true49:                                  ; preds = %land.lhs.true
  %46 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %sk_shutdown, align 2
  %48 = and i8 %47, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool53.not = icmp eq i8 %48, 0
  br i1 %tobool53.not, label %land.rhs, label %land.lhs.true49.while.end_crit_edge

land.lhs.true49.while.end_crit_edge:              ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs:                                         ; preds = %land.lhs.true49
  %49 = ptrtoint ptr %peer_shutdown to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %peer_shutdown, align 4
  %and55 = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %while.body57, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body57:                                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.1)
  %cmp58 = icmp eq i32 %timeout.1, 0
  br i1 %cmp58, label %if.then60, label %if.end62

if.then60:                                        ; preds = %while.body57
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %37, align 8
  call void @remove_wait_queue(ptr noundef %52, ptr noundef nonnull %wait) #9
  br label %out_err

if.end62:                                         ; preds = %while.body57
  %53 = ptrtoint ptr %notify_send_pre_block to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %notify_send_pre_block, align 4
  %call63 = call i32 %54(ptr noundef %15, ptr noundef nonnull %send_data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %37, align 8
  call void @remove_wait_queue(ptr noundef %56, ptr noundef nonnull %wait) #9
  br label %out_err

if.end68:                                         ; preds = %if.end62
  call void @release_sock(ptr noundef %15) #9
  %call69 = call i32 @wait_woken(ptr noundef nonnull %wait, i32 noundef 1, i32 noundef %timeout.1) #9
  call void @lock_sock_nested(ptr noundef %15, i32 noundef 0) #9
  %57 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %stack.i.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %60, align 4
  %63 = and i32 %62, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i = icmp eq i32 %63, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end68.if.then74_crit_edge, !prof !144

if.end68.if.then74_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then74

signal_pending.exit:                              ; preds = %if.end68
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %60, align 4
  %and1.i.i.i.i.i = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool73.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool73.not, label %if.else, label %signal_pending.exit.if.then74_crit_edge

signal_pending.exit.if.then74_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then74

if.then74:                                        ; preds = %signal_pending.exit.if.then74_crit_edge, %if.end68.if.then74_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %call69)
  %cmp.i = icmp eq i32 %call69, 2147483647
  %cond.i210 = select i1 %cmp.i, i32 -512, i32 -4
  %66 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %37, align 8
  call void @remove_wait_queue(ptr noundef %67, ptr noundef nonnull %wait) #9
  br label %out_err

if.else:                                          ; preds = %signal_pending.exit
  %cmp77 = icmp eq i32 %call69, 0
  br i1 %cmp77, label %if.then79, label %if.else.while.cond43_crit_edge

if.else.while.cond43_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond43

if.then79:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %37, align 8
  call void @remove_wait_queue(ptr noundef %69, ptr noundef nonnull %wait) #9
  br label %out_err

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %land.lhs.true49.while.end_crit_edge, %land.lhs.true.while.end_crit_edge, %while.cond43.while.end_crit_edge
  %70 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile ptr, ptr %37, align 8
  call void @remove_wait_queue(ptr noundef %71, ptr noundef nonnull %wait) #9
  %72 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool85.not = icmp eq i32 %73, 0
  br i1 %tobool85.not, label %if.else88, label %if.then86

if.then86:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 0, %73
  br label %out_err

if.else88:                                        ; preds = %while.end
  %74 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %sk_shutdown, align 2
  %76 = and i8 %75, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool92.not = icmp eq i8 %76, 0
  br i1 %tobool92.not, label %lor.lhs.false93, label %if.else88.out_err_crit_edge

if.else88.out_err_crit_edge:                      ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

lor.lhs.false93:                                  ; preds = %if.else88
  %77 = ptrtoint ptr %peer_shutdown to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %peer_shutdown, align 4
  %and95 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end99, label %lor.lhs.false93.out_err_crit_edge

lor.lhs.false93.out_err_crit_edge:                ; preds = %lor.lhs.false93
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

if.end99:                                         ; preds = %lor.lhs.false93
  %79 = ptrtoint ptr %notify_send_pre_enqueue to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %notify_send_pre_enqueue, align 4
  %call100 = call i32 %80(ptr noundef %15, ptr noundef nonnull %send_data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %if.end99.out_err_crit_edge, label %if.end104

if.end99.out_err_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

if.end104:                                        ; preds = %if.end99
  %81 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %82)
  %cmp106 = icmp eq i16 %82, 5
  %seqpacket_enqueue.stream_enqueue = select i1 %cmp106, ptr %seqpacket_enqueue, ptr %stream_enqueue
  %83 = ptrtoint ptr %seqpacket_enqueue.stream_enqueue to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %seqpacket_enqueue.stream_enqueue, align 4
  %sub112 = sub i32 %len, %total_written.0235
  %call113 = call i32 %84(ptr noundef %15, ptr noundef %msg, i32 noundef %sub112) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp115 = icmp slt i32 %call113, 0
  br i1 %cmp115, label %if.end104.out_err_crit_edge, label %if.end118

if.end104.out_err_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

if.end118:                                        ; preds = %if.end104
  %add = add i32 %call113, %total_written.0235
  %85 = ptrtoint ptr %notify_send_post_enqueue to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %notify_send_post_enqueue, align 4
  %call119 = call i32 %86(ptr noundef %15, i32 noundef %call113, ptr noundef nonnull %send_data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call119)
  %cmp120 = icmp sgt i32 %call119, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %len)
  %cmp40 = icmp ult i32 %add, %len
  %or.cond278 = select i1 %cmp120, i1 %cmp40, i1 false
  br i1 %or.cond278, label %if.end118.while.body_crit_edge, label %if.end118.out_err_crit_edge

if.end118.out_err_crit_edge:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_err

if.end118.while.body_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

out_err:                                          ; preds = %if.end118.out_err_crit_edge, %if.end104.out_err_crit_edge, %if.end99.out_err_crit_edge, %lor.lhs.false93.out_err_crit_edge, %if.else88.out_err_crit_edge, %if.then86, %if.then79, %if.then74, %if.then66, %if.then60
  %total_written.2 = phi i32 [ %total_written.0235, %if.then79 ], [ %total_written.0235, %if.then74 ], [ %total_written.0235, %if.then66 ], [ %total_written.0235, %if.then60 ], [ %total_written.0235, %if.then86 ], [ %total_written.0235, %lor.lhs.false93.out_err_crit_edge ], [ %total_written.0235, %if.else88.out_err_crit_edge ], [ %total_written.0235, %if.end99.out_err_crit_edge ], [ %total_written.0235, %if.end104.out_err_crit_edge ], [ %add, %if.end118.out_err_crit_edge ]
  %err.2 = phi i32 [ -11, %if.then79 ], [ %cond.i210, %if.then74 ], [ %call63, %if.then66 ], [ -11, %if.then60 ], [ %sub, %if.then86 ], [ -32, %lor.lhs.false93.out_err_crit_edge ], [ -32, %if.else88.out_err_crit_edge ], [ %call100, %if.end99.out_err_crit_edge ], [ -12, %if.end104.out_err_crit_edge ], [ %call119, %if.end118.out_err_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_written.2)
  %cmp125 = icmp sgt i32 %total_written.2, 0
  br i1 %cmp125, label %if.then127, label %out_err.out_crit_edge

out_err.out_crit_edge:                            ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.then127:                                       ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #11
  %sk_type128 = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 45
  %87 = ptrtoint ptr %sk_type128 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %sk_type128, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %88)
  %cmp130 = icmp eq i16 %88, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %total_written.2, i32 %len)
  %cmp133 = icmp eq i32 %total_written.2, %len
  %or.cond = select i1 %cmp130, i1 true, i1 %cmp133
  %spec.select = select i1 %or.cond, i32 %total_written.2, i32 %err.2
  br label %out

out:                                              ; preds = %if.then127, %out_err.out_crit_edge, %sock_sndtimeo.exit.out_crit_edge, %if.end27.out_crit_edge, %lor.lhs.false24.out_crit_edge, %lor.lhs.false18.out_crit_edge, %if.end16.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end9.out_crit_edge, %if.then7
  %err.3 = phi i32 [ %cond, %if.then7 ], [ %call35, %sock_sndtimeo.exit.out_crit_edge ], [ %err.2, %out_err.out_crit_edge ], [ -32, %lor.lhs.false.out_crit_edge ], [ -32, %if.end9.out_crit_edge ], [ -107, %lor.lhs.false24.out_crit_edge ], [ -107, %lor.lhs.false18.out_crit_edge ], [ -107, %if.end16.out_crit_edge ], [ -89, %if.end27.out_crit_edge ], [ %spec.select, %if.then127 ]
  call void @release_sock(ptr noundef %15) #9
  br label %cleanup138

cleanup138:                                       ; preds = %out, %entry.cleanup138_crit_edge
  %retval.0 = phi i32 [ %err.3, %out ], [ -95, %entry.cleanup138_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_data) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsock_connectible_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  %wait.i44 = alloca %struct.wait_queue_entry, align 4
  %recv_data.i = alloca %struct.vsock_transport_recv_notify_data, align 8
  %wait.i = alloca %struct.wait_queue_entry, align 4
  %wait = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait) #9
  %0 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 1
  %1 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 2
  %2 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wait, align 4
  %5 = tail call i32 @llvm.read_register.i32(metadata !132) #9
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %task, align 8
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @autoremove_wake_function, ptr %1, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %2, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %2, ptr %3, align 4
  %sk5 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %13 = ptrtoint ptr %sk5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk5, align 16
  call void @lock_sock_nested(ptr noundef %14, i32 noundef 0) #9
  %transport6 = getelementptr inbounds %struct.vsock_sock, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %transport6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %transport6, align 8
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 4
  %17 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp.not = icmp eq i8 %18, 1
  br i1 %cmp.not, label %if.end10, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %19 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 13
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %22 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not = icmp eq i32 %22, 0
  %. = select i1 %tobool.i.not, i32 -107, i32 0
  br label %out

if.end10:                                         ; preds = %lor.lhs.false
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end13, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end13:                                         ; preds = %if.end10
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 66
  %23 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %sk_shutdown, align 2
  %25 = and i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool16.not = icmp ne i8 %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool19.not = icmp eq i32 %len, 0
  %or.cond = or i1 %tobool19.not, %tobool16.not
  br i1 %or.cond, label %if.end13.out_crit_edge, label %if.end21

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end21:                                         ; preds = %if.end13
  %sk_type = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 45
  %26 = ptrtoint ptr %sk_type to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sk_type, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %27)
  %cmp23 = icmp eq i16 %27, 1
  br i1 %cmp23, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %recv_data.i) #9
  %28 = call ptr @memset(ptr %recv_data.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i) #9
  %29 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 1
  %30 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 2
  %31 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3
  %32 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %wait.i, align 4
  %34 = call i32 @llvm.read_register.i32(metadata !132) #9
  %and.i.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %task.i, align 8
  %38 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %29, align 4
  %39 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @autoremove_wake_function, ptr %30, align 4
  %40 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %31, ptr %31, align 4
  %41 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %31, ptr %32, align 4
  %and.i43 = and i32 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43)
  %tobool.not.i.i = icmp eq i32 %and.i43, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %if.then25.sock_rcvlowat.exit.i_crit_edge

if.then25.sock_rcvlowat.exit.i_crit_edge:         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_rcvlowat.exit.i

cond.false.i.i:                                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %sk_rcvlowat.i.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 6
  %42 = ptrtoint ptr %sk_rcvlowat.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %sk_rcvlowat.i.i, align 8
  %44 = call i32 @llvm.smin.i32(i32 %43, i32 %len) #9
  br label %sock_rcvlowat.exit.i

sock_rcvlowat.exit.i:                             ; preds = %cond.false.i.i, %if.then25.sock_rcvlowat.exit.i_crit_edge
  %cond5.i.i = phi i32 [ %44, %cond.false.i.i ], [ %len, %if.then25.sock_rcvlowat.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond5.i.i)
  %tobool6.not.i.i = icmp eq i32 %cond5.i.i, 0
  %..i.i = select i1 %tobool6.not.i.i, i32 1, i32 %cond5.i.i
  %conv.i = zext i32 %..i.i to i64
  %stream_rcvhiwat.i = getelementptr inbounds %struct.vsock_transport, ptr %16, i32 0, i32 14
  %45 = ptrtoint ptr %stream_rcvhiwat.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %stream_rcvhiwat.i, align 4
  %call7.i = call i64 %46(ptr noundef %14) #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call7.i, i64 %conv.i)
  %cmp.not.i = icmp ugt i64 %call7.i, %conv.i
  br i1 %cmp.not.i, label %if.end.i, label %sock_rcvlowat.exit.i.__vsock_stream_recvmsg.exit_crit_edge

sock_rcvlowat.exit.i.__vsock_stream_recvmsg.exit_crit_edge: ; preds = %sock_rcvlowat.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__vsock_stream_recvmsg.exit

if.end.i:                                         ; preds = %sock_rcvlowat.exit.i
  %and9.i = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool.not.i, label %cond.false.i107.i, label %if.end.i.sock_rcvtimeo.exit.i_crit_edge

if.end.i.sock_rcvtimeo.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_rcvtimeo.exit.i

cond.false.i107.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %sk_rcvtimeo.i.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 62
  %47 = ptrtoint ptr %sk_rcvtimeo.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sk_rcvtimeo.i.i, align 4
  br label %sock_rcvtimeo.exit.i

sock_rcvtimeo.exit.i:                             ; preds = %cond.false.i107.i, %if.end.i.sock_rcvtimeo.exit.i_crit_edge
  %cond.i.i = phi i32 [ %48, %cond.false.i107.i ], [ 0, %if.end.i.sock_rcvtimeo.exit.i_crit_edge ]
  %notify_recv_init.i = getelementptr inbounds %struct.vsock_transport, ptr %16, i32 0, i32 23
  %49 = ptrtoint ptr %notify_recv_init.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %notify_recv_init.i, align 4
  %call11.i = call i32 %50(ptr noundef %14, i32 noundef %..i.i, ptr noundef nonnull %recv_data.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %sock_rcvtimeo.exit.i.__vsock_stream_recvmsg.exit_crit_edge, label %while.cond.preheader.i

sock_rcvtimeo.exit.i.__vsock_stream_recvmsg.exit_crit_edge: ; preds = %sock_rcvtimeo.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__vsock_stream_recvmsg.exit

while.cond.preheader.i:                           ; preds = %sock_rcvtimeo.exit.i
  %notify_recv_pre_dequeue.i = getelementptr inbounds %struct.vsock_transport, ptr %16, i32 0, i32 25
  %stream_dequeue.i = getelementptr inbounds %struct.vsock_transport, ptr %16, i32 0, i32 10
  %notify_recv_post_dequeue.i = getelementptr inbounds %struct.vsock_transport, ptr %16, i32 0, i32 26
  %and31.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31.i)
  %tobool32.not.i = icmp eq i32 %and31.i, 0
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end37.i.while.cond.i_crit_edge, %while.cond.preheader.i
  %copied.0.i = phi i32 [ %add.i, %if.end37.i.while.cond.i_crit_edge ], [ 0, %while.cond.preheader.i ]
  %target.0.i = phi i32 [ %sub44.i, %if.end37.i.while.cond.i_crit_edge ], [ %..i.i, %while.cond.preheader.i ]
  %call16.i = call fastcc i32 @vsock_connectible_wait_data(ptr noundef %14, ptr noundef nonnull %wait.i, i32 noundef %cond.i.i, ptr noundef nonnull %recv_data.i, i32 noundef %target.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 1
  br i1 %cmp17.i, label %while.cond.i.while.end.i_crit_edge, label %if.end20.i

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end20.i:                                       ; preds = %while.cond.i
  %51 = ptrtoint ptr %notify_recv_pre_dequeue.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %notify_recv_pre_dequeue.i, align 4
  %call21.i = call i32 %52(ptr noundef %14, i32 noundef %target.0.i, ptr noundef nonnull %recv_data.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 0
  br i1 %cmp22.i, label %if.end20.i.while.end.i_crit_edge, label %if.end25.i

if.end20.i.while.end.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end25.i:                                       ; preds = %if.end20.i
  %53 = ptrtoint ptr %stream_dequeue.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %stream_dequeue.i, align 4
  %sub.i = sub i32 %len, %copied.0.i
  %call26.i = call i32 %54(ptr noundef %14, ptr noundef %msg, i32 noundef %sub.i, i32 noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i = icmp slt i32 %call26.i, 0
  br i1 %cmp27.i, label %if.end25.i.while.end.i_crit_edge, label %if.end30.i

if.end25.i.while.end.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end30.i:                                       ; preds = %if.end25.i
  %55 = ptrtoint ptr %notify_recv_post_dequeue.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %notify_recv_post_dequeue.i, align 4
  %call33.i = call i32 %56(ptr noundef %14, i32 noundef %target.0.i, i32 noundef %call26.i, i1 noundef zeroext %tobool32.not.i, ptr noundef nonnull %recv_data.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp34.i = icmp slt i32 %call33.i, 0
  br i1 %cmp34.i, label %if.end30.i.__vsock_stream_recvmsg.exit_crit_edge, label %if.end37.i

if.end30.i.__vsock_stream_recvmsg.exit_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__vsock_stream_recvmsg.exit

if.end37.i:                                       ; preds = %if.end30.i
  %add.i = add i32 %call26.i, %copied.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %target.0.i, i32 %call26.i)
  %cmp38.not.i = icmp ugt i32 %target.0.i, %call26.i
  %57 = and i1 %tobool32.not.i, %cmp38.not.i
  %sub44.i = sub i32 %target.0.i, %call26.i
  br i1 %57, label %if.end37.i.while.cond.i_crit_edge, label %if.end37.i.while.end.i_crit_edge

if.end37.i.while.end.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i

if.end37.i.while.cond.i_crit_edge:                ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

while.end.i:                                      ; preds = %if.end37.i.while.end.i_crit_edge, %if.end25.i.while.end.i_crit_edge, %if.end20.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %copied.1.ph.i = phi i32 [ %copied.0.i, %if.end25.i.while.end.i_crit_edge ], [ %copied.0.i, %if.end20.i.while.end.i_crit_edge ], [ %copied.0.i, %while.cond.i.while.end.i_crit_edge ], [ %add.i, %if.end37.i.while.end.i_crit_edge ]
  %err.0.ph.i = phi i32 [ -12, %if.end25.i.while.end.i_crit_edge ], [ %call21.i, %if.end20.i.while.end.i_crit_edge ], [ %call16.i, %while.cond.i.while.end.i_crit_edge ], [ %call33.i, %if.end37.i.while.end.i_crit_edge ]
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 51
  %58 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %sk_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool45.not.i = icmp eq i32 %59, 0
  br i1 %tobool45.not.i, label %if.else.i, label %if.then46.i

if.then46.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub48.i = sub i32 0, %59
  br label %if.end54.i

if.else.i:                                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %sk_shutdown, align 2
  %62 = and i8 %61, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool51.not.i = icmp eq i8 %62, 0
  %spec.select.i = select i1 %tobool51.not.i, i32 %err.0.ph.i, i32 0
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.else.i, %if.then46.i
  %err.1.i = phi i32 [ %sub48.i, %if.then46.i ], [ %spec.select.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.1.ph.i)
  %cmp55.i = icmp sgt i32 %copied.1.ph.i, 0
  %spec.select104.i = select i1 %cmp55.i, i32 %copied.1.ph.i, i32 %err.1.i
  br label %__vsock_stream_recvmsg.exit

__vsock_stream_recvmsg.exit:                      ; preds = %if.end54.i, %if.end30.i.__vsock_stream_recvmsg.exit_crit_edge, %sock_rcvtimeo.exit.i.__vsock_stream_recvmsg.exit_crit_edge, %sock_rcvlowat.exit.i.__vsock_stream_recvmsg.exit_crit_edge
  %retval.0.i = phi i32 [ %call11.i, %sock_rcvtimeo.exit.i.__vsock_stream_recvmsg.exit_crit_edge ], [ -12, %sock_rcvlowat.exit.i.__vsock_stream_recvmsg.exit_crit_edge ], [ %spec.select104.i, %if.end54.i ], [ %call33.i, %if.end30.i.__vsock_stream_recvmsg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %recv_data.i) #9
  br label %out

if.else27:                                        ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %wait.i44) #9
  %63 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i44, i32 0, i32 1
  %64 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i44, i32 0, i32 2
  %65 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i44, i32 0, i32 3
  %66 = getelementptr inbounds %struct.wait_queue_entry, ptr %wait.i44, i32 0, i32 3, i32 1
  %67 = ptrtoint ptr %wait.i44 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %wait.i44, align 4
  %68 = call i32 @llvm.read_register.i32(metadata !132) #9
  %and.i.i45 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i45 to ptr
  %task.i46 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %task.i46 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %task.i46, align 8
  %72 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %63, align 4
  %73 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @autoremove_wake_function, ptr %64, align 4
  %74 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %65, ptr %65, align 4
  %75 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %65, ptr %66, align 4
  %and.i48 = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48)
  %tobool.not.i49 = icmp eq i32 %and.i48, 0
  br i1 %tobool.not.i49, label %cond.false.i.i51, label %if.else27.sock_rcvtimeo.exit.i54_crit_edge

if.else27.sock_rcvtimeo.exit.i54_crit_edge:       ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #11
  br label %sock_rcvtimeo.exit.i54

cond.false.i.i51:                                 ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #11
  %sk_rcvtimeo.i.i50 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 62
  %76 = ptrtoint ptr %sk_rcvtimeo.i.i50 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %sk_rcvtimeo.i.i50, align 4
  br label %sock_rcvtimeo.exit.i54

sock_rcvtimeo.exit.i54:                           ; preds = %cond.false.i.i51, %if.else27.sock_rcvtimeo.exit.i54_crit_edge
  %cond.i.i52 = phi i32 [ %77, %cond.false.i.i51 ], [ 0, %if.else27.sock_rcvtimeo.exit.i54_crit_edge ]
  %call7.i53 = call fastcc i32 @vsock_connectible_wait_data(ptr noundef %14, ptr noundef nonnull %wait.i44, i32 noundef %cond.i.i52, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7.i53)
  %cmp.i = icmp slt i32 %call7.i53, 1
  br i1 %cmp.i, label %sock_rcvtimeo.exit.i54.__vsock_seqpacket_recvmsg.exit_crit_edge, label %if.end.i55

sock_rcvtimeo.exit.i54.__vsock_seqpacket_recvmsg.exit_crit_edge: ; preds = %sock_rcvtimeo.exit.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %__vsock_seqpacket_recvmsg.exit

if.end.i55:                                       ; preds = %sock_rcvtimeo.exit.i54
  %seqpacket_dequeue.i = getelementptr inbounds %struct.vsock_transport, ptr %16, i32 0, i32 17
  %78 = ptrtoint ptr %seqpacket_dequeue.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %seqpacket_dequeue.i, align 4
  %call8.i = call i32 %79(ptr noundef %14, ptr noundef %msg, i32 noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end.i55.__vsock_seqpacket_recvmsg.exit_crit_edge, label %if.end11.i

if.end.i55.__vsock_seqpacket_recvmsg.exit_crit_edge: ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %__vsock_seqpacket_recvmsg.exit

if.end11.i:                                       ; preds = %if.end.i55
  %sk_err.i56 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 51
  %80 = ptrtoint ptr %sk_err.i56 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sk_err.i56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool12.not.i = icmp eq i32 %81, 0
  br i1 %tobool12.not.i, label %if.else.i59, label %if.then13.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i57 = sub i32 0, %81
  br label %__vsock_seqpacket_recvmsg.exit

if.else.i59:                                      ; preds = %if.end11.i
  %82 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %sk_shutdown, align 2
  %84 = and i8 %83, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool16.not.i = icmp eq i8 %84, 0
  br i1 %tobool16.not.i, label %if.else18.i, label %if.else.i59.__vsock_seqpacket_recvmsg.exit_crit_edge

if.else.i59.__vsock_seqpacket_recvmsg.exit_crit_edge: ; preds = %if.else.i59
  call void @__sanitizer_cov_trace_pc() #11
  br label %__vsock_seqpacket_recvmsg.exit

if.else18.i:                                      ; preds = %if.else.i59
  %and19.i = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.else22.i, label %if.else18.i.if.end25.i60_crit_edge

if.else18.i.if.end25.i60_crit_edge:               ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.i60

if.else22.i:                                      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #11
  %count.i.i.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2, i32 4
  %85 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %count.i.i.i, align 8
  %sub24.i = sub i32 %len, %86
  br label %if.end25.i60

if.end25.i60:                                     ; preds = %if.else22.i, %if.else18.i.if.end25.i60_crit_edge
  %err.0.i = phi i32 [ %sub24.i, %if.else22.i ], [ %call8.i, %if.else18.i.if.end25.i60_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %len)
  %cmp26.i = icmp ugt i32 %call8.i, %len
  br i1 %cmp26.i, label %if.then28.i, label %if.end25.i60.__vsock_seqpacket_recvmsg.exit_crit_edge

if.end25.i60.__vsock_seqpacket_recvmsg.exit_crit_edge: ; preds = %if.end25.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %__vsock_seqpacket_recvmsg.exit

if.then28.i:                                      ; preds = %if.end25.i60
  call void @__sanitizer_cov_trace_pc() #11
  %msg_flags.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %87 = ptrtoint ptr %msg_flags.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %msg_flags.i, align 4
  %or.i = or i32 %88, 32
  store i32 %or.i, ptr %msg_flags.i, align 4
  br label %__vsock_seqpacket_recvmsg.exit

__vsock_seqpacket_recvmsg.exit:                   ; preds = %if.then28.i, %if.end25.i60.__vsock_seqpacket_recvmsg.exit_crit_edge, %if.else.i59.__vsock_seqpacket_recvmsg.exit_crit_edge, %if.then13.i, %if.end.i55.__vsock_seqpacket_recvmsg.exit_crit_edge, %sock_rcvtimeo.exit.i54.__vsock_seqpacket_recvmsg.exit_crit_edge
  %err.1.i61 = phi i32 [ %call7.i53, %sock_rcvtimeo.exit.i54.__vsock_seqpacket_recvmsg.exit_crit_edge ], [ %sub.i57, %if.then13.i ], [ %err.0.i, %if.then28.i ], [ %err.0.i, %if.end25.i60.__vsock_seqpacket_recvmsg.exit_crit_edge ], [ -12, %if.end.i55.__vsock_seqpacket_recvmsg.exit_crit_edge ], [ 0, %if.else.i59.__vsock_seqpacket_recvmsg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait.i44) #9
  br label %out

out:                                              ; preds = %__vsock_seqpacket_recvmsg.exit, %__vsock_stream_recvmsg.exit, %if.end13.out_crit_edge, %if.end10.out_crit_edge, %if.then
  %err.0 = phi i32 [ %retval.0.i, %__vsock_stream_recvmsg.exit ], [ %err.1.i61, %__vsock_seqpacket_recvmsg.exit ], [ %., %if.then ], [ -95, %if.end10.out_crit_edge ], [ 0, %if.end13.out_crit_edge ]
  call void @release_sock(ptr noundef %14) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %wait) #9
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sock_graft(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vsock_update_buffer_size(ptr noundef %vsk, ptr noundef readonly %transport, i64 noundef %val) unnamed_addr #0 align 64 {
entry:
  %val.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer_max_size = getelementptr inbounds %struct.vsock_sock, ptr %vsk, i32 0, i32 24
  %0 = ptrtoint ptr %buffer_max_size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %buffer_max_size, align 8
  %2 = tail call i64 @llvm.umin.i64(i64 %1, i64 %val)
  %buffer_min_size = getelementptr inbounds %struct.vsock_sock, ptr %vsk, i32 0, i32 23
  %3 = ptrtoint ptr %buffer_min_size to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %buffer_min_size, align 8
  %5 = tail call i64 @llvm.umax.i64(i64 %2, i64 %4)
  %6 = ptrtoint ptr %val.addr to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %val.addr, align 8
  %buffer_size = getelementptr inbounds %struct.vsock_sock, ptr %vsk, i32 0, i32 22
  %7 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %buffer_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %8)
  %cmp6.not = icmp eq i64 %5, %8
  %tobool.not = icmp eq ptr %transport, null
  %or.cond = or i1 %tobool.not, %cmp6.not
  br i1 %or.cond, label %entry.if.end11_crit_edge, label %land.lhs.true7

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true7:                                   ; preds = %entry
  %notify_buffer_size = getelementptr inbounds %struct.vsock_transport, ptr %transport, i32 0, i32 31
  %9 = ptrtoint ptr %notify_buffer_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %notify_buffer_size, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %land.lhs.true7.if.end11_crit_edge, label %if.then9

land.lhs.true7.if.end11_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  call void %10(ptr noundef %vsk, ptr noundef nonnull %val.addr) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %land.lhs.true7.if.end11_crit_edge, %entry.if.end11_crit_edge
  %11 = ptrtoint ptr %val.addr to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %val.addr, align 8
  %13 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %buffer_size, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_copy_user_timeval(ptr noundef, [2 x i32], i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_get_timeout(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @woken_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_wait_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_woken(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsock_connectible_wait_data(ptr noundef %sk, ptr noundef %wait, i32 noundef %timeout, ptr noundef %recv_data, i32 noundef %target) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %transport1 = getelementptr inbounds %struct.vsock_sock, ptr %sk, i32 0, i32 1
  %0 = ptrtoint ptr %transport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %transport1, align 8
  %sk_type.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 45
  %2 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %peer_shutdown = getelementptr inbounds %struct.vsock_sock, ptr %sk, i32 0, i32 19
  %tobool11.not = icmp eq ptr %recv_data, null
  %notify_recv_pre_block = getelementptr inbounds %struct.vsock_transport, ptr %1, i32 0, i32 24
  br label %while.cond

while.cond:                                       ; preds = %if.else.while.cond_crit_edge, %entry
  %timeout.addr.0 = phi i32 [ %timeout, %entry ], [ %call19, %if.else.while.cond_crit_edge ]
  %err.0 = phi i32 [ 0, %entry ], [ %err.1, %if.else.while.cond_crit_edge ]
  %3 = ptrtoint ptr %sk_type.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %sk_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %4)
  %cmp.i = icmp eq i16 %4, 5
  %5 = ptrtoint ptr %transport1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %transport1, align 8
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %seqpacket_has_data.i = getelementptr inbounds %struct.vsock_transport, ptr %6, i32 0, i32 20
  %7 = ptrtoint ptr %seqpacket_has_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %seqpacket_has_data.i, align 4
  %call.i = tail call i32 %8(ptr noundef %sk) #9
  %conv3.i = zext i32 %call.i to i64
  br label %vsock_connectible_has_data.exit

if.else.i:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %stream_has_data.i.i = getelementptr inbounds %struct.vsock_transport, ptr %6, i32 0, i32 12
  %9 = ptrtoint ptr %stream_has_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stream_has_data.i.i, align 4
  %call.i.i = tail call i64 %10(ptr noundef %sk) #9
  br label %vsock_connectible_has_data.exit

vsock_connectible_has_data.exit:                  ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i64 [ %conv3.i, %if.then.i ], [ %call.i.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i)
  %cmp = icmp eq i64 %retval.0.i, 0
  br i1 %cmp, label %while.body, label %vsock_connectible_has_data.exit.while.end_crit_edge

vsock_connectible_has_data.exit.while.end_crit_edge: ; preds = %vsock_connectible_has_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %vsock_connectible_has_data.exit
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %2, align 8
  tail call void @prepare_to_wait(ptr noundef %12, ptr noundef %wait, i32 noundef 1) #9
  %13 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp3.not = icmp eq i32 %14, 0
  br i1 %cmp3.not, label %lor.lhs.false, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

lor.lhs.false:                                    ; preds = %while.body
  %15 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sk_shutdown, align 2
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %lor.lhs.false4, label %lor.lhs.false.while.end_crit_edge

lor.lhs.false.while.end_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %18 = ptrtoint ptr %peer_shutdown to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %peer_shutdown, align 4
  %and5 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end, label %lor.lhs.false4.while.end_crit_edge

lor.lhs.false4.while.end_crit_edge:               ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.addr.0)
  %cmp7 = icmp eq i32 %timeout.addr.0, 0
  br i1 %cmp7, label %if.end.while.end_crit_edge, label %if.end10

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end10:                                         ; preds = %if.end
  br i1 %tobool11.not, label %if.end10.if.end18_crit_edge, label %if.then12

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then12:                                        ; preds = %if.end10
  %20 = ptrtoint ptr %notify_recv_pre_block to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %notify_recv_pre_block, align 4
  %call13 = tail call i32 %21(ptr noundef %sk, i32 noundef %target, ptr noundef nonnull %recv_data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then12.while.end_crit_edge, label %if.then12.if.end18_crit_edge

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then12.while.end_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end18:                                         ; preds = %if.then12.if.end18_crit_edge, %if.end10.if.end18_crit_edge
  %err.1 = phi i32 [ %call13, %if.then12.if.end18_crit_edge ], [ %err.0, %if.end10.if.end18_crit_edge ]
  tail call void @release_sock(ptr noundef %sk) #9
  %call19 = tail call i32 @schedule_timeout(i32 noundef %timeout.addr.0) #9
  tail call void @lock_sock_nested(ptr noundef %sk, i32 noundef 0) #9
  %22 = tail call i32 @llvm.read_register.i32(metadata !132) #9
  %and.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stack.i.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %30 = and i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %signal_pending.exit, label %if.end18.if.then23_crit_edge, !prof !144

if.end18.if.then23_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

signal_pending.exit:                              ; preds = %if.end18
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %27, align 4
  %and1.i.i.i.i.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool22.not = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool22.not, label %if.else, label %signal_pending.exit.if.then23_crit_edge

signal_pending.exit.if.then23_crit_edge:          ; preds = %signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23

if.then23:                                        ; preds = %signal_pending.exit.if.then23_crit_edge, %if.end18.if.then23_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %call19)
  %cmp.i60 = icmp eq i32 %call19, 2147483647
  %cond.i = select i1 %cmp.i60, i32 -512, i32 -4
  br label %while.end

if.else:                                          ; preds = %signal_pending.exit
  %cmp25 = icmp eq i32 %call19, 0
  br i1 %cmp25, label %if.else.while.end_crit_edge, label %if.else.while.cond_crit_edge

if.else.while.cond_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

if.else.while.end_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.else.while.end_crit_edge, %if.then23, %if.then12.while.end_crit_edge, %if.end.while.end_crit_edge, %lor.lhs.false4.while.end_crit_edge, %lor.lhs.false.while.end_crit_edge, %while.body.while.end_crit_edge, %vsock_connectible_has_data.exit.while.end_crit_edge
  %err.2 = phi i32 [ %cond.i, %if.then23 ], [ %err.0, %vsock_connectible_has_data.exit.while.end_crit_edge ], [ %err.0, %lor.lhs.false4.while.end_crit_edge ], [ %err.0, %lor.lhs.false.while.end_crit_edge ], [ %err.0, %while.body.while.end_crit_edge ], [ %call13, %if.then12.while.end_crit_edge ], [ -11, %if.end.while.end_crit_edge ], [ -11, %if.else.while.end_crit_edge ]
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %2, align 8
  tail call void @finish_wait(ptr noundef %34, ptr noundef %wait) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool31.not = icmp eq i32 %err.2, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %retval.0.i)
  %cmp34 = icmp slt i64 %retval.0.i, 0
  %conv38 = trunc i64 %retval.0.i to i32
  %spec.select = select i1 %cmp34, i32 -12, i32 %conv38
  %spec.select63 = select i1 %tobool31.not, i32 %spec.select, i32 %err.2
  ret i32 %spec.select63
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58, !59, !61, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !88, !90, !92, !94, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !117, !119, !121, !123, !125, !126, !128, !130}
!llvm.named.register.sp = !{!132}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !{ptr @__ksymtab_vsock_bind_table, !1, !"__ksymtab_vsock_bind_table", i1 false, i1 false}
!1 = !{!"../net/vmw_vsock/af_vsock.c", i32 175, i32 1}
!2 = !{ptr @__ksymtab_vsock_connected_table, !3, !"__ksymtab_vsock_connected_table", i1 false, i1 false}
!3 = !{!"../net/vmw_vsock/af_vsock.c", i32 177, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/vmw_vsock/af_vsock.c", i32 178, i32 1}
!6 = !{ptr @vsock_table_lock, !5, !"vsock_table_lock", i1 false, i1 false}
!7 = !{ptr @__ksymtab_vsock_table_lock, !8, !"__ksymtab_vsock_table_lock", i1 false, i1 false}
!8 = !{!"../net/vmw_vsock/af_vsock.c", i32 179, i32 1}
!9 = !{ptr @__ksymtab_vsock_insert_connected, !10, !"__ksymtab_vsock_insert_connected", i1 false, i1 false}
!10 = !{!"../net/vmw_vsock/af_vsock.c", i32 279, i32 1}
!11 = !{ptr @__ksymtab_vsock_remove_bound, !12, !"__ksymtab_vsock_remove_bound", i1 false, i1 false}
!12 = !{!"../net/vmw_vsock/af_vsock.c", i32 288, i32 1}
!13 = !{ptr @__ksymtab_vsock_remove_connected, !14, !"__ksymtab_vsock_remove_connected", i1 false, i1 false}
!14 = !{!"../net/vmw_vsock/af_vsock.c", i32 297, i32 1}
!15 = !{ptr @__ksymtab_vsock_find_bound_socket, !16, !"__ksymtab_vsock_find_bound_socket", i1 false, i1 false}
!16 = !{!"../net/vmw_vsock/af_vsock.c", i32 312, i32 1}
!17 = !{ptr @__ksymtab_vsock_find_connected_socket, !18, !"__ksymtab_vsock_find_connected_socket", i1 false, i1 false}
!18 = !{!"../net/vmw_vsock/af_vsock.c", i32 328, i32 1}
!19 = !{ptr @__ksymtab_vsock_remove_sock, !20, !"__ksymtab_vsock_remove_sock", i1 false, i1 false}
!20 = !{!"../net/vmw_vsock/af_vsock.c", i32 335, i32 1}
!21 = !{ptr @__ksymtab_vsock_for_each_connected_socket, !22, !"__ksymtab_vsock_for_each_connected_socket", i1 false, i1 false}
!22 = !{!"../net/vmw_vsock/af_vsock.c", i32 357, i32 1}
!23 = !{ptr @__ksymtab_vsock_add_pending, !24, !"__ksymtab_vsock_add_pending", i1 false, i1 false}
!24 = !{!"../net/vmw_vsock/af_vsock.c", i32 371, i32 1}
!25 = !{ptr @__ksymtab_vsock_remove_pending, !26, !"__ksymtab_vsock_remove_pending", i1 false, i1 false}
!26 = !{!"../net/vmw_vsock/af_vsock.c", i32 381, i32 1}
!27 = !{ptr @__ksymtab_vsock_enqueue_accept, !28, !"__ksymtab_vsock_enqueue_accept", i1 false, i1 false}
!28 = !{!"../net/vmw_vsock/af_vsock.c", i32 395, i32 1}
!29 = !{ptr @__ksymtab_vsock_assign_transport, !30, !"__ksymtab_vsock_assign_transport", i1 false, i1 false}
!30 = !{!"../net/vmw_vsock/af_vsock.c", i32 512, i32 1}
!31 = !{ptr @__ksymtab_vsock_find_cid, !32, !"__ksymtab_vsock_find_cid", i1 false, i1 false}
!32 = !{!"../net/vmw_vsock/af_vsock.c", i32 527, i32 1}
!33 = !{ptr @__ksymtab_vsock_create_connected, !34, !"__ksymtab_vsock_create_connected", i1 false, i1 false}
!34 = !{!"../net/vmw_vsock/af_vsock.c", i32 861, i32 1}
!35 = !{ptr @__ksymtab_vsock_stream_has_data, !36, !"__ksymtab_vsock_stream_has_data", i1 false, i1 false}
!36 = !{!"../net/vmw_vsock/af_vsock.c", i32 867, i32 1}
!37 = !{ptr @__ksymtab_vsock_stream_has_space, !38, !"__ksymtab_vsock_stream_has_space", i1 false, i1 false}
!38 = !{!"../net/vmw_vsock/af_vsock.c", i32 883, i32 1}
!39 = !{ptr @__ksymtab_vsock_core_get_transport, !40, !"__ksymtab_vsock_core_get_transport", i1 false, i1 false}
!40 = !{!"../net/vmw_vsock/af_vsock.c", i32 2332, i32 1}
!41 = !{ptr @__ksymtab_vsock_core_register, !42, !"__ksymtab_vsock_core_register", i1 false, i1 false}
!42 = !{!"../net/vmw_vsock/af_vsock.c", i32 2388, i32 1}
!43 = !{ptr @__ksymtab_vsock_core_unregister, !44, !"__ksymtab_vsock_core_unregister", i1 false, i1 false}
!44 = !{!"../net/vmw_vsock/af_vsock.c", i32 2408, i32 1}
!45 = !{ptr @__initcall__kmod_vsock__458_2410_vsock_init6, !46, !"__initcall__kmod_vsock__458_2410_vsock_init6", i1 false, i1 false}
!46 = !{!"../net/vmw_vsock/af_vsock.c", i32 2410, i32 1}
!47 = !{ptr @__exitcall_vsock_exit, !48, !"__exitcall_vsock_exit", i1 false, i1 false}
!48 = !{!"../net/vmw_vsock/af_vsock.c", i32 2411, i32 1}
!49 = !{ptr @__UNIQUE_ID_author459, !50, !"__UNIQUE_ID_author459", i1 false, i1 false}
!50 = !{!"../net/vmw_vsock/af_vsock.c", i32 2413, i32 1}
!51 = !{ptr @__UNIQUE_ID_description460, !52, !"__UNIQUE_ID_description460", i1 false, i1 false}
!52 = !{!"../net/vmw_vsock/af_vsock.c", i32 2414, i32 1}
!53 = !{ptr @__UNIQUE_ID_version461, !54, !"__UNIQUE_ID_version461", i1 false, i1 false}
!54 = !{!"../net/vmw_vsock/af_vsock.c", i32 2415, i32 1}
!55 = !{ptr @.str.1, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.2, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.3, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @__modver_attr, !54, !"__modver_attr", i1 false, i1 false}
!59 = !{ptr @__UNIQUE_ID_file462, !60, !"__UNIQUE_ID_file462", i1 false, i1 false}
!60 = !{!"../net/vmw_vsock/af_vsock.c", i32 2416, i32 1}
!61 = !{ptr @__UNIQUE_ID_license463, !60, !"__UNIQUE_ID_license463", i1 false, i1 false}
!62 = !{ptr @transport_h2g, !63, !"transport_h2g", i1 false, i1 false}
!63 = !{!"../net/vmw_vsock/af_vsock.c", i32 135, i32 38}
!64 = !{ptr @transport_g2h, !65, !"transport_g2h", i1 false, i1 false}
!65 = !{!"../net/vmw_vsock/af_vsock.c", i32 137, i32 38}
!66 = !{ptr @transport_dgram, !67, !"transport_dgram", i1 false, i1 false}
!67 = !{!"../net/vmw_vsock/af_vsock.c", i32 139, i32 38}
!68 = !{ptr @transport_local, !69, !"transport_local", i1 false, i1 false}
!69 = !{!"../net/vmw_vsock/af_vsock.c", i32 141, i32 38}
!70 = !{ptr @vsock_bind_table, !71, !"vsock_bind_table", i1 false, i1 false}
!71 = !{!"../net/vmw_vsock/af_vsock.c", i32 174, i32 18}
!72 = !{ptr @vsock_connected_table, !73, !"vsock_connected_table", i1 false, i1 false}
!73 = !{!"../net/vmw_vsock/af_vsock.c", i32 176, i32 18}
!74 = !{ptr @__vsock_create.__key, !75, !"__key", i1 false, i1 false}
!75 = !{!"../net/vmw_vsock/af_vsock.c", i32 764, i32 2}
!76 = !{ptr @.str.4, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @__vsock_create.__key.5, !75, !"__key", i1 false, i1 false}
!78 = !{ptr @.str.6, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @__vsock_create.__key.7, !80, !"__key", i1 false, i1 false}
!80 = !{!"../net/vmw_vsock/af_vsock.c", i32 765, i32 2}
!81 = !{ptr @.str.8, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @__vsock_create.__key.9, !80, !"__key", i1 false, i1 false}
!83 = !{ptr @.str.10, !80, !"<string literal>", i1 false, i1 false}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../net/vmw_vsock/af_vsock.c", i32 778, i32 16}
!86 = !{ptr @.str.11, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/linux/cred.h", i32 286, i32 3}
!88 = !{ptr @vsock_device, !89, !"vsock_device", i1 false, i1 false}
!89 = !{!"../net/vmw_vsock/af_vsock.c", i32 2279, i32 26}
!90 = !{ptr @vsock_device_ops, !91, !"vsock_device_ops", i1 false, i1 false}
!91 = !{!"../net/vmw_vsock/af_vsock.c", i32 2270, i32 37}
!92 = !{ptr @.str.12, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/vmw_vsock/af_vsock.c", i32 2245, i32 7}
!94 = !{ptr @vsock_proto, !95, !"vsock_proto", i1 false, i1 false}
!95 = !{!"../net/vmw_vsock/af_vsock.c", i32 119, i32 21}
!96 = !{ptr @.str.13, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../net/vmw_vsock/af_vsock.c", i32 142, i32 8}
!98 = !{ptr @.str.14, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @vsock_register_mutex, !97, !"vsock_register_mutex", i1 false, i1 false}
!100 = !{ptr @.str.15, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../net/vmw_vsock/af_vsock.c", i32 2294, i32 3}
!102 = !{ptr @.str.16, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @vsock_init._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @vsock_init._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.18, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/vmw_vsock/af_vsock.c", i32 2300, i32 3}
!107 = !{ptr @vsock_init._entry.17, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @vsock_init._entry_ptr.19, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.21, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../net/vmw_vsock/af_vsock.c", i32 2306, i32 3}
!111 = !{ptr @vsock_init._entry.20, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @vsock_init._entry_ptr.22, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @vsock_family_ops, !114, !"vsock_family_ops", i1 false, i1 false}
!114 = !{!"../net/vmw_vsock/af_vsock.c", i32 2222, i32 38}
!115 = !{ptr @vsock_dgram_ops, !116, !"vsock_dgram_ops", i1 false, i1 false}
!116 = !{!"../net/vmw_vsock/af_vsock.c", i32 1248, i32 31}
!117 = !{ptr @__vsock_bind_connectible.port, !118, !"port", i1 false, i1 false}
!118 = !{!"../net/vmw_vsock/af_vsock.c", i32 625, i32 13}
!119 = !{ptr @vsock_stream_ops, !120, !"vsock_stream_ops", i1 false, i1 false}
!120 = !{!"../net/vmw_vsock/af_vsock.c", i32 2132, i32 31}
!121 = !{ptr @.str.23, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../include/net/sock.h", i32 2024, i32 2}
!123 = distinct !{null, !124, !"__already_done", i1 false, i1 false}
!124 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!125 = !{ptr @.str.24, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.25, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!128 = !{ptr @.str.26, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!130 = !{ptr @vsock_seqpacket_ops, !131, !"vsock_seqpacket_ops", i1 false, i1 false}
!131 = !{!"../net/vmw_vsock/af_vsock.c", i32 2153, i32 31}
!132 = !{!"sp"}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"min_enum_size", i32 4}
!135 = !{i32 8, !"branch-target-enforcement", i32 0}
!136 = !{i32 8, !"sign-return-address", i32 0}
!137 = !{i32 8, !"sign-return-address-all", i32 0}
!138 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!139 = !{i32 7, !"uwtable", i32 1}
!140 = !{i32 7, !"frame-pointer", i32 2}
!141 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!142 = !{i64 2148291090, i64 2148291122, i64 2148291151, i64 2148291185, i64 2148291216, i64 2148291239}
!143 = !{!"branch_weights", i32 1, i32 2000}
!144 = !{!"branch_weights", i32 2000, i32 1}
!145 = !{i64 2148379091}
!146 = !{i64 2148293555, i64 2148293587, i64 2148293616, i64 2148293650, i64 2148293681, i64 2148293704}
!147 = !{i64 2149497143}
!148 = !{i8 0, i8 2}
!149 = !{i64 2148289560, i64 2148289586, i64 2148289615, i64 2148289649, i64 2148289680, i64 2148289703}
!150 = !{i64 2148378012}
!151 = !{i64 2148292745, i64 2148292777, i64 2148292806, i64 2148292840, i64 2148292871, i64 2148292894}
!152 = !{i64 2148378241}
!153 = !{i64 4816314}
!154 = !{i64 4816511}
!155 = !{i64 2152301744}
!156 = !{i64 2157023711, i64 2157023991, i64 2157024325, i64 2157024659}
!157 = !{!"auto-init"}
!158 = !{i64 2156798535}
!159 = !{i64 2152320759, i64 2152320784}
!160 = !{i64 2157003001, i64 2157003281, i64 2157003615, i64 2157003949}
!161 = !{i64 2152321440, i64 2152321465}
!162 = !{i64 2157012496, i64 2157012776, i64 2157013110, i64 2157013444}
