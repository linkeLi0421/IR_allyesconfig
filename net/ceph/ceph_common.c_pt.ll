; ModuleID = '/llk/IR_all_yes/net/ceph/ceph_common.c_pt.bc'
source_filename = "../net/ceph/ceph_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+libceph_compatible\22, \22a\22\09"
module asm "\09.weak\09__crc_libceph_compatible\09\09\09\09"
module asm "\09.long\09__crc_libceph_compatible\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_libceph_compatible:\09\09\09\09\09"
module asm "\09.asciz \09\22libceph_compatible\22\09\09\09\09\09"
module asm "__kstrtabns_libceph_compatible:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_msg_type_name\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_msg_type_name\09\09\09\09"
module asm "\09.long\09__crc_ceph_msg_type_name\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_msg_type_name:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_msg_type_name\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_msg_type_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_check_fsid\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_check_fsid\09\09\09\09"
module asm "\09.long\09__crc_ceph_check_fsid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_check_fsid:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_check_fsid\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_check_fsid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_compare_options\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_compare_options\09\09\09\09"
module asm "\09.long\09__crc_ceph_compare_options\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_compare_options:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_compare_options\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_compare_options:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_parse_fsid\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_parse_fsid\09\09\09\09"
module asm "\09.long\09__crc_ceph_parse_fsid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_parse_fsid:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_parse_fsid\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_parse_fsid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_alloc_options\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_alloc_options\09\09\09\09"
module asm "\09.long\09__crc_ceph_alloc_options\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_alloc_options:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_alloc_options\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_alloc_options:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_destroy_options\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_destroy_options\09\09\09\09"
module asm "\09.long\09__crc_ceph_destroy_options\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_destroy_options:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_destroy_options\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_destroy_options:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_parse_mon_ips\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_parse_mon_ips\09\09\09\09"
module asm "\09.long\09__crc_ceph_parse_mon_ips\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_parse_mon_ips:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_parse_mon_ips\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_parse_mon_ips:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_parse_param\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_parse_param\09\09\09\09"
module asm "\09.long\09__crc_ceph_parse_param\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_parse_param:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_parse_param\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_parse_param:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_print_client_options\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_print_client_options\09\09\09\09"
module asm "\09.long\09__crc_ceph_print_client_options\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_print_client_options:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_print_client_options\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_print_client_options:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_client_addr\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_client_addr\09\09\09\09"
module asm "\09.long\09__crc_ceph_client_addr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_client_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_client_addr\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_client_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_client_gid\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_client_gid\09\09\09\09"
module asm "\09.long\09__crc_ceph_client_gid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_client_gid:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_client_gid\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_client_gid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_create_client\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_create_client\09\09\09\09"
module asm "\09.long\09__crc_ceph_create_client\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_create_client:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_create_client\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_create_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_destroy_client\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_destroy_client\09\09\09\09"
module asm "\09.long\09__crc_ceph_destroy_client\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_destroy_client:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_destroy_client\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_destroy_client:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_reset_client_addr\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_reset_client_addr\09\09\09\09"
module asm "\09.long\09__crc_ceph_reset_client_addr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_reset_client_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_reset_client_addr\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_reset_client_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__ceph_open_session\22, \22a\22\09"
module asm "\09.weak\09__crc___ceph_open_session\09\09\09\09"
module asm "\09.long\09__crc___ceph_open_session\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ceph_open_session:\09\09\09\09\09"
module asm "\09.asciz \09\22__ceph_open_session\22\09\09\09\09\09"
module asm "__kstrtabns___ceph_open_session:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_open_session\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_open_session\09\09\09\09"
module asm "\09.long\09__crc_ceph_open_session\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_open_session:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_open_session\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_open_session:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_wait_for_latest_osdmap\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_wait_for_latest_osdmap\09\09\09\09"
module asm "\09.long\09__crc_ceph_wait_for_latest_osdmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_wait_for_latest_osdmap:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_wait_for_latest_osdmap\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_wait_for_latest_osdmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.104 }
%union.anon.104 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.fs_parameter_spec = type { ptr, ptr, i8, i16, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.constant_table = type { ptr, i32 }
%struct.key_type = type opaque
%struct.ceph_client = type { %struct.ceph_fsid, i8, ptr, ptr, %struct.mutex, %struct.wait_queue_head, i32, ptr, i64, i64, %struct.ceph_messenger, %struct.ceph_mon_client, %struct.ceph_osd_client, ptr, ptr, ptr, ptr }
%struct.ceph_fsid = type { [16 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ceph_messenger = type <{ %struct.ceph_entity_inst, %struct.ceph_entity_addr, [3 x i8], %struct.atomic_t, %struct.possible_net_t, i32, %struct.spinlock }>
%struct.ceph_entity_inst = type <{ %struct.ceph_entity_name, %struct.ceph_entity_addr }>
%struct.ceph_entity_name = type <{ i8, i64 }>
%struct.ceph_entity_addr = type { i32, i32, %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon.112 }
%union.anon.112 = type { ptr, [124 x i8] }
%struct.possible_net_t = type { ptr }
%struct.ceph_mon_client = type { ptr, ptr, %struct.mutex, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, %struct.ceph_connection, i8, i32, %struct.rb_root, i64, [4 x %struct.anon.127], i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ceph_connection = type <{ ptr, ptr, ptr, i32, %struct.atomic_t, ptr, i32, ptr, %struct.ceph_entity_name, %struct.ceph_entity_addr, [7 x i8], i64, %struct.mutex, %struct.list_head, %struct.list_head, [4 x i8], i64, i64, i64, ptr, ptr, ptr, i32, i32, i32, %struct.timespec64, %struct.delayed_work, i32, %union.anon.123 }>
%struct.timespec64 = type { i64, i32 }
%union.anon.123 = type { %struct.ceph_connection_v2_info }
%struct.ceph_connection_v2_info = type { %struct.iov_iter, [5 x %struct.kvec], %struct.bio_vec, i32, i32, %struct.iov_iter, [8 x %struct.kvec], %struct.bio_vec, i32, i32, i32, i8, %struct.ceph_frame_desc, %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor, ptr, ptr, ptr, %struct.crypto_wait, %struct.ceph_gcm_nonce, %struct.ceph_gcm_nonce, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, [16 x ptr], i32, [8 x %struct.kvec], [8 x %struct.kvec], i32, i32, i64, i64, i64, i64, i64, [96 x i8], [96 x i8], %struct.anon.124 }
%struct.kvec = type { ptr, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.96, %union.anon.97 }
%union.anon.96 = type { ptr }
%union.anon.97 = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ceph_frame_desc = type { i32, i32, [4 x i32], [4 x i32] }
%struct.ceph_msg_data_cursor = type { i32, ptr, i32, i8, i8, %union.anon.118 }
%union.anon.118 = type { %struct.ceph_bio_iter }
%struct.ceph_bio_iter = type { ptr, %struct.bvec_iter }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ceph_gcm_nonce = type <{ i32, i64 }>
%struct.anon.124 = type { i8, %union.anon.125 }
%union.anon.125 = type <{ %struct.anon.126, [3 x i8] }>
%struct.anon.126 = type { i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.anon.127 = type { %struct.ceph_mon_subscribe_item, i8, i32 }
%struct.ceph_mon_subscribe_item = type <{ i64, i8 }>
%struct.ceph_osd_client = type { ptr, ptr, %struct.rw_semaphore, %struct.rb_root, %struct.list_head, %struct.spinlock, i32, [4 x i8], %struct.ceph_osd, %struct.atomic64_t, i64, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.atomic_t, %struct.atomic_t, i32, %struct.delayed_work, %struct.delayed_work, ptr, ptr, %struct.ceph_msgpool, %struct.ceph_msgpool, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ceph_osd = type { %struct.refcount_struct, ptr, i32, i32, %struct.rb_node, [4 x i8], %struct.ceph_connection, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.list_head, %struct.ceph_auth_handshake, i32, %struct.list_head, %struct.mutex, [4 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rb_node = type { i32, ptr, ptr }
%struct.ceph_auth_handshake = type { ptr, ptr, i32, ptr, i32, ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.ceph_msgpool = type { ptr, ptr, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.84, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.60 }
%struct.llist_node = type { ptr }
%union.anon.60 = type { i32 }
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
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.62 }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.84 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ceph_options = type { i32, %struct.ceph_fsid, %struct.ceph_entity_addr, i32, i32, i32, i32, i32, [2 x i32], ptr, i32, ptr, ptr, %struct.rb_root }
%struct.ceph_crypto_key = type { i32, %struct.ceph_timespec, i32, ptr, ptr }
%struct.ceph_timespec = type { i32, i32 }
%struct.fs_parse_result = type { i8, %union.anon.59 }
%union.anon.59 = type { i64 }
%struct.p_log = type { ptr, ptr }
%struct.fs_parameter = type { ptr, i8, %union.anon.20, i32, i32 }
%union.anon.20 = type { ptr }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.23, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.24, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.25, %union.anon.29, ptr }
%union.anon.23 = type { %struct.rb_node }
%union.anon.24 = type { i64 }
%struct.kgid_t = type { i32 }
%union.anon.25 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.26, ptr, ptr, ptr }
%union.anon.26 = type { i32 }
%union.anon.29 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.crush_loc_node = type { %struct.rb_node, %struct.crush_loc, [0 x i8] }
%struct.crush_loc = type { ptr, ptr }
%struct.ceph_auth_client = type { i32, ptr, ptr, i8, ptr, i64, ptr, i32, i32, i32, %struct.mutex }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ceph_monmap = type { %struct.ceph_fsid, i32, i32, [0 x %struct.ceph_entity_inst] }
%struct.ceph_osdmap = type { %struct.ceph_fsid, i32, %struct.ceph_timespec, %struct.ceph_timespec, i32, i32, ptr, ptr, ptr, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, ptr, %struct.rb_root, i32, ptr, %struct.workspace_manager }
%struct.workspace_manager = type { %struct.list_head, %struct.spinlock, i32, %struct.atomic_t, %struct.wait_queue_head }

@__kstrtab_libceph_compatible = external dso_local constant [0 x i8], align 1
@__kstrtabns_libceph_compatible = external dso_local constant [0 x i8], align 1
@__ksymtab_libceph_compatible = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @libceph_compatible to i32), ptr @__kstrtab_libceph_compatible, ptr @__kstrtabns_libceph_compatible }, section "___ksymtab+libceph_compatible", align 4
@__param_str_supported_features = internal constant [27 x i8] c"libceph.supported_features\00", align 1
@param_ops_supported_features = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr null, ptr @param_get_supported_features, ptr null }, [16 x i8] zeroinitializer }, align 32
@__param_supported_features = internal constant %struct.kernel_param { ptr @__param_str_supported_features, ptr null, ptr @param_ops_supported_features, i16 292, i8 -1, i8 0, %union.anon.104 zeroinitializer }, section "__param", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"shutdown\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ping\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auth\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"auth_reply\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mon_map\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mon_get_map\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mon_subscribe\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mon_subscribe_ack\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"statfs\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"statfs_reply\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mon_get_version\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mon_get_version_reply\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mds_map\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fs_map_user\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"client_session\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"client_reconnect\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"client_request\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"client_request_forward\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"client_reply\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"client_caps\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"client_cap_release\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"client_quota\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"client_snap\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"client_lease\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"poolop_reply\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"poolop\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mon_command\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mon_command_ack\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"osd_map\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"osd_op\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"osd_opreply\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"watch_notify\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"osd_backoff\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab_ceph_msg_type_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_msg_type_name = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_msg_type_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_msg_type_name to i32), ptr @__kstrtab_ceph_msg_type_name, ptr @__kstrtabns_ceph_msg_type_name }, section "___ksymtab+ceph_msg_type_name", align 4
@ceph_check_fsid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.36, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013libceph: bad fsid, had %pU got %pU\00", [59 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ceph_check_fsid\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/ceph/ceph_common.c\00", [41 x i8] zeroinitializer }, align 32
@ceph_check_fsid._entry_ptr = internal global ptr @ceph_check_fsid._entry, section ".printk_index", align 4
@__kstrtab_ceph_check_fsid = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_check_fsid = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_check_fsid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_check_fsid to i32), ptr @__kstrtab_ceph_check_fsid, ptr @__kstrtabns_ceph_check_fsid }, section "___ksymtab+ceph_check_fsid", align 4
@__kstrtab_ceph_compare_options = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_compare_options = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_compare_options = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_compare_options to i32), ptr @__kstrtab_ceph_compare_options, ptr @__kstrtabns_ceph_compare_options }, section "___ksymtab+ceph_compare_options", align 4
@ceph_parse_fsid.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.38, ptr @.str.36, ptr @.str.39, i8 0, i8 50, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"libceph\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ceph_parse_fsid\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%.*s %12.12s:%-4d : %s '%s'\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"libceph: %.*s %12.12s:%-4d : %s '%s'\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"    \00", [27 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%x\00", [29 x i8] zeroinitializer }, align 32
@ceph_parse_fsid.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.38, ptr @.str.36, ptr @.str.43, i8 0, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%.*s %12.12s:%-4d : %s ret %d got fsid %pU\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"libceph: %.*s %12.12s:%-4d : %s ret %d got fsid %pU\0A\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab_ceph_parse_fsid = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_parse_fsid = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_parse_fsid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_parse_fsid to i32), ptr @__kstrtab_ceph_parse_fsid, ptr @__kstrtabns_ceph_parse_fsid }, section "___ksymtab+ceph_parse_fsid", align 4
@__kstrtab_ceph_alloc_options = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_alloc_options = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_alloc_options = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_alloc_options to i32), ptr @__kstrtab_ceph_alloc_options, ptr @__kstrtabns_ceph_alloc_options }, section "___ksymtab+ceph_alloc_options", align 4
@ceph_destroy_options.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.45, ptr @.str.36, ptr @.str.46, i8 0, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ceph_destroy_options\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%.*s %12.12s:%-4d : destroy_options %p\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"libceph: %.*s %12.12s:%-4d : destroy_options %p\0A\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_ceph_destroy_options = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_destroy_options = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_destroy_options = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_destroy_options to i32), ptr @__kstrtab_ceph_destroy_options, ptr @__kstrtabns_ceph_destroy_options }, section "___ksymtab+ceph_destroy_options", align 4
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to parse monitor IPs: %d\00", [32 x i8] zeroinitializer }, align 32
@__kstrtab_ceph_parse_mon_ips = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_parse_mon_ips = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_parse_mon_ips = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_parse_mon_ips to i32), ptr @__kstrtab_ceph_parse_mon_ips, ptr @__kstrtabns_ceph_parse_mon_ips }, section "___ksymtab+ceph_parse_mon_ips", align 4
@ceph_parameters = internal constant { [20 x %struct.fs_parameter_spec], [64 x i8] } { [20 x %struct.fs_parameter_spec] [%struct.fs_parameter_spec { ptr @.str.101, ptr null, i8 17, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.102, ptr null, i8 14, i16 10, ptr null }, %struct.fs_parameter_spec { ptr @.str.103, ptr null, i8 15, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.104, ptr null, i8 13, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.105, ptr @fs_param_is_string, i8 9, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.106, ptr @fs_param_is_string, i8 4, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.107, ptr @fs_param_is_string, i8 8, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.108, ptr @fs_param_is_string, i8 7, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.109, ptr @fs_param_is_u32, i8 1, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.110, ptr @fs_param_is_string, i8 5, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.111, ptr @fs_param_is_u32, i8 2, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.112, ptr @fs_param_is_u32, i8 3, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.113, ptr @fs_param_is_u32, i8 0, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.114, ptr @fs_param_is_enum, i8 10, i16 0, ptr @ceph_param_read_from_replica }, %struct.fs_parameter_spec { ptr @.str.115, ptr null, i8 18, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.116, ptr @fs_param_is_enum, i8 11, i16 0, ptr @ceph_param_ms_mode }, %struct.fs_parameter_spec { ptr @.str.117, ptr @fs_param_is_string, i8 6, i16 0, ptr null }, %struct.fs_parameter_spec { ptr @.str.118, ptr null, i8 12, i16 2, ptr null }, %struct.fs_parameter_spec { ptr @.str.119, ptr null, i8 16, i16 2, ptr null }, %struct.fs_parameter_spec zeroinitializer], [64 x i8] zeroinitializer }, align 32
@ceph_parse_param.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.49, ptr @.str.36, ptr @.str.50, i8 0, i8 106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ceph_parse_param\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%.*s %12.12s:%-4d : %s fs_parse '%s' token %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"libceph: %.*s %12.12s:%-4d : %s fs_parse '%s' token %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to parse ip: %d\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to parse fsid: %d\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to parse secret: %d\00", [37 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to parse CRUSH location: %d\00", [61 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Ignoring cephx_require_signatures\00", [62 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"Ignoring nocephx_require_signatures, use nocephx_sign_messages\00", [33 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s out of range\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_ceph_parse_param = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_parse_param = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_parse_param = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_parse_param to i32), ptr @__kstrtab_ceph_parse_param, ptr @__kstrtabns_ceph_parse_param }, section "___ksymtab+ceph_parse_param", align 4
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"name=\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c", \09\0A\\\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"secret=<hidden>,\00", [47 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"crush_location=\00", [16 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s:%s\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"read_from_replica=balance,\00", [37 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"read_from_replica=localize,\00", [36 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ms_mode=crc,\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ms_mode=secure,\00", [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ms_mode=prefer-crc,\00", [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ms_mode=prefer-secure,\00", [41 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fsid=%pU,\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"noshare,\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nocrc,\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nocephx_sign_messages,\00", [41 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"notcp_nodelay,\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"abort_on_full,\00", [17 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rxbounce,\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mount_timeout=%d,\00", [46 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"osd_idle_ttl=%d,\00", [47 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"osdkeepalivetimeout=%d,\00", [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"osd_request_timeout=%d,\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab_ceph_print_client_options = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_print_client_options = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_print_client_options = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_print_client_options to i32), ptr @__kstrtab_ceph_print_client_options, ptr @__kstrtabns_ceph_print_client_options }, section "___ksymtab+ceph_print_client_options", align 4
@__kstrtab_ceph_client_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_client_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_client_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_client_addr to i32), ptr @__kstrtab_ceph_client_addr, ptr @__kstrtabns_ceph_client_addr }, section "___ksymtab+ceph_client_addr", align 4
@__kstrtab_ceph_client_gid = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_client_gid = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_client_gid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_client_gid to i32), ptr @__kstrtab_ceph_client_gid, ptr @__kstrtabns_ceph_client_gid }, section "___ksymtab+ceph_client_gid", align 4
@ceph_create_client.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&client->mount_mutex\00", [43 x i8] zeroinitializer }, align 32
@ceph_create_client.__key.82 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&client->auth_wq\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_ceph_create_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_create_client = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_create_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_create_client to i32), ptr @__kstrtab_ceph_create_client, ptr @__kstrtabns_ceph_create_client }, section "___ksymtab+ceph_create_client", align 4
@ceph_destroy_client.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.84, ptr @.str.36, ptr @.str.85, i8 0, i8 -66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ceph_destroy_client\00", [44 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%.*s %12.12s:%-4d : destroy_client %p\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"libceph: %.*s %12.12s:%-4d : destroy_client %p\0A\00", [48 x i8] zeroinitializer }, align 32
@ceph_destroy_client.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.84, ptr @.str.36, ptr @.str.87, i8 0, i8 -62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%.*s %12.12s:%-4d : destroy_client %p done\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"libceph: %.*s %12.12s:%-4d : destroy_client %p done\0A\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab_ceph_destroy_client = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_destroy_client = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_destroy_client = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_destroy_client to i32), ptr @__kstrtab_ceph_destroy_client, ptr @__kstrtabns_ceph_destroy_client }, section "___ksymtab+ceph_destroy_client", align 4
@__kstrtab_ceph_reset_client_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_reset_client_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_reset_client_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_reset_client_addr to i32), ptr @__kstrtab_ceph_reset_client_addr, ptr @__kstrtabns_ceph_reset_client_addr }, section "___ksymtab+ceph_reset_client_addr", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__ceph_open_session.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.89, ptr @.str.36, ptr @.str.90, i8 0, i8 -53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__ceph_open_session\00", [44 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%.*s %12.12s:%-4d : mount waiting for mon_map\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"libceph: %.*s %12.12s:%-4d : mount waiting for mon_map\0A\00", [40 x i8] zeroinitializer }, align 32
@__ceph_open_session._entry = internal constant %struct.pi_entry { ptr @.str.92, ptr @.str.89, ptr @.str.36, i32 826, ptr null, ptr null }, align 1
@.str.92 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016libceph: client%llu fsid %pU\0A\00", [32 x i8] zeroinitializer }, align 32
@__ceph_open_session._entry_ptr = internal global ptr @__ceph_open_session._entry, section ".printk_index", align 4
@__kstrtab___ceph_open_session = external dso_local constant [0 x i8], align 1
@__kstrtabns___ceph_open_session = external dso_local constant [0 x i8], align 1
@__ksymtab___ceph_open_session = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ceph_open_session to i32), ptr @__kstrtab___ceph_open_session, ptr @__kstrtabns___ceph_open_session }, section "___ksymtab+__ceph_open_session", align 4
@ceph_open_session.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.93, ptr @.str.36, ptr @.str.94, i8 0, i8 -47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ceph_open_session\00", [46 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%.*s %12.12s:%-4d : open_session start\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"libceph: %.*s %12.12s:%-4d : open_session start\0A\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_ceph_open_session = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_open_session = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_open_session = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_open_session to i32), ptr @__kstrtab_ceph_open_session, ptr @__kstrtabns_ceph_open_session }, section "___ksymtab+ceph_open_session", align 4
@.str.96 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"osdmap\00", [25 x i8] zeroinitializer }, align 32
@__kstrtab_ceph_wait_for_latest_osdmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_wait_for_latest_osdmap = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_wait_for_latest_osdmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_wait_for_latest_osdmap to i32), ptr @__kstrtab_ceph_wait_for_latest_osdmap, ptr @__kstrtabns_ceph_wait_for_latest_osdmap }, section "___ksymtab+ceph_wait_for_latest_osdmap", align 4
@exit_ceph_lib.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.97, ptr @.str.36, ptr @.str.98, i8 0, i8 -31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"exit_ceph_lib\00", [18 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%.*s %12.12s:%-4d : exit_ceph_lib\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"libceph: %.*s %12.12s:%-4d : exit_ceph_lib\0A\00", [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_libceph__326_909_init_ceph_lib6 = internal global ptr @init_ceph_lib, section ".initcall6.init", align 4
@__exitcall_exit_ceph_lib = internal global ptr @exit_ceph_lib, section ".exitcall.exit", align 4
@__UNIQUE_ID_author327 = internal constant [45 x i8] c"libceph.author=Sage Weil <sage@newdream.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_author328 = internal constant [53 x i8] c"libceph.author=Yehuda Sadeh <yehuda@hq.newdream.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_author329 = internal constant [56 x i8] c"libceph.author=Patience Warnick <patience@newdream.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description330 = internal constant [38 x i8] c"libceph.description=Ceph core library\00", section ".modinfo", align 1
@__UNIQUE_ID_file331 = internal constant [30 x i8] c"libceph.file=net/ceph/libceph\00", section ".modinfo", align 1
@__UNIQUE_ID_license332 = internal constant [20 x i8] c"libceph.license=GPL\00", section ".modinfo", align 1
@.str.100 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0x%llx\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"abort_on_full\00", [18 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cephx_require_signatures\00", [39 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cephx_sign_messages\00", [44 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"crc\00", [28 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"crush_location\00", [17 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fsid\00", [27 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ip\00", [29 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"key\00", [28 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mount_timeout\00", [18 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"osd_idle_ttl\00", [19 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"osd_request_timeout\00", [44 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"osdkeepalive\00", [19 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"read_from_replica\00", [46 x i8] zeroinitializer }, align 32
@ceph_param_read_from_replica = internal constant { [4 x %struct.constant_table], [32 x i8] } { [4 x %struct.constant_table] [%struct.constant_table { ptr @.str.120, i32 0 }, %struct.constant_table { ptr @.str.121, i32 1 }, %struct.constant_table { ptr @.str.122, i32 2 }, %struct.constant_table zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rxbounce\00", [23 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ms_mode\00", [24 x i8] zeroinitializer }, align 32
@ceph_param_ms_mode = internal constant { [6 x %struct.constant_table], [48 x i8] } { [6 x %struct.constant_table] [%struct.constant_table { ptr @.str.123, i32 0 }, %struct.constant_table { ptr @.str.104, i32 1 }, %struct.constant_table { ptr @.str.124, i32 2 }, %struct.constant_table { ptr @.str.125, i32 3 }, %struct.constant_table { ptr @.str.126, i32 4 }, %struct.constant_table zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"secret\00", [25 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"share\00", [26 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tcp_nodelay\00", [20 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"balance\00", [24 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"localize\00", [23 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"legacy\00", [25 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"secure\00", [25 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"prefer-crc\00", [21 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"prefer-secure\00", [18 x i8] zeroinitializer }, align 32
@key_type_ceph = external dso_local global %struct.key_type, align 1
@.str.127 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed due to key not found: %s\00", [32 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed due to expired key: %s\00", [34 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed due to revoked key: %s\00", [34 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed due to key error %d: %s\00", [33 x i8] zeroinitializer }, align 32
@init_ceph_lib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.36, i32 885, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016libceph: loaded (mon/osd proto %d/%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"init_ceph_lib\00", [18 x i8] zeroinitializer }, align 32
@init_ceph_lib._entry_ptr = internal global ptr @init_ceph_lib._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [35 x i64] [i64 33, i64 32, i64 1, i64 2, i64 4, i64 5, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 41, i64 42, i64 43, i64 44, i64 48, i64 49, i64 50, i64 51, i64 61, i64 103, i64 784, i64 785, i64 786, i64 787, i64 788]
@__sancov_gen_cov_switch_values.133 = internal global [21 x i64] [i64 19, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18]
@__sancov_gen_cov_switch_values.134 = internal global [5 x i64] [i64 3, i64 32, i64 4294967168, i64 4294967169, i64 4294967170]
@__sancov_gen_cov_switch_values.135 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.136 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 32, i64 256, i64 8192]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.139 = private unnamed_addr constant [29 x i8] c"param_ops_supported_features\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 55, i32 38 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 64, i32 33 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 65, i32 29 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 66, i32 29 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 67, i32 35 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 68, i32 32 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 69, i32 36 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 70, i32 38 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 71, i32 42 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 72, i32 31 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 73, i32 37 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 74, i32 40 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 75, i32 46 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 76, i32 32 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 77, i32 36 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 78, i32 39 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 79, i32 41 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 80, i32 39 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 81, i32 47 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 82, i32 37 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 83, i32 36 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 84, i32 42 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 85, i32 37 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 86, i32 36 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 87, i32 37 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 88, i32 37 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 89, i32 31 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 90, i32 36 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 91, i32 40 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 92, i32 32 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 93, i32 31 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 94, i32 36 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 95, i32 37 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 96, i32 36 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 97, i32 18 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 109, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 200, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 211, i32 19 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 220, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 338, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 410, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant [16 x i8] c"ceph_parameters\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 282, i32 39 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 426, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 436, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 445, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 464, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 481, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 569, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 571, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 600, i32 9 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 612, i32 15 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 613, i32 28 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 617, i32 15 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 620, i32 15 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 625, i32 18 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 636, i32 15 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 638, i32 15 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 643, i32 16 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 646, i32 16 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 649, i32 16 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 652, i32 16 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 657, i32 17 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 659, i32 15 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 661, i32 15 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 663, i32 15 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 665, i32 15 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 667, i32 15 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 669, i32 15 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 672, i32 17 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 675, i32 17 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 678, i32 17 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 681, i32 17 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 724, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 725, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 762, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 776, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 815, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 825, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 838, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 854, i32 45 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 900, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 53, i32 25 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 283, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 284, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 286, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 287, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 288, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 289, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 290, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 291, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 292, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 293, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 294, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 295, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 296, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 297, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant [29 x i8] c"ceph_param_read_from_replica\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 258, i32 36 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 299, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 300, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant [19 x i8] c"ceph_param_ms_mode\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 273, i32 36 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 302, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 303, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 304, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 259, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 260, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 261, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 274, i32 3 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 276, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 277, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 278, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 369, i32 4 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 373, i32 4 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 377, i32 4 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 381, i32 4 }
@___asan_gen_.550 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.556 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.557 = private constant [26 x i8] c"../net/ceph/ceph_common.c\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 884, i32 2 }
@llvm.compiler.used = appending global [172 x ptr] [ptr @__UNIQUE_ID_author327, ptr @__UNIQUE_ID_author328, ptr @__UNIQUE_ID_author329, ptr @__UNIQUE_ID_description330, ptr @__UNIQUE_ID_file331, ptr @__UNIQUE_ID_license332, ptr @__ceph_open_session._entry, ptr @__ceph_open_session._entry_ptr, ptr @__exitcall_exit_ceph_lib, ptr @__initcall__kmod_libceph__326_909_init_ceph_lib6, ptr @__ksymtab___ceph_open_session, ptr @__ksymtab_ceph_alloc_options, ptr @__ksymtab_ceph_check_fsid, ptr @__ksymtab_ceph_client_addr, ptr @__ksymtab_ceph_client_gid, ptr @__ksymtab_ceph_compare_options, ptr @__ksymtab_ceph_create_client, ptr @__ksymtab_ceph_destroy_client, ptr @__ksymtab_ceph_destroy_options, ptr @__ksymtab_ceph_msg_type_name, ptr @__ksymtab_ceph_open_session, ptr @__ksymtab_ceph_parse_fsid, ptr @__ksymtab_ceph_parse_mon_ips, ptr @__ksymtab_ceph_parse_param, ptr @__ksymtab_ceph_print_client_options, ptr @__ksymtab_ceph_reset_client_addr, ptr @__ksymtab_ceph_wait_for_latest_osdmap, ptr @__ksymtab_libceph_compatible, ptr @__param_supported_features, ptr @ceph_check_fsid._entry, ptr @ceph_check_fsid._entry_ptr, ptr @exit_ceph_lib, ptr @init_ceph_lib._entry, ptr @init_ceph_lib._entry_ptr, ptr @param_ops_supported_features, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @ceph_parameters, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @ceph_create_client.__key, ptr @.str.81, ptr @ceph_create_client.__key.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @ceph_param_read_from_replica, ptr @.str.115, ptr @.str.116, ptr @ceph_param_ms_mode, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132], section "llvm.metadata"
@0 = internal global [140 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @param_ops_supported_features to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_check_fsid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_parameters to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_create_client.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_create_client.__key.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_param_read_from_replica to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_param_ms_mode to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ceph_lib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @libceph_compatible(ptr nocapture readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @ceph_msg_type_name(i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %sw.default [
    i32 1, label %entry.return_crit_edge
    i32 2, label %sw.bb1
    i32 17, label %sw.bb2
    i32 18, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 15, label %sw.bb6
    i32 16, label %sw.bb7
    i32 13, label %sw.bb8
    i32 14, label %sw.bb9
    i32 19, label %sw.bb10
    i32 20, label %sw.bb11
    i32 21, label %sw.bb12
    i32 103, label %sw.bb13
    i32 22, label %sw.bb14
    i32 23, label %sw.bb15
    i32 24, label %sw.bb16
    i32 25, label %sw.bb17
    i32 26, label %sw.bb18
    i32 784, label %sw.bb19
    i32 787, label %sw.bb20
    i32 788, label %sw.bb21
    i32 786, label %sw.bb22
    i32 785, label %sw.bb23
    i32 48, label %sw.bb24
    i32 49, label %sw.bb25
    i32 50, label %sw.bb26
    i32 51, label %sw.bb27
    i32 41, label %sw.bb28
    i32 42, label %sw.bb29
    i32 43, label %sw.bb30
    i32 44, label %sw.bb31
    i32 61, label %sw.bb32
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb20:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb29:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb31:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.bb32:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

return:                                           ; preds = %sw.default, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.return_crit_edge
  %retval.0 = phi ptr [ @.str.33, %sw.default ], [ @.str.32, %sw.bb32 ], [ @.str.31, %sw.bb31 ], [ @.str.30, %sw.bb30 ], [ @.str.29, %sw.bb29 ], [ @.str.28, %sw.bb28 ], [ @.str.27, %sw.bb27 ], [ @.str.26, %sw.bb26 ], [ @.str.25, %sw.bb25 ], [ @.str.24, %sw.bb24 ], [ @.str.23, %sw.bb23 ], [ @.str.22, %sw.bb22 ], [ @.str.21, %sw.bb21 ], [ @.str.20, %sw.bb20 ], [ @.str.19, %sw.bb19 ], [ @.str.18, %sw.bb18 ], [ @.str.17, %sw.bb17 ], [ @.str.16, %sw.bb16 ], [ @.str.15, %sw.bb15 ], [ @.str.14, %sw.bb14 ], [ @.str.13, %sw.bb13 ], [ @.str.12, %sw.bb12 ], [ @.str.11, %sw.bb11 ], [ @.str.10, %sw.bb10 ], [ @.str.9, %sw.bb9 ], [ @.str.8, %sw.bb8 ], [ @.str.7, %sw.bb7 ], [ @.str.6, %sw.bb6 ], [ @.str.5, %sw.bb5 ], [ @.str.4, %sw.bb4 ], [ @.str.3, %sw.bb3 ], [ @.str.2, %sw.bb2 ], [ @.str.1, %sw.bb1 ], [ @.str, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_check_fsid(ptr noundef %client, ptr noundef %fsid) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %have_fsid = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %have_fsid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %have_fsid, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %client, ptr noundef dereferenceable(16) %fsid, i32 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool2.not = icmp eq i32 %bcmp, 0
  br i1 %tobool2.not, label %if.then.return_crit_edge, label %do.end

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %client, ptr noundef %fsid) #17
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = call ptr @memcpy(ptr %client, ptr %fsid, i32 16)
  br label %return

return:                                           ; preds = %if.else, %do.end, %if.then.return_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %if.then.return_crit_edge ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_compare_options(ptr noundef %new_opt, ptr nocapture noundef readonly %client) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %options, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !322) #13
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 110
  %6 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nsproxy, align 4
  %net_ns = getelementptr inbounds %struct.nsproxy, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_ns, align 4
  %net = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 10, i32 4
  %10 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net, align 4
  %cmp.i.not = icmp eq ptr %9, %11
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @memcmp(ptr noundef dereferenceable(184) %new_opt, ptr noundef dereferenceable(184) %1, i32 noundef 184) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %name = getelementptr inbounds %struct.ceph_options, ptr %new_opt, i32 0, i32 11
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  %name7 = getelementptr inbounds %struct.ceph_options, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %name7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name7, align 4
  %tobool.not.i = icmp eq ptr %13, null
  %tobool1.not.i = icmp eq ptr %15, null
  %or.cond.i = and i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %if.end6.if.end11_crit_edge, label %if.end.i

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.end.i:                                         ; preds = %if.end6
  %tobool.not.not.i = xor i1 %tobool.not.i, true
  %or.cond18.i = and i1 %tobool1.not.i, %tobool.not.not.i
  br i1 %or.cond18.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %or.cond20.i = or i1 %tobool1.not.i, %tobool.not.not.i
  br i1 %or.cond20.i, label %strcmp_null.exit, label %if.end6.i.cleanup_crit_edge

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

strcmp_null.exit:                                 ; preds = %if.end6.i
  %call.i = tail call i32 @strcmp(ptr noundef %13, ptr noundef %15) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %strcmp_null.exit.if.end11_crit_edge, label %strcmp_null.exit.cleanup_crit_edge

strcmp_null.exit.cleanup_crit_edge:               ; preds = %strcmp_null.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

strcmp_null.exit.if.end11_crit_edge:              ; preds = %strcmp_null.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.end11:                                         ; preds = %strcmp_null.exit.if.end11_crit_edge, %if.end6.if.end11_crit_edge
  %key = getelementptr inbounds %struct.ceph_options, ptr %new_opt, i32 0, i32 12
  %16 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %key, align 4
  %tobool12.not = icmp eq ptr %17, null
  %key20 = getelementptr inbounds %struct.ceph_options, ptr %1, i32 0, i32 12
  %18 = ptrtoint ptr %key20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %key20, align 4
  %tobool21.not = icmp eq ptr %19, null
  br i1 %tobool12.not, label %land.lhs.true19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end11
  br i1 %tobool21.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true26

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true19:                                  ; preds = %if.end11
  br i1 %tobool21.not, label %land.lhs.true19.if.end93_crit_edge, label %land.lhs.true19.cleanup_crit_edge

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true19.if.end93_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93

land.lhs.true26:                                  ; preds = %land.lhs.true
  %20 = ptrtoint ptr %key20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %key20, align 4
  %tobool28.not = icmp eq ptr %21, null
  br i1 %tobool28.not, label %land.lhs.true26.if.end93_crit_edge, label %if.then29

land.lhs.true26.if.end93_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93

if.then29:                                        ; preds = %land.lhs.true26
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %17, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp.not = icmp eq i32 %23, %25
  br i1 %cmp.not, label %if.end34, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end34:                                         ; preds = %if.then29
  %created = getelementptr inbounds %struct.ceph_crypto_key, ptr %17, i32 0, i32 1
  %26 = ptrtoint ptr %created to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %created, align 4
  %created37 = getelementptr inbounds %struct.ceph_crypto_key, ptr %21, i32 0, i32 1
  %28 = ptrtoint ptr %created37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %created37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp39.not = icmp eq i32 %27, %29
  br i1 %cmp39.not, label %if.end41, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end41:                                         ; preds = %if.end34
  %tv_nsec = getelementptr inbounds %struct.ceph_crypto_key, ptr %17, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tv_nsec, align 4
  %tv_nsec46 = getelementptr inbounds %struct.ceph_crypto_key, ptr %21, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %tv_nsec46 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tv_nsec46, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp47.not = icmp eq i32 %31, %33
  br i1 %cmp47.not, label %if.end49, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end49:                                         ; preds = %if.end41
  %len = getelementptr inbounds %struct.ceph_crypto_key, ptr %17, i32 0, i32 2
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  %len52 = getelementptr inbounds %struct.ceph_crypto_key, ptr %21, i32 0, i32 2
  %36 = ptrtoint ptr %len52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp53.not = icmp eq i32 %35, %37
  br i1 %cmp53.not, label %if.end55, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end55:                                         ; preds = %if.end49
  %key57 = getelementptr inbounds %struct.ceph_crypto_key, ptr %17, i32 0, i32 3
  %38 = ptrtoint ptr %key57 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %key57, align 4
  %tobool58.not = icmp eq ptr %39, null
  %key70 = getelementptr inbounds %struct.ceph_crypto_key, ptr %21, i32 0, i32 3
  %40 = ptrtoint ptr %key70 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %key70, align 4
  %tobool71.not = icmp eq ptr %41, null
  br i1 %tobool58.not, label %land.lhs.true68, label %land.lhs.true59

land.lhs.true59:                                  ; preds = %if.end55
  br i1 %tobool71.not, label %land.lhs.true59.cleanup_crit_edge, label %land.lhs.true77

land.lhs.true59.cleanup_crit_edge:                ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true68:                                  ; preds = %if.end55
  br i1 %tobool71.not, label %land.lhs.true68.if.end93_crit_edge, label %land.lhs.true68.cleanup_crit_edge

land.lhs.true68.cleanup_crit_edge:                ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true68.if.end93_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93

land.lhs.true77:                                  ; preds = %land.lhs.true59
  %42 = ptrtoint ptr %key70 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %key70, align 4
  %tobool80.not = icmp eq ptr %43, null
  br i1 %tobool80.not, label %land.lhs.true77.if.end93_crit_edge, label %if.then81

land.lhs.true77.if.end93_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93

if.then81:                                        ; preds = %land.lhs.true77
  %call88 = tail call i32 @memcmp(ptr noundef nonnull %39, ptr noundef nonnull %43, i32 noundef %35) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.then81.if.end93_crit_edge, label %if.then81.cleanup_crit_edge

if.then81.cleanup_crit_edge:                      ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then81.if.end93_crit_edge:                     ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93

if.end93:                                         ; preds = %if.then81.if.end93_crit_edge, %land.lhs.true77.if.end93_crit_edge, %land.lhs.true68.if.end93_crit_edge, %land.lhs.true26.if.end93_crit_edge, %land.lhs.true19.if.end93_crit_edge
  %crush_locs = getelementptr inbounds %struct.ceph_options, ptr %new_opt, i32 0, i32 13
  %crush_locs94 = getelementptr inbounds %struct.ceph_options, ptr %1, i32 0, i32 13
  %call95 = tail call i32 @ceph_compare_crush_locs(ptr noundef %crush_locs, ptr noundef %crush_locs94) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %for.cond.preheader, label %if.end93.cleanup_crit_edge

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end93
  %monmap = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 11, i32 1
  %num_mon = getelementptr inbounds %struct.ceph_options, ptr %new_opt, i32 0, i32 10
  %44 = ptrtoint ptr %num_mon to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_mon, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp99156 = icmp sgt i32 %45, 0
  br i1 %cmp99156, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mon_addr = getelementptr inbounds %struct.ceph_options, ptr %new_opt, i32 0, i32 9
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0157, 1
  %46 = ptrtoint ptr %num_mon to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_mon, align 4
  %cmp99 = icmp slt i32 %inc, %47
  br i1 %cmp99, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0157 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %48 = ptrtoint ptr %monmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %monmap, align 4
  %50 = ptrtoint ptr %mon_addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mon_addr, align 4
  %arrayidx = getelementptr %struct.ceph_entity_addr, ptr %51, i32 %i.0157
  %call100 = tail call i32 @ceph_monmap_contains(ptr noundef %49, ptr noundef %arrayidx) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end93.cleanup_crit_edge, %if.then81.cleanup_crit_edge, %land.lhs.true68.cleanup_crit_edge, %land.lhs.true59.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.then29.cleanup_crit_edge, %land.lhs.true19.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %strcmp_null.exit.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call.i, %strcmp_null.exit.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ 1, %land.lhs.true19.cleanup_crit_edge ], [ -1, %if.then29.cleanup_crit_edge ], [ -1, %if.end34.cleanup_crit_edge ], [ -1, %if.end41.cleanup_crit_edge ], [ -1, %if.end49.cleanup_crit_edge ], [ -1, %land.lhs.true59.cleanup_crit_edge ], [ 1, %land.lhs.true68.cleanup_crit_edge ], [ %call88, %if.then81.cleanup_crit_edge ], [ %call95, %if.end93.cleanup_crit_edge ], [ 1, %if.end6.i.cleanup_crit_edge ], [ -1, %if.end.i.cleanup_crit_edge ], [ -1, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ], [ -1, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_compare_crush_locs(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_monmap_contains(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_parse_fsid(ptr noundef %str, ptr noundef %fsid) #1 align 64 {
entry:
  %tmp = alloca [3 x i8], align 1
  %d = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %tmp) #13
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp, align 1, !annotation !333
  %1 = getelementptr inbounds [3 x i8], ptr %tmp, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !333
  %3 = getelementptr inbounds [3 x i8], ptr %tmp, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d) #13
  %4 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %d, align 4, !annotation !333
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_parse_fsid.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_parse_fsid, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !334

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_parse_fsid.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.40, i32 noundef 0, ptr noundef nonnull @.str.41, ptr noundef getelementptr inbounds ([23 x i8], ptr @.str.36, i32 0, i32 9), i32 noundef 200, ptr noundef nonnull @.str.38, ptr noundef %str) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %3, align 1
  %6 = ptrtoint ptr %str to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not8791.not = icmp eq i8 %7, 0
  br i1 %tobool5.not8791.not, label %do.end.while.end.thread_crit_edge, label %do.end.while.body.lr.ph_crit_edge

do.end.while.body.lr.ph_crit_edge:                ; preds = %do.end
  br label %while.body.lr.ph

do.end.while.end.thread_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.thread

while.body.lr.ph:                                 ; preds = %if.end38.while.body.lr.ph_crit_edge, %do.end.while.body.lr.ph_crit_edge
  %8 = phi i8 [ %27, %if.end38.while.body.lr.ph_crit_edge ], [ %7, %do.end.while.body.lr.ph_crit_edge ]
  %str.addr.0.ph93 = phi ptr [ %add.ptr, %if.end38.while.body.lr.ph_crit_edge ], [ %str, %do.end.while.body.lr.ph_crit_edge ]
  %i.0.ph92 = phi i32 [ %inc, %if.end38.while.body.lr.ph_crit_edge ], [ 0, %do.end.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %if.then12.while.body_crit_edge, %while.body.lr.ph
  %9 = phi i8 [ %8, %while.body.lr.ph ], [ %14, %if.then12.while.body_crit_edge ]
  %str.addr.089 = phi ptr [ %str.addr.0.ph93, %while.body.lr.ph ], [ %incdec.ptr, %if.then12.while.body_crit_edge ]
  %conv = zext i8 %9 to i32
  %arrayidx8 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8, align 1
  %12 = and i8 %11, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp10.not = icmp eq i8 %12, 0
  br i1 %cmp10.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %while.body
  %incdec.ptr = getelementptr i8, ptr %str.addr.089, i32 1
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %incdec.ptr, align 1
  %tobool5.not.not = icmp eq i8 %14, 0
  br i1 %tobool5.not.not, label %if.then12.while.end_crit_edge, label %if.then12.while.body_crit_edge

if.then12.while.body_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.then12.while.end_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end13:                                         ; preds = %while.body
  %15 = and i8 %11, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp19.not = icmp eq i8 %15, 0
  br i1 %cmp19.not, label %if.end13.while.end_crit_edge, label %lor.lhs.false

if.end13.while.end_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

lor.lhs.false:                                    ; preds = %if.end13
  %arrayidx21 = getelementptr i8, ptr %str.addr.089, i32 1
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %17 to i32
  %arrayidx23 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv22
  %18 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx23, align 1
  %20 = and i8 %19, 68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp26.not = icmp eq i8 %20, 0
  br i1 %cmp26.not, label %lor.lhs.false.while.end_crit_edge, label %if.end29

lor.lhs.false.while.end_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end29:                                         ; preds = %lor.lhs.false
  %21 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %9, ptr %tmp, align 1
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %17, ptr %1, align 1
  %call34 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %tmp, ptr noundef nonnull @.str.42, ptr noundef nonnull %d)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 1
  br i1 %cmp35, label %if.end29.while.end_crit_edge, label %if.end38

if.end29.while.end_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end38:                                         ; preds = %if.end29
  %23 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %d, align 4
  %conv40 = trunc i32 %24 to i8
  %arrayidx42 = getelementptr [16 x i8], ptr %fsid, i32 0, i32 %i.0.ph92
  %25 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv40, ptr %arrayidx42, align 1
  %inc = add nuw nsw i32 %i.0.ph92, 1
  %add.ptr = getelementptr i8, ptr %str.addr.089, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %i.0.ph92)
  %cmp = icmp ult i32 %i.0.ph92, 15
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool5.not87 = icmp ne i8 %27, 0
  %or.cond88 = select i1 %tobool5.not87, i1 %cmp, i1 false
  br i1 %or.cond88, label %if.end38.while.body.lr.ph_crit_edge, label %if.end38.while.end_crit_edge

if.end38.while.end_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end38.while.body.lr.ph_crit_edge:              ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.lr.ph

while.end:                                        ; preds = %if.end38.while.end_crit_edge, %if.end29.while.end_crit_edge, %lor.lhs.false.while.end_crit_edge, %if.end13.while.end_crit_edge, %if.then12.while.end_crit_edge
  %i.0.ph86 = phi i32 [ %i.0.ph92, %if.then12.while.end_crit_edge ], [ %inc, %if.end38.while.end_crit_edge ], [ %i.0.ph92, %lor.lhs.false.while.end_crit_edge ], [ %i.0.ph92, %if.end13.while.end_crit_edge ], [ %i.0.ph92, %if.end29.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.0.ph86)
  %cmp43 = icmp eq i32 %i.0.ph86, 16
  %spec.select = select i1 %cmp43, i32 0, i32 -22
  br label %while.end.thread

while.end.thread:                                 ; preds = %while.end, %do.end.while.end.thread_crit_edge
  %28 = phi i32 [ -22, %do.end.while.end.thread_crit_edge ], [ %spec.select, %while.end ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_parse_fsid.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_parse_fsid, %if.then59)) #13
          to label %do.end63 [label %if.then59], !srcloc !334

if.then59:                                        ; preds = %while.end.thread
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_parse_fsid.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.44, i32 noundef 0, ptr noundef nonnull @.str.41, ptr noundef getelementptr inbounds ([23 x i8], ptr @.str.36, i32 0, i32 9), i32 noundef 220, ptr noundef nonnull @.str.38, i32 noundef %28, ptr noundef %fsid) #13
  br label %do.end63

do.end63:                                         ; preds = %if.then59, %while.end.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d) #13
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %tmp) #13
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ceph_alloc_options() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 204) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %crush_locs = getelementptr inbounds %struct.ceph_options, ptr %call7.i.i, i32 0, i32 13
  %1 = ptrtoint ptr %crush_locs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %crush_locs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4216) #19
  %mon_addr = getelementptr inbounds %struct.ceph_options, ptr %call7.i.i, i32 0, i32 9
  %3 = ptrtoint ptr %mon_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i.i, ptr %mon_addr, align 8
  %tobool3.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16, ptr %call7.i.i, align 8
  %osd_keepalive_timeout = getelementptr inbounds %struct.ceph_options, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %osd_keepalive_timeout to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 500, ptr %osd_keepalive_timeout, align 4
  %mount_timeout = getelementptr inbounds %struct.ceph_options, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %mount_timeout to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6000, ptr %mount_timeout, align 4
  %osd_idle_ttl = getelementptr inbounds %struct.ceph_options, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %osd_idle_ttl to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 6000, ptr %osd_idle_ttl, align 8
  %osd_request_timeout = getelementptr inbounds %struct.ceph_options, ptr %call7.i.i, i32 0, i32 6
  %8 = call ptr @memset(ptr %osd_request_timeout, i32 0, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end5 ], [ null, %if.then4 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_destroy_options(ptr noundef %opt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_destroy_options.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_destroy_options, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !334

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_destroy_options.__UNIQUE_ID_ddebug318, ptr noundef nonnull @.str.47, i32 noundef 0, ptr noundef nonnull @.str.41, ptr noundef getelementptr inbounds ([23 x i8], ptr @.str.36, i32 0, i32 9), i32 noundef 338, ptr noundef %opt) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool4.not = icmp eq ptr %opt, null
  br i1 %tobool4.not, label %do.end.return_crit_edge, label %if.end6

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end6:                                          ; preds = %do.end
  %crush_locs = getelementptr inbounds %struct.ceph_options, ptr %opt, i32 0, i32 13
  tail call void @ceph_clear_crush_locs(ptr noundef %crush_locs) #13
  %name = getelementptr inbounds %struct.ceph_options, ptr %opt, i32 0, i32 11
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %1) #13
  %key = getelementptr inbounds %struct.ceph_options, ptr %opt, i32 0, i32 12
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key, align 4
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.end6.if.end11_crit_edge, label %if.then8

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ceph_crypto_key_destroy(ptr noundef nonnull %3) #13
  %4 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %key, align 4
  tail call void @kfree(ptr noundef %5) #13
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end6.if.end11_crit_edge
  %mon_addr = getelementptr inbounds %struct.ceph_options, ptr %opt, i32 0, i32 9
  %6 = ptrtoint ptr %mon_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mon_addr, align 4
  tail call void @kfree(ptr noundef %7) #13
  tail call void @kfree(ptr noundef nonnull %opt) #13
  br label %return

return:                                           ; preds = %if.end11, %do.end.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_clear_crush_locs(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_crypto_key_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_parse_mon_ips(ptr noundef %buf, i32 noundef %len, ptr noundef %opt, ptr noundef %l, i8 noundef zeroext %delim) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %buf, i32 %len
  %mon_addr = getelementptr inbounds %struct.ceph_options, ptr %opt, i32 0, i32 9
  %0 = ptrtoint ptr %mon_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mon_addr, align 4
  %num_mon = getelementptr inbounds %struct.ceph_options, ptr %opt, i32 0, i32 10
  %call = tail call i32 @ceph_parse_ips(ptr noundef %buf, ptr noundef %add.ptr, ptr noundef %1, i32 noundef 31, ptr noundef %num_mon, i8 noundef zeroext %delim) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %l, ptr noundef nonnull @.str.37, i8 noundef zeroext 101, ptr noundef nonnull @.str.48, i32 noundef %call) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_parse_ips(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @logfc(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_parse_param(ptr noundef %param, ptr noundef %opt, ptr noundef %l) #1 align 64 {
entry:
  %result = alloca %struct.fs_parse_result, align 8
  %log = alloca %struct.p_log, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %result) #13
  %0 = call ptr @memset(ptr %result, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %log) #13
  %1 = getelementptr inbounds %struct.p_log, ptr %log, i32 0, i32 1
  %2 = ptrtoint ptr %log to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.37, ptr %log, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %l, ptr %1, align 4
  %call = call i32 @__fs_parse(ptr noundef nonnull %log, ptr noundef nonnull @ceph_parameters, ptr noundef %param, ptr noundef nonnull %result) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_parse_param.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_parse_param, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !334

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %param, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_parse_param.__UNIQUE_ID_ddebug319, ptr noundef nonnull @.str.51, i32 noundef 0, ptr noundef nonnull @.str.41, ptr noundef getelementptr inbounds ([23 x i8], ptr @.str.36, i32 0, i32 9), i32 noundef 426, ptr noundef nonnull @.str.49, ptr noundef %5, i32 noundef %call) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %6 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %call, label %do.body184 [
    i32 8, label %sw.bb
    i32 4, label %sw.bb14
    i32 5, label %sw.bb23
    i32 6, label %sw.bb25
    i32 7, label %sw.bb41
    i32 9, label %sw.bb52
    i32 10, label %sw.bb60
    i32 11, label %sw.bb72
    i32 0, label %sw.bb104
    i32 2, label %sw.bb110
    i32 1, label %sw.bb118
    i32 3, label %sw.bb124
    i32 12, label %sw.bb130
    i32 13, label %sw.bb137
    i32 14, label %sw.bb147
    i32 15, label %sw.bb157
    i32 16, label %sw.bb167
    i32 17, label %sw.bb177
    i32 18, label %sw.bb180
  ]

sw.bb:                                            ; preds = %if.end7
  %7 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %size = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 3
  %10 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %11
  %my_addr = getelementptr inbounds %struct.ceph_options, ptr %opt, i32 0, i32 2
  %call8 = call i32 @ceph_parse_ips(ptr noundef %9, ptr noundef %add.ptr, ptr noundef %my_addr, i32 noundef 1, ptr noundef null, i8 noundef zeroext 44) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end13, label %if.then10

if.then10:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %log, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %13, ptr noundef %15, i8 noundef zeroext 101, ptr noundef nonnull @.str.52, i32 noundef %call8) #13
  br label %cleanup

if.end13:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %opt, align 4
  %or = or i32 %17, 4
  store i32 %or, ptr %opt, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %if.end7
  %18 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %fsid = getelementptr inbounds %struct.ceph_options, ptr %opt, i32 0, i32 1
  %call15 = call i32 @ceph_parse_fsid(ptr noundef %20, ptr noundef %fsid)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end20, label %if.then17

if.then17:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %23 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %log, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %22, ptr noundef %24, i8 noundef zeroext 101, ptr noundef nonnull @.str.53, i32 noundef %call15) #13
  br label %cleanup

if.end20:                                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #15
  %25 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %opt, align 4
  %or22 = or i32 %26, 1
  store i32 %or22, ptr %opt, align 4
  br label %cleanup

sw.bb23:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.ceph_options, ptr %opt, i32 0, i32 11
  %27 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %name, align 4
  call void @kfree(ptr noundef %28) #13
  %29 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %32 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %name, align 4
  store ptr null, ptr %29, align 4
  br label %cleanup

sw.bb25:                                          ; preds = %if.end7
  %key26 = getelementptr inbounds %struct.ceph_options, ptr %opt, i32 0, i32 12
  %33 = ptrtoint ptr %key26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %key26, align 4
  call void @ceph_crypto_key_destroy(ptr noundef %34) #13
  %35 = ptrtoint ptr %key26 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %key26, align 4
  call void @kfree(ptr noundef %36) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 24) #19
  %38 = ptrtoint ptr %key26 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i, ptr %key26, align 4
  %tobool31.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool31.not, label %sw.bb25.cleanup_crit_edge, label %if.end33

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end33:                                         ; preds = %sw.bb25
  %39 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %call35 = call i32 @ceph_crypto_key_unarmor(ptr noundef nonnull %call7.i.i, ptr noundef %41) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end33.cleanup_crit_edge, label %if.then37

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %44 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %log, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %43, ptr noundef %45, i8 noundef zeroext 101, ptr noundef nonnull @.str.54, i32 noundef %call35) #13
  br label %cleanup

sw.bb41:                                          ; preds = %if.end7
  %key42 = getelementptr inbounds %struct.ceph_options, ptr %opt, i32 0, i32 12
  %46 = ptrtoint ptr %key42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %key42, align 4
  call void @ceph_crypto_key_destroy(ptr noundef %47) #13
  %48 = ptrtoint ptr %key42 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %key42, align 4
  call void @kfree(ptr noundef %49) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %50 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i292 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 3520, i32 noundef 24) #19
  %51 = ptrtoint ptr %key42 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7.i.i292, ptr %key42, align 4
  %tobool47.not = icmp eq ptr %call7.i.i292, null
  br i1 %tobool47.not, label %sw.bb41.cleanup_crit_edge, label %if.end49

sw.bb41.cleanup_crit_edge:                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end49:                                         ; preds = %sw.bb41
  %52 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %call.i.i = call ptr @request_key_tag(ptr noundef nonnull @key_type_ceph, ptr noundef %54, ptr noundef null, ptr noundef null) #13
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i293

if.then.i:                                        ; preds = %if.end49
  %55 = ptrtoint ptr %call.i.i to i32
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %55, label %sw.default.i [
    i32 -126, label %sw.bb.i
    i32 -127, label %sw.bb4.i
    i32 -128, label %sw.bb7.i
  ]

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %59 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %log, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %58, ptr noundef %60, i8 noundef zeroext 101, ptr noundef nonnull @.str.127, ptr noundef %54) #13
  br label %cleanup

