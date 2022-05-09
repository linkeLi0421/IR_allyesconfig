; ModuleID = '/llk/IR_all_yes/net/dccp/input.c_pt.bc'
source_filename = "../net/dccp/input.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dccp_rcv_established\22, \22a\22\09"
module asm "\09.weak\09__crc_dccp_rcv_established\09\09\09\09"
module asm "\09.long\09__crc_dccp_rcv_established\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dccp_rcv_established:\09\09\09\09\09"
module asm "\09.asciz \09\22dccp_rcv_established\22\09\09\09\09\09"
module asm "__kstrtabns_dccp_rcv_established:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dccp_rcv_state_process\22, \22a\22\09"
module asm "\09.weak\09__crc_dccp_rcv_state_process\09\09\09\09"
module asm "\09.long\09__crc_dccp_rcv_state_process\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dccp_rcv_state_process:\09\09\09\09\09"
module asm "\09.asciz \09\22dccp_rcv_state_process\22\09\09\09\09\09"
module asm "__kstrtabns_dccp_rcv_state_process:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dccp_sock = type { %struct.inet_connection_sock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, ptr, i32, i32, i16, i16, i48, i64, i48, i32, %struct.list_head, ptr, ptr, ptr, %struct.dccp_options_received, i8, i32, i8, %struct.tasklet_struct, %struct.timer_list }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.194, %struct.anon.195, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.159, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.160, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.161, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.155, [0 x i32], %union.anon.156, i16, i16, %union.anon.157, %struct.refcount_struct, [0 x i32], %union.anon.158 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.155 = type { i32 }
%union.anon.156 = type { %struct.hlist_node }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.159 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.160 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.161 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.hlist_node = type { ptr, ptr }
%struct.anon.194 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.195 = type { i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.dccp_options_received = type { i48, i32, i32, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.196, i32 }
%union.anon.196 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.ccid_operations = type { i8, i32, ptr, ptr, ptr, [32 x i8], [32 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dccp_hdr = type { i16, i16, i8, i8, i16, i8, i8, i16 }
%struct.dccp_hdr_reset = type { %struct.dccp_hdr_ack_bits, i8, [3 x i8] }
%struct.dccp_hdr_ack_bits = type { i16, i16, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.inet_connection_sock_af_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, ptr, ptr, ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.154, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.154 = type { ptr }

@sysctl_dccp_sync_ratelimit = dso_local local_unnamed_addr global i32 12, section ".data..read_mostly", align 4
@__kstrtab_dccp_rcv_established = external dso_local constant [0 x i8], align 1
@__kstrtabns_dccp_rcv_established = external dso_local constant [0 x i8], align 1
@__ksymtab_dccp_rcv_established = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dccp_rcv_established to i32), ptr @__kstrtab_dccp_rcv_established, ptr @__kstrtabns_dccp_rcv_established }, section "___ksymtab_gpl+dccp_rcv_established", align 4
@__kstrtab_dccp_rcv_state_process = external dso_local constant [0 x i8], align 1
@__kstrtabns_dccp_rcv_state_process = external dso_local constant [0 x i8], align 1
@__ksymtab_dccp_rcv_state_process = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dccp_rcv_state_process to i32), ptr @__kstrtab_dccp_rcv_state_process, ptr @__kstrtabns_dccp_rcv_state_process }, section "___ksymtab_gpl+dccp_rcv_state_process", align 4
@dccp_sample_rtt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: unusable RTT sample %ld, using min\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dccp_sample_rtt\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/dccp/input.c\00", [47 x i8] zeroinitializer }, align 32
@dccp_sample_rtt._entry_ptr = internal global ptr @dccp_sample_rtt._entry, section ".printk_index", align 4
@dccp_sample_rtt._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 734, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: RTT sample %ld too large, using max\0A\00", [53 x i8] zeroinitializer }, align 32
@dccp_sample_rtt._entry_ptr.5 = internal global ptr @dccp_sample_rtt._entry.3, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dccp_check_seqno._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [160 x i8], [32 x i8] } { [160 x i8] c"\014%s: Step 6 failed for %s packet, (LSWL(%llu) <= P.seqno(%llu) <= S.SWH(%llu)) and (P.ackno %s or LAWL(%llu) <= P.ackno(%llu) <= S.AWH(%llu), sending SYNC...\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dccp_check_seqno\00", [47 x i8] zeroinitializer }, align 32
@dccp_check_seqno._entry_ptr = internal global ptr @dccp_check_seqno._entry, section ".printk_index", align 4
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"doesn't exist\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"exists\00", [25 x i8] zeroinitializer }, align 32
@dccp_statistics = external dso_local local_unnamed_addr global ptr, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@dccp_reset_code_convert.error_code = internal constant { [12 x i16], [40 x i8] } { [12 x i16] [i16 0, i16 0, i16 104, i16 111, i16 42, i16 84, i16 95, i16 111, i16 56, i16 87, i16 53, i16 122], [40 x i8] zeroinitializer }, align 32
@dccp_debug = external dso_local local_unnamed_addr global i8, align 1
@dccp_rcv_request_sent_state_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017%s: invalid ackno: S.AWL=%llu, P.ackno=%llu, S.AWH=%llu\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"dccp_rcv_request_sent_state_process\00", [60 x i8] zeroinitializer }, align 32
@dccp_rcv_request_sent_state_process._entry_ptr = internal global ptr @dccp_rcv_request_sent_state_process._entry, section ".printk_index", align 4
@sk_wake_async.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 4, i64 0, i64 7]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 13]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 4, i64 3, i64 4, i64 8]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 13, i64 14]
@__sancov_gen_cov_switch_values.26 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 4, i64 8, i64 11, i64 13]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 7]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 4, i64 2, i64 4]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 730, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 734, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 261, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 695, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 723, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [11 x i8] c"error_code\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 125, i32 19 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private constant [20 x i8] c"../net/dccp/input.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 407, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 2444, i32 19 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__ksymtab_dccp_rcv_established, ptr @__ksymtab_dccp_rcv_state_process, ptr @dccp_check_seqno._entry, ptr @dccp_check_seqno._entry_ptr, ptr @dccp_rcv_request_sent_state_process._entry, ptr @dccp_rcv_request_sent_state_process._entry_ptr, ptr @dccp_sample_rtt._entry, ptr @dccp_sample_rtt._entry.3, ptr @dccp_sample_rtt._entry_ptr, ptr @dccp_sample_rtt._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @dccp_reset_code_convert.error_code, ptr @.str.13, ptr @.str.14, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_sample_rtt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_sample_rtt._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_check_seqno._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_reset_code_convert.error_code to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dccp_rcv_request_sent_state_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dccp_rcv_established(ptr noundef %sk, ptr noundef %skb, ptr nocapture readnone %dh, i32 %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @dccp_check_seqno(ptr noundef %sk, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %discard

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @dccp_parse_options(ptr noundef %sk, ptr noundef null, ptr noundef %skb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end4:                                          ; preds = %if.end
  %dccps_hc_rx_ackvec.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 23
  %0 = ptrtoint ptr %dccps_hc_rx_ackvec.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dccps_hc_rx_ackvec.i, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %if.end4.dccp_handle_ackvec_processing.exit_crit_edge, label %if.end.i

if.end4.dccp_handle_ackvec_processing.exit_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %dccp_handle_ackvec_processing.exit

if.end.i:                                         ; preds = %if.end4
  %dccpd_ack_seq.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 40
  %2 = ptrtoint ptr %dccpd_ack_seq.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %dccpd_ack_seq.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1125899906842620, i64 %3)
  %cmp1.not.i = icmp eq i64 %3, 1125899906842620
  br i1 %cmp1.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then2.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dccp_ackvec_clear_state(ptr noundef nonnull %1, i64 noundef %3) #6
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then2.i, %if.end.i.if.end6.i_crit_edge
  tail call void @dccp_ackvec_input(ptr noundef nonnull %1, ptr noundef %skb) #6
  br label %dccp_handle_ackvec_processing.exit

dccp_handle_ackvec_processing.exit:               ; preds = %if.end6.i, %if.end4.dccp_handle_ackvec_processing.exit_crit_edge
  %sk_shutdown.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %4 = ptrtoint ptr %sk_shutdown.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sk_shutdown.i, align 2
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.then.i, label %dccp_handle_ackvec_processing.exit.if.end.i15_crit_edge

dccp_handle_ackvec_processing.exit.if.end.i15_crit_edge: ; preds = %dccp_handle_ackvec_processing.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i15

if.then.i:                                        ; preds = %dccp_handle_ackvec_processing.exit
  %dccps_hc_rx_ccid.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 24
  %7 = ptrtoint ptr %dccps_hc_rx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dccps_hc_rx_ccid.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %ccid_hc_rx_packet_recv.i.i = getelementptr inbounds %struct.ccid_operations, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %ccid_hc_rx_packet_recv.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ccid_hc_rx_packet_recv.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %12, null
  br i1 %cmp.not.i.i, label %if.then.i.if.end.i15_crit_edge, label %if.then.i.i

if.then.i.if.end.i15_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i15

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %12(ptr noundef %sk, ptr noundef %skb) #6
  br label %if.end.i15

if.end.i15:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i15_crit_edge, %dccp_handle_ackvec_processing.exit.if.end.i15_crit_edge
  %qlen.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26, i32 1
  %13 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %qlen.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i15.if.then6.i_crit_edge

if.end.i15.if.then6.i_crit_edge:                  ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i

lor.lhs.false.i:                                  ; preds = %if.end.i15
  %15 = ptrtoint ptr %sk_shutdown.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sk_shutdown.i, align 2
  %17 = and i8 %16, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool5.not.i = icmp eq i8 %17, 0
  br i1 %tobool5.not.i, label %lor.lhs.false.i.if.then6.i_crit_edge, label %lor.lhs.false.i.dccp_deliver_input_to_ccids.exit_crit_edge

lor.lhs.false.i.dccp_deliver_input_to_ccids.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dccp_deliver_input_to_ccids.exit

lor.lhs.false.i.if.then6.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6.i

if.then6.i:                                       ; preds = %lor.lhs.false.i.if.then6.i_crit_edge, %if.end.i15.if.then6.i_crit_edge
  %dccps_hc_tx_ccid.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 25
  %18 = ptrtoint ptr %dccps_hc_tx_ccid.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dccps_hc_tx_ccid.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %ccid_hc_tx_packet_recv.i.i = getelementptr inbounds %struct.ccid_operations, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %ccid_hc_tx_packet_recv.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ccid_hc_tx_packet_recv.i.i, align 4
  %cmp.not.i15.i = icmp eq ptr %23, null
  br i1 %cmp.not.i15.i, label %if.then6.i.dccp_deliver_input_to_ccids.exit_crit_edge, label %if.then.i16.i

if.then6.i.dccp_deliver_input_to_ccids.exit_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dccp_deliver_input_to_ccids.exit

if.then.i16.i:                                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %23(ptr noundef %sk, ptr noundef %skb) #6
  br label %dccp_deliver_input_to_ccids.exit

dccp_deliver_input_to_ccids.exit:                 ; preds = %if.then.i16.i, %if.then6.i.dccp_deliver_input_to_ccids.exit_crit_edge, %lor.lhs.false.i.dccp_deliver_input_to_ccids.exit_crit_edge
  tail call fastcc void @__dccp_rcv_established(ptr noundef %sk, ptr noundef %skb)
  br label %return

discard:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__kfree_skb(ptr noundef %skb) #6
  br label %return

return:                                           ; preds = %discard, %dccp_deliver_input_to_ccids.exit, %if.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %discard ], [ 0, %dccp_deliver_input_to_ccids.exit ], [ 1, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dccp_check_seqno(ptr noundef %sk, ptr nocapture noundef readonly %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
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
  %dccpd_seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %4 = ptrtoint ptr %dccpd_seq to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %dccpd_seq, align 8
  %dccpd_ack_seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 40
  %6 = ptrtoint ptr %dccpd_ack_seq to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %dccpd_ack_seq, align 8
  %dccph_type = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %dccph_type to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %dccph_type, align 2
  %9 = and i8 %bf.load, 28
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %9)
  %switch = icmp eq i8 %9, 16
  br i1 %switch, label %if.then, label %entry.if.end17_crit_edge

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then:                                          ; preds = %entry
  %dccps_awl = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 3
  %10 = ptrtoint ptr %dccps_awl to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %dccps_awl, align 8
  %dccps_awh = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 4
  %12 = ptrtoint ptr %dccps_awh to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %dccps_awh, align 8
  %14 = sub i64 %13, %11
  %sub.i = shl i64 %14, 16
  %15 = sub i64 %7, %11
  %sub4.i = shl i64 %15, 16
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %sub4.i)
  %cmp.i.not = icmp ult i64 %sub.i, %sub4.i
  br i1 %cmp.i.not, label %if.then.cleanup108_crit_edge, label %land.lhs.true

if.then.cleanup108_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup108

land.lhs.true:                                    ; preds = %if.then
  %dccps_swl = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 1
  %16 = ptrtoint ptr %dccps_swl to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %dccps_swl, align 8
  %add.i = sub i64 %5, %17
  %and.i = and i64 %add.i, 140737488355328
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %cmp.i157.not.not = icmp eq i64 %and.i, 0
  br i1 %cmp.i157.not.not, label %if.then16, label %land.lhs.true.cleanup108_crit_edge

land.lhs.true.cleanup108_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup108

if.then16:                                        ; preds = %land.lhs.true
  %dccps_gsr.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 9
  %18 = ptrtoint ptr %dccps_gsr.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %dccps_gsr.i, align 8
  %20 = sub i64 %5, %19
  %sub.i.i = shl i64 %20, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i.i)
  %cmp.i.i = icmp slt i64 %sub.i.i, 1
  br i1 %cmp.i.i, label %if.then16.dccp_update_gsr.exit_crit_edge, label %if.then.i

