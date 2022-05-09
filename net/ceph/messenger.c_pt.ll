; ModuleID = '/llk/IR_all_yes/net/ceph/messenger.c_pt.bc'
source_filename = "../net/ceph/messenger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ceph_pr_addr\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_pr_addr\09\09\09\09"
module asm "\09.long\09__crc_ceph_pr_addr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_pr_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_pr_addr\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_pr_addr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_msgr_flush\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_msgr_flush\09\09\09\09"
module asm "\09.long\09__crc_ceph_msgr_flush\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_msgr_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_msgr_flush\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_msgr_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_con_close\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_con_close\09\09\09\09"
module asm "\09.long\09__crc_ceph_con_close\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_con_close:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_con_close\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_con_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_con_open\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_con_open\09\09\09\09"
module asm "\09.long\09__crc_ceph_con_open\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_con_open:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_con_open\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_con_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_con_init\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_con_init\09\09\09\09"
module asm "\09.long\09__crc_ceph_con_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_con_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_con_init\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_con_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_con_send\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_con_send\09\09\09\09"
module asm "\09.long\09__crc_ceph_con_send\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_con_send:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_con_send\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_con_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_con_keepalive\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_con_keepalive\09\09\09\09"
module asm "\09.long\09__crc_ceph_con_keepalive\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_con_keepalive:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_con_keepalive\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_con_keepalive:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_msg_data_add_pages\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_msg_data_add_pages\09\09\09\09"
module asm "\09.long\09__crc_ceph_msg_data_add_pages\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_msg_data_add_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_msg_data_add_pages\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_msg_data_add_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_msg_data_add_pagelist\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_msg_data_add_pagelist\09\09\09\09"
module asm "\09.long\09__crc_ceph_msg_data_add_pagelist\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_msg_data_add_pagelist:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_msg_data_add_pagelist\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_msg_data_add_pagelist:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_msg_data_add_bio\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_msg_data_add_bio\09\09\09\09"
module asm "\09.long\09__crc_ceph_msg_data_add_bio\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_msg_data_add_bio:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_msg_data_add_bio\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_msg_data_add_bio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_msg_data_add_bvecs\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_msg_data_add_bvecs\09\09\09\09"
module asm "\09.long\09__crc_ceph_msg_data_add_bvecs\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_msg_data_add_bvecs:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_msg_data_add_bvecs\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_msg_data_add_bvecs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_msg_new2\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_msg_new2\09\09\09\09"
module asm "\09.long\09__crc_ceph_msg_new2\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_msg_new2:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_msg_new2\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_msg_new2:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_msg_new\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_msg_new\09\09\09\09"
module asm "\09.long\09__crc_ceph_msg_new\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_msg_new:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_msg_new\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_msg_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_msg_get\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_msg_get\09\09\09\09"
module asm "\09.long\09__crc_ceph_msg_get\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_msg_get:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_msg_get\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_msg_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_msg_put\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_msg_put\09\09\09\09"
module asm "\09.long\09__crc_ceph_msg_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_msg_put:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_msg_put\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_msg_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ceph_msg_dump\22, \22a\22\09"
module asm "\09.weak\09__crc_ceph_msg_dump\09\09\09\09"
module asm "\09.long\09__crc_ceph_msg_dump\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ceph_msg_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22ceph_msg_dump\22\09\09\09\09\09"
module asm "__kstrtabns_ceph_msg_dump:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.164 }
%union.anon.164 = type { i32 }
%struct.ceph_connection = type <{ ptr, ptr, ptr, i32, %struct.atomic_t, ptr, i32, ptr, %struct.ceph_entity_name, %struct.ceph_entity_addr, [7 x i8], i64, %struct.mutex, %struct.list_head, %struct.list_head, [4 x i8], i64, i64, i64, ptr, ptr, ptr, i32, i32, i32, %struct.timespec64, %struct.delayed_work, i32, %union.anon.182 }>
%struct.ceph_entity_name = type <{ i8, i64 }>
%struct.ceph_entity_addr = type { i32, i32, %struct.__kernel_sockaddr_storage }
%struct.__kernel_sockaddr_storage = type { %union.anon.180 }
%union.anon.180 = type { ptr, [124 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%union.anon.182 = type { %struct.ceph_connection_v2_info }
%struct.ceph_connection_v2_info = type { %struct.iov_iter, [5 x %struct.kvec], %struct.bio_vec, i32, i32, %struct.iov_iter, [8 x %struct.kvec], %struct.bio_vec, i32, i32, i32, i8, %struct.ceph_frame_desc, %struct.ceph_msg_data_cursor, %struct.ceph_msg_data_cursor, ptr, ptr, ptr, %struct.crypto_wait, %struct.ceph_gcm_nonce, %struct.ceph_gcm_nonce, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, [16 x ptr], i32, [8 x %struct.kvec], [8 x %struct.kvec], i32, i32, i64, i64, i64, i64, i64, [96 x i8], [96 x i8], %struct.anon.183 }
%struct.kvec = type { ptr, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.23, %union.anon.24 }
%union.anon.23 = type { ptr }
%union.anon.24 = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ceph_frame_desc = type { i32, i32, [4 x i32], [4 x i32] }
%struct.ceph_msg_data_cursor = type { i32, ptr, i32, i8, i8, %union.anon.177 }
%union.anon.177 = type { %struct.ceph_bio_iter }
%struct.ceph_bio_iter = type { ptr, %struct.bvec_iter }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ceph_gcm_nonce = type <{ i32, i64 }>
%struct.anon.183 = type { i8, %union.anon.184 }
%union.anon.184 = type <{ %struct.anon.185, [3 x i8] }>
%struct.anon.185 = type { i32, i32, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.77 }
%union.anon.77 = type { [4 x i32] }
%struct.ceph_options = type { i32, %struct.ceph_fsid, %struct.ceph_entity_addr, i32, i32, i32, i32, i32, [2 x i32], ptr, i32, ptr, ptr, %struct.rb_root }
%struct.ceph_fsid = type { [16 x i8] }
%struct.rb_root = type { ptr }
%struct.ceph_messenger = type <{ %struct.ceph_entity_inst, %struct.ceph_entity_addr, [3 x i8], %struct.atomic_t, %struct.possible_net_t, i32, %struct.spinlock }>
%struct.ceph_entity_inst = type <{ %struct.ceph_entity_name, %struct.ceph_entity_addr }>
%struct.possible_net_t = type { ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.page = type { i32, %union.anon.9, %union.anon.162, %struct.atomic_t, i32 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.162 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.156, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.41 }
%struct.llist_node = type { ptr }
%union.anon.41 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.43 }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.156 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.86, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.126, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.127, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.48, %union.anon.50, %union.anon.51, i16, i8, i8, i32, %union.anon.53, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.78, [0 x i32], %union.anon.79, i16, i16, %union.anon.80, %struct.refcount_struct, [0 x i32], %union.anon.81 }
%union.anon.48 = type { i64 }
%union.anon.50 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.53 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { i32 }
%union.anon.79 = type { %struct.hlist_node }
%union.anon.80 = type { i32 }
%union.anon.81 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.86 = type { %struct.atomic_t, i32, ptr, ptr }
%union.anon.126 = type { ptr }
%union.anon.127 = type { ptr }
%struct.sk_buff_head = type { %union.anon.84, i32, %struct.spinlock }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ceph_connection_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ceph_msg = type { %struct.ceph_msg_header, %union.anon, %struct.kvec, ptr, i32, ptr, i32, i32, %struct.ceph_msg_data_cursor, ptr, %struct.list_head, %struct.kref, i8, i8, i32, ptr }
%struct.ceph_msg_header = type <{ i64, i64, i16, i16, i16, i32, i32, i32, i16, %struct.ceph_entity_name, i16, i16, i32 }>
%union.anon = type { %struct.ceph_msg_footer }
%struct.ceph_msg_footer = type <{ i32, i32, i32, i64, i8 }>
%struct.kref = type { %struct.refcount_struct }
%struct.ceph_msg_data = type { i32, %union.anon.0 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { %struct.ceph_bio_iter, i32 }
%struct.ceph_pagelist = type { %struct.list_head, ptr, i32, i32, %struct.list_head, i32, %struct.refcount_struct }
%struct.anon.176 = type { ptr, i32, i32, i8 }
%struct.anon.178 = type { i32, i16, i16 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.175, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bio_issue = type { i64 }
%union.anon.175 = type { ptr }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.38, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.138, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.138 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.ceph_bvec_iter = type { ptr, %struct.bvec_iter }
%struct.ceph_buffer = type { %struct.kref, %struct.kvec, i32 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.75, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.75 = type { ptr }

@addr_str_seq = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@addr_str = internal global { [32 x [64 x i8]], [512 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(%d)%pI4:%hu\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(%d)[%pI6c]:%hu\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(unknown sockaddr family %hu)\00", [34 x i8] zeroinitializer }, align 32
@__kstrtab_ceph_pr_addr = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_pr_addr = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_pr_addr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_pr_addr to i32), ptr @__kstrtab_ceph_pr_addr, ptr @__kstrtabns_ceph_pr_addr }, section "___ksymtab+ceph_pr_addr", align 4
@ceph_zero_page = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@empty_zero_page = external dso_local local_unnamed_addr global ptr, align 4
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ceph-msgr\00", [22 x i8] zeroinitializer }, align 32
@ceph_msgr_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ceph_msgr_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013libceph: msgr_init failed to create workqueue\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ceph_msgr_init\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/ceph/messenger.c\00", [43 x i8] zeroinitializer }, align 32
@ceph_msgr_init._entry_ptr = internal global ptr @ceph_msgr_init._entry, section ".printk_index", align 4
@__kstrtab_ceph_msgr_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_msgr_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_msgr_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_msgr_flush to i32), ptr @__kstrtab_ceph_msgr_flush, ptr @__kstrtabns_ceph_msgr_flush }, section "___ksymtab+ceph_msgr_flush", align 4
@ceph_tcp_connect.__UNIQUE_ID_ddebug609 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.6, ptr @.str.9, i8 0, i8 109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"libceph\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ceph_tcp_connect\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%.*s %12.12s:%-4d : %s con %p peer_addr %s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"libceph: %.*s %12.12s:%-4d : %s con %p peer_addr %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"    \00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&socket_class\00", [18 x i8] zeroinitializer }, align 32
@socket_class = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ceph_tcp_connect.__UNIQUE_ID_ddebug610 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.6, ptr @.str.13, i8 0, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%.*s %12.12s:%-4d : connect %s EINPROGRESS sk_state = %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"libceph: %.*s %12.12s:%-4d : connect %s EINPROGRESS sk_state = %u\0A\00", [61 x i8] zeroinitializer }, align 32
@ceph_tcp_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.8, ptr @.str.6, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013libceph: connect %s error %d\0A\00", [32 x i8] zeroinitializer }, align 32
@ceph_tcp_connect._entry_ptr = internal global ptr @ceph_tcp_connect._entry, section ".printk_index", align 4
@ceph_con_close_socket.__UNIQUE_ID_ddebug611 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.16, ptr @.str.6, ptr @.str.17, i8 0, i8 121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ceph_con_close_socket\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%.*s %12.12s:%-4d : %s con %p sock %p\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"libceph: %.*s %12.12s:%-4d : %s con %p sock %p\0A\00", [48 x i8] zeroinitializer }, align 32
@ceph_con_reset_session.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.19, ptr @.str.6, ptr @.str.20, i8 0, i8 -119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ceph_con_reset_session\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%.*s %12.12s:%-4d : %s con %p\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"libceph: %.*s %12.12s:%-4d : %s con %p\0A\00", [56 x i8] zeroinitializer }, align 32
@ceph_con_close.__UNIQUE_ID_ddebug614 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.22, ptr @.str.6, ptr @.str.23, i8 0, i8 -113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ceph_con_close\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%.*s %12.12s:%-4d : con_close %p peer %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"libceph: %.*s %12.12s:%-4d : con_close %p peer %s\0A\00", [45 x i8] zeroinitializer }, align 32
@__kstrtab_ceph_con_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_con_close = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_con_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_con_close to i32), ptr @__kstrtab_ceph_con_close, ptr @__kstrtabns_ceph_con_close }, section "___ksymtab+ceph_con_close", align 4
@ceph_con_open.__UNIQUE_ID_ddebug615 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.25, ptr @.str.6, ptr @.str.26, i8 0, i8 -107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ceph_con_open\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%.*s %12.12s:%-4d : con_open %p %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"libceph: %.*s %12.12s:%-4d : con_open %p %s\0A\00", [51 x i8] zeroinitializer }, align 32
@__kstrtab_ceph_con_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_con_open = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_con_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_con_open to i32), ptr @__kstrtab_ceph_con_open, ptr @__kstrtabns_ceph_con_open }, section "___ksymtab+ceph_con_open", align 4
@ceph_con_init.__UNIQUE_ID_ddebug616 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.28, ptr @.str.6, ptr @.str.29, i8 0, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ceph_con_init\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%.*s %12.12s:%-4d : con_init %p\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"libceph: %.*s %12.12s:%-4d : con_init %p\0A\00", [54 x i8] zeroinitializer }, align 32
@ceph_con_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&con->mutex\00", [20 x i8] zeroinitializer }, align 32
@ceph_con_init.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&(&con->work)->work)\00", [57 x i8] zeroinitializer }, align 32
@ceph_con_init.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&con->work)->timer\00", [43 x i8] zeroinitializer }, align 32
@__kstrtab_ceph_con_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_con_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_con_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_con_init to i32), ptr @__kstrtab_ceph_con_init, ptr @__kstrtabns_ceph_con_init }, section "___ksymtab+ceph_con_init", align 4
@ceph_con_discard_sent.__UNIQUE_ID_ddebug617 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.36, ptr @.str.6, ptr @.str.37, i8 0, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ceph_con_discard_sent\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%.*s %12.12s:%-4d : %s con %p ack_seq %llu\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"libceph: %.*s %12.12s:%-4d : %s con %p ack_seq %llu\0A\00", [43 x i8] zeroinitializer }, align 32
@ceph_con_discard_sent.__UNIQUE_ID_ddebug618 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.36, ptr @.str.6, ptr @.str.39, i8 0, i8 -86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%.*s %12.12s:%-4d : %s con %p discarding msg %p seq %llu\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"libceph: %.*s %12.12s:%-4d : %s con %p discarding msg %p seq %llu\0A\00", [61 x i8] zeroinitializer }, align 32
@ceph_con_discard_requeued.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.41, ptr @.str.6, ptr @.str.42, i8 0, i8 -82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ceph_con_discard_requeued\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%.*s %12.12s:%-4d : %s con %p reconnect_seq %llu\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"libceph: %.*s %12.12s:%-4d : %s con %p reconnect_seq %llu\0A\00", [37 x i8] zeroinitializer }, align 32
@ceph_con_discard_requeued.__UNIQUE_ID_ddebug620 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.41, ptr @.str.6, ptr @.str.39, i8 0, i8 -80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ceph_parse_ips.__UNIQUE_ID_ddebug677 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.44, ptr @.str.6, ptr @.str.45, i8 1, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ceph_parse_ips\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%.*s %12.12s:%-4d : parse_ips on '%.*s'\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"libceph: %.*s %12.12s:%-4d : parse_ips on '%.*s'\0A\00", [46 x i8] zeroinitializer }, align 32
@ceph_parse_ips.__UNIQUE_ID_ddebug678 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.44, ptr @.str.6, ptr @.str.47, i8 1, i8 69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%.*s %12.12s:%-4d : missing matching ']'\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"libceph: %.*s %12.12s:%-4d : missing matching ']'\0A\00", [45 x i8] zeroinitializer }, align 32
@ceph_parse_ips.__UNIQUE_ID_ddebug679 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.44, ptr @.str.6, ptr @.str.49, i8 1, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%.*s %12.12s:%-4d : %s got %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"libceph: %.*s %12.12s:%-4d : %s got %s\0A\00", [56 x i8] zeroinitializer }, align 32
@ceph_con_process_message.__UNIQUE_ID_ddebug680 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.51, ptr @.str.6, ptr @.str.52, i8 1, i8 89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ceph_con_process_message\00", [39 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"%.*s %12.12s:%-4d : ===== %p %llu from %s%lld %d=%s len %d+%d+%d (%u %u %u) =====\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"libceph: %.*s %12.12s:%-4d : ===== %p %llu from %s%lld %d=%s len %d+%d+%d (%u %u %u) =====\0A\00", [36 x i8] zeroinitializer }, align 32
@ceph_messenger_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&msgr->global_seq_lock\00", [41 x i8] zeroinitializer }, align 32
@ceph_messenger_init.__UNIQUE_ID_ddebug696 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.55, ptr @.str.6, ptr @.str.56, i8 1, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ceph_messenger_init\00", [44 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%.*s %12.12s:%-4d : %s %p\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"libceph: %.*s %12.12s:%-4d : %s %p\0A\00", [60 x i8] zeroinitializer }, align 32
@ceph_con_send.__UNIQUE_ID_ddebug698 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.58, ptr @.str.6, ptr @.str.59, i8 1, i8 -88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ceph_con_send\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%.*s %12.12s:%-4d : con_send %p closed, dropping %p\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"libceph: %.*s %12.12s:%-4d : con_send %p closed, dropping %p\0A\00", [34 x i8] zeroinitializer }, align 32
@ceph_con_send.__UNIQUE_ID_ddebug699 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.58, ptr @.str.6, ptr @.str.61, i8 1, i8 -84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%.*s %12.12s:%-4d : ----- %p to %s%lld %d=%s len %d+%d+%d -----\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"libceph: %.*s %12.12s:%-4d : ----- %p to %s%lld %d=%s len %d+%d+%d -----\0A\00", [54 x i8] zeroinitializer }, align 32
@__kstrtab_ceph_con_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_con_send = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_con_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_con_send to i32), ptr @__kstrtab_ceph_con_send, ptr @__kstrtabns_ceph_con_send }, section "___ksymtab+ceph_con_send", align 4
@ceph_msg_revoke.__UNIQUE_ID_ddebug700 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.63, ptr @.str.6, ptr @.str.64, i8 1, i8 -79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ceph_msg_revoke\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%.*s %12.12s:%-4d : %s msg %p null con\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"libceph: %.*s %12.12s:%-4d : %s msg %p null con\0A\00", [47 x i8] zeroinitializer }, align 32
@ceph_msg_revoke.__UNIQUE_ID_ddebug701 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.63, ptr @.str.6, ptr @.str.66, i8 1, i8 -77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%.*s %12.12s:%-4d : %s con %p msg %p not linked\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"libceph: %.*s %12.12s:%-4d : %s con %p msg %p not linked\0A\00", [38 x i8] zeroinitializer }, align 32
@ceph_msg_revoke.__UNIQUE_ID_ddebug702 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.63, ptr @.str.6, ptr @.str.68, i8 1, i8 -76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%.*s %12.12s:%-4d : %s con %p msg %p was linked\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"libceph: %.*s %12.12s:%-4d : %s con %p msg %p was linked\0A\00", [38 x i8] zeroinitializer }, align 32
@ceph_msg_revoke.__UNIQUE_ID_ddebug703 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.63, ptr @.str.6, ptr @.str.70, i8 1, i8 -75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%.*s %12.12s:%-4d : %s con %p msg %p was sending\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"libceph: %.*s %12.12s:%-4d : %s con %p msg %p was sending\0A\00", [37 x i8] zeroinitializer }, align 32
@ceph_msg_revoke.__UNIQUE_ID_ddebug704 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.63, ptr @.str.6, ptr @.str.72, i8 1, i8 -72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%.*s %12.12s:%-4d : %s con %p msg %p not current, out_msg %p\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"libceph: %.*s %12.12s:%-4d : %s con %p msg %p not current, out_msg %p\0A\00", [57 x i8] zeroinitializer }, align 32
@ceph_msg_revoke_incoming.__UNIQUE_ID_ddebug705 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.74, ptr @.str.6, ptr @.str.64, i8 1, i8 -69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ceph_msg_revoke_incoming\00", [39 x i8] zeroinitializer }, align 32
@ceph_msg_revoke_incoming.__UNIQUE_ID_ddebug706 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.74, ptr @.str.6, ptr @.str.75, i8 1, i8 -67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%.*s %12.12s:%-4d : %s con %p msg %p was recving\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"libceph: %.*s %12.12s:%-4d : %s con %p msg %p was recving\0A\00", [37 x i8] zeroinitializer }, align 32
@ceph_msg_revoke_incoming.__UNIQUE_ID_ddebug707 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.74, ptr @.str.6, ptr @.str.77, i8 1, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%.*s %12.12s:%-4d : %s con %p msg %p not current, in_msg %p\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"libceph: %.*s %12.12s:%-4d : %s con %p msg %p not current, in_msg %p\0A\00", [58 x i8] zeroinitializer }, align 32
@ceph_con_keepalive.__UNIQUE_ID_ddebug708 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.79, ptr @.str.6, ptr @.str.80, i8 1, i8 -63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ceph_con_keepalive\00", [45 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%.*s %12.12s:%-4d : con_keepalive %p\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"libceph: %.*s %12.12s:%-4d : con_keepalive %p\0A\00", [49 x i8] zeroinitializer }, align 32
@__kstrtab_ceph_con_keepalive = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_con_keepalive = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_con_keepalive = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_con_keepalive to i32), ptr @__kstrtab_ceph_con_keepalive, ptr @__kstrtabns_ceph_con_keepalive }, section "___ksymtab+ceph_con_keepalive", align 4
@__kstrtab_ceph_msg_data_add_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_msg_data_add_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_msg_data_add_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_msg_data_add_pages to i32), ptr @__kstrtab_ceph_msg_data_add_pages, ptr @__kstrtabns_ceph_msg_data_add_pages }, section "___ksymtab+ceph_msg_data_add_pages", align 4
@__kstrtab_ceph_msg_data_add_pagelist = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_msg_data_add_pagelist = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_msg_data_add_pagelist = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_msg_data_add_pagelist to i32), ptr @__kstrtab_ceph_msg_data_add_pagelist, ptr @__kstrtabns_ceph_msg_data_add_pagelist }, section "___ksymtab+ceph_msg_data_add_pagelist", align 4
@__kstrtab_ceph_msg_data_add_bio = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_msg_data_add_bio = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_msg_data_add_bio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_msg_data_add_bio to i32), ptr @__kstrtab_ceph_msg_data_add_bio, ptr @__kstrtabns_ceph_msg_data_add_bio }, section "___ksymtab+ceph_msg_data_add_bio", align 4
@__kstrtab_ceph_msg_data_add_bvecs = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_msg_data_add_bvecs = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_msg_data_add_bvecs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_msg_data_add_bvecs to i32), ptr @__kstrtab_ceph_msg_data_add_bvecs, ptr @__kstrtabns_ceph_msg_data_add_bvecs }, section "___ksymtab+ceph_msg_data_add_bvecs", align 4
@ceph_msg_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ceph_msg_new2.__UNIQUE_ID_ddebug709 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.82, ptr @.str.6, ptr @.str.83, i8 1, i8 -30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ceph_msg_new2\00", [18 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%.*s %12.12s:%-4d : ceph_msg_new can't allocate %d bytes\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"libceph: %.*s %12.12s:%-4d : ceph_msg_new can't allocate %d bytes\0A\00", [61 x i8] zeroinitializer }, align 32
@ceph_msg_new2.__UNIQUE_ID_ddebug710 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.82, ptr @.str.6, ptr @.str.85, i8 1, i8 -25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%.*s %12.12s:%-4d : ceph_msg_new %p front %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"libceph: %.*s %12.12s:%-4d : ceph_msg_new %p front %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ceph_msg_new2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.82, ptr @.str.6, i32 1956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013libceph: msg_new can't create type %d front %d\0A\00", [46 x i8] zeroinitializer }, align 32
@ceph_msg_new2._entry_ptr = internal global ptr @ceph_msg_new2._entry, section ".printk_index", align 4
@ceph_msg_new2.__UNIQUE_ID_ddebug711 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.82, ptr @.str.6, ptr @.str.88, i8 1, i8 -22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%.*s %12.12s:%-4d : msg_new can't create type %d front %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"libceph: %.*s %12.12s:%-4d : msg_new can't create type %d front %d\0A\00", [60 x i8] zeroinitializer }, align 32
@__kstrtab_ceph_msg_new2 = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_msg_new2 = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_msg_new2 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_msg_new2 to i32), ptr @__kstrtab_ceph_msg_new2, ptr @__kstrtabns_ceph_msg_new2 }, section "___ksymtab+ceph_msg_new2", align 4
@__kstrtab_ceph_msg_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_msg_new = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_msg_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_msg_new to i32), ptr @__kstrtab_ceph_msg_new, ptr @__kstrtabns_ceph_msg_new }, section "___ksymtab+ceph_msg_new", align 4
@.str.90 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"error allocating memory for incoming message\00", [51 x i8] zeroinitializer }, align 32
@ceph_msg_get.__UNIQUE_ID_ddebug715 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.91, ptr @.str.6, ptr @.str.92, i8 2, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ceph_msg_get\00", [19 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%.*s %12.12s:%-4d : %s %p (was %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"libceph: %.*s %12.12s:%-4d : %s %p (was %d)\0A\00", [51 x i8] zeroinitializer }, align 32
@__kstrtab_ceph_msg_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_msg_get = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_msg_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_msg_get to i32), ptr @__kstrtab_ceph_msg_get, ptr @__kstrtabns_ceph_msg_get }, section "___ksymtab+ceph_msg_get", align 4
@ceph_msg_put.__UNIQUE_ID_ddebug716 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.94, ptr @.str.6, ptr @.str.92, i8 2, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ceph_msg_put\00", [19 x i8] zeroinitializer }, align 32
@__kstrtab_ceph_msg_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_msg_put = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_msg_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_msg_put to i32), ptr @__kstrtab_ceph_msg_put, ptr @__kstrtabns_ceph_msg_put }, section "___ksymtab+ceph_msg_put", align 4
@ceph_msg_dump.__UNIQUE_ID_ddebug717 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.95, ptr @.str.6, ptr @.str.96, i8 2, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ceph_msg_dump\00", [18 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"msg_dump %p (front_alloc_len %d length %zd)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"libceph: msg_dump %p (front_alloc_len %d length %zd)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"header: \00", [23 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" front: \00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"middle: \00", [23 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"footer: \00", [23 x i8] zeroinitializer }, align 32
@__kstrtab_ceph_msg_dump = external dso_local constant [0 x i8], align 1
@__kstrtabns_ceph_msg_dump = external dso_local constant [0 x i8], align 1
@__ksymtab_ceph_msg_dump = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ceph_msg_dump to i32), ptr @__kstrtab_ceph_msg_dump, ptr @__kstrtabns_ceph_msg_dump }, section "___ksymtab+ceph_msg_dump", align 4
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ceph_msg\00", [23 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.105 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@ceph_sock_data_ready.__UNIQUE_ID_ddebug602 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.106, ptr @.str.6, ptr @.str.107, i8 0, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ceph_sock_data_ready\00", [43 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%.*s %12.12s:%-4d : %s %p state = %d, queueing work\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"libceph: %.*s %12.12s:%-4d : %s %p state = %d, queueing work\0A\00", [34 x i8] zeroinitializer }, align 32
@ceph_sock_write_space.__UNIQUE_ID_ddebug603 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.109, ptr @.str.6, ptr @.str.110, i8 0, i8 93, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ceph_sock_write_space\00", [42 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%.*s %12.12s:%-4d : %s %p queueing write work\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"libceph: %.*s %12.12s:%-4d : %s %p queueing write work\0A\00", [40 x i8] zeroinitializer }, align 32
@ceph_sock_write_space.__UNIQUE_ID_ddebug604 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.109, ptr @.str.6, ptr @.str.112, i8 0, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%.*s %12.12s:%-4d : %s %p nothing to write\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"libceph: %.*s %12.12s:%-4d : %s %p nothing to write\0A\00", [43 x i8] zeroinitializer }, align 32
@ceph_sock_state_change.__UNIQUE_ID_ddebug605 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.114, ptr @.str.6, ptr @.str.115, i8 0, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ceph_sock_state_change\00", [41 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%.*s %12.12s:%-4d : %s %p state = %d sk_state = %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"libceph: %.*s %12.12s:%-4d : %s %p state = %d sk_state = %u\0A\00", [35 x i8] zeroinitializer }, align 32
@ceph_sock_state_change.__UNIQUE_ID_ddebug606 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.114, ptr @.str.6, ptr @.str.117, i8 0, i8 97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%.*s %12.12s:%-4d : %s TCP_CLOSE\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"libceph: %.*s %12.12s:%-4d : %s TCP_CLOSE\0A\00", [53 x i8] zeroinitializer }, align 32
@ceph_sock_state_change.__UNIQUE_ID_ddebug607 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.114, ptr @.str.6, ptr @.str.119, i8 0, i8 98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%.*s %12.12s:%-4d : %s TCP_CLOSE_WAIT\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"libceph: %.*s %12.12s:%-4d : %s TCP_CLOSE_WAIT\0A\00", [48 x i8] zeroinitializer }, align 32
@ceph_sock_state_change.__UNIQUE_ID_ddebug608 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.114, ptr @.str.6, ptr @.str.121, i8 0, i8 100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%.*s %12.12s:%-4d : %s TCP_ESTABLISHED\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"libceph: %.*s %12.12s:%-4d : %s TCP_ESTABLISHED\0A\00", [47 x i8] zeroinitializer }, align 32
@con_sock_state_closing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.6, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: unexpected old state %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"con_sock_state_closing\00", [41 x i8] zeroinitializer }, align 32
@con_sock_state_closing._entry_ptr = internal global ptr @con_sock_state_closing._entry, section ".printk_index", align 4
@con_sock_state_closing.__UNIQUE_ID_ddebug600 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.124, ptr @.str.6, ptr @.str.125, i8 0, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%.*s %12.12s:%-4d : %s con %p sock %d -> %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"libceph: %.*s %12.12s:%-4d : %s con %p sock %d -> %d\0A\00", [42 x i8] zeroinitializer }, align 32
@con_sock_state_connected._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.127, ptr @.str.6, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"con_sock_state_connected\00", [39 x i8] zeroinitializer }, align 32
@con_sock_state_connected._entry_ptr = internal global ptr @con_sock_state_connected._entry, section ".printk_index", align 4
@con_sock_state_connected.__UNIQUE_ID_ddebug599 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.127, ptr @.str.6, ptr @.str.125, i8 0, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@con_sock_state_connecting._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.128, ptr @.str.6, i32 296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"con_sock_state_connecting\00", [38 x i8] zeroinitializer }, align 32
@con_sock_state_connecting._entry_ptr = internal global ptr @con_sock_state_connecting._entry, section ".printk_index", align 4
@con_sock_state_connecting.__UNIQUE_ID_ddebug598 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.128, ptr @.str.6, ptr @.str.125, i8 0, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@con_sock_state_closed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.129, ptr @.str.6, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"con_sock_state_closed\00", [42 x i8] zeroinitializer }, align 32
@con_sock_state_closed._entry_ptr = internal global ptr @con_sock_state_closed._entry, section ".printk_index", align 4
@con_sock_state_closed.__UNIQUE_ID_ddebug601 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.129, ptr @.str.6, ptr @.str.125, i8 0, i8 84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@ceph_con_reset_protocol.__UNIQUE_ID_ddebug612 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.130, ptr @.str.6, ptr @.str.20, i8 0, i8 126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ceph_con_reset_protocol\00", [40 x i8] zeroinitializer }, align 32
@con_sock_state_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.131, ptr @.str.6, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"con_sock_state_init\00", [44 x i8] zeroinitializer }, align 32
@con_sock_state_init._entry_ptr = internal global ptr @con_sock_state_init._entry, section ".printk_index", align 4
@con_sock_state_init.__UNIQUE_ID_ddebug597 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.131, ptr @.str.6, ptr @.str.125, i8 0, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@bvec_iter_advance.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.132 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/bvec.h\00", [43 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Attempted to advance past end of bvec iter\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@ceph_dns_resolve_name._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.6, i32 1240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016libceph: resolve '%.*s' (ret=%d): %s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ceph_dns_resolve_name\00", [42 x i8] zeroinitializer }, align 32
@ceph_dns_resolve_name._entry_ptr = internal global ptr @ceph_dns_resolve_name._entry, section ".printk_index", align 4
@.str.137 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"failed\00", [25 x i8] zeroinitializer }, align 32
@queue_con_delay.__UNIQUE_ID_ddebug681 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.138, ptr @.str.6, ptr @.str.139, i8 1, i8 92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"queue_con_delay\00", [16 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%.*s %12.12s:%-4d : %s %p ref count 0\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"libceph: %.*s %12.12s:%-4d : %s %p ref count 0\0A\00", [48 x i8] zeroinitializer }, align 32
@queue_con_delay.__UNIQUE_ID_ddebug682 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.138, ptr @.str.6, ptr @.str.141, i8 1, i8 94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%.*s %12.12s:%-4d : %s %p %lu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"libceph: %.*s %12.12s:%-4d : %s %p %lu\0A\00", [56 x i8] zeroinitializer }, align 32
@queue_con_delay.__UNIQUE_ID_ddebug683 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.138, ptr @.str.6, ptr @.str.143, i8 1, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.143 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%.*s %12.12s:%-4d : %s %p - already queued\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"libceph: %.*s %12.12s:%-4d : %s %p - already queued\0A\00", [43 x i8] zeroinitializer }, align 32
@cancel_con.__UNIQUE_ID_ddebug684 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.145, ptr @.str.6, ptr @.str.56, i8 1, i8 99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cancel_con\00", [21 x i8] zeroinitializer }, align 32
@ceph_con_workfn.__UNIQUE_ID_ddebug688 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.146, ptr @.str.6, ptr @.str.147, i8 1, i8 121, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.146 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ceph_con_workfn\00", [16 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%.*s %12.12s:%-4d : %s: con %p SOCK_CLOSED\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"libceph: %.*s %12.12s:%-4d : %s: con %p SOCK_CLOSED\0A\00", [43 x i8] zeroinitializer }, align 32
@ceph_con_workfn.__UNIQUE_ID_ddebug689 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.146, ptr @.str.6, ptr @.str.149, i8 1, i8 122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.149 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%.*s %12.12s:%-4d : %s: con %p BACKOFF\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"libceph: %.*s %12.12s:%-4d : %s: con %p BACKOFF\0A\00", [47 x i8] zeroinitializer }, align 32
@ceph_con_workfn.__UNIQUE_ID_ddebug690 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.146, ptr @.str.6, ptr @.str.151, i8 1, i8 123, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.151 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%.*s %12.12s:%-4d : %s: con %p STANDBY\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"libceph: %.*s %12.12s:%-4d : %s: con %p STANDBY\0A\00", [47 x i8] zeroinitializer }, align 32
@ceph_con_workfn.__UNIQUE_ID_ddebug691 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.146, ptr @.str.6, ptr @.str.153, i8 1, i8 124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.153 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%.*s %12.12s:%-4d : %s: con %p CLOSED\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"libceph: %.*s %12.12s:%-4d : %s: con %p CLOSED\0A\00", [48 x i8] zeroinitializer }, align 32
@ceph_con_workfn.__UNIQUE_ID_ddebug692 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.146, ptr @.str.6, ptr @.str.155, i8 1, i8 125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.155 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%.*s %12.12s:%-4d : %s: con %p PREOPEN\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"libceph: %.*s %12.12s:%-4d : %s: con %p PREOPEN\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"socket error on read\00", [43 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"socket error on write\00", [42 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"socket closed (con state CLOSED)\00", [63 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"socket closed (con state PREOPEN)\00", [62 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"socket closed (con state V1_BANNER)\00", [60 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"socket closed (con state V1_CONNECT_MSG)\00", [55 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"socket closed (con state V2_BANNER_PREFIX)\00", [53 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"socket closed (con state V2_BANNER_PAYLOAD)\00", [52 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"socket closed (con state V2_HELLO)\00", [61 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"socket closed (con state V2_AUTH)\00", [62 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"socket closed (con state V2_AUTH_SIGNATURE)\00", [52 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"socket closed (con state V2_SESSION_CONNECT)\00", [51 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"socket closed (con state V2_SESSION_RECONNECT)\00", [49 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"socket closed (con state OPEN)\00", [33 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"socket closed (con state STANDBY)\00", [62 x i8] zeroinitializer }, align 32
@con_backoff.__UNIQUE_ID_ddebug685 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.172, ptr @.str.6, ptr @.str.173, i8 1, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.172 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"con_backoff\00", [20 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%.*s %12.12s:%-4d : %s: con %p FAILED to back off %lu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"libceph: %.*s %12.12s:%-4d : %s: con %p FAILED to back off %lu\0A\00", [32 x i8] zeroinitializer }, align 32
@con_fault.__UNIQUE_ID_ddebug693 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.175, ptr @.str.6, ptr @.str.176, i8 1, i8 -119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.175 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"con_fault\00", [22 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%.*s %12.12s:%-4d : fault %p state %d to peer %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"libceph: %.*s %12.12s:%-4d : fault %p state %d to peer %s\0A\00", [37 x i8] zeroinitializer }, align 32
@con_fault._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.175, ptr @.str.6, i32 1578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\014libceph: %s%lld %s %s\0A\00", [39 x i8] zeroinitializer }, align 32
@con_fault._entry_ptr = internal global ptr @con_fault._entry, section ".printk_index", align 4
@con_fault.__UNIQUE_ID_ddebug694 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.175, ptr @.str.6, ptr @.str.179, i8 1, i8 -116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.179 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%.*s %12.12s:%-4d : fault on LOSSYTX channel, marking CLOSED\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"libceph: %.*s %12.12s:%-4d : fault on LOSSYTX channel, marking CLOSED\0A\00", [57 x i8] zeroinitializer }, align 32
@con_fault.__UNIQUE_ID_ddebug695 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.175, ptr @.str.6, ptr @.str.181, i8 1, i8 -113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.181 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%.*s %12.12s:%-4d : fault %p setting STANDBY clearing WRITE_PENDING\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"libceph: %.*s %12.12s:%-4d : fault %p setting STANDBY clearing WRITE_PENDING\0A\00", [50 x i8] zeroinitializer }, align 32
@con_fault_finish.__UNIQUE_ID_ddebug686 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.183, ptr @.str.6, ptr @.str.56, i8 1, i8 113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.183 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"con_fault_finish\00", [47 x i8] zeroinitializer }, align 32
@con_fault_finish.__UNIQUE_ID_ddebug687 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.183, ptr @.str.6, ptr @.str.184, i8 1, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.184 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%.*s %12.12s:%-4d : auth_retry %d, invalidating\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"libceph: %.*s %12.12s:%-4d : auth_retry %d, invalidating\0A\00", [38 x i8] zeroinitializer }, align 32
@clear_standby.__UNIQUE_ID_ddebug697 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.186, ptr @.str.6, ptr @.str.187, i8 1, i8 -94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.186 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clear_standby\00", [18 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%.*s %12.12s:%-4d : clear_standby %p and ++connect_seq\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"libceph: %.*s %12.12s:%-4d : clear_standby %p and ++connect_seq\0A\00", [63 x i8] zeroinitializer }, align 32
@ceph_alloc_middle.__UNIQUE_ID_ddebug712 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.189, ptr @.str.6, ptr @.str.190, i8 1, i8 -16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.189 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ceph_alloc_middle\00", [46 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%.*s %12.12s:%-4d : alloc_middle %p type %d %s middle_len %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"libceph: %.*s %12.12s:%-4d : alloc_middle %p type %d %s middle_len %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ceph_msg_release.__UNIQUE_ID_ddebug714 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.192, ptr @.str.6, ptr @.str.56, i8 2, i8 15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.192 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ceph_msg_release\00", [47 x i8] zeroinitializer }, align 32
@ceph_msg_free.__UNIQUE_ID_ddebug713 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.193, ptr @.str.6, ptr @.str.56, i8 2, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.193 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ceph_msg_free\00", [18 x i8] zeroinitializer }, align 32
@switch.table.ceph_con_workfn = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.194 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 13]
@__sancov_gen_cov_switch_values.195 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.196 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.197 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.198 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.199 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.200 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.201 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.202 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.203 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.204 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.205 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.206 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 7, i64 8]
@__sancov_gen_cov_switch_values.207 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 13]
@___asan_gen_.208 = private unnamed_addr constant [13 x i8] c"addr_str_seq\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 159, i32 17 }
@___asan_gen_.211 = private unnamed_addr constant [9 x i8] c"addr_str\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 158, i32 13 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 176, i32 33 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 182, i32 33 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 188, i32 33 }
@___asan_gen_.223 = private unnamed_addr constant [15 x i8] c"ceph_zero_page\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 161, i32 14 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 254, i32 33 }
@___asan_gen_.229 = private unnamed_addr constant [13 x i8] c"ceph_msgr_wq\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 208, i32 33 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 258, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 437, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 451, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant [13 x i8] c"socket_class\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 141, i32 30 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 460, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 464, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 484, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 551, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 573, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 597, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 630, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 638, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 641, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 671, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 680, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 696, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1279, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1300, i32 5 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1334, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1373, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1630, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1654, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1698, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1708, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1733, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1740, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1745, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1751, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1759, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1773, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1780, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1788, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1799, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant [15 x i8] c"ceph_msg_cache\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 138, i32 27 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1930, i32 4 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1948, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1955, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1959, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2042, i32 20 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2130, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2139, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2147, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2149, i32 17 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2149, i32 29 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2152, i32 29 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2156, i32 30 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2160, i32 29 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 213, i32 19 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 1160, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 717, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 352, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 372, i32 4 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 377, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 386, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 391, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 394, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 400, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 320, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 321, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 307, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 296, i32 3 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 334, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 505, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 285, i32 3 }
@___asan_gen_.656 = private unnamed_addr constant [24 x i8] c"../include/linux/bvec.h\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 106, i32 6 }
@___asan_gen_.659 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.659, i32 44, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1239, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1395, i32 3 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1402, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1404, i32 3 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1420, i32 3 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1510, i32 4 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1514, i32 4 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1518, i32 4 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1522, i32 4 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1527, i32 4 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1539, i32 22 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1552, i32 22 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1436, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1437, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1438, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1439, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1440, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1441, i32 2 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1442, i32 2 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1443, i32 2 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1444, i32 2 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1445, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1446, i32 2 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1447, i32 2 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1448, i32 2 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1466, i32 3 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1574, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1577, i32 2 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1587, i32 3 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1599, i32 3 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1479, i32 2 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1486, i32 3 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1675, i32 3 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 1985, i32 2 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2108, i32 2 }
@___asan_gen_.841 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.842 = private constant [24 x i8] c"../net/ceph/messenger.c\00", align 1
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.842, i32 2097, i32 2 }
@___asan_gen_.844 = private unnamed_addr constant [29 x i8] c"switch.table.ceph_con_workfn\00", align 1
@llvm.compiler.used = appending global [239 x ptr] [ptr @__ksymtab_ceph_con_close, ptr @__ksymtab_ceph_con_init, ptr @__ksymtab_ceph_con_keepalive, ptr @__ksymtab_ceph_con_open, ptr @__ksymtab_ceph_con_send, ptr @__ksymtab_ceph_msg_data_add_bio, ptr @__ksymtab_ceph_msg_data_add_bvecs, ptr @__ksymtab_ceph_msg_data_add_pagelist, ptr @__ksymtab_ceph_msg_data_add_pages, ptr @__ksymtab_ceph_msg_dump, ptr @__ksymtab_ceph_msg_get, ptr @__ksymtab_ceph_msg_new, ptr @__ksymtab_ceph_msg_new2, ptr @__ksymtab_ceph_msg_put, ptr @__ksymtab_ceph_msgr_flush, ptr @__ksymtab_ceph_pr_addr, ptr @ceph_dns_resolve_name._entry, ptr @ceph_dns_resolve_name._entry_ptr, ptr @ceph_msg_new2._entry, ptr @ceph_msg_new2._entry_ptr, ptr @ceph_msgr_init._entry, ptr @ceph_msgr_init._entry_ptr, ptr @ceph_tcp_connect._entry, ptr @ceph_tcp_connect._entry_ptr, ptr @con_fault._entry, ptr @con_fault._entry_ptr, ptr @con_sock_state_closed._entry, ptr @con_sock_state_closed._entry_ptr, ptr @con_sock_state_closing._entry, ptr @con_sock_state_closing._entry_ptr, ptr @con_sock_state_connected._entry, ptr @con_sock_state_connected._entry_ptr, ptr @con_sock_state_connecting._entry, ptr @con_sock_state_connecting._entry_ptr, ptr @con_sock_state_init._entry, ptr @con_sock_state_init._entry_ptr, ptr @addr_str_seq, ptr @addr_str, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ceph_zero_page, ptr @.str.3, ptr @ceph_msgr_wq, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @socket_class, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @ceph_con_init.__key, ptr @.str.31, ptr @ceph_con_init.__key.32, ptr @.str.33, ptr @ceph_con_init.__key.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @ceph_messenger_init.__key, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @ceph_msg_cache, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @switch.table.ceph_con_workfn], section "llvm.metadata"
@0 = internal global [213 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @addr_str_seq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @addr_str to i32), i32 2048, i32 2560, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_zero_page to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_msgr_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_msgr_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socket_class to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_tcp_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_con_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_con_init.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_con_init.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_messenger_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_msg_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_msg_new2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @con_sock_state_closing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @con_sock_state_connected._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @con_sock_state_connecting._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @con_sock_state_closed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @con_sock_state_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceph_dns_resolve_name._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @con_fault._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ceph_con_workfn to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_con_flag_clear(ptr noundef %con, i32 noundef %con_flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %con_flag)
  %switch.i = icmp ult i32 %con_flag, 5
  br i1 %switch.i, label %do.end6, label %do.body3, !prof !445

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 101, 0\0A.popsection", ""() #15, !srcloc !446
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef %con_flag, ptr noundef %flags) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_con_flag_set(ptr noundef %con, i32 noundef %con_flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %con_flag)
  %switch.i = icmp ult i32 %con_flag, 5
  br i1 %switch.i, label %do.end6, label %do.body3, !prof !445

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 108, 0\0A.popsection", ""() #15, !srcloc !447
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 6
  tail call void @_set_bit(i32 noundef %con_flag, ptr noundef %flags) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ceph_con_flag_test(ptr noundef %con, i32 noundef %con_flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %con_flag)
  %switch.i = icmp ult i32 %con_flag, 5
  br i1 %switch.i, label %do.end6, label %do.body3, !prof !445

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 115, 0\0A.popsection", ""() #15, !srcloc !448
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 6
  %div3.i = lshr i32 %con_flag, 5
  %arrayidx.i = getelementptr i32, ptr %flags, i32 %div3.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %2 = shl nuw nsw i32 1, %con_flag
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool8 = icmp ne i32 %3, 0
  ret i1 %tobool8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ceph_con_flag_test_and_clear(ptr noundef %con, i32 noundef %con_flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %con_flag)
  %switch.i = icmp ult i32 %con_flag, 5
  br i1 %switch.i, label %do.end6, label %do.body3, !prof !445

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 123, 0\0A.popsection", ""() #15, !srcloc !449
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 6
  %call7 = tail call i32 @_test_and_clear_bit(i32 noundef %con_flag, ptr noundef %flags) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8 = icmp ne i32 %call7, 0
  ret i1 %tobool8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ceph_con_flag_test_and_set(ptr noundef %con, i32 noundef %con_flag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %con_flag)
  %switch.i = icmp ult i32 %con_flag, 5
  br i1 %switch.i, label %do.end6, label %do.body3, !prof !445

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 131, 0\0A.popsection", ""() #15, !srcloc !450
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 6
  %call7 = tail call i32 @_test_and_set_bit(i32 noundef %con_flag, ptr noundef %flags) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8 = icmp ne i32 %call7, 0
  ret i1 %tobool8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ceph_pr_addr(ptr nocapture noundef readonly %addr) #0 align 64 {
entry:
  %ss = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ss) #15
  %in_addr = getelementptr inbounds %struct.ceph_entity_addr, ptr %addr, i32 0, i32 2
  %0 = call ptr @memcpy(ptr %ss, ptr %in_addr, i32 128)
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @addr_str_seq, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !451
  tail call void @llvm.prefetch.p0(ptr nonnull @addr_str_seq, i32 1, i32 3, i32 1) #15
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @addr_str_seq, ptr nonnull @addr_str_seq, i32 1, ptr nonnull elementtype(i32) @addr_str_seq) #15, !srcloc !452
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !453
  %and = and i32 %asmresult.i.i.i.i, 31
  %arrayidx = getelementptr [32 x [64 x i8]], ptr @addr_str, i32 0, i32 %and
  %2 = ptrtoint ptr %ss to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ss, align 4
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %sw.default [
    i16 2, label %sw.bb
    i16 10, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %addr, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %ss, i32 0, i32 2
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %ss, i32 0, i32 1
  %8 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sin_port, align 2
  %conv1 = zext i16 %9 to i32
  %call2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx, i32 noundef 64, ptr noundef nonnull @.str, i32 noundef %7, ptr noundef %sin_addr, i32 noundef %conv1)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %addr, align 1
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %ss, i32 0, i32 3
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %ss, i32 0, i32 1
  %13 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %sin6_port, align 2
  %conv5 = zext i16 %14 to i32
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx, i32 noundef 64, ptr noundef nonnull @.str.1, i32 noundef %12, ptr noundef %sin6_addr, i32 noundef %conv5)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %conv = zext i16 %3 to i32
  %call9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %arrayidx, i32 noundef 64, ptr noundef nonnull @.str.2, i32 noundef %conv)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ss) #15
  ret ptr %arrayidx
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ceph_encode_my_addr(ptr nocapture noundef %msgr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %options.i = getelementptr i8, ptr %msgr, i32 -176
  %0 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %options.i, align 8
  %con_modes.i = getelementptr inbounds %struct.ceph_options, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %con_modes.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %con_modes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %my_enc_addr = getelementptr inbounds %struct.ceph_messenger, ptr %msgr, i32 0, i32 1
  %addr = getelementptr inbounds %struct.ceph_entity_inst, ptr %msgr, i32 0, i32 1
  %4 = call ptr @memcpy(ptr %my_enc_addr, ptr %addr, i32 136)
  %5 = ptrtoint ptr %my_enc_addr to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 0, ptr %my_enc_addr, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_msgr_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ceph_msg_cache, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %ceph_msgr_slab_init.exit, label %do.body3.i, !prof !445

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 212, 0\0A.popsection", ""() #15, !srcloc !454
  unreachable

ceph_msgr_slab_init.exit:                         ; preds = %entry
  %call.i = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.103, i32 noundef 172, i32 noundef 4, i32 noundef 0, ptr noundef null) #15
  store ptr %call.i, ptr @ceph_msg_cache, align 4
  %tobool7.not.i.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not.i.not, label %ceph_msgr_slab_init.exit.return_crit_edge, label %do.body

ceph_msgr_slab_init.exit.return_crit_edge:        ; preds = %ceph_msgr_slab_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

do.body:                                          ; preds = %ceph_msgr_slab_init.exit
  %1 = load ptr, ptr @ceph_zero_page, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %do.end9, label %do.body5, !prof !445

do.body5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 246, 0\0A.popsection", ""() #15, !srcloc !455
  unreachable

do.end9:                                          ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @empty_zero_page to i32))
  %2 = load ptr, ptr @empty_zero_page, align 4
  store ptr %2, ptr @ceph_zero_page, align 4
  %3 = getelementptr inbounds %struct.page, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !445

if.then.i.i:                                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %5, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %2 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %6, %if.end.i.i ]
  %7 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #15
  %8 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %9, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !456

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %7, ptr noundef nonnull @.str.104) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #15, !srcloc !457
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #15
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #15, !srcloc !458
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@ceph_msgr_init, %if.then.i.i.i.i)) #15
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !459

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__page_ref_mod(ptr noundef %7, i32 noundef 1) #15
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %call10 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.3, i32 noundef 8, i32 noundef 0) #15
  store ptr %call10, ptr @ceph_msgr_wq, align 4
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end15, label %get_page.exit.return_crit_edge

get_page.exit.return_crit_edge:                   ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

do.end15:                                         ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #18
  tail call fastcc void @_ceph_msgr_exit()
  br label %return

return:                                           ; preds = %do.end15, %get_page.exit.return_crit_edge, %ceph_msgr_slab_init.exit.return_crit_edge
  %retval.0 = phi i32 [ -12, %do.end15 ], [ -12, %ceph_msgr_slab_init.exit.return_crit_edge ], [ 0, %get_page.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_ceph_msgr_exit() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ceph_msgr_wq, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @destroy_workqueue(ptr noundef nonnull %0) #15
  store ptr null, ptr @ceph_msgr_wq, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %1 = load ptr, ptr @ceph_zero_page, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %do.body6, label %do.end10, !prof !456

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 234, 0\0A.popsection", ""() #15, !srcloc !460
  unreachable

do.end10:                                         ; preds = %do.body
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !445

if.then.i.i:                                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  %7 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.i.i.i = icmp eq i32 %8, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !456

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.105) #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #15, !srcloc !461
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !462
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #15
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #15, !srcloc !463
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !464
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@_ceph_msgr_exit, %if.then.i.i.i.i.i)) #15
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !459

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %6, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #15
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__put_page(ptr noundef %6) #15
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  store ptr null, ptr @ceph_zero_page, align 4
  %10 = load ptr, ptr @ceph_msg_cache, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %do.body4.i, label %ceph_msgr_slab_exit.exit, !prof !456

do.body4.i:                                       ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 222, 0\0A.popsection", ""() #15, !srcloc !465
  unreachable

ceph_msgr_slab_exit.exit:                         ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kmem_cache_destroy(ptr noundef nonnull %10) #15
  store ptr null, ptr @ceph_msg_cache, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_msgr_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ceph_msgr_wq, align 4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %do.body2, label %do.end5, !prof !456

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 266, 0\0A.popsection", ""() #15, !srcloc !466
  unreachable

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @_ceph_msgr_exit()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_msgr_flush() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ceph_msgr_wq, align 4
  tail call void @flush_workqueue(ptr noundef %0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_tcp_connect(ptr noundef %con) local_unnamed_addr #0 align 64 {
entry:
  %ss = alloca %struct.__kernel_sockaddr_storage, align 4
  %sock = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ss) #15
  %peer_addr = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 9
  %in_addr = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 9, i32 2
  %0 = call ptr @memcpy(ptr %ss, ptr %in_addr, i32 128)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sock) #15
  %1 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %sock, align 4, !annotation !467
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_tcp_connect.__UNIQUE_ID_ddebug609, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_tcp_connect, %if.then)) #15
          to label %do.body6 [label %if.then], !srcloc !459

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = tail call ptr @ceph_pr_addr(ptr noundef %peer_addr)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_tcp_connect.__UNIQUE_ID_ddebug609, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 438, ptr noundef nonnull @.str.8, ptr noundef %con, ptr noundef %call5) #15
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %sock7 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 5
  %2 = ptrtoint ptr %sock7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sock7, align 4
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %do.end24, label %do.body16, !prof !445

do.body16:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 439, 0\0A.popsection", ""() #15, !srcloc !468
  unreachable

do.end24:                                         ; preds = %do.body6
  %4 = tail call i32 @llvm.read_register.i32(metadata !435) #15
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags1.i, align 4
  %and.i = and i32 %9, 524288
  %or.i = or i32 %9, 524288
  store i32 %or.i, ptr %flags1.i, align 4
  %msgr = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 2
  %10 = ptrtoint ptr %msgr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %msgr, align 8
  %net = getelementptr inbounds %struct.ceph_messenger, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net, align 4
  %14 = ptrtoint ptr %ss to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ss, align 4
  %conv = zext i16 %15 to i32
  %call27 = call i32 @sock_create_kern(ptr noundef %13, i32 noundef %conv, i32 noundef 1, i32 noundef 6, ptr noundef nonnull %sock) #15
  %16 = call i32 @llvm.read_register.i32(metadata !435) #15
  %and.i.i102 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i102 to ptr
  %task.i103 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %task.i103 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %task.i103, align 8
  %flags1.i104 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %flags1.i104 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags1.i104, align 4
  %and.i105 = and i32 %21, -524289
  %or.i106 = or i32 %and.i105, %and.i
  store i32 %or.i106, ptr %flags1.i104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %do.end24.cleanup_crit_edge

do.end24.cleanup_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end30:                                         ; preds = %do.end24
  %22 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sock, align 4
  %sk = getelementptr inbounds %struct.socket, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sk, align 16
  %sk_allocation = getelementptr inbounds %struct.sock, ptr %25, i32 0, i32 41
  %26 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3136, ptr %sk_allocation, align 8
  %27 = load ptr, ptr %sk, align 16
  %dep_map = getelementptr inbounds %struct.sock, ptr %27, i32 0, i32 4, i32 3
  %wait_type_inner = getelementptr inbounds %struct.sock, ptr %27, i32 0, i32 4, i32 3, i32 4
  %28 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %wait_type_inner, align 1
  call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @socket_class, i32 noundef 0, i8 noundef zeroext %29, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %30 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sock, align 4
  %sk1.i = getelementptr inbounds %struct.socket, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sk1.i, align 16
  %sk_user_data.i = getelementptr inbounds %struct.sock, ptr %33, i32 0, i32 72
  %34 = ptrtoint ptr %sk_user_data.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %con, ptr %sk_user_data.i, align 4
  %sk_data_ready.i = getelementptr inbounds %struct.sock, ptr %33, i32 0, i32 77
  %35 = ptrtoint ptr %sk_data_ready.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @ceph_sock_data_ready, ptr %sk_data_ready.i, align 8
  %sk_write_space.i = getelementptr inbounds %struct.sock, ptr %33, i32 0, i32 78
  %36 = ptrtoint ptr %sk_write_space.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ceph_sock_write_space, ptr %sk_write_space.i, align 4
  %sk_state_change.i = getelementptr inbounds %struct.sock, ptr %33, i32 0, i32 76
  %37 = ptrtoint ptr %sk_state_change.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ceph_sock_state_change, ptr %sk_state_change.i, align 4
  call fastcc void @con_sock_state_connecting(ptr noundef %con)
  %38 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sock, align 4
  %ops = getelementptr inbounds %struct.socket, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops, align 4
  %connect = getelementptr inbounds %struct.proto_ops, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %connect to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %connect, align 4
  %call38 = call i32 %43(ptr noundef %39, ptr noundef nonnull %ss, i32 noundef 128, i32 noundef 2048) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call38)
  %cmp = icmp eq i32 %call38, -115
  br i1 %cmp, label %do.body41, label %if.else

do.body41:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_tcp_connect.__UNIQUE_ID_ddebug610, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_tcp_connect, %if.then53)) #15
          to label %if.end73 [label %if.then53], !srcloc !459

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #17
  %call56 = call ptr @ceph_pr_addr(ptr noundef %peer_addr)
  %44 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sock, align 4
  %sk57 = getelementptr inbounds %struct.socket, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %sk57 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sk57, align 16
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load volatile i8, ptr %skc_state, align 2
  %conv58 = zext i8 %49 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_tcp_connect.__UNIQUE_ID_ddebug610, ptr noundef nonnull @.str.14, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 462, ptr noundef %call56, i32 noundef %conv58) #15
  br label %if.end73

if.else:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp62 = icmp slt i32 %call38, 0
  br i1 %cmp62, label %do.end67, label %if.else.if.end73_crit_edge

if.else.if.end73_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73

do.end67:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %call70 = call ptr @ceph_pr_addr(ptr noundef %peer_addr)
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %call70, i32 noundef %call38) #18
  %50 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sock, align 4
  call void @sock_release(ptr noundef %51) #15
  br label %cleanup

if.end73:                                         ; preds = %if.else.if.end73_crit_edge, %if.then53, %do.body41
  %52 = ptrtoint ptr %msgr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %msgr, align 8
  %options = getelementptr i8, ptr %53, i32 -176
  %54 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %options, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %and = and i32 %57, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool76.not = icmp eq i32 %and, 0
  br i1 %tobool76.not, label %if.end73.if.end79_crit_edge, label %if.then77

if.end73.if.end79_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end79

if.then77:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #17
  %58 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sock, align 4
  %sk78 = getelementptr inbounds %struct.socket, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %sk78 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sk78, align 16
  call void @tcp_sock_set_nodelay(ptr noundef %61) #15
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %if.end73.if.end79_crit_edge
  %62 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sock, align 4
  %64 = ptrtoint ptr %sock7 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %sock7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end79, %do.end67, %do.end24.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end79 ], [ %call38, %do.end67 ], [ %call27, %do.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sock) #15
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ss) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_create_kern(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @con_sock_state_connecting(ptr noundef %con) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sock_state = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sock_state, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !469
  tail call void @llvm.prefetch.p0(ptr %sock_state, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 2, ptr %sock_state) #15, !srcloc !470
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !471
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i)
  %cmp.not = icmp eq i32 %asmresult.i.i, 1
  br i1 %cmp.not, label %entry.do.body27_crit_edge, label %do.end, !prof !445

entry.do.body27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body27

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 295, i32 noundef 9, ptr noundef null) #15
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.128, i32 noundef %asmresult.i.i) #18
  br label %do.body27

do.body27:                                        ; preds = %do.end, %entry.do.body27_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @con_sock_state_connecting.__UNIQUE_ID_ddebug598, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@con_sock_state_connecting, %if.then37)) #15
          to label %do.end41 [label %if.then37], !srcloc !459

if.then37:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @con_sock_state_connecting.__UNIQUE_ID_ddebug598, ptr noundef nonnull @.str.126, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 298, ptr noundef nonnull @.str.128, ptr noundef %con, i32 noundef %asmresult.i.i, i32 noundef 2) #15
  br label %do.end41

do.end41:                                         ; preds = %if.then37, %do.body27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcp_sock_set_nodelay(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_con_close_socket(ptr noundef %con) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_close_socket.__UNIQUE_ID_ddebug611, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_close_socket, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !459

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sock = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 5
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sock, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_close_socket.__UNIQUE_ID_ddebug611, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 484, ptr noundef nonnull @.str.16, ptr noundef %con, ptr noundef %1) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sock4 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 5
  %2 = ptrtoint ptr %sock4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sock4, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %do.end.if.end12_crit_edge, label %if.then6

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %ops = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %shutdown = getelementptr inbounds %struct.proto_ops, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shutdown, align 4
  %call9 = tail call i32 %7(ptr noundef nonnull %3, i32 noundef 2) #15
  %8 = ptrtoint ptr %sock4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sock4, align 4
  tail call void @sock_release(ptr noundef %9) #15
  %10 = ptrtoint ptr %sock4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %sock4, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then6, %do.end.if.end12_crit_edge
  %rc.0 = phi i32 [ %call9, %if.then6 ], [ 0, %do.end.if.end12_crit_edge ]
  %flags.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags.i) #15
  tail call fastcc void @con_sock_state_closed(ptr noundef %con)
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @con_sock_state_closed(ptr noundef %con) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sock_state = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sock_state, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !469
  tail call void @llvm.prefetch.p0(ptr %sock_state, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %sock_state) #15, !srcloc !470
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !471
  %1 = add i32 %asmresult.i.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %1)
  %switch.selectcmp = icmp ult i32 %1, -4
  br i1 %switch.selectcmp, label %do.end, label %entry.do.body31_crit_edge, !prof !456

entry.do.body31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body31

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 333, i32 noundef 9, ptr noundef null) #15
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.129, i32 noundef %asmresult.i.i) #18
  br label %do.body31

do.body31:                                        ; preds = %do.end, %entry.do.body31_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @con_sock_state_closed.__UNIQUE_ID_ddebug601, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@con_sock_state_closed, %if.then41)) #15
          to label %do.end45 [label %if.then41], !srcloc !459

if.then41:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @con_sock_state_closed.__UNIQUE_ID_ddebug601, ptr noundef nonnull @.str.126, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 336, ptr noundef nonnull @.str.129, ptr noundef %con, i32 noundef %asmresult.i.i, i32 noundef 1) #15
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %do.body31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_con_reset_session(ptr noundef %con) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_reset_session.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_reset_session, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !459

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_reset_session.__UNIQUE_ID_ddebug613, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 551, ptr noundef nonnull @.str.19, ptr noundef %con) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %in_msg = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 19
  %0 = ptrtoint ptr %in_msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_msg, align 8
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %do.end.if.end25_crit_edge, label %do.end19, !prof !445

do.end.if.end25_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

do.end19:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 553, i32 noundef 9, ptr noundef null) #15
  br label %if.end25

if.end25:                                         ; preds = %do.end19, %do.end.if.end25_crit_edge
  %out_msg = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 20
  %2 = ptrtoint ptr %out_msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %out_msg, align 4
  %tobool34.not = icmp eq ptr %3, null
  br i1 %tobool34.not, label %if.end25.if.end56_crit_edge, label %do.end50, !prof !445

if.end25.if.end56_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end56

do.end50:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 554, i32 noundef 9, ptr noundef null) #15
  br label %if.end56

if.end56:                                         ; preds = %do.end50, %if.end25.if.end56_crit_edge
  %out_queue = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 13
  %4 = ptrtoint ptr %out_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %out_queue, align 4
  %cmp.i.not2.i = icmp eq ptr %5, %out_queue
  br i1 %cmp.i.not2.i, label %if.end56.ceph_msg_remove_list.exit_crit_edge, label %if.end56.while.body.i_crit_edge

if.end56.while.body.i_crit_edge:                  ; preds = %if.end56
  br label %while.body.i

if.end56.ceph_msg_remove_list.exit_crit_edge:     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_msg_remove_list.exit

while.body.i:                                     ; preds = %ceph_msg_remove.exit.i.while.body.i_crit_edge, %if.end56.while.body.i_crit_edge
  %6 = phi ptr [ %16, %ceph_msg_remove.exit.i.while.body.i_crit_edge ], [ %5, %if.end56.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %6, i32 -148
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #15
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %while.body.i.ceph_msg_remove.exit.i_crit_edge

while.body.i.ceph_msg_remove.exit.i_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_msg_remove.exit.i

if.end.i.i.i.i:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i.i = getelementptr i8, ptr %6, i32 4
  %7 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %ceph_msg_remove.exit.i

ceph_msg_remove.exit.i:                           ; preds = %if.end.i.i.i.i, %while.body.i.ceph_msg_remove.exit.i_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %6, ptr %6, align 4
  %prev.i3.i.i.i = getelementptr i8, ptr %6, i32 4
  %14 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %6, ptr %prev.i3.i.i.i, align 4
  tail call void @ceph_msg_put(ptr noundef %add.ptr.i) #15
  %15 = ptrtoint ptr %out_queue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %out_queue, align 4
  %cmp.i.not.i = icmp eq ptr %16, %out_queue
  br i1 %cmp.i.not.i, label %ceph_msg_remove.exit.i.ceph_msg_remove_list.exit_crit_edge, label %ceph_msg_remove.exit.i.while.body.i_crit_edge

ceph_msg_remove.exit.i.while.body.i_crit_edge:    ; preds = %ceph_msg_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

ceph_msg_remove.exit.i.ceph_msg_remove_list.exit_crit_edge: ; preds = %ceph_msg_remove.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_msg_remove_list.exit

ceph_msg_remove_list.exit:                        ; preds = %ceph_msg_remove.exit.i.ceph_msg_remove_list.exit_crit_edge, %if.end56.ceph_msg_remove_list.exit_crit_edge
  %out_sent = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 14
  %17 = ptrtoint ptr %out_sent to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %out_sent, align 4
  %cmp.i.not2.i80 = icmp eq ptr %18, %out_sent
  br i1 %cmp.i.not2.i80, label %ceph_msg_remove_list.exit.ceph_msg_remove_list.exit90_crit_edge, label %ceph_msg_remove_list.exit.while.body.i83_crit_edge

ceph_msg_remove_list.exit.while.body.i83_crit_edge: ; preds = %ceph_msg_remove_list.exit
  br label %while.body.i83

ceph_msg_remove_list.exit.ceph_msg_remove_list.exit90_crit_edge: ; preds = %ceph_msg_remove_list.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_msg_remove_list.exit90

while.body.i83:                                   ; preds = %ceph_msg_remove.exit.i89.while.body.i83_crit_edge, %ceph_msg_remove_list.exit.while.body.i83_crit_edge
  %19 = phi ptr [ %29, %ceph_msg_remove.exit.i89.while.body.i83_crit_edge ], [ %18, %ceph_msg_remove_list.exit.while.body.i83_crit_edge ]
  %add.ptr.i81 = getelementptr i8, ptr %19, i32 -148
  %call.i.i.i.i82 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %19) #15
  br i1 %call.i.i.i.i82, label %if.end.i.i.i.i86, label %while.body.i83.ceph_msg_remove.exit.i89_crit_edge

while.body.i83.ceph_msg_remove.exit.i89_crit_edge: ; preds = %while.body.i83
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_msg_remove.exit.i89

if.end.i.i.i.i86:                                 ; preds = %while.body.i83
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i.i84 = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %prev.i.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i.i84, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %prev1.i.i.i.i.i85 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i.i85, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %ceph_msg_remove.exit.i89

ceph_msg_remove.exit.i89:                         ; preds = %if.end.i.i.i.i86, %while.body.i83.ceph_msg_remove.exit.i89_crit_edge
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %19, ptr %19, align 4
  %prev.i3.i.i.i87 = getelementptr i8, ptr %19, i32 4
  %27 = ptrtoint ptr %prev.i3.i.i.i87 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %19, ptr %prev.i3.i.i.i87, align 4
  tail call void @ceph_msg_put(ptr noundef %add.ptr.i81) #15
  %28 = ptrtoint ptr %out_sent to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %out_sent, align 4
  %cmp.i.not.i88 = icmp eq ptr %29, %out_sent
  br i1 %cmp.i.not.i88, label %ceph_msg_remove.exit.i89.ceph_msg_remove_list.exit90_crit_edge, label %ceph_msg_remove.exit.i89.while.body.i83_crit_edge

ceph_msg_remove.exit.i89.while.body.i83_crit_edge: ; preds = %ceph_msg_remove.exit.i89
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i83

ceph_msg_remove.exit.i89.ceph_msg_remove_list.exit90_crit_edge: ; preds = %ceph_msg_remove.exit.i89
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_msg_remove_list.exit90

ceph_msg_remove_list.exit90:                      ; preds = %ceph_msg_remove.exit.i89.ceph_msg_remove_list.exit90_crit_edge, %ceph_msg_remove_list.exit.ceph_msg_remove_list.exit90_crit_edge
  %out_seq = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 16
  %msgr = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 2
  %30 = call ptr @memset(ptr %out_seq, i32 0, i32 24)
  %31 = ptrtoint ptr %msgr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %msgr, align 8
  %options.i = getelementptr i8, ptr %32, i32 -176
  %33 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %options.i, align 8
  %con_modes.i = getelementptr inbounds %struct.ceph_options, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %con_modes.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %con_modes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i.not = icmp eq i32 %36, 0
  br i1 %cmp.i.not, label %if.else, label %if.then66

if.then66:                                        ; preds = %ceph_msg_remove_list.exit90
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @ceph_con_v2_reset_session(ptr noundef %con) #15
  br label %if.end67

if.else:                                          ; preds = %ceph_msg_remove_list.exit90
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @ceph_con_v1_reset_session(ptr noundef %con) #15
  br label %if.end67

if.end67:                                         ; preds = %if.else, %if.then66
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_con_v2_reset_session(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_con_v1_reset_session(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_con_close(ptr noundef %con) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_close.__UNIQUE_ID_ddebug614, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_close, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !459

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %peer_addr = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 9
  %call4 = tail call ptr @ceph_pr_addr(ptr noundef %peer_addr)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_close.__UNIQUE_ID_ddebug614, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 573, ptr noundef %con, ptr noundef %call4) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %state, align 4
  %flags.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #15
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags.i) #15
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags.i) #15
  tail call void @_clear_bit(i32 noundef 4, ptr noundef %flags.i) #15
  tail call fastcc void @ceph_con_reset_protocol(ptr noundef %con)
  tail call void @ceph_con_reset_session(ptr noundef %con)
  %work.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 26
  %call.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %work.i) #15
  br i1 %call.i, label %do.body.i, label %do.end.cancel_con.exit_crit_edge

do.end.cancel_con.exit_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cancel_con.exit

do.body.i:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cancel_con.__UNIQUE_ID_ddebug684, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_close, %if.then4.i)) #15
          to label %do.end.i [label %if.then4.i], !srcloc !459

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cancel_con.__UNIQUE_ID_ddebug684, ptr noundef nonnull @.str.57, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1420, ptr noundef nonnull @.str.145, ptr noundef %con) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then4.i, %do.body.i
  %ops.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 1
  %1 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i, align 4
  %put.i = getelementptr inbounds %struct.ceph_connection_operations, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %put.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %put.i, align 4
  tail call void %4(ptr noundef %con) #15
  br label %cancel_con.exit

cancel_con.exit:                                  ; preds = %do.end.i, %do.end.cancel_con.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ceph_con_reset_protocol(ptr noundef %con) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_reset_protocol.__UNIQUE_ID_ddebug612, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_reset_protocol, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !459

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_reset_protocol.__UNIQUE_ID_ddebug612, ptr noundef nonnull @.str.21, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 505, ptr noundef nonnull @.str.130, ptr noundef %con) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_close_socket.__UNIQUE_ID_ddebug611, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_reset_protocol, %if.then.i)) #15
          to label %do.end.i [label %if.then.i], !srcloc !459

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %sock.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 5
  %0 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sock.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_close_socket.__UNIQUE_ID_ddebug611, ptr noundef nonnull @.str.18, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 484, ptr noundef nonnull @.str.16, ptr noundef %con, ptr noundef %1) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %sock4.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 5
  %2 = ptrtoint ptr %sock4.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sock4.i, align 4
  %tobool5.not.i = icmp eq ptr %3, null
  br i1 %tobool5.not.i, label %do.end.i.ceph_con_close_socket.exit_crit_edge, label %if.then6.i

do.end.i.ceph_con_close_socket.exit_crit_edge:    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_con_close_socket.exit

if.then6.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %ops.i = getelementptr inbounds %struct.socket, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %shutdown.i = getelementptr inbounds %struct.proto_ops, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shutdown.i, align 4
  %call9.i = tail call i32 %7(ptr noundef nonnull %3, i32 noundef 2) #15
  %8 = ptrtoint ptr %sock4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sock4.i, align 4
  tail call void @sock_release(ptr noundef %9) #15
  %10 = ptrtoint ptr %sock4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %sock4.i, align 4
  br label %ceph_con_close_socket.exit

ceph_con_close_socket.exit:                       ; preds = %if.then6.i, %do.end.i.ceph_con_close_socket.exit_crit_edge
  %flags.i.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %flags.i.i) #15
  tail call fastcc void @con_sock_state_closed(ptr noundef %con) #15
  %in_msg = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 19
  %11 = ptrtoint ptr %in_msg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %in_msg, align 8
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %ceph_con_close_socket.exit.if.end39_crit_edge, label %if.then6

ceph_con_close_socket.exit.if.end39_crit_edge:    ; preds = %ceph_con_close_socket.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

if.then6:                                         ; preds = %ceph_con_close_socket.exit
  %con8 = getelementptr inbounds %struct.ceph_msg, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %con8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %con8, align 4
  %cmp.not = icmp eq ptr %14, %con
  br i1 %cmp.not, label %if.then6.if.end29_crit_edge, label %do.end23, !prof !445

if.then6.if.end29_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29

do.end23:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 509, i32 noundef 9, ptr noundef null) #15
  br label %if.end29

if.end29:                                         ; preds = %do.end23, %if.then6.if.end29_crit_edge
  %15 = ptrtoint ptr %in_msg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %in_msg, align 8
  tail call void @ceph_msg_put(ptr noundef %16)
  %17 = ptrtoint ptr %in_msg to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %in_msg, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.end29, %ceph_con_close_socket.exit.if.end39_crit_edge
  %out_msg = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 20
  %18 = ptrtoint ptr %out_msg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %out_msg, align 4
  %tobool40.not = icmp eq ptr %19, null
  br i1 %tobool40.not, label %if.end39.if.end77_crit_edge, label %if.then41

if.end39.if.end77_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end77

if.then41:                                        ; preds = %if.end39
  %con44 = getelementptr inbounds %struct.ceph_msg, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %con44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %con44, align 4
  %cmp45.not = icmp eq ptr %21, %con
  br i1 %cmp45.not, label %if.then41.if.end67_crit_edge, label %do.end61, !prof !445

if.then41.if.end67_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end67

do.end61:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 514, i32 noundef 9, ptr noundef null) #15
  br label %if.end67

if.end67:                                         ; preds = %do.end61, %if.then41.if.end67_crit_edge
  %22 = ptrtoint ptr %out_msg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %out_msg, align 4
  tail call void @ceph_msg_put(ptr noundef %23)
  %24 = ptrtoint ptr %out_msg to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %out_msg, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.end67, %if.end39.if.end77_crit_edge
  %bounce_page = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 21
  %25 = ptrtoint ptr %bounce_page to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bounce_page, align 8
  %tobool78.not = icmp eq ptr %26, null
  br i1 %tobool78.not, label %if.end77.if.end82_crit_edge, label %if.then79

if.end77.if.end82_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end82

if.then79:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__free_pages(ptr noundef nonnull %26, i32 noundef 0) #15
  %27 = ptrtoint ptr %bounce_page to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %bounce_page, align 8
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.end77.if.end82_crit_edge
  %msgr = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 2
  %28 = ptrtoint ptr %msgr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %msgr, align 8
  %options.i = getelementptr i8, ptr %29, i32 -176
  %30 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %options.i, align 8
  %con_modes.i = getelementptr inbounds %struct.ceph_options, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %con_modes.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %con_modes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i.not = icmp eq i32 %33, 0
  br i1 %cmp.i.not, label %if.else, label %if.then85

if.then85:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @ceph_con_v2_reset_protocol(ptr noundef %con) #15
  br label %if.end86

if.else:                                          ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @ceph_con_v1_reset_protocol(ptr noundef %con) #15
  br label %if.end86

if.end86:                                         ; preds = %if.else, %if.then85
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_con_open(ptr noundef %con, i8 noundef zeroext %entity_type, i64 noundef %entity_num, ptr nocapture noundef readonly %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_open.__UNIQUE_ID_ddebug615, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_open, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !459

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call4 = tail call ptr @ceph_pr_addr(ptr noundef %addr)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_open.__UNIQUE_ID_ddebug615, ptr noundef nonnull @.str.27, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 597, ptr noundef %con, ptr noundef %call4) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %do.end.if.end25_crit_edge, label %do.end19, !prof !445

do.end.if.end25_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

do.end19:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 599, i32 noundef 9, ptr noundef null) #15
  br label %if.end25

if.end25:                                         ; preds = %do.end19, %do.end.if.end25_crit_edge
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %state, align 4
  %peer_name = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 8
  %3 = ptrtoint ptr %peer_name to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %entity_type, ptr %peer_name, align 8
  %4 = tail call i64 @llvm.bswap.i64(i64 %entity_num)
  %num = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %num to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 %4, ptr %num, align 1
  %peer_addr = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 9
  %6 = call ptr @memcpy(ptr %peer_addr, ptr %addr, i32 136)
  %delay = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 27
  %7 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %delay, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  %call.i = tail call fastcc i32 @queue_con_delay(ptr noundef %con, i32 noundef 0) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ceph_con_opened(ptr noundef %con) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %msgr = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 2
  %0 = ptrtoint ptr %msgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msgr, align 8
  %options.i = getelementptr i8, ptr %1, i32 -176
  %2 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %options.i, align 8
  %con_modes.i = getelementptr inbounds %struct.ceph_options, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %con_modes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %con_modes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 0
  br i1 %cmp.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1 = tail call zeroext i1 @ceph_con_v2_opened(ptr noundef %con) #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call zeroext i1 @ceph_con_v1_opened(ptr noundef %con) #15
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i1 [ %call1, %if.then ], [ %call2, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ceph_con_v2_opened(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ceph_con_v1_opened(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_con_init(ptr noundef %con, ptr noundef %private, ptr noundef %ops, ptr noundef %msgr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_init.__UNIQUE_ID_ddebug616, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_init, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !459

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_init.__UNIQUE_ID_ddebug616, ptr noundef nonnull @.str.30, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 630, ptr noundef %con) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = getelementptr inbounds i8, ptr %con, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 1376)
  %2 = ptrtoint ptr %con to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %private, ptr %con, align 8
  %ops5 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 1
  %3 = ptrtoint ptr %ops5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ops, ptr %ops5, align 4
  %msgr6 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 2
  %4 = ptrtoint ptr %msgr6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %msgr, ptr %msgr6, align 8
  tail call fastcc void @con_sock_state_init(ptr noundef %con)
  %mutex = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.31, ptr noundef nonnull @ceph_con_init.__key) #15
  %out_queue = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 13
  %5 = ptrtoint ptr %out_queue to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %out_queue, ptr %out_queue, align 4
  %prev.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %out_queue, ptr %prev.i, align 4
  %out_sent = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 14
  %7 = ptrtoint ptr %out_sent to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %out_sent, ptr %out_sent, align 4
  %prev.i41 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 14, i32 1
  %8 = ptrtoint ptr %prev.i41 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %out_sent, ptr %prev.i41, align 4
  %work = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 26
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #15
  %9 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 26, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.33, ptr noundef nonnull @ceph_con_init.__key.32, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry18 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 26, i32 0, i32 1
  %10 = ptrtoint ptr %entry18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry18, ptr %entry18, align 4
  %prev.i42 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 26, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i42 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry18, ptr %prev.i42, align 4
  %func = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 26, i32 0, i32 2
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ceph_con_workfn, ptr %func, align 4
  %timer = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 26, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.35, ptr noundef nonnull @ceph_con_init.__key.34) #15
  %state = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 3
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %state, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @con_sock_state_init(ptr noundef %con) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sock_state = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sock_state, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !469
  tail call void @llvm.prefetch.p0(ptr %sock_state, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %sock_state) #15, !srcloc !470
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !471
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.not = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.not, label %entry.do.body27_crit_edge, label %do.end, !prof !445

entry.do.body27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body27

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 284, i32 noundef 9, ptr noundef null) #15
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.131, i32 noundef %asmresult.i.i) #18
  br label %do.body27

do.body27:                                        ; preds = %do.end, %entry.do.body27_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @con_sock_state_init.__UNIQUE_ID_ddebug597, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@con_sock_state_init, %if.then37)) #15
          to label %do.end41 [label %if.then37], !srcloc !459

if.then37:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @con_sock_state_init.__UNIQUE_ID_ddebug597, ptr noundef nonnull @.str.126, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 287, ptr noundef nonnull @.str.131, ptr noundef %con, i32 noundef %asmresult.i.i, i32 noundef 1) #15
  br label %do.end41

do.end41:                                         ; preds = %if.then37, %do.body27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceph_con_workfn(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -368
  %mutex = getelementptr i8, ptr %work, i32 -176
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #15
  %flags.i.i = getelementptr i8, ptr %work, i32 -344
  %call7.i.i260 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i260)
  %tobool8.i.i.not261 = icmp eq i32 %call7.i.i260, 0
  br i1 %tobool8.i.i.not261, label %if.end8.lr.ph, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end8.lr.ph:                                    ; preds = %entry
  %state = getelementptr i8, ptr %work, i32 -356
  %sock108 = getelementptr i8, ptr %work, i32 -348
  %msgr = getelementptr i8, ptr %work, i32 -360
  br label %if.end8

if.end.i:                                         ; preds = %cleanup.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %state.i = getelementptr i8, ptr %work, i32 -356
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 4
  %switch.tableidx = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 13
  br i1 %2, label %switch.lookup, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1450, 0\0A.popsection", ""() #15, !srcloc !472
  unreachable

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [13 x ptr], ptr @switch.table.ceph_con_workfn, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %error_msg.i = getelementptr i8, ptr %work, i32 -340
  %4 = ptrtoint ptr %error_msg.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %switch.load, ptr %error_msg.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_workfn.__UNIQUE_ID_ddebug688, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_workfn, %if.then6)) #15
          to label %if.then167 [label %if.then6], !srcloc !459

if.then6:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_workfn.__UNIQUE_ID_ddebug688, ptr noundef nonnull @.str.148, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1510, ptr noundef nonnull @.str.146, ptr noundef %add.ptr) #15
  br label %if.then167

if.end8:                                          ; preds = %cleanup.if.end8_crit_edge, %if.end8.lr.ph
  %call7.i.i224 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %flags.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i224)
  %tobool8.i.i225.not = icmp eq i32 %call7.i.i224, 0
  br i1 %tobool8.i.i225.not, label %if.end28, label %if.end.i226

if.end.i226:                                      ; preds = %if.end8
  %delay.i = getelementptr i8, ptr %work, i32 100
  %5 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %delay.i, align 4
  %call1.i = tail call fastcc i32 @queue_con_delay(ptr noundef %add.ptr, i32 noundef %6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i226.do.body11_crit_edge, label %do.body.i227

if.end.i226.do.body11_crit_edge:                  ; preds = %if.end.i226
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body11

do.body.i227:                                     ; preds = %if.end.i226
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @con_backoff.__UNIQUE_ID_ddebug685, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_workfn, %if.then7.i)) #15
          to label %do.body11.i [label %if.then7.i], !srcloc !459

if.then7.i:                                       ; preds = %do.body.i227
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %delay.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @con_backoff.__UNIQUE_ID_ddebug685, ptr noundef nonnull @.str.174, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1467, ptr noundef nonnull @.str.172, ptr noundef %add.ptr, i32 noundef %8) #15
  br label %do.body11.i

do.body11.i:                                      ; preds = %if.then7.i, %do.body.i227
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, -2
  br i1 %cmp.i, label %do.body19.i, label %do.end27.i, !prof !456

do.body19.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1468, 0\0A.popsection", ""() #15, !srcloc !473
  unreachable

do.end27.i:                                       ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags.i.i) #15
  br label %do.body11

do.body11:                                        ; preds = %do.end27.i, %if.end.i226.do.body11_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_workfn.__UNIQUE_ID_ddebug689, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_workfn, %if.then23)) #15
          to label %if.end172.critedge [label %if.then23], !srcloc !459

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_workfn.__UNIQUE_ID_ddebug689, ptr noundef nonnull @.str.150, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1514, ptr noundef nonnull @.str.146, ptr noundef %add.ptr) #15
  br label %if.end172.critedge

if.end28:                                         ; preds = %if.end8
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %10, label %if.end28.if.end126_crit_edge [
    i32 13, label %do.body30
    i32 1, label %do.body51
    i32 2, label %do.body90
  ]

if.end28.if.end126_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end126

do.body30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_workfn.__UNIQUE_ID_ddebug690, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_workfn, %if.then42)) #15
          to label %if.end172.critedge [label %if.then42], !srcloc !459

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_workfn.__UNIQUE_ID_ddebug690, ptr noundef nonnull @.str.152, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1518, ptr noundef nonnull @.str.146, ptr noundef %add.ptr) #15
  br label %if.end172.critedge

do.body51:                                        ; preds = %if.end28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_workfn.__UNIQUE_ID_ddebug691, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_workfn, %if.then63)) #15
          to label %do.body68 [label %if.then63], !srcloc !459

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_workfn.__UNIQUE_ID_ddebug691, ptr noundef nonnull @.str.154, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1522, ptr noundef nonnull @.str.146, ptr noundef %add.ptr) #15
  br label %do.body68

do.body68:                                        ; preds = %if.then63, %do.body51
  %12 = ptrtoint ptr %sock108 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sock108, align 4
  %tobool69.not = icmp eq ptr %13, null
  br i1 %tobool69.not, label %do.body68.if.end172.critedge_crit_edge, label %do.body77, !prof !445

do.body68.if.end172.critedge_crit_edge:           ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end172.critedge

do.body77:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1523, 0\0A.popsection", ""() #15, !srcloc !474
  unreachable

do.body90:                                        ; preds = %if.end28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_workfn.__UNIQUE_ID_ddebug692, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_workfn, %if.then102)) #15
          to label %do.body107 [label %if.then102], !srcloc !459

if.then102:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_workfn.__UNIQUE_ID_ddebug692, ptr noundef nonnull @.str.156, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1527, ptr noundef nonnull @.str.146, ptr noundef %add.ptr) #15
  br label %do.body107

do.body107:                                       ; preds = %if.then102, %do.body90
  %14 = ptrtoint ptr %sock108 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sock108, align 4
  %tobool109.not = icmp eq ptr %15, null
  br i1 %tobool109.not, label %do.body107.if.end126_crit_edge, label %do.body117, !prof !445

do.body107.if.end126_crit_edge:                   ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end126

do.body117:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1528, 0\0A.popsection", ""() #15, !srcloc !475
  unreachable

if.end126:                                        ; preds = %do.body107.if.end126_crit_edge, %if.end28.if.end126_crit_edge
  %16 = ptrtoint ptr %msgr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %msgr, align 8
  %options.i = getelementptr i8, ptr %17, i32 -176
  %18 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %options.i, align 8
  %con_modes.i = getelementptr inbounds %struct.ceph_options, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %con_modes.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %con_modes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i228.not = icmp eq i32 %21, 0
  br i1 %cmp.i228.not, label %if.else, label %if.then131

if.then131:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #17
  %call132 = tail call i32 @ceph_con_v2_try_read(ptr noundef %add.ptr) #15
  br label %if.end134

if.else:                                          ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #17
  %call133 = tail call i32 @ceph_con_v1_try_read(ptr noundef %add.ptr) #15
  br label %if.end134

if.end134:                                        ; preds = %if.else, %if.then131
  %ret.0 = phi i32 [ %call132, %if.then131 ], [ %call133, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp135 = icmp slt i32 %ret.0, 0
  br i1 %cmp135, label %if.then136, label %if.end144

if.then136:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %ret.0)
  %cmp137 = icmp eq i32 %ret.0, -11
  br i1 %cmp137, label %if.then136.cleanup_crit_edge, label %if.end139

if.then136.cleanup_crit_edge:                     ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end139:                                        ; preds = %if.then136
  %error_msg = getelementptr i8, ptr %work, i32 -340
  %22 = ptrtoint ptr %error_msg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %error_msg, align 4
  %tobool140.not = icmp eq ptr %23, null
  br i1 %tobool140.not, label %if.then141, label %if.end139.if.then167_crit_edge

if.end139.if.then167_crit_edge:                   ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then167

if.then141:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %error_msg to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.157, ptr %error_msg, align 4
  br label %if.then167

if.end144:                                        ; preds = %if.end134
  %25 = ptrtoint ptr %msgr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %msgr, align 8
  %options.i229 = getelementptr i8, ptr %26, i32 -176
  %27 = ptrtoint ptr %options.i229 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %options.i229, align 8
  %con_modes.i230 = getelementptr inbounds %struct.ceph_options, ptr %28, i32 0, i32 8
  %29 = ptrtoint ptr %con_modes.i230 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %con_modes.i230, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i231.not = icmp eq i32 %30, 0
  br i1 %cmp.i231.not, label %if.else152, label %if.then150

if.then150:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #17
  %call151 = tail call i32 @ceph_con_v2_try_write(ptr noundef %add.ptr) #15
  br label %if.end154

if.else152:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #17
  %call153 = tail call i32 @ceph_con_v1_try_write(ptr noundef %add.ptr) #15
  br label %if.end154

if.end154:                                        ; preds = %if.else152, %if.then150
  %ret.1 = phi i32 [ %call151, %if.then150 ], [ %call153, %if.else152 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp155 = icmp slt i32 %ret.1, 0
  br i1 %cmp155, label %if.then156, label %if.end154.if.end172.critedge_crit_edge

if.end154.if.end172.critedge_crit_edge:           ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end172.critedge

if.then156:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %ret.1)
  %cmp157 = icmp eq i32 %ret.1, -11
  br i1 %cmp157, label %if.then156.cleanup_crit_edge, label %if.end159

if.then156.cleanup_crit_edge:                     ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end159:                                        ; preds = %if.then156
  %error_msg160 = getelementptr i8, ptr %work, i32 -340
  %31 = ptrtoint ptr %error_msg160 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %error_msg160, align 4
  %tobool161.not = icmp eq ptr %32, null
  br i1 %tobool161.not, label %if.then162, label %if.end159.if.then167_crit_edge

if.end159.if.then167_crit_edge:                   ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then167

if.then162:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %error_msg160 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.158, ptr %error_msg160, align 4
  br label %if.then167

cleanup:                                          ; preds = %if.then156.cleanup_crit_edge, %if.then136.cleanup_crit_edge
  %call7.i.i = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags.i.i) #15
  %tobool8.i.i.not = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.i.i.not, label %cleanup.if.end8_crit_edge, label %cleanup.if.end.i_crit_edge

cleanup.if.end.i_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

cleanup.if.end8_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then167:                                       ; preds = %if.then162, %if.end159.if.then167_crit_edge, %if.then141, %if.end139.if.then167_crit_edge, %if.then6, %switch.lookup
  tail call fastcc void @con_fault(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @con_fault_finish.__UNIQUE_ID_ddebug686, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_workfn, %if.then.i)) #15
          to label %do.end.i [label %if.then.i], !srcloc !459

if.then.i:                                        ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @con_fault_finish.__UNIQUE_ID_ddebug686, ptr noundef nonnull @.str.57, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1479, ptr noundef nonnull @.str.183, ptr noundef %add.ptr) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then167
  %auth_retry.i = getelementptr i8, ptr %work, i32 192
  %34 = ptrtoint ptr %auth_retry.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %auth_retry.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool4.not.i = icmp eq i32 %35, 0
  br i1 %tobool4.not.i, label %do.end.i.if.end30.i_crit_edge, label %do.body6.i

do.end.i.if.end30.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30.i

do.body6.i:                                       ; preds = %do.end.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @con_fault_finish.__UNIQUE_ID_ddebug687, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_workfn, %if.then18.i)) #15
          to label %do.end22.i [label %if.then18.i], !srcloc !459

if.then18.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %auth_retry.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %auth_retry.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @con_fault_finish.__UNIQUE_ID_ddebug687, ptr noundef nonnull @.str.185, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1486, i32 noundef %37) #15
  br label %do.end22.i

do.end22.i:                                       ; preds = %if.then18.i, %do.body6.i
  %ops.i = getelementptr i8, ptr %work, i32 -364
  %38 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i, align 4
  %invalidate_authorizer.i = getelementptr inbounds %struct.ceph_connection_operations, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %invalidate_authorizer.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %invalidate_authorizer.i, align 4
  %tobool23.not.i = icmp eq ptr %41, null
  br i1 %tobool23.not.i, label %do.end22.i.if.end28.i_crit_edge, label %if.then24.i

do.end22.i.if.end28.i_crit_edge:                  ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28.i

if.then24.i:                                      ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  %call27.i = tail call i32 %41(ptr noundef %add.ptr) #15
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then24.i, %do.end22.i.if.end28.i_crit_edge
  %42 = ptrtoint ptr %auth_retry.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %auth_retry.i, align 8
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end28.i, %do.end.i.if.end30.i_crit_edge
  %ops31.i = getelementptr i8, ptr %work, i32 -364
  %43 = ptrtoint ptr %ops31.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops31.i, align 4
  %fault.i = getelementptr inbounds %struct.ceph_connection_operations, ptr %44, i32 0, i32 7
  %45 = ptrtoint ptr %fault.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fault.i, align 4
  %tobool32.not.i = icmp eq ptr %46, null
  br i1 %tobool32.not.i, label %if.end30.i.if.end172_crit_edge, label %if.then33.i

if.end30.i.if.end172_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end172

if.then33.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %46(ptr noundef %add.ptr) #15
  br label %if.end172

if.end172.critedge:                               ; preds = %if.end154.if.end172.critedge_crit_edge, %do.body68.if.end172.critedge_crit_edge, %if.then42, %do.body30, %if.then23, %do.body11
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  br label %if.end172

if.end172:                                        ; preds = %if.end172.critedge, %if.then33.i, %if.end30.i.if.end172_crit_edge
  %ops = getelementptr i8, ptr %work, i32 -364
  %47 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops, align 4
  %put = getelementptr inbounds %struct.ceph_connection_operations, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %put to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %put, align 4
  tail call void %50(ptr noundef %add.ptr) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_get_global_seq(ptr noundef %msgr, i32 noundef %gt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %global_seq_lock = getelementptr inbounds %struct.ceph_messenger, ptr %msgr, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %global_seq_lock) #15
  %global_seq = getelementptr inbounds %struct.ceph_messenger, ptr %msgr, i32 0, i32 5
  %0 = ptrtoint ptr %global_seq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %global_seq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %gt)
  %cmp = icmp ult i32 %1, %gt
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %global_seq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %gt, ptr %global_seq, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %global_seq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %global_seq, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %global_seq, align 4
  tail call void @_raw_spin_unlock(ptr noundef %global_seq_lock) #15
  ret i32 %inc
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_con_discard_sent(ptr noundef %con, i64 noundef %ack_seq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_discard_sent.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_discard_sent, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !459

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_discard_sent.__UNIQUE_ID_ddebug617, ptr noundef nonnull @.str.38, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 671, ptr noundef nonnull @.str.36, ptr noundef %con, i64 noundef %ack_seq) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %out_sent = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 14
  %0 = ptrtoint ptr %out_sent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %out_sent, align 4
  %cmp.i.not74 = icmp eq ptr %1, %out_sent
  br i1 %cmp.i.not74, label %do.end.while.end_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %ceph_msg_remove.exit.while.body_crit_edge, %do.end.while.body_crit_edge
  %2 = phi ptr [ %17, %ceph_msg_remove.exit.while.body_crit_edge ], [ %1, %do.end.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -148
  %needs_out_seq = getelementptr i8, ptr %2, i32 13
  %3 = ptrtoint ptr %needs_out_seq to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %needs_out_seq, align 1, !range !476
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool10.not = icmp eq i8 %4, 0
  br i1 %tobool10.not, label %while.body.if.end32_crit_edge, label %do.end26, !prof !445

while.body.if.end32_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

do.end26:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 675, i32 noundef 9, ptr noundef null) #15
  br label %if.end32

if.end32:                                         ; preds = %do.end26, %while.body.if.end32_crit_edge
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %add.ptr, align 4
  %7 = tail call i64 @llvm.bswap.i64(i64 %6)
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %ack_seq)
  %cmp = icmp ugt i64 %7, %ack_seq
  br i1 %cmp, label %if.end32.while.end_crit_edge, label %do.body43

if.end32.while.end_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

do.body43:                                        ; preds = %if.end32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_discard_sent.__UNIQUE_ID_ddebug618, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_discard_sent, %if.then55)) #15
          to label %do.end59 [label %if.then55], !srcloc !459

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_discard_sent.__UNIQUE_ID_ddebug618, ptr noundef nonnull @.str.40, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 681, ptr noundef nonnull @.str.36, ptr noundef %con, ptr noundef %add.ptr, i64 noundef %7) #15
  br label %do.end59

do.end59:                                         ; preds = %if.then55, %do.body43
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end59.ceph_msg_remove.exit_crit_edge

do.end59.ceph_msg_remove.exit_crit_edge:          ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_msg_remove.exit

if.end.i.i.i:                                     ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr i8, ptr %2, i32 4
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %ceph_msg_remove.exit

ceph_msg_remove.exit:                             ; preds = %if.end.i.i.i, %do.end59.ceph_msg_remove.exit_crit_edge
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i.i = getelementptr i8, ptr %2, i32 4
  %15 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %2, ptr %prev.i3.i.i, align 4
  tail call void @ceph_msg_put(ptr noundef %add.ptr) #15
  %16 = ptrtoint ptr %out_sent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %out_sent, align 4
  %cmp.i.not = icmp eq ptr %17, %out_sent
  br i1 %cmp.i.not, label %ceph_msg_remove.exit.while.end_crit_edge, label %ceph_msg_remove.exit.while.body_crit_edge

ceph_msg_remove.exit.while.body_crit_edge:        ; preds = %ceph_msg_remove.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

ceph_msg_remove.exit.while.end_crit_edge:         ; preds = %ceph_msg_remove.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %ceph_msg_remove.exit.while.end_crit_edge, %if.end32.while.end_crit_edge, %do.end.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_con_discard_requeued(ptr noundef %con, i64 noundef %reconnect_seq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_discard_requeued.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_discard_requeued, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !459

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_discard_requeued.__UNIQUE_ID_ddebug619, ptr noundef nonnull @.str.43, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 696, ptr noundef nonnull @.str.41, ptr noundef %con, i64 noundef %reconnect_seq) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %out_queue = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 13
  %0 = ptrtoint ptr %out_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %out_queue, align 4
  %cmp.i.not46 = icmp eq ptr %1, %out_queue
  br i1 %cmp.i.not46, label %do.end.while.end_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  br label %while.body

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %ceph_msg_remove.exit.while.body_crit_edge, %do.end.while.body_crit_edge
  %2 = phi ptr [ %17, %ceph_msg_remove.exit.while.body_crit_edge ], [ %1, %do.end.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -148
  %needs_out_seq = getelementptr i8, ptr %2, i32 13
  %3 = ptrtoint ptr %needs_out_seq to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %needs_out_seq, align 1, !range !476
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool10.not = icmp eq i8 %4, 0
  br i1 %tobool10.not, label %if.end12, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end12:                                         ; preds = %while.body
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %add.ptr, align 4
  %7 = tail call i64 @llvm.bswap.i64(i64 %6)
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %reconnect_seq)
  %cmp = icmp ugt i64 %7, %reconnect_seq
  br i1 %cmp, label %if.end12.while.end_crit_edge, label %do.body16

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

do.body16:                                        ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_discard_requeued.__UNIQUE_ID_ddebug620, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_discard_requeued, %if.then28)) #15
          to label %do.end32 [label %if.then28], !srcloc !459

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_discard_requeued.__UNIQUE_ID_ddebug620, ptr noundef nonnull @.str.40, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 707, ptr noundef nonnull @.str.41, ptr noundef %con, ptr noundef %add.ptr, i64 noundef %7) #15
  br label %do.end32

do.end32:                                         ; preds = %if.then28, %do.body16
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end32.ceph_msg_remove.exit_crit_edge

do.end32.ceph_msg_remove.exit_crit_edge:          ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_msg_remove.exit

if.end.i.i.i:                                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr i8, ptr %2, i32 4
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %ceph_msg_remove.exit

ceph_msg_remove.exit:                             ; preds = %if.end.i.i.i, %do.end32.ceph_msg_remove.exit_crit_edge
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %2, ptr %2, align 4
  %prev.i3.i.i = getelementptr i8, ptr %2, i32 4
  %15 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %2, ptr %prev.i3.i.i, align 4
  tail call void @ceph_msg_put(ptr noundef %add.ptr) #15
  %16 = ptrtoint ptr %out_queue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %out_queue, align 4
  %cmp.i.not = icmp eq ptr %17, %out_queue
  br i1 %cmp.i.not, label %ceph_msg_remove.exit.while.end_crit_edge, label %ceph_msg_remove.exit.while.body_crit_edge

ceph_msg_remove.exit.while.body_crit_edge:        ; preds = %ceph_msg_remove.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

ceph_msg_remove.exit.while.end_crit_edge:         ; preds = %ceph_msg_remove.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %ceph_msg_remove.exit.while.end_crit_edge, %if.end12.while.end_crit_edge, %while.body.while.end_crit_edge, %do.end.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_msg_data_cursor_init(ptr noundef %cursor, ptr nocapture noundef readonly %msg, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool.not = icmp eq i32 %length, 0
  br i1 %tobool.not, label %do.body4, label %do.body8, !prof !456

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1031, 0\0A.popsection", ""() #15, !srcloc !477
  unreachable

do.body8:                                         ; preds = %entry
  %data_length = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 4
  %0 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %length)
  %cmp = icmp ult i32 %1, %length
  br i1 %cmp, label %do.body16, label %do.body22, !prof !456

do.body16:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1032, 0\0A.popsection", ""() #15, !srcloc !478
  unreachable

do.body22:                                        ; preds = %do.body8
  %num_data_items = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 6
  %2 = ptrtoint ptr %num_data_items to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_data_items, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool23.not = icmp eq i32 %3, 0
  br i1 %tobool23.not, label %do.body33, label %do.end38, !prof !456

do.body33:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1033, 0\0A.popsection", ""() #15, !srcloc !479
  unreachable

do.end38:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %cursor to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %length, ptr %cursor, align 4
  %data = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 5
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %data39 = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 1
  %7 = ptrtoint ptr %data39 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %data39, align 4
  tail call fastcc void @__ceph_msg_data_cursor_init(ptr noundef %cursor)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__ceph_msg_data_cursor_init(ptr noundef %cursor) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cursor, align 4
  %data = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 2, label %do.end8.i
    i32 1, label %do.body9.i
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

do.end8.i:                                        ; preds = %entry
  %7 = getelementptr inbounds %struct.ceph_msg_data, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool10.not.i = icmp eq ptr %9, null
  br i1 %tobool10.not.i, label %do.body20.i, label %do.end28.i, !prof !456

do.body20.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 920, 0\0A.popsection", ""() #15, !srcloc !480
  unreachable

do.end28.i:                                       ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool29.not.i = icmp eq i32 %1, 0
  br i1 %tobool29.not.i, label %do.end28.i.sw.epilog_crit_edge, label %do.body32.i

do.end28.i.sw.epilog_crit_edge:                   ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

do.body32.i:                                      ; preds = %do.end28.i
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %9, align 4
  %cmp.i.not.i = icmp eq ptr %11, %9
  br i1 %cmp.i.not.i, label %do.body41.i, label %do.end49.i, !prof !456

do.body41.i:                                      ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 925, 0\0A.popsection", ""() #15, !srcloc !481
  unreachable

do.end49.i:                                       ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i = getelementptr i8, ptr %11, i32 -4
  %length51.i = getelementptr inbounds %struct.ceph_pagelist, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %length51.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length51.i, align 4
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 %1) #15
  %resid.i = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 2
  %15 = ptrtoint ptr %resid.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %resid.i, align 4
  %16 = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr.i, ptr %16, align 4
  %offset.i = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5, i32 0, i32 1
  %18 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %14)
  %cmp56.i = icmp ult i32 %14, 4097
  br label %sw.epilog.sink.split

do.body9.i:                                       ; preds = %entry
  %19 = getelementptr inbounds %struct.ceph_msg_data, ptr %3, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool10.not.i17 = icmp eq ptr %21, null
  br i1 %tobool10.not.i17, label %do.body20.i18, label %do.body29.i, !prof !456

do.body20.i18:                                    ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 846, 0\0A.popsection", ""() #15, !srcloc !482
  unreachable

do.body29.i:                                      ; preds = %do.body9.i
  %length30.i = getelementptr inbounds %struct.ceph_msg_data, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %length30.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %length30.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool31.not.i = icmp eq i32 %23, 0
  br i1 %tobool31.not.i, label %do.body41.i19, label %do.end49.i22, !prof !456

do.body41.i19:                                    ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 847, 0\0A.popsection", ""() #15, !srcloc !483
  unreachable

do.end49.i22:                                     ; preds = %do.body29.i
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 %1) #15
  %resid.i20 = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 2
  %25 = ptrtoint ptr %resid.i20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %resid.i20, align 4
  %alignment.i = getelementptr inbounds %struct.anon.176, ptr %19, i32 0, i32 2
  %26 = ptrtoint ptr %alignment.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %alignment.i, align 4
  %conv.i = zext i32 %27 to i64
  %28 = ptrtoint ptr %length30.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length30.i, align 4
  %conv53.i = zext i32 %29 to i64
  %add.i.i = add nuw nsw i64 %conv.i, 4095
  %sub.i.i = add nuw nsw i64 %add.i.i, %conv53.i
  %shr.i.i = lshr i64 %sub.i.i, 12
  %shr2.i.i = lshr i64 %conv.i, 12
  %sub3.i.i = sub nsw i64 %shr.i.i, %shr2.i.i
  %conv.i.i = trunc i64 %sub3.i.i to i32
  %and.i = and i32 %27, 4095
  %30 = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and.i, ptr %30, align 4
  %page_index.i = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5, i32 0, i32 1
  %32 = ptrtoint ptr %page_index.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %page_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %conv.i.i)
  %cmp56.i21 = icmp sgt i32 %conv.i.i, 65535
  br i1 %cmp56.i21, label %do.body65.i, label %do.end73.i, !prof !456

do.body65.i:                                      ; preds = %do.end49.i22
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 853, 0\0A.popsection", ""() #15, !srcloc !484
  unreachable

do.end73.i:                                       ; preds = %do.end49.i22
  %conv74.i = trunc i64 %sub3.i.i to i16
  %page_count75.i = getelementptr inbounds %struct.anon.178, ptr %30, i32 0, i32 2
  %33 = ptrtoint ptr %page_count75.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv74.i, ptr %page_count75.i, align 2
  %sub.i = xor i32 %and.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub.i)
  %cmp78.i = icmp ugt i32 %1, %sub.i
  br i1 %cmp78.i, label %do.body87.i, label %ceph_msg_data_pages_cursor_init.exit, !prof !456

do.body87.i:                                      ; preds = %do.end73.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 855, 0\0A.popsection", ""() #15, !srcloc !485
  unreachable

ceph_msg_data_pages_cursor_init.exit:             ; preds = %do.end73.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.i = add i32 %and.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %add.i)
  %cmp98.i = icmp ult i32 %add.i, 4097
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %entry
  %34 = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5
  %35 = getelementptr inbounds %struct.ceph_msg_data, ptr %3, i32 0, i32 1
  %bio_length.i = getelementptr inbounds %struct.ceph_msg_data, ptr %3, i32 0, i32 1, i32 0, i32 1
  %36 = ptrtoint ptr %bio_length.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bio_length.i, align 4
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 %1) #15
  %resid.i26 = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 2
  %39 = ptrtoint ptr %resid.i26 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %resid.i26, align 4
  %40 = call ptr @memcpy(ptr %34, ptr %35, i32 24)
  %bi_size.i = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bi_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %42)
  %cmp3.i = icmp ult i32 %38, %42
  br i1 %cmp3.i, label %if.then.i, label %sw.bb2.do.body.i_crit_edge

sw.bb2.do.body.i_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

if.then.i:                                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #17
  %43 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %38, ptr %bi_size.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %sw.bb2.do.body.i_crit_edge
  %44 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bi_size.i, align 4
  %46 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %34, align 4
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %47, i32 0, i32 20
  %48 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bi_io_vec.i, align 8
  %bi_idx.i = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5, i32 0, i32 1, i32 2
  %50 = ptrtoint ptr %bi_idx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bi_idx.i, align 4
  %bv_len.i = getelementptr %struct.bio_vec, ptr %49, i32 %51, i32 1
  %52 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bv_len.i, align 4
  %bi_bvec_done.i = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5, i32 0, i32 1, i32 3
  %54 = ptrtoint ptr %bi_bvec_done.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bi_bvec_done.i, align 4
  %sub.i27 = sub i32 %53, %55
  %56 = tail call i32 @llvm.umin.i32(i32 %45, i32 %sub.i27) #15
  %bv_offset.i = getelementptr %struct.bio_vec, ptr %49, i32 %51, i32 2
  %57 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bv_offset.i, align 4
  %add.i28 = add i32 %58, %55
  %rem.i = and i32 %add.i28, 4095
  %sub25.i = sub nuw nsw i32 4096, %rem.i
  %59 = tail call i32 @llvm.umin.i32(i32 %56, i32 %sub25.i) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %59)
  %cmp32.i = icmp ult i32 %38, %59
  br i1 %cmp32.i, label %do.body35.i, label %ceph_msg_data_bio_cursor_init.exit, !prof !456

do.body35.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 730, 0\0A.popsection", ""() #15, !srcloc !486
  unreachable

ceph_msg_data_bio_cursor_init.exit:               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %59)
  %cmp77.i = icmp eq i32 %38, %59
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %entry
  %60 = getelementptr inbounds %struct.ceph_msg_data, ptr %3, i32 0, i32 1
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %iter.i = getelementptr inbounds %struct.ceph_msg_data, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 1
  %bi_size.i32 = getelementptr inbounds %struct.ceph_msg_data, ptr %3, i32 0, i32 1, i32 0, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %bi_size.i32 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bi_size.i32, align 4
  %65 = tail call i32 @llvm.umin.i32(i32 %64, i32 %1) #15
  %resid.i33 = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 2
  %66 = ptrtoint ptr %resid.i33 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %resid.i33, align 4
  %67 = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5
  %68 = call ptr @memcpy(ptr %67, ptr %iter.i, i32 20)
  %bi_size5.i = getelementptr inbounds %struct.bvec_iter, ptr %67, i32 0, i32 1
  %69 = ptrtoint ptr %bi_size5.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %65, ptr %bi_size5.i, align 4
  %bi_idx.i34 = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %bi_idx.i34 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bi_idx.i34, align 4
  %bv_len.i35 = getelementptr %struct.bio_vec, ptr %62, i32 %71, i32 1
  %72 = ptrtoint ptr %bv_len.i35 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bv_len.i35, align 4
  %bi_bvec_done.i36 = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5, i32 0, i32 1, i32 2
  %74 = ptrtoint ptr %bi_bvec_done.i36 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bi_bvec_done.i36, align 4
  %sub.i37 = sub i32 %73, %75
  %76 = tail call i32 @llvm.umin.i32(i32 %65, i32 %sub.i37) #15
  %bv_offset.i38 = getelementptr %struct.bio_vec, ptr %62, i32 %71, i32 2
  %77 = ptrtoint ptr %bv_offset.i38 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bv_offset.i38, align 4
  %add.i39 = add i32 %78, %75
  %rem.i40 = and i32 %add.i39, 4095
  %sub17.i = sub nuw nsw i32 4096, %rem.i40
  %79 = tail call i32 @llvm.umin.i32(i32 %76, i32 %sub17.i) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %79)
  %cmp24.i = icmp ult i32 %65, %79
  br i1 %cmp24.i, label %do.body26.i, label %ceph_msg_data_bvecs_cursor_init.exit, !prof !456

do.body26.i:                                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 790, 0\0A.popsection", ""() #15, !srcloc !487
  unreachable

ceph_msg_data_bvecs_cursor_init.exit:             ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %79)
  %cmp58.i = icmp eq i32 %65, %79
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %ceph_msg_data_bvecs_cursor_init.exit, %ceph_msg_data_bio_cursor_init.exit, %ceph_msg_data_pages_cursor_init.exit, %do.end49.i
  %cmp56.i.sink = phi i1 [ %cmp56.i, %do.end49.i ], [ %cmp58.i, %ceph_msg_data_bvecs_cursor_init.exit ], [ %cmp77.i, %ceph_msg_data_bio_cursor_init.exit ], [ %cmp98.i, %ceph_msg_data_pages_cursor_init.exit ]
  %last_piece.i = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 3
  %frombool.i = zext i1 %cmp56.i.sink to i8
  %80 = ptrtoint ptr %last_piece.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %frombool.i, ptr %last_piece.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.end28.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %need_crc = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 4
  %81 = ptrtoint ptr %need_crc to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %need_crc, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ceph_msg_data_next(ptr noundef readonly %cursor, ptr nocapture noundef %page_offset, ptr nocapture noundef %length, ptr noundef writeonly %last_piece) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %3, label %entry.do.body11_crit_edge [
    i32 2, label %do.end8.i
    i32 1, label %do.body9.i
    i32 3, label %sw.bb3
    i32 4, label %sw.bb5
  ]

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body11

do.end8.i:                                        ; preds = %entry
  %5 = getelementptr inbounds %struct.ceph_msg_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool10.not.i = icmp eq ptr %7, null
  br i1 %tobool10.not.i, label %do.body20.i, label %do.body29.i, !prof !456

do.body20.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 944, 0\0A.popsection", ""() #15, !srcloc !488
  unreachable

do.body29.i:                                      ; preds = %do.end8.i
  %8 = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool30.not.i = icmp eq ptr %10, null
  br i1 %tobool30.not.i, label %do.body40.i, label %do.body49.i, !prof !456

do.body40.i:                                      ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 946, 0\0A.popsection", ""() #15, !srcloc !489
  unreachable

do.body49.i:                                      ; preds = %do.body29.i
  %offset.i = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset.i, align 4
  %resid.i = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 2
  %13 = ptrtoint ptr %resid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %resid.i, align 4
  %add.i = add i32 %14, %12
  %length50.i = getelementptr inbounds %struct.ceph_pagelist, ptr %7, i32 0, i32 2
  %15 = ptrtoint ptr %length50.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length50.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %16)
  %cmp51.not.i = icmp eq i32 %add.i, %16
  br i1 %cmp51.not.i, label %do.end67.i, label %do.body59.i, !prof !445

do.body59.i:                                      ; preds = %do.body49.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 947, 0\0A.popsection", ""() #15, !srcloc !490
  unreachable

do.end67.i:                                       ; preds = %do.body49.i
  %and.i = and i32 %12, 4095
  %17 = ptrtoint ptr %page_offset to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and.i, ptr %page_offset, align 4
  %last_piece.i = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 3
  %18 = ptrtoint ptr %last_piece.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %last_piece.i, align 4, !range !476
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool69.not.i = icmp eq i8 %19, 0
  br i1 %tobool69.not.i, label %if.else.i, label %if.then70.i

if.then70.i:                                      ; preds = %do.end67.i
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %resid.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %resid.i, align 4
  br label %ceph_msg_data_pagelist_next.exit

if.else.i:                                        ; preds = %do.end67.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i = sub nuw nsw i32 4096, %and.i
  br label %ceph_msg_data_pagelist_next.exit

ceph_msg_data_pagelist_next.exit:                 ; preds = %if.else.i, %if.then70.i
  %storemerge.i = phi i32 [ %sub.i, %if.else.i ], [ %21, %if.then70.i ]
  %22 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %storemerge.i, ptr %length, align 4
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %8, align 4
  br label %do.body

do.body9.i:                                       ; preds = %entry
  %25 = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5
  %page_index.i = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5, i32 0, i32 1
  %26 = ptrtoint ptr %page_index.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %page_index.i, align 4
  %page_count.i = getelementptr inbounds %struct.anon.178, ptr %25, i32 0, i32 2
  %28 = ptrtoint ptr %page_count.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %page_count.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %29)
  %cmp11.not.i = icmp ult i16 %27, %29
  br i1 %cmp11.not.i, label %do.body29.i99, label %do.body20.i98, !prof !445

do.body20.i98:                                    ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 867, 0\0A.popsection", ""() #15, !srcloc !491
  unreachable

do.body29.i99:                                    ; preds = %do.body9.i
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %31)
  %cmp31.i = icmp ugt i32 %31, 4095
  br i1 %cmp31.i, label %do.body40.i100, label %do.end48.i, !prof !456

do.body40.i100:                                   ; preds = %do.body29.i99
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 868, 0\0A.popsection", ""() #15, !srcloc !492
  unreachable

do.end48.i:                                       ; preds = %do.body29.i99
  %32 = ptrtoint ptr %page_offset to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %page_offset, align 4
  %last_piece.i101 = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 3
  %33 = ptrtoint ptr %last_piece.i101 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %last_piece.i101, align 4, !range !476
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool50.not.i = icmp eq i8 %34, 0
  br i1 %tobool50.not.i, label %if.else.i104, label %if.then51.i

if.then51.i:                                      ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #17
  %resid.i102 = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 2
  %35 = ptrtoint ptr %resid.i102 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %resid.i102, align 4
  br label %ceph_msg_data_pages_next.exit

if.else.i104:                                     ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i103 = sub nuw nsw i32 4096, %31
  br label %ceph_msg_data_pages_next.exit

ceph_msg_data_pages_next.exit:                    ; preds = %if.else.i104, %if.then51.i
  %storemerge.i105 = phi i32 [ %sub.i103, %if.else.i104 ], [ %36, %if.then51.i ]
  %37 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %storemerge.i105, ptr %length, align 4
  %38 = getelementptr inbounds %struct.ceph_msg_data, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %41 = ptrtoint ptr %page_index.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %page_index.i, align 4
  %idxprom.i = zext i16 %42 to i32
  %arrayidx.i = getelementptr ptr, ptr %40, i32 %idxprom.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i, align 4
  br label %do.body

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %45 = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %47, i32 0, i32 20
  %48 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bi_io_vec.i, align 8
  %bi_idx.i = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5, i32 0, i32 1, i32 2
  %50 = ptrtoint ptr %bi_idx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bi_idx.i, align 4
  %arrayidx.i106 = getelementptr %struct.bio_vec, ptr %49, i32 %51
  %52 = ptrtoint ptr %arrayidx.i106 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i106, align 4
  %bv_offset.i = getelementptr %struct.bio_vec, ptr %49, i32 %51, i32 2
  %54 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bv_offset.i, align 4
  %bi_bvec_done.i = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5, i32 0, i32 1, i32 3
  %56 = ptrtoint ptr %bi_bvec_done.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bi_bvec_done.i, align 4
  %bi_size.i = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5, i32 0, i32 1, i32 1
  %58 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bi_size.i, align 4
  %bv_len14.i = getelementptr %struct.bio_vec, ptr %49, i32 %51, i32 1
  %60 = ptrtoint ptr %bv_len14.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bv_len14.i, align 4
  %sub.i107 = sub i32 %61, %57
  %62 = tail call i32 @llvm.umin.i32(i32 %59, i32 %sub.i107) #15
  %add25.i = add i32 %57, %55
  %rem.i = and i32 %add25.i, 4095
  %sub26.i = sub nuw nsw i32 4096, %rem.i
  %63 = tail call i32 @llvm.umin.i32(i32 %62, i32 %sub26.i) #15
  %div65.i = lshr i32 %add25.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %53, i32 %div65.i
  %64 = ptrtoint ptr %page_offset to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %rem.i, ptr %page_offset, align 4
  %65 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %63, ptr %length, align 4
  br label %do.body

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %66 = getelementptr inbounds %struct.ceph_msg_data, ptr %1, i32 0, i32 1
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %69 = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5
  %bi_idx.i108 = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %bi_idx.i108 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bi_idx.i108, align 4
  %arrayidx.i109 = getelementptr %struct.bio_vec, ptr %68, i32 %71
  %72 = ptrtoint ptr %arrayidx.i109 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i109, align 4
  %bv_offset.i110 = getelementptr %struct.bio_vec, ptr %68, i32 %71, i32 2
  %74 = ptrtoint ptr %bv_offset.i110 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bv_offset.i110, align 4
  %bi_bvec_done.i111 = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5, i32 0, i32 1, i32 2
  %76 = ptrtoint ptr %bi_bvec_done.i111 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bi_bvec_done.i111, align 4
  %bi_size.i112 = getelementptr inbounds %struct.bvec_iter, ptr %69, i32 0, i32 1
  %78 = ptrtoint ptr %bi_size.i112 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bi_size.i112, align 4
  %bv_len10.i = getelementptr %struct.bio_vec, ptr %68, i32 %71, i32 1
  %80 = ptrtoint ptr %bv_len10.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bv_len10.i, align 4
  %sub.i113 = sub i32 %81, %77
  %82 = tail call i32 @llvm.umin.i32(i32 %79, i32 %sub.i113) #15
  %add18.i = add i32 %77, %75
  %rem.i114 = and i32 %add18.i, 4095
  %sub19.i = sub nuw nsw i32 4096, %rem.i114
  %83 = tail call i32 @llvm.umin.i32(i32 %82, i32 %sub19.i) #15
  %div56.i = lshr i32 %add18.i, 12
  %add.ptr.i115 = getelementptr %struct.page, ptr %73, i32 %div56.i
  %84 = ptrtoint ptr %page_offset to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %rem.i114, ptr %page_offset, align 4
  %85 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %83, ptr %length, align 4
  br label %do.body

do.body:                                          ; preds = %sw.bb5, %sw.bb3, %ceph_msg_data_pages_next.exit, %ceph_msg_data_pagelist_next.exit
  %page.0 = phi ptr [ %add.ptr.i115, %sw.bb5 ], [ %add.ptr.i, %sw.bb3 ], [ %44, %ceph_msg_data_pages_next.exit ], [ %24, %ceph_msg_data_pagelist_next.exit ]
  %tobool.not = icmp eq ptr %page.0, null
  br i1 %tobool.not, label %do.body.do.body11_crit_edge, label %do.body17, !prof !456

do.body.do.body11_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body11

do.body11:                                        ; preds = %do.body.do.body11_crit_edge, %entry.do.body11_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1073, 0\0A.popsection", ""() #15, !srcloc !493
  unreachable

do.body17:                                        ; preds = %do.body
  %86 = ptrtoint ptr %page_offset to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %page_offset, align 4
  %88 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %length, align 4
  %add = add i32 %89, %87
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add)
  %cmp = icmp ugt i32 %add, 4096
  br i1 %cmp, label %do.body25, label %do.body34, !prof !456

do.body25:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1074, 0\0A.popsection", ""() #15, !srcloc !494
  unreachable

do.body34:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool35.not = icmp eq i32 %89, 0
  br i1 %tobool35.not, label %do.body45, label %do.body54, !prof !456

do.body45:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1075, 0\0A.popsection", ""() #15, !srcloc !495
  unreachable

do.body54:                                        ; preds = %do.body34
  %resid = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 2
  %90 = ptrtoint ptr %resid to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %resid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %91)
  %cmp55 = icmp ugt i32 %89, %91
  br i1 %cmp55, label %do.body63, label %do.end71, !prof !456

do.body63:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1076, 0\0A.popsection", ""() #15, !srcloc !496
  unreachable

do.end71:                                         ; preds = %do.body54
  %tobool72.not = icmp eq ptr %last_piece, null
  br i1 %tobool72.not, label %do.end71.if.end76_crit_edge, label %if.then73

do.end71.if.end76_crit_edge:                      ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end76

if.then73:                                        ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #17
  %last_piece74 = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 3
  %92 = ptrtoint ptr %last_piece74 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %last_piece74, align 4, !range !476
  %94 = ptrtoint ptr %last_piece to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %last_piece, align 1
  br label %if.end76

if.end76:                                         ; preds = %if.then73, %do.end71.if.end76_crit_edge
  ret ptr %page.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_msg_data_advance(ptr noundef %cursor, i32 noundef %bytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %resid = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 2
  %0 = ptrtoint ptr %resid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %resid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %bytes)
  %cmp = icmp ult i32 %1, %bytes
  br i1 %cmp, label %do.body2, label %do.end7, !prof !456

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1091, 0\0A.popsection", ""() #15, !srcloc !497
  unreachable

do.end7:                                          ; preds = %entry
  %data = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %5, label %do.body18 [
    i32 2, label %do.end8.i
    i32 1, label %do.body6.i
    i32 3, label %do.body14.i
    i32 4, label %do.body11.i
  ]

do.end8.i:                                        ; preds = %do.end7
  %7 = getelementptr inbounds %struct.ceph_msg_data, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool10.not.i = icmp eq ptr %9, null
  br i1 %tobool10.not.i, label %do.body20.i, label %do.body29.i, !prof !456

do.body20.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 968, 0\0A.popsection", ""() #15, !srcloc !498
  unreachable

do.body29.i:                                      ; preds = %do.end8.i
  %10 = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5
  %offset.i = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset.i, align 4
  %add.i = add i32 %12, %1
  %length.i = getelementptr inbounds %struct.ceph_pagelist, ptr %9, i32 0, i32 2
  %13 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %14)
  %cmp30.not.i = icmp eq i32 %add.i, %14
  br i1 %cmp30.not.i, label %do.body47.i, label %do.body38.i, !prof !445

do.body38.i:                                      ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 970, 0\0A.popsection", ""() #15, !srcloc !499
  unreachable

do.body47.i:                                      ; preds = %do.body29.i
  %and.i = and i32 %12, 4095
  %add49.i = add i32 %and.i, %bytes
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add49.i)
  %cmp50.i = icmp ugt i32 %add49.i, 4096
  br i1 %cmp50.i, label %do.body58.i, label %do.end66.i, !prof !456

do.body58.i:                                      ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 971, 0\0A.popsection", ""() #15, !srcloc !500
  unreachable

do.end66.i:                                       ; preds = %do.body47.i
  %sub.i = sub i32 %1, %bytes
  %15 = ptrtoint ptr %resid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub.i, ptr %resid, align 4
  %add69.i = add i32 %12, %bytes
  %16 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add69.i, ptr %offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %tobool70.not.i = icmp eq i32 %bytes, 0
  %and72.i = and i32 %add69.i, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool73.not.i = icmp ne i32 %and72.i, 0
  %or.cond.i = select i1 %tobool70.not.i, i1 true, i1 %tobool73.not.i
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %bytes)
  %tobool77.not.i = icmp eq i32 %1, %bytes
  %or.cond122.i = select i1 %or.cond.i, i1 true, i1 %tobool77.not.i
  br i1 %or.cond122.i, label %do.end66.i.ceph_msg_data_pagelist_advance.exit_crit_edge, label %do.body80.i

do.end66.i.ceph_msg_data_pagelist_advance.exit_crit_edge: ; preds = %do.end66.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_msg_data_pagelist_advance.exit

do.body80.i:                                      ; preds = %do.end66.i
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %10, align 4
  %19 = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %cmp.i.not.i = icmp eq ptr %21, %9
  br i1 %cmp.i.not.i, label %do.body89.i, label %do.end97.i, !prof !456

do.body89.i:                                      ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 986, 0\0A.popsection", ""() #15, !srcloc !501
  unreachable

do.end97.i:                                       ; preds = %do.body80.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i = getelementptr i8, ptr %21, i32 -4
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %sub.i)
  %cmp102.i = icmp ult i32 %sub.i, 4097
  %last_piece.i = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 3
  %frombool.i = zext i1 %cmp102.i to i8
  %23 = ptrtoint ptr %last_piece.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %frombool.i, ptr %last_piece.i, align 4
  br label %ceph_msg_data_pagelist_advance.exit

ceph_msg_data_pagelist_advance.exit:              ; preds = %do.end97.i, %do.end66.i.ceph_msg_data_pagelist_advance.exit_crit_edge
  %24 = xor i1 %or.cond122.i, true
  br label %sw.epilog

do.body6.i:                                       ; preds = %do.end7
  %25 = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add.i83 = add i32 %27, %bytes
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i83)
  %cmp7.i = icmp ugt i32 %add.i83, 4096
  br i1 %cmp7.i, label %do.body15.i, label %do.end20.i, !prof !456

do.body15.i:                                      ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 884, 0\0A.popsection", ""() #15, !srcloc !502
  unreachable

do.end20.i:                                       ; preds = %do.body6.i
  %sub.i85 = sub i32 %1, %bytes
  %28 = ptrtoint ptr %resid to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub.i85, ptr %resid, align 4
  %and.i86 = and i32 %add.i83, 4095
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and.i86, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %tobool24.not.i = icmp eq i32 %bytes, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i86)
  %tobool26.not.i = icmp ne i32 %and.i86, 0
  %or.cond.i87 = select i1 %tobool24.not.i, i1 true, i1 %tobool26.not.i
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %bytes)
  %tobool30.not.i = icmp eq i32 %1, %bytes
  %or.cond68.i = select i1 %or.cond.i87, i1 true, i1 %tobool30.not.i
  br i1 %or.cond68.i, label %do.end20.i.ceph_msg_data_pages_advance.exit_crit_edge, label %do.body33.i

do.end20.i.ceph_msg_data_pages_advance.exit_crit_edge: ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_msg_data_pages_advance.exit

do.body33.i:                                      ; preds = %do.end20.i
  %page_index.i = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5, i32 0, i32 1
  %30 = ptrtoint ptr %page_index.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %page_index.i, align 4
  %page_count.i = getelementptr inbounds %struct.anon.178, ptr %25, i32 0, i32 2
  %32 = ptrtoint ptr %page_count.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %page_count.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %33)
  %cmp35.not.i = icmp ult i16 %31, %33
  br i1 %cmp35.not.i, label %do.end49.i, label %do.body44.i, !prof !445

do.body44.i:                                      ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 898, 0\0A.popsection", ""() #15, !srcloc !503
  unreachable

do.end49.i:                                       ; preds = %do.body33.i
  call void @__sanitizer_cov_trace_pc() #17
  %inc.i = add nuw i16 %31, 1
  %34 = ptrtoint ptr %page_index.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %inc.i, ptr %page_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %sub.i85)
  %cmp52.i = icmp ult i32 %sub.i85, 4097
  %last_piece.i88 = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 3
  %frombool.i89 = zext i1 %cmp52.i to i8
  %35 = ptrtoint ptr %last_piece.i88 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %frombool.i89, ptr %last_piece.i88, align 4
  br label %ceph_msg_data_pages_advance.exit

ceph_msg_data_pages_advance.exit:                 ; preds = %do.end49.i, %do.end20.i.ceph_msg_data_pages_advance.exit_crit_edge
  %36 = xor i1 %or.cond68.i, true
  br label %sw.epilog

do.body14.i:                                      ; preds = %do.end7
  %37 = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %39, i32 0, i32 20
  %40 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bi_io_vec.i, align 8
  %iter.i = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5, i32 0, i32 1
  %bi_idx.i = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5, i32 0, i32 1, i32 2
  %42 = ptrtoint ptr %bi_idx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bi_idx.i, align 4
  %arrayidx.i = getelementptr %struct.bio_vec, ptr %41, i32 %43
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset.i = getelementptr %struct.bio_vec, ptr %41, i32 %43, i32 2
  %46 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bv_offset.i, align 4
  %bi_bvec_done.i = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5, i32 0, i32 1, i32 3
  %48 = ptrtoint ptr %bi_bvec_done.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bi_bvec_done.i, align 4
  %add.i90 = add i32 %49, %47
  %div312.i = lshr i32 %add.i90, 12
  %add.ptr.i91 = getelementptr %struct.page, ptr %45, i32 %div312.i
  %bi_size.i = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bi_size.i, align 4
  %bv_len.i = getelementptr %struct.bio_vec, ptr %41, i32 %43, i32 1
  %52 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bv_len.i, align 4
  %sub.i93 = sub i32 %53, %49
  %54 = tail call i32 @llvm.umin.i32(i32 %51, i32 %sub.i93) #15
  %rem.i = and i32 %add.i90, 4095
  %sub33.i = sub nuw nsw i32 4096, %rem.i
  %55 = tail call i32 @llvm.umin.i32(i32 %54, i32 %sub33.i) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %bytes)
  %cmp40.i = icmp ult i32 %55, %bytes
  br i1 %cmp40.i, label %do.body48.i, label %do.end56.i, !prof !456

do.body48.i:                                      ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 753, 0\0A.popsection", ""() #15, !srcloc !504
  unreachable

do.end56.i:                                       ; preds = %do.body14.i
  %sub58.i = sub i32 %1, %bytes
  %56 = ptrtoint ptr %resid to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub58.i, ptr %resid, align 4
  %shr.i.i = lshr i32 %bytes, 9
  %conv.i.i = zext i32 %shr.i.i to i64
  %57 = ptrtoint ptr %iter.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 8)
  %58 = load i64, ptr %iter.i, align 1
  %add.i.i = add i64 %58, %conv.i.i
  store i64 %add.i.i, ptr %iter.i, align 1
  %bi_opf.i.i.i = getelementptr inbounds %struct.bio, ptr %39, i32 0, i32 2
  %59 = ptrtoint ptr %bi_opf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %bi_opf.i.i.i, align 8
  %and.i.i.i = and i32 %60, 255
  %61 = add nsw i32 %and.i.i.i, -3
  %switch.and.i.i.i = and i32 %61, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i)
  %switch.selectcmp.i.i.i = icmp eq i32 %switch.and.i.i.i, 0
  br i1 %switch.selectcmp.i.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %do.end56.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i.i = sub i32 %51, %bytes
  %62 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %sub.i.i, ptr %bi_size.i, align 1
  br label %bio_advance_iter.exit.i

if.else.i.i:                                      ; preds = %do.end56.i
  %63 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bi_io_vec.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %bytes)
  %cmp.i.i.i = icmp ult i32 %51, %bytes
  br i1 %cmp.i.i.i, label %land.rhs.i.i.i, label %if.end38.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.else.i.i
  %.b1.i.i.i = load i1, ptr @bvec_iter_advance.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.if.then36.i.i.i_crit_edge, label %if.then.i.i.i, !prof !445

land.rhs.i.i.i.if.then36.i.i.i_crit_edge:         ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then36.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @bvec_iter_advance.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.132, i32 noundef 107, i32 noundef 9, ptr noundef nonnull @.str.133) #15
  br label %if.then36.i.i.i

if.then36.i.i.i:                                  ; preds = %if.then.i.i.i, %land.rhs.i.i.i.if.then36.i.i.i_crit_edge
  %65 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 0, ptr %bi_size.i, align 1
  br label %bio_advance_iter.exit.i

if.end38.i.i.i:                                   ; preds = %if.else.i.i
  %sub.i.i.i = sub i32 %51, %bytes
  %66 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %sub.i.i.i, ptr %bi_size.i, align 1
  %add.i.i.i = add i32 %49, %bytes
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i.i)
  %tobool40.not3.i.i.i = icmp eq i32 %add.i.i.i, 0
  br i1 %tobool40.not3.i.i.i, label %if.end38.i.i.i.while.end.i.i.i_crit_edge, label %if.end38.i.i.i.land.rhs41.i.i.i_crit_edge

if.end38.i.i.i.land.rhs41.i.i.i_crit_edge:        ; preds = %if.end38.i.i.i
  br label %land.rhs41.i.i.i

if.end38.i.i.i.while.end.i.i.i_crit_edge:         ; preds = %if.end38.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i.i

land.rhs41.i.i.i:                                 ; preds = %while.body.i.i.i.land.rhs41.i.i.i_crit_edge, %if.end38.i.i.i.land.rhs41.i.i.i_crit_edge
  %bytes.addr.05.i.i.i = phi i32 [ %sub46.i.i.i, %while.body.i.i.i.land.rhs41.i.i.i_crit_edge ], [ %add.i.i.i, %if.end38.i.i.i.land.rhs41.i.i.i_crit_edge ]
  %idx.04.i.i.i = phi i32 [ %inc.i.i.i, %while.body.i.i.i.land.rhs41.i.i.i_crit_edge ], [ %43, %if.end38.i.i.i.land.rhs41.i.i.i_crit_edge ]
  %bv_len.i.i.i = getelementptr %struct.bio_vec, ptr %64, i32 %idx.04.i.i.i, i32 1
  %67 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bv_len.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes.addr.05.i.i.i, i32 %68)
  %cmp42.not.i.i.i = icmp ult i32 %bytes.addr.05.i.i.i, %68
  br i1 %cmp42.not.i.i.i, label %land.rhs41.i.i.i.while.end.i.i.i_crit_edge, label %while.body.i.i.i

land.rhs41.i.i.i.while.end.i.i.i_crit_edge:       ; preds = %land.rhs41.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i.i

while.body.i.i.i:                                 ; preds = %land.rhs41.i.i.i
  %sub46.i.i.i = sub i32 %bytes.addr.05.i.i.i, %68
  %inc.i.i.i = add i32 %idx.04.i.i.i, 1
  %tobool40.not.i.i.i = icmp eq i32 %sub46.i.i.i, 0
  br i1 %tobool40.not.i.i.i, label %while.body.i.i.i.while.end.i.i.i_crit_edge, label %while.body.i.i.i.land.rhs41.i.i.i_crit_edge

while.body.i.i.i.land.rhs41.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs41.i.i.i

while.body.i.i.i.while.end.i.i.i_crit_edge:       ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %while.body.i.i.i.while.end.i.i.i_crit_edge, %land.rhs41.i.i.i.while.end.i.i.i_crit_edge, %if.end38.i.i.i.while.end.i.i.i_crit_edge
  %idx.0.lcssa.i.i.i = phi i32 [ %43, %if.end38.i.i.i.while.end.i.i.i_crit_edge ], [ %idx.04.i.i.i, %land.rhs41.i.i.i.while.end.i.i.i_crit_edge ], [ %inc.i.i.i, %while.body.i.i.i.while.end.i.i.i_crit_edge ]
  %bytes.addr.0.lcssa.i.i.i = phi i32 [ 0, %if.end38.i.i.i.while.end.i.i.i_crit_edge ], [ %bytes.addr.05.i.i.i, %land.rhs41.i.i.i.while.end.i.i.i_crit_edge ], [ 0, %while.body.i.i.i.while.end.i.i.i_crit_edge ]
  %69 = ptrtoint ptr %bi_idx.i to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 %idx.0.lcssa.i.i.i, ptr %bi_idx.i, align 1
  %70 = ptrtoint ptr %bi_bvec_done.i to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 %bytes.addr.0.lcssa.i.i.i, ptr %bi_bvec_done.i, align 1
  br label %bio_advance_iter.exit.i

bio_advance_iter.exit.i:                          ; preds = %while.end.i.i.i, %if.then36.i.i.i, %if.then.i.i
  %71 = ptrtoint ptr %resid to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %resid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool62.not.i = icmp eq i32 %72, 0
  br i1 %tobool62.not.i, label %do.body64.i, label %if.end84.i

do.body64.i:                                      ; preds = %bio_advance_iter.exit.i
  %last_piece.i94 = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 3
  %73 = ptrtoint ptr %last_piece.i94 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %last_piece.i94, align 4, !range !476
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool65.not.i = icmp eq i8 %74, 0
  br i1 %tobool65.not.i, label %do.body75.i, label %do.body64.i.sw.epilog_crit_edge, !prof !456

do.body64.i.sw.epilog_crit_edge:                  ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

do.body75.i:                                      ; preds = %do.body64.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 758, 0\0A.popsection", ""() #15, !srcloc !505
  unreachable

if.end84.i:                                       ; preds = %bio_advance_iter.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %tobool85.not.i = icmp eq i32 %bytes, 0
  br i1 %tobool85.not.i, label %if.end84.i.sw.epilog_crit_edge, label %lor.lhs.false.i

if.end84.i.sw.epilog_crit_edge:                   ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

lor.lhs.false.i:                                  ; preds = %if.end84.i
  %75 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bi_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool88.not.i = icmp eq i32 %76, 0
  br i1 %tobool88.not.i, label %if.then116.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %77 = ptrtoint ptr %bi_bvec_done.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %bi_bvec_done.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool91.not.i = icmp eq i32 %78, 0
  br i1 %tobool91.not.i, label %land.lhs.true.i.do.body131.i_crit_edge, label %land.lhs.true92.i

land.lhs.true.i.do.body131.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body131.i

land.lhs.true92.i:                                ; preds = %land.lhs.true.i
  %79 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %37, align 4
  %bi_io_vec94.i = getelementptr inbounds %struct.bio, ptr %80, i32 0, i32 20
  %81 = ptrtoint ptr %bi_io_vec94.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bi_io_vec94.i, align 8
  %83 = ptrtoint ptr %bi_idx.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bi_idx.i, align 4
  %arrayidx97.i = getelementptr %struct.bio_vec, ptr %82, i32 %84
  %85 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx97.i, align 4
  %bv_offset104.i = getelementptr %struct.bio_vec, ptr %82, i32 %84, i32 2
  %87 = ptrtoint ptr %bv_offset104.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %bv_offset104.i, align 4
  %add107.i = add i32 %88, %78
  %div108313.i = lshr i32 %add107.i, 12
  %add.ptr109.i = getelementptr %struct.page, ptr %86, i32 %div108313.i
  %cmp110.i = icmp eq ptr %add.ptr.i91, %add.ptr109.i
  br i1 %cmp110.i, label %land.lhs.true92.i.sw.epilog_crit_edge, label %land.lhs.true92.i.do.body131.i_crit_edge

land.lhs.true92.i.do.body131.i_crit_edge:         ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body131.i

land.lhs.true92.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then116.i:                                     ; preds = %lor.lhs.false.i
  %89 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %37, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 8
  store ptr %92, ptr %37, align 4
  %bi_iter.i = getelementptr inbounds %struct.bio, ptr %92, i32 0, i32 8
  %93 = call ptr @memcpy(ptr %iter.i, ptr %bi_iter.i, i32 20)
  %94 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %bi_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %95)
  %cmp124.i = icmp ult i32 %72, %95
  br i1 %cmp124.i, label %if.then125.i, label %if.then116.i.do.body131.i_crit_edge

if.then116.i.do.body131.i_crit_edge:              ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body131.i

if.then125.i:                                     ; preds = %if.then116.i
  call void @__sanitizer_cov_trace_pc() #17
  %96 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %72, ptr %bi_size.i, align 4
  br label %do.body131.i

do.body131.i:                                     ; preds = %if.then125.i, %if.then116.i.do.body131.i_crit_edge, %land.lhs.true92.i.do.body131.i_crit_edge, %land.lhs.true.i.do.body131.i_crit_edge
  %last_piece132.i = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 3
  %97 = ptrtoint ptr %last_piece132.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %last_piece132.i, align 4, !range !476
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool133.not.i = icmp eq i8 %98, 0
  br i1 %tobool133.not.i, label %do.body150.i, label %do.body141.i, !prof !445

do.body141.i:                                     ; preds = %do.body131.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 773, 0\0A.popsection", ""() #15, !srcloc !506
  unreachable

do.body150.i:                                     ; preds = %do.body131.i
  %99 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %bi_size.i, align 4
  %101 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %37, align 4
  %bi_io_vec155.i = getelementptr inbounds %struct.bio, ptr %102, i32 0, i32 20
  %103 = ptrtoint ptr %bi_io_vec155.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %bi_io_vec155.i, align 8
  %105 = ptrtoint ptr %bi_idx.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %bi_idx.i, align 4
  %bv_len159.i = getelementptr %struct.bio_vec, ptr %104, i32 %106, i32 1
  %107 = ptrtoint ptr %bv_len159.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %bv_len159.i, align 4
  %109 = ptrtoint ptr %bi_bvec_done.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %bi_bvec_done.i, align 4
  %sub162.i = sub i32 %108, %110
  %111 = tail call i32 @llvm.umin.i32(i32 %100, i32 %sub162.i) #15
  %bv_offset174.i = getelementptr %struct.bio_vec, ptr %104, i32 %106, i32 2
  %112 = ptrtoint ptr %bv_offset174.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %bv_offset174.i, align 4
  %add177.i = add i32 %113, %110
  %rem178.i = and i32 %add177.i, 4095
  %sub179.i = sub nuw nsw i32 4096, %rem178.i
  %114 = tail call i32 @llvm.umin.i32(i32 %111, i32 %sub179.i) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %114)
  %cmp186.i = icmp ult i32 %72, %114
  br i1 %cmp186.i, label %do.body194.i, label %do.end202.i, !prof !456

do.body194.i:                                     ; preds = %do.body150.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 774, 0\0A.popsection", ""() #15, !srcloc !507
  unreachable

do.end202.i:                                      ; preds = %do.body150.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %114)
  %cmp238.i = icmp eq i32 %72, %114
  %frombool.i95 = zext i1 %cmp238.i to i8
  %115 = ptrtoint ptr %last_piece132.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %frombool.i95, ptr %last_piece132.i, align 4
  br label %sw.epilog

do.body11.i:                                      ; preds = %do.end7
  %116 = getelementptr inbounds %struct.ceph_msg_data, ptr %3, i32 0, i32 1
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  %bi_idx.i97 = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5, i32 0, i32 1, i32 1
  %119 = ptrtoint ptr %bi_idx.i97 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %bi_idx.i97, align 4
  %arrayidx.i98 = getelementptr %struct.bio_vec, ptr %118, i32 %120
  %121 = ptrtoint ptr %arrayidx.i98 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx.i98, align 4
  %bv_offset.i99 = getelementptr %struct.bio_vec, ptr %118, i32 %120, i32 2
  %123 = ptrtoint ptr %bv_offset.i99 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %bv_offset.i99, align 4
  %bi_bvec_done.i100 = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5, i32 0, i32 1, i32 2
  %125 = ptrtoint ptr %bi_bvec_done.i100 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %bi_bvec_done.i100, align 4
  %add.i101 = add i32 %126, %124
  %div239.i = lshr i32 %add.i101, 12
  %add.ptr.i102 = getelementptr %struct.page, ptr %122, i32 %div239.i
  %127 = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 5
  %bi_size.i105 = getelementptr inbounds %struct.bvec_iter, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %bi_size.i105 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %bi_size.i105, align 4
  %bv_len.i106 = getelementptr %struct.bio_vec, ptr %118, i32 %120, i32 1
  %130 = ptrtoint ptr %bv_len.i106 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %bv_len.i106, align 4
  %sub.i107 = sub i32 %131, %126
  %132 = tail call i32 @llvm.umin.i32(i32 %129, i32 %sub.i107) #15
  %rem.i108 = and i32 %add.i101, 4095
  %sub21.i = sub nuw nsw i32 4096, %rem.i108
  %133 = tail call i32 @llvm.umin.i32(i32 %132, i32 %sub21.i) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %bytes)
  %cmp28.i = icmp ult i32 %133, %bytes
  br i1 %cmp28.i, label %do.body36.i, label %do.end44.i, !prof !456

do.body36.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 814, 0\0A.popsection", ""() #15, !srcloc !508
  unreachable

do.end44.i:                                       ; preds = %do.body11.i
  %sub46.i = sub i32 %1, %bytes
  %134 = ptrtoint ptr %resid to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %sub46.i, ptr %resid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %129, i32 %bytes)
  %cmp.i.i = icmp ult i32 %129, %bytes
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end38.i.i

land.rhs.i.i:                                     ; preds = %do.end44.i
  %.b1.i.i = load i1, ptr @bvec_iter_advance.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.if.then36.i.i_crit_edge, label %if.then.i.i109, !prof !445

land.rhs.i.i.if.then36.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then36.i.i

if.then.i.i109:                                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @bvec_iter_advance.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.132, i32 noundef 107, i32 noundef 9, ptr noundef nonnull @.str.133) #15
  br label %if.then36.i.i

if.then36.i.i:                                    ; preds = %if.then.i.i109, %land.rhs.i.i.if.then36.i.i_crit_edge
  %135 = ptrtoint ptr %bi_size.i105 to i32
  call void @__asan_storeN_noabort(i32 %135, i32 4)
  store i32 0, ptr %bi_size.i105, align 1
  br label %bvec_iter_advance.exit.i

if.end38.i.i:                                     ; preds = %do.end44.i
  %sub.i.i110 = sub i32 %129, %bytes
  %136 = ptrtoint ptr %bi_size.i105 to i32
  call void @__asan_storeN_noabort(i32 %136, i32 4)
  store i32 %sub.i.i110, ptr %bi_size.i105, align 1
  %add.i.i111 = add i32 %126, %bytes
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i.i111)
  %tobool40.not3.i.i = icmp eq i32 %add.i.i111, 0
  br i1 %tobool40.not3.i.i, label %if.end38.i.i.while.end.i.i_crit_edge, label %if.end38.i.i.land.rhs41.i.i_crit_edge

if.end38.i.i.land.rhs41.i.i_crit_edge:            ; preds = %if.end38.i.i
  br label %land.rhs41.i.i

if.end38.i.i.while.end.i.i_crit_edge:             ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i

land.rhs41.i.i:                                   ; preds = %while.body.i.i.land.rhs41.i.i_crit_edge, %if.end38.i.i.land.rhs41.i.i_crit_edge
  %bytes.addr.05.i.i = phi i32 [ %sub46.i.i, %while.body.i.i.land.rhs41.i.i_crit_edge ], [ %add.i.i111, %if.end38.i.i.land.rhs41.i.i_crit_edge ]
  %idx.04.i.i = phi i32 [ %inc.i.i, %while.body.i.i.land.rhs41.i.i_crit_edge ], [ %120, %if.end38.i.i.land.rhs41.i.i_crit_edge ]
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %118, i32 %idx.04.i.i, i32 1
  %137 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %bv_len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bytes.addr.05.i.i, i32 %138)
  %cmp42.not.i.i = icmp ult i32 %bytes.addr.05.i.i, %138
  br i1 %cmp42.not.i.i, label %land.rhs41.i.i.while.end.i.i_crit_edge, label %while.body.i.i

land.rhs41.i.i.while.end.i.i_crit_edge:           ; preds = %land.rhs41.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %land.rhs41.i.i
  %sub46.i.i = sub i32 %bytes.addr.05.i.i, %138
  %inc.i.i = add i32 %idx.04.i.i, 1
  %tobool40.not.i.i = icmp eq i32 %sub46.i.i, 0
  br i1 %tobool40.not.i.i, label %while.body.i.i.while.end.i.i_crit_edge, label %while.body.i.i.land.rhs41.i.i_crit_edge

while.body.i.i.land.rhs41.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs41.i.i

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %land.rhs41.i.i.while.end.i.i_crit_edge, %if.end38.i.i.while.end.i.i_crit_edge
  %idx.0.lcssa.i.i = phi i32 [ %120, %if.end38.i.i.while.end.i.i_crit_edge ], [ %inc.i.i, %while.body.i.i.while.end.i.i_crit_edge ], [ %idx.04.i.i, %land.rhs41.i.i.while.end.i.i_crit_edge ]
  %bytes.addr.0.lcssa.i.i = phi i32 [ 0, %if.end38.i.i.while.end.i.i_crit_edge ], [ 0, %while.body.i.i.while.end.i.i_crit_edge ], [ %bytes.addr.05.i.i, %land.rhs41.i.i.while.end.i.i_crit_edge ]
  %139 = ptrtoint ptr %bi_idx.i97 to i32
  call void @__asan_storeN_noabort(i32 %139, i32 4)
  store i32 %idx.0.lcssa.i.i, ptr %bi_idx.i97, align 1
  %140 = ptrtoint ptr %bi_bvec_done.i100 to i32
  call void @__asan_storeN_noabort(i32 %140, i32 4)
  store i32 %bytes.addr.0.lcssa.i.i, ptr %bi_bvec_done.i100, align 1
  br label %bvec_iter_advance.exit.i

bvec_iter_advance.exit.i:                         ; preds = %while.end.i.i, %if.then36.i.i
  %141 = ptrtoint ptr %resid to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %resid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %tobool48.not.i = icmp eq i32 %142, 0
  br i1 %tobool48.not.i, label %do.body50.i, label %if.end70.i

do.body50.i:                                      ; preds = %bvec_iter_advance.exit.i
  %last_piece.i112 = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 3
  %143 = ptrtoint ptr %last_piece.i112 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %last_piece.i112, align 4, !range !476
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool51.not.i = icmp eq i8 %144, 0
  br i1 %tobool51.not.i, label %do.body61.i, label %do.body50.i.sw.epilog_crit_edge, !prof !456

do.body50.i.sw.epilog_crit_edge:                  ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

do.body61.i:                                      ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 819, 0\0A.popsection", ""() #15, !srcloc !509
  unreachable

if.end70.i:                                       ; preds = %bvec_iter_advance.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %tobool71.not.i = icmp eq i32 %bytes, 0
  br i1 %tobool71.not.i, label %if.end70.i.sw.epilog_crit_edge, label %lor.lhs.false.i114

if.end70.i.sw.epilog_crit_edge:                   ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

lor.lhs.false.i114:                               ; preds = %if.end70.i
  %145 = ptrtoint ptr %bi_bvec_done.i100 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %bi_bvec_done.i100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool73.not.i113 = icmp eq i32 %146, 0
  br i1 %tobool73.not.i113, label %lor.lhs.false.i114.do.body87.i_crit_edge, label %land.lhs.true.i115

lor.lhs.false.i114.do.body87.i_crit_edge:         ; preds = %lor.lhs.false.i114
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body87.i

land.lhs.true.i115:                               ; preds = %lor.lhs.false.i114
  %147 = ptrtoint ptr %bi_idx.i97 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %bi_idx.i97, align 4
  %arrayidx75.i = getelementptr %struct.bio_vec, ptr %118, i32 %148
  %149 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx75.i, align 4
  %bv_offset79.i = getelementptr %struct.bio_vec, ptr %118, i32 %148, i32 2
  %151 = ptrtoint ptr %bv_offset79.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %bv_offset79.i, align 4
  %add81.i = add i32 %152, %146
  %div82240.i = lshr i32 %add81.i, 12
  %add.ptr83.i = getelementptr %struct.page, ptr %150, i32 %div82240.i
  %cmp84.i = icmp eq ptr %add.ptr.i102, %add.ptr83.i
  br i1 %cmp84.i, label %land.lhs.true.i115.sw.epilog_crit_edge, label %land.lhs.true.i115.do.body87.i_crit_edge

land.lhs.true.i115.do.body87.i_crit_edge:         ; preds = %land.lhs.true.i115
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body87.i

land.lhs.true.i115.sw.epilog_crit_edge:           ; preds = %land.lhs.true.i115
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

do.body87.i:                                      ; preds = %land.lhs.true.i115.do.body87.i_crit_edge, %lor.lhs.false.i114.do.body87.i_crit_edge
  %last_piece88.i = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 3
  %153 = ptrtoint ptr %last_piece88.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %last_piece88.i, align 4, !range !476
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %154)
  %tobool89.not.i = icmp eq i8 %154, 0
  br i1 %tobool89.not.i, label %do.body106.i, label %do.body97.i, !prof !445

do.body97.i:                                      ; preds = %do.body87.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 827, 0\0A.popsection", ""() #15, !srcloc !510
  unreachable

do.body106.i:                                     ; preds = %do.body87.i
  %155 = ptrtoint ptr %bi_size.i105 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %bi_size.i105, align 4
  %157 = ptrtoint ptr %bi_idx.i97 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %bi_idx.i97, align 4
  %bv_len111.i = getelementptr %struct.bio_vec, ptr %118, i32 %158, i32 1
  %159 = ptrtoint ptr %bv_len111.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %bv_len111.i, align 4
  %sub113.i = sub i32 %160, %146
  %161 = tail call i32 @llvm.umin.i32(i32 %156, i32 %sub113.i) #15
  %bv_offset122.i = getelementptr %struct.bio_vec, ptr %118, i32 %158, i32 2
  %162 = ptrtoint ptr %bv_offset122.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %bv_offset122.i, align 4
  %add124.i = add i32 %163, %146
  %rem125.i = and i32 %add124.i, 4095
  %sub126.i = sub nuw nsw i32 4096, %rem125.i
  %164 = tail call i32 @llvm.umin.i32(i32 %161, i32 %sub126.i) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %142, i32 %164)
  %cmp133.i = icmp ult i32 %142, %164
  br i1 %cmp133.i, label %do.body141.i116, label %do.end149.i, !prof !456

do.body141.i116:                                  ; preds = %do.body106.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 828, 0\0A.popsection", ""() #15, !srcloc !511
  unreachable

do.end149.i:                                      ; preds = %do.body106.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %142, i32 %164)
  %cmp176.i = icmp eq i32 %142, %164
  %frombool.i117 = zext i1 %cmp176.i to i8
  %165 = ptrtoint ptr %last_piece88.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %frombool.i117, ptr %last_piece88.i, align 4
  br label %sw.epilog

do.body18:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1109, 0\0A.popsection", ""() #15, !srcloc !512
  unreachable

sw.epilog:                                        ; preds = %do.end149.i, %land.lhs.true.i115.sw.epilog_crit_edge, %if.end70.i.sw.epilog_crit_edge, %do.body50.i.sw.epilog_crit_edge, %do.end202.i, %land.lhs.true92.i.sw.epilog_crit_edge, %if.end84.i.sw.epilog_crit_edge, %do.body64.i.sw.epilog_crit_edge, %ceph_msg_data_pages_advance.exit, %ceph_msg_data_pagelist_advance.exit
  %new_piece.0.in = phi i1 [ %36, %ceph_msg_data_pages_advance.exit ], [ %24, %ceph_msg_data_pagelist_advance.exit ], [ true, %do.end202.i ], [ false, %do.body64.i.sw.epilog_crit_edge ], [ false, %land.lhs.true92.i.sw.epilog_crit_edge ], [ false, %if.end84.i.sw.epilog_crit_edge ], [ true, %do.end149.i ], [ false, %do.body50.i.sw.epilog_crit_edge ], [ false, %land.lhs.true.i115.sw.epilog_crit_edge ], [ false, %if.end70.i.sw.epilog_crit_edge ]
  %166 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %cursor, align 4
  %sub = sub i32 %167, %bytes
  store i32 %sub, ptr %cursor, align 4
  %168 = ptrtoint ptr %resid to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %resid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool25.not = icmp ne i32 %169, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %167, i32 %bytes)
  %tobool27.not = icmp eq i32 %167, %bytes
  %or.cond = select i1 %tobool25.not, i1 true, i1 %tobool27.not
  br i1 %or.cond, label %sw.epilog.if.end61_crit_edge, label %if.then28

sw.epilog.if.end61_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end61

if.then28:                                        ; preds = %sw.epilog
  %last_piece = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 3
  %170 = ptrtoint ptr %last_piece to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %last_piece, align 4, !range !476
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool29.not = icmp eq i8 %171, 0
  br i1 %tobool29.not, label %do.end47, label %if.then28.if.end53_crit_edge, !prof !456

if.then28.if.end53_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53

do.end47:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1115, i32 noundef 9, ptr noundef null) #15
  br label %if.end53

if.end53:                                         ; preds = %do.end47, %if.then28.if.end53_crit_edge
  %172 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %data, align 4
  %incdec.ptr = getelementptr %struct.ceph_msg_data, ptr %173, i32 1
  store ptr %incdec.ptr, ptr %data, align 4
  tail call fastcc void @__ceph_msg_data_cursor_init(ptr noundef %cursor)
  br label %if.end61

if.end61:                                         ; preds = %if.end53, %sw.epilog.if.end61_crit_edge
  %new_piece.1.shrunk = phi i1 [ %new_piece.0.in, %sw.epilog.if.end61_crit_edge ], [ true, %if.end53 ]
  %need_crc = getelementptr inbounds %struct.ceph_msg_data_cursor, ptr %cursor, i32 0, i32 4
  %frombool63 = zext i1 %new_piece.1.shrunk to i8
  %174 = ptrtoint ptr %need_crc to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %frombool63, ptr %need_crc, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_crc32c_page(i32 noundef %crc, ptr noundef %page, i32 noundef %page_offset, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.134, i32 noundef 44) #15
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %page, align 4
  %shr.i.i = lshr i32 %1, 30
  %2 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %shr.i.i, label %entry.if.then.i_crit_edge [
    i32 2, label %entry.if.else.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

is_highmem_idx.exit.i:                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %3 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp2.i.not.i = icmp eq i32 %3, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i_crit_edge, label %is_highmem_idx.exit.i.if.then.i_crit_edge

is_highmem_idx.exit.i.if.then.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

is_highmem_idx.exit.i.if.else.i_crit_edge:        ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else.i

if.then.i:                                        ; preds = %is_highmem_idx.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %page) #15
  br label %kmap.exit

if.else.i:                                        ; preds = %is_highmem_idx.exit.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %page) #15
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i, %if.then.i
  %addr.0.i = phi ptr [ %call6.i, %if.else.i ], [ %call5.i, %if.then.i ]
  %cmp = icmp eq ptr %addr.0.i, null
  br i1 %cmp, label %do.body2, label %do.end7, !prof !456

do.body2:                                         ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1129, 0\0A.popsection", ""() #15, !srcloc !513
  unreachable

do.end7:                                          ; preds = %kmap.exit
  %add.ptr = getelementptr i8, ptr %addr.0.i, i32 %page_offset
  %call8 = tail call i32 @crc32c(i32 noundef %crc, ptr noundef %add.ptr, i32 noundef %length) #15
  tail call void @__might_sleep(ptr noundef nonnull @.str.134, i32 noundef 55) #15
  %4 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %page, align 4
  %shr.i.i12 = lshr i32 %5, 30
  %6 = zext i32 %shr.i.i12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %shr.i.i12, label %do.end7.kunmap.exit_crit_edge [
    i32 2, label %do.end7.if.end.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i14
  ]

do.end7.if.end.i_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

do.end7.kunmap.exit_crit_edge:                    ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %kunmap.exit

is_highmem_idx.exit.i14:                          ; preds = %do.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %7 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp2.i.not.i13 = icmp eq i32 %7, 2
  br i1 %cmp2.i.not.i13, label %is_highmem_idx.exit.i14.if.end.i_crit_edge, label %is_highmem_idx.exit.i14.kunmap.exit_crit_edge

is_highmem_idx.exit.i14.kunmap.exit_crit_edge:    ; preds = %is_highmem_idx.exit.i14
  call void @__sanitizer_cov_trace_pc() #17
  br label %kunmap.exit

is_highmem_idx.exit.i14.if.end.i_crit_edge:       ; preds = %is_highmem_idx.exit.i14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.i:                                         ; preds = %is_highmem_idx.exit.i14.if.end.i_crit_edge, %do.end7.if.end.i_crit_edge
  tail call void @kunmap_high(ptr noundef %page) #15
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i, %is_highmem_idx.exit.i14.kunmap.exit_crit_edge, %do.end7.kunmap.exit_crit_edge
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ceph_addr_is_blank(ptr nocapture noundef readonly %addr) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %in_addr = getelementptr inbounds %struct.ceph_entity_addr, ptr %addr, i32 0, i32 2
  %0 = ptrtoint ptr %in_addr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %ss.sroa.0.0.copyload = load i16, ptr %in_addr, align 1
  %1 = zext i16 %ss.sroa.0.0.copyload to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.200)
  switch i16 %ss.sroa.0.0.copyload, label %entry.cleanup_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %ss.sroa.55.0.in_addr.sroa_idx = getelementptr inbounds %struct.ceph_entity_addr, ptr %addr, i32 0, i32 2, i32 0, i32 1
  %2 = ptrtoint ptr %ss.sroa.55.0.in_addr.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %ss.sroa.55.0.copyload = load i32, ptr %ss.sroa.55.0.in_addr.sroa_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ss.sroa.55.0.copyload)
  %cmp = icmp eq i32 %ss.sroa.55.0.copyload, 0
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %ss.sroa.9.0.in_addr.sroa_idx = getelementptr inbounds %struct.ceph_entity_addr, ptr %addr, i32 0, i32 2, i32 0, i32 1, i32 16
  %3 = ptrtoint ptr %ss.sroa.9.0.in_addr.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %ss.sroa.9.0.copyload = load i32, ptr %ss.sroa.9.0.in_addr.sroa_idx, align 1
  %ss.sroa.8.0.in_addr.sroa_idx = getelementptr inbounds %struct.ceph_entity_addr, ptr %addr, i32 0, i32 2, i32 0, i32 1, i32 12
  %4 = ptrtoint ptr %ss.sroa.8.0.in_addr.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %ss.sroa.8.0.copyload = load i32, ptr %ss.sroa.8.0.in_addr.sroa_idx, align 1
  %ss.sroa.7.0.in_addr.sroa_idx = getelementptr inbounds %struct.ceph_entity_addr, ptr %addr, i32 0, i32 2, i32 0, i32 1, i32 8
  %5 = ptrtoint ptr %ss.sroa.7.0.in_addr.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %ss.sroa.7.0.copyload = load i32, ptr %ss.sroa.7.0.in_addr.sroa_idx, align 1
  %ss.sroa.6.0.in_addr.sroa_idx = getelementptr inbounds %struct.ceph_entity_addr, ptr %addr, i32 0, i32 2, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %ss.sroa.6.0.in_addr.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %ss.sroa.6.0.copyload = load i32, ptr %ss.sroa.6.0.in_addr.sroa_idx, align 1
  %or.i = or i32 %ss.sroa.8.0.copyload, %ss.sroa.9.0.copyload
  %or5.i = or i32 %or.i, %ss.sroa.7.0.copyload
  %or8.i = or i32 %or5.i, %ss.sroa.6.0.copyload
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp.i, %sw.bb2 ], [ %cmp, %sw.bb ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ceph_addr_port(ptr nocapture noundef readonly %addr) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %in_addr = getelementptr inbounds %struct.ceph_entity_addr, ptr %addr, i32 0, i32 2
  %0 = ptrtoint ptr %in_addr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %in_addr, align 1
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.201)
  switch i16 %1, label %entry.return_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb6
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %in_addr, i32 0, i32 1
  br label %return.sink.split

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %in_addr, i32 0, i32 1
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb6, %sw.bb
  %sin6_port.sink = phi ptr [ %sin6_port, %sw.bb6 ], [ %sin_port, %sw.bb ]
  %3 = ptrtoint ptr %sin6_port.sink to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %sin6_port.sink, align 1
  %phi.cast = zext i16 %4 to i32
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0.shrunk = phi i32 [ 0, %entry.return_crit_edge ], [ %phi.cast, %return.sink.split ]
  ret i32 %retval.0.shrunk
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ceph_addr_set_port(ptr nocapture noundef %addr, i32 noundef %p) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %in_addr = getelementptr inbounds %struct.ceph_entity_addr, ptr %addr, i32 0, i32 2
  %0 = ptrtoint ptr %in_addr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %in_addr, align 1
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.202)
  switch i16 %1, label %entry.sw.epilog_crit_edge [
    i16 2, label %do.body
    i16 10, label %do.body6
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %in_addr, i32 0, i32 1
  br label %sw.epilog.sink.split

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %in_addr, i32 0, i32 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %do.body6, %do.body
  %sin6_port.sink = phi ptr [ %sin6_port, %do.body6 ], [ %sin_port, %do.body ]
  %conv9 = trunc i32 %p to i16
  %3 = ptrtoint ptr %sin6_port.sink to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %conv9, ptr %sin6_port.sink, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_parse_ips(ptr noundef %c, ptr noundef %end, ptr noundef %addr, i32 noundef %max_count, ptr noundef writeonly %count, i8 noundef zeroext %delim) local_unnamed_addr #0 align 64 {
entry:
  %ip_addr.i.i = alloca ptr, align 4
  %ipend = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %end235 = ptrtoint ptr %end to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_parse_ips.__UNIQUE_ID_ddebug677, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_parse_ips, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !459

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sub.ptr.rhs.cast = ptrtoint ptr %c to i32
  %sub.ptr.sub = sub i32 %end235, %sub.ptr.rhs.cast
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_parse_ips.__UNIQUE_ID_ddebug677, ptr noundef nonnull @.str.46, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1279, i32 noundef %sub.ptr.sub, ptr noundef %c) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_count)
  %cmp218 = icmp sgt i32 %max_count, 0
  br i1 %cmp218, label %do.end.for.body_crit_edge, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %i.0220 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %p.0219 = phi ptr [ %incdec.ptr103, %for.inc.for.body_crit_edge ], [ %c, %do.end.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ipend) #15
  %0 = ptrtoint ptr %ipend to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ipend, align 4, !annotation !467
  %1 = ptrtoint ptr %p.0219 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %p.0219, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 91, i8 %2)
  %cmp4 = icmp eq i8 %2, 91
  %spec.select = select i1 %cmp4, i8 93, i8 %delim
  %spec.select160.idx = zext i1 %cmp4 to i32
  %spec.select160 = getelementptr i8, ptr %p.0219, i32 %spec.select160.idx
  %sub.ptr.rhs.cast9 = ptrtoint ptr %spec.select160 to i32
  %sub.ptr.sub10 = sub i32 %end235, %sub.ptr.rhs.cast9
  %arrayidx = getelementptr %struct.ceph_entity_addr, ptr %addr, i32 %i.0220
  %in_addr.i.i = getelementptr %struct.ceph_entity_addr, ptr %addr, i32 %i.0220, i32 2
  %3 = call ptr @memset(ptr %in_addr.i.i, i32 0, i32 128)
  %sin_addr.i.i = getelementptr %struct.ceph_entity_addr, ptr %addr, i32 %i.0220, i32 2, i32 0, i32 1
  %conv.i.i = zext i8 %spec.select to i32
  %call.i.i = call i32 @in4_pton(ptr noundef %spec.select160, i32 noundef %sub.ptr.sub10, ptr noundef %sin_addr.i.i, i32 noundef %conv.i.i, ptr noundef nonnull %ipend) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.ceph_parse_server_name.exit.thread_crit_edge

for.body.ceph_parse_server_name.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_parse_server_name.exit.thread

if.end.i.i:                                       ; preds = %for.body
  %sin6_addr.i.i = getelementptr %struct.ceph_entity_addr, ptr %addr, i32 %i.0220, i32 2, i32 0, i32 1, i32 4
  %call5.i.i = call i32 @in6_pton(ptr noundef %spec.select160, i32 noundef %sub.ptr.sub10, ptr noundef %sin6_addr.i.i, i32 noundef %conv.i.i, ptr noundef nonnull %ipend) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.then.i, label %if.end.i.i.ceph_parse_server_name.exit.thread_crit_edge

if.end.i.i.ceph_parse_server_name.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_parse_server_name.exit.thread

ceph_parse_server_name.exit.thread:               ; preds = %if.end.i.i.ceph_parse_server_name.exit.thread_crit_edge, %for.body.ceph_parse_server_name.exit.thread_crit_edge
  %.sink.i.i = phi i16 [ 2, %for.body.ceph_parse_server_name.exit.thread_crit_edge ], [ 10, %if.end.i.i.ceph_parse_server_name.exit.thread_crit_edge ]
  %4 = ptrtoint ptr %in_addr.i.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %.sink.i.i, ptr %in_addr.i.i, align 1
  br label %if.end14

if.then.i:                                        ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip_addr.i.i) #15
  %5 = ptrtoint ptr %ip_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ip_addr.i.i, align 4
  %call.i9.i = call ptr @memchr(ptr noundef %spec.select160, i32 noundef %conv.i.i, i32 noundef %sub.ptr.sub10) #19
  %call1.i.i = call ptr @memchr(ptr noundef %spec.select160, i32 noundef 58, i32 noundef %sub.ptr.sub10) #19
  %tobool.not.i10.i = icmp eq ptr %call.i9.i, null
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  %or.cond.i.i = select i1 %tobool.not.i10.i, i1 true, i1 %tobool2.not.i.i
  br i1 %or.cond.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %cmp.i.i = icmp ult ptr %call.i9.i, %call1.i.i
  %call.call1.i.i = select i1 %cmp.i.i, ptr %call.i9.i, ptr %call1.i.i
  br label %if.end12.i.i

if.else.i.i:                                      ; preds = %if.then.i
  %tobool.not.not.i.i = xor i1 %tobool.not.i10.i, true
  %or.cond65.i.i = select i1 %tobool.not.not.i.i, i1 true, i1 %tobool2.not.i.i
  br i1 %or.cond65.i.i, label %if.else8.i.i, label %if.else.i.i.if.end12.i.i_crit_edge

if.else.i.i.if.end12.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i.i

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i = getelementptr i8, ptr %spec.select160, i32 %sub.ptr.sub10
  %spec.select.i.i = select i1 %tobool.not.i10.i, ptr %add.ptr.i.i, ptr %call.i9.i
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.else8.i.i, %if.else.i.i.if.end12.i.i_crit_edge, %if.then.i.i
  %end.0.i.i = phi ptr [ %call.call1.i.i, %if.then.i.i ], [ %call1.i.i, %if.else.i.i.if.end12.i.i_crit_edge ], [ %spec.select.i.i, %if.else8.i.i ]
  %cmp13.not.i.i = icmp ugt ptr %end.0.i.i, %spec.select160
  br i1 %cmp13.not.i.i, label %if.end16.i.i, label %ceph_parse_server_name.exit.thread172

ceph_parse_server_name.exit.thread172:            ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip_addr.i.i) #15
  br label %cleanup.thread

if.end16.i.i:                                     ; preds = %if.end12.i.i
  %6 = call i32 @llvm.read_register.i32(metadata !435) #15
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %task.i.i, align 8
  %nsproxy.i.i = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 110
  %10 = ptrtoint ptr %nsproxy.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nsproxy.i.i, align 4
  %net_ns.i.i = getelementptr inbounds %struct.nsproxy, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %net_ns.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net_ns.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %end.0.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast9
  %call18.i.i = call i32 @dns_query(ptr noundef %13, ptr noundef null, ptr noundef %spec.select160, i32 noundef %sub.ptr.sub.i.i, ptr noundef null, ptr noundef nonnull %ip_addr.i.i, ptr noundef null, i1 noundef zeroext false) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp19.i.i = icmp sgt i32 %call18.i.i, 0
  br i1 %cmp19.i.i, label %if.then21.i.i, label %if.end16.i.i.ceph_parse_server_name.exit_crit_edge

if.end16.i.i.ceph_parse_server_name.exit_crit_edge: ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_parse_server_name.exit

if.then21.i.i:                                    ; preds = %if.end16.i.i
  %14 = ptrtoint ptr %ip_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ip_addr.i.i, align 4
  %16 = call ptr @memset(ptr %in_addr.i.i, i32 0, i32 128)
  %call.i.i.i = call i32 @in4_pton(ptr noundef %15, i32 noundef %call18.i.i, ptr noundef %sin_addr.i.i, i32 noundef 255, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then21.i.i.ceph_parse_server_name.exit.thread175_crit_edge

if.then21.i.i.ceph_parse_server_name.exit.thread175_crit_edge: ; preds = %if.then21.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_parse_server_name.exit.thread175

if.end.i.i.i:                                     ; preds = %if.then21.i.i
  %call5.i.i.i = call i32 @in6_pton(ptr noundef %15, i32 noundef %call18.i.i, ptr noundef %sin6_addr.i.i, i32 noundef 255, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %if.end.i.i.i.ceph_parse_server_name.exit_crit_edge, label %if.end.i.i.i.ceph_parse_server_name.exit.thread175_crit_edge

if.end.i.i.i.ceph_parse_server_name.exit.thread175_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_parse_server_name.exit.thread175

if.end.i.i.i.ceph_parse_server_name.exit_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_parse_server_name.exit

ceph_parse_server_name.exit.thread175:            ; preds = %if.end.i.i.i.ceph_parse_server_name.exit.thread175_crit_edge, %if.then21.i.i.ceph_parse_server_name.exit.thread175_crit_edge
  %.sink.i.i.i = phi i16 [ 2, %if.then21.i.i.ceph_parse_server_name.exit.thread175_crit_edge ], [ 10, %if.end.i.i.i.ceph_parse_server_name.exit.thread175_crit_edge ]
  %17 = ptrtoint ptr %in_addr.i.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %.sink.i.i.i, ptr %in_addr.i.i, align 1
  %18 = ptrtoint ptr %ip_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ip_addr.i.i, align 4
  call void @kfree(ptr noundef %19) #15
  %20 = ptrtoint ptr %ipend to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %end.0.i.i, ptr %ipend, align 4
  %call31.i.i = call ptr @ceph_pr_addr(ptr noundef %arrayidx) #15
  %call34.i.i178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, i32 noundef %sub.ptr.sub.i.i, ptr noundef %spec.select160, i32 noundef 0, ptr noundef %call31.i.i) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip_addr.i.i) #15
  br label %if.end14

ceph_parse_server_name.exit:                      ; preds = %if.end.i.i.i.ceph_parse_server_name.exit_crit_edge, %if.end16.i.i.ceph_parse_server_name.exit_crit_edge
  %ret.0.ph.i.i = phi i32 [ -3, %if.end16.i.i.ceph_parse_server_name.exit_crit_edge ], [ -22, %if.end.i.i.i.ceph_parse_server_name.exit_crit_edge ]
  %21 = ptrtoint ptr %ip_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ip_addr.i.i, align 4
  call void @kfree(ptr noundef %22) #15
  %23 = ptrtoint ptr %ipend to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %end.0.i.i, ptr %ipend, align 4
  %call34.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, i32 noundef %sub.ptr.sub.i.i, ptr noundef %spec.select160, i32 noundef %ret.0.ph.i.i, ptr noundef nonnull @.str.137) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip_addr.i.i) #15
  br label %cleanup.thread

if.end14:                                         ; preds = %ceph_parse_server_name.exit.thread175, %ceph_parse_server_name.exit.thread
  %24 = ptrtoint ptr %ipend to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ipend, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 93, i8 %spec.select)
  %cmp16 = icmp eq i8 %spec.select, 93
  br i1 %cmp16, label %if.then18, label %if.end14.if.end42_crit_edge

if.end14.if.end42_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

if.then18:                                        ; preds = %if.end14
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 93, i8 %27)
  %cmp20.not = icmp eq i8 %27, 93
  br i1 %cmp20.not, label %if.end40, label %do.body23

do.body23:                                        ; preds = %if.then18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_parse_ips.__UNIQUE_ID_ddebug678, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_parse_ips, %if.then35)) #15
          to label %cleanup [label %if.then35], !srcloc !459

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_parse_ips.__UNIQUE_ID_ddebug678, ptr noundef nonnull @.str.48, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1300) #15
  br label %cleanup.thread

if.end40:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  %incdec.ptr41 = getelementptr i8, ptr %25, i32 1
  br label %if.end42

if.end42:                                         ; preds = %if.end40, %if.end14.if.end42_crit_edge
  %p.2 = phi ptr [ %incdec.ptr41, %if.end40 ], [ %25, %if.end14.if.end42_crit_edge ]
  %p.2236 = ptrtoint ptr %p.2 to i32
  %cmp43 = icmp ult ptr %p.2, %end
  br i1 %cmp43, label %land.lhs.true, label %if.end42.if.end70_crit_edge

if.end42.if.end70_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

land.lhs.true:                                    ; preds = %if.end42
  %28 = ptrtoint ptr %p.2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %p.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %29)
  %cmp46 = icmp eq i8 %29, 58
  br i1 %cmp46, label %while.cond.preheader, label %land.lhs.true.if.end70_crit_edge

land.lhs.true.if.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

while.cond.preheader:                             ; preds = %land.lhs.true
  %p.3211 = getelementptr i8, ptr %p.2, i32 1
  %cmp50212 = icmp ult ptr %p.3211, %end
  br i1 %cmp50212, label %land.lhs.true52.preheader, label %while.cond.preheader.if.end70_crit_edge

while.cond.preheader.if.end70_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

land.lhs.true52.preheader:                        ; preds = %while.cond.preheader
  %uglygep = getelementptr i8, ptr %p.2, i32 %end235
  %30 = sub i32 0, %p.2236
  %uglygep237 = getelementptr i8, ptr %uglygep, i32 %30
  br label %land.lhs.true52

land.lhs.true52:                                  ; preds = %while.body.land.lhs.true52_crit_edge, %land.lhs.true52.preheader
  %p.3214 = phi ptr [ %p.3, %while.body.land.lhs.true52_crit_edge ], [ %p.3211, %land.lhs.true52.preheader ]
  %port.0213 = phi i32 [ %add, %while.body.land.lhs.true52_crit_edge ], [ 0, %land.lhs.true52.preheader ]
  %31 = ptrtoint ptr %p.3214 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %p.3214, align 1
  %33 = add i8 %32, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %33)
  %34 = icmp ult i8 %33, 10
  br i1 %34, label %while.body, label %land.lhs.true52.while.end_crit_edge

land.lhs.true52.while.end_crit_edge:              ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %land.lhs.true52
  %conv53 = zext i8 %32 to i32
  %mul = mul i32 %port.0213, 10
  %sub = add i32 %mul, -48
  %add = add i32 %sub, %conv53
  %p.3 = getelementptr i8, ptr %p.3214, i32 1
  %exitcond.not = icmp eq ptr %p.3, %uglygep237
  br i1 %exitcond.not, label %while.body.while.end_crit_edge, label %while.body.land.lhs.true52_crit_edge

while.body.land.lhs.true52_crit_edge:             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true52

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.lhs.true52.while.end_crit_edge
  %port.0.lcssa = phi i32 [ %port.0213, %land.lhs.true52.while.end_crit_edge ], [ %add, %while.body.while.end_crit_edge ]
  %p.3.lcssa = phi ptr [ %p.3214, %land.lhs.true52.while.end_crit_edge ], [ %uglygep237, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port.0.lcssa)
  %cmp61 = icmp eq i32 %port.0.lcssa, 0
  br i1 %cmp61, label %while.end.if.end70_crit_edge, label %if.else

while.end.if.end70_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

if.else:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %port.0.lcssa)
  %cmp64 = icmp sgt i32 %port.0.lcssa, 65535
  br i1 %cmp64, label %if.else.cleanup.thread_crit_edge, label %if.else.if.end70_crit_edge

if.else.if.end70_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end70

if.else.cleanup.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread

if.end70:                                         ; preds = %if.else.if.end70_crit_edge, %while.end.if.end70_crit_edge, %while.cond.preheader.if.end70_crit_edge, %land.lhs.true.if.end70_crit_edge, %if.end42.if.end70_crit_edge
  %port.1 = phi i32 [ %port.0.lcssa, %if.else.if.end70_crit_edge ], [ 6789, %while.end.if.end70_crit_edge ], [ 6789, %land.lhs.true.if.end70_crit_edge ], [ 6789, %if.end42.if.end70_crit_edge ], [ 6789, %while.cond.preheader.if.end70_crit_edge ]
  %p.4 = phi ptr [ %p.3.lcssa, %if.else.if.end70_crit_edge ], [ %p.3.lcssa, %while.end.if.end70_crit_edge ], [ %p.2, %land.lhs.true.if.end70_crit_edge ], [ %p.2, %if.end42.if.end70_crit_edge ], [ %p.3211, %while.cond.preheader.if.end70_crit_edge ]
  %35 = ptrtoint ptr %in_addr.i.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %in_addr.i.i, align 1
  %37 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.203)
  switch i16 %36, label %if.end70.ceph_addr_set_port.exit_crit_edge [
    i16 2, label %do.body.i
    i16 10, label %do.body6.i
  ]

if.end70.ceph_addr_set_port.exit_crit_edge:       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_addr_set_port.exit

do.body.i:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %in_addr.i.i, i32 0, i32 1
  br label %sw.epilog.sink.split.i

do.body6.i:                                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %in_addr.i.i, i32 0, i32 1
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %do.body6.i, %do.body.i
  %sin6_port.sink.i = phi ptr [ %sin6_port.i, %do.body6.i ], [ %sin_port.i, %do.body.i ]
  %conv9.i = trunc i32 %port.1 to i16
  %38 = ptrtoint ptr %sin6_port.sink.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 2)
  store i16 %conv9.i, ptr %sin6_port.sink.i, align 1
  br label %ceph_addr_set_port.exit

ceph_addr_set_port.exit:                          ; preds = %sw.epilog.sink.split.i, %if.end70.ceph_addr_set_port.exit_crit_edge
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 16777216, ptr %arrayidx, align 1
  %nonce = getelementptr %struct.ceph_entity_addr, ptr %addr, i32 %i.0220, i32 1
  %40 = ptrtoint ptr %nonce to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 0, ptr %nonce, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_parse_ips.__UNIQUE_ID_ddebug679, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_parse_ips, %if.then86)) #15
          to label %do.end92 [label %if.then86], !srcloc !459

if.then86:                                        ; preds = %ceph_addr_set_port.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call89 = call ptr @ceph_pr_addr(ptr noundef %arrayidx)
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_parse_ips.__UNIQUE_ID_ddebug679, ptr noundef nonnull @.str.50, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1334, ptr noundef nonnull @.str.44, ptr noundef %call89) #15
  br label %do.end92

do.end92:                                         ; preds = %if.then86, %ceph_addr_set_port.exit
  %cmp93 = icmp eq ptr %p.4, %end
  br i1 %cmp93, label %for.end.thread, label %if.end96

for.end.thread:                                   ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ipend) #15
  br label %if.end109

if.end96:                                         ; preds = %do.end92
  %41 = ptrtoint ptr %p.4 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %p.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %delim)
  %cmp99.not = icmp eq i8 %42, %delim
  br i1 %cmp99.not, label %for.inc, label %if.end96.cleanup.thread_crit_edge

if.end96.cleanup.thread_crit_edge:                ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end96.cleanup.thread_crit_edge, %if.else.cleanup.thread_crit_edge, %if.then35, %ceph_parse_server_name.exit, %ceph_parse_server_name.exit.thread172
  %ret.1.ph = phi i32 [ -22, %ceph_parse_server_name.exit.thread172 ], [ -22, %if.then35 ], [ %ret.0.ph.i.i, %ceph_parse_server_name.exit ], [ -22, %if.end96.cleanup.thread_crit_edge ], [ -22, %if.else.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ipend) #15
  br label %cleanup114

cleanup:                                          ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ipend) #15
  br label %cleanup114

for.inc:                                          ; preds = %if.end96
  %incdec.ptr103 = getelementptr i8, ptr %p.4, i32 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ipend) #15
  %inc = add nuw nsw i32 %i.0220, 1
  %exitcond238.not = icmp eq i32 %inc, %max_count
  br i1 %exitcond238.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %i.0201 = phi i32 [ 0, %do.end.for.end_crit_edge ], [ %max_count, %for.inc.for.end_crit_edge ]
  %p.6 = phi ptr [ %c, %do.end.for.end_crit_edge ], [ %incdec.ptr103, %for.inc.for.end_crit_edge ]
  %cmp106.not = icmp eq ptr %p.6, %end
  br i1 %cmp106.not, label %for.end.if.end109_crit_edge, label %for.end.cleanup114_crit_edge

for.end.cleanup114_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup114

for.end.if.end109_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end109

if.end109:                                        ; preds = %for.end.if.end109_crit_edge, %for.end.thread
  %i.0201245 = phi i32 [ %i.0220, %for.end.thread ], [ %i.0201, %for.end.if.end109_crit_edge ]
  %tobool110.not = icmp eq ptr %count, null
  br i1 %tobool110.not, label %if.end109.cleanup114_crit_edge, label %if.then111

if.end109.cleanup114_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup114

if.then111:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #17
  %add112 = add i32 %i.0201245, 1
  %43 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add112, ptr %count, align 4
  br label %cleanup114

cleanup114:                                       ; preds = %if.then111, %if.end109.cleanup114_crit_edge, %for.end.cleanup114_crit_edge, %cleanup, %cleanup.thread
  %retval.0 = phi i32 [ 0, %if.then111 ], [ 0, %if.end109.cleanup114_crit_edge ], [ -22, %cleanup ], [ -22, %for.end.cleanup114_crit_edge ], [ %ret.1.ph, %cleanup.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_con_process_message(ptr noundef %con) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %in_msg = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 19
  %0 = ptrtoint ptr %in_msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_msg, align 8
  %con2 = getelementptr inbounds %struct.ceph_msg, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %con2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %con2, align 4
  %cmp.not = icmp eq ptr %3, %con
  br i1 %cmp.not, label %do.end9, label %do.body4, !prof !445

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1363, 0\0A.popsection", ""() #15, !srcloc !514
  unreachable

do.end9:                                          ; preds = %entry
  %4 = ptrtoint ptr %in_msg to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %in_msg, align 8
  %peer_name = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 8
  %5 = ptrtoint ptr %peer_name to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %peer_name, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp11 = icmp eq i8 %6, 0
  br i1 %cmp11, label %if.then13, label %do.end9.if.end15_crit_edge

do.end9.if.end15_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then13:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #17
  %src = getelementptr inbounds %struct.ceph_msg_header, ptr %1, i32 0, i32 9
  %7 = call ptr @memcpy(ptr %peer_name, ptr %src, i32 9)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %do.end9.if.end15_crit_edge
  %in_seq = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 17
  %8 = ptrtoint ptr %in_seq to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %in_seq, align 8
  %inc = add i64 %9, 1
  store i64 %inc, ptr %in_seq, align 8
  %mutex = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 12
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_process_message.__UNIQUE_ID_ddebug680, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_process_message, %if.then24)) #15
          to label %do.end46 [label %if.then24], !srcloc !459

if.then24:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %11 = load i64, ptr %1, align 4
  %12 = tail call i64 @llvm.bswap.i64(i64 %11)
  %src28 = getelementptr inbounds %struct.ceph_msg_header, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %src28 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %src28, align 4
  %conv30 = zext i8 %14 to i32
  %call31 = tail call ptr @ceph_entity_type_name(i32 noundef %conv30) #15
  %num = getelementptr inbounds %struct.ceph_msg_header, ptr %1, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %num to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %num, align 1
  %17 = tail call i64 @llvm.bswap.i64(i64 %16)
  %type35 = getelementptr inbounds %struct.ceph_msg_header, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %type35 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %type35, align 4
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %conv36 = zext i16 %20 to i32
  %call40 = tail call ptr @ceph_msg_type_name(i32 noundef %conv36) #15
  %front_len = getelementptr inbounds %struct.ceph_msg_header, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %front_len to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %front_len, align 2
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %middle_len = getelementptr inbounds %struct.ceph_msg_header, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %middle_len to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %middle_len, align 2
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %data_len = getelementptr inbounds %struct.ceph_msg_header, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %data_len to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %data_len, align 2
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %in_front_crc = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 22
  %30 = ptrtoint ptr %in_front_crc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %in_front_crc, align 4
  %in_middle_crc = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 23
  %32 = ptrtoint ptr %in_middle_crc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %in_middle_crc, align 8
  %in_data_crc = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 24
  %34 = ptrtoint ptr %in_data_crc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %in_data_crc, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_process_message.__UNIQUE_ID_ddebug680, ptr noundef nonnull @.str.53, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1381, ptr noundef %1, i64 noundef %12, ptr noundef %call31, i64 noundef %17, i32 noundef %conv36, ptr noundef %call40, i32 noundef %23, i32 noundef %26, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35) #15
  br label %do.end46

do.end46:                                         ; preds = %if.then24, %if.end15
  %ops = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 1
  %36 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops, align 4
  %dispatch = getelementptr inbounds %struct.ceph_connection_operations, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %dispatch to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dispatch, align 4
  tail call void %39(ptr noundef %con, ptr noundef %1) #15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_entity_type_name(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_msg_type_name(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ceph_messenger_reset_nonce(ptr nocapture noundef %msgr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %nonce1 = getelementptr inbounds %struct.ceph_entity_inst, ptr %msgr, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %nonce1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %nonce1, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %add = add i32 %2, 1000000
  %3 = tail call i32 @llvm.bswap.i32(i32 %add)
  %4 = ptrtoint ptr %nonce1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %3, ptr %nonce1, align 1
  %options.i.i = getelementptr i8, ptr %msgr, i32 -176
  %5 = ptrtoint ptr %options.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %options.i.i, align 8
  %con_modes.i.i = getelementptr inbounds %struct.ceph_options, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %con_modes.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %con_modes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.not.i = icmp eq i32 %8, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %entry.ceph_encode_my_addr.exit_crit_edge

entry.ceph_encode_my_addr.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_encode_my_addr.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %my_enc_addr.i = getelementptr inbounds %struct.ceph_messenger, ptr %msgr, i32 0, i32 1
  %addr.i = getelementptr inbounds %struct.ceph_entity_inst, ptr %msgr, i32 0, i32 1
  %9 = call ptr @memcpy(ptr %my_enc_addr.i, ptr %addr.i, i32 136)
  %10 = ptrtoint ptr %my_enc_addr.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 0, ptr %my_enc_addr.i, align 1
  br label %ceph_encode_my_addr.exit

ceph_encode_my_addr.exit:                         ; preds = %if.then.i, %entry.ceph_encode_my_addr.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_messenger_init(ptr noundef %msgr, ptr noundef readonly %myaddr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %global_seq_lock = getelementptr inbounds %struct.ceph_messenger, ptr %msgr, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %global_seq_lock, ptr noundef nonnull @.str.54, ptr noundef nonnull @ceph_messenger_init.__key, i16 noundef signext 3) #15
  %tobool.not = icmp eq ptr %myaddr, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %in_addr = getelementptr inbounds %struct.ceph_entity_inst, ptr %msgr, i32 0, i32 1, i32 2
  %in_addr1 = getelementptr inbounds %struct.ceph_entity_addr, ptr %myaddr, i32 0, i32 2
  %0 = call ptr @memcpy(ptr %in_addr, ptr %in_addr1, i32 128)
  %1 = ptrtoint ptr %in_addr to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %in_addr, align 1
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.204)
  switch i16 %2, label %if.then.if.end_crit_edge [
    i16 2, label %do.body.i
    i16 10, label %do.body6.i
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %in_addr, i32 0, i32 1
  br label %sw.epilog.sink.split.i

do.body6.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %in_addr, i32 0, i32 1
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %do.body6.i, %do.body.i
  %sin6_port.sink.i = phi ptr [ %sin6_port.i, %do.body6.i ], [ %sin_port.i, %do.body.i ]
  %4 = ptrtoint ptr %sin6_port.sink.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 0, ptr %sin6_port.sink.i, align 1
  br label %if.end

if.end:                                           ; preds = %sw.epilog.sink.split.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %addr5 = getelementptr inbounds %struct.ceph_entity_inst, ptr %msgr, i32 0, i32 1
  %5 = ptrtoint ptr %addr5 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 50331648, ptr %addr5, align 1
  %nonce = getelementptr inbounds %struct.ceph_entity_inst, ptr %msgr, i32 0, i32 1, i32 1
  br label %do.body6

do.body6:                                         ; preds = %do.body6.do.body6_crit_edge, %if.end
  tail call void @get_random_bytes(ptr noundef %nonce, i32 noundef 4) #15
  %6 = ptrtoint ptr %nonce to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %nonce, align 1
  %tobool12.not = icmp eq i32 %7, 0
  br i1 %tobool12.not, label %do.body6.do.body6_crit_edge, label %do.end13

do.body6.do.body6_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body6

do.end13:                                         ; preds = %do.body6
  %options.i.i = getelementptr i8, ptr %msgr, i32 -176
  %8 = ptrtoint ptr %options.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %options.i.i, align 8
  %con_modes.i.i = getelementptr inbounds %struct.ceph_options, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %con_modes.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %con_modes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.not.i = icmp eq i32 %11, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %do.end13.ceph_encode_my_addr.exit_crit_edge

do.end13.ceph_encode_my_addr.exit_crit_edge:      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_encode_my_addr.exit

if.then.i:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #17
  %my_enc_addr.i = getelementptr inbounds %struct.ceph_messenger, ptr %msgr, i32 0, i32 1
  %12 = call ptr @memcpy(ptr %my_enc_addr.i, ptr %addr5, i32 136)
  %13 = ptrtoint ptr %my_enc_addr.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 0, ptr %my_enc_addr.i, align 1
  br label %ceph_encode_my_addr.exit

ceph_encode_my_addr.exit:                         ; preds = %if.then.i, %do.end13.ceph_encode_my_addr.exit_crit_edge
  %stopping = getelementptr inbounds %struct.ceph_messenger, ptr %msgr, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %stopping, i32 noundef 4) #15
  %14 = ptrtoint ptr %stopping to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 0, ptr %stopping, align 4
  %net = getelementptr inbounds %struct.ceph_messenger, ptr %msgr, i32 0, i32 4
  %15 = tail call i32 @llvm.read_register.i32(metadata !435) #15
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 110
  %19 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nsproxy, align 4
  %net_ns = getelementptr inbounds %struct.nsproxy, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %net_ns to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net_ns, align 4
  %count.i = getelementptr inbounds %struct.net, ptr %22, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #15
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #15, !srcloc !515
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %ceph_encode_my_addr.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !456

ceph_encode_my_addr.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %ceph_encode_my_addr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %ceph_encode_my_addr.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %24 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i.i = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_net.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !445

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_net.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_net.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %ceph_encode_my_addr.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %ceph_encode_my_addr.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #15
  br label %get_net.exit

get_net.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_net.exit_crit_edge
  %25 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %net, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_messenger_init.__UNIQUE_ID_ddebug696, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_messenger_init, %if.then22)) #15
          to label %do.end26 [label %if.then22], !srcloc !459

if.then22:                                        ; preds = %get_net.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_messenger_init.__UNIQUE_ID_ddebug696, ptr noundef nonnull @.str.57, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1654, ptr noundef nonnull @.str.55, ptr noundef %msgr) #15
  br label %do.end26

do.end26:                                         ; preds = %if.then22, %get_net.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_messenger_fini(ptr nocapture noundef readonly %msgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.ceph_messenger, ptr %msgr, i32 0, i32 4
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %count.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !516
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #15, !srcloc !517
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_net.exit_crit_edge, label %if.then10.i.i.i.i, !prof !445

if.end5.i.i.i.i.put_net.exit_crit_edge:           ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %put_net.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #15
  br label %put_net.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !518
  tail call void @__put_net(ptr noundef %1) #15
  br label %put_net.exit

put_net.exit:                                     ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_net.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_con_send(ptr noundef %con, ptr noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %src = getelementptr inbounds %struct.ceph_msg_header, ptr %msg, i32 0, i32 9
  %msgr = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 2
  %0 = ptrtoint ptr %msgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msgr, align 8
  %2 = call ptr @memcpy(ptr %src, ptr %1, i32 9)
  %iov_len = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iov_len, align 4
  %front_len = getelementptr inbounds %struct.ceph_msg_header, ptr %msg, i32 0, i32 5
  %5 = ptrtoint ptr %front_len to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %front_len, align 2
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %7)
  %cmp.not = icmp eq i32 %4, %7
  br i1 %cmp.not, label %do.end6, label %do.body3, !prof !445

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1692, 0\0A.popsection", ""() #15, !srcloc !519
  unreachable

do.end6:                                          ; preds = %entry
  %needs_out_seq = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 13
  %8 = ptrtoint ptr %needs_out_seq to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %needs_out_seq, align 1
  %mutex = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #15
  %state = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 3
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp7 = icmp eq i32 %10, 1
  br i1 %cmp7, label %do.body9, label %if.end22

do.body9:                                         ; preds = %do.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_send.__UNIQUE_ID_ddebug698, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_send, %if.then17)) #15
          to label %do.end20 [label %if.then17], !srcloc !459

if.then17:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_send.__UNIQUE_ID_ddebug698, ptr noundef nonnull @.str.60, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1698, ptr noundef %con, ptr noundef %msg) #15
  br label %do.end20

do.end20:                                         ; preds = %if.then17, %do.body9
  tail call void @ceph_msg_put(ptr noundef %msg)
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  br label %if.end74

if.end22:                                         ; preds = %do.end6
  %con1.i = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 9
  %11 = ptrtoint ptr %con1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %con1.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end22.if.end.i_crit_edge, label %if.then.i

if.end22.if.end.i_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #17
  %ops.i = getelementptr inbounds %struct.ceph_connection, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %put.i = getelementptr inbounds %struct.ceph_connection_operations, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %put.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %put.i, align 4
  tail call void %16(ptr noundef nonnull %12) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end22.if.end.i_crit_edge
  %tobool4.not.i = icmp eq ptr %con, null
  br i1 %tobool4.not.i, label %if.end.i.cond.end.i_crit_edge, label %cond.true.i

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %ops5.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 1
  %17 = ptrtoint ptr %ops5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops5.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call.i = tail call ptr %20(ptr noundef nonnull %con) #15
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %call.i, %cond.true.i ], [ null, %if.end.i.cond.end.i_crit_edge ]
  %21 = ptrtoint ptr %con1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cond.i, ptr %con1.i, align 4
  %cmp.not.i = icmp eq ptr %cond.i, %con
  br i1 %cmp.not.i, label %msg_con_set.exit, label %do.body11.i, !prof !445

do.body11.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1668, 0\0A.popsection", ""() #15, !srcloc !520
  unreachable

msg_con_set.exit:                                 ; preds = %cond.end.i
  %list_head = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 10
  %22 = ptrtoint ptr %list_head to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %list_head, align 4
  %cmp.i.not = icmp eq ptr %23, %list_head
  br i1 %cmp.i.not, label %do.end40, label %do.body35, !prof !445

do.body35:                                        ; preds = %msg_con_set.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1706, 0\0A.popsection", ""() #15, !srcloc !521
  unreachable

do.end40:                                         ; preds = %msg_con_set.exit
  %out_queue = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 13
  %prev.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 13, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list_head, ptr noundef %25, ptr noundef %out_queue) #15
  br i1 %call.i.i, label %if.end.i.i, label %do.end40.list_add_tail.exit_crit_edge

do.end40.list_add_tail.exit_crit_edge:            ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %list_head, ptr %prev.i, align 4
  %27 = ptrtoint ptr %list_head to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %out_queue, ptr %list_head, align 4
  %prev3.i.i = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 10, i32 1
  %28 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %list_head, ptr %25, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end40.list_add_tail.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_send.__UNIQUE_ID_ddebug699, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_send, %if.then54)) #15
          to label %do.end70 [label %if.then54], !srcloc !459

if.then54:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  %peer_name = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 8
  %30 = ptrtoint ptr %peer_name to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %peer_name, align 8
  %conv = zext i8 %31 to i32
  %call56 = tail call ptr @ceph_entity_type_name(i32 noundef %conv) #15
  %num = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 8, i32 1
  %32 = ptrtoint ptr %num to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %num, align 1
  %34 = tail call i64 @llvm.bswap.i64(i64 %33)
  %type59 = getelementptr inbounds %struct.ceph_msg_header, ptr %msg, i32 0, i32 2
  %35 = ptrtoint ptr %type59 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %type59, align 4
  %37 = tail call i16 @llvm.bswap.i16(i16 %36)
  %conv60 = zext i16 %37 to i32
  %call64 = tail call ptr @ceph_msg_type_name(i32 noundef %conv60) #15
  %38 = ptrtoint ptr %front_len to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %front_len, align 2
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %middle_len = getelementptr inbounds %struct.ceph_msg_header, ptr %msg, i32 0, i32 6
  %41 = ptrtoint ptr %middle_len to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %middle_len, align 2
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %data_len = getelementptr inbounds %struct.ceph_msg_header, ptr %msg, i32 0, i32 7
  %44 = ptrtoint ptr %data_len to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %data_len, align 2
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_send.__UNIQUE_ID_ddebug699, ptr noundef nonnull @.str.62, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1713, ptr noundef %msg, ptr noundef %call56, i64 noundef %34, i32 noundef %conv60, ptr noundef %call64, i32 noundef %40, i32 noundef %43, i32 noundef %46) #15
  br label %do.end70

do.end70:                                         ; preds = %if.then54, %list_add_tail.exit
  %47 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %48)
  %cmp.i104 = icmp eq i32 %48, 13
  br i1 %cmp.i104, label %do.body.i, label %do.end70.clear_standby.exit_crit_edge

do.end70.clear_standby.exit_crit_edge:            ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #17
  br label %clear_standby.exit

do.body.i:                                        ; preds = %do.end70
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clear_standby.__UNIQUE_ID_ddebug697, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_send, %if.then3.i)) #15
          to label %do.end.i [label %if.then3.i], !srcloc !459

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clear_standby.__UNIQUE_ID_ddebug697, ptr noundef nonnull @.str.188, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1675, ptr noundef %con) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i, %do.body.i
  %49 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %state, align 4
  %connect_seq.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 33, i32 1, i32 1
  %50 = ptrtoint ptr %connect_seq.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %connect_seq.i, align 8
  %inc.i = add i32 %51, 1
  store i32 %inc.i, ptr %connect_seq.i, align 8
  %flags.i.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 6
  %52 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %flags.i.i, align 4
  %54 = and i32 %53, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool8.i.not.i = icmp eq i32 %54, 0
  br i1 %tobool8.i.not.i, label %do.end.i.if.end27.i_crit_edge, label %do.end21.i, !prof !445

do.end.i.if.end27.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27.i

do.end21.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1678, i32 noundef 9, ptr noundef null) #15
  br label %if.end27.i

if.end27.i:                                       ; preds = %do.end21.i, %do.end.i.if.end27.i_crit_edge
  %55 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %flags.i.i, align 4
  %57 = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool8.i75.not.i = icmp eq i32 %57, 0
  br i1 %tobool8.i75.not.i, label %if.end27.i.clear_standby.exit_crit_edge, label %do.end52.i, !prof !445

if.end27.i.clear_standby.exit_crit_edge:          ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %clear_standby.exit

do.end52.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1679, i32 noundef 9, ptr noundef null) #15
  br label %clear_standby.exit

clear_standby.exit:                               ; preds = %do.end52.i, %if.end27.i.clear_standby.exit_crit_edge, %do.end70.clear_standby.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  %flags.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 6
  %call7.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.i.not = icmp eq i32 %call7.i, 0
  br i1 %tobool8.i.not, label %if.then73, label %clear_standby.exit.if.end74_crit_edge

clear_standby.exit.if.end74_crit_edge:            ; preds = %clear_standby.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end74

if.then73:                                        ; preds = %clear_standby.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call.i105 = tail call fastcc i32 @queue_con_delay(ptr noundef %con, i32 noundef 0) #15
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %clear_standby.exit.if.end74_crit_edge, %do.end20
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_msg_put(ptr noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_msg_put.__UNIQUE_ID_ddebug716, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_msg_put, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !459

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %kref = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #15
  %0 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %kref, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_msg_put.__UNIQUE_ID_ddebug716, ptr noundef nonnull @.str.93, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 2140, ptr noundef nonnull @.str.94, ptr noundef %msg, i32 noundef %1) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %kref5 = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref5, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !516
  tail call void @llvm.prefetch.p0(ptr %kref5, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref5, ptr %kref5, i32 1, ptr elementtype(i32) %kref5) #15, !srcloc !517
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !445

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %kref5, i32 noundef 3) #15
  br label %kref_put.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !518
  tail call fastcc void @ceph_msg_release(ptr noundef %kref5) #15, !callees !522
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_msg_revoke(ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %con1 = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 9
  %0 = ptrtoint ptr %con1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_msg_revoke.__UNIQUE_ID_ddebug700, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_msg_revoke, %if.then5)) #15
          to label %cleanup [label %if.then5], !srcloc !459

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_msg_revoke.__UNIQUE_ID_ddebug700, ptr noundef nonnull @.str.65, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1733, ptr noundef nonnull @.str.63, ptr noundef %msg) #15
  br label %cleanup

if.end7:                                          ; preds = %entry
  %mutex = getelementptr inbounds %struct.ceph_connection, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #15
  %list_head = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 10
  %2 = ptrtoint ptr %list_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %list_head, align 4
  %cmp.i.not = icmp eq ptr %3, %list_head
  br i1 %cmp.i.not, label %if.then10, label %do.body59

if.then10:                                        ; preds = %if.end7
  %out_msg = getelementptr inbounds %struct.ceph_connection, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %out_msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %out_msg, align 4
  %cmp = icmp eq ptr %5, %msg
  br i1 %cmp, label %do.end26, label %if.then10.if.end32_crit_edge, !prof !456

if.then10.if.end32_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

do.end26:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1739, i32 noundef 9, ptr noundef null) #15
  br label %if.end32

if.end32:                                         ; preds = %do.end26, %if.then10.if.end32_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_msg_revoke.__UNIQUE_ID_ddebug701, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_msg_revoke, %if.then52)) #15
          to label %do.end56 [label %if.then52], !srcloc !459

if.then52:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_msg_revoke.__UNIQUE_ID_ddebug701, ptr noundef nonnull @.str.67, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1740, ptr noundef nonnull @.str.63, ptr noundef nonnull %1, ptr noundef %msg) #15
  br label %do.end56

do.end56:                                         ; preds = %if.then52, %if.end32
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  br label %cleanup

do.body59:                                        ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_msg_revoke.__UNIQUE_ID_ddebug702, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_msg_revoke, %if.then71)) #15
          to label %do.end75 [label %if.then71], !srcloc !459

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_msg_revoke.__UNIQUE_ID_ddebug702, ptr noundef nonnull @.str.69, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1745, ptr noundef nonnull @.str.63, ptr noundef nonnull %1, ptr noundef %msg) #15
  br label %do.end75

do.end75:                                         ; preds = %if.then71, %do.body59
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 0, ptr %msg, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list_head) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end75.ceph_msg_remove.exit_crit_edge

do.end75.ceph_msg_remove.exit_crit_edge:          ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_msg_remove.exit

if.end.i.i.i:                                     ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %list_head to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %list_head, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %ceph_msg_remove.exit

ceph_msg_remove.exit:                             ; preds = %if.end.i.i.i, %do.end75.ceph_msg_remove.exit_crit_edge
  %13 = ptrtoint ptr %list_head to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list_head, ptr %list_head, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list_head, ptr %prev.i3.i.i, align 4
  tail call void @ceph_msg_put(ptr noundef %msg) #15
  %out_msg76 = getelementptr inbounds %struct.ceph_connection, ptr %1, i32 0, i32 20
  %15 = ptrtoint ptr %out_msg76 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %out_msg76, align 4
  %cmp77 = icmp eq ptr %16, %msg
  br i1 %cmp77, label %if.then78, label %do.body134

if.then78:                                        ; preds = %ceph_msg_remove.exit
  %state = getelementptr inbounds %struct.ceph_connection, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %18)
  %cmp80.not = icmp eq i32 %18, 12
  br i1 %cmp80.not, label %if.then78.if.end102_crit_edge, label %do.end96, !prof !445

if.then78.if.end102_crit_edge:                    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end102

do.end96:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1750, i32 noundef 9, ptr noundef null) #15
  br label %if.end102

if.end102:                                        ; preds = %do.end96, %if.then78.if.end102_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_msg_revoke.__UNIQUE_ID_ddebug703, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_msg_revoke, %if.then122)) #15
          to label %do.end126 [label %if.then122], !srcloc !459

if.then122:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_msg_revoke.__UNIQUE_ID_ddebug703, ptr noundef nonnull @.str.71, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1751, ptr noundef nonnull @.str.63, ptr noundef nonnull %1, ptr noundef %msg) #15
  br label %do.end126

do.end126:                                        ; preds = %if.then122, %if.end102
  %msgr = getelementptr inbounds %struct.ceph_connection, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %msgr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %msgr, align 8
  %options.i = getelementptr i8, ptr %20, i32 -176
  %21 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %options.i, align 8
  %con_modes.i = getelementptr inbounds %struct.ceph_options, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %con_modes.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %con_modes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i194.not = icmp eq i32 %24, 0
  br i1 %cmp.i194.not, label %if.else, label %if.then129

if.then129:                                       ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @ceph_con_v2_revoke(ptr noundef nonnull %1) #15
  br label %if.end130

if.else:                                          ; preds = %do.end126
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @ceph_con_v1_revoke(ptr noundef nonnull %1) #15
  br label %if.end130

if.end130:                                        ; preds = %if.else, %if.then129
  %25 = ptrtoint ptr %out_msg76 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %out_msg76, align 4
  tail call void @ceph_msg_put(ptr noundef %26)
  %27 = ptrtoint ptr %out_msg76 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %out_msg76, align 4
  br label %if.end152

do.body134:                                       ; preds = %ceph_msg_remove.exit
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_msg_revoke.__UNIQUE_ID_ddebug704, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_msg_revoke, %if.then146)) #15
          to label %if.end152 [label %if.then146], !srcloc !459

if.then146:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %out_msg76 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %out_msg76, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_msg_revoke.__UNIQUE_ID_ddebug704, ptr noundef nonnull @.str.73, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1760, ptr noundef nonnull @.str.63, ptr noundef nonnull %1, ptr noundef %msg, ptr noundef %29) #15
  br label %if.end152

if.end152:                                        ; preds = %if.then146, %do.body134, %if.end130
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end152, %do.end56, %if.then5, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_con_v2_revoke(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_con_v1_revoke(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_msg_revoke_incoming(ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %con1 = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 9
  %0 = ptrtoint ptr %con1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_msg_revoke_incoming.__UNIQUE_ID_ddebug705, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_msg_revoke_incoming, %if.then5)) #15
          to label %cleanup [label %if.then5], !srcloc !459

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_msg_revoke_incoming.__UNIQUE_ID_ddebug705, ptr noundef nonnull @.str.65, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1773, ptr noundef nonnull @.str.74, ptr noundef %msg) #15
  br label %cleanup

if.end7:                                          ; preds = %entry
  %mutex = getelementptr inbounds %struct.ceph_connection, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #15
  %in_msg = getelementptr inbounds %struct.ceph_connection, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %in_msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in_msg, align 8
  %cmp = icmp eq ptr %3, %msg
  br i1 %cmp, label %if.then8, label %do.body63

if.then8:                                         ; preds = %if.end7
  %state = getelementptr inbounds %struct.ceph_connection, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %5)
  %cmp9.not = icmp eq i32 %5, 12
  br i1 %cmp9.not, label %if.then8.if.end31_crit_edge, label %do.end25, !prof !445

if.then8.if.end31_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

do.end25:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1779, i32 noundef 9, ptr noundef null) #15
  br label %if.end31

if.end31:                                         ; preds = %do.end25, %if.then8.if.end31_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_msg_revoke_incoming.__UNIQUE_ID_ddebug706, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_msg_revoke_incoming, %if.then51)) #15
          to label %do.end55 [label %if.then51], !srcloc !459

if.then51:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_msg_revoke_incoming.__UNIQUE_ID_ddebug706, ptr noundef nonnull @.str.76, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1780, ptr noundef nonnull @.str.74, ptr noundef nonnull %1, ptr noundef %msg) #15
  br label %do.end55

do.end55:                                         ; preds = %if.then51, %if.end31
  %msgr = getelementptr inbounds %struct.ceph_connection, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %msgr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msgr, align 8
  %options.i = getelementptr i8, ptr %7, i32 -176
  %8 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %options.i, align 8
  %con_modes.i = getelementptr inbounds %struct.ceph_options, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %con_modes.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %con_modes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.not = icmp eq i32 %11, 0
  br i1 %cmp.i.not, label %if.else, label %if.then58

if.then58:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @ceph_con_v2_revoke_incoming(ptr noundef nonnull %1) #15
  br label %if.end59

if.else:                                          ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @ceph_con_v1_revoke_incoming(ptr noundef nonnull %1) #15
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.then58
  %12 = ptrtoint ptr %in_msg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %in_msg, align 8
  tail call void @ceph_msg_put(ptr noundef %13)
  %14 = ptrtoint ptr %in_msg to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %in_msg, align 8
  br label %if.end81

do.body63:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_msg_revoke_incoming.__UNIQUE_ID_ddebug707, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_msg_revoke_incoming, %if.then75)) #15
          to label %if.end81 [label %if.then75], !srcloc !459

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %in_msg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %in_msg, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_msg_revoke_incoming.__UNIQUE_ID_ddebug707, ptr noundef nonnull @.str.78, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1789, ptr noundef nonnull @.str.74, ptr noundef nonnull %1, ptr noundef %msg, ptr noundef %16) #15
  br label %if.end81

if.end81:                                         ; preds = %if.then75, %do.body63, %if.end59
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %if.then5, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_con_v2_revoke_incoming(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_con_v1_revoke_incoming(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_con_keepalive(ptr noundef %con) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_con_keepalive.__UNIQUE_ID_ddebug708, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_keepalive, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !459

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_con_keepalive.__UNIQUE_ID_ddebug708, ptr noundef nonnull @.str.81, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1799, ptr noundef %con) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mutex = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #15
  %state.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 3
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %1)
  %cmp.i = icmp eq i32 %1, 13
  br i1 %cmp.i, label %do.body.i, label %do.end.clear_standby.exit_crit_edge

do.end.clear_standby.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %clear_standby.exit

do.body.i:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clear_standby.__UNIQUE_ID_ddebug697, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_keepalive, %if.then3.i)) #15
          to label %do.end.i [label %if.then3.i], !srcloc !459

if.then3.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clear_standby.__UNIQUE_ID_ddebug697, ptr noundef nonnull @.str.188, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1675, ptr noundef %con) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i, %do.body.i
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %state.i, align 4
  %connect_seq.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 28, i32 0, i32 33, i32 1, i32 1
  %3 = ptrtoint ptr %connect_seq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %connect_seq.i, align 8
  %inc.i = add i32 %4, 1
  store i32 %inc.i, ptr %connect_seq.i, align 8
  %flags.i.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 6
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i.i, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool8.i.not.i, label %do.end.i.if.end27.i_crit_edge, label %do.end21.i, !prof !445

do.end.i.if.end27.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end27.i

do.end21.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1678, i32 noundef 9, ptr noundef null) #15
  br label %if.end27.i

if.end27.i:                                       ; preds = %do.end21.i, %do.end.i.if.end27.i_crit_edge
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags.i.i, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.i75.not.i = icmp eq i32 %10, 0
  br i1 %tobool8.i75.not.i, label %if.end27.i.clear_standby.exit_crit_edge, label %do.end52.i, !prof !445

if.end27.i.clear_standby.exit_crit_edge:          ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %clear_standby.exit

do.end52.i:                                       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1679, i32 noundef 9, ptr noundef null) #15
  br label %clear_standby.exit

clear_standby.exit:                               ; preds = %do.end52.i, %if.end27.i.clear_standby.exit_crit_edge, %do.end.clear_standby.exit_crit_edge
  %flags.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i) #15
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  %call7.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.i.not = icmp eq i32 %call7.i, 0
  br i1 %tobool8.i.not, label %if.then6, label %clear_standby.exit.if.end7_crit_edge

clear_standby.exit.if.end7_crit_edge:             ; preds = %clear_standby.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then6:                                         ; preds = %clear_standby.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call fastcc i32 @queue_con_delay(ptr noundef %con, i32 noundef 0) #15
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %clear_standby.exit.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ceph_con_keepalive_expired(ptr nocapture noundef readonly %con, i32 noundef %interval) local_unnamed_addr #0 align 64 {
entry:
  %now = alloca %struct.timespec64, align 8
  %ts = alloca %struct.timespec64, align 8
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %interval)
  %cmp.not = icmp eq i32 %interval, 0
  br i1 %cmp.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

land.lhs.true:                                    ; preds = %entry
  %peer_features = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 11
  %0 = ptrtoint ptr %peer_features to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %peer_features, align 8
  %and = and i64 %1, 4398046511104
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %land.lhs.true.return_crit_edge, label %if.then

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now) #15
  %2 = call ptr @memset(ptr %now, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #15
  %3 = call ptr @memset(ptr %ts, i32 255, i32 16)
  call void @ktime_get_real_ts64(ptr noundef nonnull %now) #15
  call void @jiffies_to_timespec64(i32 noundef %interval, ptr noundef nonnull %ts) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #15
  %last_keepalive_ack = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 25
  %4 = ptrtoint ptr %last_keepalive_ack to i32
  call void @__asan_load8_noabort(i32 %4)
  %.unpack = load i64, ptr %last_keepalive_ack, align 8
  %.elt4 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 25, i32 1
  %5 = ptrtoint ptr %.elt4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %.unpack5 = load i64, ptr %.elt4, align 8
  %6 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %6)
  %.fca.0.load = load i64, ptr %ts, align 8
  %.fca.1.gep = getelementptr inbounds [2 x i64], ptr %ts, i32 0, i32 1
  %7 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load8_noabort(i32 %7)
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %lhs.sroa.2.8.extract.shift.i = lshr i64 %.unpack5, 32
  %lhs.sroa.2.8.extract.trunc.i = trunc i64 %lhs.sroa.2.8.extract.shift.i to i32
  %rhs.sroa.2.8.extract.shift.i = lshr i64 %.fca.1.load, 32
  %rhs.sroa.2.8.extract.trunc.i = trunc i64 %rhs.sroa.2.8.extract.shift.i to i32
  %8 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  %add.i = add i64 %.fca.0.load, %.unpack
  %add3.i = add i32 %rhs.sroa.2.8.extract.trunc.i, %lhs.sroa.2.8.extract.trunc.i
  %conv.i = sext i32 %add3.i to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp, i64 noundef %add.i, i64 noundef %conv.i) #15
  %9 = call ptr @memcpy(ptr %ts, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #15
  %10 = ptrtoint ptr %now to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %now, align 8
  %12 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %ts, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %13)
  %cmp.i = icmp slt i64 %11, %13
  br i1 %cmp.i, label %if.then.timespec64_compare.exit_crit_edge, label %if.end.i

if.then.timespec64_compare.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %timespec64_compare.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %13)
  %cmp4.i = icmp sgt i64 %11, %13
  br i1 %cmp4.i, label %if.end.i.timespec64_compare.exit_crit_edge, label %if.end6.i

if.end.i.timespec64_compare.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %timespec64_compare.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %now, i32 0, i32 1
  %14 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tv_nsec.i, align 8
  %16 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %.fca.1.gep, align 8
  %sub.i = sub i32 %15, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %phi.cmp = icmp sgt i32 %sub.i, -1
  br label %timespec64_compare.exit

timespec64_compare.exit:                          ; preds = %if.end6.i, %if.end.i.timespec64_compare.exit_crit_edge, %if.then.timespec64_compare.exit_crit_edge
  %retval.0.i = phi i1 [ %phi.cmp, %if.end6.i ], [ false, %if.then.timespec64_compare.exit_crit_edge ], [ true, %if.end.i.timespec64_compare.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now) #15
  br label %return

return:                                           ; preds = %timespec64_compare.exit, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %retval.0.i, %timespec64_compare.exit ], [ false, %land.lhs.true.return_crit_edge ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @jiffies_to_timespec64(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_msg_data_add_pages(ptr nocapture noundef %msg, ptr noundef %pages, i32 noundef %length, i32 noundef %alignment, i1 noundef zeroext %own_pages) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pages, null
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !456

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1846, 0\0A.popsection", ""() #15, !srcloc !523
  unreachable

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool11.not = icmp eq i32 %length, 0
  br i1 %tobool11.not, label %do.body21, label %do.end29, !prof !456

do.body21:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1847, 0\0A.popsection", ""() #15, !srcloc !524
  unreachable

do.end29:                                         ; preds = %do.body10
  %num_data_items.i = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 6
  %0 = ptrtoint ptr %num_data_items.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_data_items.i, align 4
  %max_data_items.i = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 7
  %2 = ptrtoint ptr %max_data_items.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_data_items.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not.i = icmp slt i32 %1, %3
  br i1 %cmp.not.i, label %ceph_msg_data_add.exit, label %do.body2.i, !prof !445

do.body2.i:                                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1827, 0\0A.popsection", ""() #15, !srcloc !525
  unreachable

ceph_msg_data_add.exit:                           ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #17
  %frombool = zext i1 %own_pages to i8
  %data.i = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 5
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %inc.i = add nsw i32 %1, 1
  %6 = ptrtoint ptr %num_data_items.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc.i, ptr %num_data_items.i, align 4
  %arrayidx.i = getelementptr %struct.ceph_msg_data, ptr %5, i32 %1
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %arrayidx.i, align 4
  %8 = getelementptr %struct.ceph_msg_data, ptr %5, i32 %1, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pages, ptr %8, align 4
  %length31 = getelementptr %struct.ceph_msg_data, ptr %5, i32 %1, i32 1, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %length31 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %length, ptr %length31, align 4
  %and = and i32 %alignment, 4095
  %alignment32 = getelementptr inbounds %struct.anon.176, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %alignment32 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and, ptr %alignment32, align 4
  %own_pages34 = getelementptr %struct.ceph_msg_data, ptr %5, i32 %1, i32 1, i32 0, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %own_pages34 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool, ptr %own_pages34, align 4
  %data_length = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 4
  %13 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_length, align 4
  %add = add i32 %14, %length
  store i32 %add, ptr %data_length, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_msg_data_add_pagelist(ptr nocapture noundef %msg, ptr noundef %pagelist) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pagelist, null
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !456

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1865, 0\0A.popsection", ""() #15, !srcloc !526
  unreachable

do.body10:                                        ; preds = %entry
  %length = getelementptr inbounds %struct.ceph_pagelist, ptr %pagelist, i32 0, i32 2
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool11.not = icmp eq i32 %1, 0
  br i1 %tobool11.not, label %do.body21, label %do.end29, !prof !456

do.body21:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1866, 0\0A.popsection", ""() #15, !srcloc !527
  unreachable

do.end29:                                         ; preds = %do.body10
  %num_data_items.i = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 6
  %2 = ptrtoint ptr %num_data_items.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_data_items.i, align 4
  %max_data_items.i = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 7
  %4 = ptrtoint ptr %max_data_items.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_data_items.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not.i = icmp slt i32 %3, %5
  br i1 %cmp.not.i, label %ceph_msg_data_add.exit, label %do.body2.i, !prof !445

do.body2.i:                                       ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1827, 0\0A.popsection", ""() #15, !srcloc !525
  unreachable

ceph_msg_data_add.exit:                           ; preds = %do.end29
  %data.i = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 5
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %inc.i = add nsw i32 %3, 1
  %8 = ptrtoint ptr %num_data_items.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %inc.i, ptr %num_data_items.i, align 4
  %arrayidx.i = getelementptr %struct.ceph_msg_data, ptr %7, i32 %3
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %arrayidx.i, align 4
  %refcnt = getelementptr inbounds %struct.ceph_pagelist, ptr %pagelist, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #15
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #15, !srcloc !515
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %ceph_msg_data_add.exit.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !456

ceph_msg_data_add.exit.if.end15.sink.split.i.i.i_crit_edge: ; preds = %ceph_msg_data_add.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %ceph_msg_data_add.exit
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !445

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %ceph_msg_data_add.exit.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %ceph_msg_data_add.exit.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #15
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %12 = getelementptr %struct.ceph_msg_data, ptr %7, i32 %3, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pagelist, ptr %12, align 4
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length, align 4
  %data_length = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 4
  %16 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_length, align 4
  %add = add i32 %17, %15
  store i32 %add, ptr %data_length, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_msg_data_add_bio(ptr nocapture noundef %msg, ptr nocapture noundef readonly %bio_pos, i32 noundef %length) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %num_data_items.i = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 6
  %0 = ptrtoint ptr %num_data_items.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_data_items.i, align 4
  %max_data_items.i = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 7
  %2 = ptrtoint ptr %max_data_items.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_data_items.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not.i = icmp slt i32 %1, %3
  br i1 %cmp.not.i, label %ceph_msg_data_add.exit, label %do.body2.i, !prof !445

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1827, 0\0A.popsection", ""() #15, !srcloc !525
  unreachable

ceph_msg_data_add.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %data.i = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 5
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %inc.i = add nsw i32 %1, 1
  %6 = ptrtoint ptr %num_data_items.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc.i, ptr %num_data_items.i, align 4
  %arrayidx.i = getelementptr %struct.ceph_msg_data, ptr %5, i32 %1
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %arrayidx.i, align 4
  %8 = getelementptr %struct.ceph_msg_data, ptr %5, i32 %1, i32 1
  %9 = call ptr @memcpy(ptr %8, ptr %bio_pos, i32 24)
  %bio_length = getelementptr %struct.ceph_msg_data, ptr %5, i32 %1, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %bio_length to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %length, ptr %bio_length, align 4
  %data_length = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 4
  %11 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_length, align 4
  %add = add i32 %12, %length
  store i32 %add, ptr %data_length, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_msg_data_add_bvecs(ptr nocapture noundef %msg, ptr nocapture noundef readonly %bvec_pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %num_data_items.i = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 6
  %0 = ptrtoint ptr %num_data_items.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_data_items.i, align 4
  %max_data_items.i = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 7
  %2 = ptrtoint ptr %max_data_items.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_data_items.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not.i = icmp slt i32 %1, %3
  br i1 %cmp.not.i, label %ceph_msg_data_add.exit, label %do.body2.i, !prof !445

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1827, 0\0A.popsection", ""() #15, !srcloc !525
  unreachable

ceph_msg_data_add.exit:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %data.i = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 5
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %inc.i = add nsw i32 %1, 1
  %6 = ptrtoint ptr %num_data_items.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %inc.i, ptr %num_data_items.i, align 4
  %arrayidx.i = getelementptr %struct.ceph_msg_data, ptr %5, i32 %1
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %arrayidx.i, align 4
  %8 = getelementptr %struct.ceph_msg_data, ptr %5, i32 %1, i32 1
  %9 = call ptr @memcpy(ptr %8, ptr %bvec_pos, i32 24)
  %bi_size = getelementptr inbounds %struct.ceph_bvec_iter, ptr %bvec_pos, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %bi_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bi_size, align 4
  %data_length = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 4
  %12 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_length, align 4
  %add = add i32 %13, %11
  store i32 %add, ptr %data_length, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ceph_msg_new2(i32 noundef %type, i32 noundef %front_len, i32 noundef %max_data_items, i32 noundef %flags, i1 noundef zeroext %can_fail) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ceph_msg_cache, align 4
  %or.i = or i32 %flags, 256
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef %or.i) #15
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %conv = trunc i32 %type to i16
  %1 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %type1 = getelementptr inbounds %struct.ceph_msg_header, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %type1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %type1, align 8
  %priority = getelementptr inbounds %struct.ceph_msg_header, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %priority to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 32512, ptr %priority, align 2
  %4 = tail call i32 @llvm.bswap.i32(i32 %front_len)
  %front_len4 = getelementptr inbounds %struct.ceph_msg_header, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %front_len4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %front_len4, align 2
  %list_head = getelementptr inbounds %struct.ceph_msg, ptr %call.i, i32 0, i32 10
  %6 = ptrtoint ptr %list_head to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %list_head, ptr %list_head, align 4
  %prev.i = getelementptr inbounds %struct.ceph_msg, ptr %call.i, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list_head, ptr %prev.i, align 8
  %kref = getelementptr inbounds %struct.ceph_msg, ptr %call.i, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #15
  %8 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %kref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %front_len)
  %tobool.not = icmp eq i32 %front_len, 0
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %call.i138 = tail call noalias ptr @kvmalloc_node(i32 noundef %front_len, i32 noundef %flags, i32 noundef -1) #20
  %front = getelementptr inbounds %struct.ceph_msg, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %front to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i138, ptr %front, align 4
  %cmp9 = icmp eq ptr %call.i138, null
  br i1 %cmp9, label %do.body, label %if.then5.if.end23_crit_edge

if.then5.if.end23_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

do.body:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_msg_new2.__UNIQUE_ID_ddebug709, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_msg_new2, %if.then17)) #15
          to label %out2 [label %if.then17], !srcloc !459

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_msg_new2.__UNIQUE_ID_ddebug709, ptr noundef nonnull @.str.84, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1931, i32 noundef %front_len) #15
  br label %out2

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %front21 = getelementptr inbounds %struct.ceph_msg, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %front21 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %front21, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then5.if.end23_crit_edge
  %iov_len = getelementptr inbounds %struct.ceph_msg, ptr %call.i, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %iov_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %front_len, ptr %iov_len, align 8
  %front_alloc_len = getelementptr inbounds %struct.ceph_msg, ptr %call.i, i32 0, i32 14
  %12 = ptrtoint ptr %front_alloc_len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %front_len, ptr %front_alloc_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_data_items)
  %tobool25.not = icmp eq i32 %max_data_items, 0
  br i1 %tobool25.not, label %if.end23.do.body34_crit_edge, label %if.then26

if.end23.do.body34_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body34

if.then26:                                        ; preds = %if.end23
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %max_data_items, i32 32) #15
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !456

kmalloc_array.exit.thread:                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  %data142 = getelementptr inbounds %struct.ceph_msg, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %data142 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %data142, align 4
  br label %out2

if.end7.i:                                        ; preds = %if.then26
  %16 = extractvalue { i32, i1 } %13, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef %flags) #20
  %data = getelementptr inbounds %struct.ceph_msg, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call8.i, ptr %data, align 4
  %tobool29.not = icmp eq ptr %call8.i, null
  br i1 %tobool29.not, label %if.end7.i.out2_crit_edge, label %if.end31

if.end7.i.out2_crit_edge:                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out2

if.end31:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  %max_data_items32 = getelementptr inbounds %struct.ceph_msg, ptr %call.i, i32 0, i32 7
  %18 = ptrtoint ptr %max_data_items32 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %max_data_items, ptr %max_data_items32, align 4
  br label %do.body34

do.body34:                                        ; preds = %if.end31, %if.end23.do.body34_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_msg_new2.__UNIQUE_ID_ddebug710, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_msg_new2, %if.then46)) #15
          to label %cleanup [label %if.then46], !srcloc !459

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_msg_new2.__UNIQUE_ID_ddebug710, ptr noundef nonnull @.str.86, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1948, ptr noundef nonnull %call.i, i32 noundef %front_len) #15
  br label %cleanup

out2:                                             ; preds = %if.end7.i.out2_crit_edge, %kmalloc_array.exit.thread, %if.then17, %do.body
  tail call void @ceph_msg_put(ptr noundef nonnull %call.i)
  br label %out

out:                                              ; preds = %out2, %entry.out_crit_edge
  br i1 %can_fail, label %do.body84, label %do.end55

do.end55:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %type, i32 noundef %front_len) #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1957, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

do.body84:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_msg_new2.__UNIQUE_ID_ddebug711, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_msg_new2, %if.then96)) #15
          to label %cleanup [label %if.then96], !srcloc !459

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_msg_new2.__UNIQUE_ID_ddebug711, ptr noundef nonnull @.str.89, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1960, i32 noundef %type, i32 noundef %front_len) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then96, %do.body84, %do.end55, %if.then46, %do.body34
  %retval.0 = phi ptr [ %call.i, %if.then46 ], [ null, %if.then96 ], [ null, %do.end55 ], [ %call.i, %do.body34 ], [ null, %do.body84 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ceph_msg_new(i32 noundef %type, i32 noundef %front_len, i32 noundef %flags, i1 noundef zeroext %can_fail) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ceph_msg_new2(i32 noundef %type, i32 noundef %front_len, i32 noundef 0, i32 noundef %flags, i1 noundef zeroext %can_fail)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ceph_con_in_msg_alloc(ptr noundef %con, ptr noundef %hdr, ptr noundef %skip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %middle_len1 = getelementptr inbounds %struct.ceph_msg_header, ptr %hdr, i32 0, i32 6
  %0 = ptrtoint ptr %middle_len1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %middle_len1, align 1
  %in_msg = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 19
  %2 = ptrtoint ptr %in_msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in_msg, align 8
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %do.body9, label %do.body3, !prof !445

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2018, 0\0A.popsection", ""() #15, !srcloc !528
  unreachable

do.body9:                                         ; preds = %entry
  %ops = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %alloc_msg = getelementptr inbounds %struct.ceph_connection_operations, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %alloc_msg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %alloc_msg, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %do.body20, label %do.end28, !prof !456

do.body20:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2019, 0\0A.popsection", ""() #15, !srcloc !529
  unreachable

do.end28:                                         ; preds = %do.body9
  %mutex = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 12
  tail call void @mutex_unlock(ptr noundef %mutex) #15
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %alloc_msg30 = getelementptr inbounds %struct.ceph_connection_operations, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %alloc_msg30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %alloc_msg30, align 4
  %call = tail call ptr %11(ptr noundef %con, ptr noundef %hdr, ptr noundef %skip) #15
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #15
  %state = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 3
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %13)
  %cmp32.not = icmp eq i32 %13, 12
  %tobool38.not = icmp eq ptr %call, null
  br i1 %cmp32.not, label %if.end37, label %if.then33

if.then33:                                        ; preds = %do.end28
  br i1 %tobool38.not, label %if.then33.cleanup_crit_edge, label %if.then35

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then35:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @ceph_msg_put(ptr noundef nonnull %call)
  br label %cleanup

if.end37:                                         ; preds = %do.end28
  %14 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool59.not = icmp eq i32 %15, 0
  br i1 %tobool38.not, label %if.else, label %do.body40

do.body40:                                        ; preds = %if.end37
  br i1 %tobool59.not, label %do.end57, label %do.body49, !prof !445

do.body49:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2030, 0\0A.popsection", ""() #15, !srcloc !530
  unreachable

do.end57:                                         ; preds = %do.body40
  %con1.i = getelementptr inbounds %struct.ceph_msg, ptr %call, i32 0, i32 9
  %16 = ptrtoint ptr %con1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %con1.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %do.end57.if.end.i_crit_edge, label %if.then.i

do.end57.if.end.i_crit_edge:                      ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #17
  %ops.i = getelementptr inbounds %struct.ceph_connection, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i, align 4
  %put.i = getelementptr inbounds %struct.ceph_connection_operations, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %put.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %put.i, align 4
  tail call void %21(ptr noundef nonnull %17) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end57.if.end.i_crit_edge
  %tobool4.not.i = icmp eq ptr %con, null
  br i1 %tobool4.not.i, label %if.end.i.cond.end.i_crit_edge, label %cond.true.i

if.end.i.cond.end.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %call.i = tail call ptr %25(ptr noundef nonnull %con) #15
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.end.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %call.i, %cond.true.i ], [ null, %if.end.i.cond.end.i_crit_edge ]
  %26 = ptrtoint ptr %con1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %cond.i, ptr %con1.i, align 4
  %cmp.not.i = icmp eq ptr %cond.i, %con
  br i1 %cmp.not.i, label %msg_con_set.exit, label %do.body11.i, !prof !445

do.body11.i:                                      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1668, 0\0A.popsection", ""() #15, !srcloc !520
  unreachable

msg_con_set.exit:                                 ; preds = %cond.end.i
  %27 = ptrtoint ptr %in_msg to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call, ptr %in_msg, align 8
  %28 = call ptr @memcpy(ptr %call, ptr %hdr, i32 53)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool65.not = icmp eq i32 %1, 0
  br i1 %tobool65.not, label %msg_con_set.exit.cleanup_crit_edge, label %land.lhs.true

msg_con_set.exit.cleanup_crit_edge:               ; preds = %msg_con_set.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.else:                                          ; preds = %if.end37
  br i1 %tobool59.not, label %if.end61, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end61:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %error_msg = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 7
  %29 = ptrtoint ptr %error_msg to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.90, ptr %error_msg, align 4
  br label %cleanup

land.lhs.true:                                    ; preds = %msg_con_set.exit
  %30 = ptrtoint ptr %in_msg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %in_msg, align 8
  %middle = getelementptr inbounds %struct.ceph_msg, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %middle to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %middle, align 4
  %tobool67.not = icmp eq ptr %33, null
  br i1 %tobool67.not, label %if.then68, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then68:                                        ; preds = %land.lhs.true
  %type1.i = getelementptr inbounds %struct.ceph_msg_header, ptr %31, i32 0, i32 2
  %34 = ptrtoint ptr %type1.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %type1.i, align 4
  %middle_len3.i = getelementptr inbounds %struct.ceph_msg_header, ptr %31, i32 0, i32 6
  %36 = ptrtoint ptr %middle_len3.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %middle_len3.i, align 2
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_alloc_middle.__UNIQUE_ID_ddebug712, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_con_in_msg_alloc, %if.then.i103)) #15
          to label %do.body8.i [label %if.then.i103], !srcloc !459

if.then.i103:                                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #17
  %39 = tail call i16 @llvm.bswap.i16(i16 %35) #15
  %conv.i = zext i16 %39 to i32
  %call7.i = tail call ptr @ceph_msg_type_name(i32 noundef %conv.i) #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_alloc_middle.__UNIQUE_ID_ddebug712, ptr noundef nonnull @.str.191, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1986, ptr noundef %31, i32 noundef %conv.i, ptr noundef %call7.i, i32 noundef %38) #15
  br label %do.body8.i

do.body8.i:                                       ; preds = %if.then.i103, %if.then68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool9.not.i = icmp eq i32 %37, 0
  br i1 %tobool9.not.i, label %do.body19.i, label %do.body28.i, !prof !456

do.body19.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1987, 0\0A.popsection", ""() #15, !srcloc !531
  unreachable

do.body28.i:                                      ; preds = %do.body8.i
  %40 = ptrtoint ptr %middle to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %middle, align 4
  %tobool29.not.i = icmp eq ptr %41, null
  br i1 %tobool29.not.i, label %ceph_alloc_middle.exit, label %do.body37.i, !prof !445

do.body37.i:                                      ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1988, 0\0A.popsection", ""() #15, !srcloc !532
  unreachable

ceph_alloc_middle.exit:                           ; preds = %do.body28.i
  %call46.i = tail call ptr @ceph_buffer_new(i32 noundef %38, i32 noundef 3136) #15
  %42 = ptrtoint ptr %middle to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call46.i, ptr %middle, align 4
  %tobool49.not.i = icmp eq ptr %call46.i, null
  br i1 %tobool49.not.i, label %if.then72, label %ceph_alloc_middle.exit.cleanup_crit_edge

ceph_alloc_middle.exit.cleanup_crit_edge:         ; preds = %ceph_alloc_middle.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then72:                                        ; preds = %ceph_alloc_middle.exit
  call void @__sanitizer_cov_trace_pc() #17
  %43 = ptrtoint ptr %in_msg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %in_msg, align 8
  tail call void @ceph_msg_put(ptr noundef %44)
  %45 = ptrtoint ptr %in_msg to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %in_msg, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %ceph_alloc_middle.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end61, %if.else.cleanup_crit_edge, %msg_con_set.exit.cleanup_crit_edge, %if.then35, %if.then33.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end61 ], [ -11, %if.then35 ], [ -11, %if.then33.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ -12, %if.then72 ], [ 0, %ceph_alloc_middle.exit.cleanup_crit_edge ], [ 0, %msg_con_set.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_con_get_out_msg(ptr noundef %con) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %out_queue = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 13
  %0 = ptrtoint ptr %out_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %out_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %out_queue
  br i1 %cmp.i.not, label %do.body3, label %do.end8, !prof !456

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ceph/messenger.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2062, 0\0A.popsection", ""() #15, !srcloc !533
  unreachable

do.end8:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -148
  %con10 = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %con10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %con10, align 4
  %cmp.not = icmp eq ptr %3, %con
  br i1 %cmp.not, label %do.end8.if.end32_crit_edge, label %do.end26, !prof !445

do.end8.if.end32_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

do.end26:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 2064, i32 noundef 9, ptr noundef null) #15
  br label %if.end32

if.end32:                                         ; preds = %do.end26, %do.end8.if.end32_crit_edge
  %out_sent = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end32.__list_del_entry.exit.i_crit_edge

if.end32.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end32.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 14, i32 1
  %10 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %11, ptr noundef %out_sent) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %prev.i2.i, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %out_sent, ptr %1, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %1, ptr %11, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %needs_out_seq = getelementptr i8, ptr %1, i32 13
  %16 = ptrtoint ptr %needs_out_seq to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %needs_out_seq, align 1, !range !476
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool40.not = icmp eq i8 %17, 0
  br i1 %tobool40.not, label %list_move_tail.exit.if.end48_crit_edge, label %if.then41

list_move_tail.exit.if.end48_crit_edge:           ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

if.then41:                                        ; preds = %list_move_tail.exit
  %out_seq = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 16
  %18 = ptrtoint ptr %out_seq to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %out_seq, align 8
  %inc = add i64 %19, 1
  store i64 %inc, ptr %out_seq, align 8
  %20 = tail call i64 @llvm.bswap.i64(i64 %inc)
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %add.ptr, align 4
  %22 = ptrtoint ptr %needs_out_seq to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %needs_out_seq, align 1
  %ops = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 1
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %reencode_message = getelementptr inbounds %struct.ceph_connection_operations, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %reencode_message to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reencode_message, align 4
  %tobool43.not = icmp eq ptr %26, null
  br i1 %tobool43.not, label %if.then41.if.end48_crit_edge, label %if.then44

if.then41.if.end48_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

if.then44:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %26(ptr noundef %add.ptr) #15
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %if.then41.if.end48_crit_edge, %list_move_tail.exit.if.end48_crit_edge
  %out_msg = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 20
  %27 = ptrtoint ptr %out_msg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %out_msg, align 4
  %tobool50.not = icmp eq ptr %28, null
  br i1 %tobool50.not, label %if.end48.if.end72_crit_edge, label %do.end66, !prof !445

if.end48.if.end72_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end72

do.end66:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 2088, i32 noundef 9, ptr noundef null) #15
  br label %if.end72

if.end72:                                         ; preds = %do.end66, %if.end48.if.end72_crit_edge
  %call80 = tail call ptr @ceph_msg_get(ptr noundef %add.ptr)
  %29 = ptrtoint ptr %out_msg to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %add.ptr, ptr %out_msg, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ceph_msg_get(ptr noundef returned %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_msg_get.__UNIQUE_ID_ddebug715, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_msg_get, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !459

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %kref = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 11
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #15
  %0 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %kref, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_msg_get.__UNIQUE_ID_ddebug715, ptr noundef nonnull @.str.93, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 2131, ptr noundef nonnull @.str.91, ptr noundef %msg, i32 noundef %1) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %kref5 = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref5, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %kref5, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref5, ptr %kref5, i32 1, ptr elementtype(i32) %kref5) #15, !srcloc !515
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !456

do.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !445

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref5, i32 noundef %.sink.i.i.i.i) #15
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  ret ptr %msg
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ceph_msg_release(ptr noundef %kref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kref, i32 -156
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_msg_release.__UNIQUE_ID_ddebug714, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_msg_release, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !459

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_msg_release.__UNIQUE_ID_ddebug714, ptr noundef nonnull @.str.57, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 2108, ptr noundef nonnull @.str.192, ptr noundef %add.ptr) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %list_head = getelementptr i8, ptr %kref, i32 -8
  %0 = ptrtoint ptr %list_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %list_head, align 4
  %cmp.i.not = icmp eq ptr %1, %list_head
  br i1 %cmp.i.not, label %do.end.if.end30_crit_edge, label %do.end24, !prof !445

do.end.if.end30_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

do.end24:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 2109, i32 noundef 9, ptr noundef null) #15
  br label %if.end30

if.end30:                                         ; preds = %do.end24, %do.end.if.end30_crit_edge
  %con1.i = getelementptr i8, ptr %kref, i32 -12
  %2 = ptrtoint ptr %con1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %con1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end30.msg_con_set.exit_crit_edge, label %if.then.i

if.end30.msg_con_set.exit_crit_edge:              ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %msg_con_set.exit

if.then.i:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  %ops.i = getelementptr inbounds %struct.ceph_connection, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %put.i = getelementptr inbounds %struct.ceph_connection_operations, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %put.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %put.i, align 4
  tail call void %7(ptr noundef nonnull %3) #15
  br label %msg_con_set.exit

msg_con_set.exit:                                 ; preds = %if.then.i, %if.end30.msg_con_set.exit_crit_edge
  %8 = ptrtoint ptr %con1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %con1.i, align 4
  %middle = getelementptr i8, ptr %kref, i32 -72
  %9 = ptrtoint ptr %middle to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %middle, align 4
  %tobool38.not = icmp eq ptr %10, null
  br i1 %tobool38.not, label %msg_con_set.exit.if.end42_crit_edge, label %if.then.i63

msg_con_set.exit.if.end42_crit_edge:              ; preds = %msg_con_set.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

if.then.i63:                                      ; preds = %msg_con_set.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %10, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !516
  tail call void @llvm.prefetch.p0(ptr nonnull %10, i32 1, i32 3, i32 1) #15
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %10, ptr nonnull %10, i32 1, ptr nonnull elementtype(i32) %10) #15, !srcloc !517
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then.i63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.ceph_buffer_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !445

if.end5.i.i.i.i.i.ceph_buffer_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_buffer_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef nonnull %10, i32 noundef 3) #15
  br label %ceph_buffer_put.exit

if.then.i.i:                                      ; preds = %if.then.i63
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !518
  tail call void @ceph_buffer_release(ptr noundef nonnull %10) #15, !callees !522
  br label %ceph_buffer_put.exit

ceph_buffer_put.exit:                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.ceph_buffer_put.exit_crit_edge
  %12 = ptrtoint ptr %middle to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %middle, align 4
  br label %if.end42

if.end42:                                         ; preds = %ceph_buffer_put.exit, %msg_con_set.exit.if.end42_crit_edge
  %num_data_items = getelementptr i8, ptr %kref, i32 -60
  %13 = ptrtoint ptr %num_data_items to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_data_items, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp69 = icmp sgt i32 %14, 0
  br i1 %cmp69, label %for.body.lr.ph, label %if.end42.for.end_crit_edge

if.end42.for.end_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end42
  %data = getelementptr i8, ptr %kref, i32 -64
  br label %for.body

for.body:                                         ; preds = %ceph_msg_data_destroy.exit.for.body_crit_edge, %for.body.lr.ph
  %i.070 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %ceph_msg_data_destroy.exit.for.body_crit_edge ]
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr %struct.ceph_msg_data, ptr %16, i32 %i.070
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.205)
  switch i32 %18, label %for.body.ceph_msg_data_destroy.exit_crit_edge [
    i32 1, label %land.lhs.true.i
    i32 2, label %if.then5.i
  ]

for.body.ceph_msg_data_destroy.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_msg_data_destroy.exit

land.lhs.true.i:                                  ; preds = %for.body
  %own_pages.i = getelementptr %struct.ceph_msg_data, ptr %16, i32 %i.070, i32 1, i32 0, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %own_pages.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %own_pages.i, align 4, !range !476
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i64 = icmp eq i8 %21, 0
  br i1 %tobool.not.i64, label %land.lhs.true.i.ceph_msg_data_destroy.exit_crit_edge, label %if.then.i66

land.lhs.true.i.ceph_msg_data_destroy.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %ceph_msg_data_destroy.exit

if.then.i66:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  %22 = getelementptr %struct.ceph_msg_data, ptr %16, i32 %i.070, i32 1
  %alignment.i = getelementptr inbounds %struct.anon.176, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %alignment.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %alignment.i, align 4
  %conv.i65 = zext i32 %24 to i64
  %length.i = getelementptr %struct.ceph_msg_data, ptr %16, i32 %i.070, i32 1, i32 0, i32 0, i32 1
  %25 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %length.i, align 4
  %conv1.i = zext i32 %26 to i64
  %add.i.i = add nuw nsw i64 %conv.i65, 4095
  %sub.i.i = add nuw nsw i64 %add.i.i, %conv1.i
  %shr.i.i = lshr i64 %sub.i.i, 12
  %shr2.i.i = lshr i64 %conv.i65, 12
  %sub3.i.i = sub nsw i64 %shr.i.i, %shr2.i.i
  %conv.i.i = trunc i64 %sub3.i.i to i32
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %22, align 4
  tail call void @ceph_release_page_vector(ptr noundef %28, i32 noundef %conv.i.i) #15
  br label %ceph_msg_data_destroy.exit

if.then5.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %29 = getelementptr %struct.ceph_msg_data, ptr %16, i32 %i.070, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  tail call void @ceph_pagelist_release(ptr noundef %31) #15
  br label %ceph_msg_data_destroy.exit

ceph_msg_data_destroy.exit:                       ; preds = %if.then5.i, %if.then.i66, %land.lhs.true.i.ceph_msg_data_destroy.exit_crit_edge, %for.body.ceph_msg_data_destroy.exit_crit_edge
  %inc = add nuw nsw i32 %i.070, 1
  %32 = ptrtoint ptr %num_data_items to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_data_items, align 4
  %cmp = icmp slt i32 %inc, %33
  br i1 %cmp, label %ceph_msg_data_destroy.exit.for.body_crit_edge, label %ceph_msg_data_destroy.exit.for.end_crit_edge

ceph_msg_data_destroy.exit.for.end_crit_edge:     ; preds = %ceph_msg_data_destroy.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

ceph_msg_data_destroy.exit.for.body_crit_edge:    ; preds = %ceph_msg_data_destroy.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %ceph_msg_data_destroy.exit.for.end_crit_edge, %if.end42.for.end_crit_edge
  %pool = getelementptr i8, ptr %kref, i32 12
  %34 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pool, align 4
  %tobool43.not = icmp eq ptr %35, null
  br i1 %tobool43.not, label %if.else, label %if.then44

if.then44:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @ceph_msgpool_put(ptr noundef nonnull %35, ptr noundef %add.ptr) #15
  br label %if.end46

if.else:                                          ; preds = %for.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_msg_free.__UNIQUE_ID_ddebug713, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_msg_release, %if.then.i67)) #15
          to label %ceph_msg_free.exit [label %if.then.i67], !srcloc !459

if.then.i67:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_msg_free.__UNIQUE_ID_ddebug713, ptr noundef nonnull @.str.57, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 2097, ptr noundef nonnull @.str.193, ptr noundef %add.ptr) #15
  br label %ceph_msg_free.exit

ceph_msg_free.exit:                               ; preds = %if.then.i67, %if.else
  %front.i = getelementptr i8, ptr %kref, i32 -80
  %36 = ptrtoint ptr %front.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %front.i, align 4
  tail call void @kvfree(ptr noundef %37) #15
  %data.i = getelementptr i8, ptr %kref, i32 -64
  %38 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i, align 4
  tail call void @kfree(ptr noundef %39) #15
  %40 = load ptr, ptr @ceph_msg_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %40, ptr noundef %add.ptr) #15
  br label %if.end46

if.end46:                                         ; preds = %ceph_msg_free.exit, %if.then44
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ceph_msg_dump(ptr noundef %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_msg_dump.__UNIQUE_ID_ddebug717, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_msg_dump, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !459

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %front_alloc_len = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 14
  %0 = ptrtoint ptr %front_alloc_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %front_alloc_len, align 4
  %data_length = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 4
  %2 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_length, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_msg_dump.__UNIQUE_ID_ddebug717, ptr noundef nonnull @.str.97, ptr noundef %msg, i32 noundef %1, i32 noundef %3) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @print_hex_dump(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %msg, i32 noundef 53, i1 noundef zeroext true) #15
  %front = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 2
  %4 = ptrtoint ptr %front to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %front, align 4
  %iov_len = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %iov_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iov_len, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.100, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %5, i32 noundef %7, i1 noundef zeroext true) #15
  %middle = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 3
  %8 = ptrtoint ptr %middle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %middle, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %do.end.if.end11_crit_edge, label %if.then5

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %vec = getelementptr inbounds %struct.ceph_buffer, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %vec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vec, align 4
  %iov_len10 = getelementptr inbounds %struct.ceph_buffer, ptr %9, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %iov_len10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iov_len10, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.101, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %11, i32 noundef %13, i1 noundef zeroext true) #15
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %do.end.if.end11_crit_edge
  %14 = getelementptr inbounds %struct.ceph_msg, ptr %msg, i32 0, i32 1
  tail call void @print_hex_dump(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.102, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %14, i32 noundef 21, i1 noundef zeroext true) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceph_sock_data_ready(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %msgr = getelementptr inbounds %struct.ceph_connection, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %msgr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msgr, align 8
  %stopping = getelementptr inbounds %struct.ceph_messenger, ptr %3, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %stopping, i32 noundef 4) #15
  %4 = ptrtoint ptr %stopping to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %stopping, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %6 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %7)
  %cmp.not = icmp eq i8 %7, 8
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_sock_data_ready.__UNIQUE_ID_ddebug602, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_sock_data_ready, %if.then7)) #15
          to label %do.end [label %if.then7], !srcloc !459

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %state = getelementptr inbounds %struct.ceph_connection, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_sock_data_ready.__UNIQUE_ID_ddebug602, ptr noundef nonnull @.str.108, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 353, ptr noundef nonnull @.str.106, ptr noundef %1, i32 noundef %9) #15
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %call.i = tail call fastcc i32 @queue_con_delay(ptr noundef %1, i32 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceph_sock_write_space(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  %flags.i = getelementptr inbounds %struct.ceph_connection, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool8.i.not = icmp eq i32 %4, 0
  br i1 %tobool8.i.not, label %do.body9, label %if.then

if.then:                                          ; preds = %entry
  %sk_sndbuf.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 21
  %5 = ptrtoint ptr %sk_sndbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %sk_sndbuf.i.i.i, align 4
  %sk_wmem_queued.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 22
  %7 = ptrtoint ptr %sk_wmem_queued.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %sk_wmem_queued.i.i.i, align 8
  %sub.i.i.i = sub i32 %6, %8
  %9 = load volatile i32, ptr %sk_wmem_queued.i.i.i, align 8
  %shr.i.i.i = ashr i32 %9, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %shr.i.i.i)
  %cmp.not.i.i = icmp slt i32 %sub.i.i.i, %shr.i.i.i
  br i1 %cmp.not.i.i, label %if.then.if.end26_crit_edge, label %land.rhs.i.i

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

land.rhs.i.i:                                     ; preds = %if.then
  %10 = ptrtoint ptr %sk_wmem_queued.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %sk_wmem_queued.i.i.i, align 8
  %12 = ptrtoint ptr %sk_sndbuf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %sk_sndbuf.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp.not.i.i.i = icmp slt i32 %11, %13
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %land.rhs.i.i.if.end26_crit_edge

land.rhs.i.i.if.end26_crit_edge:                  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.end.i.i.i:                                     ; preds = %land.rhs.i.i
  %skc_prot.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %14 = ptrtoint ptr %skc_prot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skc_prot.i.i.i, align 8
  %stream_memory_free.i.i.i = getelementptr inbounds %struct.proto, ptr %15, i32 0, i32 28
  %16 = ptrtoint ptr %stream_memory_free.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stream_memory_free.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.do.body_crit_edge, label %sk_stream_is_writeable.exit

if.end.i.i.i.do.body_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

sk_stream_is_writeable.exit:                      ; preds = %if.end.i.i.i
  %call.i.i.i = tail call zeroext i1 %17(ptr noundef %sk, i32 noundef 0) #15
  br i1 %call.i.i.i, label %sk_stream_is_writeable.exit.do.body_crit_edge, label %sk_stream_is_writeable.exit.if.end26_crit_edge

sk_stream_is_writeable.exit.if.end26_crit_edge:   ; preds = %sk_stream_is_writeable.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

sk_stream_is_writeable.exit.do.body_crit_edge:    ; preds = %sk_stream_is_writeable.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.body:                                          ; preds = %sk_stream_is_writeable.exit.do.body_crit_edge, %if.end.i.i.i.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_sock_write_space.__UNIQUE_ID_ddebug603, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_sock_write_space, %if.then6)) #15
          to label %do.end [label %if.then6], !srcloc !459

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_sock_write_space.__UNIQUE_ID_ddebug603, ptr noundef nonnull @.str.111, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 372, ptr noundef nonnull @.str.109, ptr noundef %1) #15
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %18 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sk_socket, align 8
  %flags = getelementptr inbounds %struct.socket, ptr %19, i32 0, i32 2
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #15
  %call.i = tail call fastcc i32 @queue_con_delay(ptr noundef %1, i32 noundef 0) #15
  br label %if.end26

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_sock_write_space.__UNIQUE_ID_ddebug604, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_sock_write_space, %if.then21)) #15
          to label %if.end26 [label %if.then21], !srcloc !459

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_sock_write_space.__UNIQUE_ID_ddebug604, ptr noundef nonnull @.str.113, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 377, ptr noundef nonnull @.str.109, ptr noundef %1) #15
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %do.body9, %do.end, %sk_stream_is_writeable.exit.if.end26_crit_edge, %land.rhs.i.i.if.end26_crit_edge, %if.then.if.end26_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ceph_sock_state_change(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_user_data = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 72
  %0 = ptrtoint ptr %sk_user_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_user_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_sock_state_change.__UNIQUE_ID_ddebug605, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_sock_state_change, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !459

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %state = getelementptr inbounds %struct.ceph_connection, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %4 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load volatile i8, ptr %skc_state, align 2
  %conv = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_sock_state_change.__UNIQUE_ID_ddebug605, ptr noundef nonnull @.str.116, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 387, ptr noundef nonnull @.str.114, ptr noundef %1, i32 noundef %3, i32 noundef %conv) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %skc_state5 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %6 = ptrtoint ptr %skc_state5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state5, align 2
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.206)
  switch i8 %7, label %do.end.sw.epilog_crit_edge [
    i8 7, label %do.body7
    i8 8, label %do.end.do.body25_crit_edge
    i8 1, label %do.body43
  ]

do.end.do.body25_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body25

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

do.body7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_sock_state_change.__UNIQUE_ID_ddebug606, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_sock_state_change, %if.then19)) #15
          to label %do.body25 [label %if.then19], !srcloc !459

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_sock_state_change.__UNIQUE_ID_ddebug606, ptr noundef nonnull @.str.118, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 391, ptr noundef nonnull @.str.114) #15
  br label %do.body25

do.body25:                                        ; preds = %if.then19, %do.body7, %do.end.do.body25_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_sock_state_change.__UNIQUE_ID_ddebug607, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_sock_state_change, %if.then37)) #15
          to label %do.end41 [label %if.then37], !srcloc !459

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_sock_state_change.__UNIQUE_ID_ddebug607, ptr noundef nonnull @.str.120, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 394, ptr noundef nonnull @.str.114) #15
  br label %do.end41

do.end41:                                         ; preds = %if.then37, %do.body25
  tail call fastcc void @con_sock_state_closing(ptr noundef %1)
  %flags.i = getelementptr inbounds %struct.ceph_connection, ptr %1, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags.i) #15
  br label %sw.epilog.sink.split

do.body43:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ceph_sock_state_change.__UNIQUE_ID_ddebug608, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ceph_sock_state_change, %if.then55)) #15
          to label %do.end59 [label %if.then55], !srcloc !459

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ceph_sock_state_change.__UNIQUE_ID_ddebug608, ptr noundef nonnull @.str.122, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 400, ptr noundef nonnull @.str.114) #15
  br label %do.end59

do.end59:                                         ; preds = %if.then55, %do.body43
  tail call fastcc void @con_sock_state_connected(ptr noundef %1)
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %do.end59, %do.end41
  %call.i77 = tail call fastcc i32 @queue_con_delay(ptr noundef %1, i32 noundef 0) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @con_sock_state_closing(ptr noundef %con) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sock_state = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sock_state, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !469
  tail call void @llvm.prefetch.p0(ptr %sock_state, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 4, ptr %sock_state) #15, !srcloc !470
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !471
  %call.off = add i32 %asmresult.i.i, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.off)
  %switch = icmp ult i32 %call.off, 3
  br i1 %switch, label %entry.do.body29_crit_edge, label %land.rhs

entry.do.body29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body29

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 319, i32 noundef 9, ptr noundef null) #15
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.124, i32 noundef %asmresult.i.i) #18
  br label %do.body29

do.body29:                                        ; preds = %land.rhs, %entry.do.body29_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @con_sock_state_closing.__UNIQUE_ID_ddebug600, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@con_sock_state_closing, %if.then39)) #15
          to label %do.end43 [label %if.then39], !srcloc !459

if.then39:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @con_sock_state_closing.__UNIQUE_ID_ddebug600, ptr noundef nonnull @.str.126, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 322, ptr noundef nonnull @.str.124, ptr noundef %con, i32 noundef %asmresult.i.i, i32 noundef 4) #15
  br label %do.end43

do.end43:                                         ; preds = %if.then39, %do.body29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @con_sock_state_connected(ptr noundef %con) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sock_state = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sock_state, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !469
  tail call void @llvm.prefetch.p0(ptr %sock_state, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 3, ptr %sock_state) #15, !srcloc !470
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !471
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i)
  %cmp.not = icmp eq i32 %asmresult.i.i, 2
  br i1 %cmp.not, label %entry.do.body27_crit_edge, label %do.end, !prof !445

entry.do.body27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body27

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 306, i32 noundef 9, ptr noundef null) #15
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.127, i32 noundef %asmresult.i.i) #18
  br label %do.body27

do.body27:                                        ; preds = %do.end, %entry.do.body27_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @con_sock_state_connected.__UNIQUE_ID_ddebug599, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@con_sock_state_connected, %if.then37)) #15
          to label %do.end41 [label %if.then37], !srcloc !459

if.then37:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @con_sock_state_connected.__UNIQUE_ID_ddebug599, ptr noundef nonnull @.str.126, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 309, ptr noundef nonnull @.str.127, ptr noundef %con, i32 noundef %asmresult.i.i, i32 noundef 3) #15
  br label %do.end41

do.end41:                                         ; preds = %if.then37, %do.body27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_con_v2_reset_protocol(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_con_v1_reset_protocol(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in4_pton(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in6_pton(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dns_query(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @queue_con_delay(ptr noundef %con, i32 noundef %delay) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call ptr %3(ptr noundef %con) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @queue_con_delay.__UNIQUE_ID_ddebug681, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@queue_con_delay, %if.then5)) #15
          to label %return [label %if.then5], !srcloc !459

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @queue_con_delay.__UNIQUE_ID_ddebug681, ptr noundef nonnull @.str.140, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1395, ptr noundef nonnull @.str.138, ptr noundef %con) #15
  br label %return

if.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %delay)
  %cmp = icmp ugt i32 %delay, 99
  br i1 %cmp, label %if.then8, label %if.end7.do.body11_crit_edge

if.end7.do.body11_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body11

if.then8:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %call9 = tail call i32 @round_jiffies_relative(i32 noundef %delay) #15
  br label %do.body11

do.body11:                                        ; preds = %if.then8, %if.end7.do.body11_crit_edge
  %delay.addr.0 = phi i32 [ %call9, %if.then8 ], [ %delay, %if.end7.do.body11_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @queue_con_delay.__UNIQUE_ID_ddebug682, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@queue_con_delay, %if.then23)) #15
          to label %do.end26 [label %if.then23], !srcloc !459

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @queue_con_delay.__UNIQUE_ID_ddebug682, ptr noundef nonnull @.str.142, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1402, ptr noundef nonnull @.str.138, ptr noundef %con, i32 noundef %delay.addr.0) #15
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %do.body11
  %4 = load ptr, ptr @ceph_msgr_wq, align 4
  %work = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 26
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %work, i32 noundef %delay.addr.0) #15
  br i1 %call.i, label %do.end26.return_crit_edge, label %do.body29

do.end26.return_crit_edge:                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

do.body29:                                        ; preds = %do.end26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @queue_con_delay.__UNIQUE_ID_ddebug683, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@queue_con_delay, %if.then41)) #15
          to label %do.end44 [label %if.then41], !srcloc !459

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @queue_con_delay.__UNIQUE_ID_ddebug683, ptr noundef nonnull @.str.144, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1404, ptr noundef nonnull @.str.138, ptr noundef %con) #15
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %do.body29
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %put = getelementptr inbounds %struct.ceph_connection_operations, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %put to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %put, align 4
  tail call void %8(ptr noundef %con) #15
  br label %return

return:                                           ; preds = %do.end44, %do.end26.return_crit_edge, %if.then5, %do.body
  %retval.0 = phi i32 [ -16, %do.end44 ], [ -2, %if.then5 ], [ 0, %do.end26.return_crit_edge ], [ -2, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @round_jiffies_relative(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_con_v2_try_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_con_v1_try_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_con_v2_try_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ceph_con_v1_try_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @con_fault(ptr noundef %con) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @con_fault.__UNIQUE_ID_ddebug693, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@con_fault, %if.then)) #15
          to label %do.end6 [label %if.then], !srcloc !459

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %state = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %peer_addr = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 9
  %call4 = tail call ptr @ceph_pr_addr(ptr noundef %peer_addr)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @con_fault.__UNIQUE_ID_ddebug693, ptr noundef nonnull @.str.177, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1575, ptr noundef %con, i32 noundef %1, ptr noundef %call4) #15
  br label %do.end6

do.end6:                                          ; preds = %if.then, %entry
  %peer_name = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 8
  %2 = ptrtoint ptr %peer_name to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %peer_name, align 8
  %conv = zext i8 %3 to i32
  %call8 = tail call ptr @ceph_entity_type_name(i32 noundef %conv) #15
  %num = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %num to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %num, align 1
  %6 = tail call i64 @llvm.bswap.i64(i64 %5)
  %peer_addr10 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 9
  %call11 = tail call ptr @ceph_pr_addr(ptr noundef %peer_addr10)
  %error_msg = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 7
  %7 = ptrtoint ptr %error_msg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %error_msg, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, ptr noundef %call8, i64 noundef %6, ptr noundef %call11, ptr noundef %8) #18
  %9 = ptrtoint ptr %error_msg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %error_msg, align 4
  %state14 = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 3
  %10 = ptrtoint ptr %state14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state14, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.207)
  switch i32 %11, label %do.end6.if.end39_crit_edge [
    i32 13, label %do.end6.do.end33_crit_edge
    i32 1, label %do.end6.do.end33_crit_edge153
  ]

do.end6.do.end33_crit_edge153:                    ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end33

do.end6.do.end33_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end33

do.end6.if.end39_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end39

do.end33:                                         ; preds = %do.end6.do.end33_crit_edge, %do.end6.do.end33_crit_edge153
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1582, i32 noundef 9, ptr noundef null) #15
  br label %if.end39

if.end39:                                         ; preds = %do.end33, %do.end6.if.end39_crit_edge
  tail call fastcc void @ceph_con_reset_protocol(ptr noundef %con)
  %flags.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 6
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags.i, align 4
  %15 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.i.not = icmp eq i32 %15, 0
  br i1 %tobool8.i.not, label %if.end67, label %do.body49

do.body49:                                        ; preds = %if.end39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @con_fault.__UNIQUE_ID_ddebug694, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@con_fault, %if.then61)) #15
          to label %do.end65 [label %if.then61], !srcloc !459

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @con_fault.__UNIQUE_ID_ddebug694, ptr noundef nonnull @.str.180, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1587) #15
  br label %do.end65

do.end65:                                         ; preds = %if.then61, %do.body49
  %16 = ptrtoint ptr %state14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %state14, align 4
  br label %if.end109

if.end67:                                         ; preds = %if.end39
  %out_sent = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 14
  %out_queue = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 13
  %17 = ptrtoint ptr %out_sent to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %out_sent, align 4
  %cmp.i.not.i = icmp eq ptr %18, %out_sent
  br i1 %cmp.i.not.i, label %if.end67.list_splice_init.exit_crit_edge, label %if.then.i

if.end67.list_splice_init.exit_crit_edge:         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %out_queue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %out_queue, align 4
  %prev2.i.i = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 14, i32 1
  %21 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %out_queue, ptr %prev3.i.i, align 4
  store ptr %18, ptr %out_queue, align 4
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %20, ptr %22, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev6.i.i, align 4
  %26 = ptrtoint ptr %out_sent to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %out_sent, ptr %out_sent, align 4
  store ptr %out_sent, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %if.end67.list_splice_init.exit_crit_edge
  %27 = ptrtoint ptr %out_queue to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %out_queue, align 4
  %cmp.i.not = icmp eq ptr %28, %out_queue
  br i1 %cmp.i.not, label %land.lhs.true, label %list_splice_init.exit.if.else_crit_edge

list_splice_init.exit.if.else_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

land.lhs.true:                                    ; preds = %list_splice_init.exit
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flags.i, align 4
  %31 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool8.i147.not = icmp eq i32 %31, 0
  br i1 %tobool8.i147.not, label %do.body73, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else

do.body73:                                        ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @con_fault.__UNIQUE_ID_ddebug695, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@con_fault, %if.then85)) #15
          to label %do.end89 [label %if.then85], !srcloc !459

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @con_fault.__UNIQUE_ID_ddebug695, ptr noundef nonnull @.str.182, i32 noundef 0, ptr noundef nonnull @.str.11, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.6, i32 0, i32 9), i32 noundef 1599, ptr noundef %con) #15
  br label %do.end89

do.end89:                                         ; preds = %if.then85, %do.body73
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags.i) #15
  %32 = ptrtoint ptr %state14 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 13, ptr %state14, align 4
  br label %if.end109

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %list_splice_init.exit.if.else_crit_edge
  %33 = ptrtoint ptr %state14 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %state14, align 4
  %delay = getelementptr inbounds %struct.ceph_connection, ptr %con, i32 0, i32 27
  %34 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool92.not = icmp eq i32 %35, 0
  br i1 %tobool92.not, label %if.else.if.end108.sink.split_crit_edge, label %if.else95

if.else.if.end108.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end108.sink.split

if.else95:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %35)
  %cmp97 = icmp ult i32 %35, 1500
  br i1 %cmp97, label %if.then99, label %if.else95.if.end108_crit_edge

if.else95.if.end108_crit_edge:                    ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end108

if.then99:                                        ; preds = %if.else95
  call void @__sanitizer_cov_trace_pc() #17
  %mul = shl nuw nsw i32 %35, 1
  %36 = tail call i32 @llvm.umin.i32(i32 %mul, i32 1500)
  br label %if.end108.sink.split

if.end108.sink.split:                             ; preds = %if.then99, %if.else.if.end108.sink.split_crit_edge
  %.sink = phi i32 [ %36, %if.then99 ], [ 25, %if.else.if.end108.sink.split_crit_edge ]
  %37 = ptrtoint ptr %delay to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink, ptr %delay, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.end108.sink.split, %if.else95.if.end108_crit_edge
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags.i) #15
  %call.i = tail call fastcc i32 @queue_con_delay(ptr noundef %con, i32 noundef 0) #15
  br label %if.end109

if.end109:                                        ; preds = %if.end108, %do.end89, %do.end65
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ceph_buffer_new(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_msgpool_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_buffer_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_release_page_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ceph_pagelist_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 213)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 213)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind readonly }
attributes #14 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !20, !21, !22, !23, !24, !25, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !54, !55, !56, !57, !59, !61, !62, !63, !64, !66, !67, !69, !70, !71, !72, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !108, !110, !111, !113, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !164, !166, !168, !170, !172, !174, !176, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !195, !197, !199, !200, !201, !202, !204, !206, !207, !209, !211, !212, !213, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !247, !248, !249, !251, !252, !253, !254, !256, !257, !258, !260, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !275, !277, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !292, !293, !294, !296, !298, !299, !300, !302, !304, !305, !307, !308, !309, !311, !313, !314, !315, !317, !319, !320, !321, !322, !323, !325, !326, !327, !328, !330, !331, !332, !334, !335, !336, !338, !339, !341, !342, !343, !344, !346, !347, !348, !350, !351, !352, !354, !355, !356, !358, !359, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !393, !394, !395, !397, !398, !399, !400, !402, !403, !404, !406, !407, !408, !410, !411, !412, !414, !415, !417, !418, !419, !421, !422, !423, !424, !426, !427, !428, !429, !431, !432, !434}
!llvm.named.register.sp = !{!435}
!llvm.module.flags = !{!436, !437, !438, !439, !440, !441, !442, !443}
!llvm.ident = !{!444}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ceph/messenger.c", i32 176, i32 33}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/ceph/messenger.c", i32 182, i32 33}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/ceph/messenger.c", i32 188, i32 33}
!6 = !{ptr @__ksymtab_ceph_pr_addr, !7, !"__ksymtab_ceph_pr_addr", i1 false, i1 false}
!7 = !{!"../net/ceph/messenger.c", i32 194, i32 1}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/ceph/messenger.c", i32 254, i32 33}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/ceph/messenger.c", i32 258, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @ceph_msgr_init._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @ceph_msgr_init._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__ksymtab_ceph_msgr_flush, !17, !"__ksymtab_ceph_msgr_flush", i1 false, i1 false}
!17 = !{!"../net/ceph/messenger.c", i32 275, i32 1}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/ceph/messenger.c", i32 437, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ceph_tcp_connect.__UNIQUE_ID_ddebug609, !19, !"__UNIQUE_ID_ddebug609", i1 false, i1 false}
!23 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/ceph/messenger.c", i32 451, i32 2}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/ceph/messenger.c", i32 460, i32 3}
!29 = !{ptr @ceph_tcp_connect.__UNIQUE_ID_ddebug610, !28, !"__UNIQUE_ID_ddebug610", i1 false, i1 false}
!30 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/ceph/messenger.c", i32 464, i32 3}
!33 = !{ptr @ceph_tcp_connect._entry, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ceph_tcp_connect._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/ceph/messenger.c", i32 484, i32 2}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ceph_con_close_socket.__UNIQUE_ID_ddebug611, !36, !"__UNIQUE_ID_ddebug611", i1 false, i1 false}
!39 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/ceph/messenger.c", i32 551, i32 2}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ceph_con_reset_session.__UNIQUE_ID_ddebug613, !41, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!44 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/ceph/messenger.c", i32 573, i32 2}
!47 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ceph_con_close.__UNIQUE_ID_ddebug614, !46, !"__UNIQUE_ID_ddebug614", i1 false, i1 false}
!49 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @__ksymtab_ceph_con_close, !51, !"__ksymtab_ceph_con_close", i1 false, i1 false}
!51 = !{!"../net/ceph/messenger.c", i32 587, i32 1}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/ceph/messenger.c", i32 597, i32 2}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ceph_con_open.__UNIQUE_ID_ddebug615, !53, !"__UNIQUE_ID_ddebug615", i1 false, i1 false}
!56 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @__ksymtab_ceph_con_open, !58, !"__ksymtab_ceph_con_open", i1 false, i1 false}
!58 = !{!"../net/ceph/messenger.c", i32 610, i32 1}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/ceph/messenger.c", i32 630, i32 2}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @ceph_con_init.__UNIQUE_ID_ddebug616, !60, !"__UNIQUE_ID_ddebug616", i1 false, i1 false}
!63 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @ceph_con_init.__key, !65, !"__key", i1 false, i1 false}
!65 = !{!"../net/ceph/messenger.c", i32 638, i32 2}
!66 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ceph_con_init.__key.32, !68, !"__key", i1 false, i1 false}
!68 = !{!"../net/ceph/messenger.c", i32 641, i32 2}
!69 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ceph_con_init.__key.34, !68, !"__key", i1 false, i1 false}
!71 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @__ksymtab_ceph_con_init, !73, !"__ksymtab_ceph_con_init", i1 false, i1 false}
!73 = !{!"../net/ceph/messenger.c", i32 645, i32 1}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/ceph/messenger.c", i32 671, i32 2}
!76 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ceph_con_discard_sent.__UNIQUE_ID_ddebug617, !75, !"__UNIQUE_ID_ddebug617", i1 false, i1 false}
!78 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/ceph/messenger.c", i32 680, i32 3}
!81 = !{ptr @ceph_con_discard_sent.__UNIQUE_ID_ddebug618, !80, !"__UNIQUE_ID_ddebug618", i1 false, i1 false}
!82 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/ceph/messenger.c", i32 696, i32 2}
!85 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ceph_con_discard_requeued.__UNIQUE_ID_ddebug619, !84, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!87 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @ceph_con_discard_requeued.__UNIQUE_ID_ddebug620, !89, !"__UNIQUE_ID_ddebug620", i1 false, i1 false}
!89 = !{!"../net/ceph/messenger.c", i32 706, i32 3}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/ceph/messenger.c", i32 1279, i32 2}
!92 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @ceph_parse_ips.__UNIQUE_ID_ddebug677, !91, !"__UNIQUE_ID_ddebug677", i1 false, i1 false}
!94 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/ceph/messenger.c", i32 1300, i32 5}
!97 = !{ptr @ceph_parse_ips.__UNIQUE_ID_ddebug678, !96, !"__UNIQUE_ID_ddebug678", i1 false, i1 false}
!98 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/ceph/messenger.c", i32 1334, i32 3}
!101 = !{ptr @ceph_parse_ips.__UNIQUE_ID_ddebug679, !100, !"__UNIQUE_ID_ddebug679", i1 false, i1 false}
!102 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../net/ceph/messenger.c", i32 1373, i32 2}
!105 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @ceph_con_process_message.__UNIQUE_ID_ddebug680, !104, !"__UNIQUE_ID_ddebug680", i1 false, i1 false}
!107 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @ceph_messenger_init.__key, !109, !"__key", i1 false, i1 false}
!109 = !{!"../net/ceph/messenger.c", i32 1630, i32 2}
!110 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../net/ceph/messenger.c", i32 1654, i32 2}
!113 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @ceph_messenger_init.__UNIQUE_ID_ddebug696, !112, !"__UNIQUE_ID_ddebug696", i1 false, i1 false}
!115 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../net/ceph/messenger.c", i32 1698, i32 3}
!118 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @ceph_con_send.__UNIQUE_ID_ddebug698, !117, !"__UNIQUE_ID_ddebug698", i1 false, i1 false}
!120 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.61, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../net/ceph/messenger.c", i32 1708, i32 2}
!123 = !{ptr @ceph_con_send.__UNIQUE_ID_ddebug699, !122, !"__UNIQUE_ID_ddebug699", i1 false, i1 false}
!124 = !{ptr @.str.62, !122, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @__ksymtab_ceph_con_send, !126, !"__ksymtab_ceph_con_send", i1 false, i1 false}
!126 = !{!"../net/ceph/messenger.c", i32 1723, i32 1}
!127 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../net/ceph/messenger.c", i32 1733, i32 3}
!129 = !{ptr @.str.64, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @ceph_msg_revoke.__UNIQUE_ID_ddebug700, !128, !"__UNIQUE_ID_ddebug700", i1 false, i1 false}
!131 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../net/ceph/messenger.c", i32 1740, i32 3}
!134 = !{ptr @ceph_msg_revoke.__UNIQUE_ID_ddebug701, !133, !"__UNIQUE_ID_ddebug701", i1 false, i1 false}
!135 = !{ptr @.str.67, !133, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../net/ceph/messenger.c", i32 1745, i32 2}
!138 = !{ptr @ceph_msg_revoke.__UNIQUE_ID_ddebug702, !137, !"__UNIQUE_ID_ddebug702", i1 false, i1 false}
!139 = !{ptr @.str.69, !137, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../net/ceph/messenger.c", i32 1751, i32 3}
!142 = !{ptr @ceph_msg_revoke.__UNIQUE_ID_ddebug703, !141, !"__UNIQUE_ID_ddebug703", i1 false, i1 false}
!143 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../net/ceph/messenger.c", i32 1759, i32 3}
!146 = !{ptr @ceph_msg_revoke.__UNIQUE_ID_ddebug704, !145, !"__UNIQUE_ID_ddebug704", i1 false, i1 false}
!147 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../net/ceph/messenger.c", i32 1773, i32 3}
!150 = !{ptr @ceph_msg_revoke_incoming.__UNIQUE_ID_ddebug705, !149, !"__UNIQUE_ID_ddebug705", i1 false, i1 false}
!151 = !{ptr @.str.75, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../net/ceph/messenger.c", i32 1780, i32 3}
!153 = !{ptr @ceph_msg_revoke_incoming.__UNIQUE_ID_ddebug706, !152, !"__UNIQUE_ID_ddebug706", i1 false, i1 false}
!154 = !{ptr @.str.76, !152, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.77, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../net/ceph/messenger.c", i32 1788, i32 3}
!157 = !{ptr @ceph_msg_revoke_incoming.__UNIQUE_ID_ddebug707, !156, !"__UNIQUE_ID_ddebug707", i1 false, i1 false}
!158 = !{ptr @.str.78, !156, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.79, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../net/ceph/messenger.c", i32 1799, i32 2}
!161 = !{ptr @.str.80, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @ceph_con_keepalive.__UNIQUE_ID_ddebug708, !160, !"__UNIQUE_ID_ddebug708", i1 false, i1 false}
!163 = !{ptr @.str.81, !160, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @__ksymtab_ceph_con_keepalive, !165, !"__ksymtab_ceph_con_keepalive", i1 false, i1 false}
!165 = !{!"../net/ceph/messenger.c", i32 1808, i32 1}
!166 = !{ptr @__ksymtab_ceph_msg_data_add_pages, !167, !"__ksymtab_ceph_msg_data_add_pages", i1 false, i1 false}
!167 = !{!"../net/ceph/messenger.c", i32 1858, i32 1}
!168 = !{ptr @__ksymtab_ceph_msg_data_add_pagelist, !169, !"__ksymtab_ceph_msg_data_add_pagelist", i1 false, i1 false}
!169 = !{!"../net/ceph/messenger.c", i32 1875, i32 1}
!170 = !{ptr @__ksymtab_ceph_msg_data_add_bio, !171, !"__ksymtab_ceph_msg_data_add_bio", i1 false, i1 false}
!171 = !{!"../net/ceph/messenger.c", i32 1890, i32 1}
!172 = !{ptr @__ksymtab_ceph_msg_data_add_bvecs, !173, !"__ksymtab_ceph_msg_data_add_bvecs", i1 false, i1 false}
!173 = !{!"../net/ceph/messenger.c", i32 1904, i32 1}
!174 = !{ptr @.str.82, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../net/ceph/messenger.c", i32 1930, i32 4}
!176 = !{ptr @.str.83, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @ceph_msg_new2.__UNIQUE_ID_ddebug709, !175, !"__UNIQUE_ID_ddebug709", i1 false, i1 false}
!178 = !{ptr @.str.84, !175, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.85, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../net/ceph/messenger.c", i32 1948, i32 2}
!181 = !{ptr @ceph_msg_new2.__UNIQUE_ID_ddebug710, !180, !"__UNIQUE_ID_ddebug710", i1 false, i1 false}
!182 = !{ptr @.str.86, !180, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.87, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../net/ceph/messenger.c", i32 1955, i32 3}
!185 = !{ptr @ceph_msg_new2._entry, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @ceph_msg_new2._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.88, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../net/ceph/messenger.c", i32 1959, i32 3}
!189 = !{ptr @ceph_msg_new2.__UNIQUE_ID_ddebug711, !188, !"__UNIQUE_ID_ddebug711", i1 false, i1 false}
!190 = !{ptr @.str.89, !188, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @__ksymtab_ceph_msg_new2, !192, !"__ksymtab_ceph_msg_new2", i1 false, i1 false}
!192 = !{!"../net/ceph/messenger.c", i32 1964, i32 1}
!193 = !{ptr @__ksymtab_ceph_msg_new, !194, !"__ksymtab_ceph_msg_new", i1 false, i1 false}
!194 = !{!"../net/ceph/messenger.c", i32 1971, i32 1}
!195 = !{ptr @.str.90, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../net/ceph/messenger.c", i32 2042, i32 20}
!197 = !{ptr @.str.91, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../net/ceph/messenger.c", i32 2130, i32 2}
!199 = !{ptr @.str.92, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @ceph_msg_get.__UNIQUE_ID_ddebug715, !198, !"__UNIQUE_ID_ddebug715", i1 false, i1 false}
!201 = !{ptr @.str.93, !198, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @__ksymtab_ceph_msg_get, !203, !"__ksymtab_ceph_msg_get", i1 false, i1 false}
!203 = !{!"../net/ceph/messenger.c", i32 2135, i32 1}
!204 = !{ptr @.str.94, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../net/ceph/messenger.c", i32 2139, i32 2}
!206 = !{ptr @ceph_msg_put.__UNIQUE_ID_ddebug716, !205, !"__UNIQUE_ID_ddebug716", i1 false, i1 false}
!207 = !{ptr @__ksymtab_ceph_msg_put, !208, !"__ksymtab_ceph_msg_put", i1 false, i1 false}
!208 = !{!"../net/ceph/messenger.c", i32 2143, i32 1}
!209 = !{ptr @.str.95, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../net/ceph/messenger.c", i32 2147, i32 2}
!211 = !{ptr @.str.96, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @ceph_msg_dump.__UNIQUE_ID_ddebug717, !210, !"__UNIQUE_ID_ddebug717", i1 false, i1 false}
!213 = !{ptr @.str.97, !210, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.98, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../net/ceph/messenger.c", i32 2149, i32 17}
!216 = !{ptr @.str.99, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../net/ceph/messenger.c", i32 2149, i32 29}
!218 = !{ptr @.str.100, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../net/ceph/messenger.c", i32 2152, i32 29}
!220 = !{ptr @.str.101, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../net/ceph/messenger.c", i32 2156, i32 30}
!222 = !{ptr @.str.102, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../net/ceph/messenger.c", i32 2160, i32 29}
!224 = !{ptr @__ksymtab_ceph_msg_dump, !225, !"__ksymtab_ceph_msg_dump", i1 false, i1 false}
!225 = !{!"../net/ceph/messenger.c", i32 2164, i32 1}
!226 = !{ptr @ceph_msg_cache, !227, !"ceph_msg_cache", i1 false, i1 false}
!227 = !{!"../net/ceph/messenger.c", i32 138, i32 27}
!228 = !{ptr @socket_class, !229, !"socket_class", i1 false, i1 false}
!229 = !{!"../net/ceph/messenger.c", i32 141, i32 30}
!230 = !{ptr @addr_str, !231, !"addr_str", i1 false, i1 false}
!231 = !{!"../net/ceph/messenger.c", i32 158, i32 13}
!232 = !{ptr @ceph_zero_page, !233, !"ceph_zero_page", i1 false, i1 false}
!233 = !{!"../net/ceph/messenger.c", i32 161, i32 14}
!234 = !{ptr @ceph_msgr_wq, !235, !"ceph_msgr_wq", i1 false, i1 false}
!235 = !{!"../net/ceph/messenger.c", i32 208, i32 33}
!236 = !{ptr @addr_str_seq, !237, !"addr_str_seq", i1 false, i1 false}
!237 = !{!"../net/ceph/messenger.c", i32 159, i32 17}
!238 = !{ptr @.str.103, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../net/ceph/messenger.c", i32 213, i32 19}
!240 = !{ptr @.str.104, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!242 = !{ptr @.str.105, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../include/linux/mm.h", i32 717, i32 2}
!244 = !{ptr @.str.106, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../net/ceph/messenger.c", i32 352, i32 3}
!246 = !{ptr @.str.107, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @ceph_sock_data_ready.__UNIQUE_ID_ddebug602, !245, !"__UNIQUE_ID_ddebug602", i1 false, i1 false}
!248 = !{ptr @.str.108, !245, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.109, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../net/ceph/messenger.c", i32 372, i32 4}
!251 = !{ptr @.str.110, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @ceph_sock_write_space.__UNIQUE_ID_ddebug603, !250, !"__UNIQUE_ID_ddebug603", i1 false, i1 false}
!253 = !{ptr @.str.111, !250, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @.str.112, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../net/ceph/messenger.c", i32 377, i32 3}
!256 = !{ptr @ceph_sock_write_space.__UNIQUE_ID_ddebug604, !255, !"__UNIQUE_ID_ddebug604", i1 false, i1 false}
!257 = !{ptr @.str.113, !255, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @.str.114, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../net/ceph/messenger.c", i32 386, i32 2}
!260 = !{ptr @.str.115, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @ceph_sock_state_change.__UNIQUE_ID_ddebug605, !259, !"__UNIQUE_ID_ddebug605", i1 false, i1 false}
!262 = !{ptr @.str.116, !259, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.117, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../net/ceph/messenger.c", i32 391, i32 3}
!265 = !{ptr @ceph_sock_state_change.__UNIQUE_ID_ddebug606, !264, !"__UNIQUE_ID_ddebug606", i1 false, i1 false}
!266 = !{ptr @.str.118, !264, !"<string literal>", i1 false, i1 false}
!267 = !{ptr @.str.119, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../net/ceph/messenger.c", i32 394, i32 3}
!269 = !{ptr @ceph_sock_state_change.__UNIQUE_ID_ddebug607, !268, !"__UNIQUE_ID_ddebug607", i1 false, i1 false}
!270 = !{ptr @.str.120, !268, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @.str.121, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../net/ceph/messenger.c", i32 400, i32 3}
!273 = !{ptr @ceph_sock_state_change.__UNIQUE_ID_ddebug608, !272, !"__UNIQUE_ID_ddebug608", i1 false, i1 false}
!274 = !{ptr @.str.122, !272, !"<string literal>", i1 false, i1 false}
!275 = !{ptr @.str.123, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../net/ceph/messenger.c", i32 320, i32 3}
!277 = !{ptr @.str.124, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @con_sock_state_closing._entry, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @con_sock_state_closing._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.125, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../net/ceph/messenger.c", i32 321, i32 2}
!282 = !{ptr @con_sock_state_closing.__UNIQUE_ID_ddebug600, !281, !"__UNIQUE_ID_ddebug600", i1 false, i1 false}
!283 = !{ptr @.str.126, !281, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @.str.127, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../net/ceph/messenger.c", i32 307, i32 3}
!286 = !{ptr @con_sock_state_connected._entry, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @con_sock_state_connected._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @con_sock_state_connected.__UNIQUE_ID_ddebug599, !289, !"__UNIQUE_ID_ddebug599", i1 false, i1 false}
!289 = !{!"../net/ceph/messenger.c", i32 308, i32 2}
!290 = !{ptr @.str.128, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../net/ceph/messenger.c", i32 296, i32 3}
!292 = !{ptr @con_sock_state_connecting._entry, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @con_sock_state_connecting._entry_ptr, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @con_sock_state_connecting.__UNIQUE_ID_ddebug598, !295, !"__UNIQUE_ID_ddebug598", i1 false, i1 false}
!295 = !{!"../net/ceph/messenger.c", i32 297, i32 2}
!296 = !{ptr @.str.129, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../net/ceph/messenger.c", i32 334, i32 3}
!298 = !{ptr @con_sock_state_closed._entry, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @con_sock_state_closed._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @con_sock_state_closed.__UNIQUE_ID_ddebug601, !301, !"__UNIQUE_ID_ddebug601", i1 false, i1 false}
!301 = !{!"../net/ceph/messenger.c", i32 335, i32 2}
!302 = !{ptr @.str.130, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../net/ceph/messenger.c", i32 505, i32 2}
!304 = !{ptr @ceph_con_reset_protocol.__UNIQUE_ID_ddebug612, !303, !"__UNIQUE_ID_ddebug612", i1 false, i1 false}
!305 = !{ptr @.str.131, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../net/ceph/messenger.c", i32 285, i32 3}
!307 = !{ptr @con_sock_state_init._entry, !306, !"_entry", i1 false, i1 false}
!308 = !{ptr @con_sock_state_init._entry_ptr, !306, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @con_sock_state_init.__UNIQUE_ID_ddebug597, !310, !"__UNIQUE_ID_ddebug597", i1 false, i1 false}
!310 = !{!"../net/ceph/messenger.c", i32 286, i32 2}
!311 = distinct !{null, !312, !"__already_done", i1 false, i1 false}
!312 = !{!"../include/linux/bvec.h", i32 106, i32 6}
!313 = !{ptr @.str.132, !312, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @.str.133, !312, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @.str.134, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!317 = !{ptr @.str.135, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../net/ceph/messenger.c", i32 1239, i32 2}
!319 = !{ptr @.str.136, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @ceph_dns_resolve_name._entry, !318, !"_entry", i1 false, i1 false}
!321 = !{ptr @ceph_dns_resolve_name._entry_ptr, !318, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.137, !318, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @.str.138, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../net/ceph/messenger.c", i32 1395, i32 3}
!325 = !{ptr @.str.139, !324, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @queue_con_delay.__UNIQUE_ID_ddebug681, !324, !"__UNIQUE_ID_ddebug681", i1 false, i1 false}
!327 = !{ptr @.str.140, !324, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @.str.141, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../net/ceph/messenger.c", i32 1402, i32 2}
!330 = !{ptr @queue_con_delay.__UNIQUE_ID_ddebug682, !329, !"__UNIQUE_ID_ddebug682", i1 false, i1 false}
!331 = !{ptr @.str.142, !329, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @.str.143, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../net/ceph/messenger.c", i32 1404, i32 3}
!334 = !{ptr @queue_con_delay.__UNIQUE_ID_ddebug683, !333, !"__UNIQUE_ID_ddebug683", i1 false, i1 false}
!335 = !{ptr @.str.144, !333, !"<string literal>", i1 false, i1 false}
!336 = !{ptr @.str.145, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../net/ceph/messenger.c", i32 1420, i32 3}
!338 = !{ptr @cancel_con.__UNIQUE_ID_ddebug684, !337, !"__UNIQUE_ID_ddebug684", i1 false, i1 false}
!339 = !{ptr @.str.146, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../net/ceph/messenger.c", i32 1510, i32 4}
!341 = !{ptr @.str.147, !340, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @ceph_con_workfn.__UNIQUE_ID_ddebug688, !340, !"__UNIQUE_ID_ddebug688", i1 false, i1 false}
!343 = !{ptr @.str.148, !340, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @.str.149, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../net/ceph/messenger.c", i32 1514, i32 4}
!346 = !{ptr @ceph_con_workfn.__UNIQUE_ID_ddebug689, !345, !"__UNIQUE_ID_ddebug689", i1 false, i1 false}
!347 = !{ptr @.str.150, !345, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @.str.151, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../net/ceph/messenger.c", i32 1518, i32 4}
!350 = !{ptr @ceph_con_workfn.__UNIQUE_ID_ddebug690, !349, !"__UNIQUE_ID_ddebug690", i1 false, i1 false}
!351 = !{ptr @.str.152, !349, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @.str.153, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../net/ceph/messenger.c", i32 1522, i32 4}
!354 = !{ptr @ceph_con_workfn.__UNIQUE_ID_ddebug691, !353, !"__UNIQUE_ID_ddebug691", i1 false, i1 false}
!355 = !{ptr @.str.154, !353, !"<string literal>", i1 false, i1 false}
!356 = !{ptr @.str.155, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../net/ceph/messenger.c", i32 1527, i32 4}
!358 = !{ptr @ceph_con_workfn.__UNIQUE_ID_ddebug692, !357, !"__UNIQUE_ID_ddebug692", i1 false, i1 false}
!359 = !{ptr @.str.156, !357, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @.str.157, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../net/ceph/messenger.c", i32 1539, i32 22}
!362 = !{ptr @.str.158, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../net/ceph/messenger.c", i32 1552, i32 22}
!364 = !{ptr @.str.159, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../net/ceph/messenger.c", i32 1436, i32 2}
!366 = !{ptr @.str.160, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../net/ceph/messenger.c", i32 1437, i32 2}
!368 = !{ptr @.str.161, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../net/ceph/messenger.c", i32 1438, i32 2}
!370 = !{ptr @.str.162, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../net/ceph/messenger.c", i32 1439, i32 2}
!372 = !{ptr @.str.163, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../net/ceph/messenger.c", i32 1440, i32 2}
!374 = !{ptr @.str.164, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../net/ceph/messenger.c", i32 1441, i32 2}
!376 = !{ptr @.str.165, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../net/ceph/messenger.c", i32 1442, i32 2}
!378 = !{ptr @.str.166, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../net/ceph/messenger.c", i32 1443, i32 2}
!380 = !{ptr @.str.167, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../net/ceph/messenger.c", i32 1444, i32 2}
!382 = !{ptr @.str.168, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../net/ceph/messenger.c", i32 1445, i32 2}
!384 = !{ptr @.str.169, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../net/ceph/messenger.c", i32 1446, i32 2}
!386 = !{ptr @.str.170, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../net/ceph/messenger.c", i32 1447, i32 2}
!388 = !{ptr @.str.171, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../net/ceph/messenger.c", i32 1448, i32 2}
!390 = !{ptr @.str.172, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../net/ceph/messenger.c", i32 1466, i32 3}
!392 = !{ptr @.str.173, !391, !"<string literal>", i1 false, i1 false}
!393 = !{ptr @con_backoff.__UNIQUE_ID_ddebug685, !391, !"__UNIQUE_ID_ddebug685", i1 false, i1 false}
!394 = !{ptr @.str.174, !391, !"<string literal>", i1 false, i1 false}
!395 = !{ptr @.str.175, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../net/ceph/messenger.c", i32 1574, i32 2}
!397 = !{ptr @.str.176, !396, !"<string literal>", i1 false, i1 false}
!398 = !{ptr @con_fault.__UNIQUE_ID_ddebug693, !396, !"__UNIQUE_ID_ddebug693", i1 false, i1 false}
!399 = !{ptr @.str.177, !396, !"<string literal>", i1 false, i1 false}
!400 = !{ptr @.str.178, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../net/ceph/messenger.c", i32 1577, i32 2}
!402 = !{ptr @con_fault._entry, !401, !"_entry", i1 false, i1 false}
!403 = !{ptr @con_fault._entry_ptr, !401, !"_entry_ptr", i1 false, i1 false}
!404 = !{ptr @.str.179, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../net/ceph/messenger.c", i32 1587, i32 3}
!406 = !{ptr @con_fault.__UNIQUE_ID_ddebug694, !405, !"__UNIQUE_ID_ddebug694", i1 false, i1 false}
!407 = !{ptr @.str.180, !405, !"<string literal>", i1 false, i1 false}
!408 = !{ptr @.str.181, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../net/ceph/messenger.c", i32 1599, i32 3}
!410 = !{ptr @con_fault.__UNIQUE_ID_ddebug695, !409, !"__UNIQUE_ID_ddebug695", i1 false, i1 false}
!411 = !{ptr @.str.182, !409, !"<string literal>", i1 false, i1 false}
!412 = !{ptr @.str.183, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../net/ceph/messenger.c", i32 1479, i32 2}
!414 = !{ptr @con_fault_finish.__UNIQUE_ID_ddebug686, !413, !"__UNIQUE_ID_ddebug686", i1 false, i1 false}
!415 = !{ptr @.str.184, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../net/ceph/messenger.c", i32 1486, i32 3}
!417 = !{ptr @con_fault_finish.__UNIQUE_ID_ddebug687, !416, !"__UNIQUE_ID_ddebug687", i1 false, i1 false}
!418 = !{ptr @.str.185, !416, !"<string literal>", i1 false, i1 false}
!419 = !{ptr @.str.186, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../net/ceph/messenger.c", i32 1675, i32 3}
!421 = !{ptr @.str.187, !420, !"<string literal>", i1 false, i1 false}
!422 = !{ptr @clear_standby.__UNIQUE_ID_ddebug697, !420, !"__UNIQUE_ID_ddebug697", i1 false, i1 false}
!423 = !{ptr @.str.188, !420, !"<string literal>", i1 false, i1 false}
!424 = !{ptr @.str.189, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../net/ceph/messenger.c", i32 1985, i32 2}
!426 = !{ptr @.str.190, !425, !"<string literal>", i1 false, i1 false}
!427 = !{ptr @ceph_alloc_middle.__UNIQUE_ID_ddebug712, !425, !"__UNIQUE_ID_ddebug712", i1 false, i1 false}
!428 = !{ptr @.str.191, !425, !"<string literal>", i1 false, i1 false}
!429 = !{ptr @.str.192, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../net/ceph/messenger.c", i32 2108, i32 2}
!431 = !{ptr @ceph_msg_release.__UNIQUE_ID_ddebug714, !430, !"__UNIQUE_ID_ddebug714", i1 false, i1 false}
!432 = !{ptr @.str.193, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../net/ceph/messenger.c", i32 2097, i32 2}
!434 = !{ptr @ceph_msg_free.__UNIQUE_ID_ddebug713, !433, !"__UNIQUE_ID_ddebug713", i1 false, i1 false}
!435 = !{!"sp"}
!436 = !{i32 1, !"wchar_size", i32 2}
!437 = !{i32 1, !"min_enum_size", i32 4}
!438 = !{i32 8, !"branch-target-enforcement", i32 0}
!439 = !{i32 8, !"sign-return-address", i32 0}
!440 = !{i32 8, !"sign-return-address-all", i32 0}
!441 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!442 = !{i32 7, !"uwtable", i32 1}
!443 = !{i32 7, !"frame-pointer", i32 2}
!444 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!445 = !{!"branch_weights", i32 2000, i32 1}
!446 = !{i64 2159027699, i64 2159028184, i64 2159027736, i64 2159027792, i64 2159027826, i64 2159027850, i64 2159027891, i64 2159027912, i64 2159027940, i64 2159027974}
!447 = !{i64 2159029414, i64 2159029899, i64 2159029451, i64 2159029507, i64 2159029541, i64 2159029565, i64 2159029606, i64 2159029627, i64 2159029655, i64 2159029689}
!448 = !{i64 2159031123, i64 2159031608, i64 2159031160, i64 2159031216, i64 2159031250, i64 2159031274, i64 2159031315, i64 2159031336, i64 2159031364, i64 2159031398}
!449 = !{i64 2159032746, i64 2159033231, i64 2159032783, i64 2159032839, i64 2159032873, i64 2159032897, i64 2159032938, i64 2159032959, i64 2159032987, i64 2159033021}
!450 = !{i64 2159034488, i64 2159034973, i64 2159034525, i64 2159034581, i64 2159034615, i64 2159034639, i64 2159034680, i64 2159034701, i64 2159034729, i64 2159034763}
!451 = !{i64 2148822146}
!452 = !{i64 2148737431, i64 2148737463, i64 2148737492, i64 2148737526, i64 2148737557, i64 2148737580}
!453 = !{i64 2148822375}
!454 = !{i64 2159039365, i64 2159039850, i64 2159039402, i64 2159039458, i64 2159039492, i64 2159039516, i64 2159039557, i64 2159039578, i64 2159039606, i64 2159039640}
!455 = !{i64 2159048574, i64 2159049059, i64 2159048611, i64 2159048667, i64 2159048701, i64 2159048725, i64 2159048766, i64 2159048787, i64 2159048815, i64 2159048849}
!456 = !{!"branch_weights", i32 1, i32 2000}
!457 = !{i64 2153220741, i64 2153221225, i64 2153220778, i64 2153220834, i64 2153220868, i64 2153220892, i64 2153220933, i64 2153220954, i64 2153220982, i64 2153221016}
!458 = !{i64 2148736711, i64 2148736737, i64 2148736766, i64 2148736800, i64 2148736831, i64 2148736854}
!459 = !{i64 2148561309, i64 2148561314, i64 2148561327, i64 2148561371, i64 2148561405, i64 2148561426}
!460 = !{i64 2159042719, i64 2159043204, i64 2159042756, i64 2159042812, i64 2159042846, i64 2159042870, i64 2159042911, i64 2159042932, i64 2159042960, i64 2159042994}
!461 = !{i64 2153196768, i64 2153197251, i64 2153196805, i64 2153196861, i64 2153196895, i64 2153196919, i64 2153196960, i64 2153196981, i64 2153197009, i64 2153197043}
!462 = !{i64 2148825187}
!463 = !{i64 2148739896, i64 2148739928, i64 2148739957, i64 2148739991, i64 2148740022, i64 2148740045}
!464 = !{i64 2148825416}
!465 = !{i64 2159041106, i64 2159041591, i64 2159041143, i64 2159041199, i64 2159041233, i64 2159041257, i64 2159041298, i64 2159041319, i64 2159041347, i64 2159041381}
!466 = !{i64 2159051959, i64 2159052444, i64 2159051996, i64 2159052052, i64 2159052086, i64 2159052110, i64 2159052151, i64 2159052172, i64 2159052200, i64 2159052234}
!467 = !{!"auto-init"}
!468 = !{i64 2159105705, i64 2159106190, i64 2159105742, i64 2159105798, i64 2159105832, i64 2159105856, i64 2159105897, i64 2159105918, i64 2159105946, i64 2159105980}
!469 = !{i64 2148996611}
!470 = !{i64 1243479, i64 1243496, i64 1243520, i64 1243546, i64 1243564}
!471 = !{i64 2148996981}
!472 = !{i64 2159728122, i64 2159728608, i64 2159728159, i64 2159728215, i64 2159728249, i64 2159728273, i64 2159728314, i64 2159728335, i64 2159728363, i64 2159728397}
!473 = !{i64 2159736991, i64 2159737477, i64 2159737028, i64 2159737084, i64 2159737118, i64 2159737142, i64 2159737183, i64 2159737204, i64 2159737232, i64 2159737266}
!474 = !{i64 2159757856, i64 2159758342, i64 2159757893, i64 2159757949, i64 2159757983, i64 2159758007, i64 2159758048, i64 2159758069, i64 2159758097, i64 2159758131}
!475 = !{i64 2159762435, i64 2159762921, i64 2159762472, i64 2159762528, i64 2159762562, i64 2159762586, i64 2159762627, i64 2159762648, i64 2159762676, i64 2159762710}
!476 = !{i8 0, i8 2}
!477 = !{i64 2159674226, i64 2159674712, i64 2159674263, i64 2159674319, i64 2159674353, i64 2159674377, i64 2159674418, i64 2159674439, i64 2159674467, i64 2159674501}
!478 = !{i64 2159675838, i64 2159676324, i64 2159675875, i64 2159675931, i64 2159675965, i64 2159675989, i64 2159676030, i64 2159676051, i64 2159676079, i64 2159676113}
!479 = !{i64 2159677440, i64 2159677926, i64 2159677477, i64 2159677533, i64 2159677567, i64 2159677591, i64 2159677632, i64 2159677653, i64 2159677681, i64 2159677715}
!480 = !{i64 2159647391, i64 2159647876, i64 2159647428, i64 2159647484, i64 2159647518, i64 2159647542, i64 2159647583, i64 2159647604, i64 2159647632, i64 2159647666}
!481 = !{i64 2159649004, i64 2159649489, i64 2159649041, i64 2159649097, i64 2159649131, i64 2159649155, i64 2159649196, i64 2159649217, i64 2159649245, i64 2159649279}
!482 = !{i64 2159623612, i64 2159624097, i64 2159623649, i64 2159623705, i64 2159623739, i64 2159623763, i64 2159623804, i64 2159623825, i64 2159623853, i64 2159623887}
!483 = !{i64 2159625197, i64 2159625682, i64 2159625234, i64 2159625290, i64 2159625324, i64 2159625348, i64 2159625389, i64 2159625410, i64 2159625438, i64 2159625472}
!484 = !{i64 2159628298, i64 2159628783, i64 2159628335, i64 2159628391, i64 2159628425, i64 2159628449, i64 2159628490, i64 2159628511, i64 2159628539, i64 2159628573}
!485 = !{i64 2159629956, i64 2159630441, i64 2159629993, i64 2159630049, i64 2159630083, i64 2159630107, i64 2159630148, i64 2159630169, i64 2159630197, i64 2159630231}
!486 = !{i64 2159212609, i64 2159213094, i64 2159212646, i64 2159212702, i64 2159212736, i64 2159212760, i64 2159212801, i64 2159212822, i64 2159212850, i64 2159212884}
!487 = !{i64 2159444975, i64 2159445460, i64 2159445012, i64 2159445068, i64 2159445102, i64 2159445126, i64 2159445167, i64 2159445188, i64 2159445216, i64 2159445250}
!488 = !{i64 2159655200, i64 2159655685, i64 2159655237, i64 2159655293, i64 2159655327, i64 2159655351, i64 2159655392, i64 2159655413, i64 2159655441, i64 2159655475}
!489 = !{i64 2159656785, i64 2159657270, i64 2159656822, i64 2159656878, i64 2159656912, i64 2159656936, i64 2159656977, i64 2159656998, i64 2159657026, i64 2159657060}
!490 = !{i64 2159658444, i64 2159658929, i64 2159658481, i64 2159658537, i64 2159658571, i64 2159658595, i64 2159658636, i64 2159658657, i64 2159658685, i64 2159658719}
!491 = !{i64 2159633280, i64 2159633765, i64 2159633317, i64 2159633373, i64 2159633407, i64 2159633431, i64 2159633472, i64 2159633493, i64 2159633521, i64 2159633555}
!492 = !{i64 2159639040, i64 2159639525, i64 2159639077, i64 2159639133, i64 2159639167, i64 2159639191, i64 2159639232, i64 2159639253, i64 2159639281, i64 2159639315}
!493 = !{i64 2159679024, i64 2159679510, i64 2159679061, i64 2159679117, i64 2159679151, i64 2159679175, i64 2159679216, i64 2159679237, i64 2159679265, i64 2159679299}
!494 = !{i64 2159680730, i64 2159681216, i64 2159680767, i64 2159680823, i64 2159680857, i64 2159680881, i64 2159680922, i64 2159680943, i64 2159680971, i64 2159681005}
!495 = !{i64 2159682308, i64 2159682794, i64 2159682345, i64 2159682401, i64 2159682435, i64 2159682459, i64 2159682500, i64 2159682521, i64 2159682549, i64 2159682583}
!496 = !{i64 2159683916, i64 2159684402, i64 2159683953, i64 2159684009, i64 2159684043, i64 2159684067, i64 2159684108, i64 2159684129, i64 2159684157, i64 2159684191}
!497 = !{i64 2159685520, i64 2159686006, i64 2159685557, i64 2159685613, i64 2159685647, i64 2159685671, i64 2159685712, i64 2159685733, i64 2159685761, i64 2159685795}
!498 = !{i64 2159661742, i64 2159662227, i64 2159661779, i64 2159661835, i64 2159661869, i64 2159661893, i64 2159661934, i64 2159661955, i64 2159661983, i64 2159662017}
!499 = !{i64 2159663401, i64 2159663886, i64 2159663438, i64 2159663494, i64 2159663528, i64 2159663552, i64 2159663593, i64 2159663614, i64 2159663642, i64 2159663676}
!500 = !{i64 2159665188, i64 2159665673, i64 2159665225, i64 2159665281, i64 2159665315, i64 2159665339, i64 2159665380, i64 2159665401, i64 2159665429, i64 2159665463}
!501 = !{i64 2159666875, i64 2159667360, i64 2159666912, i64 2159666968, i64 2159667002, i64 2159667026, i64 2159667067, i64 2159667088, i64 2159667116, i64 2159667150}
!502 = !{i64 2159642454, i64 2159642939, i64 2159642491, i64 2159642547, i64 2159642581, i64 2159642605, i64 2159642646, i64 2159642667, i64 2159642695, i64 2159642729}
!503 = !{i64 2159644123, i64 2159644608, i64 2159644160, i64 2159644216, i64 2159644250, i64 2159644274, i64 2159644315, i64 2159644336, i64 2159644364, i64 2159644398}
!504 = !{i64 2159319386, i64 2159319871, i64 2159319423, i64 2159319479, i64 2159319513, i64 2159319537, i64 2159319578, i64 2159319599, i64 2159319627, i64 2159319661}
!505 = !{i64 2159320983, i64 2159321468, i64 2159321020, i64 2159321076, i64 2159321110, i64 2159321134, i64 2159321175, i64 2159321196, i64 2159321224, i64 2159321258}
!506 = !{i64 2159323335, i64 2159323820, i64 2159323372, i64 2159323428, i64 2159323462, i64 2159323486, i64 2159323527, i64 2159323548, i64 2159323576, i64 2159323610}
!507 = !{i64 2159368997, i64 2159369482, i64 2159369034, i64 2159369090, i64 2159369124, i64 2159369148, i64 2159369189, i64 2159369210, i64 2159369238, i64 2159369272}
!508 = !{i64 2159547045, i64 2159547530, i64 2159547082, i64 2159547138, i64 2159547172, i64 2159547196, i64 2159547237, i64 2159547258, i64 2159547286, i64 2159547320}
!509 = !{i64 2159548642, i64 2159549127, i64 2159548679, i64 2159548735, i64 2159548769, i64 2159548793, i64 2159548834, i64 2159548855, i64 2159548883, i64 2159548917}
!510 = !{i64 2159550857, i64 2159551342, i64 2159550894, i64 2159550950, i64 2159550984, i64 2159551008, i64 2159551049, i64 2159551070, i64 2159551098, i64 2159551132}
!511 = !{i64 2159595892, i64 2159596377, i64 2159595929, i64 2159595985, i64 2159596019, i64 2159596043, i64 2159596084, i64 2159596105, i64 2159596133, i64 2159596167}
!512 = !{i64 2159687004, i64 2159687490, i64 2159687041, i64 2159687097, i64 2159687131, i64 2159687155, i64 2159687196, i64 2159687217, i64 2159687245, i64 2159687279}
!513 = !{i64 2159689122, i64 2159689608, i64 2159689159, i64 2159689215, i64 2159689249, i64 2159689273, i64 2159689314, i64 2159689335, i64 2159689363, i64 2159689397}
!514 = !{i64 2159706657, i64 2159707143, i64 2159706694, i64 2159706750, i64 2159706784, i64 2159706808, i64 2159706849, i64 2159706870, i64 2159706898, i64 2159706932}
!515 = !{i64 2148738241, i64 2148738273, i64 2148738302, i64 2148738336, i64 2148738367, i64 2148738390}
!516 = !{i64 2148826266}
!517 = !{i64 2148740706, i64 2148740738, i64 2148740767, i64 2148740801, i64 2148740832, i64 2148740855}
!518 = !{i64 2150432006}
!519 = !{i64 2159788459, i64 2159788945, i64 2159788496, i64 2159788552, i64 2159788586, i64 2159788610, i64 2159788651, i64 2159788672, i64 2159788700, i64 2159788734}
!520 = !{i64 2159782396, i64 2159782882, i64 2159782433, i64 2159782489, i64 2159782523, i64 2159782547, i64 2159782588, i64 2159782609, i64 2159782637, i64 2159782671}
!521 = !{i64 2159793220, i64 2159793706, i64 2159793257, i64 2159793313, i64 2159793347, i64 2159793371, i64 2159793412, i64 2159793433, i64 2159793461, i64 2159793495}
!522 = !{ptr @ceph_buffer_release, ptr @ceph_msg_release}
!523 = !{i64 2159840992, i64 2159841478, i64 2159841029, i64 2159841085, i64 2159841119, i64 2159841143, i64 2159841184, i64 2159841205, i64 2159841233, i64 2159841267}
!524 = !{i64 2159842568, i64 2159843054, i64 2159842605, i64 2159842661, i64 2159842695, i64 2159842719, i64 2159842760, i64 2159842781, i64 2159842809, i64 2159842843}
!525 = !{i64 2159839418, i64 2159839904, i64 2159839455, i64 2159839511, i64 2159839545, i64 2159839569, i64 2159839610, i64 2159839631, i64 2159839659, i64 2159839693}
!526 = !{i64 2159845795, i64 2159846281, i64 2159845832, i64 2159845888, i64 2159845922, i64 2159845946, i64 2159845987, i64 2159846008, i64 2159846036, i64 2159846070}
!527 = !{i64 2159847391, i64 2159847877, i64 2159847428, i64 2159847484, i64 2159847518, i64 2159847542, i64 2159847583, i64 2159847604, i64 2159847632, i64 2159847666}
!528 = !{i64 2159879934, i64 2159880420, i64 2159879971, i64 2159880027, i64 2159880061, i64 2159880085, i64 2159880126, i64 2159880147, i64 2159880175, i64 2159880209}
!529 = !{i64 2159881536, i64 2159882022, i64 2159881573, i64 2159881629, i64 2159881663, i64 2159881687, i64 2159881728, i64 2159881749, i64 2159881777, i64 2159881811}
!530 = !{i64 2159883153, i64 2159883639, i64 2159883190, i64 2159883246, i64 2159883280, i64 2159883304, i64 2159883345, i64 2159883366, i64 2159883394, i64 2159883428}
!531 = !{i64 2159876437, i64 2159876923, i64 2159876474, i64 2159876530, i64 2159876564, i64 2159876588, i64 2159876629, i64 2159876650, i64 2159876678, i64 2159876712}
!532 = !{i64 2159878021, i64 2159878507, i64 2159878058, i64 2159878114, i64 2159878148, i64 2159878172, i64 2159878213, i64 2159878234, i64 2159878262, i64 2159878296}
!533 = !{i64 2159884784, i64 2159885270, i64 2159884821, i64 2159884877, i64 2159884911, i64 2159884935, i64 2159884976, i64 2159884997, i64 2159885025, i64 2159885059}