sw.bb4.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %63 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %log, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %62, ptr noundef %64, i8 noundef zeroext 101, ptr noundef nonnull @.str.128, ptr noundef %54) #13
  br label %cleanup

sw.bb7.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %67 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %log, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %66, ptr noundef %68, i8 noundef zeroext 101, ptr noundef nonnull @.str.129, ptr noundef %54) #13
  br label %cleanup

sw.default.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %71 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %log, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %70, ptr noundef %72, i8 noundef zeroext 101, ptr noundef nonnull @.str.130, i32 noundef %55, ptr noundef %54) #13
  br label %cleanup

if.end.i293:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #15
  %73 = getelementptr inbounds %struct.key, ptr %call.i.i, i32 0, i32 17
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %call12.i = call i32 @ceph_crypto_key_clone(ptr noundef nonnull %call7.i.i292, ptr noundef %75) #13
  call void @key_put(ptr noundef %call.i.i) #13
  br label %cleanup

sw.bb52:                                          ; preds = %if.end7
  %crush_locs = getelementptr inbounds %struct.ceph_options, ptr %opt, i32 0, i32 13
  call void @ceph_clear_crush_locs(ptr noundef %crush_locs) #13
  %76 = getelementptr inbounds %struct.fs_parameter, ptr %param, i32 0, i32 2
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %76, align 4
  %call54 = call i32 @ceph_parse_crush_location(ptr noundef %78, ptr noundef %crush_locs) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %sw.bb52.cleanup_crit_edge, label %if.then56

