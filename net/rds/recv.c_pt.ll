; ModuleID = '/llk/IR_all_yes/net/rds/recv.c_pt.bc'
source_filename = "../net/rds/recv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rds_inc_init\22, \22a\22\09"
module asm "\09.weak\09__crc_rds_inc_init\09\09\09\09"
module asm "\09.long\09__crc_rds_inc_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rds_inc_init:\09\09\09\09\09"
module asm "\09.asciz \09\22rds_inc_init\22\09\09\09\09\09"
module asm "__kstrtabns_rds_inc_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rds_inc_path_init\22, \22a\22\09"
module asm "\09.weak\09__crc_rds_inc_path_init\09\09\09\09"
module asm "\09.long\09__crc_rds_inc_path_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rds_inc_path_init:\09\09\09\09\09"
module asm "\09.asciz \09\22rds_inc_path_init\22\09\09\09\09\09"
module asm "__kstrtabns_rds_inc_path_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rds_inc_put\22, \22a\22\09"
module asm "\09.weak\09__crc_rds_inc_put\09\09\09\09"
module asm "\09.long\09__crc_rds_inc_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rds_inc_put:\09\09\09\09\09"
module asm "\09.asciz \09\22rds_inc_put\22\09\09\09\09\09"
module asm "__kstrtabns_rds_inc_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rds_recv_incoming\22, \22a\22\09"
module asm "\09.weak\09__crc_rds_recv_incoming\09\09\09\09"
module asm "\09.long\09__crc_rds_recv_incoming\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rds_recv_incoming:\09\09\09\09\09"
module asm "\09.asciz \09\22rds_recv_incoming\22\09\09\09\09\09"
module asm "__kstrtabns_rds_recv_incoming:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rds_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rds_incoming = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.rds_header, i32, %struct.in6_addr, %struct.rds_inc_usercopy, [4 x i64] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rds_header = type { i64, i64, i32, i16, i16, i8, i8, [4 x i8], i16, [16 x i8] }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.rds_inc_usercopy = type { i64, i64 }
%struct.rds_connection = type { %struct.hlist_node, %struct.in6_addr, %struct.in6_addr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.possible_net_t, i8, %struct.list_head, i32, ptr, %struct.wait_queue_head, i32, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.rds_transport = type { [16 x i8], %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.182 = type { %struct.rds_ext_header_rdma_dest }
%struct.rds_ext_header_rdma_dest = type { i32, i32 }
%struct.rds_conn_path = type { ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, i64, %struct.list_head, %struct.list_head, i64, ptr, %struct.atomic_t, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, %struct.mutex, %struct.wait_queue_head, i32, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rds_sock = type { %struct.sock, i64, i64, %struct.rhash_head, [22 x i8], %struct.sockaddr_in6, %struct.in6_addr, i16, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, i32, i32, %struct.list_head, i64, i64, %struct.list_head, i32, %struct.rwlock_t, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.rb_root, i8, i8, i32, i8, [3 x i8], %struct.rds_msg_zcopy_queue, i8 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.80, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.81, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.82, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.41, %union.anon.43, %union.anon.44, i16, i8, i8, i32, %union.anon.46, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.41 = type { i64 }
%union.anon.43 = type { i32 }
%union.anon.44 = type { i32 }
%union.anon.46 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { i32 }
%union.anon.73 = type { %struct.hlist_node }
%union.anon.74 = type { i32 }
%union.anon.75 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.80 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.81 = type { ptr }
%union.anon.82 = type { ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.rhash_head = type { ptr }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.rb_root = type { ptr }
%struct.rds_msg_zcopy_queue = type { %struct.list_head, %struct.spinlock }
%union.anon.181 = type { %struct.rds_ext_header_version }
%struct.rds_ext_header_version = type { i32 }
%struct.rds_rdma_notify = type { i64, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.50, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.47, %union.anon.48 }
%union.anon.47 = type { ptr }
%union.anon.48 = type { i64 }
%union.anon.50 = type { ptr }
%struct.rds_notifier = type { %struct.list_head, i64, i32 }
%struct.__kernel_old_timeval = type { i32, i32 }
%struct.__kernel_sock_timeval = type { i64, i64 }
%struct.rds_cmsg_rx_trace = type { i8, [3 x i8], [3 x i64] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.rds_msg_zcopy_info = type { %struct.list_head, %union.anon.183 }
%union.anon.183 = type { %struct.rds_zcopy_cookies }
%struct.rds_zcopy_cookies = type { i32, [8 x i32] }
%struct.rds_info_message = type <{ i64, i32, i32, i32, i16, i16, i8, i8 }>
%struct.rds6_info_message = type <{ i64, i32, %struct.in6_addr, %struct.in6_addr, i16, i16, i8, i8 }>

@__kstrtab_rds_inc_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_rds_inc_init = external dso_local constant [0 x i8], align 1
@__ksymtab_rds_inc_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rds_inc_init to i32), ptr @__kstrtab_rds_inc_init, ptr @__kstrtabns_rds_inc_init }, section "___ksymtab_gpl+rds_inc_init", align 4
@__kstrtab_rds_inc_path_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_rds_inc_path_init = external dso_local constant [0 x i8], align 1
@__ksymtab_rds_inc_path_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rds_inc_path_init to i32), ptr @__kstrtab_rds_inc_path_init, ptr @__kstrtabns_rds_inc_path_init }, section "___ksymtab_gpl+rds_inc_path_init", align 4
@rds_inc_put.__UNIQUE_ID_ddebug545 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rds\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rds_inc_put\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net/rds/recv.c\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s(): put inc %p ref %d\0A\00", [39 x i8] zeroinitializer }, align 32
@__kstrtab_rds_inc_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_rds_inc_put = external dso_local constant [0 x i8], align 1
@__ksymtab_rds_inc_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rds_inc_put to i32), ptr @__kstrtab_rds_inc_put, ptr @__kstrtabns_rds_inc_put }, section "___ksymtab_gpl+rds_inc_put", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rds_recv_incoming.__UNIQUE_ID_ddebug551 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rds_recv_incoming\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"%s(): conn %p next %llu inc %p seq %llu len %u sport %u dport %u flags 0x%x rx_jiffies %lu\0A\00", [36 x i8] zeroinitializer }, align 32
@rds_stats = external dso_local global %struct.rds_statistics, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rds_sysctl_ping_enable = external dso_local local_unnamed_addr global i32, align 4
@rds_recv_incoming.__UNIQUE_ID_ddebug552 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(): ignore ping with 0 sport from %pI6c\0A\00", [53 x i8] zeroinitializer }, align 32
@rds_recv_incoming.__UNIQUE_ID_ddebug553 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.7, i8 0, i8 94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(): adding inc %p to rs %p's recv queue\0A\00", [53 x i8] zeroinitializer }, align 32
@__kstrtab_rds_recv_incoming = external dso_local constant [0 x i8], align 1
@__kstrtabns_rds_recv_incoming = external dso_local constant [0 x i8], align 1
@__ksymtab_rds_recv_incoming = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rds_recv_incoming to i32), ptr @__kstrtab_rds_recv_incoming, ptr @__kstrtabns_rds_recv_incoming }, section "___ksymtab_gpl+rds_recv_incoming", align 4
@rds_recvmsg.__UNIQUE_ID_ddebug557 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 -95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rds_recvmsg\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(): size %zu flags 0x%x timeo %ld\0A\00", [59 x i8] zeroinitializer }, align 32
@rds_recvmsg.__UNIQUE_ID_ddebug558 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 0, i8 -87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s(): recvmsg woke inc %p timeo %ld\0A\00", [59 x i8] zeroinitializer }, align 32
@rds_recvmsg.__UNIQUE_ID_ddebug559 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.11, i8 0, i8 -84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s(): copying inc %p from %pI6c:%u to user\0A\00", [52 x i8] zeroinitializer }, align 32
@rds_recv_hs_exthdrs._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.rds_recv_hs_exthdrs = private unnamed_addr constant [20 x i8] c"rds_recv_hs_exthdrs\00", align 1
@rds_recv_hs_exthdrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.rds_recv_hs_exthdrs, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014ignoring unknown exthdr type 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@rds_recv_hs_exthdrs._entry_ptr = internal global ptr @rds_recv_hs_exthdrs._entry, section ".printk_index", align 4
@rds_recv_rcvbuf_delta.__UNIQUE_ID_ddebug546 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rds_recv_rcvbuf_delta\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"%s(): rs %p (%pI6c:%u) recv bytes %d buf %d now_cong %d delta %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rds_inc_addref.__UNIQUE_ID_ddebug544 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rds_inc_addref\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s(): addref inc %p ref %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rds_still_queued.__UNIQUE_ID_ddebug554 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rds_still_queued\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s(): inc %p rs %p still %d dropped %d\0A\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 5, i64 6]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 78, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 298, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 338, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 377, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 647, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 678, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 689, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 224, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 108, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 72, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [18 x i8] c"../net/rds/recv.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 442, i32 2 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__ksymtab_rds_inc_init, ptr @__ksymtab_rds_inc_path_init, ptr @__ksymtab_rds_inc_put, ptr @__ksymtab_rds_recv_incoming, ptr @rds_recv_hs_exthdrs._entry, ptr @rds_recv_hs_exthdrs._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @rds_recv_hs_exthdrs._rs, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_recv_hs_exthdrs._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_recv_hs_exthdrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_inc_init(ptr noundef %inc, ptr noundef %conn, ptr nocapture noundef readonly %saddr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inc, i32 noundef 4) #7
  %0 = ptrtoint ptr %inc to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %inc, align 4
  %i_item = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 1
  %1 = ptrtoint ptr %i_item to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %i_item, ptr %i_item, align 4
  %prev.i = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i_item, ptr %prev.i, align 4
  %i_conn = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 2
  %3 = ptrtoint ptr %i_conn to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %conn, ptr %i_conn, align 4
  %i_saddr = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 6
  %4 = call ptr @memcpy(ptr %i_saddr, ptr %saddr, i32 16)
  %i_usercopy = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 7
  %5 = call ptr @memset(ptr %i_usercopy, i32 0, i32 48)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_inc_path_init(ptr noundef %inc, ptr noundef %cp, ptr nocapture noundef readonly %saddr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inc, i32 noundef 4) #7
  %0 = ptrtoint ptr %inc to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %inc, align 4
  %i_item = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 1
  %1 = ptrtoint ptr %i_item to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %i_item, ptr %i_item, align 4
  %prev.i = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i_item, ptr %prev.i, align 4
  %3 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cp, align 8
  %i_conn = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 2
  %5 = ptrtoint ptr %i_conn to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %i_conn, align 4
  %i_conn_path = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 3
  %6 = ptrtoint ptr %i_conn_path to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cp, ptr %i_conn_path, align 8
  %i_saddr = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 6
  %7 = call ptr @memcpy(ptr %i_saddr, ptr %saddr, i32 16)
  %i_usercopy = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 7
  %8 = call ptr @memset(ptr %i_usercopy, i32 0, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_inc_put(ptr noundef %inc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_inc_put.__UNIQUE_ID_ddebug545, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_inc_put, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !63

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %inc, i32 noundef 4) #7
  %0 = ptrtoint ptr %inc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %inc, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_inc_put.__UNIQUE_ID_ddebug545, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %inc, i32 noundef %1) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %inc, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @llvm.prefetch.p0(ptr %inc, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inc, ptr %inc, i32 1, ptr elementtype(i32) %inc) #7, !srcloc !65
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %do.body7, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end25_crit_edge, label %if.then10.i.i.i, !prof !66

if.end5.i.i.i.if.end25_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %inc, i32 noundef 3) #7
  br label %if.end25

do.body7:                                         ; preds = %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !67
  %i_item = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 1
  %3 = ptrtoint ptr %i_item to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %i_item, align 4
  %cmp.i.not = icmp eq ptr %4, %i_item
  br i1 %cmp.i.not, label %do.end24, label %do.body19, !prof !66

do.body19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/recv.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 80, 0\0A.popsection", ""() #7, !srcloc !68
  unreachable

do.end24:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %i_conn = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 2
  %5 = ptrtoint ptr %i_conn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_conn, align 4
  %c_trans = getelementptr inbounds %struct.rds_connection, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %c_trans to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %c_trans, align 4
  %inc_free = getelementptr inbounds %struct.rds_transport, ptr %8, i32 0, i32 17
  %9 = ptrtoint ptr %inc_free to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %inc_free, align 4
  tail call void %10(ptr noundef %inc) #7
  br label %if.end25

if.end25:                                         ; preds = %do.end24, %if.then10.i.i.i, %if.end5.i.i.i.if.end25_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_recv_incoming(ptr noundef %conn, ptr noundef %saddr, ptr noundef %daddr, ptr noundef %inc, i32 %gfp) #0 align 64 {
entry:
  %pos.i = alloca i32, align 4
  %len.i = alloca i32, align 4
  %buffer.i = alloca %union.anon.182, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_conn = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 2
  %0 = ptrtoint ptr %i_conn to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %conn, ptr %i_conn, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %i_rx_jiffies = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 5
  %2 = ptrtoint ptr %i_rx_jiffies to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %i_rx_jiffies, align 8
  %c_trans = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 8
  %3 = ptrtoint ptr %c_trans to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %c_trans, align 4
  %t_mp_capable = getelementptr inbounds %struct.rds_transport, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %t_mp_capable to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %t_mp_capable, align 4
  %6 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %i_conn_path = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 3
  %c_path = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 17
  %cp.0.in = select i1 %tobool.not, ptr %c_path, ptr %i_conn_path
  %7 = ptrtoint ptr %cp.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %cp.0 = load ptr, ptr %cp.0.in, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_recv_incoming.__UNIQUE_ID_ddebug551, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_recv_incoming, %if.then4)) #7
          to label %do.end [label %if.then4], !srcloc !63

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cp_next_rx_seq = getelementptr inbounds %struct.rds_conn_path, ptr %cp.0, i32 0, i32 12
  %8 = ptrtoint ptr %cp_next_rx_seq to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %cp_next_rx_seq, align 8
  %i_hdr = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 4
  %10 = ptrtoint ptr %i_hdr to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_hdr, align 8
  %h_len = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %h_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %h_len, align 8
  %h_sport = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 4, i32 3
  %14 = ptrtoint ptr %h_sport to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %h_sport, align 4
  %conv = zext i16 %15 to i32
  %h_dport = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 4, i32 4
  %16 = ptrtoint ptr %h_dport to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %h_dport, align 2
  %conv8 = zext i16 %17 to i32
  %h_flags = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 4, i32 5
  %18 = ptrtoint ptr %h_flags to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %h_flags, align 8
  %conv10 = zext i8 %19 to i32
  %20 = ptrtoint ptr %i_rx_jiffies to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_rx_jiffies, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_recv_incoming.__UNIQUE_ID_ddebug551, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef %conn, i64 noundef %9, ptr noundef %inc, i64 noundef %11, i32 noundef %13, i32 noundef %conv, i32 noundef %conv8, i32 noundef %conv10, i32 noundef %21) #7
  br label %do.end

