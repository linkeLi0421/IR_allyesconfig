; ModuleID = '/llk/IR_all_yes/net/rds/af_rds.c_pt.bc'
source_filename = "../net/rds/af_rds.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.115, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.115 = type { ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rds_sock = type { %struct.sock, i64, i64, %struct.rhash_head, [22 x i8], %struct.sockaddr_in6, %struct.in6_addr, i16, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, i32, i32, %struct.list_head, i64, i64, %struct.list_head, i32, %struct.rwlock_t, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.rb_root, i8, i8, i32, i8, [3 x i8], %struct.rds_msg_zcopy_queue, i8 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.120, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.121, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.122, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.2, %union.anon.4, %union.anon.5, i16, i8, i8, i32, %union.anon.7, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.116, [0 x i32], %union.anon.117, i16, i16, %union.anon.118, %struct.refcount_struct, [0 x i32], %union.anon.119 }
%union.anon.2 = type { i64 }
%union.anon.4 = type { i32 }
%union.anon.5 = type { i32 }
%union.anon.7 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { %struct.hlist_node }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.120 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.121 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.122 = type { ptr }
%struct.sk_buff_head = type { %union.anon.67, i32, %struct.spinlock }
%union.anon.67 = type { %struct.anon.68 }
%struct.anon.68 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.rhash_head = type { ptr }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.43 }
%union.anon.43 = type { [4 x i32] }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.rb_root = type { ptr }
%struct.rds_msg_zcopy_queue = type { %struct.list_head, %struct.spinlock }
%struct.rds_info_socket = type <{ i32, i32, i32, i16, i16, i32, i64 }>
%struct.rds_info_lengths = type { i32, i32 }
%struct.rds6_info_socket = type <{ i32, %struct.in6_addr, %struct.in6_addr, i16, i16, i32, i64 }>
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.rds_transport = type { [16 x i8], %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rds_rx_trace_so = type { i8, [3 x i8] }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rds_poll_waitq.lock\00", [44 x i8] zeroinitializer }, align 32
@rds_poll_waitq = dso_local global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @rds_poll_waitq, i64 44), ptr getelementptr (i8, ptr @rds_poll_waitq, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@__exitcall_rds_exit = internal global ptr @rds_exit, section ".exitcall.exit", align 4
@__initcall__kmod_rds__544_953_rds_init6 = internal global ptr @rds_init, section ".initcall6.init", align 4
@__UNIQUE_ID_author545 = internal constant [57 x i8] c"rds.author=Oracle Corporation <rds-devel@oss.oracle.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description546 = internal constant [67 x i8] c"rds.description=RDS: Reliable Datagram Sockets v4.0 (Feb 12, 2009)\00", section ".modinfo", align 1
@__UNIQUE_ID_version547 = internal constant [16 x i8] c"rds.version=4.0\00", section ".modinfo", align 1
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rds\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"4.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.2, ptr @.str.3 }, section "__modver", align 4
@__UNIQUE_ID_file548 = internal constant [21 x i8] c"rds.file=net/rds/rds\00", section ".modinfo", align 1
@__UNIQUE_ID_license549 = internal constant [25 x i8] c"rds.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias550 = internal constant [20 x i8] c"rds.alias=net-pf-21\00", section ".modinfo", align 1
@rds_gen_num = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@rds_family_ops = internal constant { %struct.net_proto_family, [20 x i8] } { %struct.net_proto_family { i32 21, ptr @rds_create, ptr null }, [20 x i8] zeroinitializer }, align 32
@rds_proto = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1344, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.115 zeroinitializer, ptr null, [32 x i8] c"RDS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@rds_proto_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 21, ptr null, ptr @rds_release, ptr @rds_bind, ptr @rds_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @rds_getname, ptr @rds_poll, ptr @rds_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr @rds_setsockopt, ptr @rds_getsockopt, ptr null, ptr @rds_sendmsg, ptr @rds_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__rds_create.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&rs->rs_lock\00", [19 x i8] zeroinitializer }, align 32
@__rds_create.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&rs->rs_recv_lock\00", [46 x i8] zeroinitializer }, align 32
@__rds_create.__key.7 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&rs->rs_rdma_lock\00", [46 x i8] zeroinitializer }, align 32
@rds_sock_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@rds_sock_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @rds_sock_list, ptr @rds_sock_list }, [24 x i8] zeroinitializer }, align 32
@rds_sock_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/rds/af_rds.c\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@rds_message_zcopy_queue_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&q->lock\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rds_sock_lock\00", [18 x i8] zeroinitializer }, align 32
@rds_init.___done = internal global i8 0, section ".data.once", align 1
@rds_init.___once_key = internal global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 35296, i64 35297]
@__sancov_gen_cov_switch_values.17 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 8, i64 10, i64 29, i64 63]
@__sancov_gen_cov_switch_values.18 = internal global [22 x i64] [i64 20, i64 32, i64 5, i64 8, i64 10000, i64 10001, i64 10002, i64 10003, i64 10004, i64 10005, i64 10006, i64 10007, i64 10008, i64 10009, i64 10010, i64 10011, i64 10012, i64 10013, i64 10014, i64 10015, i64 10016, i64 10017]
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"rds_poll_waitq\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 48, i32 1 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 961, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [12 x i8] c"rds_gen_num\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 895, i32 5 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"rds_family_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 723, i32 38 }
@___asan_gen_.40 = private unnamed_addr constant [10 x i8] c"rds_proto\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 632, i32 21 }
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"rds_proto_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 638, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 677, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 678, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 684, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [14 x i8] c"rds_sock_lock\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [14 x i8] c"rds_sock_list\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 47, i32 8 }
@___asan_gen_.61 = private unnamed_addr constant [15 x i8] c"rds_sock_count\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 46, i32 22 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 262, i32 7 }
@___asan_gen_.68 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 156, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"../net/rds/rds.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 384, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 45, i32 8 }
@___asan_gen_.79 = private unnamed_addr constant [12 x i8] c"___once_key\00", align 1
@___asan_gen_.80 = private constant [20 x i8] c"../net/rds/af_rds.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 901, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_alias550, ptr @__UNIQUE_ID_author545, ptr @__UNIQUE_ID_description546, ptr @__UNIQUE_ID_file548, ptr @__UNIQUE_ID_license549, ptr @__UNIQUE_ID_version547, ptr @__exitcall_rds_exit, ptr @__initcall__kmod_rds__544_953_rds_init6, ptr @__modver_attr, ptr @.str, ptr @rds_poll_waitq, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rds_gen_num, ptr @rds_family_ops, ptr @rds_proto, ptr @rds_proto_ops, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @rds_sock_lock, ptr @rds_sock_list, ptr @rds_sock_count, ptr @.str.9, ptr @.str.12, ptr @rds_message_zcopy_queue_init.__key, ptr @.str.13, ptr @.str.14, ptr @rds_init.___once_key], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_poll_waitq to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_gen_num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_family_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_proto to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_proto_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_sock_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_sock_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_sock_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_message_zcopy_queue_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_init.___once_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_wake_sk_sleep(ptr noundef %rs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rs_recv_lock = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 21
  %call = tail call i32 @_raw_read_lock_irqsave(ptr noundef %rs_recv_lock) #5
  %0 = getelementptr inbounds %struct.sock, ptr %rs, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.sock_common, ptr %rs, i32 0, i32 13
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %and1.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i = icmp ne i32 %and1.i.i.i, 0
  %tobool.not.i = icmp eq ptr %2, null
  %or.cond.i = select i1 %tobool.i.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %entry.__rds_wake_sk_sleep.exit_crit_edge, label %if.then.i

entry.__rds_wake_sk_sleep.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %__rds_wake_sk_sleep.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__wake_up(ptr noundef nonnull %2, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %__rds_wake_sk_sleep.exit

__rds_wake_sk_sleep.exit:                         ; preds = %if.then.i, %entry.__rds_wake_sk_sleep.exit_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %rs_recv_lock, i32 noundef %call) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_sock_addref(ptr noundef %rs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %rs, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #5
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #5, !srcloc !71
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !72

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sock_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !73

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sock_hold.exit_crit_edge:         ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sock_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef %.sink.i.i.i.i) #5
  br label %sock_hold.exit

sock_hold.exit:                                   ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sock_hold.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_sock_put(ptr noundef %rs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %rs, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #5
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #5, !srcloc !75
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !73

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #5
  br label %sock_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void @sk_free(ptr noundef %rs) #5
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rds_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sock_unregister(i32 noundef 21) #5
  tail call void @proto_unregister(ptr noundef nonnull @rds_proto) #5
  tail call void @rds_conn_exit() #5
  tail call void @rds_cong_exit() #5
  tail call void @rds_sysctl_exit() #5
  tail call void @rds_threads_exit() #5
  tail call void @rds_stats_exit() #5
  tail call void @rds_page_exit() #5
  tail call void @rds_bind_lock_destroy() #5
  tail call void @rds_info_deregister_func(i32 noundef 10006, ptr noundef nonnull @rds_sock_info) #5
  tail call void @rds_info_deregister_func(i32 noundef 10005, ptr noundef nonnull @rds_sock_inc_info) #5
  tail call void @rds_info_deregister_func(i32 noundef 10015, ptr noundef nonnull @rds6_sock_info) #5
  tail call void @rds_info_deregister_func(i32 noundef 10014, ptr noundef nonnull @rds6_sock_inc_info) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rds_init() #0 align 64 {
entry:
  %___flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @rds_init.___once_key, ptr blockaddress(@rds_init, %if.then)) #5
          to label %if.end13 [label %if.then], !srcloc !77

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %___flags) #5
  %0 = ptrtoint ptr %___flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %___flags, align 4, !annotation !78
  %call3 = call zeroext i1 @__do_once_start(ptr noundef nonnull @rds_init.___done, ptr noundef nonnull %___flags) #5
  br i1 %call3, label %if.then12, label %if.then.if.end_crit_edge, !prof !72

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @get_random_bytes(ptr noundef nonnull @rds_gen_num, i32 noundef 4) #5
  call void @__do_once_done(ptr noundef nonnull @rds_init.___done, ptr noundef nonnull @rds_init.___once_key, ptr noundef nonnull %___flags, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %___flags) #5
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry
  %call18 = call i32 @rds_bind_lock_init() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end21:                                         ; preds = %if.end13
  %call22 = call i32 @rds_conn_init() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.out_bind_crit_edge

if.end21.out_bind_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_bind

if.end25:                                         ; preds = %if.end21
  %call26 = call i32 @rds_threads_init() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.out_conn_crit_edge

if.end25.out_conn_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_conn

if.end29:                                         ; preds = %if.end25
  %call30 = call i32 @rds_sysctl_init() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.out_threads_crit_edge

if.end29.out_threads_crit_edge:                   ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_threads

if.end33:                                         ; preds = %if.end29
  %call34 = call i32 @rds_stats_init() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.out_sysctl_crit_edge

if.end33.out_sysctl_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_sysctl