sw.bb52.cleanup_crit_edge:                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then56:                                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #15
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 4
  %81 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %log, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %80, ptr noundef %82, i8 noundef zeroext 101, ptr noundef nonnull @.str.55, i32 noundef %call54) #13
  br label %cleanup

sw.bb60:                                          ; preds = %if.end7
  %83 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 8
  %86 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %85, label %do.body66 [
    i32 0, label %sw.bb61
    i32 1, label %sw.bb62
    i32 2, label %sw.bb64
  ]

sw.bb61:                                          ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #15
  %read_from_replica = getelementptr inbounds %struct.ceph_options, ptr %opt, i32 0, i32 7
  %87 = ptrtoint ptr %read_from_replica to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %read_from_replica, align 4
  br label %cleanup

sw.bb62:                                          ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #15
  %read_from_replica63 = getelementptr inbounds %struct.ceph_options, ptr %opt, i32 0, i32 7
  %88 = ptrtoint ptr %read_from_replica63 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 256, ptr %read_from_replica63, align 4
  br label %cleanup

sw.bb64:                                          ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #15
  %read_from_replica65 = getelementptr inbounds %struct.ceph_options, ptr %opt, i32 0, i32 7
  %89 = ptrtoint ptr %read_from_replica65 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 8192, ptr %read_from_replica65, align 4
  br label %cleanup

