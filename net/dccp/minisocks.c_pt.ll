; ModuleID = '/llk/IR_all_yes/net/dccp/minisocks.c_pt.bc'
source_filename = "../net/dccp/minisocks.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dccp_death_row\22, \22a\22\09"
module asm "\09.weak\09__crc_dccp_death_row\09\09\09\09"
module asm "\09.long\09__crc_dccp_death_row\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dccp_death_row:\09\09\09\09\09"
module asm "\09.asciz \09\22dccp_death_row\22\09\09\09\09\09"
module asm "__kstrtabns_dccp_death_row:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dccp_create_openreq_child\22, \22a\22\09"
module asm "\09.weak\09__crc_dccp_create_openreq_child\09\09\09\09"
module asm "\09.long\09__crc_dccp_create_openreq_child\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dccp_create_openreq_child:\09\09\09\09\09"
module asm "\09.asciz \09\22dccp_create_openreq_child\22\09\09\09\09\09"
module asm "__kstrtabns_dccp_create_openreq_child:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dccp_check_req\22, \22a\22\09"
module asm "\09.weak\09__crc_dccp_check_req\09\09\09\09"
module asm "\09.long\09__crc_dccp_check_req\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dccp_check_req:\09\09\09\09\09"
module asm "\09.asciz \09\22dccp_check_req\22\09\09\09\09\09"
module asm "__kstrtabns_dccp_check_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dccp_child_process\22, \22a\22\09"
module asm "\09.weak\09__crc_dccp_child_process\09\09\09\09"
module asm "\09.long\09__crc_dccp_child_process\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dccp_child_process:\09\09\09\09\09"
module asm "\09.asciz \09\22dccp_child_process\22\09\09\09\09\09"
module asm "__kstrtabns_dccp_child_process:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dccp_reqsk_send_ack\22, \22a\22\09"
module asm "\09.weak\09__crc_dccp_reqsk_send_ack\09\09\09\09"
module asm "\09.long\09__crc_dccp_reqsk_send_ack\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dccp_reqsk_send_ack:\09\09\09\09\09"
module asm "\09.asciz \09\22dccp_reqsk_send_ack\22\09\09\09\09\09"
module asm "__kstrtabns_dccp_reqsk_send_ack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dccp_reqsk_init\22, \22a\22\09"
module asm "\09.weak\09__crc_dccp_reqsk_init\09\09\09\09"
module asm "\09.long\09__crc_dccp_reqsk_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dccp_reqsk_init:\09\09\09\09\09"
module asm "\09.asciz \09\22dccp_reqsk_init\22\09\09\09\09\09"
module asm "__kstrtabns_dccp_reqsk_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.inet_hashinfo = type { ptr, ptr, i32, i32, ptr, ptr, i32, i32, ptr, [92 x i8], [32 x %struct.inet_listen_hashbucket] }
%struct.inet_listen_hashbucket = type { %struct.spinlock, i32, %union.anon.2 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.2 = type { %struct.hlist_head }
%struct.hlist_head = type { ptr }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.197, %struct.anon.198, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.164, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.165, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.166, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.160, [0 x i32], %union.anon.161, i16, i16, %union.anon.162, %struct.refcount_struct, [0 x i32], %union.anon.163 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.160 = type { i32 }
%union.anon.161 = type { %struct.hlist_node }
%union.anon.162 = type { i32 }
%union.anon.163 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.164 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.165 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.166 = type { ptr }
%struct.sk_buff_head = type { %union.anon.70, i32, %struct.spinlock }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.39 }
%union.anon.39 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.197 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.198 = type { i32, i32, i32, i32 }
%struct.dccp_sock = type { %struct.inet_connection_sock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, ptr, i32, i32, i16, i16, i48, i64, i48, i32, %struct.list_head, ptr, ptr, ptr, %struct.dccp_options_received, i8, i32, i8, %struct.tasklet_struct, %struct.timer_list }
%struct.dccp_options_received = type { i48, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.201, i32 }
%union.anon.201 = type { ptr }
%struct.dccp_request_sock = type { %struct.inet_request_sock, i64, i64, i64, i64, i32, %struct.spinlock, %struct.list_head, i32, i32 }
%struct.inet_request_sock = type { %struct.request_sock, i16, i32, %union.anon.199 }
%struct.request_sock = type { %struct.sock_common, ptr, i16, i8, i8, i32, %struct.timer_list, ptr, ptr, ptr, i32, i32 }
%union.anon.199 = type { %struct.anon.200 }
%struct.anon.200 = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon.45, %union.anon.48, %union.anon.49, [48 x i8], %union.anon.50, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.52, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, ptr, %union.anon.47 }
%union.anon.47 = type { ptr }
%union.anon.48 = type { ptr }
%union.anon.49 = type { i64 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { i32, ptr }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.54, i32, i32, i32, i16, i16, %union.anon.56, i32, %union.anon.57, %union.anon.58, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.54 = type { i32 }
%union.anon.56 = type { i32 }
%union.anon.57 = type { i32 }
%union.anon.58 = type { i16 }
%struct.dccp_hdr = type { i16, i16, i8, i8, i16, i8, i8, i16 }
%struct.inet_connection_sock_af_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, ptr, ptr, ptr, ptr }
%struct.request_sock_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.anon.7 = type { i16, i16 }