if.then16.dccp_update_gsr.exit_crit_edge:         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %dccp_update_gsr.exit

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %dccps_gsr.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %5, ptr %dccps_gsr.i, align 8
  br label %dccp_update_gsr.exit

dccp_update_gsr.exit:                             ; preds = %if.then.i, %if.then16.dccp_update_gsr.exit_crit_edge
  %22 = ptrtoint ptr %dccps_gsr.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %dccps_gsr.i, align 8
  %dccps_r_seq_win.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 19
  %24 = ptrtoint ptr %dccps_r_seq_win.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %bf.load.i = load i64, ptr %dccps_r_seq_win.i, align 8
  %div32.i = lshr i64 %bf.load.i, 18
  %25 = sub i64 %23, %div32.i
  %add4.i = add i64 %25, 1
  %and5.i = and i64 %add4.i, 281474976710655
  %dccps_isr.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 6
  %26 = ptrtoint ptr %dccps_isr.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %dccps_isr.i, align 8
  %28 = sub i64 %27, %add4.i
  %sub.i34.i = shl i64 %28, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i34.i)
  %cmp.i35.i = icmp slt i64 %sub.i34.i, 1
  %spec.store.select.i = select i1 %cmp.i35.i, i64 %and5.i, i64 %27
  %29 = ptrtoint ptr %dccps_swl to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %spec.store.select.i, ptr %dccps_swl, align 8
  %bf.lshr16.i = lshr i64 %bf.load.i, 16
  %mul.i = mul nuw nsw i64 %bf.lshr16.i, 3
  %div1733.i = lshr i64 %mul.i, 2
  %add18.i = add i64 %div1733.i, %23
  %and19.i = and i64 %add18.i, 281474976710655
  %dccps_swh.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 2
  %30 = ptrtoint ptr %dccps_swh.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %and19.i, ptr %dccps_swh.i, align 8
  br label %if.end17

if.end17:                                         ; preds = %dccp_update_gsr.exit, %entry.if.end17_crit_edge
  %dccps_swl18 = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 1
  %31 = ptrtoint ptr %dccps_swl18 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %dccps_swl18, align 8
  %dccps_awl19 = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 3
  %33 = ptrtoint ptr %dccph_type to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load21 = load i8, ptr %dccph_type, align 2
  %bf.lshr22 = lshr i8 %bf.load21, 1
  %bf.clear23 = and i8 %bf.lshr22, 15
  %bf.clear23.off = add nsw i8 %bf.clear23, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.clear23.off)
  %switch156 = icmp ult i8 %bf.clear23.off, 3
  br i1 %switch156, label %if.then43, label %if.end17.if.end44_crit_edge

if.end17.if.end44_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then43:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %dccps_gsr = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 9
  %34 = ptrtoint ptr %dccps_gsr to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %dccps_gsr, align 8
  %add = add i64 %35, 1
  %and = and i64 %add, 281474976710655
  %dccps_gar = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 10
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end17.if.end44_crit_edge
  %lswl.0 = phi i64 [ %and, %if.then43 ], [ %32, %if.end17.if.end44_crit_edge ]
  %lawl.0.in = phi ptr [ %dccps_gar, %if.then43 ], [ %dccps_awl19, %if.end17.if.end44_crit_edge ]
  %36 = ptrtoint ptr %lawl.0.in to i32
  call void @__asan_load8_noabort(i32 %36)
  %lawl.0 = load i64, ptr %lawl.0.in, align 8
  %dccps_swh = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 2
  %37 = ptrtoint ptr %dccps_swh to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %dccps_swh, align 8
  %39 = sub i64 %38, %lswl.0
  %sub.i158 = shl i64 %39, 16
  %40 = sub i64 %5, %lswl.0
  %sub4.i159 = shl i64 %40, 16
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i158, i64 %sub4.i159)
  %cmp.i160.not = icmp ult i64 %sub.i158, %sub4.i159
  br i1 %cmp.i160.not, label %if.end44.if.else72_crit_edge, label %land.lhs.true47

if.end44.if.else72_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else72

land.lhs.true47:                                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp8(i64 1125899906842620, i64 %7)
  %cmp48 = icmp eq i64 %7, 1125899906842620
  br i1 %cmp48, label %land.lhs.true47.if.then54_crit_edge, label %lor.lhs.false50

land.lhs.true47.if.then54_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then54

lor.lhs.false50:                                  ; preds = %land.lhs.true47
  %dccps_awh51 = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 4
  %41 = ptrtoint ptr %dccps_awh51 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %dccps_awh51, align 8
  %43 = sub i64 %42, %lawl.0
  %sub.i162 = shl i64 %43, 16
  %44 = sub i64 %7, %lawl.0
  %sub4.i163 = shl i64 %44, 16
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i162, i64 %sub4.i163)
  %cmp.i164.not = icmp ult i64 %sub.i162, %sub4.i163
  br i1 %cmp.i164.not, label %lor.lhs.false50.if.else72_crit_edge, label %lor.lhs.false50.if.then54_crit_edge

lor.lhs.false50.if.then54_crit_edge:              ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then54

lor.lhs.false50.if.else72_crit_edge:              ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else72

if.then54:                                        ; preds = %lor.lhs.false50.if.then54_crit_edge, %land.lhs.true47.if.then54_crit_edge
  %dccps_gsr.i166 = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 9
  %45 = ptrtoint ptr %dccps_gsr.i166 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %dccps_gsr.i166, align 8
  %47 = sub i64 %5, %46
  %sub.i.i167 = shl i64 %47, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i.i167)
  %cmp.i.i168 = icmp slt i64 %sub.i.i167, 1
  br i1 %cmp.i.i168, label %if.then54.dccp_update_gsr.exit186_crit_edge, label %if.then.i169

if.then54.dccp_update_gsr.exit186_crit_edge:      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  br label %dccp_update_gsr.exit186

if.then.i169:                                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %dccps_gsr.i166 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %5, ptr %dccps_gsr.i166, align 8
  br label %dccp_update_gsr.exit186

dccp_update_gsr.exit186:                          ; preds = %if.then.i169, %if.then54.dccp_update_gsr.exit186_crit_edge
  %49 = ptrtoint ptr %dccps_gsr.i166 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %dccps_gsr.i166, align 8
  %dccps_r_seq_win.i170 = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 19
  %51 = ptrtoint ptr %dccps_r_seq_win.i170 to i32
  call void @__asan_load8_noabort(i32 %51)
  %bf.load.i171 = load i64, ptr %dccps_r_seq_win.i170, align 8
  %div32.i172 = lshr i64 %bf.load.i171, 18
  %52 = sub i64 %50, %div32.i172
  %add4.i173 = add i64 %52, 1
  %and5.i174 = and i64 %add4.i173, 281474976710655
  %dccps_isr.i176 = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 6
  %53 = ptrtoint ptr %dccps_isr.i176 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %dccps_isr.i176, align 8
  %55 = sub i64 %54, %add4.i173
  %sub.i34.i177 = shl i64 %55, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i34.i177)
  %cmp.i35.i178 = icmp slt i64 %sub.i34.i177, 1
  %spec.store.select.i179 = select i1 %cmp.i35.i178, i64 %and5.i174, i64 %54
  %56 = ptrtoint ptr %dccps_swl18 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %spec.store.select.i179, ptr %dccps_swl18, align 8
  %bf.lshr16.i180 = lshr i64 %bf.load.i171, 16
  %mul.i181 = mul nuw nsw i64 %bf.lshr16.i180, 3
  %div1733.i182 = lshr i64 %mul.i181, 2
  %add18.i183 = add i64 %div1733.i182, %50
  %and19.i184 = and i64 %add18.i183, 281474976710655
  %57 = ptrtoint ptr %dccps_swh to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %and19.i184, ptr %dccps_swh, align 8
  %58 = ptrtoint ptr %dccph_type to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load56 = load i8, ptr %dccph_type, align 2
  %59 = and i8 %bf.load56, 30
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %59)
  %cmp60.not = icmp eq i8 %59, 16
  %or.cond = select i1 %cmp60.not, i1 true, i1 %cmp48
  br i1 %or.cond, label %dccp_update_gsr.exit186.cleanup108_crit_edge, label %land.lhs.true65