do.body66:                                        ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/ceph_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 498, 0\0A.popsection", ""() #13, !srcloc !335
  unreachable

sw.bb72:                                          ; preds = %if.end7
  %90 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 8
  %93 = zext i32 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %92, label %do.body97 [
    i32 0, label %sw.bb73
    i32 1, label %sw.bb76
    i32 2, label %sw.bb81
    i32 3, label %sw.bb86
    i32 4, label %sw.bb91
  ]

sw.bb73:                                          ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #15
  %con_modes = getelementptr inbounds %struct.ceph_options, ptr %opt, i32 0, i32 8
  %94 = ptrtoint ptr %con_modes to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %con_modes, align 4
  %arrayidx75 = getelementptr %struct.ceph_options, ptr %opt, i32 0, i32 8, i32 1
  %95 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %arrayidx75, align 4
  br label %cleanup

sw.bb76:                                          ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #15
  %con_modes77 = getelementptr inbounds %struct.ceph_options, ptr %opt, i32 0, i32 8
  %96 = ptrtoint ptr %con_modes77 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %con_modes77, align 4
  %arrayidx80 = getelementptr %struct.ceph_options, ptr %opt, i32 0, i32 8, i32 1
  %97 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %arrayidx80, align 4
  br label %cleanup

sw.bb81:                                          ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #15
  %con_modes82 = getelementptr inbounds %struct.ceph_options, ptr %opt, i32 0, i32 8
  %98 = ptrtoint ptr %con_modes82 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 2, ptr %con_modes82, align 4
  %arrayidx85 = getelementptr %struct.ceph_options, ptr %opt, i32 0, i32 8, i32 1
  %99 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %arrayidx85, align 4
  br label %cleanup

sw.bb86:                                          ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #15
  %con_modes87 = getelementptr inbounds %struct.ceph_options, ptr %opt, i32 0, i32 8
  %100 = ptrtoint ptr %con_modes87 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1, ptr %con_modes87, align 4
  %arrayidx90 = getelementptr %struct.ceph_options, ptr %opt, i32 0, i32 8, i32 1
  %101 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 2, ptr %arrayidx90, align 4
  br label %cleanup