@dccp_hashinfo = external dso_local global %struct.inet_hashinfo, align 128
@dccp_death_row = dso_local global { %struct.inet_timewait_death_row, [56 x i8] } { %struct.inet_timewait_death_row { %struct.atomic_t zeroinitializer, [124 x i8] zeroinitializer, ptr @dccp_hashinfo, i32 16384 }, [56 x i8] zeroinitializer }, align 32
@__kstrtab_dccp_death_row = external dso_local constant [0 x i8], align 1
@__kstrtabns_dccp_death_row = external dso_local constant [0 x i8], align 1
@__ksymtab_dccp_death_row = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dccp_death_row to i32), ptr @__kstrtab_dccp_death_row, ptr @__kstrtabns_dccp_death_row }, section "___ksymtab_gpl+dccp_death_row", align 4
@dccp_time_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s: time wait bucket table overflow\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dccp_time_wait\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/dccp/minisocks.c\00", [43 x i8] zeroinitializer }, align 32
@dccp_time_wait._entry_ptr = internal global ptr @dccp_time_wait._entry, section ".printk_index", align 4
@dccp_statistics = external dso_local local_unnamed_addr global ptr, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_dccp_create_openreq_child = external dso_local constant [0 x i8], align 1
@__kstrtabns_dccp_create_openreq_child = external dso_local constant [0 x i8], align 1
@__ksymtab_dccp_create_openreq_child = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dccp_create_openreq_child to i32), ptr @__kstrtab_dccp_create_openreq_child, ptr @__kstrtabns_dccp_create_openreq_child }, section "___ksymtab_gpl+dccp_create_openreq_child", align 4
@dccp_debug = external dso_local local_unnamed_addr global i8, align 1
@dccp_check_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: Retransmitted REQUEST\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dccp_check_req\00", [17 x i8] zeroinitializer }, align 32
@dccp_check_req._entry_ptr = internal global ptr @dccp_check_req._entry, section ".printk_index", align 4
@dccp_check_req._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\017%s: Invalid ACK number: ack_seq=%llu, dreq_iss=%llu, dreq_gss=%llu\0A\00", [58 x i8] zeroinitializer }, align 32
@dccp_check_req._entry_ptr.8 = internal global ptr @dccp_check_req._entry.6, section ".printk_index", align 4
@__kstrtab_dccp_check_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_dccp_check_req = external dso_local constant [0 x i8], align 1
@__ksymtab_dccp_check_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dccp_check_req to i32), ptr @__kstrtab_dccp_check_req, ptr @__kstrtabns_dccp_check_req }, section "___ksymtab_gpl+dccp_check_req", align 4
@__kstrtab_dccp_child_process = external dso_local constant [0 x i8], align 1
@__kstrtabns_dccp_child_process = external dso_local constant [0 x i8], align 1
@__ksymtab_dccp_child_process = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dccp_child_process to i32), ptr @__kstrtab_dccp_child_process, ptr @__kstrtabns_dccp_child_process }, section "___ksymtab_gpl+dccp_child_process", align 4
@dccp_reqsk_send_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\012BUG: DCCP-ACK packets are never sent in LISTEN/RESPOND state at %s:%d/%s()\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dccp_reqsk_send_ack\00", [44 x i8] zeroinitializer }, align 32
@dccp_reqsk_send_ack._entry_ptr = internal global ptr @dccp_reqsk_send_ack._entry, section ".printk_index", align 4
@__kstrtab_dccp_reqsk_send_ack = external dso_local constant [0 x i8], align 1
@__kstrtabns_dccp_reqsk_send_ack = external dso_local constant [0 x i8], align 1
@__ksymtab_dccp_reqsk_send_ack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dccp_reqsk_send_ack to i32), ptr @__kstrtab_dccp_reqsk_send_ack, ptr @__kstrtabns_dccp_reqsk_send_ack }, section "___ksymtab_gpl+dccp_reqsk_send_ack", align 4
@dccp_reqsk_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&dreq->dreq_lock\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_dccp_reqsk_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_dccp_reqsk_init = external dso_local constant [0 x i8], align 1
@__ksymtab_dccp_reqsk_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dccp_reqsk_init to i32), ptr @__kstrtab_dccp_reqsk_init, ptr @__kstrtabns_dccp_reqsk_init }, section "___ksymtab_gpl+dccp_reqsk_init", align 4
@sock_owned_by_me.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 5, i64 6, i64 8]
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"dccp_death_row\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 24, i32 32 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 71, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 160, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 182, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 251, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.58 = private constant [24 x i8] c"../net/dccp/minisocks.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 261, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 1750, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 316, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1011, i32 2 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__ksymtab_dccp_check_req, ptr @__ksymtab_dccp_child_process, ptr @__ksymtab_dccp_create_openreq_child, ptr @__ksymtab_dccp_death_row, ptr @__ksymtab_dccp_reqsk_init, ptr @__ksymtab_dccp_reqsk_send_ack, ptr @dccp_check_req._entry, ptr @dccp_check_req._entry.6, ptr @dccp_check_req._entry_ptr, ptr @dccp_check_req._entry_ptr.8, ptr @dccp_reqsk_send_ack._entry, ptr @dccp_reqsk_send_ack._entry_ptr, ptr @dccp_time_wait._entry, ptr @dccp_time_wait._entry_ptr, ptr @dccp_death_row, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @dccp_reqsk_init.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_death_row to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_time_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_check_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_check_req._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_reqsk_send_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_reqsk_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dccp_time_wait(ptr noundef %sk, i32 noundef %state, i32 noundef %timeo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @inet_twsk_alloc(ptr noundef %sk, ptr noundef nonnull @dccp_death_row, i32 noundef %state) #8
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  %icsk_rto = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 6
  %0 = ptrtoint ptr %icsk_rto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %icsk_rto, align 4
  %shl = shl i32 %1, 2
  %shr = lshr i32 %1, 1
  %sub = sub i32 %shl, %shr
  %skc_family = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %skc_family to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %skc_family, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %3)
  %cmp3 = icmp eq i16 %3, 10
  br i1 %cmp3, label %if.then5, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %skc_v6_daddr = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 10
  %skc_v6_daddr7 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 10
  %4 = call ptr @memcpy(ptr %skc_v6_daddr, ptr %skc_v6_daddr7, i32 16)
  %skc_v6_rcv_saddr = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 11
  %skc_v6_rcv_saddr10 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 11
  %5 = call ptr @memcpy(ptr %skc_v6_rcv_saddr, ptr %skc_v6_rcv_saddr10, i32 16)
  %skc_ipv6only = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 5
  %6 = ptrtoint ptr %skc_ipv6only to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %skc_ipv6only, align 1
  %bf.clear = and i8 %bf.load, 4
  %skc_ipv6only13 = getelementptr inbounds %struct.sock_common, ptr %call, i32 0, i32 5
  %7 = ptrtoint ptr %skc_ipv6only13 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load14 = load i8, ptr %skc_ipv6only13, align 1
  %bf.clear15 = and i8 %bf.load14, -5
  %bf.set = or i8 %bf.clear15, %bf.clear
  store i8 %bf.set, ptr %skc_ipv6only13, align 1
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then.if.end_crit_edge
  %8 = tail call i32 @llvm.smax.i32(i32 %sub, i32 %timeo)
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %state)
  %cmp20 = icmp eq i32 %state, 6
  %timeo.addr.1 = select i1 %cmp20, i32 6000, i32 %8
  tail call fastcc void @local_bh_disable()
  tail call void @__inet_twsk_schedule(ptr noundef nonnull %call, i32 noundef %timeo.addr.1, i1 noundef zeroext false) #8
  tail call void @inet_twsk_hashdance(ptr noundef nonnull %call, ptr noundef %sk, ptr noundef nonnull @dccp_hashinfo) #8
  tail call fastcc void @local_bh_enable()
  br label %if.end31