dccp_update_gsr.exit186.cleanup108_crit_edge:     ; preds = %dccp_update_gsr.exit186
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup108

land.lhs.true65:                                  ; preds = %dccp_update_gsr.exit186
  %dccps_gar66 = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 10
  %60 = ptrtoint ptr %dccps_gar66 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %dccps_gar66, align 8
  %62 = sub i64 %7, %61
  %sub.i187 = shl i64 %62, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i187)
  %cmp.i188 = icmp slt i64 %sub.i187, 1
  br i1 %cmp.i188, label %land.lhs.true65.cleanup108_crit_edge, label %if.then69

land.lhs.true65.cleanup108_crit_edge:             ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup108

if.then69:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %dccps_gar66 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %7, ptr %dccps_gar66, align 8
  br label %cleanup108

if.else72:                                        ; preds = %lor.lhs.false50.if.else72_crit_edge, %if.end44.if.else72_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %64 = load volatile i32, ptr @jiffies, align 128
  %dccps_rate_last = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 21
  %65 = ptrtoint ptr %dccps_rate_last to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dccps_rate_last, align 8
  %67 = load i32, ptr @sysctl_dccp_sync_ratelimit, align 4
  %68 = add i32 %66, %67
  %sub = sub i32 %64, %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp74 = icmp slt i32 %sub, 0
  br i1 %cmp74, label %if.else72.cleanup108_crit_edge, label %do.body

if.else72.cleanup108_crit_edge:                   ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup108

do.body:                                          ; preds = %if.else72
  %call78 = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %do.body.do.end95_crit_edge, label %do.end

do.body.do.end95_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end95

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %dccph_type to i32
  call void @__asan_load1_noabort(i32 %69)
  %bf.load83 = load i8, ptr %dccph_type, align 2
  %bf.lshr84 = lshr i8 %bf.load83, 1
  %bf.clear85 = and i8 %bf.lshr84, 15
  %conv86 = zext i8 %bf.clear85 to i32
  %call87 = tail call ptr @dccp_packet_name(i32 noundef %conv86) #6
  %70 = ptrtoint ptr %dccps_swh to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %dccps_swh, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1125899906842620, i64 %7)
  %cmp89 = icmp eq i64 %7, 1125899906842620
  %cond = select i1 %cmp89, ptr @.str.8, ptr @.str.9
  %dccps_awh91 = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 4
  %72 = ptrtoint ptr %dccps_awh91 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %dccps_awh91, align 8
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef %call87, i64 noundef %lswl.0, i64 noundef %5, i64 noundef %71, ptr noundef nonnull %cond, i64 noundef %lawl.0, i64 noundef %7, i64 noundef %73) #9
  br label %do.end95

do.end95:                                         ; preds = %do.end, %do.body.do.end95_crit_edge
  %74 = ptrtoint ptr %dccps_rate_last to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %64, ptr %dccps_rate_last, align 8
  %75 = ptrtoint ptr %dccph_type to i32
  call void @__asan_load1_noabort(i32 %75)
  %bf.load98 = load i8, ptr %dccph_type, align 2
  %76 = and i8 %bf.load98, 30
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %76)
  %cmp102 = icmp eq i8 %76, 14
  br i1 %cmp102, label %if.then104, label %do.end95.if.end106_crit_edge

do.end95.if.end106_crit_edge:                     ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

if.then104:                                       ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #8
  %dccps_gsr105 = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 9
  %77 = ptrtoint ptr %dccps_gsr105 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %dccps_gsr105, align 8
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %do.end95.if.end106_crit_edge
  %seqno.0 = phi i64 [ %78, %if.then104 ], [ %5, %do.end95.if.end106_crit_edge ]
  tail call void @dccp_send_sync(ptr noundef %sk, i64 noundef %seqno.0, i32 noundef 8) #6
  br label %cleanup108