sw.bb91:                                          ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #15
  %con_modes92 = getelementptr inbounds %struct.ceph_options, ptr %opt, i32 0, i32 8
  %102 = ptrtoint ptr %con_modes92 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 2, ptr %con_modes92, align 4
  %arrayidx95 = getelementptr %struct.ceph_options, ptr %opt, i32 0, i32 8, i32 1
  %103 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 1, ptr %arrayidx95, align 4
  br label %cleanup

do.body97:                                        ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/ceph_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 524, 0\0A.popsection", ""() #13, !srcloc !336
  unreachable

sw.bb104:                                         ; preds = %if.end7
  %104 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %104, align 8
  %107 = add i32 %106, -2147484
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483, i32 %107)
  %108 = icmp ult i32 %107, -2147483
  br i1 %108, label %sw.bb104.out_of_range_crit_edge, label %if.else.i

sw.bb104.out_of_range_crit_edge:                  ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_of_range

if.else.i:                                        ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #15
  %mul = mul nuw nsw i32 %106, 1000
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %mul) #13
  %osd_keepalive_timeout = getelementptr inbounds %struct.ceph_options, ptr %opt, i32 0, i32 5
  %109 = ptrtoint ptr %osd_keepalive_timeout to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %call2.i, ptr %osd_keepalive_timeout, align 4
  br label %cleanup

sw.bb110:                                         ; preds = %if.end7
  %110 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 8
  %113 = add i32 %112, -2147484
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483, i32 %113)
  %114 = icmp ult i32 %113, -2147483
  br i1 %114, label %sw.bb110.out_of_range_crit_edge, label %if.else.i275

sw.bb110.out_of_range_crit_edge:                  ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_of_range

if.else.i275:                                     ; preds = %sw.bb110
  call void @__sanitizer_cov_trace_pc() #15
  %mul116 = mul nuw nsw i32 %112, 1000
  %call2.i274 = call i32 @__msecs_to_jiffies(i32 noundef %mul116) #13
  %osd_idle_ttl = getelementptr inbounds %struct.ceph_options, ptr %opt, i32 0, i32 4
  %115 = ptrtoint ptr %osd_idle_ttl to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %call2.i274, ptr %osd_idle_ttl, align 4
  br label %cleanup

sw.bb118:                                         ; preds = %if.end7
  %116 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %116, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483, i32 %118)
  %cmp119 = icmp ugt i32 %118, 2147483
  br i1 %cmp119, label %sw.bb118.out_of_range_crit_edge, label %if.else.i282

sw.bb118.out_of_range_crit_edge:                  ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_of_range

if.else.i282:                                     ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #15
  %mul122 = mul nuw nsw i32 %118, 1000
  %call2.i281 = call i32 @__msecs_to_jiffies(i32 noundef %mul122) #13
  %mount_timeout = getelementptr inbounds %struct.ceph_options, ptr %opt, i32 0, i32 3
  %119 = ptrtoint ptr %mount_timeout to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %call2.i281, ptr %mount_timeout, align 4
  br label %cleanup

sw.bb124:                                         ; preds = %if.end7
  %120 = getelementptr inbounds %struct.fs_parse_result, ptr %result, i32 0, i32 1
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %120, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483, i32 %122)
  %cmp125 = icmp ugt i32 %122, 2147483
  br i1 %cmp125, label %sw.bb124.out_of_range_crit_edge, label %if.else.i289

sw.bb124.out_of_range_crit_edge:                  ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_of_range

if.else.i289:                                     ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_pc() #15
  %mul128 = mul nuw nsw i32 %122, 1000
  %call2.i288 = call i32 @__msecs_to_jiffies(i32 noundef %mul128) #13
  %osd_request_timeout = getelementptr inbounds %struct.ceph_options, ptr %opt, i32 0, i32 6
  %123 = ptrtoint ptr %osd_request_timeout to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %call2.i288, ptr %osd_request_timeout, align 4
  br label %cleanup

sw.bb130:                                         ; preds = %if.end7
  %124 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %result, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool131.not = icmp eq i8 %125, 0
  %126 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %opt, align 4
  br i1 %tobool131.not, label %if.then132, label %if.else

if.then132:                                       ; preds = %sw.bb130
  call void @__sanitizer_cov_trace_pc() #15
  %and = and i32 %127, -3
  %128 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %and, ptr %opt, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb130
  call void @__sanitizer_cov_trace_pc() #15
  %or135 = or i32 %127, 2
  %129 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %or135, ptr %opt, align 4
  br label %cleanup

sw.bb137:                                         ; preds = %if.end7
  %130 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %result, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool139.not = icmp eq i8 %131, 0
  %132 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %opt, align 4
  br i1 %tobool139.not, label %if.then140, label %if.else143

if.then140:                                       ; preds = %sw.bb137
  call void @__sanitizer_cov_trace_pc() #15
  %and142 = and i32 %133, -9
  %134 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %and142, ptr %opt, align 4
  br label %cleanup

if.else143:                                       ; preds = %sw.bb137
  call void @__sanitizer_cov_trace_pc() #15
  %or145 = or i32 %133, 8
  %135 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %or145, ptr %opt, align 4
  br label %cleanup

sw.bb147:                                         ; preds = %if.end7
  %136 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %result, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool149.not = icmp eq i8 %137, 0
  %138 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %1, align 4
  %140 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %log, align 4
  br i1 %tobool149.not, label %if.then150, label %if.else153

if.then150:                                       ; preds = %sw.bb147
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %139, ptr noundef %141, i8 noundef zeroext 119, ptr noundef nonnull @.str.56) #13
  br label %cleanup

if.else153:                                       ; preds = %sw.bb147
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %139, ptr noundef %141, i8 noundef zeroext 119, ptr noundef nonnull @.str.57) #13
  br label %cleanup

sw.bb157:                                         ; preds = %if.end7
  %142 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %result, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %tobool159.not = icmp eq i8 %143, 0
  %144 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %opt, align 4
  br i1 %tobool159.not, label %if.then160, label %if.else163

if.then160:                                       ; preds = %sw.bb157
  call void @__sanitizer_cov_trace_pc() #15
  %and162 = and i32 %145, -33
  %146 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %and162, ptr %opt, align 4
  br label %cleanup

if.else163:                                       ; preds = %sw.bb157
  call void @__sanitizer_cov_trace_pc() #15
  %or165 = or i32 %145, 32
  %147 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %or165, ptr %opt, align 4
  br label %cleanup

sw.bb167:                                         ; preds = %if.end7
  %148 = ptrtoint ptr %result to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %result, align 8, !range !332
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool169.not = icmp eq i8 %149, 0
  %150 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %opt, align 4
  br i1 %tobool169.not, label %if.then170, label %if.else173

if.then170:                                       ; preds = %sw.bb167
  call void @__sanitizer_cov_trace_pc() #15
  %or172 = or i32 %151, 16
  %152 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %or172, ptr %opt, align 4
  br label %cleanup

if.else173:                                       ; preds = %sw.bb167
  call void @__sanitizer_cov_trace_pc() #15
  %and175 = and i32 %151, -17
  %153 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %and175, ptr %opt, align 4
  br label %cleanup

sw.bb177:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %154 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %opt, align 4
  %or179 = or i32 %155, 64
  store i32 %or179, ptr %opt, align 4
  br label %cleanup

sw.bb180:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  %156 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %opt, align 4
  %or182 = or i32 %157, 128
  store i32 %or182, ptr %opt, align 4
  br label %cleanup

do.body184:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/ceph_common.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 594, 0\0A.popsection", ""() #13, !srcloc !337
  unreachable

out_of_range:                                     ; preds = %sw.bb124.out_of_range_crit_edge, %sw.bb118.out_of_range_crit_edge, %sw.bb110.out_of_range_crit_edge, %sw.bb104.out_of_range_crit_edge
  %158 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %1, align 4
  %160 = ptrtoint ptr %log to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %log, align 4
  %162 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %param, align 4
  call void (ptr, ptr, i8, ptr, ...) @logfc(ptr noundef %159, ptr noundef %161, i8 noundef zeroext 101, ptr noundef nonnull @.str.58, ptr noundef %163) #13
  br label %cleanup

cleanup:                                          ; preds = %out_of_range, %sw.bb180, %sw.bb177, %if.else173, %if.then170, %if.else163, %if.then160, %if.else153, %if.then150, %if.else143, %if.then140, %if.else, %if.then132, %if.else.i289, %if.else.i282, %if.else.i275, %if.else.i, %sw.bb91, %sw.bb86, %sw.bb81, %sw.bb76, %sw.bb73, %sw.bb64, %sw.bb62, %sw.bb61, %if.then56, %sw.bb52.cleanup_crit_edge, %if.end.i293, %sw.default.i, %sw.bb7.i, %sw.bb4.i, %sw.bb.i, %sw.bb41.cleanup_crit_edge, %if.then37, %if.end33.cleanup_crit_edge, %sw.bb25.cleanup_crit_edge, %sw.bb23, %if.end20, %if.then17, %if.end13, %if.then10, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %out_of_range ], [ %call54, %if.then56 ], [ %call35, %if.then37 ], [ %call15, %if.then17 ], [ %call8, %if.then10 ], [ %call, %do.end.cleanup_crit_edge ], [ -12, %sw.bb25.cleanup_crit_edge ], [ -12, %sw.bb41.cleanup_crit_edge ], [ 0, %if.then170 ], [ 0, %if.else173 ], [ 0, %if.then160 ], [ 0, %if.else163 ], [ 0, %if.then150 ], [ 0, %if.else153 ], [ 0, %if.then140 ], [ 0, %if.else143 ], [ 0, %if.then132 ], [ 0, %if.else ], [ 0, %sw.bb73 ], [ 0, %sw.bb76 ], [ 0, %sw.bb81 ], [ 0, %sw.bb86 ], [ 0, %sw.bb91 ], [ 0, %sw.bb61 ], [ 0, %sw.bb62 ], [ 0, %sw.bb64 ], [ 0, %sw.bb52.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ], [ 0, %sw.bb180 ], [ 0, %sw.bb177 ], [ 0, %if.else.i289 ], [ 0, %if.else.i282 ], [ 0, %if.else.i275 ], [ 0, %if.else.i ], [ 0, %sw.bb23 ], [ 0, %if.end20 ], [ 0, %if.end13 ], [ %call12.i, %if.end.i293 ], [ -1, %sw.default.i ], [ -1, %sw.bb7.i ], [ -1, %sw.bb4.i ], [ -1, %sw.bb.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %log) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %result) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fs_parse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_crypto_key_unarmor(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_parse_crush_location(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_print_client_options(ptr noundef %m, ptr nocapture noundef readonly %client, i1 noundef zeroext %show_all) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %options, align 8
  %count = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 3
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %name = getelementptr inbounds %struct.ceph_options, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.59) #13
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %call.i.i = tail call i32 @strlen(ptr noundef %7) #18
  tail call void @seq_escape_mem(ptr noundef %m, ptr noundef %7, i32 noundef %call.i.i, i32 noundef 8, ptr noundef nonnull @.str.60) #13
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 44) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %key = getelementptr inbounds %struct.ceph_options, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %key, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.do.end_crit_edge, label %if.then3

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.61) #13
  br label %do.end

do.end:                                           ; preds = %if.then3, %if.end.do.end_crit_edge
  %crush_locs = getelementptr inbounds %struct.ceph_options, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %crush_locs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %crush_locs, align 4
  %cmp = icmp eq ptr %11, null
  br i1 %cmp, label %do.end.if.end13_crit_edge, label %if.then5

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end13

if.then5:                                         ; preds = %do.end
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.62) #13
  %call = tail call ptr @rb_first(ptr noundef %crush_locs) #13
  %cl_loc202 = getelementptr inbounds %struct.crush_loc_node, ptr %call, i32 0, i32 1
  %12 = ptrtoint ptr %cl_loc202 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cl_loc202, align 4
  %cl_name203 = getelementptr inbounds %struct.crush_loc_node, ptr %call, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %cl_name203 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cl_name203, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.63, ptr noundef %13, ptr noundef %15) #13
  %call9204 = tail call ptr @rb_next(ptr noundef %call) #13
  %tobool10.not205 = icmp eq ptr %call9204, null
  br i1 %tobool10.not205, label %if.then5.for.end_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  br label %cleanup

if.then5.for.end_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  %call9206 = phi ptr [ %call9, %cleanup.cleanup_crit_edge ], [ %call9204, %if.then5.cleanup_crit_edge ]
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 124) #13
  %cl_loc = getelementptr inbounds %struct.crush_loc_node, ptr %call9206, i32 0, i32 1
  %16 = ptrtoint ptr %cl_loc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cl_loc, align 4
  %cl_name = getelementptr inbounds %struct.crush_loc_node, ptr %call9206, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %cl_name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cl_name, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.63, ptr noundef %17, ptr noundef %19) #13
  %call9 = tail call ptr @rb_next(ptr noundef nonnull %call9206) #13
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then5.for.end_crit_edge
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 44) #13
  br label %if.end13

if.end13:                                         ; preds = %for.end, %do.end.if.end13_crit_edge
  %read_from_replica = getelementptr inbounds %struct.ceph_options, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %read_from_replica to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %read_from_replica, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %21, label %if.end13.if.end20_crit_edge [
    i32 256, label %if.end13.if.end20.sink.split_crit_edge
    i32 8192, label %if.then18
  ]

if.end13.if.end20.sink.split_crit_edge:           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.sink.split

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.then18, %if.end13.if.end20.sink.split_crit_edge
  %.str.65.sink = phi ptr [ @.str.65, %if.then18 ], [ @.str.64, %if.end13.if.end20.sink.split_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.65.sink) #13
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %if.end13.if.end20_crit_edge
  %con_modes = getelementptr inbounds %struct.ceph_options, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %con_modes to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %con_modes, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %24, label %if.end20.if.end61_crit_edge [
    i32 2, label %land.lhs.true34
    i32 1, label %land.lhs.true
  ]

if.end20.if.end61_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

land.lhs.true:                                    ; preds = %if.end20
  %arrayidx27 = getelementptr %struct.ceph_options, ptr %1, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp28 = icmp eq i32 %27, 0
  br i1 %cmp28, label %land.lhs.true.if.end61.sink.split_crit_edge, label %land.lhs.true43

land.lhs.true.if.end61.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.sink.split

land.lhs.true34:                                  ; preds = %if.end20
  %arrayidx36 = getelementptr %struct.ceph_options, ptr %1, i32 0, i32 8, i32 1
  %28 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp37 = icmp eq i32 %29, 0
  br i1 %cmp37, label %land.lhs.true34.if.end61.sink.split_crit_edge, label %land.lhs.true52

land.lhs.true34.if.end61.sink.split_crit_edge:    ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.sink.split

land.lhs.true43:                                  ; preds = %land.lhs.true
  %30 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp46 = icmp eq i32 %31, 2
  br i1 %cmp46, label %land.lhs.true43.if.end61.sink.split_crit_edge, label %land.lhs.true43.if.end61_crit_edge

land.lhs.true43.if.end61_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

land.lhs.true43.if.end61.sink.split_crit_edge:    ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.sink.split

land.lhs.true52:                                  ; preds = %land.lhs.true34
  %32 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp55 = icmp eq i32 %33, 1
  br i1 %cmp55, label %land.lhs.true52.if.end61.sink.split_crit_edge, label %land.lhs.true52.if.end61_crit_edge

land.lhs.true52.if.end61_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

land.lhs.true52.if.end61.sink.split_crit_edge:    ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61.sink.split