do.end:                                           ; preds = %if.then4, %entry
  %i_hdr13 = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 4
  %22 = ptrtoint ptr %i_hdr13 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %i_hdr13, align 8
  %cp_next_rx_seq15 = getelementptr inbounds %struct.rds_conn_path, ptr %cp.0, i32 0, i32 12
  %24 = ptrtoint ptr %cp_next_rx_seq15 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %cp_next_rx_seq15, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %25)
  %cmp = icmp ult i64 %23, %25
  br i1 %cmp, label %land.lhs.true, label %do.end.if.end40_crit_edge

do.end.if.end40_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

land.lhs.true:                                    ; preds = %do.end
  %h_flags18 = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 4, i32 5
  %26 = ptrtoint ptr %h_flags18 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %h_flags18, align 8
  %28 = and i8 %27, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool20.not = icmp eq i8 %28, 0
  br i1 %tobool20.not, label %land.lhs.true.if.end40_crit_edge, label %do.body23

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

do.body23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %29 = tail call i32 @llvm.read_register.i32(metadata !53) #7
  %and.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %32, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !69
  %33 = tail call i32 @llvm.read_register.i32(metadata !53) #7
  %and.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu, align 4
  %arrayidx33 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx33, align 4
  %add = add i32 %38, ptrtoint (ptr @rds_stats to i32)
  %39 = inttoptr i32 %add to ptr
  %s_recv_drop_old_seq = getelementptr inbounds %struct.rds_statistics, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %s_recv_drop_old_seq to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %s_recv_drop_old_seq, align 8
  %inc34 = add i64 %41, 1
  store i64 %inc34, ptr %s_recv_drop_old_seq, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !70
  %42 = tail call i32 @llvm.read_register.i32(metadata !53) #7
  %and.i.i.i325 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i325 to ptr
  %preempt_count.i.i326 = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i326 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i326, align 4
  %sub.i = add i32 %45, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i326, align 4
  br label %if.end267

if.end40:                                         ; preds = %land.lhs.true.if.end40_crit_edge, %do.end.if.end40_crit_edge
  %add43 = add i64 %23, 1
  %46 = ptrtoint ptr %cp_next_rx_seq15 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %add43, ptr %cp_next_rx_seq15, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rds_sysctl_ping_enable to i32))
  %47 = load i32, ptr @rds_sysctl_ping_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool45.not = icmp eq i32 %47, 0
  br i1 %tobool45.not, label %if.end40.if.end127_crit_edge, label %land.lhs.true46

if.end40.if.end127_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

land.lhs.true46:                                  ; preds = %if.end40
  %h_dport48 = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 4, i32 4
  %48 = ptrtoint ptr %h_dport48 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %h_dport48, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp50 = icmp eq i16 %49, 0
  br i1 %cmp50, label %if.then52, label %land.lhs.true46.if.end127_crit_edge

land.lhs.true46.if.end127_crit_edge:              ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

if.then52:                                        ; preds = %land.lhs.true46
  %h_sport54 = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 4, i32 3
  %50 = ptrtoint ptr %h_sport54 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %h_sport54, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %cmp56 = icmp eq i16 %51, 0
  br i1 %cmp56, label %do.body59, label %do.body77

do.body59:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_recv_incoming.__UNIQUE_ID_ddebug552, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_recv_incoming, %if.then71)) #7
          to label %out [label %if.then71], !srcloc !63

if.then71:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_recv_incoming.__UNIQUE_ID_ddebug552, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, ptr noundef %saddr) #7
  br label %if.end267

do.body77:                                        ; preds = %if.then52
  %52 = tail call i32 @llvm.read_register.i32(metadata !53) #7
  %and.i.i.i330 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i.i330 to ptr
  %preempt_count.i.i331 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %preempt_count.i.i331 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %preempt_count.i.i331, align 4
  %add.i332 = add i32 %55, 1
  store volatile i32 %add.i332, ptr %preempt_count.i.i331, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !71
  %56 = tail call i32 @llvm.read_register.i32(metadata !53) #7
  %and.i357 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i357 to ptr
  %cpu89 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %cpu89 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cpu89, align 4
  %arrayidx90 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx90, align 4
  %add91 = add i32 %61, ptrtoint (ptr @rds_stats to i32)
  %62 = inttoptr i32 %add91 to ptr
  %s_recv_ping = getelementptr inbounds %struct.rds_statistics, ptr %62, i32 0, i32 12
  %63 = ptrtoint ptr %s_recv_ping to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %s_recv_ping, align 8
  %inc92 = add i64 %64, 1
  store i64 %inc92, ptr %s_recv_ping, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !72
  %65 = tail call i32 @llvm.read_register.i32(metadata !53) #7
  %and.i.i.i333 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i333 to ptr
  %preempt_count.i.i334 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %preempt_count.i.i334 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile i32, ptr %preempt_count.i.i334, align 4
  %sub.i335 = add i32 %68, -1
  store volatile i32 %sub.i335, ptr %preempt_count.i.i334, align 4
  %69 = ptrtoint ptr %h_sport54 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %h_sport54, align 4
  %call100 = tail call i32 @rds_send_pong(ptr noundef %cp.0, i16 noundef zeroext %70) #7
  %71 = ptrtoint ptr %h_sport54 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %h_sport54, align 4
  %73 = zext i16 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values)
  switch i16 %72, label %do.body77.if.end267_crit_edge [
    i16 1, label %land.lhs.true106
    i16 0, label %land.lhs.true117
  ]

do.body77.if.end267_crit_edge:                    ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end267

land.lhs.true106:                                 ; preds = %do.body77
  %74 = ptrtoint ptr %h_dport48 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %h_dport48, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %cmp110 = icmp eq i16 %75, 0
  br i1 %cmp110, label %land.lhs.true106.if.then123_crit_edge, label %land.lhs.true106.if.end267_crit_edge

land.lhs.true106.if.end267_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end267

land.lhs.true106.if.then123_crit_edge:            ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then123

land.lhs.true117:                                 ; preds = %do.body77
  %76 = ptrtoint ptr %h_dport48 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %h_dport48, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %77)
  %cmp121 = icmp eq i16 %77, 1
  br i1 %cmp121, label %land.lhs.true117.if.then123_crit_edge, label %land.lhs.true117.if.end267_crit_edge

land.lhs.true117.if.end267_crit_edge:             ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end267

land.lhs.true117.if.then123_crit_edge:            ; preds = %land.lhs.true117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then123

if.then123:                                       ; preds = %land.lhs.true117.if.then123_crit_edge, %land.lhs.true106.if.then123_crit_edge
  %78 = ptrtoint ptr %cp.0 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cp.0, align 8
  tail call fastcc void @rds_recv_hs_exthdrs(ptr noundef %i_hdr13, ptr noundef %79)
  %80 = ptrtoint ptr %cp.0 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cp.0, align 8
  %c_npaths.i = getelementptr inbounds %struct.rds_connection, ptr %81, i32 0, i32 6
  %82 = ptrtoint ptr %c_npaths.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %c_npaths.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %83)
  %cmp.i = icmp sgt i32 %83, 1
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then123.if.end267_crit_edge

if.then123.if.end267_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end267

land.lhs.true.i:                                  ; preds = %if.then123
  %c_laddr.i = getelementptr inbounds %struct.rds_connection, ptr %81, i32 0, i32 1
  %c_faddr.i = getelementptr inbounds %struct.rds_connection, ptr %81, i32 0, i32 2
  %call.i = tail call i32 @rds_addr_cmp(ptr noundef %c_laddr.i, ptr noundef %c_faddr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %for.cond.preheader.i, label %land.lhs.true.i.if.end267_crit_edge

land.lhs.true.i.if.end267_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end267

for.cond.preheader.i:                             ; preds = %land.lhs.true.i
  %84 = ptrtoint ptr %c_npaths.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %c_npaths.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp310.i = icmp sgt i32 %85, 0
  br i1 %cmp310.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.if.end267_crit_edge

for.cond.preheader.i.if.end267_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end267

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %c_path.i = getelementptr inbounds %struct.rds_connection, ptr %81, i32 0, i32 17
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %86 = ptrtoint ptr %c_path.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %c_path.i, align 4
  %arrayidx.i = getelementptr %struct.rds_conn_path, ptr %87, i32 %i.011.i
  tail call void @rds_conn_path_connect_if_down(ptr noundef %arrayidx.i) #7
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %88 = ptrtoint ptr %c_npaths.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %c_npaths.i, align 4
  %cmp3.i = icmp slt i32 %inc.i, %89
  br i1 %cmp3.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end267_crit_edge

for.body.i.if.end267_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end267

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end127:                                        ; preds = %land.lhs.true46.if.end127_crit_edge, %if.end40.if.end127_crit_edge
  %h_dport129 = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 4, i32 4
  %90 = ptrtoint ptr %h_dport129 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %h_dport129, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %91)
  %cmp131 = icmp eq i16 %91, 1
  br i1 %cmp131, label %land.lhs.true133, label %if.end127.if.end144_crit_edge

if.end127.if.end144_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end144

land.lhs.true133:                                 ; preds = %if.end127
  %h_sport135 = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 4, i32 3
  %92 = ptrtoint ptr %h_sport135 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %h_sport135, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %cmp137 = icmp eq i16 %93, 0
  br i1 %cmp137, label %if.then139, label %land.lhs.true133.if.end144_crit_edge

land.lhs.true133.if.end144_crit_edge:             ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end144

if.then139:                                       ; preds = %land.lhs.true133
  %94 = ptrtoint ptr %cp.0 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cp.0, align 8
  tail call fastcc void @rds_recv_hs_exthdrs(ptr noundef %i_hdr13, ptr noundef %95)
  %96 = ptrtoint ptr %cp.0 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cp.0, align 8
  %c_npaths.i358 = getelementptr inbounds %struct.rds_connection, ptr %97, i32 0, i32 6
  %98 = ptrtoint ptr %c_npaths.i358 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %c_npaths.i358, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %99)
  %cmp.i359 = icmp sgt i32 %99, 1
  br i1 %cmp.i359, label %land.lhs.true.i364, label %if.then139.rds_start_mprds.exit374_crit_edge

if.then139.rds_start_mprds.exit374_crit_edge:     ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #9
  br label %rds_start_mprds.exit374

land.lhs.true.i364:                               ; preds = %if.then139
  %c_laddr.i360 = getelementptr inbounds %struct.rds_connection, ptr %97, i32 0, i32 1
  %c_faddr.i361 = getelementptr inbounds %struct.rds_connection, ptr %97, i32 0, i32 2
  %call.i362 = tail call i32 @rds_addr_cmp(ptr noundef %c_laddr.i360, ptr noundef %c_faddr.i361) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i362)
  %cmp1.i363 = icmp slt i32 %call.i362, 0
  br i1 %cmp1.i363, label %for.cond.preheader.i366, label %land.lhs.true.i364.rds_start_mprds.exit374_crit_edge

land.lhs.true.i364.rds_start_mprds.exit374_crit_edge: ; preds = %land.lhs.true.i364
  call void @__sanitizer_cov_trace_pc() #9
  br label %rds_start_mprds.exit374

for.cond.preheader.i366:                          ; preds = %land.lhs.true.i364
  %100 = ptrtoint ptr %c_npaths.i358 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %c_npaths.i358, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp310.i365 = icmp sgt i32 %101, 0
  br i1 %cmp310.i365, label %for.body.lr.ph.i368, label %for.cond.preheader.i366.rds_start_mprds.exit374_crit_edge

for.cond.preheader.i366.rds_start_mprds.exit374_crit_edge: ; preds = %for.cond.preheader.i366
  call void @__sanitizer_cov_trace_pc() #9
  br label %rds_start_mprds.exit374

for.body.lr.ph.i368:                              ; preds = %for.cond.preheader.i366
  %c_path.i367 = getelementptr inbounds %struct.rds_connection, ptr %97, i32 0, i32 17
  br label %for.body.i373

for.body.i373:                                    ; preds = %for.body.i373.for.body.i373_crit_edge, %for.body.lr.ph.i368
  %i.011.i369 = phi i32 [ 0, %for.body.lr.ph.i368 ], [ %inc.i371, %for.body.i373.for.body.i373_crit_edge ]
  %102 = ptrtoint ptr %c_path.i367 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %c_path.i367, align 4
  %arrayidx.i370 = getelementptr %struct.rds_conn_path, ptr %103, i32 %i.011.i369
  tail call void @rds_conn_path_connect_if_down(ptr noundef %arrayidx.i370) #7
  %inc.i371 = add nuw nsw i32 %i.011.i369, 1
  %104 = ptrtoint ptr %c_npaths.i358 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %c_npaths.i358, align 4
  %cmp3.i372 = icmp slt i32 %inc.i371, %105
  br i1 %cmp3.i372, label %for.body.i373.for.body.i373_crit_edge, label %for.body.i373.rds_start_mprds.exit374_crit_edge

for.body.i373.rds_start_mprds.exit374_crit_edge:  ; preds = %for.body.i373
  call void @__sanitizer_cov_trace_pc() #9
  br label %rds_start_mprds.exit374

for.body.i373.for.body.i373_crit_edge:            ; preds = %for.body.i373
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i373

rds_start_mprds.exit374:                          ; preds = %for.body.i373.rds_start_mprds.exit374_crit_edge, %for.cond.preheader.i366.rds_start_mprds.exit374_crit_edge, %land.lhs.true.i364.rds_start_mprds.exit374_crit_edge, %if.then139.rds_start_mprds.exit374_crit_edge
  %106 = ptrtoint ptr %cp.0 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %cp.0, align 8
  %c_hs_waitq = getelementptr inbounds %struct.rds_connection, ptr %107, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %c_hs_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %if.end267