cleanup108:                                       ; preds = %if.end106, %if.else72.cleanup108_crit_edge, %if.then69, %land.lhs.true65.cleanup108_crit_edge, %dccp_update_gsr.exit186.cleanup108_crit_edge, %land.lhs.true.cleanup108_crit_edge, %if.then.cleanup108_crit_edge
  %retval.1 = phi i32 [ -1, %land.lhs.true.cleanup108_crit_edge ], [ -1, %if.then.cleanup108_crit_edge ], [ -1, %if.else72.cleanup108_crit_edge ], [ -1, %if.end106 ], [ 0, %dccp_update_gsr.exit186.cleanup108_crit_edge ], [ 0, %land.lhs.true65.cleanup108_crit_edge ], [ 0, %if.then69 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_parse_options(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dccp_handle_ackvec_processing(ptr nocapture noundef readonly %sk, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_hc_rx_ackvec = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 23
  %0 = ptrtoint ptr %dccps_hc_rx_ackvec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dccps_hc_rx_ackvec, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dccpd_ack_seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 40
  %2 = ptrtoint ptr %dccpd_ack_seq to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %dccpd_ack_seq, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1125899906842620, i64 %3)
  %cmp1.not = icmp eq i64 %3, 1125899906842620
  br i1 %cmp1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dccp_ackvec_clear_state(ptr noundef nonnull %1, i64 noundef %3) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  tail call void @dccp_ackvec_input(ptr noundef nonnull %1, ptr noundef %skb) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dccp_deliver_input_to_ccids(ptr noundef %sk, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_shutdown = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %0 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sk_shutdown, align 2
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %dccps_hc_rx_ccid = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 24
  %3 = ptrtoint ptr %dccps_hc_rx_ccid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dccps_hc_rx_ccid, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %ccid_hc_rx_packet_recv.i = getelementptr inbounds %struct.ccid_operations, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %ccid_hc_rx_packet_recv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ccid_hc_rx_packet_recv.i, align 4
  %cmp.not.i = icmp eq ptr %8, null
  br i1 %cmp.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %8(ptr noundef %sk, ptr noundef %skb) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %qlen = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26, i32 1
  %9 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qlen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  %11 = ptrtoint ptr %sk_shutdown to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sk_shutdown, align 2
  %13 = and i8 %12, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool5.not = icmp eq i8 %13, 0
  br i1 %tobool5.not, label %lor.lhs.false.if.then6_crit_edge, label %lor.lhs.false.if.end7_crit_edge

lor.lhs.false.if.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %dccps_hc_tx_ccid = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 25
  %14 = ptrtoint ptr %dccps_hc_tx_ccid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dccps_hc_tx_ccid, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %ccid_hc_tx_packet_recv.i = getelementptr inbounds %struct.ccid_operations, ptr %17, i32 0, i32 16
  %18 = ptrtoint ptr %ccid_hc_tx_packet_recv.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ccid_hc_tx_packet_recv.i, align 4
  %cmp.not.i15 = icmp eq ptr %19, null
  br i1 %cmp.not.i15, label %if.then6.if.end7_crit_edge, label %if.then.i16

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then.i16:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %19(ptr noundef %sk, ptr noundef %skb) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then.i16, %if.then6.if.end7_crit_edge, %lor.lhs.false.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__dccp_rcv_established(ptr noundef %sk, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
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
  %dccph_type = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %dccph_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %dccph_type, align 2
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 15
  %conv = zext i8 %bf.clear to i32
  %5 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv, label %entry.do.body38_crit_edge [
    i32 4, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge4
    i32 3, label %entry.discard_crit_edge
    i32 7, label %sw.bb3
    i32 5, label %sw.bb4
    i32 6, label %sw.bb6
    i32 0, label %sw.bb11
    i32 1, label %sw.bb17
    i32 8, label %sw.bb34
  ]

entry.discard_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %discard

entry.sw.bb_crit_edge4:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.do.body38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body38

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge4
  tail call fastcc void @dccp_enqueue_skb(ptr noundef %sk, ptr noundef %skb)
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %bf.clear.i.i.i.i = shl i8 %bf.load, 2
  %6 = and i8 %bf.clear.i.i.i.i, 4
  %narrow.i.i.i.i = add nuw nsw i8 %6, 12
  %add.i.i.i.i = zext i8 %narrow.i.i.i.i to i32
  %add.ptr.i.i1 = getelementptr i8, ptr %add.ptr.i.i, i32 %add.i.i.i.i
  %dccph_reset_code.i = getelementptr inbounds %struct.dccp_hdr_reset, ptr %add.ptr.i.i1, i32 0, i32 1
  %7 = ptrtoint ptr %dccph_reset_code.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dccph_reset_code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %8)
  %cmp.i.i = icmp ugt i8 %8, 11
  br i1 %cmp.i.i, label %sw.bb3.dccp_reset_code_convert.exit.i_crit_edge, label %cond.false.i.i

sw.bb3.dccp_reset_code_convert.exit.i_crit_edge:  ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %dccp_reset_code_convert.exit.i

cond.false.i.i:                                   ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i2 = zext i8 %8 to i32
  %arrayidx.i.i = getelementptr [12 x i16], ptr @dccp_reset_code_convert.error_code, i32 0, i32 %conv.i.i2
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx.i.i, align 2
  br label %dccp_reset_code_convert.exit.i

dccp_reset_code_convert.exit.i:                   ; preds = %cond.false.i.i, %sw.bb3.dccp_reset_code_convert.exit.i_crit_edge
  %cond.i.i = phi i16 [ %10, %cond.false.i.i ], [ 0, %sw.bb3.dccp_reset_code_convert.exit.i_crit_edge ]
  %conv.i = zext i16 %cond.i.i to i32
  %sk_err.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %11 = ptrtoint ptr %sk_err.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv.i, ptr %sk_err.i, align 4
  %sk_shutdown.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %12 = ptrtoint ptr %sk_shutdown.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %sk_shutdown.i.i, align 2
  %13 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %or.i.i.i.i = or i32 %15, 2
  store i32 %or.i.i.i.i, ptr %13, align 4
  tail call fastcc void @dccp_enqueue_skb(ptr noundef %sk, ptr noundef %skb) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cond.i.i)
  %tobool.not.i = icmp eq i16 %cond.i.i, 0
  br i1 %tobool.not.i, label %dccp_reset_code_convert.exit.i.dccp_rcv_reset.exit_crit_edge, label %land.lhs.true.i

dccp_reset_code_convert.exit.i.dccp_rcv_reset.exit_crit_edge: ; preds = %dccp_reset_code_convert.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dccp_rcv_reset.exit

land.lhs.true.i:                                  ; preds = %dccp_reset_code_convert.exit.i
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %13, align 4
  %18 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.i = icmp eq i32 %18, 0
  br i1 %tobool.i.not.i, label %if.then.i, label %land.lhs.true.i.dccp_rcv_reset.exit_crit_edge

land.lhs.true.i.dccp_rcv_reset.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dccp_rcv_reset.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @sk_wake_async(ptr noundef %sk, i32 noundef 0, i32 noundef 4) #6
  br label %dccp_rcv_reset.exit

dccp_rcv_reset.exit:                              ; preds = %if.then.i, %land.lhs.true.i.dccp_rcv_reset.exit_crit_edge, %dccp_reset_code_convert.exit.i.dccp_rcv_reset.exit_crit_edge
  tail call void @dccp_time_wait(ptr noundef %sk, i32 noundef 6, i32 noundef 0) #6
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %call5 = tail call fastcc i32 @dccp_rcv_closereq(ptr noundef %sk, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %sw.bb4.discard_crit_edge, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb4.discard_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %discard

sw.bb6:                                           ; preds = %entry
  %call7 = tail call fastcc i32 @dccp_rcv_close(ptr noundef %sk, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %sw.bb6.discard_crit_edge, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb6.discard_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %discard

sw.bb11:                                          ; preds = %entry
  %dccps_role = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 29
  %19 = ptrtoint ptr %dccps_role to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load12 = load i8, ptr %dccps_role, align 8
  %bf.lshr13.mask = and i8 %bf.load12, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr13.mask)
  %cmp.not = icmp eq i8 %bf.lshr13.mask, 64
  br i1 %cmp.not, label %sw.bb11.check_seq_crit_edge, label %sw.bb11.send_sync_crit_edge

sw.bb11.send_sync_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %send_sync

sw.bb11.check_seq_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_seq

sw.bb17:                                          ; preds = %entry
  %dccps_role18 = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 29
  %20 = ptrtoint ptr %dccps_role18 to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load19 = load i8, ptr %dccps_role18, align 8
  %bf.lshr20.mask = and i8 %bf.load19, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %bf.lshr20.mask)
  %cmp22.not = icmp eq i8 %bf.lshr20.mask, -128
  br i1 %cmp22.not, label %sw.bb17.check_seq_crit_edge, label %sw.bb17.send_sync_crit_edge

sw.bb17.send_sync_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  br label %send_sync

sw.bb17.check_seq_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_seq

check_seq:                                        ; preds = %sw.bb17.check_seq_crit_edge, %sw.bb11.check_seq_crit_edge
  %dccps_osr = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 7
  %21 = ptrtoint ptr %dccps_osr to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %dccps_osr, align 8
  %dccpd_seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %23 = ptrtoint ptr %dccpd_seq to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %dccpd_seq, align 8
  %add.i = sub i64 %24, %22
  %and.i = and i64 %add.i, 140737488355328
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %cmp.i.not.not = icmp eq i64 %and.i, 0
  br i1 %cmp.i.not.not, label %check_seq.send_sync_crit_edge, label %check_seq.do.body38_crit_edge

check_seq.do.body38_crit_edge:                    ; preds = %check_seq
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body38

check_seq.send_sync_crit_edge:                    ; preds = %check_seq
  call void @__sanitizer_cov_trace_pc() #8
  br label %send_sync

send_sync:                                        ; preds = %check_seq.send_sync_crit_edge, %sw.bb17.send_sync_crit_edge, %sw.bb11.send_sync_crit_edge
  %dccpd_seq32 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %25 = ptrtoint ptr %dccpd_seq32 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %dccpd_seq32, align 8
  tail call void @dccp_send_sync(ptr noundef %sk, i64 noundef %26, i32 noundef 8) #6
  br label %do.body38

sw.bb34:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dccpd_seq37 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %27 = ptrtoint ptr %dccpd_seq37 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %dccpd_seq37, align 8
  tail call void @dccp_send_sync(ptr noundef %sk, i64 noundef %28, i32 noundef 9) #6
  br label %discard

do.body38:                                        ; preds = %send_sync, %check_seq.do.body38_crit_edge, %entry.do.body38_crit_edge
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #6, !srcloc !57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dccp_statistics to i32))
  %30 = load ptr, ptr @dccp_statistics, align 4
  %arrayidx52 = getelementptr [15 x i32], ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %arrayidx52 to i32
  %32 = tail call i32 @llvm.read_register.i32(metadata !47) #6
  %and.i3 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i3 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu, align 4
  %arrayidx55 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx55, align 4
  %add = add i32 %37, %31
  %38 = inttoptr i32 %add to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  %add56 = add i32 %40, 1
  store i32 %add56, ptr %38, align 4
  %41 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #6, !srcloc !58
  %and.i.i = and i32 %41, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool67.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool67.not, label %if.then71, label %do.body38.do.end74_crit_edge, !prof !59

do.body38.do.end74_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end74

if.then71:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @warn_bogus_irq_restore() #6
  br label %do.end74

do.end74:                                         ; preds = %if.then71, %do.body38.do.end74_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %29) #6, !srcloc !60
  br label %discard

discard:                                          ; preds = %do.end74, %sw.bb34, %sw.bb6.discard_crit_edge, %sw.bb4.discard_crit_edge, %entry.discard_crit_edge
  tail call void @__kfree_skb(ptr noundef %skb) #6
  br label %cleanup

cleanup:                                          ; preds = %discard, %sw.bb6.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %dccp_rcv_reset.exit, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfree_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dccp_rcv_state_process(ptr noundef %sk, ptr noundef %skb, ptr nocapture noundef readonly %dh, i32 %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  %2 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %2)
  %cmp = icmp eq i8 %2, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %dccph_type = getelementptr inbounds %struct.dccp_hdr, ptr %dh, i32 0, i32 5
  %3 = ptrtoint ptr %dccph_type to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %dccph_type, align 2
  %bf.lshr = lshr i8 %bf.load, 1
  %trunc239 = trunc i8 %bf.lshr to i4
  %4 = zext i4 %trunc239 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.21)
  switch i4 %trunc239, label %if.end23 [
    i4 0, label %if.then8
    i4 7, label %if.then.discard_crit_edge
  ]

if.then.discard_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %discard

if.then8:                                         ; preds = %if.then
  %5 = tail call i32 @llvm.read_register.i32(metadata !47) #6
  %and.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %8, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !61
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %if.then8.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then8.rcu_read_lock.exit_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then8
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then8.rcu_read_lock.exit_crit_edge
  tail call fastcc void @local_bh_disable()
  %icsk_af_ops = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 11
  %9 = ptrtoint ptr %icsk_af_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %icsk_af_ops, align 8
  %conn_request = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %conn_request to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %conn_request, align 4
  %call10 = tail call i32 %12(ptr noundef %sk, ptr noundef %skb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call10)
  %cmp11 = icmp sgt i32 %call10, -1
  tail call fastcc void @local_bh_enable()
  %call.i229 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i229, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i232

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i232:                               ; preds = %rcu_read_lock.exit
  %call1.i230 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i230)
  %tobool.not.i231 = icmp eq i32 %call1.i230, 0
  br i1 %tobool.not.i231, label %land.lhs.true.i232.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i234

land.lhs.true.i232.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i232
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i234:                              ; preds = %land.lhs.true.i232
  %.b4.i233 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i233, label %land.lhs.true2.i234.rcu_read_unlock.exit_crit_edge, label %if.then.i235

land.lhs.true2.i234.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i234
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i235:                                     ; preds = %land.lhs.true2.i234
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i235, %land.lhs.true2.i234.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i232.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !62
  %13 = tail call i32 @llvm.read_register.i32(metadata !47) #6
  %and.i.i.i.i.i236 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i236 to ptr
  %preempt_count.i.i.i.i237 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i237 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i237, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i237, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br i1 %cmp11, label %if.end, label %rcu_read_unlock.exit.cleanup_crit_edge

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @consume_skb(ptr noundef %skb) #6
  br label %cleanup

if.end23:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %dccpd_reset_code = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 25
  %17 = ptrtoint ptr %dccpd_reset_code to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 3, ptr %dccpd_reset_code, align 1
  br label %cleanup

if.else:                                          ; preds = %entry
  %18 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %19)
  %cmp27 = icmp eq i8 %19, 7
  br i1 %cmp27, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dccpd_reset_code30 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 25
  %20 = ptrtoint ptr %dccpd_reset_code30 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %dccpd_reset_code30, align 1
  br label %cleanup

if.end32:                                         ; preds = %if.else
  %21 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp36.not = icmp eq i8 %22, 2
  br i1 %cmp36.not, label %if.end32.if.end41_crit_edge, label %land.lhs.true

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end32
  %call38 = tail call fastcc i32 @dccp_check_seqno(ptr noundef %sk, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %land.lhs.true.if.end41_crit_edge, label %land.lhs.true.discard_crit_edge

land.lhs.true.discard_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %discard

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.end41:                                         ; preds = %land.lhs.true.if.end41_crit_edge, %if.end32.if.end41_crit_edge
  %dccps_role = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 29
  %23 = ptrtoint ptr %dccps_role to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load42 = load i8, ptr %dccps_role, align 8
  %bf.lshr43.mask = and i8 %bf.load42, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %bf.lshr43.mask)
  %cmp44.not = icmp eq i8 %bf.lshr43.mask, -128
  %dccph_type61 = getelementptr inbounds %struct.dccp_hdr, ptr %dh, i32 0, i32 5
  %24 = ptrtoint ptr %dccph_type61 to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load62 = load i8, ptr %dccph_type61, align 2
  %25 = and i8 %bf.load62, 30
  br i1 %cmp44.not, label %land.lhs.true60, label %land.lhs.true46

land.lhs.true46:                                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %cmp52 = icmp eq i8 %25, 2
  br i1 %cmp52, label %land.lhs.true46.discard.sink.split_crit_edge, label %land.lhs.true46.lor.lhs.false68_crit_edge