do.body:                                          ; preds = %entry
  %call24 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool.not = icmp eq i32 %call24, 0
  br i1 %tobool.not, label %do.body.if.end31_crit_edge, label %do.end

do.body.if.end31_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #11
  br label %if.end31

if.end31:                                         ; preds = %do.end, %do.body.if.end31_crit_edge, %if.end
  tail call void @dccp_done(ptr noundef %sk) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_twsk_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_twsk_hashdance(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dccp_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dccp_create_openreq_child(ptr noundef %sk, ptr noundef %req, ptr nocapture readnone %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @inet_csk_clone_lock(ptr noundef %sk, ptr noundef %req, i32 noundef 2592) #8
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %entry.cleanup24_crit_edge, label %if.then

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup24

if.then:                                          ; preds = %entry
  %dccps_role = getelementptr inbounds %struct.dccp_sock, ptr %call, i32 0, i32 29
  %0 = ptrtoint ptr %dccps_role to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dccps_role, align 8
  %bf.set = or i8 %bf.load, -64
  store i8 %bf.set, ptr %dccps_role, align 8
  %dccps_hc_rx_ackvec = getelementptr inbounds %struct.dccp_sock, ptr %call, i32 0, i32 23
  %1 = ptrtoint ptr %dccps_hc_rx_ackvec to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %dccps_hc_rx_ackvec, align 4
  %dccps_service_list = getelementptr inbounds %struct.dccp_sock, ptr %call, i32 0, i32 13
  %2 = ptrtoint ptr %dccps_service_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %dccps_service_list, align 8
  %dccps_hc_rx_ccid = getelementptr inbounds %struct.dccp_sock, ptr %call, i32 0, i32 24
  %3 = ptrtoint ptr %dccps_hc_rx_ccid to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %dccps_hc_rx_ccid, align 8
  %dccps_hc_tx_ccid = getelementptr inbounds %struct.dccp_sock, ptr %call, i32 0, i32 25
  %4 = ptrtoint ptr %dccps_hc_tx_ccid to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %dccps_hc_tx_ccid, align 4
  %dreq_service = getelementptr inbounds %struct.dccp_request_sock, ptr %req, i32 0, i32 5
  %5 = ptrtoint ptr %dreq_service to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dreq_service, align 8
  %dccps_service = getelementptr inbounds %struct.dccp_sock, ptr %call, i32 0, i32 11
  %7 = ptrtoint ptr %dccps_service to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %dccps_service, align 8
  %dreq_timestamp_echo = getelementptr inbounds %struct.dccp_request_sock, ptr %req, i32 0, i32 8
  %8 = ptrtoint ptr %dreq_timestamp_echo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dreq_timestamp_echo, align 8
  %dccps_timestamp_echo = getelementptr inbounds %struct.dccp_sock, ptr %call, i32 0, i32 14
  %10 = ptrtoint ptr %dccps_timestamp_echo to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dccps_timestamp_echo, align 4
  %dreq_timestamp_time = getelementptr inbounds %struct.dccp_request_sock, ptr %req, i32 0, i32 9
  %11 = ptrtoint ptr %dreq_timestamp_time to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dreq_timestamp_time, align 4
  %dccps_timestamp_time = getelementptr inbounds %struct.dccp_sock, ptr %call, i32 0, i32 15
  %13 = ptrtoint ptr %dccps_timestamp_time to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dccps_timestamp_time, align 8
  %icsk_rto = getelementptr inbounds %struct.inet_connection_sock, ptr %call, i32 0, i32 6
  %14 = ptrtoint ptr %icsk_rto to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 300, ptr %icsk_rto, align 4
  %dccps_featneg = getelementptr inbounds %struct.dccp_sock, ptr %call, i32 0, i32 22
  %15 = ptrtoint ptr %dccps_featneg to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %dccps_featneg, ptr %dccps_featneg, align 4
  %prev.i = getelementptr inbounds %struct.dccp_sock, ptr %call, i32 0, i32 22, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dccps_featneg, ptr %prev.i, align 4
  %dreq_iss = getelementptr inbounds %struct.dccp_request_sock, ptr %req, i32 0, i32 1
  %17 = ptrtoint ptr %dreq_iss to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %dreq_iss, align 8
  %dccps_iss = getelementptr inbounds %struct.dccp_sock, ptr %call, i32 0, i32 5
  %19 = ptrtoint ptr %dccps_iss to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %dccps_iss, align 8
  %dreq_gss = getelementptr inbounds %struct.dccp_request_sock, ptr %req, i32 0, i32 2
  %20 = ptrtoint ptr %dreq_gss to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %dreq_gss, align 8
  %dccps_gss = getelementptr inbounds %struct.dccp_sock, ptr %call, i32 0, i32 8
  %22 = ptrtoint ptr %dccps_gss to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %dccps_gss, align 8
  %dccps_gar = getelementptr inbounds %struct.dccp_sock, ptr %call, i32 0, i32 10
  %23 = ptrtoint ptr %dccps_gar to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %18, ptr %dccps_gar, align 8
  %dreq_isr = getelementptr inbounds %struct.dccp_request_sock, ptr %req, i32 0, i32 3
  %24 = ptrtoint ptr %dreq_isr to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %dreq_isr, align 8
  %dccps_isr = getelementptr inbounds %struct.dccp_sock, ptr %call, i32 0, i32 6
  %26 = ptrtoint ptr %dccps_isr to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %dccps_isr, align 8
  %dreq_gsr = getelementptr inbounds %struct.dccp_request_sock, ptr %req, i32 0, i32 4
  %27 = ptrtoint ptr %dreq_gsr to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %dreq_gsr, align 8
  %dccps_gsr = getelementptr inbounds %struct.dccp_sock, ptr %call, i32 0, i32 9
  %29 = ptrtoint ptr %dccps_gsr to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %dccps_gsr, align 8
  %dreq_featneg = getelementptr inbounds %struct.dccp_request_sock, ptr %req, i32 0, i32 7
  %call5 = tail call i32 @dccp_feat_activate_values(ptr noundef nonnull %call, ptr noundef %dreq_featneg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %if.then6

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sk_free_unlock_clone(ptr noundef nonnull %call) #8
  br label %cleanup24

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dccp_init_xmit_timers(ptr noundef nonnull %call) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dccp_statistics to i32))
  %30 = load ptr, ptr @dccp_statistics, align 4
  %arrayidx = getelementptr [15 x i32], ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %arrayidx to i32
  %32 = tail call i32 @llvm.read_register.i32(metadata !46) #8
  %and.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu, align 4
  %arrayidx15 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx15, align 4
  %add = add i32 %37, %31
  %38 = inttoptr i32 %add to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %add16 = add i32 %40, 1
  store i32 %add16, ptr %38, align 4
  br label %cleanup24

cleanup24:                                        ; preds = %if.end, %if.then6, %entry.cleanup24_crit_edge
  %retval.1 = phi ptr [ null, %if.then6 ], [ %call, %if.end ], [ null, %entry.cleanup24_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_csk_clone_lock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_feat_activate_values(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free_unlock_clone(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dccp_init_xmit_timers(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dccp_check_req(ptr noundef %sk, ptr noundef %skb, ptr noundef %req) #0 align 64 {
entry:
  %own_req = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %own_req) #8
  %0 = ptrtoint ptr %own_req to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %own_req, align 1, !annotation !56
  %dreq_lock = getelementptr inbounds %struct.dccp_request_sock, ptr %req, i32 0, i32 6
  tail call void @_raw_spin_lock_bh(ptr noundef %dreq_lock) #8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %1 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %3 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %dccph_type = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %dccph_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %dccph_type, align 2
  %6 = and i8 %bf.load, 30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp = icmp eq i8 %6, 0
  br i1 %cmp, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %dreq_gsr = getelementptr inbounds %struct.dccp_request_sock, ptr %req, i32 0, i32 4
  %7 = ptrtoint ptr %dreq_gsr to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %dreq_gsr, align 8
  %dccpd_seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %9 = ptrtoint ptr %dccpd_seq to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %dccpd_seq, align 8
  %11 = sub i64 %10, %8
  %sub.i = shl i64 %11, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i)
  %cmp.i = icmp slt i64 %sub.i, 1
  br i1 %cmp.i, label %if.then.out_crit_edge, label %do.body

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.body:                                          ; preds = %if.then
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %12 = load i8, ptr @dccp_debug, align 1, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool5.not = icmp eq i8 %12, 0
  br i1 %tobool5.not, label %do.body.do.end10_crit_edge, label %do.end

do.body.do.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #11
  br label %do.end10

do.end10:                                         ; preds = %do.end, %do.body.do.end10_crit_edge
  %13 = ptrtoint ptr %dccpd_seq to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %dccpd_seq, align 8
  %15 = ptrtoint ptr %dreq_gsr to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %dreq_gsr, align 8
  %call15 = tail call i32 @inet_rtx_syn_ack(ptr noundef %sk, ptr noundef %req) #8
  br label %out

if.end17:                                         ; preds = %entry
  %dccpd_reset_code = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 25
  %16 = ptrtoint ptr %dccpd_reset_code to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 4, ptr %dccpd_reset_code, align 1
  %17 = ptrtoint ptr %dccph_type to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load22 = load i8, ptr %dccph_type, align 2
  %18 = trunc i8 %bf.load22 to i5
  %trunc = and i5 %18, -2
  %19 = zext i5 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i5 %trunc, label %if.end17.drop_crit_edge [
    i5 6, label %if.end17.if.end37_crit_edge
    i5 8, label %if.end17.if.end37_crit_edge135
  ]

if.end17.if.end37_crit_edge135:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.end17.if.end37_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.end17.drop_crit_edge:                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

if.end37:                                         ; preds = %if.end17.if.end37_crit_edge, %if.end17.if.end37_crit_edge135
  %dccpd_ack_seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 40
  %20 = ptrtoint ptr %dccpd_ack_seq to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %dccpd_ack_seq, align 8
  %dreq_iss = getelementptr inbounds %struct.dccp_request_sock, ptr %req, i32 0, i32 1
  %22 = ptrtoint ptr %dreq_iss to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %dreq_iss, align 8
  %dreq_gss = getelementptr inbounds %struct.dccp_request_sock, ptr %req, i32 0, i32 2
  %24 = ptrtoint ptr %dreq_gss to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %dreq_gss, align 8
  %26 = sub i64 %25, %23
  %sub.i128 = shl i64 %26, 16
  %27 = sub i64 %21, %23
  %sub4.i = shl i64 %27, 16
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i128, i64 %sub4.i)
  %cmp.i129.not = icmp ult i64 %sub.i128, %sub4.i
  br i1 %cmp.i129.not, label %do.body43, label %if.end59

do.body43:                                        ; preds = %if.end37
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %28 = load i8, ptr @dccp_debug, align 1, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool44.not = icmp eq i8 %28, 0
  br i1 %tobool44.not, label %do.body43.drop_crit_edge, label %do.end48

do.body43.drop_crit_edge:                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

do.end48:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i64 noundef %21, i64 noundef %23, i64 noundef %25) #11
  br label %drop

if.end59:                                         ; preds = %if.end37
  %call60 = tail call i32 @dccp_parse_options(ptr noundef %sk, ptr noundef %req, ptr noundef %skb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end59.drop_crit_edge

if.end59.drop_crit_edge:                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %drop

if.end63:                                         ; preds = %if.end59
  %icsk_af_ops = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 11
  %29 = ptrtoint ptr %icsk_af_ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %icsk_af_ops, align 8
  %syn_recv_sock = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %syn_recv_sock to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %syn_recv_sock, align 4
  %call65 = call ptr %32(ptr noundef %sk, ptr noundef %skb, ptr noundef %req, ptr noundef null, ptr noundef %req, ptr noundef nonnull %own_req) #8
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %if.end70, label %if.then67

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %own_req to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %own_req, align 1, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool68 = icmp ne i8 %34, 0
  %call69 = call ptr @inet_csk_complete_hashdance(ptr noundef %sk, ptr noundef nonnull %call65, ptr noundef %req, i1 noundef zeroext %tobool68) #8
  br label %out

if.end70:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %dccpd_reset_code to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 9, ptr %dccpd_reset_code, align 1
  br label %drop

drop:                                             ; preds = %if.end70, %if.end59.drop_crit_edge, %do.end48, %do.body43.drop_crit_edge, %if.end17.drop_crit_edge
  %36 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head.i.i, align 8
  %38 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i133 = zext i16 %39 to i32
  %add.ptr.i.i134 = getelementptr i8, ptr %37, i32 %conv.i.i133
  %dccph_type75 = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i134, i32 0, i32 5
  %40 = ptrtoint ptr %dccph_type75 to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load76 = load i8, ptr %dccph_type75, align 2
  %41 = and i8 %bf.load76, 30
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %41)
  %cmp80.not = icmp eq i8 %41, 14
  br i1 %cmp80.not, label %drop.if.end83_crit_edge, label %if.then82

drop.if.end83_crit_edge:                          ; preds = %drop
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then82:                                        ; preds = %drop
  call void @__sanitizer_cov_trace_pc() #10
  %rsk_ops = getelementptr inbounds %struct.request_sock, ptr %req, i32 0, i32 7
  %42 = ptrtoint ptr %rsk_ops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rsk_ops, align 4
  %send_reset = getelementptr inbounds %struct.request_sock_ops, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %send_reset to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %send_reset, align 4
  call void %45(ptr noundef %sk, ptr noundef %skb) #8
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %drop.if.end83_crit_edge
  %call84 = call zeroext i1 @inet_csk_reqsk_queue_drop(ptr noundef %sk, ptr noundef %req) #8
  br label %out

out:                                              ; preds = %if.end83, %if.then67, %do.end10, %if.then.out_crit_edge
  %child.1 = phi ptr [ null, %do.end10 ], [ null, %if.then.out_crit_edge ], [ null, %if.end83 ], [ %call69, %if.then67 ]
  call void @_raw_spin_unlock_bh(ptr noundef %dreq_lock) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %own_req) #8
  ret ptr %child.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_rtx_syn_ack(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_parse_options(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_csk_complete_hashdance(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inet_csk_reqsk_queue_drop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dccp_child_process(ptr noundef %parent, ptr noundef %child, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %child, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %child, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %entry.sock_owned_by_user.exit_crit_edge

entry.sock_owned_by_user.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %entry
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %child, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_owned_by_user.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i, !prof !58

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_owned_by_user.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1750, i32 noundef 9, ptr noundef null) #8
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %entry.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr inbounds %struct.sock, ptr %child, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not = icmp eq i32 %4, 0
  br i1 %tobool.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %sock_owned_by_user.exit
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %7 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %call2 = tail call i32 @dccp_rcv_state_process(ptr noundef %child, ptr noundef %skb, ptr noundef %add.ptr.i.i, i32 noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp = icmp eq i8 %1, 3
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true:                                    ; preds = %if.then
  %11 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp7.not = icmp eq i8 %12, 3
  br i1 %cmp7.not, label %land.lhs.true.if.end10_crit_edge, label %if.then9

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %parent, i32 0, i32 77
  %13 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk_data_ready, align 8
  tail call void %14(ptr noundef %parent) #8
  br label %if.end10

if.else:                                          ; preds = %sock_owned_by_user.exit
  %15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %and.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i22 = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i22, label %if.else.skb_dst_force.exit.i_crit_edge, label %land.lhs.true.i.i.i.i

if.else.skb_dst_force.exit.i_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst_force.exit.i

land.lhs.true.i.i.i.i:                            ; preds = %if.else
  %call.i.i.i.i23 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i23)
  %tobool1.not.i.i.i.i = icmp eq i32 %call.i.i.i.i23, 0
  br i1 %tobool1.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.skb_dst_is_noref.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.skb_dst_is_noref.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst_is_noref.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %call2.i.i.i.i = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %call2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %do.end.i.i.i.i, label %land.rhs.i.i.i.i.skb_dst_is_noref.exit.i.i_crit_edge, !prof !59

land.rhs.i.i.i.i.skb_dst_is_noref.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst_is_noref.exit.i.i

do.end.i.i.i.i:                                   ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst_is_noref.exit.i.i

skb_dst_is_noref.exit.i.i:                        ; preds = %do.end.i.i.i.i, %land.rhs.i.i.i.i.skb_dst_is_noref.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.skb_dst_is_noref.exit.i.i_crit_edge
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %tobool1.i.i.i = icmp ugt i32 %19, 1
  br i1 %tobool1.i.i.i, label %if.then.i.i24, label %skb_dst_is_noref.exit.i.i.skb_dst_force.exit.i_crit_edge

skb_dst_is_noref.exit.i.i.skb_dst_force.exit.i_crit_edge: ; preds = %skb_dst_is_noref.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst_force.exit.i

if.then.i.i24:                                    ; preds = %skb_dst_is_noref.exit.i.i
  %and.i2.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i)
  %tobool.not.i3.i.i = icmp eq i32 %and.i2.i.i, 0
  br i1 %tobool.not.i3.i.i, label %if.then.i.i24.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i24.skb_dst.exit.i.i_crit_edge:         ; preds = %if.then.i.i24
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i24
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge

land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, !prof !59

land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_dst.exit.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 1013, i32 noundef 9, ptr noundef null) #8
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge, %if.then.i.i24.skb_dst.exit.i.i_crit_edge
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %15, align 8
  %and25.i.i.i = and i32 %21, -2
  %22 = inttoptr i32 %and25.i.i.i to ptr
  %call2.i.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i25 = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i25, label %do.end.i.i, label %skb_dst.exit.i.i.if.end.i.i_crit_edge, !prof !59

skb_dst.exit.i.i.if.end.i.i_crit_edge:            ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 316, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %skb_dst.exit.i.i.if.end.i.i_crit_edge
  %__refcnt.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %22, i32 0, i32 18
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i.i, i32 1, i32 3, i32 1) #8
  %23 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i.i, ptr %__refcnt.i.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i.i) #8, !srcloc !61
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i, label %if.end.i.i.dst_hold_safe.exit.i.i_crit_edge, label %do.end11.i.i.i.i.i.i.i