if.end144:                                        ; preds = %land.lhs.true133.if.end144_crit_edge, %if.end127.if.end144_crit_edge
  %c_bound_if = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 4
  %108 = ptrtoint ptr %c_bound_if to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %c_bound_if, align 4
  %call147 = tail call ptr @rds_find_bound(ptr noundef %daddr, i16 noundef zeroext %91, i32 noundef %109) #7
  %tobool148.not = icmp eq ptr %call147, null
  br i1 %tobool148.not, label %do.body151, label %if.end172

do.body151:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #9
  %110 = tail call i32 @llvm.read_register.i32(metadata !53) #7
  %and.i.i.i336 = and i32 %110, -16384
  %111 = inttoptr i32 %and.i.i.i336 to ptr
  %preempt_count.i.i337 = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %preempt_count.i.i337 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %preempt_count.i.i337, align 4
  %add.i338 = add i32 %113, 1
  store volatile i32 %add.i338, ptr %preempt_count.i.i337, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !73
  %114 = tail call i32 @llvm.read_register.i32(metadata !53) #7
  %and.i375 = and i32 %114, -16384
  %115 = inttoptr i32 %and.i375 to ptr
  %cpu163 = getelementptr inbounds %struct.thread_info, ptr %115, i32 0, i32 3
  %116 = ptrtoint ptr %cpu163 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %cpu163, align 4
  %arrayidx164 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %117
  %118 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx164, align 4
  %add165 = add i32 %119, ptrtoint (ptr @rds_stats to i32)
  %120 = inttoptr i32 %add165 to ptr
  %s_recv_drop_no_sock = getelementptr inbounds %struct.rds_statistics, ptr %120, i32 0, i32 3
  %121 = ptrtoint ptr %s_recv_drop_no_sock to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %s_recv_drop_no_sock, align 8
  %inc166 = add i64 %122, 1
  store i64 %inc166, ptr %s_recv_drop_no_sock, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !74
  %123 = tail call i32 @llvm.read_register.i32(metadata !53) #7
  %and.i.i.i339 = and i32 %123, -16384
  %124 = inttoptr i32 %and.i.i.i339 to ptr
  %preempt_count.i.i340 = getelementptr inbounds %struct.thread_info, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %preempt_count.i.i340 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %preempt_count.i.i340, align 4
  %sub.i341 = add i32 %126, -1
  store volatile i32 %sub.i341, ptr %preempt_count.i.i340, align 4
  br label %if.end267

if.end172:                                        ; preds = %if.end144
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos.i) #7
  %127 = ptrtoint ptr %pos.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %pos.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buffer.i) #7
  %128 = ptrtoint ptr %buffer.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 -1, ptr %buffer.i, align 4, !annotation !75
  %129 = getelementptr inbounds %struct.rds_ext_header_rdma_dest, ptr %buffer.i, i32 0, i32 1
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 -1, ptr %129, align 4, !annotation !75
  %i_usercopy.i = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 7
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %if.end172
  %131 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 8, ptr %len.i, align 4
  %call.i376 = call i32 @rds_message_next_extension(ptr noundef %i_hdr13, ptr noundef nonnull %pos.i, ptr noundef nonnull %buffer.i, ptr noundef nonnull %len.i) #7
  %132 = zext i32 %call.i376 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %call.i376, label %while.cond.i.while.cond.i.backedge_crit_edge [
    i32 0, label %rds_recv_incoming_exthdrs.exit
    i32 2, label %sw.bb.i
    i32 3, label %sw.bb1.i
  ]

while.cond.i.while.cond.i.backedge_crit_edge:     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.backedge

sw.bb.i:                                          ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %133 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %buffer.i, align 4
  call void @rds_rdma_unuse(ptr noundef nonnull %call147, i32 noundef %134, i32 noundef 0) #7
  br label %while.cond.i.backedge

sw.bb1.i:                                         ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  %135 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %buffer.i, align 4
  %137 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %129, align 4
  %conv.i.i = zext i32 %136 to i64
  %conv1.i.i = zext i32 %138 to i64
  %shl.i.i = shl nuw i64 %conv1.i.i, 32
  %or.i.i = or i64 %shl.i.i, %conv.i.i
  %139 = ptrtoint ptr %i_usercopy.i to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %or.i.i, ptr %i_usercopy.i, align 8
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %sw.bb1.i, %sw.bb.i, %while.cond.i.while.cond.i.backedge_crit_edge
  br label %while.cond.i

rds_recv_incoming_exthdrs.exit:                   ; preds = %while.cond.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buffer.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos.i) #7
  %rs_recv_lock = getelementptr inbounds %struct.rds_sock, ptr %call147, i32 0, i32 21
  %call178 = call i32 @_raw_write_lock_irqsave(ptr noundef %rs_recv_lock) #7
  %140 = getelementptr inbounds %struct.sock_common, ptr %call147, i32 0, i32 13
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %140, align 4
  %143 = and i32 %142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool.i.not = icmp eq i32 %143, 0
  br i1 %tobool.i.not, label %do.body183, label %do.body234

do.body183:                                       ; preds = %rds_recv_incoming_exthdrs.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_recv_incoming.__UNIQUE_ID_ddebug553, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_recv_incoming, %if.then195)) #7
          to label %do.body200 [label %if.then195], !srcloc !63

if.then195:                                       ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_recv_incoming.__UNIQUE_ID_ddebug553, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, ptr noundef %inc, ptr noundef nonnull %call147) #7
  br label %do.body200

do.body200:                                       ; preds = %if.then195, %do.body183
  %144 = call i32 @llvm.read_register.i32(metadata !53) #7
  %and.i.i.i345 = and i32 %144, -16384
  %145 = inttoptr i32 %and.i.i.i345 to ptr
  %preempt_count.i.i346 = getelementptr inbounds %struct.thread_info, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %preempt_count.i.i346 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %preempt_count.i.i346, align 4
  %add.i347 = add i32 %147, 1
  store volatile i32 %add.i347, ptr %preempt_count.i.i346, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !76
  %148 = call i32 @llvm.read_register.i32(metadata !53) #7
  %and.i377 = and i32 %148, -16384
  %149 = inttoptr i32 %and.i377 to ptr
  %cpu212 = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 3
  %150 = ptrtoint ptr %cpu212 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %cpu212, align 4
  %arrayidx213 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %151
  %152 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx213, align 4
  %add214 = add i32 %153, ptrtoint (ptr @rds_stats to i32)
  %154 = inttoptr i32 %add214 to ptr
  %s_recv_queued = getelementptr inbounds %struct.rds_statistics, ptr %154, i32 0, i32 7
  %155 = ptrtoint ptr %s_recv_queued to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %s_recv_queued, align 8
  %inc215 = add i64 %156, 1
  store i64 %inc215, ptr %s_recv_queued, align 8
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !77
  %157 = call i32 @llvm.read_register.i32(metadata !53) #7
  %and.i.i.i348 = and i32 %157, -16384
  %158 = inttoptr i32 %and.i.i.i348 to ptr
  %preempt_count.i.i349 = getelementptr inbounds %struct.thread_info, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %preempt_count.i.i349 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load volatile i32, ptr %preempt_count.i.i349, align 4
  %sub.i350 = add i32 %160, -1
  store volatile i32 %sub.i350, ptr %preempt_count.i.i349, align 4
  %161 = ptrtoint ptr %i_conn to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %i_conn, align 4
  %c_lcong = getelementptr inbounds %struct.rds_connection, ptr %162, i32 0, i32 9
  %163 = ptrtoint ptr %c_lcong to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %c_lcong, align 4
  %h_len223 = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 4, i32 2
  %165 = ptrtoint ptr %h_len223 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %h_len223, align 8
  %167 = ptrtoint ptr %h_dport129 to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %h_dport129, align 2
  call fastcc void @rds_recv_rcvbuf_delta(ptr noundef nonnull %call147, ptr noundef %164, i32 noundef %166, i16 noundef zeroext %168)
  %169 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load volatile i32, ptr %140, align 4
  %171 = and i32 %170, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool.i378.not = icmp eq i32 %171, 0
  br i1 %tobool.i378.not, label %do.body200.if.end229_crit_edge, label %if.then227

do.body200.if.end229_crit_edge:                   ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end229

if.then227:                                       ; preds = %do.body200
  call void @__sanitizer_cov_trace_pc() #9
  %call.i379 = call i64 @ktime_get_with_offset(i32 noundef 0) #7
  %rx_tstamp = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 7, i32 1
  %172 = ptrtoint ptr %rx_tstamp to i32
  call void @__asan_store8_noabort(i32 %172)
  store i64 %call.i379, ptr %rx_tstamp, align 8
  br label %if.end229

if.end229:                                        ; preds = %if.then227, %do.body200.if.end229_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_inc_addref.__UNIQUE_ID_ddebug544, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_recv_incoming, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !63

if.then.i:                                        ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %inc, i32 noundef 4) #7
  %173 = ptrtoint ptr %inc to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load volatile i32, ptr %inc, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_inc_addref.__UNIQUE_ID_ddebug544, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, ptr noundef %inc, i32 noundef %174) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end229
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %inc, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %inc, i32 1, i32 3, i32 1) #7
  %175 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %inc, ptr %inc, i32 1, ptr elementtype(i32) %inc) #7, !srcloc !78
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %175, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.end.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !79

do.end.i.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.end.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %176 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %176)
  %.not.i.i.i.i = icmp sgt i32 %176, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.rds_inc_addref.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !66

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.rds_inc_addref.exit_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rds_inc_addref.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.end.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.end.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %inc, i32 noundef %.sink.i.i.i.i) #7
  br label %rds_inc_addref.exit

rds_inc_addref.exit:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.rds_inc_addref.exit_crit_edge
  %call.i380 = call i64 @sched_clock() #7
  %arrayidx231 = getelementptr %struct.rds_incoming, ptr %inc, i32 0, i32 8, i32 2
  %177 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_store8_noabort(i32 %177)
  store i64 %call.i380, ptr %arrayidx231, align 8
  %i_item = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 1
  %rs_recv_queue = getelementptr inbounds %struct.rds_sock, ptr %call147, i32 0, i32 22
  %prev.i = getelementptr inbounds %struct.rds_sock, ptr %call147, i32 0, i32 22, i32 1
  %178 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %i_item, ptr noundef %179, ptr noundef %rs_recv_queue) #7
  br i1 %call.i.i, label %if.end.i.i, label %rds_inc_addref.exit.list_add_tail.exit_crit_edge

rds_inc_addref.exit.list_add_tail.exit_crit_edge: ; preds = %rds_inc_addref.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %rds_inc_addref.exit
  call void @__sanitizer_cov_trace_pc() #9
  %180 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %i_item, ptr %prev.i, align 4
  %181 = ptrtoint ptr %i_item to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %rs_recv_queue, ptr %i_item, align 4
  %prev3.i.i = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 1, i32 1
  %182 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %179, ptr %prev3.i.i, align 4
  %183 = ptrtoint ptr %179 to i32
  call void @__asan_store4_noabort(i32 %183)
  store volatile ptr %i_item, ptr %179, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %rds_inc_addref.exit.list_add_tail.exit_crit_edge
  %184 = getelementptr inbounds %struct.sock, ptr %call147, i32 0, i32 17
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load volatile ptr, ptr %184, align 8
  %187 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load volatile i32, ptr %140, align 4
  %189 = and i32 %188, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool.i.i = icmp ne i32 %189, 0
  %tobool.not.i = icmp eq ptr %186, null
  %or.cond.i = select i1 %tobool.i.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %list_add_tail.exit.do.body256_crit_edge, label %if.then.i381

list_add_tail.exit.do.body256_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body256