land.lhs.true46.lor.lhs.false68_crit_edge:        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false68

land.lhs.true46.discard.sink.split_crit_edge:     ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #8
  br label %discard.sink.split

land.lhs.true60:                                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp66 = icmp eq i8 %25, 0
  br i1 %cmp66, label %land.lhs.true60.discard.sink.split_crit_edge, label %land.lhs.true60.lor.lhs.false68_crit_edge

land.lhs.true60.lor.lhs.false68_crit_edge:        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false68

land.lhs.true60.discard.sink.split_crit_edge:     ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #8
  br label %discard.sink.split

lor.lhs.false68:                                  ; preds = %land.lhs.true60.lor.lhs.false68_crit_edge, %land.lhs.true46.lor.lhs.false68_crit_edge
  %26 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %27)
  %cmp72 = icmp eq i8 %27, 3
  br i1 %cmp72, label %land.lhs.true74, label %lor.lhs.false68.if.end83_crit_edge

lor.lhs.false68.if.end83_crit_edge:               ; preds = %lor.lhs.false68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

land.lhs.true74:                                  ; preds = %lor.lhs.false68
  %dccph_type75 = getelementptr inbounds %struct.dccp_hdr, ptr %dh, i32 0, i32 5
  %28 = ptrtoint ptr %dccph_type75 to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load76 = load i8, ptr %dccph_type75, align 2
  %29 = and i8 %bf.load76, 30
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %29)
  %cmp80 = icmp eq i8 %29, 4
  br i1 %cmp80, label %land.lhs.true74.discard.sink.split_crit_edge, label %land.lhs.true74.if.end83_crit_edge

land.lhs.true74.if.end83_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

land.lhs.true74.discard.sink.split_crit_edge:     ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #8
  br label %discard.sink.split

if.end83:                                         ; preds = %land.lhs.true74.if.end83_crit_edge, %lor.lhs.false68.if.end83_crit_edge
  %call84 = tail call i32 @dccp_parse_options(ptr noundef %sk, ptr noundef null, ptr noundef %skb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %if.end83.cleanup_crit_edge

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end87:                                         ; preds = %if.end83
  %dccph_type88 = getelementptr inbounds %struct.dccp_hdr, ptr %dh, i32 0, i32 5
  %30 = ptrtoint ptr %dccph_type88 to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load89 = load i8, ptr %dccph_type88, align 2
  %bf.lshr90 = lshr i8 %bf.load89, 1
  %trunc = trunc i8 %bf.lshr90 to i4
  %31 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.22)
  switch i4 %trunc, label %if.end124 [
    i4 7, label %if.then95
    i4 5, label %if.then104
    i4 6, label %if.then117
  ]

if.then95:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @dccp_rcv_reset(ptr noundef %sk, ptr noundef %skb)
  br label %cleanup

if.then104:                                       ; preds = %if.end87
  %call105 = tail call fastcc i32 @dccp_rcv_closereq(ptr noundef %sk, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.then104.discard_crit_edge, label %if.then104.cleanup_crit_edge

if.then104.cleanup_crit_edge:                     ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then104.discard_crit_edge:                     ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #8
  br label %discard

if.then117:                                       ; preds = %if.end87
  %call118 = tail call fastcc i32 @dccp_rcv_close(ptr noundef %sk, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.then117.discard_crit_edge, label %if.then117.cleanup_crit_edge

if.then117.cleanup_crit_edge:                     ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then117.discard_crit_edge:                     ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #8
  br label %discard

if.end124:                                        ; preds = %if.end87
  %32 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load volatile i8, ptr %skc_state, align 2
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %33, label %if.end124.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 13, label %sw.bb133
    i8 3, label %if.end124.sw.bb134_crit_edge
  ]

if.end124.sw.bb134_crit_edge:                     ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb134

if.end124.sw.epilog_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end124
  %call128 = tail call fastcc i32 @dccp_rcv_request_sent_state_process(ptr noundef %sk, ptr noundef %skb, ptr noundef %dh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call128)
  %cmp129 = icmp sgt i32 %call128, -1
  br i1 %cmp129, label %sw.bb.cleanup_crit_edge, label %if.end132

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end132:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__kfree_skb(ptr noundef %skb) #6
  br label %cleanup

sw.bb133:                                         ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @dccp_handle_ackvec_processing(ptr noundef %sk, ptr noundef %skb)
  tail call fastcc void @dccp_deliver_input_to_ccids(ptr noundef %sk, ptr noundef %skb)
  br label %sw.bb134

sw.bb134:                                         ; preds = %sw.bb133, %if.end124.sw.bb134_crit_edge
  %call135 = tail call fastcc i32 @dccp_rcv_respond_partopen_state_process(ptr noundef %sk, ptr noundef %skb, ptr noundef %dh)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb134, %if.end124.sw.epilog_crit_edge
  %queued.0 = phi i32 [ 0, %if.end124.sw.epilog_crit_edge ], [ %call135, %sw.bb134 ]
  %35 = ptrtoint ptr %dccph_type88 to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load137 = load i8, ptr %dccph_type88, align 2
  %bf.lshr138 = lshr i8 %bf.load137, 1
  %trunc238 = trunc i8 %bf.lshr138 to i4
  %36 = zext i4 %trunc238 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.24)
  switch i4 %trunc238, label %sw.epilog.if.end167_crit_edge [
    i4 3, label %sw.epilog.if.then151_crit_edge
    i4 4, label %sw.epilog.if.then151_crit_edge241
    i4 -8, label %sw.epilog.discard.sink.split_crit_edge
  ], !prof !63

sw.epilog.discard.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %discard.sink.split

sw.epilog.if.then151_crit_edge241:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then151

sw.epilog.if.then151_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then151

sw.epilog.if.end167_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end167

if.then151:                                       ; preds = %sw.epilog.if.then151_crit_edge, %sw.epilog.if.then151_crit_edge241
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %1)
  %cond = icmp eq i8 %1, 13
  br i1 %cond, label %sw.bb152, label %if.then151.if.end167_crit_edge

if.then151.if.end167_crit_edge:                   ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end167

sw.bb152:                                         ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #8
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %37 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sk_state_change, align 4
  tail call void %38(ptr noundef %sk) #6
  tail call fastcc void @sk_wake_async(ptr noundef %sk, i32 noundef 0, i32 noundef 2)
  br label %if.end167

if.end167:                                        ; preds = %sw.bb152, %if.then151.if.end167_crit_edge, %sw.epilog.if.end167_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %queued.0)
  %tobool168.not = icmp eq i32 %queued.0, 0
  br i1 %tobool168.not, label %if.end167.discard_crit_edge, label %if.end167.cleanup_crit_edge

if.end167.cleanup_crit_edge:                      ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end167.discard_crit_edge:                      ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #8
  br label %discard

discard.sink.split:                               ; preds = %sw.epilog.discard.sink.split_crit_edge, %land.lhs.true74.discard.sink.split_crit_edge, %land.lhs.true60.discard.sink.split_crit_edge, %land.lhs.true46.discard.sink.split_crit_edge
  %.sink240 = phi i32 [ 8, %land.lhs.true74.discard.sink.split_crit_edge ], [ 8, %land.lhs.true60.discard.sink.split_crit_edge ], [ 8, %land.lhs.true46.discard.sink.split_crit_edge ], [ 9, %sw.epilog.discard.sink.split_crit_edge ]
  %dccpd_seq165 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %39 = ptrtoint ptr %dccpd_seq165 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %dccpd_seq165, align 8
  tail call void @dccp_send_sync(ptr noundef %sk, i64 noundef %40, i32 noundef %.sink240) #6
  br label %discard

discard:                                          ; preds = %discard.sink.split, %if.end167.discard_crit_edge, %if.then117.discard_crit_edge, %if.then104.discard_crit_edge, %land.lhs.true.discard_crit_edge, %if.then.discard_crit_edge
  tail call void @__kfree_skb(ptr noundef %skb) #6
  br label %cleanup