if.end37:                                         ; preds = %if.end33
  %call38 = call i32 @proto_register(ptr noundef nonnull @rds_proto, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.out_stats_crit_edge

if.end37.out_stats_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_stats

if.end41:                                         ; preds = %if.end37
  %call42 = call i32 @sock_register(ptr noundef nonnull @rds_family_ops) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %out_proto

if.end45:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  call void @rds_info_register_func(i32 noundef 10006, ptr noundef nonnull @rds_sock_info) #5
  call void @rds_info_register_func(i32 noundef 10005, ptr noundef nonnull @rds_sock_inc_info) #5
  call void @rds_info_register_func(i32 noundef 10015, ptr noundef nonnull @rds6_sock_info) #5
  call void @rds_info_register_func(i32 noundef 10014, ptr noundef nonnull @rds6_sock_inc_info) #5
  br label %out

out_proto:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  call void @proto_unregister(ptr noundef nonnull @rds_proto) #5
  br label %out_stats

out_stats:                                        ; preds = %out_proto, %if.end37.out_stats_crit_edge
  %ret.0 = phi i32 [ %call38, %if.end37.out_stats_crit_edge ], [ %call42, %out_proto ]
  call void @rds_stats_exit() #5
  br label %out_sysctl

out_sysctl:                                       ; preds = %out_stats, %if.end33.out_sysctl_crit_edge
  %ret.1 = phi i32 [ %call34, %if.end33.out_sysctl_crit_edge ], [ %ret.0, %out_stats ]
  call void @rds_sysctl_exit() #5
  br label %out_threads

out_threads:                                      ; preds = %out_sysctl, %if.end29.out_threads_crit_edge
  %ret.2 = phi i32 [ %call30, %if.end29.out_threads_crit_edge ], [ %ret.1, %out_sysctl ]
  call void @rds_threads_exit() #5
  br label %out_conn

out_conn:                                         ; preds = %out_threads, %if.end25.out_conn_crit_edge
  %ret.3 = phi i32 [ %call26, %if.end25.out_conn_crit_edge ], [ %ret.2, %out_threads ]
  call void @rds_conn_exit() #5
  call void @rds_cong_exit() #5
  call void @rds_page_exit() #5
  br label %out_bind

out_bind:                                         ; preds = %out_conn, %if.end21.out_bind_crit_edge
  %ret.4 = phi i32 [ %call22, %if.end21.out_bind_crit_edge ], [ %ret.3, %out_conn ]
  call void @rds_bind_lock_destroy() #5
  br label %out

out:                                              ; preds = %out_bind, %if.end45, %if.end13.out_crit_edge
  %ret.5 = phi i32 [ %call18, %if.end13.out_crit_edge ], [ %ret.4, %out_bind ], [ 0, %if.end45 ]
  ret i32 %ret.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_unregister(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_conn_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_cong_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_sysctl_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_threads_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_stats_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_page_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_bind_lock_destroy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_info_deregister_func(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rds_sock_info(ptr nocapture noundef readnone %sock, i32 noundef %len, ptr noundef %iter, ptr nocapture noundef writeonly %lens) #0 align 64 {
entry:
  %sinfo = alloca %struct.rds_info_socket, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sinfo) #5
  %0 = getelementptr inbounds %struct.rds_info_socket, ptr %sinfo, i32 0, i32 1
  %1 = getelementptr inbounds %struct.rds_info_socket, ptr %sinfo, i32 0, i32 2
  %2 = getelementptr inbounds %struct.rds_info_socket, ptr %sinfo, i32 0, i32 3
  %3 = getelementptr inbounds %struct.rds_info_socket, ptr %sinfo, i32 0, i32 4
  %4 = getelementptr inbounds %struct.rds_info_socket, ptr %sinfo, i32 0, i32 5
  %5 = getelementptr inbounds %struct.rds_info_socket, ptr %sinfo, i32 0, i32 6
  %div = udiv i32 %len, 28
  %6 = call ptr @memset(ptr %sinfo, i32 255, i32 28)
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rds_sock_lock) #5
  %7 = load i32, ptr @rds_sock_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %7)
  %cmp = icmp ult i32 %div, %7
  br i1 %cmp, label %entry.out_crit_edge, label %for.cond.preheader

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.cond.preheader:                               ; preds = %entry
  %.pn30 = load ptr, ptr @rds_sock_list, align 4
  %cmp1.not32 = icmp eq ptr %.pn30, @rds_sock_list
  br i1 %cmp1.not32, label %for.cond.preheader.out_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %.pn34 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn30, %for.cond.preheader.for.body_crit_edge ]
  %cnt.033 = phi i32 [ %cnt.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %sin6_addr = getelementptr i8, ptr %.pn34, i32 -204
  %8 = ptrtoint ptr %sin6_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sin6_addr, align 4
  %arrayidx2.i = getelementptr i8, ptr %.pn34, i32 -200
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %11, %9
  %arrayidx4.i = getelementptr i8, ptr %.pn34, i32 -196
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.i, align 4
  %xor.i = xor i32 %13, 65535
  %or5.i = or i32 %or.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %cmp.i = icmp eq i32 %or5.i, 0
  br i1 %cmp.i, label %if.end3, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end3:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %rs.036 = getelementptr i8, ptr %.pn34, i32 -1216
  %sk_sndbuf.i = getelementptr i8, ptr %.pn34, i32 -780
  %14 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sk_sndbuf.i, align 4
  %div.i = sdiv i32 %15, 2
  %16 = ptrtoint ptr %sinfo to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div.i, ptr %sinfo, align 4
  %sk_rcvbuf.i = getelementptr i8, ptr %.pn34, i32 -808
  %17 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sk_rcvbuf.i, align 8
  %div.i29 = sdiv i32 %18, 2
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div.i29, ptr %4, align 4
  %arrayidx = getelementptr i8, ptr %.pn34, i32 -192
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %0, align 4
  %arrayidx9 = getelementptr i8, ptr %.pn34, i32 -172
  %23 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx9, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %1, align 4
  %sin6_port = getelementptr i8, ptr %.pn34, i32 -210
  %26 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sin6_port, align 2
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %2, align 4
  %rs_conn_port = getelementptr i8, ptr %.pn34, i32 -168
  %29 = ptrtoint ptr %rs_conn_port to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %rs_conn_port, align 8
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %3, align 2
  %call12 = call i32 @sock_i_ino(ptr noundef %rs.036) #5
  %conv = zext i32 %call12 to i64
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 8)
  store i64 %conv, ptr %5, align 4
  call void @rds_info_copy(ptr noundef %iter, ptr noundef nonnull %sinfo, i32 noundef 28) #5
  %inc = add i32 %cnt.033, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end3, %for.body.for.inc_crit_edge
  %cnt.1 = phi i32 [ %inc, %if.end3 ], [ %cnt.033, %for.body.for.inc_crit_edge ]
  %33 = ptrtoint ptr %.pn34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn = load ptr, ptr %.pn34, align 4
  %cmp1.not = icmp eq ptr %.pn, @rds_sock_list
  br i1 %cmp1.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %for.cond.preheader.out_crit_edge, %entry.out_crit_edge
  %cnt.2 = phi i32 [ %7, %entry.out_crit_edge ], [ 0, %for.cond.preheader.out_crit_edge ], [ %cnt.1, %for.inc.out_crit_edge ]
  %34 = ptrtoint ptr %lens to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %cnt.2, ptr %lens, align 4
  %each = getelementptr inbounds %struct.rds_info_lengths, ptr %lens, i32 0, i32 1
  %35 = ptrtoint ptr %each to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 28, ptr %each, align 4
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @rds_sock_lock) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sinfo) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rds_sock_inc_info(ptr nocapture noundef readnone %sock, i32 noundef %len, ptr noundef %iter, ptr nocapture noundef writeonly %lens) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %div = udiv i32 %len, 26
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rds_sock_lock) #5
  %.pn51 = load ptr, ptr @rds_sock_list, align 4
  %cmp.not52 = icmp eq ptr %.pn51, @rds_sock_list
  br i1 %cmp.not52, label %entry.for.end29_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end29_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end29

for.body:                                         ; preds = %for.inc23.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn54 = phi ptr [ %.pn, %for.inc23.for.body_crit_edge ], [ %.pn51, %entry.for.body_crit_edge ]
  %total.053 = phi i32 [ %total.2, %for.inc23.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %sin6_addr = getelementptr i8, ptr %.pn54, i32 -204
  %0 = ptrtoint ptr %sin6_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sin6_addr, align 4
  %arrayidx2.i = getelementptr i8, ptr %.pn54, i32 -200
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %3, %1
  %arrayidx4.i = getelementptr i8, ptr %.pn54, i32 -196
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4.i, align 4
  %xor.i = xor i32 %5, 65535
  %or5.i = or i32 %or.i, %xor.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %cmp.i = icmp eq i32 %or5.i, 0
  br i1 %cmp.i, label %if.end, label %for.body.for.inc23_crit_edge

for.body.for.inc23_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc23

if.end:                                           ; preds = %for.body
  %rs_recv_lock = getelementptr i8, ptr %.pn54, i32 -52
  tail call void @_raw_read_lock(ptr noundef %rs_recv_lock) #5
  %rs_recv_queue = getelementptr i8, ptr %.pn54, i32 -8
  %6 = ptrtoint ptr %rs_recv_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn4445 = load ptr, ptr %rs_recv_queue, align 4
  %cmp6.not47 = icmp eq ptr %.pn4445, %rs_recv_queue
  br i1 %cmp6.not47, label %if.end.for.end_crit_edge, label %for.body8.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body8.lr.ph:                                  ; preds = %if.end
  %arrayidx15 = getelementptr i8, ptr %.pn54, i32 -192
  br label %for.body8

for.body8:                                        ; preds = %for.inc.for.body8_crit_edge, %for.body8.lr.ph
  %.pn4449 = phi ptr [ %.pn4445, %for.body8.lr.ph ], [ %.pn44, %for.inc.for.body8_crit_edge ]
  %total.148 = phi i32 [ %total.053, %for.body8.lr.ph ], [ %inc9, %for.inc.for.body8_crit_edge ]
  %inc9 = add i32 %total.148, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc9, i32 %div)
  %cmp10.not = icmp ugt i32 %inc9, %div
  br i1 %cmp10.not, label %for.body8.for.inc_crit_edge, label %if.then11

for.body8.for.inc_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then11:                                        ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #7
  %inc.050 = getelementptr i8, ptr %.pn4449, i32 -4
  %arrayidx = getelementptr i8, ptr %.pn4449, i32 84
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx15, align 4
  tail call void @rds_inc_info_copy(ptr noundef %inc.050, ptr noundef %iter, i32 noundef %8, i32 noundef %10, i32 noundef 1) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %for.body8.for.inc_crit_edge
  %11 = ptrtoint ptr %.pn4449 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn44 = load ptr, ptr %.pn4449, align 4
  %cmp6.not = icmp eq ptr %.pn44, %rs_recv_queue
  br i1 %cmp6.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body8_crit_edge

for.inc.for.body8_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %total.1.lcssa = phi i32 [ %total.053, %if.end.for.end_crit_edge ], [ %inc9, %for.inc.for.end_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef %rs_recv_lock) #5
  br label %for.inc23

for.inc23:                                        ; preds = %for.end, %for.body.for.inc23_crit_edge
  %total.2 = phi i32 [ %total.1.lcssa, %for.end ], [ %total.053, %for.body.for.inc23_crit_edge ]
  %12 = ptrtoint ptr %.pn54 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn54, align 4
  %cmp.not = icmp eq ptr %.pn, @rds_sock_list
  br i1 %cmp.not, label %for.inc23.for.end29_crit_edge, label %for.inc23.for.body_crit_edge

for.inc23.for.body_crit_edge:                     ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc23.for.end29_crit_edge:                    ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end29

for.end29:                                        ; preds = %for.inc23.for.end29_crit_edge, %entry.for.end29_crit_edge
  %total.0.lcssa = phi i32 [ 0, %entry.for.end29_crit_edge ], [ %total.2, %for.inc23.for.end29_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rds_sock_lock) #5
  %13 = ptrtoint ptr %lens to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %total.0.lcssa, ptr %lens, align 4
  %each = getelementptr inbounds %struct.rds_info_lengths, ptr %lens, i32 0, i32 1
  %14 = ptrtoint ptr %each to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 26, ptr %each, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rds6_sock_info(ptr nocapture noundef readnone %sock, i32 noundef %len, ptr noundef %iter, ptr nocapture noundef writeonly %lens) #0 align 64 {
entry:
  %sinfo6 = alloca %struct.rds6_info_socket, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %sinfo6) #5
  %0 = call ptr @memset(ptr %sinfo6, i32 255, i32 52)
  %div = udiv i32 %len, 52
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rds_sock_lock) #5
  %1 = load i32, ptr @rds_sock_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %1)
  %cmp = icmp ult i32 %div, %1
  br i1 %cmp, label %entry.out_crit_edge, label %for.cond.preheader

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.cond.preheader:                               ; preds = %entry
  %.pn21 = load ptr, ptr @rds_sock_list, align 4
  %cmp1.not22 = icmp eq ptr %.pn21, @rds_sock_list
  br i1 %cmp1.not22, label %for.cond.preheader.out_crit_edge, label %for.body.lr.ph

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %rcvbuf = getelementptr inbounds %struct.rds6_info_socket, ptr %sinfo6, i32 0, i32 5
  %bound_addr = getelementptr inbounds %struct.rds6_info_socket, ptr %sinfo6, i32 0, i32 1
  %connected_addr = getelementptr inbounds %struct.rds6_info_socket, ptr %sinfo6, i32 0, i32 2
  %bound_port = getelementptr inbounds %struct.rds6_info_socket, ptr %sinfo6, i32 0, i32 3
  %connected_port = getelementptr inbounds %struct.rds6_info_socket, ptr %sinfo6, i32 0, i32 4
  %inum = getelementptr inbounds %struct.rds6_info_socket, ptr %sinfo6, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %.pn23 = phi ptr [ %.pn21, %for.body.lr.ph ], [ %.pn, %for.body.for.body_crit_edge ]
  %rs.0 = getelementptr i8, ptr %.pn23, i32 -1216
  %sk_sndbuf.i = getelementptr i8, ptr %.pn23, i32 -780
  %2 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sk_sndbuf.i, align 4
  %div.i = sdiv i32 %3, 2
  %4 = ptrtoint ptr %sinfo6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div.i, ptr %sinfo6, align 4
  %sk_rcvbuf.i = getelementptr i8, ptr %.pn23, i32 -808
  %5 = ptrtoint ptr %sk_rcvbuf.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sk_rcvbuf.i, align 8
  %div.i20 = sdiv i32 %6, 2
  %7 = ptrtoint ptr %rcvbuf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div.i20, ptr %rcvbuf, align 4
  %sin6_addr = getelementptr i8, ptr %.pn23, i32 -204
  %8 = call ptr @memcpy(ptr %bound_addr, ptr %sin6_addr, i32 16)
  %rs_conn_addr = getelementptr i8, ptr %.pn23, i32 -184
  %9 = call ptr @memcpy(ptr %connected_addr, ptr %rs_conn_addr, i32 16)
  %sin6_port = getelementptr i8, ptr %.pn23, i32 -210
  %10 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sin6_port, align 2
  %12 = ptrtoint ptr %bound_port to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %bound_port, align 4
  %rs_conn_port = getelementptr i8, ptr %.pn23, i32 -168
  %13 = ptrtoint ptr %rs_conn_port to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %rs_conn_port, align 8
  %15 = ptrtoint ptr %connected_port to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %connected_port, align 2
  %call5 = call i32 @sock_i_ino(ptr noundef %rs.0) #5
  %conv = zext i32 %call5 to i64
  %16 = ptrtoint ptr %inum to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %conv, ptr %inum, align 4
  call void @rds_info_copy(ptr noundef %iter, ptr noundef nonnull %sinfo6, i32 noundef 52) #5
  %17 = ptrtoint ptr %.pn23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn23, align 4
  %cmp1.not = icmp eq ptr %.pn, @rds_sock_list
  br i1 %cmp1.not, label %for.body.out_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

out:                                              ; preds = %for.body.out_crit_edge, %for.cond.preheader.out_crit_edge, %entry.out_crit_edge
  %18 = load i32, ptr @rds_sock_count, align 4
  %19 = ptrtoint ptr %lens to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %lens, align 4
  %each = getelementptr inbounds %struct.rds_info_lengths, ptr %lens, i32 0, i32 1
  %20 = ptrtoint ptr %each to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 52, ptr %each, align 4
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @rds_sock_lock) #5
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %sinfo6) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rds6_sock_inc_info(ptr nocapture noundef readnone %sock, i32 noundef %len, ptr noundef %iter, ptr nocapture noundef writeonly %lens) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %div = udiv i32 %len, 50
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rds_sock_lock) #5
  %.pn44 = load ptr, ptr @rds_sock_list, align 4
  %cmp.not45 = icmp eq ptr %.pn44, @rds_sock_list
  br i1 %cmp.not45, label %entry.for.end23_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end23_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end23

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn47 = phi ptr [ %.pn, %for.end.for.body_crit_edge ], [ %.pn44, %entry.for.body_crit_edge ]
  %total.046 = phi i32 [ %total.1.lcssa, %for.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %rs_recv_lock = getelementptr i8, ptr %.pn47, i32 -52
  tail call void @_raw_read_lock(ptr noundef %rs_recv_lock) #5
  %rs_recv_queue = getelementptr i8, ptr %.pn47, i32 -8
  %0 = ptrtoint ptr %rs_recv_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn3738 = load ptr, ptr %rs_recv_queue, align 4
  %cmp6.not40 = icmp eq ptr %.pn3738, %rs_recv_queue
  br i1 %cmp6.not40, label %for.body.for.end_crit_edge, label %for.body8.lr.ph

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body8.lr.ph:                                  ; preds = %for.body
  %sin6_addr = getelementptr i8, ptr %.pn47, i32 -204
  br label %for.body8

for.body8:                                        ; preds = %for.inc.for.body8_crit_edge, %for.body8.lr.ph
  %.pn3742 = phi ptr [ %.pn3738, %for.body8.lr.ph ], [ %.pn37, %for.inc.for.body8_crit_edge ]
  %total.141 = phi i32 [ %total.046, %for.body8.lr.ph ], [ %inc9, %for.inc.for.body8_crit_edge ]
  %inc9 = add i32 %total.141, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc9, i32 %div)
  %cmp10.not = icmp ugt i32 %inc9, %div
  br i1 %cmp10.not, label %for.body8.for.inc_crit_edge, label %if.then