if.then.i381:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__wake_up(ptr noundef nonnull %186, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %do.body256

do.body234:                                       ; preds = %rds_recv_incoming_exthdrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %190 = call i32 @llvm.read_register.i32(metadata !53) #7
  %and.i.i.i351 = and i32 %190, -16384
  %191 = inttoptr i32 %and.i.i.i351 to ptr
  %preempt_count.i.i352 = getelementptr inbounds %struct.thread_info, ptr %191, i32 0, i32 1
  %192 = ptrtoint ptr %preempt_count.i.i352 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load volatile i32, ptr %preempt_count.i.i352, align 4
  %add.i353 = add i32 %193, 1
  store volatile i32 %add.i353, ptr %preempt_count.i.i352, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !80
  %194 = call i32 @llvm.read_register.i32(metadata !53) #7
  %and.i382 = and i32 %194, -16384
  %195 = inttoptr i32 %and.i382 to ptr
  %cpu246 = getelementptr inbounds %struct.thread_info, ptr %195, i32 0, i32 3
  %196 = ptrtoint ptr %cpu246 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %cpu246, align 4
  %arrayidx247 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %197
  %198 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx247, align 4
  %add248 = add i32 %199, ptrtoint (ptr @rds_stats to i32)
  %200 = inttoptr i32 %add248 to ptr
  %s_recv_drop_dead_sock = getelementptr inbounds %struct.rds_statistics, ptr %200, i32 0, i32 4
  %201 = ptrtoint ptr %s_recv_drop_dead_sock to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %s_recv_drop_dead_sock, align 8
  %inc249 = add i64 %202, 1
  store i64 %inc249, ptr %s_recv_drop_dead_sock, align 8
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !81
  %203 = call i32 @llvm.read_register.i32(metadata !53) #7
  %and.i.i.i354 = and i32 %203, -16384
  %204 = inttoptr i32 %and.i.i.i354 to ptr
  %preempt_count.i.i355 = getelementptr inbounds %struct.thread_info, ptr %204, i32 0, i32 1
  %205 = ptrtoint ptr %preempt_count.i.i355 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load volatile i32, ptr %preempt_count.i.i355, align 4
  %sub.i356 = add i32 %206, -1
  store volatile i32 %sub.i356, ptr %preempt_count.i.i355, align 4
  br label %do.body256

do.body256:                                       ; preds = %do.body234, %if.then.i381, %list_add_tail.exit.do.body256_crit_edge
  call void @_raw_write_unlock_irqrestore(ptr noundef %rs_recv_lock, i32 noundef %call178) #7
  br label %out

out:                                              ; preds = %do.body256, %do.body59
  %rs.0 = phi ptr [ %call147, %do.body256 ], [ null, %do.body59 ]
  %tobool265.not = icmp eq ptr %rs.0, null
  br i1 %tobool265.not, label %out.if.end267_crit_edge, label %if.then266

out.if.end267_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end267

if.then266:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  call void @rds_sock_put(ptr noundef nonnull %rs.0) #7
  br label %if.end267

if.end267:                                        ; preds = %if.then266, %out.if.end267_crit_edge, %do.body151, %rds_start_mprds.exit374, %for.body.i.if.end267_crit_edge, %for.cond.preheader.i.if.end267_crit_edge, %land.lhs.true.i.if.end267_crit_edge, %if.then123.if.end267_crit_edge, %land.lhs.true117.if.end267_crit_edge, %land.lhs.true106.if.end267_crit_edge, %do.body77.if.end267_crit_edge, %if.then71, %do.body23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_send_pong(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rds_recv_hs_exthdrs(ptr noundef %hdr, ptr nocapture noundef %conn) unnamed_addr #0 align 64 {
entry:
  %pos = alloca i32, align 4
  %len = alloca i32, align 4
  %buffer = alloca %union.anon.181, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pos) #7
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %pos, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer) #7
  %1 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %buffer, align 4, !annotation !75
  %c_npaths = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 6
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %sw.bb3, %entry
  %new_peer_gen_num.0.ph = phi i32 [ %9, %sw.bb3 ], [ 0, %entry ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.outer
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %len, align 4
  %call = call i32 @rds_message_next_extension(ptr noundef %hdr, ptr noundef nonnull %pos, ptr noundef nonnull %buffer, ptr noundef nonnull %len) #7
  %3 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %call, label %sw.default [
    i32 0, label %while.end
    i32 5, label %sw.bb
    i32 6, label %sw.bb3
  ]

sw.bb:                                            ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %buffer, align 4
  %6 = call i16 @llvm.umin.i16(i16 %5, i16 8)
  %cond = zext i16 %6 to i32
  %7 = ptrtoint ptr %c_npaths to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %c_npaths, align 4
  br label %while.cond.backedge

sw.bb3:                                           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buffer, align 4
  br label %while.cond.outer

sw.default:                                       ; preds = %while.cond
  %call4 = call i32 @___ratelimit(ptr noundef nonnull @rds_recv_hs_exthdrs._rs, ptr noundef nonnull @__func__.rds_recv_hs_exthdrs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %sw.default.while.cond.backedge_crit_edge, label %do.end

sw.default.while.cond.backedge_crit_edge:         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.end, %sw.default.while.cond.backedge_crit_edge, %sw.bb
  br label %while.cond

do.end:                                           ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call) #10
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond
  %10 = ptrtoint ptr %c_npaths to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %c_npaths, align 4
  %12 = call i32 @llvm.smax.i32(i32 %11, i32 1)
  %13 = ptrtoint ptr %c_npaths to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %c_npaths, align 4
  %c_ping_triggered = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 5
  %14 = ptrtoint ptr %c_ping_triggered to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load = load i32, ptr %c_ping_triggered, align 4
  %bf.clear = and i32 %bf.load, -536870913
  store i32 %bf.clear, ptr %c_ping_triggered, align 4
  %c_trans.i = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 8
  %15 = ptrtoint ptr %c_trans.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %c_trans.i, align 4
  %t_type.i = getelementptr inbounds %struct.rds_transport, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %t_type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %t_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.not.i = icmp eq i32 %18, 2
  br i1 %cmp.not.i, label %while.end.if.end.i_crit_edge, label %do.end.i, !prof !66

while.end.if.end.i_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 139, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %while.end.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_peer_gen_num.0.ph)
  %cmp20.not.i = icmp eq i32 %new_peer_gen_num.0.ph, 0
  br i1 %cmp20.not.i, label %if.end.i.rds_conn_peer_gen_update.exit_crit_edge, label %if.then21.i

if.end.i.rds_conn_peer_gen_update.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rds_conn_peer_gen_update.exit

if.then21.i:                                      ; preds = %if.end.i
  %c_peer_gen_num.i = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 20
  %19 = ptrtoint ptr %c_peer_gen_num.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %c_peer_gen_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp22.not.i = icmp eq i32 %20, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %new_peer_gen_num.0.ph)
  %cmp24.not.i = icmp eq i32 %20, %new_peer_gen_num.0.ph
  %or.cond.i = or i1 %cmp22.not.i, %cmp24.not.i
  br i1 %or.cond.i, label %if.then21.i.if.end57.i_crit_edge, label %for.cond.preheader.i

if.then21.i.if.end57.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.i

for.cond.preheader.i:                             ; preds = %if.then21.i
  %c_path.i = getelementptr inbounds %struct.rds_connection, ptr %conn, i32 0, i32 17
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.080.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.end.i.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %c_path.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %c_path.i, align 4
  %cp_lock.i = getelementptr %struct.rds_conn_path, ptr %22, i32 %i.080.i, i32 8
  %call31.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %cp_lock.i) #7
  %cp_next_tx_seq.i = getelementptr %struct.rds_conn_path, ptr %22, i32 %i.080.i, i32 9
  %23 = ptrtoint ptr %cp_next_tx_seq.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 1, ptr %cp_next_tx_seq.i, align 8
  %cp_next_rx_seq.i = getelementptr %struct.rds_conn_path, ptr %22, i32 %i.080.i, i32 12
  %24 = ptrtoint ptr %cp_next_rx_seq.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 0, ptr %cp_next_rx_seq.i, align 8
  %cp_retrans.i = getelementptr %struct.rds_conn_path, ptr %22, i32 %i.080.i, i32 11
  %25 = ptrtoint ptr %cp_retrans.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cp_retrans.i, align 8
  %cmp44.not78.i = icmp eq ptr %26, %cp_retrans.i
  br i1 %cmp44.not78.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body48.i_crit_edge

for.body.i.for.body48.i_crit_edge:                ; preds = %for.body.i
  br label %for.body48.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body48.i:                                     ; preds = %for.body48.i.for.body48.i_crit_edge, %for.body.i.for.body48.i_crit_edge
  %.pn.in79.i = phi ptr [ %.pn.i, %for.body48.i.for.body48.i_crit_edge ], [ %26, %for.body.i.for.body48.i_crit_edge ]
  %27 = ptrtoint ptr %.pn.in79.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn.i = load ptr, ptr %.pn.in79.i, align 4
  %m_flags.i = getelementptr i8, ptr %.pn.in79.i, i32 180
  call void @_set_bit(i32 noundef 8, ptr noundef %m_flags.i) #7
  %cmp44.not.i = icmp eq ptr %.pn.i, %cp_retrans.i
  br i1 %cmp44.not.i, label %for.body48.i.for.end.i_crit_edge, label %for.body48.i.for.body48.i_crit_edge

for.body48.i.for.body48.i_crit_edge:              ; preds = %for.body48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body48.i

for.body48.i.for.end.i_crit_edge:                 ; preds = %for.body48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body48.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %cp_lock.i, i32 noundef %call31.i) #7
  %inc.i = add nuw nsw i32 %i.080.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %for.end.i.if.end57.i_crit_edge, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i.if.end57.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.i

if.end57.i:                                       ; preds = %for.end.i.if.end57.i_crit_edge, %if.then21.i.if.end57.i_crit_edge
  %28 = ptrtoint ptr %c_peer_gen_num.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %new_peer_gen_num.0.ph, ptr %c_peer_gen_num.i, align 4
  br label %rds_conn_peer_gen_update.exit

rds_conn_peer_gen_update.exit:                    ; preds = %if.end57.i, %if.end.i.rds_conn_peer_gen_update.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pos) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rds_find_bound(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rds_recv_rcvbuf_delta(ptr noundef %rs, ptr noundef %map, i32 noundef %delta, i16 noundef zeroext %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delta)
  %cmp = icmp eq i32 %delta, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rs_rcv_bytes = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 15
  %0 = ptrtoint ptr %rs_rcv_bytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rs_rcv_bytes, align 4
  %add = add i32 %1, %delta
  store i32 %add, ptr %rs_rcv_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delta)
  %cmp1 = icmp sgt i32 %delta, 0
  br i1 %cmp1, label %do.body, label %do.body16

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv15 = zext i32 %delta to i64
  %2 = tail call i32 @llvm.read_register.i32(metadata !53) #7
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %5, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !82
  %6 = tail call i32 @llvm.read_register.i32(metadata !53) #7
  %and.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %add9 = add i32 %11, ptrtoint (ptr @rds_stats to i32)
  %12 = inttoptr i32 %add9 to ptr
  %s_recv_bytes_added_to_socket = getelementptr inbounds %struct.rds_statistics, ptr %12, i32 0, i32 33
  %13 = ptrtoint ptr %s_recv_bytes_added_to_socket to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %s_recv_bytes_added_to_socket, align 8
  %add10 = add i64 %14, %conv15
  store i64 %add10, ptr %s_recv_bytes_added_to_socket, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !83
  br label %if.end39

do.body16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i32 0, %delta
  %conv17 = sext i32 %sub to i64
  %15 = tail call i32 @llvm.read_register.i32(metadata !53) #7
  %and.i.i.i3 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i3 to ptr
  %preempt_count.i.i4 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i4, align 4
  %add.i5 = add i32 %18, 1
  store volatile i32 %add.i5, ptr %preempt_count.i.i4, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !84
  %19 = tail call i32 @llvm.read_register.i32(metadata !53) #7
  %and.i9 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i9 to ptr
  %cpu30 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu30, align 4
  %arrayidx31 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx31, align 4
  %add32 = add i32 %24, ptrtoint (ptr @rds_stats to i32)
  %25 = inttoptr i32 %add32 to ptr
  %s_recv_bytes_removed_from_socket = getelementptr inbounds %struct.rds_statistics, ptr %25, i32 0, i32 34
  %26 = ptrtoint ptr %s_recv_bytes_removed_from_socket to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %s_recv_bytes_removed_from_socket, align 8
  %add33 = add i64 %27, %conv17
  store i64 %add33, ptr %s_recv_bytes_removed_from_socket, align 8
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !85
  br label %if.end39

if.end39:                                         ; preds = %do.body16, %do.body
  %28 = tail call i32 @llvm.read_register.i32(metadata !53) #7
  %and.i.i.i6 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i6 to ptr
  %preempt_count.i.i7 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i7, align 4
  %sub.i8 = add i32 %31, -1
  store volatile i32 %sub.i8, ptr %preempt_count.i.i7, align 4
  %rs_transport = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 8
  %32 = ptrtoint ptr %rs_transport to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rs_transport, align 4
  %t_type = getelementptr inbounds %struct.rds_transport, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %t_type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %t_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp40 = icmp eq i32 %35, 3
  br i1 %cmp40, label %if.end39.cleanup_crit_edge, label %if.end43

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end43:                                         ; preds = %if.end39
  %36 = ptrtoint ptr %rs_rcv_bytes to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rs_rcv_bytes, align 4
  %sk_rcvbuf.i = getelementptr inbounds %struct.sock, ptr %rs, i32 0, i32 15
  %38 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sk_rcvbuf.i, align 8
  %div.i = sdiv i32 %39, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %div.i)
  %cmp46 = icmp sgt i32 %37, %div.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_recv_rcvbuf_delta.__UNIQUE_ID_ddebug546, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_recv_rcvbuf_delta, %if.then53)) #7
          to label %do.end60 [label %if.then53], !srcloc !63

if.then53:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %conv47 = zext i1 %cmp46 to i32
  %sin6_addr = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 5, i32 3
  %sin6_port = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 5, i32 1
  %40 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %sin6_port, align 2
  %conv55 = zext i16 %41 to i32
  %42 = ptrtoint ptr %rs_rcv_bytes to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rs_rcv_bytes, align 4
  %44 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sk_rcvbuf.i, align 8
  %div.i11 = sdiv i32 %45, 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_recv_rcvbuf_delta.__UNIQUE_ID_ddebug546, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, ptr noundef %rs, ptr noundef %sin6_addr, i32 noundef %conv55, i32 noundef %43, i32 noundef %div.i11, i32 noundef %conv47, i32 noundef %delta) #7
  br label %do.end60

do.end60:                                         ; preds = %if.then53, %if.end43
  %rs_congested = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 10
  %46 = ptrtoint ptr %rs_congested to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rs_congested, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool61.not = icmp eq i32 %47, 0
  %48 = select i1 %tobool61.not, i1 %cmp46, i1 false
  br i1 %48, label %if.then63, label %if.else65

if.then63:                                        ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %rs_congested to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %rs_congested, align 4
  tail call void @rds_cong_set_bit(ptr noundef %map, i16 noundef zeroext %port) #7
  br label %cleanup.sink.split

if.else65:                                        ; preds = %do.end60
  br i1 %tobool61.not, label %if.else65.cleanup_crit_edge, label %land.lhs.true68

if.else65.cleanup_crit_edge:                      ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true68:                                  ; preds = %if.else65
  %50 = ptrtoint ptr %rs_rcv_bytes to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rs_rcv_bytes, align 4
  %52 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sk_rcvbuf.i, align 8
  %div = sdiv i32 %53, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %div)
  %cmp71 = icmp slt i32 %51, %div
  br i1 %cmp71, label %if.then73, label %land.lhs.true68.cleanup_crit_edge

land.lhs.true68.cleanup_crit_edge:                ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then73:                                        ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %rs_congested to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %rs_congested, align 4
  tail call void @rds_cong_clear_bit(ptr noundef %map, i16 noundef zeroext %port) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then73, %if.then63
  tail call void @rds_cong_queue_updates(ptr noundef %map) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true68.cleanup_crit_edge, %if.else65.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_sock_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_notify_queue_get(ptr noundef %rs, ptr noundef %msghdr) local_unnamed_addr #0 align 64 {
entry:
  %cmsg = alloca %struct.rds_rdma_notify, align 8
  %copy = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cmsg) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %copy) #7
  %0 = getelementptr inbounds %struct.list_head, ptr %copy, i32 0, i32 1
  %1 = ptrtoint ptr %copy to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %copy, ptr %copy, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %copy, ptr %0, align 4
  %3 = call ptr @memset(ptr %cmsg, i32 0, i32 16)
  %tobool.not = icmp eq ptr %msghdr, null
  br i1 %tobool.not, label %entry.do.body4_crit_edge, label %if.then

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msghdr, i32 0, i32 5
  %4 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_controllen, align 8
  %div = udiv i32 %5, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %5)
  %6 = icmp ult i32 %5, 28
  %spec.store.select = select i1 %6, i32 1, i32 %div
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry.do.body4_crit_edge
  %max_messages.0 = phi i32 [ %spec.store.select, %if.then ], [ -1, %entry.do.body4_crit_edge ]
  %rs_lock = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 12
  %call5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %rs_lock) #7
  %rs_notify_queue = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 16
  %7 = ptrtoint ptr %rs_notify_queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %rs_notify_queue, align 4
  %cmp.i89 = icmp ne ptr %8, %rs_notify_queue
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_messages.0)
  %cmp1090 = icmp ne i32 %max_messages.0, 0
  %or.cond91 = select i1 %cmp.i89, i1 %cmp1090, i1 false
  br i1 %or.cond91, label %do.body4.while.body_crit_edge, label %do.body4.cleanup.sink.split_crit_edge