cleanup:                                          ; preds = %discard, %if.end167.cleanup_crit_edge, %if.end132, %sw.bb.cleanup_crit_edge, %if.then117.cleanup_crit_edge, %if.then104.cleanup_crit_edge, %if.then95, %if.end83.cleanup_crit_edge, %if.then29, %if.end23, %if.end, %rcu_read_unlock.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %if.end23 ], [ 1, %if.then29 ], [ 0, %if.then95 ], [ 0, %if.end132 ], [ 1, %rcu_read_unlock.exit.cleanup_crit_edge ], [ 1, %if.end83.cleanup_crit_edge ], [ 0, %if.then104.cleanup_crit_edge ], [ 0, %if.then117.cleanup_crit_edge ], [ %call128, %sw.bb.cleanup_crit_edge ], [ 0, %discard ], [ 0, %if.end167.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #6
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dccp_send_sync(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dccp_rcv_reset(ptr noundef %sk, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
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
  %dccph_x.i.i.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %4 = ptrtoint ptr %dccph_x.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i.i.i = load i8, ptr %dccph_x.i.i.i, align 2
  %bf.clear.i.i.i = shl i8 %bf.load.i.i.i, 2
  %5 = and i8 %bf.clear.i.i.i, 4
  %narrow.i.i.i = add nuw nsw i8 %5, 12
  %add.i.i.i = zext i8 %narrow.i.i.i to i32
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %add.i.i.i
  %dccph_reset_code = getelementptr inbounds %struct.dccp_hdr_reset, ptr %add.ptr.i, i32 0, i32 1
  %6 = ptrtoint ptr %dccph_reset_code to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dccph_reset_code, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %7)
  %cmp.i = icmp ugt i8 %7, 11
  br i1 %cmp.i, label %entry.dccp_reset_code_convert.exit_crit_edge, label %cond.false.i

entry.dccp_reset_code_convert.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dccp_reset_code_convert.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = zext i8 %7 to i32
  %arrayidx.i = getelementptr [12 x i16], ptr @dccp_reset_code_convert.error_code, i32 0, i32 %conv.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i, align 2
  br label %dccp_reset_code_convert.exit

dccp_reset_code_convert.exit:                     ; preds = %cond.false.i, %entry.dccp_reset_code_convert.exit_crit_edge
  %cond.i = phi i16 [ %9, %cond.false.i ], [ 0, %entry.dccp_reset_code_convert.exit_crit_edge ]
  %conv = zext i16 %cond.i to i32
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %10 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %sk_err, align 4
  %sk_shutdown.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %11 = ptrtoint ptr %sk_shutdown.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %sk_shutdown.i, align 2
  %12 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %or.i.i.i = or i32 %14, 2
  store i32 %or.i.i.i, ptr %12, align 4
  tail call fastcc void @dccp_enqueue_skb(ptr noundef %sk, ptr noundef %skb) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cond.i)
  %tobool.not = icmp eq i16 %cond.i, 0
  br i1 %tobool.not, label %dccp_reset_code_convert.exit.if.end_crit_edge, label %land.lhs.true

dccp_reset_code_convert.exit.if.end_crit_edge:    ; preds = %dccp_reset_code_convert.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %dccp_reset_code_convert.exit
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %12, align 4
  %17 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not = icmp eq i32 %17, 0
  br i1 %tobool.i.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @sk_wake_async(ptr noundef %sk, i32 noundef 0, i32 noundef 4)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %dccp_reset_code_convert.exit.if.end_crit_edge
  tail call void @dccp_time_wait(ptr noundef %sk, i32 noundef 6, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dccp_rcv_closereq(ptr noundef %sk, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dccps_role = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 29
  %0 = ptrtoint ptr %dccps_role to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dccps_role, align 8
  %bf.lshr.mask = and i8 %bf.load, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %bf.lshr.mask)
  %cmp.not = icmp eq i8 %bf.lshr.mask, -128
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dccpd_seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %1 = ptrtoint ptr %dccpd_seq to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %dccpd_seq, align 8
  tail call void @dccp_send_sync(ptr noundef %sk, i64 noundef %2, i32 noundef 8) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state, align 2
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %4, label %if.end.cleanup_crit_edge [
    i8 2, label %sw.bb
    i8 1, label %if.end.sw.bb1_crit_edge
    i8 13, label %if.end.sw.bb1_crit_edge12
    i8 14, label %if.end.sw.bb2_crit_edge
  ]

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

if.end.sw.bb1_crit_edge12:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

if.end.sw.bb1_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dccp_send_close(ptr noundef %sk, i32 noundef 0) #6
  tail call void @dccp_set_state(ptr noundef %sk, i32 noundef 11) #6
  br label %cleanup

sw.bb1:                                           ; preds = %if.end.sw.bb1_crit_edge, %if.end.sw.bb1_crit_edge12
  %sk_shutdown.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %6 = ptrtoint ptr %sk_shutdown.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %sk_shutdown.i, align 2
  %7 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %or.i.i.i = or i32 %9, 2
  store i32 %or.i.i.i, ptr %7, align 4
  tail call fastcc void @dccp_enqueue_skb(ptr noundef %sk, ptr noundef %skb) #6
  tail call void @dccp_set_state(ptr noundef %sk, i32 noundef 14) #6
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb1, %if.end.sw.bb2_crit_edge
  %queued.0 = phi i32 [ 0, %if.end.sw.bb2_crit_edge ], [ 1, %sw.bb1 ]
  tail call fastcc void @sk_wake_async(ptr noundef %sk, i32 noundef 1, i32 noundef 6)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %sw.bb, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ %queued.0, %sw.bb2 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dccp_rcv_close(ptr noundef %sk, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %1, label %entry.sw.epilog_crit_edge [
    i8 11, label %sw.bb
    i8 2, label %entry.sw.bb2_crit_edge
    i8 4, label %entry.sw.bb2_crit_edge12
    i8 1, label %entry.sw.bb4_crit_edge
    i8 13, label %entry.sw.bb4_crit_edge13
    i8 8, label %entry.sw.bb5_crit_edge
  ]

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb5

entry.sw.bb4_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

entry.sw.bb2_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %dccps_role = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 29
  %3 = ptrtoint ptr %dccps_role to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %dccps_role, align 8
  %bf.lshr.mask = and i8 %bf.load, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %bf.lshr.mask)
  %cmp.not = icmp eq i8 %bf.lshr.mask, -128
  br i1 %cmp.not, label %sw.bb.sw.bb2_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb.sw.bb2_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge12
  %call3 = tail call i32 @dccp_send_reset(ptr noundef %sk, i32 noundef 1) #6
  tail call void @dccp_done(ptr noundef %sk) #6
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge13
  %sk_shutdown.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 66
  %4 = ptrtoint ptr %sk_shutdown.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 3, ptr %sk_shutdown.i, align 2
  %5 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %or.i.i.i = or i32 %7, 2
  store i32 %or.i.i.i, ptr %5, align 4
  tail call fastcc void @dccp_enqueue_skb(ptr noundef %sk, ptr noundef %skb) #6
  tail call void @dccp_set_state(ptr noundef %sk, i32 noundef 8) #6
  br label %sw.bb5

sw.bb5:                                           ; preds = %sw.bb4, %entry.sw.bb5_crit_edge
  %queued.0 = phi i32 [ 0, %entry.sw.bb5_crit_edge ], [ 1, %sw.bb4 ]
  tail call fastcc void @sk_wake_async(ptr noundef %sk, i32 noundef 1, i32 noundef 6)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb2, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %queued.1 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %queued.0, %sw.bb5 ], [ 0, %sw.bb2 ], [ 0, %sw.bb.sw.epilog_crit_edge ]
  ret i32 %queued.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dccp_rcv_request_sent_state_process(ptr noundef %sk, ptr noundef %skb, ptr nocapture noundef readonly %dh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dccph_type = getelementptr inbounds %struct.dccp_hdr, ptr %dh, i32 0, i32 5
  %0 = ptrtoint ptr %dccph_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dccph_type, align 2
  %1 = and i8 %bf.load, 30
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp eq i8 %1, 2
  br i1 %cmp, label %if.then, label %entry.out_invalid_packet_crit_edge

entry.out_invalid_packet_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_invalid_packet

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @dccp_timestamp() #6
  %dccpd_ack_seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 40
  %2 = ptrtoint ptr %dccpd_ack_seq to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %dccpd_ack_seq, align 8
  %dccps_awl = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 3
  %4 = ptrtoint ptr %dccps_awl to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %dccps_awl, align 8
  %dccps_awh = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 4
  %6 = ptrtoint ptr %dccps_awh to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %dccps_awh, align 8
  %8 = sub i64 %7, %5
  %sub.i = shl i64 %8, 16
  %9 = sub i64 %3, %5
  %sub4.i = shl i64 %9, 16
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %sub4.i)
  %cmp.i.not = icmp ult i64 %sub.i, %sub4.i
  br i1 %cmp.i.not, label %do.body, label %if.end17

do.body:                                          ; preds = %if.then
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @dccp_debug to i32))
  %10 = load i8, ptr @dccp_debug, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool6.not = icmp eq i8 %10, 0
  br i1 %tobool6.not, label %do.body.out_invalid_packet_crit_edge, label %do.end

do.body.out_invalid_packet_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_invalid_packet

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i64 noundef %5, i64 noundef %3, i64 noundef %7) #9
  br label %out_invalid_packet

if.end17:                                         ; preds = %if.then
  %call18 = tail call i32 @dccp_parse_options(ptr noundef %sk, ptr noundef null, ptr noundef %skb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.return_crit_edge

if.end17.return_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end21:                                         ; preds = %if.end17
  %dccpor_timestamp_echo = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 26, i32 2
  %11 = ptrtoint ptr %dccpor_timestamp_echo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dccpor_timestamp_echo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool22.not = icmp eq i32 %12, 0
  br i1 %tobool22.not, label %if.end21.if.end29_crit_edge, label %if.then25, !prof !59

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then25:                                        ; preds = %if.end21
  %dccpor_elapsed_time.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 26, i32 3
  %13 = ptrtoint ptr %dccpor_elapsed_time.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dccpor_elapsed_time.i, align 8
  %15 = add i32 %12, %14
  %reass.add = sub i32 %call3, %15
  %reass.mul = mul i32 %reass.add, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reass.mul)
  %cmp.i2 = icmp slt i32 %reass.mul, 1
  br i1 %cmp.i2, label %do.body.i, label %if.end8.i, !prof !59

do.body.i:                                        ; preds = %if.then25
  %call2.i = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.body.i.dccp_sample_rtt.exit_crit_edge, label %do.body.i.return.sink.split.i_crit_edge

do.body.i.return.sink.split.i_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

do.body.i.dccp_sample_rtt.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dccp_sample_rtt.exit

if.end8.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %reass.mul)
  %cmp9.i = icmp ugt i32 %reass.mul, 3000000
  br i1 %cmp9.i, label %do.body17.i, label %if.end8.i.dccp_sample_rtt.exit_crit_edge, !prof !59

if.end8.i.dccp_sample_rtt.exit_crit_edge:         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dccp_sample_rtt.exit

do.body17.i:                                      ; preds = %if.end8.i
  %call18.i = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %do.body17.i.dccp_sample_rtt.exit_crit_edge, label %do.body17.i.return.sink.split.i_crit_edge

do.body17.i.return.sink.split.i_crit_edge:        ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

do.body17.i.dccp_sample_rtt.exit_crit_edge:       ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dccp_sample_rtt.exit

return.sink.split.i:                              ; preds = %do.body17.i.return.sink.split.i_crit_edge, %do.body.i.return.sink.split.i_crit_edge
  %.str.4.sink.i = phi ptr [ @.str, %do.body.i.return.sink.split.i_crit_edge ], [ @.str.4, %do.body17.i.return.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ 100, %do.body.i.return.sink.split.i_crit_edge ], [ 3000000, %do.body17.i.return.sink.split.i_crit_edge ]
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink.i, ptr noundef nonnull @.str.1, i32 noundef %reass.mul) #9
  br label %dccp_sample_rtt.exit

dccp_sample_rtt.exit:                             ; preds = %return.sink.split.i, %do.body17.i.dccp_sample_rtt.exit_crit_edge, %if.end8.i.dccp_sample_rtt.exit_crit_edge, %do.body.i.dccp_sample_rtt.exit_crit_edge
  %retval.0.i = phi i32 [ 100, %do.body.i.dccp_sample_rtt.exit_crit_edge ], [ 3000000, %do.body17.i.dccp_sample_rtt.exit_crit_edge ], [ %reass.mul, %if.end8.i.dccp_sample_rtt.exit_crit_edge ], [ %retval.0.ph.i, %return.sink.split.i ]
  %lrcvtime = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 24, i32 6
  %16 = ptrtoint ptr %lrcvtime to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %retval.0.i, ptr %lrcvtime, align 4
  br label %if.end29

if.end29:                                         ; preds = %dccp_sample_rtt.exit, %if.end21.if.end29_crit_edge
  %icsk_pending.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 19
  %17 = ptrtoint ptr %icsk_pending.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %icsk_pending.i, align 2
  %18 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 25
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %cmp30 = icmp eq ptr %20, null
  br i1 %cmp30, label %do.end47, label %if.end29.if.end53_crit_edge, !prof !59