for.body8.for.inc_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #7
  %inc.043 = getelementptr i8, ptr %.pn3742, i32 -4
  %i_saddr = getelementptr i8, ptr %.pn3742, i32 72
  tail call void @rds6_inc_info_copy(ptr noundef %inc.043, ptr noundef %iter, ptr noundef %i_saddr, ptr noundef %sin6_addr, i32 noundef 1) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body8.for.inc_crit_edge
  %1 = ptrtoint ptr %.pn3742 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn37 = load ptr, ptr %.pn3742, align 4
  %cmp6.not = icmp eq ptr %.pn37, %rs_recv_queue
  br i1 %cmp6.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body8_crit_edge

for.inc.for.body8_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %total.1.lcssa = phi i32 [ %total.046, %for.body.for.end_crit_edge ], [ %inc9, %for.inc.for.end_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef %rs_recv_lock) #5
  %2 = ptrtoint ptr %.pn47 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn47, align 4
  %cmp.not = icmp eq ptr %.pn, @rds_sock_list
  br i1 %cmp.not, label %for.end.for.end23_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end.for.end23_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end23

for.end23:                                        ; preds = %for.end.for.end23_crit_edge, %entry.for.end23_crit_edge
  %total.0.lcssa = phi i32 [ 0, %entry.for.end23_crit_edge ], [ %total.1.lcssa, %for.end.for.end23_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rds_sock_lock) #5
  %3 = ptrtoint ptr %lens to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %total.0.lcssa, ptr %lens, align 4
  %each = getelementptr inbounds %struct.rds_info_lengths, ptr %lens, i32 0, i32 1
  %4 = ptrtoint ptr %each to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 50, ptr %each, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rds_create(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol, i32 noundef %kern) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %1)
  %cmp.not = icmp eq i16 %1, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %protocol)
  %tobool.not = icmp eq i32 %protocol, 0
  %or.cond = and i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @sk_alloc(ptr noundef %net, i32 noundef 21, i32 noundef 3264, ptr noundef nonnull @rds_proto, i32 noundef %kern) #5
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call) #5
  %ops.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @rds_proto_ops, ptr %ops.i, align 4
  %sk_protocol.i = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 46
  %3 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %sk_protocol.i, align 4
  %sk_destruct.i = getelementptr inbounds %struct.sock, ptr %call, i32 0, i32 82
  %4 = ptrtoint ptr %sk_destruct.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @rds_sock_destruct, ptr %sk_destruct.i, align 4
  %rs_lock.i = getelementptr inbounds %struct.rds_sock, ptr %call, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %rs_lock.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @__rds_create.__key, i16 noundef signext 3) #5
  %rs_recv_lock.i = getelementptr inbounds %struct.rds_sock, ptr %call, i32 0, i32 21
  tail call void @__rwlock_init(ptr noundef %rs_recv_lock.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @__rds_create.__key.5) #5
  %rs_send_queue.i = getelementptr inbounds %struct.rds_sock, ptr %call, i32 0, i32 13
  %5 = ptrtoint ptr %rs_send_queue.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %rs_send_queue.i, ptr %rs_send_queue.i, align 4
  %prev.i.i = getelementptr inbounds %struct.rds_sock, ptr %call, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rs_send_queue.i, ptr %prev.i.i, align 4
  %rs_recv_queue.i = getelementptr inbounds %struct.rds_sock, ptr %call, i32 0, i32 22
  %7 = ptrtoint ptr %rs_recv_queue.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %rs_recv_queue.i, ptr %rs_recv_queue.i, align 4
  %prev.i1.i = getelementptr inbounds %struct.rds_sock, ptr %call, i32 0, i32 22, i32 1
  %8 = ptrtoint ptr %prev.i1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %rs_recv_queue.i, ptr %prev.i1.i, align 4
  %rs_notify_queue.i = getelementptr inbounds %struct.rds_sock, ptr %call, i32 0, i32 16
  %9 = ptrtoint ptr %rs_notify_queue.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %rs_notify_queue.i, ptr %rs_notify_queue.i, align 4
  %prev.i2.i = getelementptr inbounds %struct.rds_sock, ptr %call, i32 0, i32 16, i32 1
  %10 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %rs_notify_queue.i, ptr %prev.i2.i, align 4
  %rs_cong_list.i = getelementptr inbounds %struct.rds_sock, ptr %call, i32 0, i32 19
  %11 = ptrtoint ptr %rs_cong_list.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %rs_cong_list.i, ptr %rs_cong_list.i, align 4
  %prev.i3.i = getelementptr inbounds %struct.rds_sock, ptr %call, i32 0, i32 19, i32 1
  %12 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %rs_cong_list.i, ptr %prev.i3.i, align 4
  %rs_zcookie_queue.i = getelementptr inbounds %struct.rds_sock, ptr %call, i32 0, i32 31
  %lock.i.i = getelementptr inbounds %struct.rds_sock, ptr %call, i32 0, i32 31, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @rds_message_zcopy_queue_init.__key, i16 noundef signext 3) #5
  %13 = ptrtoint ptr %rs_zcookie_queue.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %rs_zcookie_queue.i, ptr %rs_zcookie_queue.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.rds_sock, ptr %call, i32 0, i32 31, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %rs_zcookie_queue.i, ptr %prev.i.i.i, align 4
  %rs_rdma_lock.i = getelementptr inbounds %struct.rds_sock, ptr %call, i32 0, i32 24
  tail call void @__raw_spin_lock_init(ptr noundef %rs_rdma_lock.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @__rds_create.__key.7, i16 noundef signext 3) #5
  %rs_rdma_keys.i = getelementptr inbounds %struct.rds_sock, ptr %call, i32 0, i32 25
  %15 = ptrtoint ptr %rs_rdma_keys.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %rs_rdma_keys.i, align 4
  %rs_rx_traces.i = getelementptr inbounds %struct.rds_sock, ptr %call, i32 0, i32 29
  %16 = ptrtoint ptr %rs_rx_traces.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %rs_rx_traces.i, align 8
  %rs_tos.i = getelementptr inbounds %struct.rds_sock, ptr %call, i32 0, i32 32
  %17 = ptrtoint ptr %rs_tos.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %rs_tos.i, align 8
  %rs_conn.i = getelementptr inbounds %struct.rds_sock, ptr %call, i32 0, i32 9
  %18 = ptrtoint ptr %rs_conn.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %rs_conn.i, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rds_sock_lock) #5
  %rs_item.i = getelementptr inbounds %struct.rds_sock, ptr %call, i32 0, i32 23
  %19 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @rds_sock_list, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rs_item.i, ptr noundef %19, ptr noundef nonnull @rds_sock_list) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end4.__rds_create.exit_crit_edge

if.end4.__rds_create.exit_crit_edge:              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %__rds_create.exit

if.end.i.i.i:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %rs_item.i, ptr getelementptr inbounds (%struct.list_head, ptr @rds_sock_list, i32 0, i32 1), align 4
  %20 = ptrtoint ptr %rs_item.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @rds_sock_list, ptr %rs_item.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.rds_sock, ptr %call, i32 0, i32 23, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %prev3.i.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %rs_item.i, ptr %19, align 4
  br label %__rds_create.exit

__rds_create.exit:                                ; preds = %if.end.i.i.i, %if.end4.__rds_create.exit_crit_edge
  %23 = load i32, ptr @rds_sock_count, align 4
  %inc.i = add i32 %23, 1
  store i32 %inc.i, ptr @rds_sock_count, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rds_sock_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %__rds_create.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %__rds_create.exit ], [ -94, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rds_sock_destruct(ptr noundef readonly %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rs_item = getelementptr inbounds %struct.rds_sock, ptr %sk, i32 0, i32 23
  %0 = ptrtoint ptr %rs_item to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rs_item, align 8
  %cmp.not = icmp eq ptr %rs_item, %1
  br i1 %cmp.not, label %lor.rhs, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %prev = getelementptr inbounds %struct.rds_sock, ptr %sk, i32 0, i32 23, i32 1
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev, align 4
  %cmp4.not = icmp eq ptr %rs_item, %3
  br i1 %cmp4.not, label %lor.rhs.if.end_crit_edge, label %lor.rhs.do.end_crit_edge, !prof !73

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 664, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.rhs.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rds_release(ptr nocapture noundef %sock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #5
  %2 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %or.i.i.i = or i32 %4, 1
  store i32 %or.i.i.i, ptr %2, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %5 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %sk_socket.i.i, align 8
  %6 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %6, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #5
  tail call void @rds_clear_recv_queue(ptr noundef nonnull %1) #5
  tail call void @rds_cong_remove_socket(ptr noundef nonnull %1) #5
  tail call void @rds_remove_bound(ptr noundef nonnull %1) #5
  tail call void @rds_send_drop_to(ptr noundef nonnull %1, ptr noundef null) #5
  tail call void @rds_rdma_drop_keys(ptr noundef nonnull %1) #5
  %call2 = tail call i32 @rds_notify_queue_get(ptr noundef nonnull %1, ptr noundef null) #5
  %rs_zcookie_queue = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 31
  tail call void @rds_notify_msg_zcopy_purge(ptr noundef %rs_zcookie_queue) #5
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rds_sock_lock) #5
  %rs_item = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %rs_item) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 23, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %rs_item to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rs_item, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %14 = ptrtoint ptr %rs_item to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %rs_item, ptr %rs_item, align 4
  %prev.i3.i = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 23, i32 1
  %15 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %rs_item, ptr %prev.i3.i, align 4
  %16 = load i32, ptr @rds_sock_count, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr @rds_sock_count, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rds_sock_lock) #5
  %rs_transport = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %rs_transport to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rs_transport, align 4
  tail call void @rds_trans_put(ptr noundef %18) #5
  %19 = ptrtoint ptr %sk1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %sk1, align 16
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #5
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #5, !srcloc !75
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i, !prof !73

if.end5.i.i.i.i.out_crit_edge:                    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #5
  br label %out

if.then.i:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void @sk_free(ptr noundef nonnull %1) #5
  br label %out

out:                                              ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_crit_edge, %entry.out_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_bind(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rds_connect(ptr nocapture noundef readonly %sock, ptr noundef %uaddr, i32 noundef %addr_len, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %addr_len)
  %cmp = icmp ult i32 %addr_len, 2
  br i1 %cmp, label %entry.cleanup73_crit_edge, label %if.end

entry.cleanup73_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup73

if.end:                                           ; preds = %entry
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #5
  %2 = ptrtoint ptr %uaddr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %uaddr, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i16 %3, label %if.end.sw.epilog_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb22
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %addr_len)
  %cmp2 = icmp ult i32 %addr_len, 16
  br i1 %cmp2, label %sw.bb.sw.epilog_crit_edge, label %if.end5

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end5:                                          ; preds = %sw.bb
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %uaddr, i32 0, i32 2
  %5 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sin_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp6 = icmp eq i32 %6, 0
  br i1 %cmp6, label %if.end5.sw.epilog_crit_edge, label %if.end9

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end9:                                          ; preds = %if.end5
  %and.i = and i32 %6, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp16 = icmp eq i32 %6, -1
  %or.cond = or i1 %cmp16, %cmp.i
  br i1 %or.cond, label %if.end9.sw.epilog_crit_edge, label %if.end19

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end19:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %rs_conn_addr = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %rs_conn_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rs_conn_addr, align 4
  %arrayidx1.i.i.i = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx1.i.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 65535, ptr %arrayidx2.i.i, align 4
  %arrayidx1.i1.i.i = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx1.i1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %6, ptr %arrayidx1.i1.i.i, align 4
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %uaddr, i32 0, i32 1
  br label %sw.epilog.sink.split

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %addr_len)
  %cmp23 = icmp ult i32 %addr_len, 28
  br i1 %cmp23, label %sw.bb22.sw.epilog_crit_edge, label %if.end26

sw.bb22.sw.epilog_crit_edge:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end26:                                         ; preds = %sw.bb22
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 3
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr) #5
  %and = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then28, label %if.end26.if.end44_crit_edge

if.end26.if.end44_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then28:                                        ; preds = %if.end26
  %and29 = and i32 %call.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.then28.sw.epilog_crit_edge, label %if.end32

if.then28.sw.epilog_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end32:                                         ; preds = %if.then28
  %arrayidx = getelementptr %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 3, i32 0, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %12, label %cleanup [
    i32 0, label %if.end32.sw.epilog_crit_edge
    i32 -1, label %if.end32.sw.epilog_crit_edge115
  ]

if.end32.sw.epilog_crit_edge115:                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end32.sw.epilog_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

cleanup:                                          ; preds = %if.end32
  %and.i109 = and i32 %12, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i109)
  %cmp.i110 = icmp eq i32 %and.i109, -536870912
  br i1 %cmp.i110, label %cleanup.sw.epilog_crit_edge, label %cleanup.if.end44_crit_edge

cleanup.if.end44_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

cleanup.sw.epilog_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end44:                                         ; preds = %cleanup.if.end44_crit_edge, %if.end26.if.end44_crit_edge
  %and45 = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.if.end67_crit_edge, label %if.then47

if.end44.if.end67_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.then47:                                        ; preds = %if.end44
  %sin6_scope_id = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 4
  %14 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sin6_scope_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp48 = icmp eq i32 %15, 0
  br i1 %cmp48, label %if.then47.sw.epilog_crit_edge, label %lor.lhs.false50

if.then47.sw.epilog_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

lor.lhs.false50:                                  ; preds = %if.then47
  %sin6_addr51 = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 5, i32 3
  %16 = ptrtoint ptr %sin6_addr51 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sin6_addr51, align 4
  %arrayidx2.i = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 5, i32 3, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %19, %17
  %arrayidx4.i = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 5, i32 3, i32 0, i32 0, i32 2
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %21
  %arrayidx7.i = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 5, i32 3, i32 0, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i111 = icmp eq i32 %or8.i, 0
  br i1 %cmp.i111, label %lor.lhs.false50.if.end63_crit_edge, label %land.lhs.true

lor.lhs.false50.if.end63_crit_edge:               ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