do.body4.cleanup.sink.split_crit_edge:            ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.body4.while.body_crit_edge:                    ; preds = %do.body4
  br label %while.body

while.body:                                       ; preds = %list_move.exit.while.body_crit_edge, %do.body4.while.body_crit_edge
  %9 = phi ptr [ %23, %list_move.exit.while.body_crit_edge ], [ %8, %do.body4.while.body_crit_edge ]
  %count.092 = phi i32 [ %inc, %list_move.exit.while.body_crit_edge ], [ 0, %do.body4.while.body_crit_edge ]
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #7
  br i1 %call.i.i, label %if.end.i.i, label %while.body.__list_del_entry.exit.i_crit_edge

while.body.__list_del_entry.exit.i_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %while.body.__list_del_entry.exit.i_crit_edge
  %16 = ptrtoint ptr %copy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %copy, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %9, ptr noundef nonnull %copy, ptr noundef %17) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %9, ptr %prev1.i.i2.i, align 4
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %9, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %copy, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %copy to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %9, ptr %copy, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %inc = add nuw i32 %count.092, 1
  %22 = ptrtoint ptr %rs_notify_queue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %rs_notify_queue, align 4
  %cmp.i = icmp ne ptr %23, %rs_notify_queue
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %max_messages.0)
  %cmp10 = icmp ult i32 %inc, %max_messages.0
  %or.cond = select i1 %cmp.i, i1 %cmp10, i1 false
  br i1 %or.cond, label %list_move.exit.while.body_crit_edge, label %while.end

list_move.exit.while.body_crit_edge:              ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %list_move.exit
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rs_lock, i32 noundef %call5) #7
  br i1 %or.cond91, label %while.cond19.preheader, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond19.preheader:                           ; preds = %while.end
  %24 = ptrtoint ptr %copy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %copy, align 4
  %cmp.i80.not94 = icmp eq ptr %25, %copy
  br i1 %cmp.i80.not94, label %while.cond19.preheader.while.end35_crit_edge, label %while.body22.lr.ph

while.cond19.preheader.while.end35_crit_edge:     ; preds = %while.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end35

while.body22.lr.ph:                               ; preds = %while.cond19.preheader
  %status = getelementptr inbounds %struct.rds_rdma_notify, ptr %cmsg, i32 0, i32 1
  br label %while.body22

while.body22:                                     ; preds = %list_del_init.exit.while.body22_crit_edge, %while.body22.lr.ph
  %26 = phi ptr [ %25, %while.body22.lr.ph ], [ %42, %list_del_init.exit.while.body22_crit_edge ]
  br i1 %tobool.not, label %while.body22.if.end33_crit_edge, label %if.then28

while.body22.if.end33_crit_edge:                  ; preds = %while.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then28:                                        ; preds = %while.body22
  %n_user_token = getelementptr inbounds %struct.rds_notifier, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %n_user_token to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %n_user_token, align 8
  %29 = ptrtoint ptr %cmsg to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %cmsg, align 8
  %n_status = getelementptr inbounds %struct.rds_notifier, ptr %26, i32 0, i32 2
  %30 = ptrtoint ptr %n_status to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %n_status, align 8
  %32 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %status, align 8
  %call29 = call i32 @put_cmsg(ptr noundef nonnull %msghdr, i32 noundef 276, i32 noundef 4, i32 noundef 16, ptr noundef nonnull %cmsg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then28.if.end33_crit_edge, label %if.then28.while.end35_crit_edge

if.then28.while.end35_crit_edge:                  ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end35

if.then28.if.end33_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.end33:                                         ; preds = %if.then28.if.end33_crit_edge, %while.body22.if.end33_crit_edge
  %call.i.i82 = call zeroext i1 @__list_del_entry_valid(ptr noundef %26) #7
  br i1 %call.i.i82, label %if.end.i.i85, label %if.end33.list_del_init.exit_crit_edge

if.end33.list_del_init.exit_crit_edge:            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i85:                                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i83 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i83 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i83, align 4
  %35 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %26, align 4
  %prev1.i.i.i84 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i84 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i84, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i85, %if.end33.list_del_init.exit_crit_edge
  %39 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %26, ptr %26, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %26, ptr %prev.i3.i, align 4
  call void @kfree(ptr noundef %26) #7
  %41 = ptrtoint ptr %copy to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %copy, align 4
  %cmp.i80.not = icmp eq ptr %42, %copy
  br i1 %cmp.i80.not, label %list_del_init.exit.while.end35_crit_edge, label %list_del_init.exit.while.body22_crit_edge

list_del_init.exit.while.body22_crit_edge:        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body22

list_del_init.exit.while.end35_crit_edge:         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end35

while.end35:                                      ; preds = %list_del_init.exit.while.end35_crit_edge, %if.then28.while.end35_crit_edge, %while.cond19.preheader.while.end35_crit_edge
  %err.2 = phi i32 [ 0, %while.cond19.preheader.while.end35_crit_edge ], [ %call29, %if.then28.while.end35_crit_edge ], [ 0, %list_del_init.exit.while.end35_crit_edge ]
  %43 = ptrtoint ptr %copy to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %copy, align 4
  %cmp.i87.not = icmp eq ptr %44, %copy
  br i1 %cmp.i87.not, label %while.end35.cleanup_crit_edge, label %do.body40

while.end35.cleanup_crit_edge:                    ; preds = %while.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body40:                                        ; preds = %while.end35
  %call48 = call i32 @_raw_spin_lock_irqsave(ptr noundef %rs_lock) #7
  %45 = ptrtoint ptr %copy to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %copy, align 4
  %cmp.i.not.i = icmp eq ptr %46, %copy
  br i1 %cmp.i.not.i, label %do.body40.cleanup.sink.split_crit_edge, label %if.then.i

do.body40.cleanup.sink.split_crit_edge:           ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then.i:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %rs_notify_queue to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rs_notify_queue, align 4
  %49 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %0, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %51 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %rs_notify_queue, ptr %prev3.i.i, align 4
  store ptr %46, ptr %rs_notify_queue, align 4
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %48, ptr %50, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %53 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev6.i.i, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then.i, %do.body40.cleanup.sink.split_crit_edge, %do.body4.cleanup.sink.split_crit_edge
  %call5.sink = phi i32 [ %call5, %do.body4.cleanup.sink.split_crit_edge ], [ %call48, %do.body40.cleanup.sink.split_crit_edge ], [ %call48, %if.then.i ]
  %retval.0.ph = phi i32 [ 0, %do.body4.cleanup.sink.split_crit_edge ], [ %err.2, %do.body40.cleanup.sink.split_crit_edge ], [ %err.2, %if.then.i ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rs_lock, i32 noundef %call5.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.end35.cleanup_crit_edge, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end.cleanup_crit_edge ], [ %err.2, %while.end35.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %copy) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cmsg) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_cmsg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %size, i32 noundef %msg_flags) local_unnamed_addr #0 align 64 {
entry:
  %tv.i = alloca %struct.__kernel_old_timeval, align 4
  %sk_tv.i = alloca %struct.__kernel_sock_timeval, align 8
  %t.i = alloca %struct.rds_cmsg_rx_trace, align 8
  %notify.i = alloca i64, align 8
  %inc = alloca ptr, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %and = and i32 %msg_flags, 64
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msg, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inc) #7
  %4 = ptrtoint ptr %inc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %inc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false.i, label %entry.sock_rcvtimeo.exit_crit_edge

entry.sock_rcvtimeo.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sock_rcvtimeo.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sk_rcvtimeo.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 62
  %5 = ptrtoint ptr %sk_rcvtimeo.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sk_rcvtimeo.i, align 4
  br label %sock_rcvtimeo.exit

sock_rcvtimeo.exit:                               ; preds = %cond.false.i, %entry.sock_rcvtimeo.exit_crit_edge
  %cond.i = phi i32 [ %6, %cond.false.i ], [ 0, %entry.sock_rcvtimeo.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_recvmsg.__UNIQUE_ID_ddebug557, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_recvmsg, %if.then)) #7
          to label %do.end15 [label %if.then], !srcloc !63

if.then:                                          ; preds = %sock_rcvtimeo.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_recvmsg.__UNIQUE_ID_ddebug557, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef %size, i32 noundef %msg_flags, i32 noundef %cond.i) #7
  br label %do.end15

do.end15:                                         ; preds = %if.then, %sock_rcvtimeo.exit
  %and16 = and i32 %msg_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end19, label %do.end15.cleanup240_crit_edge

do.end15.cleanup240_crit_edge:                    ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup240

if.end19:                                         ; preds = %do.end15
  %and20 = and i32 %msg_flags, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %while.cond.preheader, label %if.then22

while.cond.preheader:                             ; preds = %if.end19
  %rs_notify_queue = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 16
  %rs_cong_notify = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 18
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %and156 = lshr i32 %msg_flags, 1
  %and156.lobit = and i32 %and156, 1
  %7 = xor i32 %and156.lobit, 1
  %8 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  br label %while.cond.outer

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %call23 = tail call i32 @sock_recv_errqueue(ptr noundef %1, ptr noundef %msg, i32 noundef %size, i32 noundef 0, i32 noundef 11) #7
  br label %cleanup240

if.then27:                                        ; preds = %if.then162.if.then27_crit_edge, %while.cond.outer.if.then27_crit_edge
  %call28 = call i32 @rds_notify_queue_get(ptr noundef %1, ptr noundef %msg)
  br label %while.end

if.end29:                                         ; preds = %if.then162.if.end29_crit_edge, %while.cond.outer.if.end29_crit_edge
  %9 = ptrtoint ptr %rs_cong_notify to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %rs_cong_notify, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool30.not = icmp eq i64 %10, 0
  br i1 %tobool30.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.end29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %notify.i) #7
  %11 = ptrtoint ptr %notify.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %notify.i, align 8
  %call.i = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 276, i32 noundef 5, i32 noundef 8, ptr noundef nonnull %notify.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body1.i, label %if.then31.rds_notify_cong.exit_crit_edge

if.then31.rds_notify_cong.exit_crit_edge:         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %rds_notify_cong.exit

do.body1.i:                                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %rs_lock.i = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 12
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %rs_lock.i) #7
  %12 = ptrtoint ptr %notify.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %notify.i, align 8
  %neg.i = xor i64 %13, -1
  %14 = ptrtoint ptr %rs_cong_notify to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %rs_cong_notify, align 8
  %and.i = and i64 %15, %neg.i
  store i64 %and.i, ptr %rs_cong_notify, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rs_lock.i, i32 noundef %call3.i) #7
  br label %rds_notify_cong.exit

rds_notify_cong.exit:                             ; preds = %do.body1.i, %if.then31.rds_notify_cong.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %notify.i) #7
  br label %while.end

if.end33:                                         ; preds = %if.end29
  %call34 = call fastcc i32 @rds_next_incoming(ptr noundef %1, ptr noundef nonnull %inc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %do.body134

if.then36:                                        ; preds = %if.end33
  br i1 %tobool.not, label %if.end42, label %if.then38

if.then38:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = call fastcc zeroext i1 @rds_recvmsg_zcookie(ptr noundef %1, ptr noundef %msg)
  %cond = select i1 %call39, i32 0, i32 -11
  br label %while.end

if.end42:                                         ; preds = %if.then36
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 677) #7
  %16 = ptrtoint ptr %rs_notify_queue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %rs_notify_queue, align 4
  %cmp.i329.not = icmp eq ptr %17, %rs_notify_queue
  br i1 %cmp.i329.not, label %lor.lhs.false, label %if.end42.lor.end.thread_crit_edge

if.end42.lor.end.thread_crit_edge:                ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.thread

lor.lhs.false:                                    ; preds = %if.end42
  %18 = ptrtoint ptr %rs_cong_notify to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rs_cong_notify, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool53.not = icmp eq i64 %19, 0
  br i1 %tobool53.not, label %lor.end, label %lor.lhs.false.lor.end.thread_crit_edge

lor.lhs.false.lor.end.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end.thread

lor.end.thread:                                   ; preds = %lor.lhs.false.lor.end.thread_crit_edge, %if.end42.lor.end.thread_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeo.0.ph)
  %tobool58.not343 = icmp eq i32 %timeo.0.ph, 0
  %spec.store.select344 = select i1 %tobool58.not343, i32 1, i32 %timeo.0.ph
  br label %if.end108

lor.end:                                          ; preds = %lor.lhs.false
  %call54 = call fastcc i32 @rds_next_incoming(ptr noundef %1, ptr noundef nonnull %inc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp ne i32 %call54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeo.0.ph)
  %tobool58.not = icmp eq i32 %timeo.0.ph, 0
  %spec.store.select = select i1 %tobool58.not, i32 1, i32 %timeo.0.ph
  %brmerge = select i1 %tobool55.not, i1 true, i1 %tobool58.not
  %spec.store.select.mux = select i1 %tobool55.not, i32 %spec.store.select, i32 0
  br i1 %brmerge, label %lor.end.if.end108_crit_edge, label %if.then69

lor.end.if.end108_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108