if.end29.if.end53_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

do.end47:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 430, i32 noundef 9, ptr noundef null) #6
  br label %if.end53

if.end53:                                         ; preds = %do.end47, %if.end29.if.end53_crit_edge
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %18, align 4
  tail call void @kfree_skb_reason(ptr noundef %22, i32 noundef 0) #6
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %18, align 4
  %dccpd_seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %24 = ptrtoint ptr %dccpd_seq to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %dccpd_seq, align 8
  %dccps_isr = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 6
  %26 = ptrtoint ptr %dccps_isr to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %dccps_isr, align 8
  %dccps_gsr = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 9
  %27 = ptrtoint ptr %dccps_gsr to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %25, ptr %dccps_gsr, align 8
  %icsk_pmtu_cookie = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 9
  %28 = ptrtoint ptr %icsk_pmtu_cookie to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %icsk_pmtu_cookie, align 8
  %call63 = tail call i32 @dccp_sync_mss(ptr noundef %sk, i32 noundef %29) #6
  tail call void @dccp_set_state(ptr noundef %sk, i32 noundef 13) #6
  %dccps_featneg = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 22
  %call64 = tail call i32 @dccp_feat_activate_values(ptr noundef %sk, ptr noundef %dccps_featneg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %unable_to_proceed

if.end67:                                         ; preds = %if.end53
  %icsk_af_ops = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 11
  %30 = ptrtoint ptr %icsk_af_ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %icsk_af_ops, align 8
  %rebuild_header = getelementptr inbounds %struct.inet_connection_sock_af_ops, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %rebuild_header to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rebuild_header, align 4
  %call68 = tail call i32 %33(ptr noundef %sk) #6
  %34 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %37 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.i.not = icmp eq i32 %37, 0
  br i1 %tobool.i.not, label %if.then70, label %if.end67.if.end71_crit_edge

if.end67.if.end71_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then70:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  %sk_state_change = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 76
  %38 = ptrtoint ptr %sk_state_change to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sk_state_change, align 4
  tail call void %39(ptr noundef %sk) #6
  tail call fastcc void @sk_wake_async(ptr noundef %sk, i32 noundef 0, i32 noundef 2)
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.end67.if.end71_crit_edge
  %sk_write_pending = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 28
  %40 = ptrtoint ptr %sk_write_pending to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sk_write_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool72.not = icmp eq i32 %41, 0
  br i1 %tobool72.not, label %lor.lhs.false, label %if.end71.if.then78_crit_edge

if.end71.if.then78_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then78

lor.lhs.false:                                    ; preds = %if.end71
  %pingpong.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 24, i32 2
  %42 = ptrtoint ptr %pingpong.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %pingpong.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %43)
  %cmp.i3 = icmp ugt i8 %43, 2
  br i1 %cmp.i3, label %lor.lhs.false.if.then78_crit_edge, label %lor.lhs.false75

lor.lhs.false.if.then78_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then78

lor.lhs.false75:                                  ; preds = %lor.lhs.false
  %rskq_defer_accept = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %rskq_defer_accept to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %rskq_defer_accept, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool77.not = icmp eq i8 %45, 0
  br i1 %tobool77.not, label %if.end79, label %lor.lhs.false75.if.then78_crit_edge

lor.lhs.false75.if.then78_crit_edge:              ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then78

if.then78:                                        ; preds = %lor.lhs.false75.if.then78_crit_edge, %lor.lhs.false.if.then78_crit_edge, %if.end71.if.then78_crit_edge
  tail call void @__kfree_skb(ptr noundef %skb) #6
  br label %return

if.end79:                                         ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dccp_send_ack(ptr noundef %sk) #6
  br label %return

out_invalid_packet:                               ; preds = %do.end, %do.body.out_invalid_packet_crit_edge, %entry.out_invalid_packet_crit_edge
  %dccpd_reset_code = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 25
  %46 = ptrtoint ptr %dccpd_reset_code to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 4, ptr %dccpd_reset_code, align 1
  br label %return

unable_to_proceed:                                ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %dccpd_reset_code87 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 25
  %47 = ptrtoint ptr %dccpd_reset_code87 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 2, ptr %dccpd_reset_code87, align 1
  tail call void @dccp_set_state(ptr noundef %sk, i32 noundef 7) #6
  %sk_err = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 51
  %48 = ptrtoint ptr %sk_err to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 70, ptr %sk_err, align 4
  br label %return

return:                                           ; preds = %unable_to_proceed, %out_invalid_packet, %if.end79, %if.then78, %if.end17.return_crit_edge
  %retval.1 = phi i32 [ 1, %unable_to_proceed ], [ 1, %out_invalid_packet ], [ 1, %if.end17.return_crit_edge ], [ -1, %if.end79 ], [ 0, %if.then78 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dccp_rcv_respond_partopen_state_process(ptr noundef %sk, ptr noundef %skb, ptr nocapture noundef readonly %dh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dccpor_timestamp_echo = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 26, i32 2
  %0 = ptrtoint ptr %dccpor_timestamp_echo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dccpor_timestamp_echo, align 4
  %dccph_type = getelementptr inbounds %struct.dccp_hdr, ptr %dh, i32 0, i32 5
  %2 = ptrtoint ptr %dccph_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %dccph_type, align 2
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 15
  %conv = zext i8 %bf.clear to i32
  %3 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %conv, label %entry.sw.epilog_crit_edge [
    i32 7, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %entry.sw.bb4_crit_edge
    i32 3, label %entry.sw.bb4_crit_edge3
  ]

entry.sw.bb4_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %icsk_ack.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 24
  %4 = ptrtoint ptr %icsk_ack.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %icsk_ack.i, align 4
  %retry.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 24, i32 3
  %5 = ptrtoint ptr %retry.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %retry.i, align 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %6 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp = icmp eq i8 %7, 3
  br i1 %cmp, label %sw.bb1.sw.epilog_crit_edge, label %sw.bb1.sw.bb4_crit_edge

sw.bb1.sw.bb4_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %sw.bb1.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge3
  %skc_state6 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %8 = ptrtoint ptr %skc_state6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state6, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %9)
  %cmp8 = icmp eq i8 %9, 13
  br i1 %cmp8, label %if.then10, label %sw.bb4.if.end11_crit_edge

sw.bb4.if.end11_crit_edge:                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then10:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  %icsk_ack.i1 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 24
  %10 = ptrtoint ptr %icsk_ack.i1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %icsk_ack.i1, align 4
  %retry.i2 = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 24, i32 3
  %11 = ptrtoint ptr %retry.i2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %retry.i2, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %sw.bb4.if.end11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end11.if.end17_crit_edge, label %if.then14, !prof !59

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then14:                                        ; preds = %if.end11
  %call15 = tail call i32 @dccp_timestamp() #6
  %dccpor_elapsed_time.i = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 26, i32 3
  %12 = ptrtoint ptr %dccpor_elapsed_time.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dccpor_elapsed_time.i, align 8
  %14 = add i32 %1, %13
  %reass.add = sub i32 %call15, %14
  %reass.mul = mul i32 %reass.add, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reass.mul)
  %cmp.i = icmp slt i32 %reass.mul, 1
  br i1 %cmp.i, label %do.body.i, label %if.end8.i, !prof !59

do.body.i:                                        ; preds = %if.then14
  %call2.i = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.body.i.dccp_sample_rtt.exit_crit_edge, label %do.body.i.return.sink.split.i_crit_edge

do.body.i.return.sink.split.i_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

do.body.i.dccp_sample_rtt.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dccp_sample_rtt.exit

if.end8.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %reass.mul)
  %cmp9.i = icmp ugt i32 %reass.mul, 3000000
  br i1 %cmp9.i, label %do.body17.i, label %if.end8.i.dccp_sample_rtt.exit_crit_edge, !prof !59

if.end8.i.dccp_sample_rtt.exit_crit_edge:         ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dccp_sample_rtt.exit

do.body17.i:                                      ; preds = %if.end8.i
  %call18.i = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %do.body17.i.dccp_sample_rtt.exit_crit_edge, label %do.body17.i.return.sink.split.i_crit_edge

do.body17.i.return.sink.split.i_crit_edge:        ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split.i

do.body17.i.dccp_sample_rtt.exit_crit_edge:       ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dccp_sample_rtt.exit

return.sink.split.i:                              ; preds = %do.body17.i.return.sink.split.i_crit_edge, %do.body.i.return.sink.split.i_crit_edge
  %.str.4.sink.i = phi ptr [ @.str, %do.body.i.return.sink.split.i_crit_edge ], [ @.str.4, %do.body17.i.return.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ 100, %do.body.i.return.sink.split.i_crit_edge ], [ 3000000, %do.body17.i.return.sink.split.i_crit_edge ]
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink.i, ptr noundef nonnull @.str.1, i32 noundef %reass.mul) #9
  br label %dccp_sample_rtt.exit

dccp_sample_rtt.exit:                             ; preds = %return.sink.split.i, %do.body17.i.dccp_sample_rtt.exit_crit_edge, %if.end8.i.dccp_sample_rtt.exit_crit_edge, %do.body.i.dccp_sample_rtt.exit_crit_edge
  %retval.0.i = phi i32 [ 100, %do.body.i.dccp_sample_rtt.exit_crit_edge ], [ 3000000, %do.body17.i.dccp_sample_rtt.exit_crit_edge ], [ %reass.mul, %if.end8.i.dccp_sample_rtt.exit_crit_edge ], [ %retval.0.ph.i, %return.sink.split.i ]
  %lrcvtime = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 24, i32 6
  %15 = ptrtoint ptr %lrcvtime to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i, ptr %lrcvtime, align 4
  br label %if.end17

if.end17:                                         ; preds = %dccp_sample_rtt.exit, %if.end11.if.end17_crit_edge
  %dccpd_seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %16 = ptrtoint ptr %dccpd_seq to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %dccpd_seq, align 8
  %dccps_osr = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 7
  %18 = ptrtoint ptr %dccps_osr to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %dccps_osr, align 8
  tail call void @dccp_set_state(ptr noundef %sk, i32 noundef 1) #6
  %19 = ptrtoint ptr %dccph_type to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load19 = load i8, ptr %dccph_type, align 2
  %bf.lshr20 = lshr i8 %bf.load19, 1
  %trunc = trunc i8 %bf.lshr20 to i4
  %20 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.28)
  switch i4 %trunc, label %if.end17.sw.epilog_crit_edge [
    i4 4, label %if.end17.if.then32_crit_edge
    i4 2, label %if.end17.if.then32_crit_edge4
  ]