land.lhs.true:                                    ; preds = %lor.lhs.false50
  %sin6_scope_id54 = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 5, i32 4
  %24 = ptrtoint ptr %sin6_scope_id54 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sin6_scope_id54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool55.not = icmp eq i32 %25, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %25)
  %cmp60.not = icmp eq i32 %15, %25
  %or.cond114 = select i1 %tobool55.not, i1 true, i1 %cmp60.not
  br i1 %or.cond114, label %land.lhs.true.if.end63_crit_edge, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

if.end63:                                         ; preds = %land.lhs.true.if.end63_crit_edge, %lor.lhs.false50.if.end63_crit_edge
  %sin6_scope_id66 = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 5, i32 4
  %26 = ptrtoint ptr %sin6_scope_id66 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %15, ptr %sin6_scope_id66, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.end63, %if.end44.if.end67_crit_edge
  %rs_conn_addr68 = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 6
  %27 = call ptr @memcpy(ptr %rs_conn_addr68, ptr %sin6_addr, i32 16)
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.end67, %if.end19
  %sin6_port.sink = phi ptr [ %sin6_port, %if.end67 ], [ %sin_port, %if.end19 ]
  %28 = ptrtoint ptr %sin6_port.sink to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %sin6_port.sink, align 2
  %rs_conn_port70 = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 7
  %30 = ptrtoint ptr %rs_conn_port70 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %rs_conn_port70, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %land.lhs.true.sw.epilog_crit_edge, %if.then47.sw.epilog_crit_edge, %cleanup.sw.epilog_crit_edge, %if.end32.sw.epilog_crit_edge, %if.end32.sw.epilog_crit_edge115, %if.then28.sw.epilog_crit_edge, %sw.bb22.sw.epilog_crit_edge, %if.end9.sw.epilog_crit_edge, %if.end5.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %ret.3 = phi i32 [ -22, %sw.bb.sw.epilog_crit_edge ], [ -89, %if.end5.sw.epilog_crit_edge ], [ -22, %if.end9.sw.epilog_crit_edge ], [ -91, %cleanup.sw.epilog_crit_edge ], [ -22, %sw.bb22.sw.epilog_crit_edge ], [ -22, %if.then47.sw.epilog_crit_edge ], [ -97, %if.end.sw.epilog_crit_edge ], [ -91, %if.then28.sw.epilog_crit_edge ], [ -91, %if.end32.sw.epilog_crit_edge ], [ -91, %if.end32.sw.epilog_crit_edge115 ], [ -22, %land.lhs.true.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  tail call void @release_sock(ptr noundef %1) #5
  br label %cleanup73

cleanup73:                                        ; preds = %sw.epilog, %entry.cleanup73_crit_edge
  %retval.0 = phi i32 [ %ret.3, %sw.epilog ], [ -22, %entry.cleanup73_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rds_getname(ptr nocapture noundef readonly %sock, ptr noundef writeonly %uaddr, i32 noundef %peer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %peer)
  %tobool.not = icmp eq i32 %peer, 0
  br i1 %tobool.not, label %if.else11, label %if.then

if.then:                                          ; preds = %entry
  %rs_conn_addr = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %rs_conn_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rs_conn_addr, align 4
  %arrayidx2.i = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %5, %3
  %arrayidx4.i = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %7
  %arrayidx7.i = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  %xor.i = xor i32 %7, 65535
  %or5.i108 = or i32 %xor.i, %or.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i108)
  %cmp.i109 = icmp eq i32 %or5.i108, 0
  br i1 %cmp.i109, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %__pad = getelementptr inbounds %struct.sockaddr_in, ptr %uaddr, i32 0, i32 3
  %10 = ptrtoint ptr %__pad to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 0, ptr %__pad, align 4
  %11 = ptrtoint ptr %uaddr to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2, ptr %uaddr, align 4
  %rs_conn_port = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %rs_conn_port to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %rs_conn_port, align 8
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %uaddr, i32 0, i32 1
  %14 = ptrtoint ptr %sin_port to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %sin_port, align 2
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx7.i, align 4
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %uaddr, i32 0, i32 2
  %17 = ptrtoint ptr %sin_addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %sin_addr, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %uaddr to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 10, ptr %uaddr, align 4
  %rs_conn_port7 = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %rs_conn_port7 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %rs_conn_port7, align 8
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 1
  %21 = ptrtoint ptr %sin6_port to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %sin6_port, align 2
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 3
  %22 = call ptr @memcpy(ptr %sin6_addr, ptr %rs_conn_addr, i32 16)
  %sin6_flowinfo = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 2
  %23 = ptrtoint ptr %sin6_flowinfo to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %sin6_flowinfo, align 4
  %sin6_scope_id = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 5, i32 4
  %24 = ptrtoint ptr %sin6_scope_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sin6_scope_id, align 4
  %sin6_scope_id9 = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 4
  %26 = ptrtoint ptr %sin6_scope_id9 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %sin6_scope_id9, align 4
  br label %cleanup

if.else11:                                        ; preds = %entry
  %sin6_addr13 = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 5, i32 3
  %27 = ptrtoint ptr %sin6_addr13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sin6_addr13, align 4
  %arrayidx2.i110 = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 5, i32 3, i32 0, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx2.i110 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx2.i110, align 4
  %or.i111 = or i32 %30, %28
  %arrayidx4.i112 = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 5, i32 3, i32 0, i32 0, i32 2
  %31 = ptrtoint ptr %arrayidx4.i112 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx4.i112, align 4
  %or5.i113 = or i32 %or.i111, %32
  %arrayidx7.i114 = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 5, i32 3, i32 0, i32 0, i32 3
  %33 = ptrtoint ptr %arrayidx7.i114 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx7.i114, align 4
  %or8.i115 = or i32 %or5.i113, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i115)
  %cmp.i116 = icmp eq i32 %or8.i115, 0
  br i1 %cmp.i116, label %if.then15, label %if.end28

if.then15:                                        ; preds = %if.else11
  %rs_conn_addr16 = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 6
  %35 = ptrtoint ptr %rs_conn_addr16 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rs_conn_addr16, align 4
  %arrayidx2.i117 = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx2.i117 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx2.i117, align 4
  %or.i118 = or i32 %38, %36
  %arrayidx4.i119 = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 2
  %39 = ptrtoint ptr %arrayidx4.i119 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx4.i119, align 4
  %or5.i120 = or i32 %or.i118, %40
  %arrayidx7.i121 = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 3
  %41 = ptrtoint ptr %arrayidx7.i121 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx7.i121, align 4
  %or8.i122 = or i32 %or5.i120, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i122)
  %cmp.i123 = icmp eq i32 %or8.i122, 0
  br i1 %cmp.i123, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #7
  %43 = call ptr @memset(ptr %uaddr, i32 0, i32 16)
  br label %cleanup

if.end20:                                         ; preds = %if.then15
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %rs_conn_addr16) #5
  %and = and i32 %call.i, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %44 = call ptr @memset(ptr %uaddr, i32 0, i32 28)
  %45 = ptrtoint ptr %uaddr to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 10, ptr %uaddr, align 4
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %46 = call ptr @memset(ptr %uaddr, i32 0, i32 16)
  %47 = ptrtoint ptr %uaddr to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 2, ptr %uaddr, align 4
  br label %cleanup

if.end28:                                         ; preds = %if.else11
  %xor.i127 = xor i32 %32, 65535
  %or5.i128 = or i32 %xor.i127, %or.i111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i128)
  %cmp.i129 = icmp eq i32 %or5.i128, 0
  br i1 %cmp.i129, label %if.then32, label %if.else45

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %__pad33 = getelementptr inbounds %struct.sockaddr_in, ptr %uaddr, i32 0, i32 3
  %48 = ptrtoint ptr %__pad33 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 8)
  store i64 0, ptr %__pad33, align 4
  %49 = ptrtoint ptr %uaddr to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 2, ptr %uaddr, align 4
  %sin6_port37 = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 5, i32 1
  %50 = ptrtoint ptr %sin6_port37 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %sin6_port37, align 2
  %sin_port38 = getelementptr inbounds %struct.sockaddr_in, ptr %uaddr, i32 0, i32 1
  %52 = ptrtoint ptr %sin_port38 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %sin_port38, align 2
  %53 = ptrtoint ptr %arrayidx7.i114 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx7.i114, align 4
  %sin_addr43 = getelementptr inbounds %struct.sockaddr_in, ptr %uaddr, i32 0, i32 2
  %55 = ptrtoint ptr %sin_addr43 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %sin_addr43, align 4
  br label %cleanup

if.else45:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %uaddr to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 10, ptr %uaddr, align 4
  %sin6_port48 = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 5, i32 1
  %57 = ptrtoint ptr %sin6_port48 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %sin6_port48, align 2
  %sin6_port49 = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 1
  %59 = ptrtoint ptr %sin6_port49 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %sin6_port49, align 2
  %sin6_addr50 = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 3
  %60 = call ptr @memcpy(ptr %sin6_addr50, ptr %sin6_addr13, i32 16)
  %sin6_flowinfo53 = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 2
  %61 = ptrtoint ptr %sin6_flowinfo53 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %sin6_flowinfo53, align 4
  %sin6_scope_id55 = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 5, i32 4
  %62 = ptrtoint ptr %sin6_scope_id55 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sin6_scope_id55, align 4
  %sin6_scope_id56 = getelementptr inbounds %struct.sockaddr_in6, ptr %uaddr, i32 0, i32 4
  %64 = ptrtoint ptr %sin6_scope_id56 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %sin6_scope_id56, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else45, %if.then32, %if.end26, %if.then24, %if.then18, %if.else, %if.then5, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 16, %if.then18 ], [ 16, %if.end26 ], [ 28, %if.then24 ], [ -107, %if.then.cleanup_crit_edge ], [ 16, %if.then5 ], [ 28, %if.else ], [ 16, %if.then32 ], [ 28, %if.else45 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rds_poll(ptr noundef %file, ptr nocapture noundef readonly %sock, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  br i1 %tobool.not.i, label %poll_wait.exit.thread, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %5 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %6, null
  %tobool3.not.i = icmp eq ptr %4, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %6(ptr noundef %file, ptr noundef nonnull %4, ptr noundef nonnull %wait) #5
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge
  %rs_seen_congestion = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %rs_seen_congestion to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rs_seen_congestion, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %poll_wait.exit.do.body_crit_edge, label %land.lhs.true.i80.critedge

poll_wait.exit.do.body_crit_edge:                 ; preds = %poll_wait.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

poll_wait.exit.thread:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rs_seen_congestion89 = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 11
  br label %do.body

land.lhs.true.i80.critedge:                       ; preds = %poll_wait.exit
  %9 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wait, align 4
  %tobool1.not.i79 = icmp eq ptr %10, null
  br i1 %tobool1.not.i79, label %land.lhs.true.i80.critedge.do.body_crit_edge, label %if.then.i81

land.lhs.true.i80.critedge.do.body_crit_edge:     ; preds = %land.lhs.true.i80.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then.i81:                                      ; preds = %land.lhs.true.i80.critedge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %10(ptr noundef %file, ptr noundef nonnull @rds_poll_waitq, ptr noundef nonnull %wait) #5
  br label %do.body

do.body:                                          ; preds = %if.then.i81, %land.lhs.true.i80.critedge.do.body_crit_edge, %poll_wait.exit.thread, %poll_wait.exit.do.body_crit_edge
  %rs_seen_congestion92 = phi ptr [ %rs_seen_congestion, %poll_wait.exit.do.body_crit_edge ], [ %rs_seen_congestion, %land.lhs.true.i80.critedge.do.body_crit_edge ], [ %rs_seen_congestion, %if.then.i81 ], [ %rs_seen_congestion89, %poll_wait.exit.thread ]
  %rs_recv_lock = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 21
  %call3 = tail call i32 @_raw_read_lock_irqsave(ptr noundef %rs_recv_lock) #5
  %rs_cong_monitor = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 27
  %11 = ptrtoint ptr %rs_cong_monitor to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rs_cong_monitor, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool4.not = icmp eq i8 %12, 0
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %rs_cong_track = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 20
  %call6 = tail call i32 @rds_cong_updated_since(ptr noundef %rs_cong_track) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  %spec.select = select i1 %tobool7.not, i32 0, i32 577
  br label %if.end15

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %rs_lock = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %rs_lock) #5
  %rs_cong_notify = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 18
  %13 = ptrtoint ptr %rs_cong_notify to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %rs_cong_notify, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool10.not = icmp eq i64 %14, 0
  %spec.select76 = select i1 %tobool10.not, i32 0, i32 65
  tail call void @_raw_spin_unlock(ptr noundef %rs_lock) #5
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then5
  %mask.1 = phi i32 [ %spec.select76, %if.else ], [ %spec.select, %if.then5 ]
  %rs_recv_queue = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 22
  %15 = ptrtoint ptr %rs_recv_queue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %rs_recv_queue, align 4
  %cmp.i.not = icmp eq ptr %16, %rs_recv_queue
  br i1 %cmp.i.not, label %lor.lhs.false, label %if.end15.if.then23_crit_edge

if.end15.if.then23_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then23

lor.lhs.false:                                    ; preds = %if.end15
  %rs_notify_queue = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 16
  %17 = ptrtoint ptr %rs_notify_queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %rs_notify_queue, align 4
  %cmp.i83.not = icmp eq ptr %18, %rs_notify_queue
  br i1 %cmp.i83.not, label %lor.lhs.false20, label %lor.lhs.false.if.then23_crit_edge

lor.lhs.false.if.then23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then23

lor.lhs.false20:                                  ; preds = %lor.lhs.false
  %rs_zcookie_queue = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 31
  %19 = ptrtoint ptr %rs_zcookie_queue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %rs_zcookie_queue, align 4
  %cmp.i85.not = icmp eq ptr %20, %rs_zcookie_queue
  br i1 %cmp.i85.not, label %lor.lhs.false20.if.end25_crit_edge, label %lor.lhs.false20.if.then23_crit_edge

lor.lhs.false20.if.then23_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then23

lor.lhs.false20.if.end25_crit_edge:               ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then23:                                        ; preds = %lor.lhs.false20.if.then23_crit_edge, %lor.lhs.false.if.then23_crit_edge, %if.end15.if.then23_crit_edge
  %or24 = or i32 %mask.1, 65
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %lor.lhs.false20.if.end25_crit_edge
  %mask.2 = phi i32 [ %mask.1, %lor.lhs.false20.if.end25_crit_edge ], [ %or24, %if.then23 ]
  %rs_snd_bytes = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 14
  %21 = ptrtoint ptr %rs_snd_bytes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rs_snd_bytes, align 8
  %sk_sndbuf.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 21
  %23 = ptrtoint ptr %sk_sndbuf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sk_sndbuf.i, align 4
  %div.i = sdiv i32 %24, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %div.i)
  %cmp27 = icmp ult i32 %22, %div.i
  %or30 = or i32 %mask.2, 260
  %spec.select77 = select i1 %cmp27, i32 %or30, i32 %mask.2
  %sk_err = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 51
  %25 = ptrtoint ptr %sk_err to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sk_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool32.not = icmp eq i32 %26, 0
  br i1 %tobool32.not, label %lor.lhs.false33, label %if.end25.do.body39.thread_crit_edge