if.end61.sink.split:                              ; preds = %land.lhs.true52.if.end61.sink.split_crit_edge, %land.lhs.true43.if.end61.sink.split_crit_edge, %land.lhs.true34.if.end61.sink.split_crit_edge, %land.lhs.true.if.end61.sink.split_crit_edge
  %.str.66.sink = phi ptr [ @.str.66, %land.lhs.true.if.end61.sink.split_crit_edge ], [ @.str.67, %land.lhs.true34.if.end61.sink.split_crit_edge ], [ @.str.68, %land.lhs.true43.if.end61.sink.split_crit_edge ], [ @.str.69, %land.lhs.true52.if.end61.sink.split_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull %.str.66.sink) #13
  br label %if.end61

if.end61:                                         ; preds = %if.end61.sink.split, %land.lhs.true52.if.end61_crit_edge, %land.lhs.true43.if.end61_crit_edge, %if.end20.if.end61_crit_edge
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %1, align 4
  %and = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool62.not = icmp eq i32 %and, 0
  br i1 %tobool62.not, label %if.end61.if.end64_crit_edge, label %if.then63

if.end61.if.end64_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end64

if.then63:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  %fsid = getelementptr inbounds %struct.ceph_options, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.70, ptr noundef %fsid) #13
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end61.if.end64_crit_edge
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %1, align 4
  %and66 = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end64.if.end69_crit_edge, label %if.then68

if.end64.if.end69_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.71) #13
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end64.if.end69_crit_edge
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %1, align 4
  %and71 = and i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.end69.if.end74_crit_edge, label %if.then73

if.end69.if.end74_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end74

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.72) #13
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %if.end69.if.end74_crit_edge
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %1, align 4
  %and76 = and i32 %41, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end74.if.end79_crit_edge, label %if.then78

if.end74.if.end79_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.73) #13
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end74.if.end79_crit_edge
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %1, align 4
  %and81 = and i32 %43, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %cmp82 = icmp eq i32 %and81, 0
  br i1 %cmp82, label %if.then83, label %if.end79.if.end84_crit_edge

if.end79.if.end84_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end84

if.then83:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.74) #13
  br label %if.end84

if.end84:                                         ; preds = %if.then83, %if.end79.if.end84_crit_edge
  br i1 %show_all, label %land.lhs.true86, label %if.end84.if.end91_crit_edge

if.end84.if.end91_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end91

land.lhs.true86:                                  ; preds = %if.end84
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %1, align 4
  %and88 = and i32 %45, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %land.lhs.true86.if.end91_crit_edge, label %if.then90

land.lhs.true86.if.end91_crit_edge:               ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end91

if.then90:                                        ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.75) #13
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %land.lhs.true86.if.end91_crit_edge, %if.end84.if.end91_crit_edge
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %1, align 4
  %and93 = and i32 %47, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %if.end91.if.end96_crit_edge, label %if.then95

if.end91.if.end96_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end96

if.then95:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.76) #13
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %if.end91.if.end96_crit_edge
  %mount_timeout = getelementptr inbounds %struct.ceph_options, ptr %1, i32 0, i32 3
  %48 = ptrtoint ptr %mount_timeout to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mount_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000, i32 %49)
  %cmp98.not = icmp eq i32 %49, 6000
  br i1 %cmp98.not, label %if.end96.if.end102_crit_edge, label %if.then99

if.end96.if.end102_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

if.then99:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #15
  %call101 = tail call i32 @jiffies_to_msecs(i32 noundef %49) #13
  %div = udiv i32 %call101, 1000
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.77, i32 noundef %div) #13
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %if.end96.if.end102_crit_edge
  %osd_idle_ttl = getelementptr inbounds %struct.ceph_options, ptr %1, i32 0, i32 4
  %50 = ptrtoint ptr %osd_idle_ttl to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %osd_idle_ttl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000, i32 %51)
  %cmp104.not = icmp eq i32 %51, 6000
  br i1 %cmp104.not, label %if.end102.if.end109_crit_edge, label %if.then105

if.end102.if.end109_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end109

if.then105:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  %call107 = tail call i32 @jiffies_to_msecs(i32 noundef %51) #13
  %div108 = udiv i32 %call107, 1000
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.78, i32 noundef %div108) #13
  br label %if.end109

if.end109:                                        ; preds = %if.then105, %if.end102.if.end109_crit_edge
  %osd_keepalive_timeout = getelementptr inbounds %struct.ceph_options, ptr %1, i32 0, i32 5
  %52 = ptrtoint ptr %osd_keepalive_timeout to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %osd_keepalive_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %53)
  %cmp111.not = icmp eq i32 %53, 500
  br i1 %cmp111.not, label %if.end109.if.end116_crit_edge, label %if.then112

if.end109.if.end116_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end116

if.then112:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #15
  %call114 = tail call i32 @jiffies_to_msecs(i32 noundef %53) #13
  %div115 = udiv i32 %call114, 1000
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.79, i32 noundef %div115) #13
  br label %if.end116

if.end116:                                        ; preds = %if.then112, %if.end109.if.end116_crit_edge
  %osd_request_timeout = getelementptr inbounds %struct.ceph_options, ptr %1, i32 0, i32 6
  %54 = ptrtoint ptr %osd_request_timeout to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %osd_request_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp117.not = icmp eq i32 %55, 0
  br i1 %cmp117.not, label %if.end116.if.end122_crit_edge, label %if.then118

if.end116.if.end122_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end122

if.then118:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #15
  %call120 = tail call i32 @jiffies_to_msecs(i32 noundef %55) #13
  %div121 = udiv i32 %call120, 1000
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.80, i32 noundef %div121) #13
  br label %if.end122

if.end122:                                        ; preds = %if.then118, %if.end116.if.end122_crit_edge
  %56 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %3)
  %cmp124.not = icmp eq i32 %57, %3
  br i1 %cmp124.not, label %if.end122.if.end127_crit_edge, label %if.then125

if.end122.if.end127_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end127