if.end17.if.then32_crit_edge4:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32

if.end17.if.then32_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then32:                                        ; preds = %if.end17.if.then32_crit_edge, %if.end17.if.then32_crit_edge4
  tail call fastcc void @__dccp_rcv_established(ptr noundef %sk, ptr noundef %skb)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then32, %if.end17.sw.epilog_crit_edge, %sw.bb1.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  %queued.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 1, %if.then32 ], [ 0, %sw.bb1.sw.epilog_crit_edge ], [ 0, %sw.bb ], [ 0, %if.end17.sw.epilog_crit_edge ]
  ret i32 %queued.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sk_wake_async(ptr noundef %sk, i32 noundef %how, i32 noundef %band) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %3 = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then:                                          ; preds = %entry
  %4 = tail call i32 @llvm.read_register.i32(metadata !47) #6
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !61
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %if.then.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 696, ptr noundef nonnull @.str.11) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then.rcu_read_lock.exit_crit_edge
  %8 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 17
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %8, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true5

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b14 = load i1, ptr @sk_wake_async.__warned, align 1
  br i1 %.b14, label %land.lhs.true5.do.end9_crit_edge, label %if.then7

land.lhs.true5.do.end9_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @sk_wake_async.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 2444, ptr noundef nonnull @.str.20) #6
  br label %do.end9

do.end9:                                          ; preds = %if.then7, %land.lhs.true5.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %call11 = tail call i32 @sock_wake_async(ptr noundef %10, i32 noundef %how, i32 noundef %band) #6
  %call.i15 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i15, label %do.end9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i18

do.end9.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i18:                                ; preds = %do.end9
  %call1.i16 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i16)
  %tobool.not.i17 = icmp eq i32 %call1.i16, 0
  br i1 %tobool.not.i17, label %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i20

land.lhs.true.i18.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i18
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i20:                               ; preds = %land.lhs.true.i18
  %.b4.i19 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i19, label %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, label %if.then.i21

land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i21:                                      ; preds = %land.lhs.true2.i20
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 724, ptr noundef nonnull @.str.12) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i21, %land.lhs.true2.i20.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i18.rcu_read_unlock.exit_crit_edge, %do.end9.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !62
  %11 = tail call i32 @llvm.read_register.i32(metadata !47) #6
  %and.i.i.i.i.i22 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i22 to ptr
  %preempt_count.i.i.i.i23 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i23, align 4
  %sub.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i23, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br label %if.end12

if.end12:                                         ; preds = %rcu_read_unlock.exit, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dccp_sample_rtt(ptr nocapture noundef readonly %sk, i32 noundef %delta) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dccpor_elapsed_time = getelementptr inbounds %struct.dccp_sock, ptr %sk, i32 0, i32 26, i32 3
  %0 = ptrtoint ptr %dccpor_elapsed_time to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dccpor_elapsed_time, align 8
  %mul.neg = mul i32 %1, -10
  %sub = add i32 %mul.neg, %delta
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp slt i32 %sub, 1
  br i1 %cmp, label %do.body, label %if.end8, !prof !59

do.body:                                          ; preds = %entry
  %call2 = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body.return_crit_edge, label %do.body.return.sink.split_crit_edge

do.body.return.sink.split_crit_edge:              ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %sub)
  %cmp9 = icmp ugt i32 %sub, 3000000
  br i1 %cmp9, label %do.body17, label %if.end8.return_crit_edge, !prof !59

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.body17:                                        ; preds = %if.end8
  %call18 = tail call i32 @net_ratelimit() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.body17.return_crit_edge, label %do.body17.return.sink.split_crit_edge

do.body17.return.sink.split_crit_edge:            ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  br label %return.sink.split

do.body17.return_crit_edge:                       ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return.sink.split:                                ; preds = %do.body17.return.sink.split_crit_edge, %do.body.return.sink.split_crit_edge
  %.str.4.sink = phi ptr [ @.str, %do.body.return.sink.split_crit_edge ], [ @.str.4, %do.body17.return.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 100, %do.body.return.sink.split_crit_edge ], [ 3000000, %do.body17.return.sink.split_crit_edge ]
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink, ptr noundef nonnull @.str.1, i32 noundef %sub) #9
  br label %return

return:                                           ; preds = %return.sink.split, %do.body17.return_crit_edge, %if.end8.return_crit_edge, %do.body.return_crit_edge
  %retval.0 = phi i32 [ 100, %do.body.return_crit_edge ], [ 3000000, %do.body17.return_crit_edge ], [ %sub, %if.end8.return_crit_edge ], [ %retval.0.ph, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dccp_packet_name(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dccp_ackvec_clear_state(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dccp_ackvec_input(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dccp_enqueue_skb(ptr noundef %sk, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
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
  %dccph_doff = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %dccph_doff to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dccph_doff, align 2
  %conv = zext i8 %5 to i32
  %mul = shl nuw nsw i32 %conv, 2
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len1.i, align 4
  %sub.i = sub i32 %7, %mul
  store i32 %sub.i, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %9)
  %cmp.i = icmp ult i32 %sub.i, %9
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !59

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #6, !srcloc !65
  unreachable

__skb_pull.exit:                                  ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %mul
  store ptr %add.ptr.i, ptr %data.i, align 4
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %sk_receive_queue, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.46, ptr %skb, i32 0, i32 1
  %15 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %skb, ptr %13, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 8, i32 1
  %17 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %18, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %destructor.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %19 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %destructor.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %20(ptr noundef %skb) #6
  br label %skb_orphan.exit.i

do.body.i.i:                                      ; preds = %__skb_pull.exit
  %21 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tobool3.not.i.i = icmp eq ptr %23, null
  br i1 %tobool3.not.i.i, label %do.body.i.i.skb_orphan.exit.i_crit_edge, label %do.body7.i.i, !prof !66

do.body.i.i.skb_orphan.exit.i_crit_edge:          ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_orphan.exit.i

do.body7.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #6, !srcloc !67
  unreachable

skb_orphan.exit.i:                                ; preds = %do.body.i.i.skb_orphan.exit.i_crit_edge, %if.then.i.i
  %24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %sk, ptr %24, align 4
  %26 = ptrtoint ptr %destructor.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @sock_rfree, ptr %destructor.i.i, align 4
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %27 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %truesize.i, align 8
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i, i32 1, i32 3, i32 1) #6
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i, ptr %sk_backlog.i, i32 %28, ptr elementtype(i32) %sk_backlog.i) #6, !srcloc !68
  %skc_prot.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 8
  %30 = ptrtoint ptr %skc_prot.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %skc_prot.i.i.i, align 8
  %memory_allocated.i.i.i = getelementptr inbounds %struct.proto, ptr %31, i32 0, i32 32
  %32 = ptrtoint ptr %memory_allocated.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %memory_allocated.i.i.i, align 4
  %tobool.i.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.i.not.i.i, label %skb_orphan.exit.i.skb_set_owner_r.exit_crit_edge, label %if.end.i.i

skb_orphan.exit.i.skb_set_owner_r.exit_crit_edge: ; preds = %skb_orphan.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_set_owner_r.exit

if.end.i.i:                                       ; preds = %skb_orphan.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %truesize.i, align 8
  %sk_forward_alloc.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 11
  %36 = ptrtoint ptr %sk_forward_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sk_forward_alloc.i.i, align 8
  %sub.i.i = sub i32 %37, %35
  store i32 %sub.i.i, ptr %sk_forward_alloc.i.i, align 8
  br label %skb_set_owner_r.exit

skb_set_owner_r.exit:                             ; preds = %if.end.i.i, %skb_orphan.exit.i.skb_set_owner_r.exit_crit_edge
  %sk_data_ready = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 77
  %38 = ptrtoint ptr %sk_data_ready to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sk_data_ready, align 8
  tail call void %39(ptr noundef %sk) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_rfree(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dccp_time_wait(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dccp_send_close(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dccp_set_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_send_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dccp_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_timestamp() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_sync_mss(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dccp_feat_activate_values(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dccp_send_ack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_wake_async(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !32, !34, !35, !36, !37, !39, !40, !41, !42, !43, !45, !46}
!llvm.named.register.sp = !{!47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @sysctl_dccp_sync_ratelimit, !1, !"sysctl_dccp_sync_ratelimit", i1 false, i1 false}
!1 = !{!"../net/dccp/input.c", i32 20, i32 5}
!2 = !{ptr @__ksymtab_dccp_rcv_established, !3, !"__ksymtab_dccp_rcv_established", i1 false, i1 false}
!3 = !{!"../net/dccp/input.c", i32 382, i32 1}
!4 = !{ptr @__ksymtab_dccp_rcv_state_process, !5, !"__ksymtab_dccp_rcv_state_process", i1 false, i1 false}
!5 = !{!"../net/dccp/input.c", i32 714, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/dccp/input.c", i32 730, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @dccp_sample_rtt._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @dccp_sample_rtt._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/dccp/input.c", i32 734, i32 3}
!14 = !{ptr @dccp_sample_rtt._entry.3, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @dccp_sample_rtt._entry_ptr.5, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/dccp/input.c", i32 261, i32 3}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @dccp_check_seqno._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @dccp_check_seqno._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @dccp_reset_code_convert.error_code, !31, !"error_code", i1 false, i1 false}
!31 = !{!"../net/dccp/input.c", i32 125, i32 19}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/dccp/input.c", i32 407, i32 4}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @dccp_rcv_request_sent_state_process._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @dccp_rcv_request_sent_state_process._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = distinct !{null, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/net/inet_connection_sock.h", i32 209, i32 3}
!39 = distinct !{null, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !38, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !38, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !38, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../include/net/sock.h", i32 2444, i32 19}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!47 = !{!"sp"}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 692130, i64 692191}
!58 = !{i64 694862}
!59 = !{!"branch_weights", i32 1, i32 2000}
!60 = !{i64 695147}
!61 = !{i64 2149375950}
!62 = !{i64 2149376216}
!63 = !{!"branch_weights", i32 2000, i32 2001, i32 2001, i32 1}
!64 = !{i8 0, i8 2}
!65 = !{i64 2155136955, i64 2155137443, i64 2155136992, i64 2155137048, i64 2155137082, i64 2155137106, i64 2155137147, i64 2155137168, i64 2155137196, i64 2155137230}
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = !{i64 2155152005, i64 2155152493, i64 2155152042, i64 2155152098, i64 2155152132, i64 2155152156, i64 2155152197, i64 2155152218, i64 2155152246, i64 2155152280}
!68 = !{i64 2148299649, i64 2148299675, i64 2148299704, i64 2148299738, i64 2148299769, i64 2148299792}