if.end25.do.body39.thread_crit_edge:              ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body39.thread

lor.lhs.false33:                                  ; preds = %if.end25
  %sk_error_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %sk_error_queue to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sk_error_queue, align 4
  %cmp.i87.not = icmp eq ptr %28, %sk_error_queue
  br i1 %cmp.i87.not, label %do.body39, label %lor.lhs.false33.do.body39.thread_crit_edge

lor.lhs.false33.do.body39.thread_crit_edge:       ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body39.thread

do.body39.thread:                                 ; preds = %lor.lhs.false33.do.body39.thread_crit_edge, %if.end25.do.body39.thread_crit_edge
  %or37 = or i32 %spec.select77, 8
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %rs_recv_lock, i32 noundef %call3) #5
  br label %if.then49

do.body39:                                        ; preds = %lor.lhs.false33
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %rs_recv_lock, i32 noundef %call3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select77)
  %tobool48.not = icmp eq i32 %spec.select77, 0
  br i1 %tobool48.not, label %do.body39.if.end51_crit_edge, label %do.body39.if.then49_crit_edge

do.body39.if.then49_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then49

do.body39.if.end51_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then49:                                        ; preds = %do.body39.if.then49_crit_edge, %do.body39.thread
  %mask.497 = phi i32 [ %or37, %do.body39.thread ], [ %spec.select77, %do.body39.if.then49_crit_edge ]
  %29 = ptrtoint ptr %rs_seen_congestion92 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %rs_seen_congestion92, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %do.body39.if.end51_crit_edge
  %mask.498 = phi i32 [ %mask.497, %if.then49 ], [ 0, %do.body39.if.end51_crit_edge ]
  ret i32 %mask.498
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rds_ioctl(ptr nocapture noundef readonly %sock, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 35296, label %sw.bb
    i32 35297, label %sw.bb18
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 262) #5
  %3 = inttoptr i32 %arg to ptr
  %4 = tail call i32 @llvm.read_register.i32(metadata !61) #5
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !79
  %and.i = and i32 %6, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  %7 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_1", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %3, i32 -1226833921) #5, !srcloc !82
  %asmresult = extractvalue { i32, i32 } %7, 0
  %asmresult2 = extractvalue { i32, i32 } %7, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  %conv = trunc i32 %asmresult2 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %rs_transport = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %rs_transport to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rs_transport, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %get_tos_map = getelementptr inbounds %struct.rds_transport, ptr %9, i32 0, i32 28
  %10 = ptrtoint ptr %get_tos_map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_tos_map, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %if.then7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7:                                         ; preds = %land.lhs.true
  %call10 = tail call zeroext i8 %11(i8 noundef zeroext %conv) #5
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rds_sock_lock) #5
  %rs_tos = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 32
  %12 = ptrtoint ptr %rs_tos to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rs_tos, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool13.not = icmp eq i8 %13, 0
  br i1 %tobool13.not, label %lor.lhs.false, label %if.then7.if.then15_crit_edge

if.then7.if.then15_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15

lor.lhs.false:                                    ; preds = %if.then7
  %rs_conn = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %rs_conn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rs_conn, align 8
  %tobool14.not = icmp eq ptr %15, null
  br i1 %tobool14.not, label %if.end16, label %lor.lhs.false.if.then15_crit_edge

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %if.then7.if.then15_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rds_sock_lock) #5
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %rs_tos to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %call10, ptr %rs_tos, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rds_sock_lock) #5
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @rds_sock_lock) #5
  %rs_tos19 = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 32
  %17 = ptrtoint ptr %rs_tos19 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rs_tos19, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @rds_sock_lock) #5
  %19 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 283) #5
  %20 = tail call i32 @llvm.read_register.i32(metadata !61) #5
  %and.i.i.i43 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i43 to ptr
  %cpu_domain.i.i44 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i44) #4, !srcloc !79
  %and.i45 = and i32 %22, -13
  %or.i46 = or i32 %and.i45, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i46) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  %23 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %19, i8 %18, i32 -1226833921) #5, !srcloc !83
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool29.not = icmp eq i32 %23, 0
  br i1 %tobool29.not, label %sw.bb18.sw.epilog_crit_edge, label %sw.bb18.cleanup_crit_edge

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb18.sw.epilog_crit_edge, %if.end16
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb18.cleanup_crit_edge, %if.then15, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %if.then15 ], [ -14, %sw.bb.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -515, %if.end.cleanup_crit_edge ], [ -14, %sw.bb18.cleanup_crit_edge ], [ -515, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rds_setsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) #0 align 64 {
entry:
  %trace.i = alloca %struct.rds_rx_trace_so, align 4
  %val.i = alloca i32, align 4
  %t_type.i = alloca i32, align 4
  %sin6.i = alloca %struct.sockaddr_in6, align 4
  %sin.i = alloca %struct.sockaddr_in, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 276, i32 %level)
  %cmp.not = icmp eq i32 %level, 276
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %2 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %optname, label %if.end.out_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 7, label %sw.bb4
    i32 3, label %sw.bb6
    i32 5, label %sw.bb8
    i32 6, label %sw.bb10
    i32 8, label %sw.bb12
    i32 29, label %if.end.sw.bb16_crit_edge
    i32 63, label %if.end.sw.bb16_crit_edge183
    i32 10, label %sw.bb21
  ]

if.end.sw.bb16_crit_edge183:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb16

if.end.sw.bb16_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb16

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sin6.i) #5
  %3 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6.i, i32 0, i32 3
  %5 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6.i, i32 0, i32 3, i32 0, i32 0, i32 2
  %7 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin6.i, i32 0, i32 3, i32 0, i32 0, i32 3
  %8 = call ptr @memset(ptr %sin6.i, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sin.i) #5
  %9 = getelementptr inbounds %struct.sockaddr_in, ptr %sin.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.sockaddr_in, ptr %sin.i, i32 0, i32 2
  %sin6_addr.i = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 5, i32 3
  %11 = call ptr @memset(ptr %sin.i, i32 255, i32 16)
  %12 = ptrtoint ptr %sin6_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sin6_addr.i, align 4
  %arrayidx2.i.i = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 5, i32 3, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %15, %13
  %arrayidx4.i.i = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 5, i32 3, i32 0, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4.i.i, align 4
  %or5.i.i = or i32 %or.i.i, %17
  %arrayidx7.i.i = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 5, i32 3, i32 0, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx7.i.i, align 4
  %or8.i.i = or i32 %or5.i.i, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i)
  %cmp.i.i = icmp eq i32 %or8.i.i, 0
  br i1 %cmp.i.i, label %sw.bb.rds_cancel_sent_to.exit_crit_edge, label %if.end.i

sw.bb.rds_cancel_sent_to.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %rds_cancel_sent_to.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %optlen)
  %cmp.i = icmp ult i32 %optlen, 16
  br i1 %cmp.i, label %if.end.i.rds_cancel_sent_to.exit_crit_edge, label %if.else.i

if.end.i.rds_cancel_sent_to.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rds_cancel_sent_to.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %optlen)
  %cmp2.i = icmp ult i32 %optlen, 28
  %src.coerce.fca.0.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %20 = inttoptr i32 %src.coerce.fca.0.extract.i.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i.i)
  %bf.cast.i.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i.i, 0
  br i1 %cmp2.i, label %if.then3.i, label %if.else8.i

if.then3.i:                                       ; preds = %if.else.i
  br i1 %bf.cast.i.i.i.i, label %if.end.i.i.i, label %if.end59.i.i.i.i.i

if.end59.i.i.i.i.i:                               ; preds = %if.then3.i
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #5
  %call.i.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i.i.i.i, label %if.end59.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.end59.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge: ; preds = %if.end59.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.end59.i.i.i.i.i
  %21 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %20, i32 16, i32 -1226833920) #8, !srcloc !84
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i6.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i.i, label %if.end.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !prof !73

land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i.i
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sin.i, i32 noundef 16) #5
  %22 = call i32 @llvm.read_register.i32(metadata !61) #5
  %and.i.i.i.i.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i.i) #4, !srcloc !79
  %and.i.i.i.i.i.i.i = and i32 %24, -13
  %or.i.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i.i) #5, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  %call1.i.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %sin.i, ptr noundef %20, i32 noundef 16) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #5, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i)
  %tobool4.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i.i, label %if.end.i.i.i.i.i.if.end6.i_crit_edge, label %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !prof !73

if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge:   ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i.i.i

if.end.i.i.i.i.i.if.end6.i_crit_edge:             ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.then11.i.i.i.i.i:                              ; preds = %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %if.end59.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge
  %res.0.i.i.i.i55.i = phi i32 [ %call1.i.i.i.i.i.i, %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ], [ 16, %if.end59.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ]
  %sub.i.i.i.i.i = sub i32 16, %res.0.i.i.i.i55.i
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %sin.i, i32 %sub.i.i.i.i.i
  %25 = call ptr @memset(ptr %add.ptr.i.i.i.i.i, i32 0, i32 %res.0.i.i.i.i55.i)
  br label %rds_cancel_sent_to.exit

if.end.i.i.i:                                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = call ptr @memcpy(ptr %sin.i, ptr %20, i32 16)
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i.i.i, %if.end.i.i.i.i.i.if.end6.i_crit_edge
  %27 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %10, align 4
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %4, align 4
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %5, align 4
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 65535, ptr %6, align 4
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %28, ptr %7, align 4
  %33 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %9, align 2
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %3, align 2
  br label %if.end14.i

if.else8.i:                                       ; preds = %if.else.i
  br i1 %bf.cast.i.i.i.i, label %if.end.i.i50.i, label %if.end59.i.i.i.i32.i

if.end59.i.i.i.i32.i:                             ; preds = %if.else8.i
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #5
  %call.i.i.i.i33.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i.i.i33.i, label %if.end59.i.i.i.i32.i.if.then11.i.i.i.i49.i_crit_edge, label %land.lhs.true.i.i.i.i36.i

if.end59.i.i.i.i32.i.if.then11.i.i.i.i49.i_crit_edge: ; preds = %if.end59.i.i.i.i32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i.i49.i

land.lhs.true.i.i.i.i36.i:                        ; preds = %if.end59.i.i.i.i32.i
  %36 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %20, i32 28, i32 -1226833920) #8, !srcloc !84
  %asmresult.i.i.i.i34.i = extractvalue { i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i34.i)
  %cmp.i6.i.i.i35.i = icmp eq i32 %asmresult.i.i.i.i34.i, 0
  br i1 %cmp.i6.i.i.i35.i, label %if.end.i.i.i.i46.i, label %land.lhs.true.i.i.i.i36.i.if.then11.i.i.i.i49.i_crit_edge, !prof !73

land.lhs.true.i.i.i.i36.i.if.then11.i.i.i.i49.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i.i49.i

if.end.i.i.i.i46.i:                               ; preds = %land.lhs.true.i.i.i.i36.i
  %call.i.i.i.i.i37.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sin6.i, i32 noundef 28) #5
  %37 = call i32 @llvm.read_register.i32(metadata !61) #5
  %and.i.i.i.i.i.i.i.i38.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i.i.i.i.i.i38.i to ptr
  %cpu_domain.i.i.i.i.i.i.i39.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 4
  %39 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i39.i) #4, !srcloc !79
  %and.i.i.i.i.i.i40.i = and i32 %39, -13
  %or.i.i.i.i.i.i41.i = or i32 %and.i.i.i.i.i.i40.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i41.i) #5, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  %call1.i.i.i.i.i42.i = call i32 @arm_copy_from_user(ptr noundef nonnull %sin6.i, ptr noundef %20, i32 noundef 28) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #5, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i42.i)
  %tobool4.not.i.i.i.i45.i = icmp eq i32 %call1.i.i.i.i.i42.i, 0
  br i1 %tobool4.not.i.i.i.i45.i, label %if.end.i.i.i.i46.i.if.end14.i_crit_edge, label %if.end.i.i.i.i46.i.if.then11.i.i.i.i49.i_crit_edge, !prof !73

if.end.i.i.i.i46.i.if.then11.i.i.i.i49.i_crit_edge: ; preds = %if.end.i.i.i.i46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i.i49.i

if.end.i.i.i.i46.i.if.end14.i_crit_edge:          ; preds = %if.end.i.i.i.i46.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.then11.i.i.i.i49.i:                            ; preds = %if.end.i.i.i.i46.i.if.then11.i.i.i.i49.i_crit_edge, %land.lhs.true.i.i.i.i36.i.if.then11.i.i.i.i49.i_crit_edge, %if.end59.i.i.i.i32.i.if.then11.i.i.i.i49.i_crit_edge
  %res.0.i.i.i.i4460.i = phi i32 [ %call1.i.i.i.i.i42.i, %if.end.i.i.i.i46.i.if.then11.i.i.i.i49.i_crit_edge ], [ 28, %if.end59.i.i.i.i32.i.if.then11.i.i.i.i49.i_crit_edge ], [ 28, %land.lhs.true.i.i.i.i36.i.if.then11.i.i.i.i49.i_crit_edge ]
  %sub.i.i.i.i47.i = sub i32 28, %res.0.i.i.i.i4460.i
  %add.ptr.i.i.i.i48.i = getelementptr i8, ptr %sin6.i, i32 %sub.i.i.i.i47.i
  %40 = call ptr @memset(ptr %add.ptr.i.i.i.i48.i, i32 0, i32 %res.0.i.i.i.i4460.i)
  br label %rds_cancel_sent_to.exit

if.end.i.i50.i:                                   ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #7
  %41 = call ptr @memcpy(ptr %sin6.i, ptr %20, i32 28)
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end.i.i50.i, %if.end.i.i.i.i46.i.if.end14.i_crit_edge, %if.end6.i
  call void @rds_send_drop_to(ptr noundef %1, ptr noundef nonnull %sin6.i) #5
  br label %rds_cancel_sent_to.exit