if.then125:                                       ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #15
  %dec = add i32 %57, -1
  %58 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %dec, ptr %count, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %if.end122.if.end127_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ceph_client_addr(ptr noundef readnone %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 10, i32 0, i32 1
  ret ptr %addr
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @ceph_client_gid(ptr nocapture noundef readonly %client) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %auth = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 11, i32 4
  %0 = ptrtoint ptr %auth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %auth, align 8
  %global_id = getelementptr inbounds %struct.ceph_auth_client, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %global_id to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %global_id, align 8
  ret i64 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ceph_create_client(ptr noundef %opt, ptr noundef %private) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wait_for_random_bytes() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 4320) #19
  %cmp3 = icmp eq ptr %call7.i.i, null
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %private7 = getelementptr inbounds %struct.ceph_client, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %private7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %private, ptr %private7, align 4
  %options = getelementptr inbounds %struct.ceph_client, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %opt, ptr %options, align 8
  %mount_mutex = getelementptr inbounds %struct.ceph_client, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %mount_mutex, ptr noundef nonnull @.str.81, ptr noundef nonnull @ceph_create_client.__key) #13
  %auth_wq = getelementptr inbounds %struct.ceph_client, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %auth_wq, ptr noundef nonnull @.str.83, ptr noundef nonnull @ceph_create_client.__key.82) #13
  %auth_err = getelementptr inbounds %struct.ceph_client, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %auth_err to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %auth_err, align 4
  %extra_mon_dispatch = getelementptr inbounds %struct.ceph_client, ptr %call7.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %extra_mon_dispatch to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %extra_mon_dispatch, align 8
  %supported_features = getelementptr inbounds %struct.ceph_client, ptr %call7.i.i, i32 0, i32 8
  %6 = ptrtoint ptr %supported_features to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 3387146417253690110, ptr %supported_features, align 8
  %required_features = getelementptr inbounds %struct.ceph_client, ptr %call7.i.i, i32 0, i32 9
  %7 = ptrtoint ptr %required_features to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %required_features, align 8
  %8 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %options, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %and = shl i32 %11, 18
  %12 = and i32 %and, 8388608
  %13 = xor i32 %12, 8388608
  %14 = zext i32 %13 to i64
  store i64 %14, ptr %required_features, align 8
  %15 = load i32, ptr %9, align 4
  %and17 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %my_addr = getelementptr inbounds %struct.ceph_options, ptr %9, i32 0, i32 2
  %myaddr.0 = select i1 %tobool18.not, ptr null, ptr %my_addr
  %msgr = getelementptr inbounds %struct.ceph_client, ptr %call7.i.i, i32 0, i32 10
  tail call void @ceph_messenger_init(ptr noundef %msgr, ptr noundef %myaddr.0) #13
  %monc = getelementptr inbounds %struct.ceph_client, ptr %call7.i.i, i32 0, i32 11
  %call22 = tail call i32 @ceph_monc_init(ptr noundef %monc, ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end6.fail_crit_edge, label %if.end25

if.end6.fail_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %fail

if.end25:                                         ; preds = %if.end6
  %osdc = getelementptr inbounds %struct.ceph_client, ptr %call7.i.i, i32 0, i32 12
  %call26 = tail call i32 @ceph_osdc_init(ptr noundef %osdc, ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %fail_monc, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

fail_monc:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ceph_monc_stop(ptr noundef %monc) #13
  br label %fail

fail:                                             ; preds = %fail_monc, %if.end6.fail_crit_edge
  %err.0 = phi i32 [ %call22, %if.end6.fail_crit_edge ], [ %call26, %fail_monc ]
  tail call void @ceph_messenger_fini(ptr noundef %msgr) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  %16 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end25.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %0, %if.then ], [ %16, %fail ], [ %call7.i.i, %if.end25.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_random_bytes() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_messenger_init(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_monc_init(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_osdc_init(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_monc_stop(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_messenger_fini(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_destroy_client(ptr noundef %client) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_destroy_client.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_destroy_client, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !334

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_destroy_client.__UNIQUE_ID_ddebug321, ptr noundef nonnull @.str.86, i32 noundef 0, ptr noundef nonnull @.str.41, ptr noundef getelementptr inbounds ([23 x i8], ptr @.str.36, i32 0, i32 9), i32 noundef 762, ptr noundef %client) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %msgr = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 10
  %stopping = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 10, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stopping, i32 noundef 4) #13
  %0 = ptrtoint ptr %stopping to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %stopping, align 4
  %osdc = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 12
  tail call void @ceph_osdc_stop(ptr noundef %osdc) #13
  %monc = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 11
  tail call void @ceph_monc_stop(ptr noundef %monc) #13
  tail call void @ceph_messenger_fini(ptr noundef %msgr) #13
  tail call void @ceph_debugfs_client_cleanup(ptr noundef %client) #13
  %options = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 3
  %1 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %options, align 8
  tail call void @ceph_destroy_options(ptr noundef %2)
  tail call void @kfree(ptr noundef %client) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_destroy_client.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_destroy_client, %if.then17)) #13
          to label %do.end20 [label %if.then17], !srcloc !334

if.then17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_destroy_client.__UNIQUE_ID_ddebug322, ptr noundef nonnull @.str.88, i32 noundef 0, ptr noundef nonnull @.str.41, ptr noundef getelementptr inbounds ([23 x i8], ptr @.str.36, i32 0, i32 9), i32 noundef 776, ptr noundef %client) #13
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_osdc_stop(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_debugfs_client_cleanup(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_reset_client_addr(ptr noundef %client) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %msgr = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 10
  tail call void @ceph_messenger_reset_nonce(ptr noundef %msgr) #13
  %monc = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 11
  tail call void @ceph_monc_reopen_session(ptr noundef %monc) #13
  %osdc = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 12
  tail call void @ceph_osdc_reopen_osds(ptr noundef %osdc) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_messenger_reset_nonce(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_monc_reopen_session(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_osdc_reopen_osds(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ceph_open_session(ptr noundef %client, i32 noundef %started) #1 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %options, align 8
  %mount_timeout = getelementptr inbounds %struct.ceph_options, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mount_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mount_timeout, align 4
  %monc = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 11
  %call = tail call i32 @ceph_monc_open_session(ptr noundef %monc) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup86_crit_edge, label %while.cond.preheader

entry.cleanup86_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup86

while.cond.preheader:                             ; preds = %entry
  %monmap.i = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 11, i32 1
  %osdmap.i = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 12, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %4 = add i32 %3, %started
  %..i = select i1 %tobool.not, i32 2147483647, i32 %3
  %auth_err = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 6
  %auth_wq = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 5
  br label %while.cond

while.cond:                                       ; preds = %if.end74.while.cond_crit_edge, %while.cond.preheader
  %5 = ptrtoint ptr %monmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %monmap.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %while.cond.while.body_crit_edge, label %land.lhs.true.i

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

land.lhs.true.i:                                  ; preds = %while.cond
  %epoch.i = getelementptr inbounds %struct.ceph_monmap, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %epoch.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %epoch.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not.i = icmp eq i32 %8, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.while.body_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.while.body_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %9 = ptrtoint ptr %osdmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %osdmap.i, align 4
  %tobool5.not.i = icmp eq ptr %10, null
  br i1 %tobool5.not.i, label %land.lhs.true4.i.while.body_crit_edge, label %have_mon_and_osd_map.exit

land.lhs.true4.i.while.body_crit_edge:            ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

have_mon_and_osd_map.exit:                        ; preds = %land.lhs.true4.i
  %epoch8.i = getelementptr inbounds %struct.ceph_osdmap, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %epoch8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %epoch8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9.i.not = icmp eq i32 %12, 0
  br i1 %tobool9.i.not, label %have_mon_and_osd_map.exit.while.body_crit_edge, label %do.end82

have_mon_and_osd_map.exit.while.body_crit_edge:   ; preds = %have_mon_and_osd_map.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body:                                       ; preds = %have_mon_and_osd_map.exit.while.body_crit_edge, %land.lhs.true4.i.while.body_crit_edge, %land.lhs.true.i.while.body_crit_edge, %while.cond.while.body_crit_edge
  br i1 %tobool.not, label %while.body.do.body_crit_edge, label %land.lhs.true

while.body.do.body_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

land.lhs.true:                                    ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %13, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp2 = icmp sgt i32 %sub, -1
  br i1 %cmp2, label %land.lhs.true.cleanup86_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

land.lhs.true.cleanup86_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup86

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %while.body.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ceph_open_session.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ceph_open_session, %if.then10)) #13
          to label %do.end [label %if.then10], !srcloc !334

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__ceph_open_session.__UNIQUE_ID_ddebug323, ptr noundef nonnull @.str.91, i32 noundef 0, ptr noundef nonnull @.str.41, ptr noundef getelementptr inbounds ([23 x i8], ptr @.str.36, i32 0, i32 9), i32 noundef 815) #13
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  call void @__might_sleep(ptr noundef nonnull @.str.36, i32 noundef 818) #13
  %14 = ptrtoint ptr %monmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %monmap.i, align 4
  %tobool.not.i119 = icmp eq ptr %15, null
  br i1 %tobool.not.i119, label %do.end.lor.end_crit_edge, label %land.lhs.true.i122

do.end.lor.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

land.lhs.true.i122:                               ; preds = %do.end
  %epoch.i120 = getelementptr inbounds %struct.ceph_monmap, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %epoch.i120 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %epoch.i120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not.i121 = icmp eq i32 %17, 0
  br i1 %tobool3.not.i121, label %land.lhs.true.i122.lor.end_crit_edge, label %land.lhs.true4.i125

land.lhs.true.i122.lor.end_crit_edge:             ; preds = %land.lhs.true.i122
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

land.lhs.true4.i125:                              ; preds = %land.lhs.true.i122
  %18 = ptrtoint ptr %osdmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %osdmap.i, align 4
  %tobool5.not.i124 = icmp eq ptr %19, null
  br i1 %tobool5.not.i124, label %land.lhs.true4.i125.lor.end_crit_edge, label %have_mon_and_osd_map.exit129

land.lhs.true4.i125.lor.end_crit_edge:            ; preds = %land.lhs.true4.i125
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

have_mon_and_osd_map.exit129:                     ; preds = %land.lhs.true4.i125
  %epoch8.i126 = getelementptr inbounds %struct.ceph_osdmap, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %epoch8.i126 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %epoch8.i126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool9.i127.not = icmp eq i32 %21, 0
  br i1 %tobool9.i127.not, label %have_mon_and_osd_map.exit129.lor.end_crit_edge, label %have_mon_and_osd_map.exit129.if.end70_crit_edge

have_mon_and_osd_map.exit129.if.end70_crit_edge:  ; preds = %have_mon_and_osd_map.exit129
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

have_mon_and_osd_map.exit129.lor.end_crit_edge:   ; preds = %have_mon_and_osd_map.exit129
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

lor.end:                                          ; preds = %have_mon_and_osd_map.exit129.lor.end_crit_edge, %land.lhs.true4.i125.lor.end_crit_edge, %land.lhs.true.i122.lor.end_crit_edge, %do.end.lor.end_crit_edge
  %22 = ptrtoint ptr %auth_err to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %auth_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp21 = icmp slt i32 %23, 0
  br i1 %cmp21, label %lor.end.if.end70_crit_edge, label %if.then36

lor.end.if.end70_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end70

if.then36:                                        ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #13
  %24 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #13
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.then36
  %__ret37.0 = phi i32 [ %..i, %if.then36 ], [ %call67, %cleanup ]
  %call39 = call i32 @prepare_to_wait_event(ptr noundef %auth_wq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #13
  %25 = ptrtoint ptr %monmap.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %monmap.i, align 4
  %tobool.not.i133 = icmp eq ptr %26, null
  br i1 %tobool.not.i133, label %for.cond.lor.end45_crit_edge, label %land.lhs.true.i136

for.cond.lor.end45_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end45

land.lhs.true.i136:                               ; preds = %for.cond
  %epoch.i134 = getelementptr inbounds %struct.ceph_monmap, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %epoch.i134 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %epoch.i134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool3.not.i135 = icmp eq i32 %28, 0
  br i1 %tobool3.not.i135, label %land.lhs.true.i136.lor.end45_crit_edge, label %land.lhs.true4.i139

land.lhs.true.i136.lor.end45_crit_edge:           ; preds = %land.lhs.true.i136
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end45

land.lhs.true4.i139:                              ; preds = %land.lhs.true.i136
  %29 = ptrtoint ptr %osdmap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %osdmap.i, align 4
  %tobool5.not.i138 = icmp eq ptr %30, null
  br i1 %tobool5.not.i138, label %land.lhs.true4.i139.lor.end45_crit_edge, label %have_mon_and_osd_map.exit143

land.lhs.true4.i139.lor.end45_crit_edge:          ; preds = %land.lhs.true4.i139
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end45

have_mon_and_osd_map.exit143:                     ; preds = %land.lhs.true4.i139
  %epoch8.i140 = getelementptr inbounds %struct.ceph_osdmap, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %epoch8.i140 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %epoch8.i140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool9.i141.not = icmp eq i32 %32, 0
  br i1 %tobool9.i141.not, label %have_mon_and_osd_map.exit143.lor.end45_crit_edge, label %lor.end45.thread

have_mon_and_osd_map.exit143.lor.end45_crit_edge: ; preds = %have_mon_and_osd_map.exit143
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end45

lor.end45.thread:                                 ; preds = %have_mon_and_osd_map.exit143
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret37.0)
  %tobool50.not145 = icmp eq i32 %__ret37.0, 0
  %spec.store.select88146 = select i1 %tobool50.not145, i32 1, i32 %__ret37.0
  br label %for.end

lor.end45:                                        ; preds = %have_mon_and_osd_map.exit143.lor.end45_crit_edge, %land.lhs.true4.i139.lor.end45_crit_edge, %land.lhs.true.i136.lor.end45_crit_edge, %for.cond.lor.end45_crit_edge
  %33 = ptrtoint ptr %auth_err to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %auth_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp44 = icmp slt i32 %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret37.0)
  %tobool50.not.le = icmp eq i32 %__ret37.0, 0
  br i1 %cmp44, label %for.end.loopexit.split.loop.exit163, label %35

35:                                               ; preds = %lor.end45
  br i1 %tobool50.not.le, label %.for.end_crit_edge, label %if.end63

.for.end_crit_edge:                               ; preds = %35
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end63:                                         ; preds = %35
  %tobool64.not = icmp eq i32 %call39, 0
  br i1 %tobool64.not, label %cleanup, label %if.end63.__out_crit_edge

if.end63.__out_crit_edge:                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %__out

cleanup:                                          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  %call67 = call i32 @schedule_timeout(i32 noundef %__ret37.0) #13
  br label %for.cond

for.end.loopexit.split.loop.exit163:              ; preds = %lor.end45
  call void @__sanitizer_cov_trace_pc() #15
  %spec.store.select88.le = select i1 %tobool50.not.le, i32 1, i32 %__ret37.0
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit.split.loop.exit163, %.for.end_crit_edge, %lor.end45.thread
  %__ret37.2.ph = phi i32 [ %spec.store.select88146, %lor.end45.thread ], [ %spec.store.select88.le, %for.end.loopexit.split.loop.exit163 ], [ 0, %.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %auth_wq, ptr noundef nonnull %__wq_entry) #13
  br label %__out

__out:                                            ; preds = %for.end, %if.end63.__out_crit_edge
  %__ret37.2151 = phi i32 [ %__ret37.2.ph, %for.end ], [ %call39, %if.end63.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #13
  br label %if.end70

if.end70:                                         ; preds = %__out, %lor.end.if.end70_crit_edge, %have_mon_and_osd_map.exit129.if.end70_crit_edge
  %__ret.1 = phi i32 [ %..i, %lor.end.if.end70_crit_edge ], [ %__ret37.2151, %__out ], [ %..i, %have_mon_and_osd_map.exit129.if.end70_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp72 = icmp slt i32 %__ret.1, 0
  br i1 %cmp72, label %if.end70.cleanup86_crit_edge, label %if.end74

if.end70.cleanup86_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup86

if.end74:                                         ; preds = %if.end70
  %36 = ptrtoint ptr %auth_err to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %auth_err, align 4
  %cmp76 = icmp slt i32 %37, 0
  br i1 %cmp76, label %if.end74.cleanup86_crit_edge, label %if.end74.while.cond_crit_edge

if.end74.while.cond_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

if.end74.cleanup86_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup86

do.end82:                                         ; preds = %have_mon_and_osd_map.exit
  call void @__sanitizer_cov_trace_pc() #15
  %auth.i = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 11, i32 4
  %38 = ptrtoint ptr %auth.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %auth.i, align 8
  %global_id.i = getelementptr inbounds %struct.ceph_auth_client, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %global_id.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %global_id.i, align 8
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i64 noundef %41, ptr noundef %client) #17
  call void @ceph_debugfs_client_init(ptr noundef %client) #13
  br label %cleanup86

cleanup86:                                        ; preds = %do.end82, %if.end74.cleanup86_crit_edge, %if.end70.cleanup86_crit_edge, %land.lhs.true.cleanup86_crit_edge, %entry.cleanup86_crit_edge
  %retval.0 = phi i32 [ 0, %do.end82 ], [ %call, %entry.cleanup86_crit_edge ], [ %37, %if.end74.cleanup86_crit_edge ], [ %__ret.1, %if.end70.cleanup86_crit_edge ], [ -110, %land.lhs.true.cleanup86_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_monc_open_session(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_debugfs_client_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_open_session(ptr noundef %client) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_open_session.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_open_session, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !334

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_open_session.__UNIQUE_ID_ddebug324, ptr noundef nonnull @.str.95, i32 noundef 0, ptr noundef nonnull @.str.41, ptr noundef getelementptr inbounds ([23 x i8], ptr @.str.36, i32 0, i32 9), i32 noundef 838) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mount_mutex = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mount_mutex, i32 noundef 0) #13
  %call4 = tail call i32 @__ceph_open_session(ptr noundef %client, i32 noundef %0)
  tail call void @mutex_unlock(ptr noundef %mount_mutex) #13
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_wait_for_latest_osdmap(ptr noundef %client, i32 noundef %timeout) #1 align 64 {
entry:
  %newest_epoch = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %newest_epoch) #13
  %0 = ptrtoint ptr %newest_epoch to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %newest_epoch, align 8, !annotation !333
  %monc = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 11
  %call = call i32 @ceph_monc_get_version(ptr noundef %monc, ptr noundef nonnull @.str.96, ptr noundef nonnull %newest_epoch) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %osdmap = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 12, i32 1
  %1 = ptrtoint ptr %osdmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %osdmap, align 4
  %epoch = getelementptr inbounds %struct.ceph_osdmap, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %epoch to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %epoch, align 4
  %conv = zext i32 %4 to i64
  %5 = ptrtoint ptr %newest_epoch to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %newest_epoch, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %conv)
  %cmp.not = icmp ugt i64 %6, %conv
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %osdc = getelementptr inbounds %struct.ceph_client, ptr %client, i32 0, i32 12
  call void @ceph_osdc_maybe_request_map(ptr noundef %osdc) #13
  %7 = ptrtoint ptr %newest_epoch to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %newest_epoch, align 8
  %conv6 = trunc i64 %8 to i32
  %call7 = call i32 @ceph_monc_wait_osdmap(ptr noundef %monc, i32 noundef %conv6, i32 noundef %timeout) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %newest_epoch) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_monc_get_version(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_osdc_maybe_request_map(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_monc_wait_osdmap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_ceph_lib() #8 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @exit_ceph_lib.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@exit_ceph_lib, %if.then)) #13
          to label %do.end [label %if.then], !srcloc !334

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @exit_ceph_lib.__UNIQUE_ID_ddebug325, ptr noundef nonnull @.str.99, i32 noundef 0, ptr noundef nonnull @.str.41, ptr noundef getelementptr inbounds ([23 x i8], ptr @.str.36, i32 0, i32 9), i32 noundef 900) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call zeroext i1 @ceph_strings_empty() #13
  br i1 %call4, label %do.end.if.end27_crit_edge, label %do.end21, !prof !338

do.end.if.end27_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

do.end21:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 901, i32 noundef 9, ptr noundef null) #13
  br label %if.end27

if.end27:                                         ; preds = %do.end21, %do.end.if.end27_crit_edge
  tail call void @ceph_osdc_cleanup() #13
  tail call void @ceph_msgr_exit() #13
  tail call void @ceph_crypto_shutdown() #13
  tail call void @ceph_debugfs_cleanup() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ceph_strings_empty() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_osdc_cleanup() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_msgr_exit() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_crypto_shutdown() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_debugfs_cleanup() local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_ceph_lib() #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ceph_debugfs_init() #13
  %call = tail call i32 @ceph_crypto_init() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_debugfs_crit_edge, label %if.end

entry.out_debugfs_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_debugfs

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @ceph_msgr_init() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.out_crypto_crit_edge, label %if.end4

if.end.out_crypto_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_crypto

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @ceph_osdc_setup() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %out_msgr, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef 15, i32 noundef 24) #17
  br label %cleanup

out_msgr:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @ceph_msgr_exit() #13
  br label %out_crypto

out_crypto:                                       ; preds = %out_msgr, %if.end.out_crypto_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.out_crypto_crit_edge ], [ %call5, %out_msgr ]
  tail call void @ceph_crypto_shutdown() #13
  br label %out_debugfs

out_debugfs:                                      ; preds = %out_crypto, %entry.out_debugfs_crit_edge
  %ret.1 = phi i32 [ %call, %entry.out_debugfs_crit_edge ], [ %ret.0, %out_crypto ]
  tail call void @ceph_debugfs_cleanup() #13
  br label %cleanup

cleanup:                                          ; preds = %out_debugfs, %do.end
  %retval.0 = phi i32 [ %ret.1, %out_debugfs ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @param_get_supported_features(ptr nocapture noundef writeonly %buffer, ptr nocapture noundef readnone %kp) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buffer, ptr noundef nonnull @.str.100, i64 noundef 3387146417253690110)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_u32(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fs_param_is_enum(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_crypto_key_clone(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_key_tag(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_escape_mem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_debugfs_init() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_crypto_init() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_msgr_init() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_osdc_setup() local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 140)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 140)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nobuiltin }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !79, !80, !82, !84, !86, !87, !88, !89, !90, !91, !93, !95, !96, !97, !99, !101, !103, !104, !105, !106, !108, !110, !112, !114, !115, !116, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !186, !188, !189, !191, !193, !194, !195, !196, !198, !199, !200, !202, !204, !206, !207, !208, !209, !211, !212, !213, !215, !217, !218, !219, !220, !222, !224, !226, !228, !229, !230, !231, !233, !235, !237, !239, !241, !243, !245, !246, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !320, !321}
!llvm.named.register.sp = !{!322}
!llvm.module.flags = !{!323, !324, !325, !326, !327, !328, !329, !330}
!llvm.ident = !{!331}