if.then69:                                        ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %20 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %8, align 8
  %call72392 = call i32 @prepare_to_wait_event(ptr noundef %22, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %23 = ptrtoint ptr %rs_notify_queue to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %rs_notify_queue, align 4
  %cmp.i331.not393 = icmp eq ptr %24, %rs_notify_queue
  br i1 %cmp.i331.not393, label %if.then69.lor.lhs.false77_crit_edge, label %if.then69.lor.end83.thread_crit_edge

if.then69.lor.end83.thread_crit_edge:             ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end83.thread

if.then69.lor.lhs.false77_crit_edge:              ; preds = %if.then69
  br label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %cleanup.lor.lhs.false77_crit_edge, %if.then69.lor.lhs.false77_crit_edge
  %call72395 = phi i32 [ %call72, %cleanup.lor.lhs.false77_crit_edge ], [ %call72392, %if.then69.lor.lhs.false77_crit_edge ]
  %__ret70.0394 = phi i32 [ %call105, %cleanup.lor.lhs.false77_crit_edge ], [ %timeo.0.ph, %if.then69.lor.lhs.false77_crit_edge ]
  %25 = ptrtoint ptr %rs_cong_notify to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %rs_cong_notify, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %tobool79.not = icmp eq i64 %26, 0
  br i1 %tobool79.not, label %lor.end83, label %lor.lhs.false77.lor.end83.thread_crit_edge

lor.lhs.false77.lor.end83.thread_crit_edge:       ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end83.thread

lor.end83.thread:                                 ; preds = %cleanup.lor.end83.thread_crit_edge, %lor.lhs.false77.lor.end83.thread_crit_edge, %if.then69.lor.end83.thread_crit_edge
  %__ret70.0.lcssa = phi i32 [ %timeo.0.ph, %if.then69.lor.end83.thread_crit_edge ], [ %__ret70.0394, %lor.lhs.false77.lor.end83.thread_crit_edge ], [ %call105, %cleanup.lor.end83.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret70.0.lcssa)
  %tobool88.not347 = icmp eq i32 %__ret70.0.lcssa, 0
  %spec.store.select248348 = select i1 %tobool88.not347, i32 1, i32 %__ret70.0.lcssa
  br label %for.end

lor.end83:                                        ; preds = %lor.lhs.false77
  %call81 = call fastcc i32 @rds_next_incoming(ptr noundef %1, ptr noundef nonnull %inc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret70.0394)
  %tobool94.not = icmp eq i32 %__ret70.0394, 0
  br i1 %tobool82.not, label %27, label %for.end.loopexit.split.loop.exit387

27:                                               ; preds = %lor.end83
  br i1 %tobool94.not, label %.for.end_crit_edge, label %if.end101

.for.end_crit_edge:                               ; preds = %27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end101:                                        ; preds = %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72395)
  %tobool102.not = icmp eq i32 %call72395, 0
  br i1 %tobool102.not, label %cleanup, label %if.end101.__out_crit_edge

if.end101.__out_crit_edge:                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out

cleanup:                                          ; preds = %if.end101
  %call105 = call i32 @schedule_timeout(i32 noundef %__ret70.0394) #7
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %8, align 8
  %call72 = call i32 @prepare_to_wait_event(ptr noundef %29, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %30 = ptrtoint ptr %rs_notify_queue to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %rs_notify_queue, align 4
  %cmp.i331.not = icmp eq ptr %31, %rs_notify_queue
  br i1 %cmp.i331.not, label %cleanup.lor.lhs.false77_crit_edge, label %cleanup.lor.end83.thread_crit_edge

cleanup.lor.end83.thread_crit_edge:               ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end83.thread

cleanup.lor.lhs.false77_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false77

for.end.loopexit.split.loop.exit387:              ; preds = %lor.end83
  call void @__sanitizer_cov_trace_pc() #9
  %spec.store.select248.le = select i1 %tobool94.not, i32 1, i32 %__ret70.0394
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit.split.loop.exit387, %.for.end_crit_edge, %lor.end83.thread
  %__ret70.2.ph = phi i32 [ %spec.store.select248348, %lor.end83.thread ], [ %spec.store.select248.le, %for.end.loopexit.split.loop.exit387 ], [ 0, %.for.end_crit_edge ]
  %32 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %8, align 8
  call void @finish_wait(ptr noundef %33, ptr noundef nonnull %__wq_entry) #7
  br label %__out

__out:                                            ; preds = %for.end, %if.end101.__out_crit_edge
  %__ret70.2354 = phi i32 [ %__ret70.2.ph, %for.end ], [ %call72395, %if.end101.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end108

if.end108:                                        ; preds = %__out, %lor.end.if.end108_crit_edge, %lor.end.thread
  %__ret.1 = phi i32 [ %__ret70.2354, %__out ], [ %spec.store.select344, %lor.end.thread ], [ %spec.store.select.mux, %lor.end.if.end108_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_recvmsg.__UNIQUE_ID_ddebug558, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_recvmsg, %if.then122)) #7
          to label %do.end125 [label %if.then122], !srcloc !63

if.then122:                                       ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %inc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %inc, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_recvmsg.__UNIQUE_ID_ddebug558, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.8, ptr noundef %35, i32 noundef %__ret.1) #7
  br label %do.end125

do.end125:                                        ; preds = %if.then122, %if.end108
  %cmp = icmp sgt i32 %__ret.1, 0
  br i1 %cmp, label %do.end125.while.cond.outer_crit_edge, label %if.end129

do.end125.while.cond.outer_crit_edge:             ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %do.end125.while.cond.outer_crit_edge, %while.cond.preheader
  %timeo.0.ph = phi i32 [ %cond.i, %while.cond.preheader ], [ %__ret.1, %do.end125.while.cond.outer_crit_edge ]
  %36 = ptrtoint ptr %rs_notify_queue to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %rs_notify_queue, align 4
  %cmp.i.not386 = icmp eq ptr %37, %rs_notify_queue
  br i1 %cmp.i.not386, label %while.cond.outer.if.end29_crit_edge, label %while.cond.outer.if.then27_crit_edge

while.cond.outer.if.then27_crit_edge:             ; preds = %while.cond.outer
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

while.cond.outer.if.end29_crit_edge:              ; preds = %while.cond.outer
  br label %if.end29

if.end129:                                        ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp130 = icmp eq i32 %__ret.1, 0
  %spec.store.select249 = select i1 %cmp130, i32 -110, i32 %__ret.1
  br label %while.end

do.body134:                                       ; preds = %if.end33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_recvmsg.__UNIQUE_ID_ddebug559, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_recvmsg, %if.then146)) #7
          to label %do.end149 [label %if.then146], !srcloc !63

if.then146:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %inc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %inc, align 4
  %i_conn = getelementptr inbounds %struct.rds_incoming, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %i_conn to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i_conn, align 4
  %c_faddr = getelementptr inbounds %struct.rds_connection, ptr %41, i32 0, i32 2
  %h_sport = getelementptr inbounds %struct.rds_incoming, ptr %39, i32 0, i32 4, i32 3
  %42 = ptrtoint ptr %h_sport to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %h_sport, align 4
  %conv = zext i16 %43 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_recvmsg.__UNIQUE_ID_ddebug559, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.8, ptr noundef %39, ptr noundef %c_faddr, i32 noundef %conv) #7
  br label %do.end149

do.end149:                                        ; preds = %if.then146, %do.body134
  %44 = ptrtoint ptr %inc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %inc, align 4
  %i_conn150 = getelementptr inbounds %struct.rds_incoming, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %i_conn150 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %i_conn150, align 4
  %c_trans = getelementptr inbounds %struct.rds_connection, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %c_trans to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %c_trans, align 4
  %inc_copy_to_user = getelementptr inbounds %struct.rds_transport, ptr %49, i32 0, i32 16
  %50 = ptrtoint ptr %inc_copy_to_user to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %inc_copy_to_user, align 4
  %call151 = call i32 %51(ptr noundef %45, ptr noundef %msg_iter) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %cmp152 = icmp slt i32 %call151, 0
  br i1 %cmp152, label %do.end149.while.end_crit_edge, label %if.end155

do.end149.while.end_crit_edge:                    ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end155:                                        ; preds = %do.end149
  %call160 = call fastcc i32 @rds_still_queued(ptr noundef %1, ptr noundef %45, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.then162, label %if.end181

if.then162:                                       ; preds = %if.end155
  call void @rds_inc_put(ptr noundef %45)
  %52 = ptrtoint ptr %inc to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %inc, align 4
  %53 = call i32 @llvm.read_register.i32(metadata !53) #7
  %and.i.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %56, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !86
  %57 = call i32 @llvm.read_register.i32(metadata !53) #7
  %and.i333 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i333 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %60
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx, align 4
  %add = add i32 %62, ptrtoint (ptr @rds_stats to i32)
  %63 = inttoptr i32 %add to ptr
  %s_recv_deliver_raced = getelementptr inbounds %struct.rds_statistics, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %s_recv_deliver_raced to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %s_recv_deliver_raced, align 8
  %inc174 = add i64 %65, 1
  store i64 %inc174, ptr %s_recv_deliver_raced, align 8
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !87
  %66 = call i32 @llvm.read_register.i32(metadata !53) #7
  %and.i.i.i321 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i321 to ptr
  %preempt_count.i.i322 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i322 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i322, align 4
  %sub.i = add i32 %69, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i322, align 4
  call void @iov_iter_revert(ptr noundef %msg_iter, i32 noundef %call151) #7
  %70 = ptrtoint ptr %rs_notify_queue to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile ptr, ptr %rs_notify_queue, align 4
  %cmp.i.not = icmp eq ptr %71, %rs_notify_queue
  br i1 %cmp.i.not, label %if.then162.if.end29_crit_edge, label %if.then162.if.then27_crit_edge

if.then162.if.then27_crit_edge:                   ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then27

if.then162.if.end29_crit_edge:                    ; preds = %if.then162
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.end181:                                        ; preds = %if.end155
  %h_len = getelementptr inbounds %struct.rds_incoming, ptr %45, i32 0, i32 4, i32 2
  %72 = ptrtoint ptr %h_len to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %h_len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call151, i32 %73)
  %cmp183 = icmp ult i32 %call151, %73
  br i1 %cmp183, label %if.then185, label %if.end181.if.end193_crit_edge

if.end181.if.end193_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end193

if.then185:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #9
  %and186 = and i32 %msg_flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %tobool187.not = icmp eq i32 %and186, 0
  %spec.select = select i1 %tobool187.not, i32 %call151, i32 %73
  %msg_flags192 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %74 = ptrtoint ptr %msg_flags192 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %msg_flags192, align 4
  %or = or i32 %75, 32
  store i32 %or, ptr %msg_flags192, align 4
  br label %if.end193

if.end193:                                        ; preds = %if.then185, %if.end181.if.end193_crit_edge
  %ret.1 = phi i32 [ %spec.select, %if.then185 ], [ %call151, %if.end181.if.end193_crit_edge ]
  %i_usercopy.i = getelementptr inbounds %struct.rds_incoming, ptr %45, i32 0, i32 7
  %76 = ptrtoint ptr %i_usercopy.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %i_usercopy.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %77)
  %tobool.not.i334 = icmp eq i64 %77, 0
  br i1 %tobool.not.i334, label %if.end193.if.end5.i_crit_edge, label %if.then.i

if.end193.if.end5.i_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then.i:                                        ; preds = %if.end193
  %call.i335 = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 276, i32 noundef 2, i32 noundef 8, ptr noundef %i_usercopy.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i335)
  %tobool3.not.i = icmp eq i32 %call.i335, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end5.i_crit_edge, label %if.then.i.while.end_crit_edge

if.then.i.while.end_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %if.end193.if.end5.i_crit_edge
  %rx_tstamp.i = getelementptr inbounds %struct.rds_incoming, ptr %45, i32 0, i32 7, i32 1
  %78 = ptrtoint ptr %rx_tstamp.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %rx_tstamp.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %79)
  %cmp.not.i = icmp eq i64 %79, 0
  br i1 %cmp.not.i, label %if.end5.i.if.end24.i_crit_edge, label %land.lhs.true.i

if.end5.i.if.end24.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

land.lhs.true.i:                                  ; preds = %if.end5.i
  %80 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %80, align 4
  %83 = and i32 %82, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.i.not.i = icmp eq i32 %83, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i.if.end24.i_crit_edge, label %if.then9.i

land.lhs.true.i.if.end24.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tv.i) #7
  %84 = ptrtoint ptr %tv.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -1, ptr %tv.i, align 4, !annotation !75
  %85 = getelementptr inbounds %struct.__kernel_old_timeval, ptr %tv.i, i32 0, i32 1
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %85, align 4, !annotation !75
  call void @ns_to_kernel_old_timeval(ptr nonnull sret(%struct.__kernel_old_timeval) align 4 %tv.i, i64 noundef %79) #7
  %87 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %80, align 4
  %89 = and i32 %88, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.i79.not.i = icmp eq i32 %89, 0
  br i1 %tobool.i79.not.i, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 1, i32 noundef 29, i32 noundef 8, ptr noundef nonnull %tv.i) #7
  br label %if.end20.i

if.else.i:                                        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sk_tv.i) #7
  %90 = getelementptr inbounds %struct.__kernel_sock_timeval, ptr %sk_tv.i, i32 0, i32 1
  %91 = ptrtoint ptr %tv.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tv.i, align 4
  %conv.i336 = sext i32 %92 to i64
  %93 = ptrtoint ptr %sk_tv.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %conv.i336, ptr %sk_tv.i, align 8
  %94 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %85, align 4
  %conv17.i = sext i32 %95 to i64
  %96 = ptrtoint ptr %90 to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %conv17.i, ptr %90, align 8
  %call19.i = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 1, i32 noundef 63, i32 noundef 16, ptr noundef nonnull %sk_tv.i) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sk_tv.i) #7
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i, %if.then14.i
  %ret.1.i = phi i32 [ %call19.i, %if.else.i ], [ %call15.i, %if.then14.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool21.not.i = icmp eq i32 %ret.1.i, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tv.i) #7
  br i1 %tobool21.not.i, label %if.end20.i.if.end24.i_crit_edge, label %if.end20.i.while.end_crit_edge

if.end20.i.while.end_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end20.i.if.end24.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.end20.i.if.end24.i_crit_edge, %land.lhs.true.i.if.end24.i_crit_edge, %if.end5.i.if.end24.i_crit_edge
  %rs_rx_traces.i = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 29
  %97 = ptrtoint ptr %rs_rx_traces.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %rs_rx_traces.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool25.not.i = icmp eq i8 %98, 0
  br i1 %tobool25.not.i, label %if.end24.i.if.end197_crit_edge, label %if.then26.i

if.end24.i.if.end197_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end197

if.then26.i:                                      ; preds = %if.end24.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %t.i) #7
  %99 = call ptr @memset(ptr %t.i, i32 0, i32 32)
  %call.i.i = call i64 @sched_clock() #7
  %arrayidx.i = getelementptr %struct.rds_incoming, ptr %45, i32 0, i32 8, i32 3
  %100 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 %call.i.i, ptr %arrayidx.i, align 8
  %101 = ptrtoint ptr %rs_rx_traces.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %rs_rx_traces.i, align 8
  %103 = ptrtoint ptr %t.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %t.i, align 8
  %conv30.i = zext i8 %102 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %cmp3180.not.i = icmp eq i8 %102, 0
  br i1 %cmp3180.not.i, label %if.then26.i.rds_cmsg_recv.exit_crit_edge, label %if.then26.i.for.body.i_crit_edge