if.end.i.i.dst_hold_safe.exit.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dst_hold_safe.exit.i.i

do.end11.i.i.i.i.i.i.i:                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !62
  br label %dst_hold_safe.exit.i.i

dst_hold_safe.exit.i.i:                           ; preds = %do.end11.i.i.i.i.i.i.i, %if.end.i.i.dst_hold_safe.exit.i.i_crit_edge
  %spec.select.i.i = phi ptr [ null, %if.end.i.i.dst_hold_safe.exit.i.i_crit_edge ], [ %22, %do.end11.i.i.i.i.i.i.i ]
  %24 = ptrtoint ptr %spec.select.i.i to i32
  %25 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %15, align 8
  %tobool27.not.i.i = icmp eq ptr %spec.select.i.i, null
  %slow_gro.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %26 = ptrtoint ptr %slow_gro.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %bf.load.i.i = load i32, ptr %slow_gro.i.i, align 2
  %bf.load.mask.i.i = and i32 %bf.load.i.i, 4096
  %bf.shl.i.i = select i1 %tobool27.not.i.i, i32 %bf.load.mask.i.i, i32 4096
  %bf.clear34.i.i = and i32 %bf.load.i.i, -4097
  %bf.set.i.i = or i32 %bf.shl.i.i, %bf.clear34.i.i
  store i32 %bf.set.i.i, ptr %slow_gro.i.i, align 2
  br label %skb_dst_force.exit.i