rds_cancel_sent_to.exit:                          ; preds = %if.end14.i, %if.then11.i.i.i.i49.i, %if.then11.i.i.i.i.i, %if.end.i.rds_cancel_sent_to.exit_crit_edge, %sw.bb.rds_cancel_sent_to.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end14.i ], [ -107, %sw.bb.rds_cancel_sent_to.exit_crit_edge ], [ -22, %if.end.i.rds_cancel_sent_to.exit_crit_edge ], [ -14, %if.then11.i.i.i.i.i ], [ -14, %if.then11.i.i.i.i49.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sin.i) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sin6.i) #5
  br label %out

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 @rds_get_mr(ptr noundef %1, [2 x i32] %optval.coerce, i32 noundef %optlen) #5
  br label %out

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 @rds_get_mr_for_dest(ptr noundef %1, [2 x i32] %optval.coerce, i32 noundef %optlen) #5
  br label %out

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 @rds_free_mr(ptr noundef %1, [2 x i32] %optval.coerce, i32 noundef %optlen) #5
  br label %out

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %rs_recverr = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 26
  %call9 = tail call fastcc i32 @rds_set_bool_option(ptr noundef %rs_recverr, [2 x i32] %optval.coerce, i32 noundef %optlen)
  br label %out

sw.bb10:                                          ; preds = %if.end
  %rs_cong_monitor.i = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 27
  %call.i = tail call fastcc i32 @rds_set_bool_option(ptr noundef %rs_cong_monitor.i, [2 x i32] %optval.coerce, i32 noundef %optlen) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i108 = icmp eq i32 %call.i, 0
  br i1 %cmp.i108, label %if.then.i, label %sw.bb10.out_crit_edge

sw.bb10.out_crit_edge:                            ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then.i:                                        ; preds = %sw.bb10
  %42 = ptrtoint ptr %rs_cong_monitor.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %rs_cong_monitor.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i = icmp eq i8 %43, 0
  br i1 %tobool.not.i, label %if.else.i109, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rds_cong_add_socket(ptr noundef %1) #5
  br label %out

if.else.i109:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @rds_cong_remove_socket(ptr noundef %1) #5
  %rs_cong_mask.i = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 17
  %44 = call ptr @memset(ptr %rs_cong_mask.i, i32 0, i32 16)
  br label %out

sw.bb12:                                          ; preds = %if.end
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t_type.i) #5
  %45 = ptrtoint ptr %t_type.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %t_type.i, align 4, !annotation !78
  %rs_transport.i = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 8
  %46 = ptrtoint ptr %rs_transport.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rs_transport.i, align 4
  %tobool.not.i110 = icmp eq ptr %47, null
  br i1 %tobool.not.i110, label %if.end.i111, label %sw.bb12.rds_set_transport.exit_crit_edge

sw.bb12.rds_set_transport.exit_crit_edge:         ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #7
  br label %rds_set_transport.exit

if.end.i111:                                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp.not.i = icmp eq i32 %optlen, 4
  br i1 %cmp.not.i, label %if.end2.i, label %if.end.i111.rds_set_transport.exit_crit_edge

if.end.i111.rds_set_transport.exit_crit_edge:     ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #7
  br label %rds_set_transport.exit

if.end2.i:                                        ; preds = %if.end.i111
  %src.coerce.fca.0.extract.i.i.i112 = extractvalue [2 x i32] %optval.coerce, 0
  %48 = inttoptr i32 %src.coerce.fca.0.extract.i.i.i112 to ptr
  %sockptr.coerce.fca.1.extract.i.i.i.i113 = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i.i113)
  %bf.cast.i.i.i.i114 = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i.i113, 0
  br i1 %bf.cast.i.i.i.i114, label %if.end.i.i.i131, label %if.end59.i.i.i.i.i116

if.end59.i.i.i.i.i116:                            ; preds = %if.end2.i
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #5
  %call.i.i.i.i.i115 = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i.i.i.i115, label %if.end59.i.i.i.i.i116.if.then11.i.i.i.i.i130_crit_edge, label %land.lhs.true.i.i.i.i.i119

if.end59.i.i.i.i.i116.if.then11.i.i.i.i.i130_crit_edge: ; preds = %if.end59.i.i.i.i.i116
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i.i.i130

land.lhs.true.i.i.i.i.i119:                       ; preds = %if.end59.i.i.i.i.i116
  %49 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %48, i32 4, i32 -1226833920) #8, !srcloc !84
  %asmresult.i.i.i.i.i117 = extractvalue { i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i117)
  %cmp.i6.i.i.i.i118 = icmp eq i32 %asmresult.i.i.i.i.i117, 0
  br i1 %cmp.i6.i.i.i.i118, label %if.end.i.i.i.i.i127, label %land.lhs.true.i.i.i.i.i119.if.then11.i.i.i.i.i130_crit_edge, !prof !73

land.lhs.true.i.i.i.i.i119.if.then11.i.i.i.i.i130_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i119
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i.i.i130

if.end.i.i.i.i.i127:                              ; preds = %land.lhs.true.i.i.i.i.i119
  %call.i.i.i.i.i.i120 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %t_type.i, i32 noundef 4) #5
  %50 = call i32 @llvm.read_register.i32(metadata !61) #5
  %and.i.i.i.i.i.i.i.i.i121 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i121 to ptr
  %cpu_domain.i.i.i.i.i.i.i.i122 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 4
  %52 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i.i122) #4, !srcloc !79
  %and.i.i.i.i.i.i.i123 = and i32 %52, -13
  %or.i.i.i.i.i.i.i124 = or i32 %and.i.i.i.i.i.i.i123, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i.i124) #5, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  %call1.i.i.i.i.i.i125 = call i32 @arm_copy_from_user(ptr noundef nonnull %t_type.i, ptr noundef %48, i32 noundef 4) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #5, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i125)
  %tobool4.not.i.i.i.i.i126 = icmp eq i32 %call1.i.i.i.i.i.i125, 0
  br i1 %tobool4.not.i.i.i.i.i126, label %if.end5thread-pre-split.i, label %if.end.i.i.i.i.i127.if.then11.i.i.i.i.i130_crit_edge, !prof !73

if.end.i.i.i.i.i127.if.then11.i.i.i.i.i130_crit_edge: ; preds = %if.end.i.i.i.i.i127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i.i.i130

if.then11.i.i.i.i.i130:                           ; preds = %if.end.i.i.i.i.i127.if.then11.i.i.i.i.i130_crit_edge, %land.lhs.true.i.i.i.i.i119.if.then11.i.i.i.i.i130_crit_edge, %if.end59.i.i.i.i.i116.if.then11.i.i.i.i.i130_crit_edge
  %res.0.i.i.i.i18.i = phi i32 [ %call1.i.i.i.i.i.i125, %if.end.i.i.i.i.i127.if.then11.i.i.i.i.i130_crit_edge ], [ 4, %if.end59.i.i.i.i.i116.if.then11.i.i.i.i.i130_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.i119.if.then11.i.i.i.i.i130_crit_edge ]
  %sub.i.i.i.i.i128 = sub i32 4, %res.0.i.i.i.i18.i
  %add.ptr.i.i.i.i.i129 = getelementptr i8, ptr %t_type.i, i32 %sub.i.i.i.i.i128
  %53 = call ptr @memset(ptr %add.ptr.i.i.i.i.i129, i32 0, i32 %res.0.i.i.i.i18.i)
  br label %rds_set_transport.exit

if.end.i.i.i131:                                  ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %48 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %48, align 1
  %56 = ptrtoint ptr %t_type.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %t_type.i, align 4
  br label %if.end5.i

if.end5thread-pre-split.i:                        ; preds = %if.end.i.i.i.i.i127
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %t_type.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pr.i = load i32, ptr %t_type.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end5thread-pre-split.i, %if.end.i.i.i131
  %58 = phi i32 [ %.pr.i, %if.end5thread-pre-split.i ], [ %55, %if.end.i.i.i131 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %59 = icmp ugt i32 %58, 2
  br i1 %59, label %if.end5.i.rds_set_transport.exit_crit_edge, label %if.end9.i

if.end5.i.rds_set_transport.exit_crit_edge:       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rds_set_transport.exit

if.end9.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i = call ptr @rds_trans_get(i32 noundef %58) #5
  %60 = ptrtoint ptr %rs_transport.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call10.i, ptr %rs_transport.i, align 4
  %tobool13.not.i = icmp eq ptr %call10.i, null
  %cond.i = select i1 %tobool13.not.i, i32 -92, i32 0
  br label %rds_set_transport.exit

rds_set_transport.exit:                           ; preds = %if.end9.i, %if.end5.i.rds_set_transport.exit_crit_edge, %if.then11.i.i.i.i.i130, %if.end.i111.rds_set_transport.exit_crit_edge, %sw.bb12.rds_set_transport.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i, %if.end9.i ], [ -95, %sw.bb12.rds_set_transport.exit_crit_edge ], [ -22, %if.end.i111.rds_set_transport.exit_crit_edge ], [ -22, %if.end5.i.rds_set_transport.exit_crit_edge ], [ -14, %if.then11.i.i.i.i.i130 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t_type.i) #5
  %61 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sk, align 16
  call void @release_sock(ptr noundef %62) #5
  br label %out

sw.bb16:                                          ; preds = %if.end.sw.bb16_crit_edge, %if.end.sw.bb16_crit_edge183
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #5
  %63 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sk, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %65 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %val.i, align 4, !annotation !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp.not.i132 = icmp eq i32 %optlen, 4
  br i1 %cmp.not.i132, label %if.end.i136, label %sw.bb16.rds_enable_recvtstamp.exit_crit_edge

sw.bb16.rds_enable_recvtstamp.exit_crit_edge:     ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #7
  br label %rds_enable_recvtstamp.exit

if.end.i136:                                      ; preds = %sw.bb16
  %src.coerce.fca.0.extract.i.i.i133 = extractvalue [2 x i32] %optval.coerce, 0
  %66 = inttoptr i32 %src.coerce.fca.0.extract.i.i.i133 to ptr
  %sockptr.coerce.fca.1.extract.i.i.i.i134 = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i.i134)
  %bf.cast.i.i.i.i135 = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i.i134, 0
  br i1 %bf.cast.i.i.i.i135, label %if.end.i136.if.end2.i154_crit_edge, label %if.end59.i.i.i.i.i138

if.end.i136.if.end2.i154_crit_edge:               ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2.i154

if.end59.i.i.i.i.i138:                            ; preds = %if.end.i136
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #5
  %call.i.i.i.i.i137 = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i.i.i.i137, label %if.end59.i.i.i.i.i138.if.then11.i.i.i.i.i152_crit_edge, label %land.lhs.true.i.i.i.i.i141

if.end59.i.i.i.i.i138.if.then11.i.i.i.i.i152_crit_edge: ; preds = %if.end59.i.i.i.i.i138
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i.i.i152

land.lhs.true.i.i.i.i.i141:                       ; preds = %if.end59.i.i.i.i.i138
  %67 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %66, i32 4, i32 -1226833920) #8, !srcloc !84
  %asmresult.i.i.i.i.i139 = extractvalue { i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i139)
  %cmp.i6.i.i.i.i140 = icmp eq i32 %asmresult.i.i.i.i.i139, 0
  br i1 %cmp.i6.i.i.i.i140, label %if.end.i.i.i.i.i149, label %land.lhs.true.i.i.i.i.i141.if.then11.i.i.i.i.i152_crit_edge, !prof !73

land.lhs.true.i.i.i.i.i141.if.then11.i.i.i.i.i152_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i141
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i.i.i152

if.end.i.i.i.i.i149:                              ; preds = %land.lhs.true.i.i.i.i.i141
  %call.i.i.i.i.i.i142 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val.i, i32 noundef 4) #5
  %68 = call i32 @llvm.read_register.i32(metadata !61) #5
  %and.i.i.i.i.i.i.i.i.i143 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i143 to ptr
  %cpu_domain.i.i.i.i.i.i.i.i144 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 4
  %70 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i.i144) #4, !srcloc !79
  %and.i.i.i.i.i.i.i145 = and i32 %70, -13
  %or.i.i.i.i.i.i.i146 = or i32 %and.i.i.i.i.i.i.i145, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i.i146) #5, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  %call1.i.i.i.i.i.i147 = call i32 @arm_copy_from_user(ptr noundef nonnull %val.i, ptr noundef %66, i32 noundef 4) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %70) #5, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i147)
  %tobool4.not.i.i.i.i.i148 = icmp eq i32 %call1.i.i.i.i.i.i147, 0
  br i1 %tobool4.not.i.i.i.i.i148, label %if.end.i.i.i.i.i149.if.end2.i154_crit_edge, label %if.end.i.i.i.i.i149.if.then11.i.i.i.i.i152_crit_edge, !prof !73

if.end.i.i.i.i.i149.if.then11.i.i.i.i.i152_crit_edge: ; preds = %if.end.i.i.i.i.i149
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i.i.i152

if.end.i.i.i.i.i149.if.end2.i154_crit_edge:       ; preds = %if.end.i.i.i.i.i149
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2.i154

if.then11.i.i.i.i.i152:                           ; preds = %if.end.i.i.i.i.i149.if.then11.i.i.i.i.i152_crit_edge, %land.lhs.true.i.i.i.i.i141.if.then11.i.i.i.i.i152_crit_edge, %if.end59.i.i.i.i.i138.if.then11.i.i.i.i.i152_crit_edge
  %res.0.i.i.i.i16.i = phi i32 [ %call1.i.i.i.i.i.i147, %if.end.i.i.i.i.i149.if.then11.i.i.i.i.i152_crit_edge ], [ 4, %if.end59.i.i.i.i.i138.if.then11.i.i.i.i.i152_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.i141.if.then11.i.i.i.i.i152_crit_edge ]
  %sub.i.i.i.i.i150 = sub i32 4, %res.0.i.i.i.i16.i
  %add.ptr.i.i.i.i.i151 = getelementptr i8, ptr %val.i, i32 %sub.i.i.i.i.i150
  %71 = call ptr @memset(ptr %add.ptr.i.i.i.i.i151, i32 0, i32 %res.0.i.i.i.i16.i)
  br label %rds_enable_recvtstamp.exit