if.then26.i.for.body.i_crit_edge:                 ; preds = %if.then26.i
  br label %for.body.i

if.then26.i.rds_cmsg_recv.exit_crit_edge:         ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rds_cmsg_recv.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then26.i.for.body.i_crit_edge
  %i.081.i = phi i32 [ %inc42.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then26.i.for.body.i_crit_edge ]
  %arrayidx33.i = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 30, i32 %i.081.i
  %104 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx33.i, align 1
  %conv34.i = zext i8 %105 to i32
  %arrayidx36.i = getelementptr %struct.rds_cmsg_rx_trace, ptr %t.i, i32 0, i32 1, i32 %i.081.i
  %106 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %arrayidx36.i, align 1
  %add.i337 = add nuw nsw i32 %conv34.i, 1
  %arrayidx38.i = getelementptr %struct.rds_incoming, ptr %45, i32 0, i32 8, i32 %add.i337
  %107 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %arrayidx38.i, align 8
  %arrayidx40.i = getelementptr %struct.rds_incoming, ptr %45, i32 0, i32 8, i32 %conv34.i
  %109 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %arrayidx40.i, align 8
  %sub.i338 = sub i64 %108, %110
  %arrayidx41.i = getelementptr %struct.rds_cmsg_rx_trace, ptr %t.i, i32 0, i32 2, i32 %i.081.i
  %111 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %sub.i338, ptr %arrayidx41.i, align 8
  %inc42.i = add nuw nsw i32 %i.081.i, 1
  %exitcond.not.i = icmp eq i32 %inc42.i, %conv30.i
  br i1 %exitcond.not.i, label %for.body.i.rds_cmsg_recv.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.rds_cmsg_recv.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rds_cmsg_recv.exit

rds_cmsg_recv.exit:                               ; preds = %for.body.i.rds_cmsg_recv.exit_crit_edge, %if.then26.i.rds_cmsg_recv.exit_crit_edge
  %call43.i = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 276, i32 noundef 11, i32 noundef 32, ptr noundef nonnull %t.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %t.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool195.not = icmp eq i32 %call43.i, 0
  br i1 %tobool195.not, label %rds_cmsg_recv.exit.if.end197_crit_edge, label %rds_cmsg_recv.exit.while.end_crit_edge

rds_cmsg_recv.exit.while.end_crit_edge:           ; preds = %rds_cmsg_recv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

rds_cmsg_recv.exit.if.end197_crit_edge:           ; preds = %rds_cmsg_recv.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end197

if.end197:                                        ; preds = %rds_cmsg_recv.exit.if.end197_crit_edge, %if.end24.i.if.end197_crit_edge
  %call198 = call fastcc zeroext i1 @rds_recvmsg_zcookie(ptr noundef %1, ptr noundef %msg)
  %112 = call i32 @llvm.read_register.i32(metadata !53) #7
  %and.i.i.i323 = and i32 %112, -16384
  %113 = inttoptr i32 %and.i.i.i323 to ptr
  %preempt_count.i.i324 = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %preempt_count.i.i324 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %preempt_count.i.i324, align 4
  %add.i325 = add i32 %115, 1
  store volatile i32 %add.i325, ptr %preempt_count.i.i324, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !88
  %116 = call i32 @llvm.read_register.i32(metadata !53) #7
  %and.i340 = and i32 %116, -16384
  %117 = inttoptr i32 %and.i340 to ptr
  %cpu212 = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 3
  %118 = ptrtoint ptr %cpu212 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %cpu212, align 4
  %arrayidx213 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %119
  %120 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx213, align 4
  %add214 = add i32 %121, ptrtoint (ptr @rds_stats to i32)
  %122 = inttoptr i32 %add214 to ptr
  %s_recv_delivered = getelementptr inbounds %struct.rds_statistics, ptr %122, i32 0, i32 6
  %123 = ptrtoint ptr %s_recv_delivered to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %s_recv_delivered, align 8
  %inc215 = add i64 %124, 1
  store i64 %inc215, ptr %s_recv_delivered, align 8
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !89
  %125 = call i32 @llvm.read_register.i32(metadata !53) #7
  %and.i.i.i326 = and i32 %125, -16384
  %126 = inttoptr i32 %and.i.i.i326 to ptr
  %preempt_count.i.i327 = getelementptr inbounds %struct.thread_info, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %preempt_count.i.i327 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %preempt_count.i.i327, align 4
  %sub.i328 = add i32 %128, -1
  store volatile i32 %sub.i328, ptr %preempt_count.i.i327, align 4
  %129 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %msg, align 8
  %tobool222.not = icmp eq ptr %130, null
  br i1 %tobool222.not, label %if.end197.while.end_crit_edge, label %if.then223

if.end197.while.end_crit_edge:                    ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.then223:                                       ; preds = %if.end197
  %i_saddr = getelementptr inbounds %struct.rds_incoming, ptr %45, i32 0, i32 6
  %131 = ptrtoint ptr %i_saddr to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %i_saddr, align 4
  %arrayidx2.i = getelementptr %struct.rds_incoming, ptr %45, i32 0, i32 6, i32 0, i32 0, i32 1
  %133 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %134, %132
  %arrayidx4.i = getelementptr %struct.rds_incoming, ptr %45, i32 0, i32 6, i32 0, i32 0, i32 2
  %135 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx4.i, align 4
  %xor.i = xor i32 %136, 65535
  %or5.i = or i32 %or.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %cmp.i341 = icmp eq i32 %or5.i, 0
  br i1 %cmp.i341, label %if.then225, label %if.else

if.then225:                                       ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #9
  %137 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 2, ptr %3, align 4
  %h_sport227 = getelementptr inbounds %struct.rds_incoming, ptr %45, i32 0, i32 4, i32 3
  %138 = ptrtoint ptr %h_sport227 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %h_sport227, align 4
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %3, i32 0, i32 1
  %140 = ptrtoint ptr %sin_port to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %139, ptr %sin_port, align 2
  %arrayidx229 = getelementptr %struct.rds_incoming, ptr %45, i32 0, i32 6, i32 0, i32 0, i32 3
  %141 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx229, align 4
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %3, i32 0, i32 2
  %143 = ptrtoint ptr %sin_addr to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %sin_addr, align 4
  %__pad = getelementptr inbounds %struct.sockaddr_in, ptr %3, i32 0, i32 3
  %144 = ptrtoint ptr %__pad to i32
  call void @__asan_storeN_noabort(i32 %144, i32 8)
  store i64 0, ptr %__pad, align 4
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %145 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 16, ptr %msg_namelen, align 4
  br label %while.end

if.else:                                          ; preds = %if.then223
  call void @__sanitizer_cov_trace_pc() #9
  %146 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 10, ptr %3, align 4
  %h_sport231 = getelementptr inbounds %struct.rds_incoming, ptr %45, i32 0, i32 4, i32 3
  %147 = ptrtoint ptr %h_sport231 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %h_sport231, align 4
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %3, i32 0, i32 1
  %149 = ptrtoint ptr %sin6_port to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %148, ptr %sin6_port, align 2
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %3, i32 0, i32 3
  %150 = call ptr @memcpy(ptr %sin6_addr, ptr %i_saddr, i32 16)
  %sin6_flowinfo = getelementptr inbounds %struct.sockaddr_in6, ptr %3, i32 0, i32 2
  %151 = ptrtoint ptr %sin6_flowinfo to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %sin6_flowinfo, align 4
  %sin6_scope_id = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 5, i32 4
  %152 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %sin6_scope_id, align 4
  %sin6_scope_id233 = getelementptr inbounds %struct.sockaddr_in6, ptr %3, i32 0, i32 4
  %154 = ptrtoint ptr %sin6_scope_id233 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %sin6_scope_id233, align 4
  %msg_namelen234 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %155 = ptrtoint ptr %msg_namelen234 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 28, ptr %msg_namelen234, align 4
  br label %while.end

while.end:                                        ; preds = %if.else, %if.then225, %if.end197.while.end_crit_edge, %rds_cmsg_recv.exit.while.end_crit_edge, %if.end20.i.while.end_crit_edge, %if.then.i.while.end_crit_edge, %do.end149.while.end_crit_edge, %if.end129, %if.then38, %rds_notify_cong.exit, %if.then27
  %ret.2 = phi i32 [ %call.i, %rds_notify_cong.exit ], [ %ret.1, %if.then225 ], [ %ret.1, %if.else ], [ %ret.1, %if.end197.while.end_crit_edge ], [ %cond, %if.then38 ], [ %spec.store.select249, %if.end129 ], [ %call28, %if.then27 ], [ -14, %rds_cmsg_recv.exit.while.end_crit_edge ], [ -14, %if.then.i.while.end_crit_edge ], [ -14, %if.end20.i.while.end_crit_edge ], [ %call151, %do.end149.while.end_crit_edge ]
  %156 = ptrtoint ptr %inc to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %inc, align 4
  %tobool237.not = icmp eq ptr %157, null
  br i1 %tobool237.not, label %while.end.cleanup240_crit_edge, label %if.then238

while.end.cleanup240_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup240

if.then238:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @rds_inc_put(ptr noundef nonnull %157)
  br label %cleanup240

cleanup240:                                       ; preds = %if.then238, %while.end.cleanup240_crit_edge, %if.then22, %do.end15.cleanup240_crit_edge
  %retval.0 = phi i32 [ %call23, %if.then22 ], [ 0, %do.end15.cleanup240_crit_edge ], [ %ret.2, %if.then238 ], [ %ret.2, %while.end.cleanup240_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inc) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_recv_errqueue(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rds_next_incoming(ptr noundef %rs, ptr nocapture noundef %inc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %inc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

do.body:                                          ; preds = %entry
  %rs_recv_lock = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 21
  %call = tail call i32 @_raw_read_lock_irqsave(ptr noundef %rs_recv_lock) #7
  %rs_recv_queue = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 22
  %2 = ptrtoint ptr %rs_recv_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %rs_recv_queue, align 4
  %cmp.i.not = icmp eq ptr %3, %rs_recv_queue
  br i1 %cmp.i.not, label %do.body.do.body6_crit_edge, label %if.then3

do.body.do.body6_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6

if.then3:                                         ; preds = %do.body
  %add.ptr = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %inc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %inc, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_inc_addref.__UNIQUE_ID_ddebug544, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_next_incoming, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !63

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef 4) #7
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_inc_addref.__UNIQUE_ID_ddebug544, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, ptr noundef %add.ptr, i32 noundef %6) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #7
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 1, ptr elementtype(i32) %add.ptr) #7, !srcloc !78
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %do.end.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !79

do.end.i.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %do.end.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.do.body6_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !66

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.do.body6_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %do.end.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %do.end.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %add.ptr, i32 noundef %.sink.i.i.i.i) #7
  br label %do.body6

do.body6:                                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.do.body6_crit_edge, %do.body.do.body6_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %rs_recv_lock, i32 noundef %call) #7
  br label %if.end15

if.end15:                                         ; preds = %do.body6, %entry.if.end15_crit_edge
  %9 = ptrtoint ptr %inc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %inc, align 4
  %cmp16 = icmp ne ptr %10, null
  %conv17 = zext i1 %cmp16 to i32
  ret i32 %conv17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @rds_recvmsg_zcookie(ptr noundef %rs, ptr noundef %msg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rs_zcookie_queue = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 31
  %0 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 3
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = getelementptr inbounds %struct.sock_common, ptr %rs, i32 0, i32 13
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %6 = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not = icmp eq i32 %6, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %msg_controllen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 5
  %7 = ptrtoint ptr %msg_controllen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_controllen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %8)
  %cmp = icmp ult i32 %8, 48
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %do.body4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body4:                                         ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 31, i32 1
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %9 = ptrtoint ptr %rs_zcookie_queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %rs_zcookie_queue, align 4
  %cmp.i.not = icmp eq ptr %10, %rs_zcookie_queue
  br i1 %cmp.i.not, label %if.end15.thread, label %if.then12

if.end15.thread:                                  ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #7
  br label %cleanup

if.then12:                                        ; preds = %do.body4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then12.if.end15_crit_edge

if.then12.if.end15_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.end.i.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end.i.i, %if.then12.if.end15_crit_edge
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #7
  %tobool17.not = icmp eq ptr %10, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %19 = getelementptr inbounds %struct.rds_msg_zcopy_info, ptr %10, i32 0, i32 1
  %call20 = tail call i32 @put_cmsg(ptr noundef %msg, i32 noundef 276, i32 noundef 13, i32 noundef 36, ptr noundef %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end40, label %do.body24

do.body24:                                        ; preds = %if.end19
  %call32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %20 = ptrtoint ptr %rs_zcookie_queue to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rs_zcookie_queue, align 4
  %call.i.i58 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %10, ptr noundef %rs_zcookie_queue, ptr noundef %21) #7
  br i1 %call.i.i58, label %if.end.i.i59, label %do.body24.list_add.exit_crit_edge

do.body24.list_add.exit_crit_edge:                ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i59:                                     ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %10, ptr %prev1.i.i, align 4
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %10, align 4
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %rs_zcookie_queue, ptr %prev.i, align 4
  %25 = ptrtoint ptr %rs_zcookie_queue to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %10, ptr %rs_zcookie_queue, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i59, %do.body24.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call32) #7
  br label %cleanup

if.end40:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %10) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %list_add.exit, %if.end15.cleanup_crit_edge, %if.end15.thread, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %list_add.exit ], [ true, %if.end40 ], [ false, %entry.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end15.cleanup_crit_edge ], [ false, %if.end15.thread ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rds_still_queued(ptr noundef %rs, ptr noundef %inc, i32 noundef %drop) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rs_recv_lock = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 21
  %call1 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %rs_recv_lock) #7
  %i_item = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 1
  %0 = ptrtoint ptr %i_item to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %i_item, align 4
  %cmp.i.not = icmp eq ptr %1, %i_item
  br i1 %cmp.i.not, label %entry.do.body8_crit_edge, label %if.then

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %drop)
  %tobool3.not = icmp eq i32 %drop, 0
  br i1 %tobool3.not, label %if.then.do.body8_crit_edge, label %if.then4

if.then.do.body8_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body8