!0 = !{ptr @__ksymtab_libceph_compatible, !1, !"__ksymtab_libceph_compatible", i1 false, i1 false}
!1 = !{!"../net/ceph/ceph_common.c", i32 48, i32 1}
!2 = !{ptr @__param_supported_features, !3, !"__param_supported_features", i1 false, i1 false}
!3 = !{!"../net/ceph/ceph_common.c", i32 58, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/ceph/ceph_common.c", i32 64, i32 33}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/ceph/ceph_common.c", i32 65, i32 29}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/ceph/ceph_common.c", i32 66, i32 29}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/ceph/ceph_common.c", i32 67, i32 35}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/ceph/ceph_common.c", i32 68, i32 32}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/ceph/ceph_common.c", i32 69, i32 36}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/ceph/ceph_common.c", i32 70, i32 38}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/ceph/ceph_common.c", i32 71, i32 42}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/ceph/ceph_common.c", i32 72, i32 31}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/ceph/ceph_common.c", i32 73, i32 37}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/ceph/ceph_common.c", i32 74, i32 40}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/ceph/ceph_common.c", i32 75, i32 46}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/ceph/ceph_common.c", i32 76, i32 32}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/ceph/ceph_common.c", i32 77, i32 36}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/ceph/ceph_common.c", i32 78, i32 39}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/ceph/ceph_common.c", i32 79, i32 41}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/ceph/ceph_common.c", i32 80, i32 39}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/ceph/ceph_common.c", i32 81, i32 47}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/ceph/ceph_common.c", i32 82, i32 37}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/ceph/ceph_common.c", i32 83, i32 36}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/ceph/ceph_common.c", i32 84, i32 42}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/ceph/ceph_common.c", i32 85, i32 37}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/ceph/ceph_common.c", i32 86, i32 36}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/ceph/ceph_common.c", i32 87, i32 37}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/ceph/ceph_common.c", i32 88, i32 37}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/ceph/ceph_common.c", i32 89, i32 31}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/ceph/ceph_common.c", i32 90, i32 36}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/ceph/ceph_common.c", i32 91, i32 40}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/ceph/ceph_common.c", i32 92, i32 32}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/ceph/ceph_common.c", i32 93, i32 31}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/ceph/ceph_common.c", i32 94, i32 36}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/ceph/ceph_common.c", i32 95, i32 37}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/ceph/ceph_common.c", i32 96, i32 36}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/ceph/ceph_common.c", i32 97, i32 18}
!72 = !{ptr @__ksymtab_ceph_msg_type_name, !73, !"__ksymtab_ceph_msg_type_name", i1 false, i1 false}
!73 = !{!"../net/ceph/ceph_common.c", i32 100, i32 1}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/ceph/ceph_common.c", i32 109, i32 4}
!76 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @ceph_check_fsid._entry, !75, !"_entry", i1 false, i1 false}
!79 = !{ptr @ceph_check_fsid._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @__ksymtab_ceph_check_fsid, !81, !"__ksymtab_ceph_check_fsid", i1 false, i1 false}
!81 = !{!"../net/ceph/ceph_common.c", i32 118, i32 1}
!82 = !{ptr @__ksymtab_ceph_compare_options, !83, !"__ksymtab_ceph_compare_options", i1 false, i1 false}
!83 = !{!"../net/ceph/ceph_common.c", i32 191, i32 1}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/ceph/ceph_common.c", i32 200, i32 2}
!86 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @ceph_parse_fsid.__UNIQUE_ID_ddebug316, !85, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!89 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/ceph/ceph_common.c", i32 211, i32 19}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/ceph/ceph_common.c", i32 220, i32 2}
!95 = !{ptr @ceph_parse_fsid.__UNIQUE_ID_ddebug317, !94, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!96 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @__ksymtab_ceph_parse_fsid, !98, !"__ksymtab_ceph_parse_fsid", i1 false, i1 false}
!98 = !{!"../net/ceph/ceph_common.c", i32 223, i32 1}
!99 = !{ptr @__ksymtab_ceph_alloc_options, !100, !"__ksymtab_ceph_alloc_options", i1 false, i1 false}
!100 = !{!"../net/ceph/ceph_common.c", i32 334, i32 1}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/ceph/ceph_common.c", i32 338, i32 2}
!103 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @ceph_destroy_options.__UNIQUE_ID_ddebug318, !102, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!105 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @__ksymtab_ceph_destroy_options, !107, !"__ksymtab_ceph_destroy_options", i1 false, i1 false}
!107 = !{!"../net/ceph/ceph_common.c", i32 351, i32 1}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../net/ceph/ceph_common.c", i32 410, i32 3}
!110 = !{ptr @__ksymtab_ceph_parse_mon_ips, !111, !"__ksymtab_ceph_parse_mon_ips", i1 false, i1 false}
!111 = !{!"../net/ceph/ceph_common.c", i32 416, i32 1}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../net/ceph/ceph_common.c", i32 426, i32 2}
!114 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @ceph_parse_param.__UNIQUE_ID_ddebug319, !113, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!116 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/ceph/ceph_common.c", i32 436, i32 4}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../net/ceph/ceph_common.c", i32 445, i32 4}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../net/ceph/ceph_common.c", i32 464, i32 4}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../net/ceph/ceph_common.c", i32 481, i32 4}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/ceph/ceph_common.c", i32 569, i32 4}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../net/ceph/ceph_common.c", i32 571, i32 4}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../net/ceph/ceph_common.c", i32 600, i32 9}
!131 = !{ptr @__ksymtab_ceph_parse_param, !132, !"__ksymtab_ceph_parse_param", i1 false, i1 false}
!132 = !{!"../net/ceph/ceph_common.c", i32 602, i32 1}
!133 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../net/ceph/ceph_common.c", i32 612, i32 15}
!135 = !{ptr @.str.60, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../net/ceph/ceph_common.c", i32 613, i32 28}
!137 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../net/ceph/ceph_common.c", i32 617, i32 15}
!139 = !{ptr @.str.62, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../net/ceph/ceph_common.c", i32 620, i32 15}
!141 = !{ptr @.str.63, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../net/ceph/ceph_common.c", i32 625, i32 18}
!143 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../net/ceph/ceph_common.c", i32 636, i32 15}
!145 = !{ptr @.str.65, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../net/ceph/ceph_common.c", i32 638, i32 15}
!147 = !{ptr @.str.66, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../net/ceph/ceph_common.c", i32 643, i32 16}
!149 = !{ptr @.str.67, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../net/ceph/ceph_common.c", i32 646, i32 16}
!151 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../net/ceph/ceph_common.c", i32 649, i32 16}
!153 = !{ptr @.str.69, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../net/ceph/ceph_common.c", i32 652, i32 16}
!155 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../net/ceph/ceph_common.c", i32 657, i32 17}
!157 = !{ptr @.str.71, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../net/ceph/ceph_common.c", i32 659, i32 15}
!159 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../net/ceph/ceph_common.c", i32 661, i32 15}
!161 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../net/ceph/ceph_common.c", i32 663, i32 15}
!163 = !{ptr @.str.74, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../net/ceph/ceph_common.c", i32 665, i32 15}
!165 = !{ptr @.str.75, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../net/ceph/ceph_common.c", i32 667, i32 15}
!167 = !{ptr @.str.76, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../net/ceph/ceph_common.c", i32 669, i32 15}
!169 = !{ptr @.str.77, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../net/ceph/ceph_common.c", i32 672, i32 17}
!171 = !{ptr @.str.78, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../net/ceph/ceph_common.c", i32 675, i32 17}
!173 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../net/ceph/ceph_common.c", i32 678, i32 17}
!175 = !{ptr @.str.80, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../net/ceph/ceph_common.c", i32 681, i32 17}
!177 = !{ptr @__ksymtab_ceph_print_client_options, !178, !"__ksymtab_ceph_print_client_options", i1 false, i1 false}
!178 = !{!"../net/ceph/ceph_common.c", i32 690, i32 1}
!179 = !{ptr @__ksymtab_ceph_client_addr, !180, !"__ksymtab_ceph_client_addr", i1 false, i1 false}
!180 = !{!"../net/ceph/ceph_common.c", i32 696, i32 1}
!181 = !{ptr @__ksymtab_ceph_client_gid, !182, !"__ksymtab_ceph_client_gid", i1 false, i1 false}
!182 = !{!"../net/ceph/ceph_common.c", i32 702, i32 1}
!183 = !{ptr @ceph_create_client.__key, !184, !"__key", i1 false, i1 false}
!184 = !{!"../net/ceph/ceph_common.c", i32 724, i32 2}
!185 = !{ptr @.str.81, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @ceph_create_client.__key.82, !187, !"__key", i1 false, i1 false}
!187 = !{!"../net/ceph/ceph_common.c", i32 725, i32 2}
!188 = !{ptr @.str.83, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @__ksymtab_ceph_create_client, !190, !"__ksymtab_ceph_create_client", i1 false, i1 false}
!190 = !{!"../net/ceph/ceph_common.c", i32 758, i32 1}
!191 = !{ptr @.str.84, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../net/ceph/ceph_common.c", i32 762, i32 2}
!193 = !{ptr @.str.85, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @ceph_destroy_client.__UNIQUE_ID_ddebug321, !192, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!195 = !{ptr @.str.86, !192, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.87, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../net/ceph/ceph_common.c", i32 776, i32 2}
!198 = !{ptr @ceph_destroy_client.__UNIQUE_ID_ddebug322, !197, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!199 = !{ptr @.str.88, !197, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @__ksymtab_ceph_destroy_client, !201, !"__ksymtab_ceph_destroy_client", i1 false, i1 false}
!201 = !{!"../net/ceph/ceph_common.c", i32 778, i32 1}
!202 = !{ptr @__ksymtab_ceph_reset_client_addr, !203, !"__ksymtab_ceph_reset_client_addr", i1 false, i1 false}
!203 = !{!"../net/ceph/ceph_common.c", i32 786, i32 1}
!204 = !{ptr @.str.89, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../net/ceph/ceph_common.c", i32 815, i32 3}
!206 = !{ptr @.str.90, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @__ceph_open_session.__UNIQUE_ID_ddebug323, !205, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!208 = !{ptr @.str.91, !205, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.92, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../net/ceph/ceph_common.c", i32 825, i32 2}
!211 = !{ptr @__ceph_open_session._entry, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @__ceph_open_session._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @__ksymtab___ceph_open_session, !214, !"__ksymtab___ceph_open_session", i1 false, i1 false}
!214 = !{!"../net/ceph/ceph_common.c", i32 831, i32 1}
!215 = !{ptr @.str.93, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../net/ceph/ceph_common.c", i32 838, i32 2}
!217 = !{ptr @.str.94, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @ceph_open_session.__UNIQUE_ID_ddebug324, !216, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!219 = !{ptr @.str.95, !216, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @__ksymtab_ceph_open_session, !221, !"__ksymtab_ceph_open_session", i1 false, i1 false}
!221 = !{!"../net/ceph/ceph_common.c", i32 846, i32 1}
!222 = !{ptr @.str.96, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../net/ceph/ceph_common.c", i32 854, i32 45}
!224 = !{ptr @__ksymtab_ceph_wait_for_latest_osdmap, !225, !"__ksymtab_ceph_wait_for_latest_osdmap", i1 false, i1 false}
!225 = !{!"../net/ceph/ceph_common.c", i32 864, i32 1}
!226 = !{ptr @.str.97, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../net/ceph/ceph_common.c", i32 900, i32 2}
!228 = !{ptr @.str.98, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @exit_ceph_lib.__UNIQUE_ID_ddebug325, !227, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!230 = !{ptr @.str.99, !227, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @__initcall__kmod_libceph__326_909_init_ceph_lib6, !232, !"__initcall__kmod_libceph__326_909_init_ceph_lib6", i1 false, i1 false}
!232 = !{!"../net/ceph/ceph_common.c", i32 909, i32 1}
!233 = !{ptr @__exitcall_exit_ceph_lib, !234, !"__exitcall_exit_ceph_lib", i1 false, i1 false}
!234 = !{!"../net/ceph/ceph_common.c", i32 910, i32 1}
!235 = !{ptr @__UNIQUE_ID_author327, !236, !"__UNIQUE_ID_author327", i1 false, i1 false}
!236 = !{!"../net/ceph/ceph_common.c", i32 912, i32 1}
!237 = !{ptr @__UNIQUE_ID_author328, !238, !"__UNIQUE_ID_author328", i1 false, i1 false}
!238 = !{!"../net/ceph/ceph_common.c", i32 913, i32 1}
!239 = !{ptr @__UNIQUE_ID_author329, !240, !"__UNIQUE_ID_author329", i1 false, i1 false}
!240 = !{!"../net/ceph/ceph_common.c", i32 914, i32 1}
!241 = !{ptr @__UNIQUE_ID_description330, !242, !"__UNIQUE_ID_description330", i1 false, i1 false}
!242 = !{!"../net/ceph/ceph_common.c", i32 915, i32 1}
!243 = !{ptr @__UNIQUE_ID_file331, !244, !"__UNIQUE_ID_file331", i1 false, i1 false}
!244 = !{!"../net/ceph/ceph_common.c", i32 916, i32 1}
!245 = !{ptr @__UNIQUE_ID_license332, !244, !"__UNIQUE_ID_license332", i1 false, i1 false}
!246 = !{ptr @__param_str_supported_features, !3, !"__param_str_supported_features", i1 false, i1 false}
!247 = !{ptr @param_ops_supported_features, !248, !"param_ops_supported_features", i1 false, i1 false}
!248 = !{!"../net/ceph/ceph_common.c", i32 55, i32 38}
!249 = !{ptr @.str.100, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../net/ceph/ceph_common.c", i32 53, i32 25}
!251 = !{ptr @.str.101, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../net/ceph/ceph_common.c", i32 283, i32 2}
!253 = !{ptr @.str.102, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../net/ceph/ceph_common.c", i32 284, i32 2}
!255 = !{ptr @.str.103, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../net/ceph/ceph_common.c", i32 286, i32 2}
!257 = !{ptr @.str.104, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../net/ceph/ceph_common.c", i32 287, i32 2}
!259 = !{ptr @.str.105, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../net/ceph/ceph_common.c", i32 288, i32 2}
!261 = !{ptr @.str.106, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../net/ceph/ceph_common.c", i32 289, i32 2}
!263 = !{ptr @.str.107, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../net/ceph/ceph_common.c", i32 290, i32 2}
!265 = !{ptr @.str.108, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../net/ceph/ceph_common.c", i32 291, i32 2}
!267 = !{ptr @.str.109, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../net/ceph/ceph_common.c", i32 292, i32 2}
!269 = !{ptr @.str.110, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../net/ceph/ceph_common.c", i32 293, i32 2}
!271 = !{ptr @.str.111, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../net/ceph/ceph_common.c", i32 294, i32 2}
!273 = !{ptr @.str.112, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../net/ceph/ceph_common.c", i32 295, i32 2}
!275 = !{ptr @.str.113, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../net/ceph/ceph_common.c", i32 296, i32 2}
!277 = !{ptr @.str.114, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../net/ceph/ceph_common.c", i32 297, i32 2}
!279 = !{ptr @.str.115, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../net/ceph/ceph_common.c", i32 299, i32 2}
!281 = !{ptr @.str.116, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../net/ceph/ceph_common.c", i32 300, i32 2}
!283 = !{ptr @.str.117, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../net/ceph/ceph_common.c", i32 302, i32 2}
!285 = !{ptr @.str.118, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../net/ceph/ceph_common.c", i32 303, i32 2}
!287 = !{ptr @.str.119, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../net/ceph/ceph_common.c", i32 304, i32 2}
!289 = !{ptr @ceph_parameters, !290, !"ceph_parameters", i1 false, i1 false}
!290 = !{!"../net/ceph/ceph_common.c", i32 282, i32 39}
!291 = !{ptr @.str.120, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../net/ceph/ceph_common.c", i32 259, i32 3}
!293 = !{ptr @.str.121, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../net/ceph/ceph_common.c", i32 260, i32 3}
!295 = !{ptr @.str.122, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../net/ceph/ceph_common.c", i32 261, i32 3}
!297 = !{ptr @ceph_param_read_from_replica, !298, !"ceph_param_read_from_replica", i1 false, i1 false}
!298 = !{!"../net/ceph/ceph_common.c", i32 258, i32 36}
!299 = !{ptr @.str.123, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../net/ceph/ceph_common.c", i32 274, i32 3}
!301 = !{ptr @.str.124, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../net/ceph/ceph_common.c", i32 276, i32 3}
!303 = !{ptr @.str.125, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../net/ceph/ceph_common.c", i32 277, i32 3}
!305 = !{ptr @.str.126, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../net/ceph/ceph_common.c", i32 278, i32 3}
!307 = !{ptr @ceph_param_ms_mode, !308, !"ceph_param_ms_mode", i1 false, i1 false}
!308 = !{!"../net/ceph/ceph_common.c", i32 273, i32 36}
!309 = !{ptr @.str.127, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../net/ceph/ceph_common.c", i32 369, i32 4}
!311 = !{ptr @.str.128, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../net/ceph/ceph_common.c", i32 373, i32 4}
!313 = !{ptr @.str.129, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../net/ceph/ceph_common.c", i32 377, i32 4}
!315 = !{ptr @.str.130, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../net/ceph/ceph_common.c", i32 381, i32 4}
!317 = !{ptr @.str.131, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../net/ceph/ceph_common.c", i32 884, i32 2}
!319 = !{ptr @.str.132, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @init_ceph_lib._entry, !318, !"_entry", i1 false, i1 false}
!321 = !{ptr @init_ceph_lib._entry_ptr, !318, !"_entry_ptr", i1 false, i1 false}
!322 = !{!"sp"}
!323 = !{i32 1, !"wchar_size", i32 2}
!324 = !{i32 1, !"min_enum_size", i32 4}
!325 = !{i32 8, !"branch-target-enforcement", i32 0}
!326 = !{i32 8, !"sign-return-address", i32 0}
!327 = !{i32 8, !"sign-return-address-all", i32 0}
!328 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!329 = !{i32 7, !"uwtable", i32 1}
!330 = !{i32 7, !"frame-pointer", i32 2}
!331 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!332 = !{i8 0, i8 2}
!333 = !{!"auto-init"}
!334 = !{i64 2148741149, i64 2148741154, i64 2148741167, i64 2148741211, i64 2148741245, i64 2148741266}
!335 = !{i64 2155936573, i64 2155937060, i64 2155936610, i64 2155936666, i64 2155936700, i64 2155936724, i64 2155936765, i64 2155936786, i64 2155936814, i64 2155936848}
!336 = !{i64 2155938100, i64 2155938587, i64 2155938137, i64 2155938193, i64 2155938227, i64 2155938251, i64 2155938292, i64 2155938313, i64 2155938341, i64 2155938375}
!337 = !{i64 2155940161, i64 2155940648, i64 2155940198, i64 2155940254, i64 2155940288, i64 2155940312, i64 2155940353, i64 2155940374, i64 2155940402, i64 2155940436}
!338 = !{!"branch_weights", i32 2000, i32 1}