if.end2.i154:                                     ; preds = %if.end.i.i.i.i.i149.if.end2.i154_crit_edge, %if.end.i136.if.end2.i154_crit_edge
  %.in.i = phi ptr [ %66, %if.end.i136.if.end2.i154_crit_edge ], [ %val.i, %if.end.i.i.i.i.i149.if.end2.i154_crit_edge ]
  %72 = ptrtoint ptr %.in.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 4)
  %73 = load i32, ptr %.in.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool3.not.i = icmp eq i32 %73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %optname)
  %cmp4.i = icmp eq i32 %optname, 63
  br i1 %cmp4.i, label %if.then5.i, label %if.end2.i154.if.end6.i155_crit_edge

if.end2.i154.if.end6.i155_crit_edge:              ; preds = %if.end2.i154
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i155

if.then5.i:                                       ; preds = %if.end2.i154
  call void @__sanitizer_cov_trace_pc() #7
  %74 = getelementptr inbounds %struct.sock_common, ptr %64, i32 0, i32 13
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %74, align 4
  %or.i.i.i = or i32 %76, 67108864
  store i32 %or.i.i.i, ptr %74, align 4
  br label %if.end6.i155

if.end6.i155:                                     ; preds = %if.then5.i, %if.end2.i154.if.end6.i155_crit_edge
  %77 = getelementptr inbounds %struct.sock_common, ptr %64, i32 0, i32 13
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  br i1 %tobool3.not.i, label %if.else.i156, label %if.then8.i

if.then8.i:                                       ; preds = %if.end6.i155
  call void @__sanitizer_cov_trace_pc() #7
  %or.i.i13.i = or i32 %79, 2048
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %or.i.i13.i, ptr %77, align 4
  br label %rds_enable_recvtstamp.exit

if.else.i156:                                     ; preds = %if.end6.i155
  call void @__sanitizer_cov_trace_pc() #7
  %and.i.i.i = and i32 %79, -2049
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %and.i.i.i, ptr %77, align 4
  br label %rds_enable_recvtstamp.exit

rds_enable_recvtstamp.exit:                       ; preds = %if.else.i156, %if.then8.i, %if.then11.i.i.i.i.i152, %sw.bb16.rds_enable_recvtstamp.exit_crit_edge
  %retval.0.i157 = phi i32 [ -14, %sw.bb16.rds_enable_recvtstamp.exit_crit_edge ], [ 0, %if.else.i156 ], [ 0, %if.then8.i ], [ -14, %if.then11.i.i.i.i.i152 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  %82 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sk, align 16
  call void @release_sock(ptr noundef %83) #5
  br label %out

sw.bb21:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trace.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp.not.i158 = icmp eq i32 %optlen, 4
  %84 = ptrtoint ptr %trace.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -1, ptr %trace.i, align 4
  br i1 %cmp.not.i158, label %if.end.i162, label %sw.bb21.rds_recv_track_latency.exit_crit_edge

sw.bb21.rds_recv_track_latency.exit_crit_edge:    ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #7
  br label %rds_recv_track_latency.exit

if.end.i162:                                      ; preds = %sw.bb21
  %src.coerce.fca.0.extract.i.i.i159 = extractvalue [2 x i32] %optval.coerce, 0
  %85 = inttoptr i32 %src.coerce.fca.0.extract.i.i.i159 to ptr
  %sockptr.coerce.fca.1.extract.i.i.i.i160 = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i.i160)
  %bf.cast.i.i.i.i161 = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i.i160, 0
  br i1 %bf.cast.i.i.i.i161, label %if.end.i.i.i179, label %if.end59.i.i.i.i.i164

if.end59.i.i.i.i.i164:                            ; preds = %if.end.i162
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #5
  %call.i.i.i.i.i163 = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i.i.i.i163, label %if.end59.i.i.i.i.i164.if.then11.i.i.i.i.i178_crit_edge, label %land.lhs.true.i.i.i.i.i167

if.end59.i.i.i.i.i164.if.then11.i.i.i.i.i178_crit_edge: ; preds = %if.end59.i.i.i.i.i164
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i.i.i178

land.lhs.true.i.i.i.i.i167:                       ; preds = %if.end59.i.i.i.i.i164
  %86 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %85, i32 4, i32 -1226833920) #8, !srcloc !84
  %asmresult.i.i.i.i.i165 = extractvalue { i32, i32 } %86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i165)
  %cmp.i6.i.i.i.i166 = icmp eq i32 %asmresult.i.i.i.i.i165, 0
  br i1 %cmp.i6.i.i.i.i166, label %if.end.i.i.i.i.i175, label %land.lhs.true.i.i.i.i.i167.if.then11.i.i.i.i.i178_crit_edge, !prof !73

land.lhs.true.i.i.i.i.i167.if.then11.i.i.i.i.i178_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i167
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i.i.i178

if.end.i.i.i.i.i175:                              ; preds = %land.lhs.true.i.i.i.i.i167
  %call.i.i.i.i.i.i168 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %trace.i, i32 noundef 4) #5
  %87 = call i32 @llvm.read_register.i32(metadata !61) #5
  %and.i.i.i.i.i.i.i.i.i169 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i169 to ptr
  %cpu_domain.i.i.i.i.i.i.i.i170 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 4
  %89 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i.i170) #4, !srcloc !79
  %and.i.i.i.i.i.i.i171 = and i32 %89, -13
  %or.i.i.i.i.i.i.i172 = or i32 %and.i.i.i.i.i.i.i171, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i.i172) #5, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  %call1.i.i.i.i.i.i173 = call i32 @arm_copy_from_user(ptr noundef nonnull %trace.i, ptr noundef %85, i32 noundef 4) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %89) #5, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i173)
  %tobool4.not.i.i.i.i.i174 = icmp eq i32 %call1.i.i.i.i.i.i173, 0
  br i1 %tobool4.not.i.i.i.i.i174, label %if.end.i.i.i.i.i175.if.end2.i180_crit_edge, label %if.end.i.i.i.i.i175.if.then11.i.i.i.i.i178_crit_edge, !prof !73

if.end.i.i.i.i.i175.if.then11.i.i.i.i.i178_crit_edge: ; preds = %if.end.i.i.i.i.i175
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i.i.i178

if.end.i.i.i.i.i175.if.end2.i180_crit_edge:       ; preds = %if.end.i.i.i.i.i175
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2.i180

if.then11.i.i.i.i.i178:                           ; preds = %if.end.i.i.i.i.i175.if.then11.i.i.i.i.i178_crit_edge, %land.lhs.true.i.i.i.i.i167.if.then11.i.i.i.i.i178_crit_edge, %if.end59.i.i.i.i.i164.if.then11.i.i.i.i.i178_crit_edge
  %res.0.i.i.i.i31.i = phi i32 [ %call1.i.i.i.i.i.i173, %if.end.i.i.i.i.i175.if.then11.i.i.i.i.i178_crit_edge ], [ 4, %if.end59.i.i.i.i.i164.if.then11.i.i.i.i.i178_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.i167.if.then11.i.i.i.i.i178_crit_edge ]
  %sub.i.i.i.i.i176 = sub i32 4, %res.0.i.i.i.i31.i
  %add.ptr.i.i.i.i.i177 = getelementptr i8, ptr %trace.i, i32 %sub.i.i.i.i.i176
  %90 = call ptr @memset(ptr %add.ptr.i.i.i.i.i177, i32 0, i32 %res.0.i.i.i.i31.i)
  br label %rds_recv_track_latency.exit

if.end.i.i.i179:                                  ; preds = %if.end.i162
  call void @__sanitizer_cov_trace_pc() #7
  %91 = ptrtoint ptr %85 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %85, align 1
  %93 = ptrtoint ptr %trace.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %trace.i, align 4
  br label %if.end2.i180

if.end2.i180:                                     ; preds = %if.end.i.i.i179, %if.end.i.i.i.i.i175.if.end2.i180_crit_edge
  %94 = ptrtoint ptr %trace.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %trace.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %95)
  %cmp3.i = icmp ugt i8 %95, 3
  br i1 %cmp3.i, label %if.end2.i180.rds_recv_track_latency.exit_crit_edge, label %if.end6.i181

if.end2.i180.rds_recv_track_latency.exit_crit_edge: ; preds = %if.end2.i180
  call void @__sanitizer_cov_trace_pc() #7
  br label %rds_recv_track_latency.exit

if.end6.i181:                                     ; preds = %if.end2.i180
  %rs_rx_traces.i = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 29
  %96 = ptrtoint ptr %rs_rx_traces.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %rs_rx_traces.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %cmp1034.not.i = icmp eq i8 %95, 0
  br i1 %cmp1034.not.i, label %if.end6.i181.rds_recv_track_latency.exit_crit_edge, label %for.body.i

if.end6.i181.rds_recv_track_latency.exit_crit_edge: ; preds = %if.end6.i181
  call void @__sanitizer_cov_trace_pc() #7
  br label %rds_recv_track_latency.exit

for.body.i:                                       ; preds = %if.end6.i181
  %arrayidx.i = getelementptr inbounds %struct.rds_rx_trace_so, ptr %trace.i, i32 0, i32 1, i32 0
  %97 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %98)
  %cmp13.i = icmp ugt i8 %98, 3
  br i1 %cmp13.i, label %for.body.i.if.then15.i_crit_edge, label %if.end17.i

for.body.i.if.then15.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15.i

if.then15.i:                                      ; preds = %for.body.i.2.if.then15.i_crit_edge, %for.body.i.1.if.then15.i_crit_edge, %for.body.i.if.then15.i_crit_edge
  %99 = ptrtoint ptr %rs_rx_traces.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %rs_rx_traces.i, align 8
  br label %rds_recv_track_latency.exit

if.end17.i:                                       ; preds = %for.body.i
  %arrayidx20.i = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 30, i32 0
  %100 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %98, ptr %arrayidx20.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %95)
  %exitcond.not.i = icmp eq i8 %95, 1
  br i1 %exitcond.not.i, label %if.end17.i.rds_recv_track_latency.exit_crit_edge, label %for.body.i.1

if.end17.i.rds_recv_track_latency.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rds_recv_track_latency.exit

for.body.i.1:                                     ; preds = %if.end17.i
  %arrayidx.i.1 = getelementptr inbounds %struct.rds_rx_trace_so, ptr %trace.i, i32 0, i32 1, i32 1
  %101 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.i.1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %102)
  %cmp13.i.1 = icmp ugt i8 %102, 3
  br i1 %cmp13.i.1, label %for.body.i.1.if.then15.i_crit_edge, label %if.end17.i.1

for.body.i.1.if.then15.i_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15.i

if.end17.i.1:                                     ; preds = %for.body.i.1
  %arrayidx20.i.1 = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 30, i32 1
  %103 = ptrtoint ptr %arrayidx20.i.1 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %arrayidx20.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %95)
  %exitcond.not.i.1 = icmp eq i8 %95, 2
  br i1 %exitcond.not.i.1, label %if.end17.i.1.rds_recv_track_latency.exit_crit_edge, label %for.body.i.2

if.end17.i.1.rds_recv_track_latency.exit_crit_edge: ; preds = %if.end17.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %rds_recv_track_latency.exit

for.body.i.2:                                     ; preds = %if.end17.i.1
  %arrayidx.i.2 = getelementptr inbounds %struct.rds_rx_trace_so, ptr %trace.i, i32 0, i32 1, i32 2
  %104 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %105)
  %cmp13.i.2 = icmp ugt i8 %105, 3
  br i1 %cmp13.i.2, label %for.body.i.2.if.then15.i_crit_edge, label %if.end17.i.2

for.body.i.2.if.then15.i_crit_edge:               ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then15.i

if.end17.i.2:                                     ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx20.i.2 = getelementptr %struct.rds_sock, ptr %1, i32 0, i32 30, i32 2
  %106 = ptrtoint ptr %arrayidx20.i.2 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %105, ptr %arrayidx20.i.2, align 1
  br label %rds_recv_track_latency.exit

rds_recv_track_latency.exit:                      ; preds = %if.end17.i.2, %if.end17.i.1.rds_recv_track_latency.exit_crit_edge, %if.end17.i.rds_recv_track_latency.exit_crit_edge, %if.then15.i, %if.end6.i181.rds_recv_track_latency.exit_crit_edge, %if.end2.i180.rds_recv_track_latency.exit_crit_edge, %if.then11.i.i.i.i.i178, %sw.bb21.rds_recv_track_latency.exit_crit_edge
  %retval.0.i182 = phi i32 [ -14, %if.then15.i ], [ -14, %sw.bb21.rds_recv_track_latency.exit_crit_edge ], [ -14, %if.end2.i180.rds_recv_track_latency.exit_crit_edge ], [ -14, %if.then11.i.i.i.i.i178 ], [ 0, %if.end6.i181.rds_recv_track_latency.exit_crit_edge ], [ 0, %if.end17.i.2 ], [ 0, %if.end17.i.1.rds_recv_track_latency.exit_crit_edge ], [ 0, %if.end17.i.rds_recv_track_latency.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trace.i) #5
  br label %out

out:                                              ; preds = %rds_recv_track_latency.exit, %rds_enable_recvtstamp.exit, %rds_set_transport.exit, %if.else.i109, %if.then2.i, %sw.bb10.out_crit_edge, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb2, %rds_cancel_sent_to.exit, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %retval.0.i182, %rds_recv_track_latency.exit ], [ %retval.0.i157, %rds_enable_recvtstamp.exit ], [ %retval.0.i, %rds_set_transport.exit ], [ %call9, %sw.bb8 ], [ %call7, %sw.bb6 ], [ %call5, %sw.bb4 ], [ %call3, %sw.bb2 ], [ %ret.0.i, %rds_cancel_sent_to.exit ], [ -92, %entry.out_crit_edge ], [ -92, %if.end.out_crit_edge ], [ %call.i, %sw.bb10.out_crit_edge ], [ 0, %if.then2.i ], [ 0, %if.else.i109 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rds_getsockopt(ptr noundef %sock, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 276, i32 %level)
  %cmp.not = icmp eq i32 %level, 276
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 493) #5
  %2 = tail call i32 @llvm.read_register.i32(metadata !61) #5
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !79
  %and.i = and i32 %4, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #5, !srcloc !85
  %asmresult = extractvalue { i32, i32 } %5, 0
  %asmresult2 = extractvalue { i32, i32 } %5, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end5:                                          ; preds = %if.end
  %6 = zext i32 %optname to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %optname, label %if.end5.out_crit_edge [
    i32 10000, label %if.end5.sw.bb_crit_edge
    i32 10001, label %if.end5.sw.bb_crit_edge110
    i32 10002, label %if.end5.sw.bb_crit_edge111
    i32 10003, label %if.end5.sw.bb_crit_edge112
    i32 10004, label %if.end5.sw.bb_crit_edge113
    i32 10005, label %if.end5.sw.bb_crit_edge114
    i32 10006, label %if.end5.sw.bb_crit_edge115
    i32 10007, label %if.end5.sw.bb_crit_edge116
    i32 10008, label %if.end5.sw.bb_crit_edge117
    i32 10009, label %if.end5.sw.bb_crit_edge118
    i32 10010, label %if.end5.sw.bb_crit_edge119
    i32 10011, label %if.end5.sw.bb_crit_edge120
    i32 10012, label %if.end5.sw.bb_crit_edge121
    i32 10013, label %if.end5.sw.bb_crit_edge122
    i32 10014, label %if.end5.sw.bb_crit_edge123
    i32 10015, label %if.end5.sw.bb_crit_edge124
    i32 10016, label %if.end5.sw.bb_crit_edge125
    i32 10017, label %if.end5.sw.bb_crit_edge126
    i32 5, label %sw.bb7
    i32 8, label %sw.bb40
  ]