if.then4:                                         ; preds = %if.then
  %i_conn = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 2
  %2 = ptrtoint ptr %i_conn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_conn, align 4
  %c_lcong = getelementptr inbounds %struct.rds_connection, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %c_lcong to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %c_lcong, align 4
  %h_len = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %h_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %h_len, align 8
  %sub = sub i32 0, %7
  %h_dport = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 4, i32 4
  %8 = ptrtoint ptr %h_dport to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %h_dport, align 2
  tail call fastcc void @rds_recv_rcvbuf_delta(ptr noundef %rs, ptr noundef %5, i32 noundef %sub, i16 noundef zeroext %9)
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %i_item) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then4.list_del_init.exit_crit_edge

if.then4.list_del_init.exit_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %i_item to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_item, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then4.list_del_init.exit_crit_edge
  %16 = ptrtoint ptr %i_item to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %i_item, ptr %i_item, align 4
  %prev.i3.i = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %i_item, ptr %prev.i3.i, align 4
  tail call void @rds_inc_put(ptr noundef %inc)
  br label %do.body8

do.body8:                                         ; preds = %list_del_init.exit, %if.then.do.body8_crit_edge, %entry.do.body8_crit_edge
  %ret.0 = phi i32 [ 0, %entry.do.body8_crit_edge ], [ 1, %list_del_init.exit ], [ 1, %if.then.do.body8_crit_edge ]
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %rs_recv_lock, i32 noundef %call1) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_still_queued.__UNIQUE_ID_ddebug554, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_still_queued, %if.then23)) #7
          to label %do.end26 [label %if.then23], !srcloc !63

if.then23:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_still_queued.__UNIQUE_ID_ddebug554, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, ptr noundef %inc, ptr noundef %rs, i32 noundef %ret.0, i32 noundef %drop) #7
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %do.body8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_clear_recv_queue(ptr noundef %rs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rs_recv_lock = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 21
  %call2 = tail call i32 @_raw_write_lock_irqsave(ptr noundef %rs_recv_lock) #7
  %rs_recv_queue = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 22
  %0 = ptrtoint ptr %rs_recv_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rs_recv_queue, align 8
  %cmp10.not41 = icmp eq ptr %1, %rs_recv_queue
  br i1 %cmp10.not41, label %entry.do.body19_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in42 = phi ptr [ %.pn, %list_del_init.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %inc.0 = getelementptr i8, ptr %.pn.in42, i32 -4
  %2 = ptrtoint ptr %.pn.in42 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in42, align 4
  %i_conn = getelementptr i8, ptr %.pn.in42, i32 8
  %3 = ptrtoint ptr %i_conn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_conn, align 4
  %c_lcong = getelementptr inbounds %struct.rds_connection, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %c_lcong to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %c_lcong, align 4
  %h_len = getelementptr i8, ptr %.pn.in42, i32 36
  %7 = ptrtoint ptr %h_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %h_len, align 8
  %sub = sub i32 0, %8
  %h_dport = getelementptr i8, ptr %.pn.in42, i32 42
  %9 = ptrtoint ptr %h_dport to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %h_dport, align 2
  tail call fastcc void @rds_recv_rcvbuf_delta(ptr noundef %rs, ptr noundef %6, i32 noundef %sub, i16 noundef zeroext %10)
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in42) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in42, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %.pn.in42 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.pn.in42, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %17 = ptrtoint ptr %.pn.in42 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %.pn.in42, ptr %.pn.in42, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in42, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %.pn.in42, ptr %prev.i3.i, align 4
  tail call void @rds_inc_put(ptr noundef %inc.0)
  %cmp10.not = icmp eq ptr %.pn, %rs_recv_queue
  br i1 %cmp10.not, label %list_del_init.exit.do.body19_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

list_del_init.exit.do.body19_crit_edge:           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body19

do.body19:                                        ; preds = %list_del_init.exit.do.body19_crit_edge, %entry.do.body19_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef %rs_recv_lock, i32 noundef %call2) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_inc_info_copy(ptr nocapture noundef readonly %inc, ptr noundef %iter, i32 noundef %saddr, i32 noundef %daddr, i32 noundef %flip) local_unnamed_addr #0 align 64 {
entry:
  %minfo = alloca %struct.rds_info_message, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 26, ptr nonnull %minfo) #7
  %0 = getelementptr inbounds %struct.rds_info_message, ptr %minfo, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rds_info_message, ptr %minfo, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rds_info_message, ptr %minfo, i32 0, i32 3
  %3 = getelementptr inbounds %struct.rds_info_message, ptr %minfo, i32 0, i32 4
  %4 = getelementptr inbounds %struct.rds_info_message, ptr %minfo, i32 0, i32 7
  %i_hdr = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 4
  %5 = getelementptr inbounds i8, ptr %minfo, i32 8
  %6 = call ptr @memset(ptr %5, i32 255, i32 16)
  %7 = ptrtoint ptr %i_hdr to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %i_hdr, align 8
  %9 = ptrtoint ptr %minfo to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %minfo, align 8
  %h_len = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %h_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %h_len, align 8
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %0, align 8
  %i_conn = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 2
  %13 = ptrtoint ptr %i_conn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_conn, align 4
  %c_tos = getelementptr inbounds %struct.rds_connection, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %c_tos to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %c_tos, align 4
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flip)
  %tobool.not = icmp eq i32 %flip, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %daddr, ptr %1, align 4
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %saddr, ptr %2, align 8
  %h_dport = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 4, i32 4
  %20 = ptrtoint ptr %h_dport to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %h_dport, align 2
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %3, align 4
  %h_sport = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 4, i32 3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %saddr, ptr %1, align 4
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %daddr, ptr %2, align 8
  %h_sport7 = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 4, i32 3
  %25 = ptrtoint ptr %h_sport7 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %h_sport7, align 4
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %3, align 4
  %h_dport10 = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 4, i32 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge.in = phi ptr [ %h_sport, %if.then ], [ %h_dport10, %if.else ]
  %28 = getelementptr inbounds %struct.rds_info_message, ptr %minfo, i32 0, i32 6
  %29 = getelementptr inbounds %struct.rds_info_message, ptr %minfo, i32 0, i32 5
  %30 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load2_noabort(i32 %30)
  %storemerge = load i16, ptr %storemerge.in, align 2
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %storemerge, ptr %29, align 2
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %28, align 8
  call void @rds_info_copy(ptr noundef %iter, ptr noundef nonnull %minfo, i32 noundef 26) #7
  call void @llvm.lifetime.end.p0(i64 26, ptr nonnull %minfo) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_info_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds6_inc_info_copy(ptr nocapture noundef readonly %inc, ptr noundef %iter, ptr nocapture noundef readonly %saddr, ptr nocapture noundef readonly %daddr, i32 noundef %flip) local_unnamed_addr #0 align 64 {
entry:
  %minfo6 = alloca %struct.rds6_info_message, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %minfo6) #7
  %0 = getelementptr inbounds i8, ptr %minfo6, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 40)
  %i_hdr = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 4
  %2 = ptrtoint ptr %i_hdr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %i_hdr, align 8
  %4 = ptrtoint ptr %minfo6 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %minfo6, align 8
  %h_len = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %h_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %h_len, align 8
  %len = getelementptr inbounds %struct.rds6_info_message, ptr %minfo6, i32 0, i32 1
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %len, align 8
  %i_conn = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 2
  %8 = ptrtoint ptr %i_conn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_conn, align 4
  %c_tos = getelementptr inbounds %struct.rds_connection, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %c_tos to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %c_tos, align 4
  %tos = getelementptr inbounds %struct.rds6_info_message, ptr %minfo6, i32 0, i32 7
  %12 = ptrtoint ptr %tos to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %tos, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flip)
  %tobool.not = icmp eq i32 %flip, 0
  %laddr4 = getelementptr inbounds %struct.rds6_info_message, ptr %minfo6, i32 0, i32 2
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = call ptr @memcpy(ptr %laddr4, ptr %daddr, i32 16)
  %faddr = getelementptr inbounds %struct.rds6_info_message, ptr %minfo6, i32 0, i32 3
  %14 = call ptr @memcpy(ptr %faddr, ptr %saddr, i32 16)
  %h_dport = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 4, i32 4
  %h_sport = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 4, i32 3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %15 = call ptr @memcpy(ptr %laddr4, ptr %saddr, i32 16)
  %faddr5 = getelementptr inbounds %struct.rds6_info_message, ptr %minfo6, i32 0, i32 3
  %16 = call ptr @memcpy(ptr %faddr5, ptr %daddr, i32 16)
  %h_sport7 = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 4, i32 3
  %h_dport10 = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 4, i32 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink20.in = phi ptr [ %h_sport7, %if.else ], [ %h_dport, %if.then ]
  %.sink.in = phi ptr [ %h_dport10, %if.else ], [ %h_sport, %if.then ]
  %17 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load2_noabort(i32 %17)
  %.sink = load i16, ptr %.sink.in, align 2
  %18 = ptrtoint ptr %.sink20.in to i32
  call void @__asan_load2_noabort(i32 %18)
  %.sink20 = load i16, ptr %.sink20.in, align 2
  %19 = getelementptr inbounds %struct.rds6_info_message, ptr %minfo6, i32 0, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %.sink20, ptr %19, align 4
  %21 = getelementptr inbounds %struct.rds6_info_message, ptr %minfo6, i32 0, i32 5
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %.sink, ptr %21, align 2
  %flags = getelementptr inbounds %struct.rds6_info_message, ptr %minfo6, i32 0, i32 6
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %flags, align 8
  call void @rds_info_copy(ptr noundef %iter, ptr noundef nonnull %minfo6, i32 noundef 50) #7
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %minfo6) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_message_next_extension(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_addr_cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_conn_path_connect_if_down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_rdma_unuse(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_cong_set_bit(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_cong_queue_updates(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_cong_clear_bit(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_kernel_old_timeval(ptr sret(%struct.__kernel_old_timeval) align 4, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !16, !18, !19, !21, !22, !24, !26, !27, !28, !30, !31, !33, !34, !36, !37, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52}
!llvm.named.register.sp = !{!53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__ksymtab_rds_inc_init, !1, !"__ksymtab_rds_inc_init", i1 false, i1 false}
!1 = !{!"../net/rds/recv.c", i32 55, i32 1}
!2 = !{ptr @__ksymtab_rds_inc_path_init, !3, !"__ksymtab_rds_inc_path_init", i1 false, i1 false}
!3 = !{!"../net/rds/recv.c", i32 68, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/rds/recv.c", i32 78, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @rds_inc_put.__UNIQUE_ID_ddebug545, !5, !"__UNIQUE_ID_ddebug545", i1 false, i1 false}
!10 = !{ptr @__ksymtab_rds_inc_put, !11, !"__ksymtab_rds_inc_put", i1 false, i1 false}
!11 = !{!"../net/rds/recv.c", i32 85, i32 1}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/rds/recv.c", i32 298, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @rds_recv_incoming.__UNIQUE_ID_ddebug551, !13, !"__UNIQUE_ID_ddebug551", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/rds/recv.c", i32 338, i32 4}
!18 = !{ptr @rds_recv_incoming.__UNIQUE_ID_ddebug552, !17, !"__UNIQUE_ID_ddebug552", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/rds/recv.c", i32 377, i32 3}
!21 = !{ptr @rds_recv_incoming.__UNIQUE_ID_ddebug553, !20, !"__UNIQUE_ID_ddebug553", i1 false, i1 false}
!22 = !{ptr @__ksymtab_rds_recv_incoming, !23, !"__ksymtab_rds_recv_incoming", i1 false, i1 false}
!23 = !{!"../net/rds/recv.c", i32 397, i32 1}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/rds/recv.c", i32 647, i32 2}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @rds_recvmsg.__UNIQUE_ID_ddebug557, !25, !"__UNIQUE_ID_ddebug557", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/rds/recv.c", i32 678, i32 4}
!30 = !{ptr @rds_recvmsg.__UNIQUE_ID_ddebug558, !29, !"__UNIQUE_ID_ddebug558", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/rds/recv.c", i32 689, i32 3}
!33 = !{ptr @rds_recvmsg.__UNIQUE_ID_ddebug559, !32, !"__UNIQUE_ID_ddebug559", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/rds/recv.c", i32 224, i32 4}
!36 = !{ptr @rds_recv_hs_exthdrs._rs, !35, !"_rs", i1 false, i1 false}
!37 = !{ptr @__func__.rds_recv_hs_exthdrs, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @rds_recv_hs_exthdrs._entry, !35, !"_entry", i1 false, i1 false}
!40 = !{ptr @rds_recv_hs_exthdrs._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/rds/recv.c", i32 108, i32 2}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @rds_recv_rcvbuf_delta.__UNIQUE_ID_ddebug546, !42, !"__UNIQUE_ID_ddebug546", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/rds/recv.c", i32 72, i32 2}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @rds_inc_addref.__UNIQUE_ID_ddebug544, !46, !"__UNIQUE_ID_ddebug544", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/rds/recv.c", i32 442, i32 2}
!51 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @rds_still_queued.__UNIQUE_ID_ddebug554, !50, !"__UNIQUE_ID_ddebug554", i1 false, i1 false}
!53 = !{!"sp"}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i64 2148713495, i64 2148713500, i64 2148713513, i64 2148713557, i64 2148713591, i64 2148713612}
!64 = !{i64 2148321211}
!65 = !{i64 2148235675, i64 2148235707, i64 2148235736, i64 2148235770, i64 2148235801, i64 2148235824}
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = !{i64 2149889800}
!68 = !{i64 2158211256, i64 2158211734, i64 2158211293, i64 2158211349, i64 2158211383, i64 2158211407, i64 2158211448, i64 2158211469, i64 2158211497, i64 2158211531}
!69 = !{i64 2158244952}
!70 = !{i64 2158245125}
!71 = !{i64 2158249531}
!72 = !{i64 2158249704}
!73 = !{i64 2158252117}
!74 = !{i64 2158252290}
!75 = !{!"auto-init"}
!76 = !{i64 2158256887}
!77 = !{i64 2158257060}
!78 = !{i64 2148233210, i64 2148233242, i64 2148233271, i64 2148233305, i64 2148233336, i64 2148233359}
!79 = !{!"branch_weights", i32 1, i32 2000}
!80 = !{i64 2158258925}
!81 = !{i64 2158259098}
!82 = !{i64 2158215679}
!83 = !{i64 2158215852}
!84 = !{i64 2158217704}
!85 = !{i64 2158217877}
!86 = !{i64 2158288492}
!87 = !{i64 2158288665}
!88 = !{i64 2158290591}
!89 = !{i64 2158290764}