skb_dst_force.exit.i:                             ; preds = %dst_hold_safe.exit.i.i, %skb_dst_is_noref.exit.i.i.skb_dst_force.exit.i_crit_edge, %if.else.skb_dst_force.exit.i_crit_edge
  %tail.i = getelementptr inbounds %struct.sock, ptr %child, i32 0, i32 9, i32 3
  %27 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %do.body2.i, label %if.else.i

do.body2.i:                                       ; preds = %skb_dst_force.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %head.i = getelementptr inbounds %struct.sock, ptr %child, i32 0, i32 9, i32 2
  %29 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %skb, ptr %head.i, align 4
  br label %__sk_add_backlog.exit

if.else.i:                                        ; preds = %skb_dst_force.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %skb, ptr %28, align 8
  br label %__sk_add_backlog.exit

__sk_add_backlog.exit:                            ; preds = %if.else.i, %do.body2.i
  %31 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %skb, ptr %tail.i, align 4
  %32 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %skb, align 8
  br label %if.end10

if.end10:                                         ; preds = %__sk_add_backlog.exit, %if.then9, %land.lhs.true.if.end10_crit_edge, %if.then.if.end10_crit_edge
  %ret.0 = phi i32 [ 0, %__sk_add_backlog.exit ], [ %call2, %if.then9 ], [ %call2, %land.lhs.true.if.end10_crit_edge ], [ %call2, %if.then.if.end10_crit_edge ]
  %sk_lock = getelementptr inbounds %struct.sock, ptr %child, i32 0, i32 4
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #8
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %child, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #8
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #8, !srcloc !64
  %asmresult.i.i.i.i.i.i.i26 = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i26)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i26, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i26)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i26, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !58

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #8
  br label %sock_put.exit

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !65
  tail call void @sk_free(ptr noundef %child) #8
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_rcv_state_process(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dccp_reqsk_send_ack(ptr nocapture readnone %sk, ptr nocapture readnone %skb, ptr nocapture readnone %rsk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2, i32 noundef 251, ptr noundef nonnull @.str.10) #11
  tail call void @dump_stack() #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dccp_reqsk_init(ptr noundef %req, ptr noundef %dp, ptr nocapture noundef readonly %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dreq_lock = getelementptr inbounds %struct.dccp_request_sock, ptr %req, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %dreq_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @dccp_reqsk_init.__key, i16 noundef signext 3) #8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i.i, align 2
  %6 = getelementptr inbounds %struct.sock_common, ptr %req, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %5, ptr %6, align 4
  %8 = load ptr, ptr %head.i.i, align 8
  %9 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i19 = zext i16 %9 to i32
  %add.ptr.i.i20 = getelementptr i8, ptr %8, i32 %conv.i.i19
  %dccph_dport = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i20, i32 0, i32 1
  %10 = ptrtoint ptr %dccph_dport to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %dccph_dport, align 2
  %skc_num = getelementptr inbounds %struct.anon.7, ptr %6, i32 0, i32 1
  %12 = ptrtoint ptr %skc_num to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %skc_num, align 2
  %acked = getelementptr inbounds %struct.inet_request_sock, ptr %req, i32 0, i32 1
  %13 = ptrtoint ptr %acked to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load = load i16, ptr %acked, align 8
  %bf.clear = and i16 %bf.load, -9
  store i16 %bf.clear, ptr %acked, align 8
  %dreq_timestamp_echo = getelementptr inbounds %struct.dccp_request_sock, ptr %req, i32 0, i32 8
  %14 = ptrtoint ptr %dreq_timestamp_echo to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %dreq_timestamp_echo, align 8
  %dccps_featneg = getelementptr inbounds %struct.dccp_sock, ptr %dp, i32 0, i32 22
  %dreq_featneg = getelementptr inbounds %struct.dccp_request_sock, ptr %req, i32 0, i32 7
  %call10 = tail call i32 @dccp_feat_clone_list(ptr noundef %dccps_featneg, ptr noundef %dreq_featneg) #8
  ret i32 %call10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_feat_clone_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__inet_twsk_schedule(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !17, !18, !19, !21, !22, !23, !25, !27, !29, !30, !31, !32, !34, !36, !37, !39, !41, !42, !44}
!llvm.named.register.sp = !{!46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @dccp_death_row, !1, !"dccp_death_row", i1 false, i1 false}
!1 = !{!"../net/dccp/minisocks.c", i32 24, i32 32}
!2 = !{ptr @__ksymtab_dccp_death_row, !3, !"__ksymtab_dccp_death_row", i1 false, i1 false}
!3 = !{!"../net/dccp/minisocks.c", i32 29, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/dccp/minisocks.c", i32 71, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @dccp_time_wait._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @dccp_time_wait._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = distinct !{null, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/dccp/minisocks.c", i32 131, i32 3}
!12 = !{ptr @__ksymtab_dccp_create_openreq_child, !13, !"__ksymtab_dccp_create_openreq_child", i1 false, i1 false}
!13 = !{!"../net/dccp/minisocks.c", i32 136, i32 1}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/dccp/minisocks.c", i32 160, i32 4}
!16 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @dccp_check_req._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @dccp_check_req._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/dccp/minisocks.c", i32 182, i32 3}
!21 = !{ptr @dccp_check_req._entry.6, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @dccp_check_req._entry_ptr.8, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @__ksymtab_dccp_check_req, !24, !"__ksymtab_dccp_check_req", i1 false, i1 false}
!24 = !{!"../net/dccp/minisocks.c", i32 212, i32 1}
!25 = !{ptr @__ksymtab_dccp_child_process, !26, !"__ksymtab_dccp_child_process", i1 false, i1 false}
!26 = !{!"../net/dccp/minisocks.c", i32 246, i32 1}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/dccp/minisocks.c", i32 251, i32 2}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @dccp_reqsk_send_ack._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @dccp_reqsk_send_ack._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @__ksymtab_dccp_reqsk_send_ack, !33, !"__ksymtab_dccp_reqsk_send_ack", i1 false, i1 false}
!33 = !{!"../net/dccp/minisocks.c", i32 254, i32 1}
!34 = !{ptr @dccp_reqsk_init.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../net/dccp/minisocks.c", i32 261, i32 2}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @__ksymtab_dccp_reqsk_init, !38, !"__ksymtab_dccp_reqsk_init", i1 false, i1 false}
!38 = !{!"../net/dccp/minisocks.c", i32 271, i32 1}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../include/net/sock.h", i32 1750, i32 2}
!41 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/net/dst.h", i32 316, i32 3}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!46 = !{!"sp"}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{!"auto-init"}
!57 = !{i8 0, i8 2}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{!"branch_weights", i32 1, i32 2000}
!60 = !{i64 2148284368}
!61 = !{i64 769191, i64 769216, i64 769238, i64 769254, i64 769266, i64 769286, i64 769310, i64 769326, i64 769338}
!62 = !{i64 2148284556}
!63 = !{i64 2148374480}
!64 = !{i64 2148288944, i64 2148288976, i64 2148289005, i64 2148289039, i64 2148289070, i64 2148289093}
!65 = !{i64 2149310760}