if.end5.sw.bb_crit_edge126:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end5.sw.bb_crit_edge125:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end5.sw.bb_crit_edge124:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end5.sw.bb_crit_edge123:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end5.sw.bb_crit_edge122:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end5.sw.bb_crit_edge121:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end5.sw.bb_crit_edge120:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end5.sw.bb_crit_edge119:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end5.sw.bb_crit_edge118:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end5.sw.bb_crit_edge117:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end5.sw.bb_crit_edge116:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end5.sw.bb_crit_edge115:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end5.sw.bb_crit_edge114:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end5.sw.bb_crit_edge113:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end5.sw.bb_crit_edge112:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end5.sw.bb_crit_edge111:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end5.sw.bb_crit_edge110:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end5.sw.bb_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

sw.bb:                                            ; preds = %if.end5.sw.bb_crit_edge, %if.end5.sw.bb_crit_edge110, %if.end5.sw.bb_crit_edge111, %if.end5.sw.bb_crit_edge112, %if.end5.sw.bb_crit_edge113, %if.end5.sw.bb_crit_edge114, %if.end5.sw.bb_crit_edge115, %if.end5.sw.bb_crit_edge116, %if.end5.sw.bb_crit_edge117, %if.end5.sw.bb_crit_edge118, %if.end5.sw.bb_crit_edge119, %if.end5.sw.bb_crit_edge120, %if.end5.sw.bb_crit_edge121, %if.end5.sw.bb_crit_edge122, %if.end5.sw.bb_crit_edge123, %if.end5.sw.bb_crit_edge124, %if.end5.sw.bb_crit_edge125, %if.end5.sw.bb_crit_edge126
  %call6 = tail call i32 @rds_info_getsockopt(ptr noundef %sock, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #5
  br label %out

sw.bb7:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %asmresult2)
  %cmp8 = icmp ult i32 %asmresult2, 4
  br i1 %cmp8, label %sw.bb7.out_crit_edge, label %if.else

sw.bb7.out_crit_edge:                             ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.else:                                          ; preds = %sw.bb7
  %rs_recverr = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 26
  %7 = ptrtoint ptr %rs_recverr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rs_recverr, align 8
  %conv = zext i8 %8 to i32
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 508) #5
  %9 = tail call i32 @llvm.read_register.i32(metadata !61) #5
  %and.i.i.i94 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i94 to ptr
  %cpu_domain.i.i95 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i95) #4, !srcloc !79
  %and.i96 = and i32 %11, -13
  %or.i97 = or i32 %and.i96, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i97) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  %12 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i32 %conv, i32 -1226833921) #5, !srcloc !86
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool19.not = icmp eq i32 %12, 0
  br i1 %tobool19.not, label %lor.lhs.false, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

lor.lhs.false:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 509) #5
  %13 = tail call i32 @llvm.read_register.i32(metadata !61) #5
  %and.i.i.i98 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i98 to ptr
  %cpu_domain.i.i99 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i99) #4, !srcloc !79
  %and.i100 = and i32 %15, -13
  %or.i101 = or i32 %and.i100, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i101) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  %16 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 4, i32 -1226833921) #5, !srcloc !87
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool35.not = icmp eq i32 %16, 0
  %spec.select = select i1 %tobool35.not, i32 0, i32 -14
  br label %out

sw.bb40:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %asmresult2)
  %cmp41 = icmp ult i32 %asmresult2, 4
  br i1 %cmp41, label %sw.bb40.out_crit_edge, label %if.end44

sw.bb40.out_crit_edge:                            ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end44:                                         ; preds = %sw.bb40
  %rs_transport = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %rs_transport to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rs_transport, align 4
  %tobool45.not = icmp eq ptr %18, null
  br i1 %tobool45.not, label %if.end44.cond.end_crit_edge, label %cond.true

if.end44.cond.end_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %t_type = getelementptr inbounds %struct.rds_transport, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %t_type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %t_type, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end44.cond.end_crit_edge
  %cond = phi i32 [ %20, %cond.true ], [ -1, %if.end44.cond.end_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 521) #5
  %21 = tail call i32 @llvm.read_register.i32(metadata !61) #5
  %and.i.i.i102 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i102 to ptr
  %cpu_domain.i.i103 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 4
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i103) #4, !srcloc !79
  %and.i104 = and i32 %23, -13
  %or.i105 = or i32 %and.i104, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i105) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  %24 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i32 %cond, i32 -1226833921) #5, !srcloc !88
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool62.not = icmp eq i32 %24, 0
  br i1 %tobool62.not, label %lor.lhs.false63, label %cond.end.out_crit_edge

cond.end.out_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

lor.lhs.false63:                                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__might_fault(ptr noundef nonnull @.str.9, i32 noundef 522) #5
  %25 = tail call i32 @llvm.read_register.i32(metadata !61) #5
  %and.i.i.i106 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i106 to ptr
  %cpu_domain.i.i107 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 4
  %27 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i107) #4, !srcloc !79
  %and.i108 = and i32 %27, -13
  %or.i109 = or i32 %and.i108, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i109) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  %28 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 4, i32 -1226833921) #5, !srcloc !89
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #5, !srcloc !80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool79.not = icmp eq i32 %28, 0
  %spec.select93 = select i1 %tobool79.not, i32 0, i32 -14
  br label %out

out:                                              ; preds = %lor.lhs.false63, %cond.end.out_crit_edge, %sw.bb40.out_crit_edge, %lor.lhs.false, %if.else.out_crit_edge, %sw.bb7.out_crit_edge, %sw.bb, %if.end5.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ -92, %entry.out_crit_edge ], [ -92, %if.end5.out_crit_edge ], [ %call6, %sw.bb ], [ -14, %if.end.out_crit_edge ], [ -22, %sw.bb7.out_crit_edge ], [ -14, %if.else.out_crit_edge ], [ -22, %sw.bb40.out_crit_edge ], [ -14, %cond.end.out_crit_edge ], [ %spec.select, %lor.lhs.false ], [ %spec.select93, %lor.lhs.false63 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_sendmsg(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_clear_recv_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_cong_remove_socket(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_remove_bound(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_send_drop_to(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_rdma_drop_keys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_notify_queue_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_notify_msg_zcopy_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_trans_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_cong_updated_since(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_get_mr(ptr noundef, [2 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_get_mr_for_dest(ptr noundef, [2 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_free_mr(ptr noundef, [2 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rds_set_bool_option(ptr nocapture noundef writeonly %optvar, [2 x i32] %optval.coerce, i32 noundef %optlen) unnamed_addr #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #5
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %optlen)
  %cmp = icmp ult i32 %optlen, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %1 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.end59.i.i.i.i

if.end59.i.i.i.i:                                 ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #5
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #5
  br i1 %call.i.i.i.i, label %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge:     ; preds = %if.end59.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end59.i.i.i.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 4, i32 -1226833920) #8, !srcloc !84
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !73

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %value, i32 noundef 4) #5
  %3 = call i32 @llvm.read_register.i32(metadata !61) #5
  %and.i.i.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #4, !srcloc !79
  %and.i.i.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #5, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %value, ptr noundef %1, i32 noundef 4) #5
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #5, !srcloc !80
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end2_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !73

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.if.end2_crit_edge:                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end2

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i.i.i7 = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %if.end59.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 4, %res.0.i.i.i.i7
  %add.ptr.i.i.i.i = getelementptr i8, ptr %value, i32 %sub.i.i.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i.i7)
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %1, align 1
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %value, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.end.i.i, %if.end.i.i.i.i.if.end2_crit_edge
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3 = icmp ne i32 %11, 0
  %conv = zext i1 %tobool3 to i8
  %12 = ptrtoint ptr %optvar to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %optvar, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then11.i.i.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -22, %entry.cleanup_crit_edge ], [ -14, %if.then11.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_cong_add_socket(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rds_trans_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_info_getsockopt(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_i_ino(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_info_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_inc_info_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds6_inc_info_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__do_once_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__do_once_done(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_bind_lock_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_conn_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_threads_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_sysctl_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_stats_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_info_register_func(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !16, !17, !19, !20, !22, !24, !26, !28, !29, !31, !32, !34, !35, !37, !39, !41, !42, !44, !46, !48, !49, !51, !52, !54, !56, !58, !60}
!llvm.named.register.sp = !{!61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rds/af_rds.c", i32 48, i32 1}
!2 = !{ptr @rds_poll_waitq, !1, !"rds_poll_waitq", i1 false, i1 false}
!3 = !{ptr @__exitcall_rds_exit, !4, !"__exitcall_rds_exit", i1 false, i1 false}
!4 = !{!"../net/rds/af_rds.c", i32 893, i32 1}
!5 = !{ptr @__initcall__kmod_rds__544_953_rds_init6, !6, !"__initcall__kmod_rds__544_953_rds_init6", i1 false, i1 false}
!6 = !{!"../net/rds/af_rds.c", i32 953, i32 1}
!7 = !{ptr @__UNIQUE_ID_author545, !8, !"__UNIQUE_ID_author545", i1 false, i1 false}
!8 = !{!"../net/rds/af_rds.c", i32 958, i32 1}
!9 = !{ptr @__UNIQUE_ID_description546, !10, !"__UNIQUE_ID_description546", i1 false, i1 false}
!10 = !{!"../net/rds/af_rds.c", i32 959, i32 1}
!11 = !{ptr @__UNIQUE_ID_version547, !12, !"__UNIQUE_ID_version547", i1 false, i1 false}
!12 = !{!"../net/rds/af_rds.c", i32 961, i32 1}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__modver_attr, !12, !"__modver_attr", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_file548, !18, !"__UNIQUE_ID_file548", i1 false, i1 false}
!18 = !{!"../net/rds/af_rds.c", i32 962, i32 1}
!19 = !{ptr @__UNIQUE_ID_license549, !18, !"__UNIQUE_ID_license549", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_alias550, !21, !"__UNIQUE_ID_alias550", i1 false, i1 false}
!21 = !{!"../net/rds/af_rds.c", i32 963, i32 1}
!22 = !{ptr @rds_gen_num, !23, !"rds_gen_num", i1 false, i1 false}
!23 = !{!"../net/rds/af_rds.c", i32 895, i32 5}
!24 = !{ptr @rds_family_ops, !25, !"rds_family_ops", i1 false, i1 false}
!25 = !{!"../net/rds/af_rds.c", i32 723, i32 38}
!26 = !{ptr @__rds_create.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../net/rds/af_rds.c", i32 677, i32 2}
!28 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @__rds_create.__key.5, !30, !"__key", i1 false, i1 false}
!30 = !{!"../net/rds/af_rds.c", i32 678, i32 2}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @__rds_create.__key.7, !33, !"__key", i1 false, i1 false}
!33 = !{!"../net/rds/af_rds.c", i32 684, i32 2}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @rds_proto_ops, !36, !"rds_proto_ops", i1 false, i1 false}
!36 = !{!"../net/rds/af_rds.c", i32 638, i32 31}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/rds/af_rds.c", i32 262, i32 7}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!41 = distinct !{null, !40, !"<string literal>", i1 false, i1 false}
!42 = distinct !{null, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!46 = !{ptr @rds_message_zcopy_queue_init.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../net/rds/rds.h", i32 384, i32 2}
!48 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/rds/af_rds.c", i32 45, i32 8}
!51 = !{ptr @rds_sock_lock, !50, !"rds_sock_lock", i1 false, i1 false}
!52 = !{ptr @rds_sock_list, !53, !"rds_sock_list", i1 false, i1 false}
!53 = !{!"../net/rds/af_rds.c", i32 47, i32 8}
!54 = !{ptr @rds_sock_count, !55, !"rds_sock_count", i1 false, i1 false}
!55 = !{!"../net/rds/af_rds.c", i32 46, i32 22}
!56 = !{ptr @rds_proto, !57, !"rds_proto", i1 false, i1 false}
!57 = !{!"../net/rds/af_rds.c", i32 632, i32 21}
!58 = !{ptr @rds_init.___done, !59, !"___done", i1 false, i1 false}
!59 = !{!"../net/rds/af_rds.c", i32 901, i32 2}
!60 = !{ptr @rds_init.___once_key, !59, !"___once_key", i1 false, i1 false}
!61 = !{!"sp"}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i64 2148363501, i64 2148363533, i64 2148363562, i64 2148363596, i64 2148363627, i64 2148363650}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{!"branch_weights", i32 2000, i32 1}
!74 = !{i64 2148451526}
!75 = !{i64 2148365966, i64 2148365998, i64 2148366027, i64 2148366061, i64 2148366092, i64 2148366115}
!76 = !{i64 2149327640}
!77 = !{i64 2148975751, i64 2148975756, i64 2148975777, i64 2148975821, i64 2148975855, i64 2148975876}
!78 = !{!"auto-init"}
!79 = !{i64 5189456}
!80 = !{i64 5189653}
!81 = !{i64 2152674886}
!82 = !{i64 2158210114, i64 2158210394, i64 2158210728, i64 2158211062}
!83 = !{i64 2158220881, i64 2158221161, i64 2158221495, i64 2158221829}
!84 = !{i64 2152693901, i64 2152693926}
!85 = !{i64 2158236409, i64 2158236689, i64 2158237023, i64 2158237357}
!86 = !{i64 2158245988, i64 2158246268, i64 2158246602, i64 2158246936}
!87 = !{i64 2158258844, i64 2158259124, i64 2158259458, i64 2158259792}
!88 = !{i64 2158267710, i64 2158267990, i64 2158268324, i64 2158268658}
!89 = !{i64 2158276505, i64 2158276785, i64 2158277119, i64 2158277453}
