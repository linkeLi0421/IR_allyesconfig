; ModuleID = '/llk/IR_all_yes/net/rds/rdma.c_pt.bc'
source_filename = "../net/rds/rdma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.rds_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.rds_mr = type { %struct.rb_node, %struct.kref, i32, i8, ptr, ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rds_sock = type { %struct.sock, i64, i64, %struct.rhash_head, [22 x i8], %struct.sockaddr_in6, %struct.in6_addr, i16, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, i32, i32, %struct.list_head, i64, i64, %struct.list_head, i32, %struct.rwlock_t, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.rb_root, i8, i8, i32, i8, [3 x i8], %struct.rds_msg_zcopy_queue, i8 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.120, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.121, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.122, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.116, [0 x i32], %union.anon.117, i16, i16, %union.anon.118, %struct.refcount_struct, [0 x i32], %union.anon.119 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.atomic64_t = type { i64 }
%union.anon.116 = type { i32 }
%union.anon.117 = type { %struct.hlist_node }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.120 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.121 = type { ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.rb_root = type { ptr }
%struct.rds_msg_zcopy_queue = type { %struct.list_head, %struct.spinlock }
%struct.rds_transport = type { [16 x i8], %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rds_get_mr_args = type { %struct.rds_iovec, i64, i64 }
%struct.rds_iovec = type { i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.rds_get_mr_for_dest_args = type { %struct.__kernel_sockaddr_storage, %struct.rds_iovec, i64, i64 }
%struct.__kernel_sockaddr_storage = type { %union.anon.176 }
%union.anon.176 = type { ptr, [124 x i8] }
%struct.rds_free_mr_args = type { i64, i64 }
%struct.rm_rdma_op = type { i32, i64, i8, i32, i32, i32, ptr, ptr, ptr, i64, ptr }
%struct.rm_atomic_op = type { i32, %union.anon.145, i32, i64, i8, ptr, ptr, ptr }
%union.anon.145 = type { %struct.anon.146 }
%struct.anon.146 = type { i64, i64, i64, i64 }
%struct.rds_rdma_args = type { i64, %struct.rds_iovec, i64, i64, i64, i64 }
%struct.rds_iov_vector = type { ptr, i32 }
%struct.rds_message = type { %struct.refcount_struct, %struct.list_head, %struct.list_head, %struct.rds_incoming, i64, %struct.in6_addr, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i64, i32, i32, ptr, %struct.anon.144, ptr }
%struct.rds_incoming = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.rds_header, i32, %struct.in6_addr, %struct.rds_inc_usercopy, [4 x i64] }
%struct.rds_header = type { i64, i64, i32, i16, i16, i8, i8, [4 x i8], i16, [16 x i8] }
%struct.rds_inc_usercopy = type { i64, i64 }
%struct.anon.144 = type { %struct.rm_atomic_op, %struct.rm_rdma_op, %struct.rm_data_op }
%struct.rm_data_op = type { i8, i32, i32, i32, i32, ptr, ptr }
%struct.rds_notifier = type { %struct.list_head, i64, i32 }
%struct.cmsghdr = type { i32, i32, i32 }

@rds_rdma_unuse.__UNIQUE_ID_ddebug551 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rds\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rds_rdma_unuse\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net/rds/rdma.c\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"rds: trying to unuse MR with unknown r_key %u!\0A\00", [48 x i8] zeroinitializer }, align 32
@rds_cmsg_rdma_args.__UNIQUE_ID_ddebug552 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rds_cmsg_rdma_args\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s(): RDS: rdma prepare nr_local %llu rva %llx rkey %x\0A\00", [40 x i8] zeroinitializer }, align 32
@rds_cmsg_rdma_args.__UNIQUE_ID_ddebug553 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 -70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s(): get_mr ret %d %p\22\00", [40 x i8] zeroinitializer }, align 32
@rds_cmsg_rdma_args.__UNIQUE_ID_ddebug554 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.7, i8 0, i8 -68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s(): Need odp; local_odp_mr %p trans_private %p\0A\00", [46 x i8] zeroinitializer }, align 32
@rds_cmsg_rdma_args.__UNIQUE_ID_ddebug555 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.8, i8 0, i8 -67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s(): RDS: nr_bytes %u nr %u iov->bytes %llu iov->addr %llx\0A\00", [35 x i8] zeroinitializer }, align 32
@rds_cmsg_rdma_args.__UNIQUE_ID_ddebug558 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.9, i8 0, i8 -63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"%s(): RDS: sg->offset %x sg->len %x iov->addr %llx iov->bytes %llu\0A\00", [60 x i8] zeroinitializer }, align 32
@rds_cmsg_rdma_args.__UNIQUE_ID_ddebug559 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.10, i8 0, i8 -60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s(): RDS nr_bytes %u remote_bytes %u do not match\0A\00", [44 x i8] zeroinitializer }, align 32
@rds_stats = external dso_local global %struct.rds_statistics, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rds_destroy_mr.__UNIQUE_ID_ddebug546 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rds_destroy_mr\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s(): RDS: destroy mr key is %x refcnt %u\0A\00", [53 x i8] zeroinitializer }, align 32
@__rds_rdma_map.__UNIQUE_ID_ddebug547 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__rds_rdma_map\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s(): RDS: get_mr addr %llx len %llu nr_pages %u\0A\00", [46 x i8] zeroinitializer }, align 32
@__rds_rdma_map.__UNIQUE_ID_ddebug548 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.15, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s(): RDS: trans_private nents is %u\0A\00", [58 x i8] zeroinitializer }, align 32
@__rds_rdma_map.__UNIQUE_ID_ddebug549 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.16, i8 0, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s(): RDS: get_mr put_user key is %x cookie_addr %p\0A\00", [43 x i8] zeroinitializer }, align 32
@__rds_rdma_map.__UNIQUE_ID_ddebug550 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.17, i8 0, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s(): RDS: get_mr key is %x\0A\00", [35 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 451, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 702, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 746, i32 5 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 752, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 758, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 773, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 784, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 101, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 227, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 284, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 309, i32 2 }
@___asan_gen_.74 = private constant [18 x i8] c"../net/rds/rdma.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 342, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 230, i32 6 }
@___asan_gen_.80 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 214, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 156, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__rds_put_mr_final(ptr noundef %kref) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kref, i32 -12
  tail call fastcc void @rds_destroy_mr(ptr noundef %add.ptr)
  tail call void @kfree(ptr noundef %add.ptr) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rds_destroy_mr(ptr noundef %mr) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %r_sock = getelementptr inbounds %struct.rds_mr, ptr %mr, i32 0, i32 4
  %0 = ptrtoint ptr %r_sock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %r_sock, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_destroy_mr.__UNIQUE_ID_ddebug546, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_destroy_mr, %if.then)) #9
          to label %do.body5 [label %if.then], !srcloc !59

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %r_key = getelementptr inbounds %struct.rds_mr, ptr %mr, i32 0, i32 2
  %2 = ptrtoint ptr %r_key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %r_key, align 4
  %r_kref = getelementptr inbounds %struct.rds_mr, ptr %mr, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %r_kref, i32 noundef 4) #9
  %4 = ptrtoint ptr %r_kref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %r_kref, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_destroy_mr.__UNIQUE_ID_ddebug546, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef %3, i32 noundef %5) #9
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  %rs_rdma_lock = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 24
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rs_rdma_lock) #9
  %6 = ptrtoint ptr %mr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mr, align 4
  %8 = ptrtoint ptr %mr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %8)
  %cmp14 = icmp eq i32 %7, %8
  br i1 %cmp14, label %do.body5.if.end18_crit_edge, label %if.then16

do.body5.if.end18_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then16:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  %rs_rdma_keys = getelementptr inbounds %struct.rds_sock, ptr %1, i32 0, i32 25
  tail call void @rb_erase(ptr noundef %mr, ptr noundef %rs_rdma_keys) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %do.body5.if.end18_crit_edge
  %r_trans_private = getelementptr inbounds %struct.rds_mr, ptr %mr, i32 0, i32 6
  %9 = ptrtoint ptr %r_trans_private to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %r_trans_private, align 4
  store ptr null, ptr %r_trans_private, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rs_rdma_lock, i32 noundef %call8) #9
  %tobool21.not = icmp eq ptr %10, null
  br i1 %tobool21.not, label %if.end18.if.end23_crit_edge, label %if.then22

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %r_trans = getelementptr inbounds %struct.rds_mr, ptr %mr, i32 0, i32 5
  %11 = ptrtoint ptr %r_trans to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %r_trans, align 4
  %free_mr = getelementptr inbounds %struct.rds_transport, ptr %12, i32 0, i32 25
  %13 = ptrtoint ptr %free_mr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %free_mr, align 4
  %r_invalidate = getelementptr inbounds %struct.rds_mr, ptr %mr, i32 0, i32 3
  %15 = ptrtoint ptr %r_invalidate to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load = load i8, ptr %r_invalidate, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  tail call void %14(ptr noundef nonnull %10, i32 noundef %bf.cast) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.end18.if.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_rdma_drop_keys(ptr noundef %rs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rs_rdma_lock = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 24
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rs_rdma_lock) #9
  %rs_rdma_keys = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 25
  %call553 = tail call ptr @rb_first(ptr noundef %rs_rdma_keys) #9
  %tobool.not54 = icmp eq ptr %call553, null
  br i1 %tobool.not54, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %rs_transport = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %kref_put.exit.while.body_crit_edge, %while.body.lr.ph
  %call556 = phi ptr [ %call553, %while.body.lr.ph ], [ %call5, %kref_put.exit.while.body_crit_edge ]
  %flags.055 = phi i32 [ %call2, %while.body.lr.ph ], [ %call23, %kref_put.exit.while.body_crit_edge ]
  %r_trans = getelementptr inbounds %struct.rds_mr, ptr %call556, i32 0, i32 5
  %0 = ptrtoint ptr %r_trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %r_trans, align 4
  %2 = ptrtoint ptr %rs_transport to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rs_transport, align 4
  %cmp7 = icmp eq ptr %1, %3
  br i1 %cmp7, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %r_invalidate = getelementptr inbounds %struct.rds_mr, ptr %call556, i32 0, i32 3
  %4 = ptrtoint ptr %r_invalidate to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %r_invalidate, align 4
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %r_invalidate, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  tail call void @rb_erase(ptr noundef nonnull %call556, ptr noundef %rs_rdma_keys) #9
  %5 = ptrtoint ptr %call556 to i32
  %6 = ptrtoint ptr %call556 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %call556, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rs_rdma_lock, i32 noundef %flags.055) #9
  %r_kref = getelementptr inbounds %struct.rds_mr, ptr %call556, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %r_kref, i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref, ptr %r_kref, i32 1, ptr elementtype(i32) %r_kref) #9, !srcloc !61
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !62

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %r_kref, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  tail call fastcc void @rds_destroy_mr(ptr noundef nonnull %call556) #9
  tail call void @kfree(ptr noundef nonnull %call556) #9
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rs_rdma_lock) #9
  %call5 = tail call ptr @rb_first(ptr noundef %rs_rdma_keys) #9
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %kref_put.exit.while.end_crit_edge, label %kref_put.exit.while.body_crit_edge

kref_put.exit.while.body_crit_edge:               ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

kref_put.exit.while.end_crit_edge:                ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %kref_put.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call2, %entry.while.end_crit_edge ], [ %call23, %kref_put.exit.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rs_rdma_lock, i32 noundef %flags.0.lcssa) #9
  %rs_transport29 = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 8
  %8 = ptrtoint ptr %rs_transport29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rs_transport29, align 4
  %tobool30.not = icmp eq ptr %9, null
  br i1 %tobool30.not, label %while.end.if.end36_crit_edge, label %land.lhs.true

while.end.if.end36_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

land.lhs.true:                                    ; preds = %while.end
  %flush_mrs = getelementptr inbounds %struct.rds_transport, ptr %9, i32 0, i32 26
  %10 = ptrtoint ptr %flush_mrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %flush_mrs, align 4
  %tobool32.not = icmp eq ptr %11, null
  br i1 %tobool32.not, label %land.lhs.true.if.end36_crit_edge, label %if.then33

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %11() #9
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %land.lhs.true.if.end36_crit_edge, %while.end.if.end36_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_get_mr(ptr noundef %rs, [2 x i32] %optval.coerce, i32 noundef %optlen) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.rds_get_mr_args, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %args) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %optlen)
  %cmp.not = icmp eq i32 %optlen, 32
  %0 = call ptr @memset(ptr %args, i32 255, i32 32)
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %1 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 156) #9
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i.i, label %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge:      ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end8.i.i.i.i
  %2 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 32, i32 -1226833920) #12, !srcloc !64
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !62

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %args, i32 noundef 32) #9
  %3 = call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 4
  %5 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #8, !srcloc !65
  %and.i.i.i.i.i.i = and i32 %5, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #9, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %args, ptr noundef %1, i32 noundef 32) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %5) #9, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end2_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !62

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.if.end2_crit_edge:                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i.i.i6 = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 32, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 32, %res.0.i.i.i.i6
  %add.ptr.i.i.i.i = getelementptr i8, ptr %args, i32 %sub.i.i.i.i
  %6 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i.i6)
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = call ptr @memcpy(ptr %args, ptr %1, i32 32)
  br label %if.end2

if.end2:                                          ; preds = %if.end.i.i, %if.end.i.i.i.i.if.end2_crit_edge
  %call3 = call fastcc i32 @__rds_rdma_map(ptr noundef %rs, ptr noundef nonnull %args, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then11.i.i.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end2 ], [ -22, %entry.cleanup_crit_edge ], [ -14, %if.then11.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %args) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__rds_rdma_map(ptr noundef %rs, ptr nocapture noundef readonly %args, ptr noundef writeonly %cookie_ret, ptr noundef writeonly %mr_ret, ptr noundef readonly %cp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sin6_addr = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %sin6_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sin6_addr, align 4
  %arrayidx2.i = getelementptr %struct.rds_sock, ptr %rs, i32 0, i32 5, i32 3, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2.i, align 4
  %or.i366 = or i32 %3, %1
  %arrayidx4.i = getelementptr %struct.rds_sock, ptr %rs, i32 0, i32 5, i32 3, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i366, %5
  %arrayidx7.i = getelementptr %struct.rds_sock, ptr %rs, i32 0, i32 5, i32 3, i32 0, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  br i1 %cmp.i, label %entry.out.thread_crit_edge, label %lor.lhs.false

entry.out.thread_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

lor.lhs.false:                                    ; preds = %entry
  %rs_transport = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 8
  %8 = ptrtoint ptr %rs_transport to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rs_transport, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %lor.lhs.false.out.thread_crit_edge, label %if.end

lor.lhs.false.out.thread_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

if.end:                                           ; preds = %lor.lhs.false
  %get_mr = getelementptr inbounds %struct.rds_transport, ptr %9, i32 0, i32 23
  %10 = ptrtoint ptr %get_mr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_mr, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %if.end.out.thread_crit_edge, label %if.end4

if.end.out.thread_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

if.end4:                                          ; preds = %if.end
  %12 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %args, align 8
  %bytes = getelementptr inbounds %struct.rds_iovec, ptr %args, i32 0, i32 1
  %14 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %bytes, align 8
  %add = add i64 %15, %13
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %13)
  %cmp = icmp ult i64 %add, %13
  br i1 %cmp, label %if.end4.out.thread_crit_edge, label %lor.lhs.false8

if.end4.out.thread_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

lor.lhs.false8:                                   ; preds = %if.end4
  %add14 = add i64 %add, 4095
  %and = and i64 %add14, -4096
  call void @__sanitizer_cov_trace_cmp8(i64 %and, i64 %add)
  %cmp20 = icmp ult i64 %and, %add
  br i1 %cmp20, label %lor.lhs.false8.out.thread_crit_edge, label %if.end22

lor.lhs.false8.out.thread_crit_edge:              ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

if.end22:                                         ; preds = %lor.lhs.false8
  %call23 = tail call zeroext i1 @can_do_mlock() #9
  br i1 %call23, label %if.end25, label %if.end22.out.thread_crit_edge

if.end22.out.thread_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

if.end25:                                         ; preds = %if.end22
  %16 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %args, align 8
  %18 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %bytes, align 8
  %add.i = add i64 %19, %17
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %17)
  %cmp.not.i = icmp ule i64 %add.i, %17
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %19)
  %cmp3.i = icmp ugt i64 %19, 4294967295
  %or.cond.i = or i1 %cmp3.i, %cmp.not.i
  %sub.i = add i64 %add.i, 4095
  %shr.i = lshr i64 %sub.i, 12
  %shr9.i = lshr i64 %17, 12
  %sub10.i = sub nsw i64 %shr.i, %shr9.i
  %conv.i = trunc i64 %sub10.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp28407 = icmp eq i32 %conv.i, 0
  %cmp28 = select i1 %or.cond.i, i1 true, i1 %cmp28407
  br i1 %cmp28, label %if.end25.out.thread_crit_edge, label %if.end30

if.end25.out.thread_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

if.end30:                                         ; preds = %if.end25
  %20 = add i32 %conv.i, -258
  call void @__sanitizer_cov_trace_const_cmp4(i32 -257, i32 %20)
  %cmp31 = icmp ult i32 %20, -257
  br i1 %cmp31, label %if.end30.out.thread_crit_edge, label %do.body

if.end30.out.thread_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

do.body:                                          ; preds = %if.end30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__rds_rdma_map.__UNIQUE_ID_ddebug547, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__rds_rdma_map, %if.then38)) #9
          to label %if.end7.i.i [label %if.then38], !srcloc !59

if.then38:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %args, align 8
  %23 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %bytes, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__rds_rdma_map.__UNIQUE_ID_ddebug547, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, i64 noundef %22, i64 noundef %24, i32 noundef %conv.i) #9
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then38, %do.body
  %25 = shl nuw nsw i32 %conv.i, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %25, i32 noundef 3520) #13
  %tobool45.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool45.not, label %if.end7.i.i.out.thread_crit_edge, label %if.end47

if.end7.i.i.out.thread_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

if.end47:                                         ; preds = %if.end7.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 36) #14
  %tobool49.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool49.not, label %if.end47.out.thread_crit_edge, label %if.end51

if.end47.out.thread_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.thread

if.end51:                                         ; preds = %if.end47
  %r_kref = getelementptr inbounds %struct.rds_mr, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref, i32 noundef 4) #9
  %27 = ptrtoint ptr %r_kref to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile i32 1, ptr %r_kref, align 4
  %28 = ptrtoint ptr %call7.i.i to i32
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %call7.i.i, align 8
  %30 = ptrtoint ptr %rs_transport to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rs_transport, align 4
  %r_trans = getelementptr inbounds %struct.rds_mr, ptr %call7.i.i, i32 0, i32 5
  %32 = ptrtoint ptr %r_trans to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %r_trans, align 4
  %r_sock = getelementptr inbounds %struct.rds_mr, ptr %call7.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %r_sock to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %rs, ptr %r_sock, align 8
  %flags54 = getelementptr inbounds %struct.rds_get_mr_args, ptr %args, i32 0, i32 2
  %34 = ptrtoint ptr %flags54 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %flags54, align 8
  %and55 = and i64 %35, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and55)
  %tobool56.not = icmp eq i64 %and55, 0
  br i1 %tobool56.not, label %if.end51.if.end58_crit_edge, label %if.then57

if.end51.if.end58_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then57:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %r_use_once = getelementptr inbounds %struct.rds_mr, ptr %call7.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %r_use_once to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load = load i8, ptr %r_use_once, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %r_use_once, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end51.if.end58_crit_edge
  %and60 = and i64 %35, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and60)
  %tobool61.not = icmp eq i64 %and60, 0
  br i1 %tobool61.not, label %if.end58.if.end66_crit_edge, label %if.then62

if.end58.if.end66_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %r_invalidate = getelementptr inbounds %struct.rds_mr, ptr %call7.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %r_invalidate to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load63 = load i8, ptr %r_invalidate, align 4
  %bf.set65 = or i8 %bf.load63, 64
  store i8 %bf.set65, ptr %r_invalidate, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %if.end58.if.end66_crit_edge
  %and68 = and i64 %35, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and68)
  %tobool69.not = icmp eq i64 %and68, 0
  br i1 %tobool69.not, label %if.end66.if.end74_crit_edge, label %if.then70

if.end66.if.end74_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.then70:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %r_write = getelementptr inbounds %struct.rds_mr, ptr %call7.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %r_write to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load71 = load i8, ptr %r_write, align 4
  %bf.set73 = or i8 %bf.load71, 32
  store i8 %bf.set73, ptr %r_write, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %if.end66.if.end74_crit_edge
  %39 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %args, align 8
  %conv = trunc i64 %40 to i32
  %call77 = tail call fastcc i32 @rds_pin_pages(i32 noundef %conv, i32 noundef %conv.i, ptr noundef nonnull %call8.i.i, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call77)
  %cmp78 = icmp eq i32 %call77, -95
  br i1 %cmp78, label %if.end74.if.end141_crit_edge, label %if.else

if.end74.if.end141_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

if.else:                                          ; preds = %if.end74
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call77)
  %cmp81 = icmp slt i32 %call77, 1
  br i1 %cmp81, label %if.else.if.then265_crit_edge, label %if.else84

if.else.if.then265_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then265

if.else84:                                        ; preds = %if.else
  %41 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call77, i32 20) #9
  %42 = extractvalue { i32, i1 } %41, 1
  br i1 %42, label %if.else84.if.then265_crit_edge, label %if.end7.i, !prof !68

if.else84.if.then265_crit_edge:                   ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then265

if.end7.i:                                        ; preds = %if.else84
  %43 = extractvalue { i32, i1 } %41, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %43, i32 noundef 3264) #13
  %tobool86.not = icmp eq ptr %call8.i, null
  br i1 %tobool86.not, label %if.end7.i.if.then265_crit_edge, label %for.body.preheader

if.end7.i.if.then265_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then265

for.body.preheader:                               ; preds = %if.end7.i
  tail call void @sg_init_table(ptr noundef nonnull %call8.i, i32 noundef %call77) #9
  br label %for.body

for.body:                                         ; preds = %sg_set_page.exit.for.body_crit_edge, %for.body.preheader
  %i.0409 = phi i32 [ %inc, %sg_set_page.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.scatterlist, ptr %call8.i, i32 %i.0409
  %arrayidx123 = getelementptr ptr, ptr %call8.i.i, i32 %i.0409
  %44 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx123, align 4
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx, align 4
  %48 = ptrtoint ptr %45 to i32
  %and2.i.i = and i32 %48, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !62

do.body5.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !69
  unreachable

do.body11.i.i:                                    ; preds = %for.body
  %and.i.i.i374 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i374)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i374, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !62

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !70
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %47, 3
  %or.i.i = or i32 %and.i.i, %48
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or.i.i, ptr %arrayidx, align 4
  %offset1.i = getelementptr %struct.scatterlist, ptr %call8.i, i32 %i.0409, i32 1
  %50 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %offset1.i, align 4
  %length.i = getelementptr %struct.scatterlist, ptr %call8.i, i32 %i.0409, i32 2
  %51 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 4096, ptr %length.i, align 4
  %inc = add nuw i32 %i.0409, 1
  %exitcond.not = icmp eq i32 %inc, %call77
  br i1 %exitcond.not, label %do.body124, label %sg_set_page.exit.for.body_crit_edge

sg_set_page.exit.for.body_crit_edge:              ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body124:                                       ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__rds_rdma_map.__UNIQUE_ID_ddebug548, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__rds_rdma_map, %if.then136)) #9
          to label %if.end141 [label %if.then136], !srcloc !59

if.then136:                                       ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__rds_rdma_map.__UNIQUE_ID_ddebug548, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef %call77) #9
  br label %if.end141

if.end141:                                        ; preds = %if.then136, %do.body124, %if.end74.if.end141_crit_edge
  %nents.0 = phi i32 [ %call77, %if.then136 ], [ 0, %if.end74.if.end141_crit_edge ], [ %call77, %do.body124 ]
  %sg.0 = phi ptr [ %call8.i, %if.then136 ], [ null, %if.end74.if.end141_crit_edge ], [ %call8.i, %do.body124 ]
  %52 = ptrtoint ptr %rs_transport to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rs_transport, align 4
  %get_mr143 = getelementptr inbounds %struct.rds_transport, ptr %53, i32 0, i32 23
  %54 = ptrtoint ptr %get_mr143 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %get_mr143, align 4
  %r_key = getelementptr inbounds %struct.rds_mr, ptr %call7.i.i, i32 0, i32 2
  %tobool144.not = icmp eq ptr %cp, null
  br i1 %tobool144.not, label %if.end141.cond.end_crit_edge, label %cond.true

if.end141.cond.end_crit_edge:                     ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cp, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end141.cond.end_crit_edge
  %cond = phi ptr [ %57, %cond.true ], [ null, %if.end141.cond.end_crit_edge ]
  %58 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %args, align 8
  %60 = ptrtoint ptr %bytes to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %bytes, align 8
  %cond150 = zext i1 %cmp78 to i32
  %call151 = tail call ptr %55(ptr noundef %sg.0, i32 noundef %nents.0, ptr noundef %rs, ptr noundef %r_key, ptr noundef %cond, i64 noundef %59, i64 noundef %61, i32 noundef %cond150) #9
  %cmp.i375 = icmp ugt ptr %call151, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i375, label %if.then153, label %if.end158

if.then153:                                       ; preds = %cond.end
  br i1 %cmp78, label %if.then153.if.end156_crit_edge, label %if.then155

if.then153.if.end156_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end156

if.then155:                                       ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unpin_user_pages(ptr noundef nonnull %call8.i.i, i32 noundef %conv.i) #9
  tail call void @kfree(ptr noundef %sg.0) #9
  br label %if.end156

if.end156:                                        ; preds = %if.then155, %if.then153.if.end156_crit_edge
  %62 = ptrtoint ptr %call151 to i32
  br label %if.then265

if.end158:                                        ; preds = %cond.end
  %r_trans_private = getelementptr inbounds %struct.rds_mr, ptr %call7.i.i, i32 0, i32 6
  %63 = ptrtoint ptr %r_trans_private to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call151, ptr %r_trans_private, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__rds_rdma_map.__UNIQUE_ID_ddebug549, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__rds_rdma_map, %if.then171)) #9
          to label %do.end176 [label %if.then171], !srcloc !59

if.then171:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %r_key to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %r_key, align 8
  %cookie_addr = getelementptr inbounds %struct.rds_get_mr_args, ptr %args, i32 0, i32 1
  %66 = ptrtoint ptr %cookie_addr to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %cookie_addr, align 8
  %conv173 = trunc i64 %67 to i32
  %68 = inttoptr i32 %conv173 to ptr
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__rds_rdma_map.__UNIQUE_ID_ddebug549, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13, i32 noundef %65, ptr noundef %68) #9
  br label %do.end176

do.end176:                                        ; preds = %if.then171, %if.end158
  %69 = ptrtoint ptr %r_key to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %r_key, align 8
  br i1 %cmp78, label %if.then178, label %if.else181

if.then178:                                       ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i376 = zext i32 %70 to i64
  br label %if.end188

if.else181:                                       ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %args, align 8
  %conv.i377 = zext i32 %70 to i64
  %conv1.i = shl i64 %72, 32
  %shl.i = and i64 %conv1.i, 17587891077120
  %or.i378 = or i64 %shl.i, %conv.i377
  br label %if.end188

if.end188:                                        ; preds = %if.else181, %if.then178
  %cookie.0 = phi i64 [ %conv.i376, %if.then178 ], [ %or.i378, %if.else181 ]
  %tobool189.not = icmp eq ptr %cookie_ret, null
  br i1 %tobool189.not, label %if.end188.if.end191_crit_edge, label %if.then190

if.end188.if.end191_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end191

if.then190:                                       ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %cookie_ret to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %cookie.0, ptr %cookie_ret, align 8
  br label %if.end191

if.end191:                                        ; preds = %if.then190, %if.end188.if.end191_crit_edge
  %cookie_addr192 = getelementptr inbounds %struct.rds_get_mr_args, ptr %args, i32 0, i32 1
  %74 = ptrtoint ptr %cookie_addr192 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %cookie_addr192, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %75)
  %tobool193.not = icmp eq i64 %75, 0
  br i1 %tobool193.not, label %if.end191.do.body209_crit_edge, label %land.lhs.true

if.end191.do.body209_crit_edge:                   ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body209

land.lhs.true:                                    ; preds = %if.end191
  %conv196 = trunc i64 %75 to i32
  %76 = inttoptr i32 %conv196 to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 325) #9
  %77 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 4
  %79 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #8, !srcloc !65
  %and.i = and i32 %79, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  %80 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_8", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %76, i64 %cookie.0, i32 -1226833921) #9, !srcloc !71
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %79) #9, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool202.not = icmp eq i32 %80, 0
  br i1 %tobool202.not, label %land.lhs.true.do.body209_crit_edge, label %if.then203

land.lhs.true.do.body209_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body209

if.then203:                                       ; preds = %land.lhs.true
  br i1 %cmp78, label %if.then203.if.then265_crit_edge, label %if.then205

if.then203.if.then265_crit_edge:                  ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then265

if.then205:                                       ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unpin_user_pages(ptr noundef nonnull %call8.i.i, i32 noundef %conv.i) #9
  tail call void @kfree(ptr noundef %sg.0) #9
  br label %if.then265

do.body209:                                       ; preds = %land.lhs.true.do.body209_crit_edge, %if.end191.do.body209_crit_edge
  %rs_rdma_lock = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 24
  %call214 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rs_rdma_lock) #9
  %rs_rdma_keys = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 25
  %81 = ptrtoint ptr %r_key to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %r_key, align 8
  %conv220 = zext i32 %82 to i64
  %call221 = tail call fastcc ptr @rds_mr_tree_walk(ptr noundef %rs_rdma_keys, i64 noundef %conv220, ptr noundef nonnull %call7.i.i)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rs_rdma_lock, i32 noundef %call214) #9
  %tobool224.not = icmp ne ptr %call221, null
  %cmp225 = icmp ne ptr %call221, %call7.i.i
  %spec.select = select i1 %tobool224.not, i1 %cmp225, i1 false
  br i1 %spec.select, label %do.body234, label %do.body243, !prof !68

do.body234:                                       ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/rdma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 340, 0\0A.popsection", ""() #9, !srcloc !72
  unreachable

do.body243:                                       ; preds = %do.body209
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__rds_rdma_map.__UNIQUE_ID_ddebug550, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__rds_rdma_map, %if.then255)) #9
          to label %do.end259 [label %if.then255], !srcloc !59

if.then255:                                       ; preds = %do.body243
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %r_key to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %r_key, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__rds_rdma_map.__UNIQUE_ID_ddebug550, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.13, i32 noundef %84) #9
  br label %do.end259

do.end259:                                        ; preds = %if.then255, %do.body243
  %tobool260.not = icmp eq ptr %mr_ret, null
  br i1 %tobool260.not, label %do.end259.if.then265_crit_edge, label %if.then261

do.end259.if.then265_crit_edge:                   ; preds = %do.end259
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then265

if.then261:                                       ; preds = %do.end259
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @kref_get(ptr noundef %r_kref)
  %85 = ptrtoint ptr %mr_ret to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call7.i.i, ptr %mr_ret, align 4
  br label %if.then265

out.thread:                                       ; preds = %if.end47.out.thread_crit_edge, %if.end7.i.i.out.thread_crit_edge, %if.end30.out.thread_crit_edge, %if.end25.out.thread_crit_edge, %if.end22.out.thread_crit_edge, %lor.lhs.false8.out.thread_crit_edge, %if.end4.out.thread_crit_edge, %if.end.out.thread_crit_edge, %lor.lhs.false.out.thread_crit_edge, %entry.out.thread_crit_edge
  %ret.0.ph = phi i32 [ -12, %if.end47.out.thread_crit_edge ], [ -12, %if.end7.i.i.out.thread_crit_edge ], [ -90, %if.end30.out.thread_crit_edge ], [ -22, %if.end25.out.thread_crit_edge ], [ -1, %if.end22.out.thread_crit_edge ], [ -22, %if.end4.out.thread_crit_edge ], [ -22, %lor.lhs.false8.out.thread_crit_edge ], [ -95, %if.end.out.thread_crit_edge ], [ -107, %entry.out.thread_crit_edge ], [ -107, %lor.lhs.false.out.thread_crit_edge ]
  %pages.0.ph = phi ptr [ %call8.i.i, %if.end47.out.thread_crit_edge ], [ null, %if.end7.i.i.out.thread_crit_edge ], [ null, %if.end30.out.thread_crit_edge ], [ null, %if.end25.out.thread_crit_edge ], [ null, %if.end22.out.thread_crit_edge ], [ null, %if.end4.out.thread_crit_edge ], [ null, %lor.lhs.false8.out.thread_crit_edge ], [ null, %if.end.out.thread_crit_edge ], [ null, %entry.out.thread_crit_edge ], [ null, %lor.lhs.false.out.thread_crit_edge ]
  tail call void @kfree(ptr noundef %pages.0.ph) #9
  br label %if.end268

if.then265:                                       ; preds = %if.then261, %do.end259.if.then265_crit_edge, %if.then205, %if.then203.if.then265_crit_edge, %if.end156, %if.end7.i.if.then265_crit_edge, %if.else84.if.then265_crit_edge, %if.else.if.then265_crit_edge
  %ret.0404 = phi i32 [ -12, %if.end7.i.if.then265_crit_edge ], [ %call77, %if.else.if.then265_crit_edge ], [ -12, %if.else84.if.then265_crit_edge ], [ %62, %if.end156 ], [ -14, %if.then205 ], [ -14, %if.then203.if.then265_crit_edge ], [ 0, %if.then261 ], [ 0, %do.end259.if.then265_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #9
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %r_kref, i32 1, i32 3, i32 1) #9
  %86 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref, ptr %r_kref, i32 1, ptr elementtype(i32) %r_kref) #9, !srcloc !61
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i379 = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i379, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then265
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end268_crit_edge, label %if.then10.i.i.i.i, !prof !62

if.end5.i.i.i.i.if.end268_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end268

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %r_kref, i32 noundef 3) #9
  br label %if.end268

if.then.i:                                        ; preds = %if.then265
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  tail call fastcc void @rds_destroy_mr(ptr noundef nonnull %call7.i.i) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %if.end268

if.end268:                                        ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end268_crit_edge, %out.thread
  %ret.0396 = phi i32 [ %ret.0.ph, %out.thread ], [ %ret.0404, %if.end5.i.i.i.i.if.end268_crit_edge ], [ %ret.0404, %if.then10.i.i.i.i ], [ %ret.0404, %if.then.i ]
  ret i32 %ret.0396
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_get_mr_for_dest(ptr noundef %rs, [2 x i32] %optval.coerce, i32 noundef %optlen) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.rds_get_mr_for_dest_args, align 8
  %new_args = alloca %struct.rds_get_mr_args, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %args) #9
  %0 = call ptr @memset(ptr %args, i32 255, i32 160)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %new_args) #9
  %1 = getelementptr inbounds %struct.rds_get_mr_args, ptr %new_args, i32 0, i32 1
  %2 = getelementptr inbounds %struct.rds_get_mr_args, ptr %new_args, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %optlen)
  %cmp.not = icmp eq i32 %optlen, 160
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %3 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 156) #9
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i.i, label %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge:      ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end8.i.i.i.i
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 160, i32 -1226833920) #12, !srcloc !64
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !62

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %args, i32 noundef 160) #9
  %5 = call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #8, !srcloc !65
  %and.i.i.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #9, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %args, ptr noundef %3, i32 noundef 160) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #9, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end2_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !62

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.if.end2_crit_edge:                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i.i.i10 = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 160, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 160, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 160, %res.0.i.i.i.i10
  %add.ptr.i.i.i.i = getelementptr i8, ptr %args, i32 %sub.i.i.i.i
  %8 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i.i10)
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = call ptr @memcpy(ptr %args, ptr %3, i32 160)
  br label %if.end2

if.end2:                                          ; preds = %if.end.i.i, %if.end.i.i.i.i.if.end2_crit_edge
  %vec3 = getelementptr inbounds %struct.rds_get_mr_for_dest_args, ptr %args, i32 0, i32 1
  %10 = call ptr @memcpy(ptr %new_args, ptr %vec3, i32 16)
  %cookie_addr = getelementptr inbounds %struct.rds_get_mr_for_dest_args, ptr %args, i32 0, i32 2
  %11 = ptrtoint ptr %cookie_addr to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %cookie_addr, align 8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %1, align 8
  %flags = getelementptr inbounds %struct.rds_get_mr_for_dest_args, ptr %args, i32 0, i32 3
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %flags, align 8
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %2, align 8
  %call6 = call fastcc i32 @__rds_rdma_map(ptr noundef %rs, ptr noundef nonnull %new_args, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.then11.i.i.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end2 ], [ -22, %entry.cleanup_crit_edge ], [ -14, %if.then11.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %new_args) #9
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %args) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_free_mr(ptr noundef %rs, [2 x i32] %optval.coerce, i32 noundef %optlen) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.rds_free_mr_args, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args) #9
  %0 = getelementptr inbounds %struct.rds_free_mr_args, ptr %args, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %optlen)
  %cmp.not = icmp eq i32 %optlen, 16
  %1 = call ptr @memset(ptr %args, i32 255, i32 16)
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %2 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 156) #9
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i.i, label %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge:      ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end8.i.i.i.i
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 16, i32 -1226833920) #12, !srcloc !64
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !62

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %args, i32 noundef 16) #9
  %4 = call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #8, !srcloc !65
  %and.i.i.i.i.i.i = and i32 %6, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #9, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %args, ptr noundef %2, i32 noundef 16) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #9, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i.i.if.end2_crit_edge, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !62

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i

if.end.i.i.i.i.if.end2_crit_edge:                 ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end2

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i.i.i59 = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 16, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 16, %res.0.i.i.i.i59
  %add.ptr.i.i.i.i = getelementptr i8, ptr %args, i32 %sub.i.i.i.i
  %7 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i.i.i59)
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = call ptr @memcpy(ptr %args, ptr %2, i32 16)
  br label %if.end2

if.end2:                                          ; preds = %if.end.i.i, %if.end.i.i.i.i.if.end2_crit_edge
  %9 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %args, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp3 = icmp eq i64 %10, 0
  br i1 %cmp3, label %if.then4, label %do.body13

if.then4:                                         ; preds = %if.end2
  %rs_transport = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 8
  %11 = ptrtoint ptr %rs_transport to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rs_transport, align 4
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %if.then4.cleanup_crit_edge, label %lor.lhs.false

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then4
  %flush_mrs = getelementptr inbounds %struct.rds_transport, ptr %12, i32 0, i32 26
  %13 = ptrtoint ptr %flush_mrs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %flush_mrs, align 4
  %tobool7.not = icmp eq ptr %14, null
  br i1 %tobool7.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end9

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  call void %14() #9
  br label %cleanup

do.body13:                                        ; preds = %if.end2
  %rs_rdma_lock = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 24
  %call16 = call i32 @_raw_spin_lock_irqsave(ptr noundef %rs_rdma_lock) #9
  %rs_rdma_keys = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 25
  %15 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %args, align 8
  %conv21 = and i64 %16, 4294967295
  %17 = ptrtoint ptr %rs_rdma_keys to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rs_rdma_keys, align 4
  %tobool.not30.i = icmp eq ptr %18, null
  br i1 %tobool.not30.i, label %do.body13.if.then35.critedge_crit_edge, label %do.body13.while.body.i_crit_edge

do.body13.while.body.i_crit_edge:                 ; preds = %do.body13
  br label %while.body.i

do.body13.if.then35.critedge_crit_edge:           ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35.critedge

while.body.i:                                     ; preds = %if.end8.i.while.body.i_crit_edge, %do.body13.while.body.i_crit_edge
  %19 = phi ptr [ %23, %if.end8.i.while.body.i_crit_edge ], [ %18, %do.body13.while.body.i_crit_edge ]
  %r_key.i = getelementptr inbounds %struct.rds_mr, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %r_key.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %r_key.i, align 4
  %conv.i54 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv21, i64 %conv.i54)
  %cmp.i = icmp ult i64 %conv21, %conv.i54
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %19, i32 0, i32 2
  br label %if.end8.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %conv21, i64 %conv.i54)
  %cmp4.i = icmp ugt i64 %conv21, %conv.i54
  br i1 %cmp4.i, label %if.then6.i, label %if.then24

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %19, i32 0, i32 1
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.then.i
  %p.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then6.i ]
  %22 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end8.i.if.then35.critedge_crit_edge, label %if.end8.i.while.body.i_crit_edge

if.end8.i.while.body.i_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end8.i.if.then35.critedge_crit_edge:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then35.critedge

if.then24:                                        ; preds = %if.else.i
  call void @rb_erase(ptr noundef nonnull %19, ptr noundef %rs_rdma_keys) #9
  %24 = ptrtoint ptr %19 to i32
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %19, align 4
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %0, align 8
  %and = and i64 %27, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool29.not = icmp eq i64 %and, 0
  br i1 %tobool29.not, label %if.then24.if.end36_crit_edge, label %if.then30

if.then24.if.end36_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then30:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %r_invalidate = getelementptr inbounds %struct.rds_mr, ptr %19, i32 0, i32 3
  %28 = ptrtoint ptr %r_invalidate to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load = load i8, ptr %r_invalidate, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %r_invalidate, align 4
  br label %if.end36

if.then35.critedge:                               ; preds = %if.end8.i.if.then35.critedge_crit_edge, %do.body13.if.then35.critedge_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rs_rdma_lock, i32 noundef %call16) #9
  br label %cleanup

if.end36:                                         ; preds = %if.then30, %if.then24.if.end36_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %rs_rdma_lock, i32 noundef %call16) #9
  %r_kref = getelementptr inbounds %struct.rds_mr, ptr %19, i32 0, i32 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %r_kref, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  call void @llvm.prefetch.p0(ptr %r_kref, i32 1, i32 3, i32 1) #9
  %29 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref, ptr %r_kref, i32 1, ptr elementtype(i32) %r_kref) #9, !srcloc !61
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i55 = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i55, label %if.then.i56, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !62

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %r_kref, i32 noundef 3) #9
  br label %cleanup

if.then.i56:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  call fastcc void @rds_destroy_mr(ptr noundef nonnull %19) #9
  call void @kfree(ptr noundef nonnull %19) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i56, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then35.critedge, %if.end9, %lor.lhs.false.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %if.then11.i.i.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %if.then35.critedge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then4.cleanup_crit_edge ], [ -14, %if.then11.i.i.i.i ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i56 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rds_mr_tree_walk(ptr noundef %root, i64 noundef %key, ptr noundef %insert) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %tobool.not30 = icmp eq ptr %1, null
  br i1 %tobool.not30, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end8.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %6, %if.end8.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %r_key = getelementptr inbounds %struct.rds_mr, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %r_key to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %r_key, align 4
  %conv = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %key)
  %cmp = icmp ugt i64 %conv, %key
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 2
  br label %if.end8

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %key)
  %cmp4 = icmp ult i64 %conv, %key
  br i1 %cmp4, label %if.then6, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 1
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then
  %p.1 = phi ptr [ %rb_left, %if.then ], [ %rb_right, %if.then6 ]
  %5 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p.1, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %while.cond.while.end_crit_edge, label %if.end8.while.body_crit_edge

if.end8.while.body_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.le = ptrtoint ptr %2 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry.while.end_crit_edge
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %entry.while.end_crit_edge ]
  %p.0.lcssa = phi ptr [ %p.1, %while.cond.while.end_crit_edge ], [ %root, %entry.while.end_crit_edge ]
  %tobool9.not = icmp eq ptr %insert, null
  br i1 %tobool9.not, label %while.end.cleanup_crit_edge, label %if.then10

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10:                                        ; preds = %while.end
  %7 = ptrtoint ptr %insert to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %parent.0.lcssa, ptr %insert, align 4
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %insert, i32 0, i32 1
  %8 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %insert, i32 0, i32 2
  %9 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %rb_left.i, align 4
  %10 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %insert, ptr %p.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %insert, ptr noundef %root) #9
  %r_kref = getelementptr inbounds %struct.rds_mr, ptr %insert, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %r_kref, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref, ptr %r_kref, i32 1, ptr elementtype(i32) %r_kref) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then10.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !68

if.then10.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then10
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %12 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !62

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.cleanup_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then10.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then10.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %r_kref, i32 noundef %.sink.i.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.cleanup_crit_edge, %while.end.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %13 = phi ptr [ null, %if.end15.sink.split.i.i.i.i ], [ null, %if.else.i.i.i.i.cleanup_crit_edge ], [ null, %while.end.cleanup_crit_edge ], [ %2, %if.else.cleanup_crit_edge ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_rdma_unuse(ptr noundef %rs, i32 noundef %r_key, i32 noundef %force) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rs_rdma_lock = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 24
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rs_rdma_lock) #9
  %rs_rdma_keys = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 25
  %0 = ptrtoint ptr %rs_rdma_keys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rs_rdma_keys, align 4
  %tobool.not30.i = icmp eq ptr %1, null
  br i1 %tobool.not30.i, label %entry.do.body7_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.do.body7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body7

while.body.i:                                     ; preds = %if.end8.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %2 = phi ptr [ %6, %if.end8.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %r_key.i = getelementptr inbounds %struct.rds_mr, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %r_key.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %r_key.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %r_key)
  %cmp.i = icmp ugt i32 %4, %r_key
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 2
  br label %if.end8.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %r_key)
  %cmp4.i = icmp ult i32 %4, %r_key
  br i1 %cmp4.i, label %if.then6.i, label %if.end17

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %2, i32 0, i32 1
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.then.i
  %p.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then6.i ]
  %5 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end8.i.do.body7_crit_edge, label %if.end8.i.while.body.i_crit_edge

if.end8.i.while.body.i_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end8.i.do.body7_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body7

do.body7:                                         ; preds = %if.end8.i.do.body7_crit_edge, %entry.do.body7_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_rdma_unuse.__UNIQUE_ID_ddebug551, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_rdma_unuse, %if.then13)) #9
          to label %do.end15 [label %if.then13], !srcloc !59

if.then13:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_rdma_unuse.__UNIQUE_ID_ddebug551, ptr noundef nonnull @.str.3, i32 noundef %r_key) #9
  br label %do.end15

do.end15:                                         ; preds = %if.then13, %do.body7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rs_rdma_lock, i32 noundef %call2) #9
  br label %cleanup

if.end17:                                         ; preds = %if.else.i
  %r_kref = getelementptr inbounds %struct.rds_mr, ptr %2, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %r_kref, i32 1, i32 3, i32 1) #9
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref, ptr %r_kref, i32 1, ptr elementtype(i32) %r_kref) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end17.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !68

if.end17.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end17
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !62

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end17.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end17.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %r_kref, i32 noundef %.sink.i.i.i.i) #9
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  %r_use_once = getelementptr inbounds %struct.rds_mr, ptr %2, i32 0, i32 3
  %9 = ptrtoint ptr %r_use_once to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %r_use_once, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool18.not = icmp sgt i8 %bf.load, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force)
  %tobool19.not = icmp eq i32 %force, 0
  %or.cond = and i1 %tobool19.not, %tobool18.not
  br i1 %or.cond, label %kref_get.exit.if.end24_crit_edge, label %if.then20

kref_get.exit.if.end24_crit_edge:                 ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then20:                                        ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rb_erase(ptr noundef nonnull %2, ptr noundef %rs_rdma_keys) #9
  %10 = ptrtoint ptr %2 to i32
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %2, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %kref_get.exit.if.end24_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rs_rdma_lock, i32 noundef %call2) #9
  %r_trans = getelementptr inbounds %struct.rds_mr, ptr %2, i32 0, i32 5
  %12 = ptrtoint ptr %r_trans to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %r_trans, align 4
  %sync_mr = getelementptr inbounds %struct.rds_transport, ptr %13, i32 0, i32 24
  %14 = ptrtoint ptr %sync_mr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sync_mr, align 4
  %tobool26.not = icmp eq ptr %15, null
  br i1 %tobool26.not, label %if.end24.if.end30_crit_edge, label %if.then27

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %r_trans_private = getelementptr inbounds %struct.rds_mr, ptr %2, i32 0, i32 6
  %16 = ptrtoint ptr %r_trans_private to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %r_trans_private, align 4
  tail call void %15(ptr noundef %17, i32 noundef 2) #9
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end24.if.end30_crit_edge
  %call.i.i.i.i.i.i56 = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %r_kref, i32 1, i32 3, i32 1) #9
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref, ptr %r_kref, i32 1, ptr elementtype(i32) %r_kref) #9, !srcloc !61
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i58, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i57 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i57, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !62

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %r_kref, i32 noundef 3) #9
  br label %kref_put.exit

if.then.i58:                                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  tail call fastcc void @rds_destroy_mr(ptr noundef nonnull %2) #9
  tail call void @kfree(ptr noundef nonnull %2) #9
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i58, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  br i1 %or.cond, label %kref_put.exit.cleanup_crit_edge, label %if.then34

kref_put.exit.cleanup_crit_edge:                  ; preds = %kref_put.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then34:                                        ; preds = %kref_put.exit
  %call.i.i.i.i.i.i59 = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %r_kref, i32 1, i32 3, i32 1) #9
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref, ptr %r_kref, i32 1, ptr elementtype(i32) %r_kref) #9, !srcloc !61
  %asmresult.i.i.i.i.i.i.i60 = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i60)
  %cmp.i.i.i.i61 = icmp eq i32 %asmresult.i.i.i.i.i.i.i60, 1
  br i1 %cmp.i.i.i.i61, label %if.then.i66, label %if.end5.i.i.i.i63

if.end5.i.i.i.i63:                                ; preds = %if.then34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i60)
  %.not.i.i.i.i62 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i60, 0
  br i1 %.not.i.i.i.i62, label %if.end5.i.i.i.i63.cleanup_crit_edge, label %if.then10.i.i.i.i64, !prof !62

if.end5.i.i.i.i63.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i.i.i.i64:                              ; preds = %if.end5.i.i.i.i63
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %r_kref, i32 noundef 3) #9
  br label %cleanup

if.then.i66:                                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  tail call fastcc void @rds_destroy_mr(ptr noundef nonnull %2) #9
  tail call void @kfree(ptr noundef nonnull %2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i66, %if.then10.i.i.i.i64, %if.end5.i.i.i.i63.cleanup_crit_edge, %kref_put.exit.cleanup_crit_edge, %do.end15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_get(ptr noundef %kref) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #9, !srcloc !73
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !68

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !62

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i) #9
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_rdma_free_op(ptr nocapture noundef %ro) local_unnamed_addr #0 align 64 {
entry:
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %op_odp_mr = getelementptr inbounds %struct.rm_rdma_op, ptr %ro, i32 0, i32 10
  %0 = ptrtoint ptr %op_odp_mr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op_odp_mr, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %op_nents = getelementptr inbounds %struct.rm_rdma_op, ptr %ro, i32 0, i32 4
  %2 = ptrtoint ptr %op_nents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %op_nents, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp17.not = icmp eq i32 %3, 0
  br i1 %cmp17.not, label %for.cond.preheader.if.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %op_sg = getelementptr inbounds %struct.rm_rdma_op, ptr %ro, i32 0, i32 6
  %op_write = getelementptr inbounds %struct.rm_rdma_op, ptr %ro, i32 0, i32 2
  br label %for.body

if.then:                                          ; preds = %entry
  %r_kref = getelementptr inbounds %struct.rds_mr, ptr %1, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %r_kref, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref, ptr %r_kref, i32 1, ptr elementtype(i32) %r_kref) #9, !srcloc !61
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !62

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %r_kref, i32 noundef 3) #9
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !63
  tail call fastcc void @rds_destroy_mr(ptr noundef nonnull %1) #9
  tail call void @kfree(ptr noundef nonnull %1) #9
  br label %if.end

for.body:                                         ; preds = %sg_page.exit.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %sg_page.exit.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #9
  %5 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %page, align 4, !annotation !74
  %6 = ptrtoint ptr %op_sg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %op_sg, align 8
  %arrayidx = getelementptr %struct.scatterlist, ptr %7, i32 %i.018
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !62

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !75
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i = and i32 %9, -4
  %10 = inttoptr i32 %and.i to ptr
  %11 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %page, align 4
  %12 = ptrtoint ptr %op_write to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %op_write, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool3.not = icmp sgt i8 %bf.load, -1
  call void @unpin_user_pages_dirty_lock(ptr noundef nonnull %page, i32 noundef 1, i1 noundef zeroext %tobool3.not) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #9
  %inc = add nuw i32 %i.018, 1
  %13 = ptrtoint ptr %op_nents to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %op_nents, align 8
  %cmp = icmp ult i32 %inc, %14
  br i1 %cmp, label %sg_page.exit.for.body_crit_edge, label %sg_page.exit.if.end_crit_edge

sg_page.exit.if.end_crit_edge:                    ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sg_page.exit.for.body_crit_edge:                  ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end:                                           ; preds = %sg_page.exit.if.end_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge
  %op_notifier = getelementptr inbounds %struct.rm_rdma_op, ptr %ro, i32 0, i32 7
  %15 = ptrtoint ptr %op_notifier to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %op_notifier, align 4
  call void @kfree(ptr noundef %16) #9
  %17 = ptrtoint ptr %op_notifier to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %op_notifier, align 4
  %op_active = getelementptr inbounds %struct.rm_rdma_op, ptr %ro, i32 0, i32 2
  %18 = ptrtoint ptr %op_active to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load5 = load i8, ptr %op_active, align 8
  %bf.clear = and i8 %bf.load5, -3
  store i8 %bf.clear, ptr %op_active, align 8
  %19 = ptrtoint ptr %op_odp_mr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %op_odp_mr, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_pages_dirty_lock(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_atomic_free_op(ptr nocapture noundef %ao) local_unnamed_addr #0 align 64 {
entry:
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #9
  %op_sg = getelementptr inbounds %struct.rm_atomic_op, ptr %ao, i32 0, i32 5
  %0 = ptrtoint ptr %op_sg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %op_sg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !62

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !75
  unreachable

sg_page.exit:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %and.i = and i32 %3, -4
  %4 = inttoptr i32 %and.i to ptr
  %5 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %page, align 4
  call void @unpin_user_pages_dirty_lock(ptr noundef nonnull %page, i32 noundef 1, i1 noundef zeroext true) #9
  %op_notifier = getelementptr inbounds %struct.rm_atomic_op, ptr %ao, i32 0, i32 6
  %6 = ptrtoint ptr %op_notifier to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %op_notifier, align 8
  call void @kfree(ptr noundef %7) #9
  %8 = ptrtoint ptr %op_notifier to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %op_notifier, align 8
  %op_active = getelementptr inbounds %struct.rm_atomic_op, ptr %ao, i32 0, i32 4
  %9 = ptrtoint ptr %op_active to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %op_active, align 8
  %bf.clear = and i8 %bf.load, -9
  store i8 %bf.clear, ptr %op_active, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_rdma_extra_size(ptr nocapture noundef readonly %args, ptr nocapture noundef writeonly %iov) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %local_vec_addr = getelementptr inbounds %struct.rds_rdma_args, ptr %args, i32 0, i32 2
  %0 = ptrtoint ptr %local_vec_addr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %local_vec_addr, align 8
  %conv = trunc i64 %1 to i32
  %2 = inttoptr i32 %conv to ptr
  %nr_local = getelementptr inbounds %struct.rds_rdma_args, ptr %args, i32 0, i32 3
  %3 = ptrtoint ptr %nr_local to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %nr_local, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 1024, i64 %4)
  %cmp3 = icmp ugt i64 %4, 1024
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end7.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %conv8 = trunc i64 %4 to i32
  %5 = shl nuw nsw i32 %conv8, 4
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #13
  %6 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8.i.i, ptr %iov, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end12

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end7.i.i
  %7 = ptrtoint ptr %nr_local to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %nr_local, align 8
  %.tr = trunc i64 %8 to i32
  %conv15 = shl i32 %.tr, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv15)
  %cmp9.i.i = icmp slt i32 %conv15, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end12
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !62

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end12
  tail call void @__check_object_size(ptr noundef nonnull %call8.i.i, i32 noundef %conv15, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.20, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %conv15, i32 -1226833920) #12, !srcloc !64
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !62

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call8.i.i, i32 noundef %conv15) #9
  %10 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !65
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call8.i.i, ptr noundef %2, i32 noundef %conv15) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #9, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !67
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %conv15, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %conv15, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end19, label %if.then11.i.i, !prof !62

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %conv15, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call8.i.i, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end19:                                         ; preds = %if.end.i.i
  %14 = ptrtoint ptr %nr_local to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %nr_local, align 8
  %conv21 = trunc i64 %15 to i32
  %len = getelementptr inbounds %struct.rds_iov_vector, ptr %iov, i32 0, i32 1
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv21, ptr %len, align 4
  %17 = load i64, ptr %nr_local, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %cmp2467.not = icmp eq i64 %17, 0
  br i1 %cmp2467.not, label %if.end19.cleanup_crit_edge, label %if.end19.for.body_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  br label %for.body

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end19.for.body_crit_edge
  %i.070 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end19.for.body_crit_edge ]
  %tot_pages.069 = phi i32 [ %add, %for.inc.for.body_crit_edge ], [ 0, %if.end19.for.body_crit_edge ]
  %vec.068 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %call8.i.i, %if.end19.for.body_crit_edge ]
  %18 = ptrtoint ptr %vec.068 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %vec.068, align 8
  %bytes.i = getelementptr inbounds %struct.rds_iovec, ptr %vec.068, i32 0, i32 1
  %20 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %bytes.i, align 8
  %add.i = add i64 %21, %19
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %19)
  %cmp.not.i = icmp ule i64 %add.i, %19
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %21)
  %cmp3.i = icmp ugt i64 %21, 4294967295
  %or.cond.i = or i1 %cmp3.i, %cmp.not.i
  %sub.i = add i64 %add.i, 4095
  %shr.i = lshr i64 %sub.i, 12
  %shr9.i = lshr i64 %19, 12
  %sub10.i = sub nsw i64 %shr.i, %shr9.i
  %conv.i = trunc i64 %sub10.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %cmp2765 = icmp eq i32 %conv.i, 0
  %cmp27 = select i1 %or.cond.i, i1 true, i1 %cmp2765
  br i1 %cmp27, label %for.body.cleanup_crit_edge, label %if.end30

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %for.body
  %add = add i32 %tot_pages.069, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp31 = icmp slt i32 %add, 0
  br i1 %cmp31, label %if.end30.cleanup_crit_edge, label %for.inc

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %if.end30
  %inc = add i32 %i.070, 1
  %incdec.ptr = getelementptr %struct.rds_iovec, ptr %vec.068, i32 1
  %conv22 = zext i32 %inc to i64
  %cmp24 = icmp ugt i64 %17, %conv22
  br i1 %cmp24, label %for.inc.for.body_crit_edge, label %for.end.loopexit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo = mul i32 %add, 20
  br label %cleanup

cleanup:                                          ; preds = %for.end.loopexit, %if.end30.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ %phi.bo, %for.end.loopexit ], [ -22, %for.body.cleanup_crit_edge ], [ -22, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_cmsg_rdma_args(ptr noundef %rs, ptr noundef %rm, ptr nocapture noundef readonly %cmsg, ptr nocapture noundef readonly %vec) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rdma = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 1
  %0 = ptrtoint ptr %cmsg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmsg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %1)
  %cmp = icmp ult i32 %1, 68
  br i1 %cmp, label %entry.cleanup375_crit_edge, label %lor.lhs.false

entry.cleanup375_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup375

lor.lhs.false:                                    ; preds = %entry
  %op_active = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 1, i32 2
  %2 = ptrtoint ptr %op_active to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %op_active, align 8
  %3 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup375_crit_edge

lor.lhs.false.cleanup375_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup375

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr = getelementptr i8, ptr %cmsg, i32 12
  %sin6_addr = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 5, i32 3
  %4 = ptrtoint ptr %sin6_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sin6_addr, align 4
  %arrayidx2.i = getelementptr %struct.rds_sock, ptr %rs, i32 0, i32 5, i32 3, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %7, %5
  %arrayidx4.i = getelementptr %struct.rds_sock, ptr %rs, i32 0, i32 5, i32 3, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %9
  %arrayidx7.i = getelementptr %struct.rds_sock, ptr %rs, i32 0, i32 5, i32 3, i32 0, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  br i1 %cmp.i, label %if.end.if.then354_crit_edge, label %if.end3

if.end.if.then354_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then354

if.end3:                                          ; preds = %if.end
  %nr_local = getelementptr i8, ptr %cmsg, i32 44
  %12 = ptrtoint ptr %nr_local to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %nr_local, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1024, i64 %13)
  %cmp4 = icmp ugt i64 %13, 1024
  br i1 %cmp4, label %if.end3.if.then354_crit_edge, label %if.end6

if.end3.if.then354_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then354

if.end6:                                          ; preds = %if.end3
  %len = getelementptr inbounds %struct.rds_iov_vector, ptr %vec, i32 0, i32 1
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %conv = sext i32 %15 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %conv)
  %cmp8.not = icmp eq i64 %13, %conv
  br i1 %cmp8.not, label %if.end11, label %if.end6.if.then354_crit_edge

if.end6.if.then354_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then354

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %13)
  %cmp13.not = icmp eq i64 %13, 1
  %16 = ptrtoint ptr %vec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vec, align 4
  %conv18 = trunc i64 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv18)
  %cmp13.not.i = icmp eq i32 %conv18, 0
  br i1 %cmp13.not.i, label %if.end11.if.end23_crit_edge, label %if.end11.for.body.i_crit_edge

if.end11.for.body.i_crit_edge:                    ; preds = %if.end11
  br label %for.body.i

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

for.cond.i:                                       ; preds = %if.end.i
  %inc.i = add nuw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv18
  br i1 %exitcond.not.i, label %for.cond.i.if.end23_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.if.end23_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end11.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end11.for.body.i_crit_edge ]
  %tot_pages.014.i = phi i32 [ %add.i526, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end11.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rds_iovec, ptr %17, i32 %i.015.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx.i, align 8
  %bytes.i.i = getelementptr %struct.rds_iovec, ptr %17, i32 %i.015.i, i32 1
  %20 = ptrtoint ptr %bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %bytes.i.i, align 8
  %add.i.i = add i64 %21, %19
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %19)
  %cmp.not.i.i = icmp ule i64 %add.i.i, %19
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %21)
  %cmp3.i.i = icmp ugt i64 %21, 4294967295
  %or.cond.i.i = or i1 %cmp3.i.i, %cmp.not.i.i
  %sub.i.i = add i64 %add.i.i, 4095
  %shr.i.i = lshr i64 %sub.i.i, 12
  %shr9.i.i = lshr i64 %19, 12
  %sub10.i.i = sub nsw i64 %shr.i.i, %shr9.i.i
  %conv.i.i = trunc i64 %sub10.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %cmp112.i = icmp eq i32 %conv.i.i, 0
  %cmp1.i = select i1 %or.cond.i.i, i1 true, i1 %cmp112.i
  br i1 %cmp1.i, label %for.body.i.if.then354_crit_edge, label %if.end.i

for.body.i.if.then354_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then354

if.end.i:                                         ; preds = %for.body.i
  %add.i526 = add i32 %tot_pages.014.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i526)
  %cmp2.i = icmp slt i32 %add.i526, 0
  br i1 %cmp2.i, label %if.end.i.if.then354_crit_edge, label %for.cond.i

if.end.i.if.then354_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then354

if.end23:                                         ; preds = %for.cond.i.if.end23_crit_edge, %if.end11.if.end23_crit_edge
  %retval.0.i527 = phi i32 [ 0, %if.end11.if.end23_crit_edge ], [ %add.i526, %for.cond.i.if.end23_crit_edge ]
  %22 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %retval.0.i527, i32 4) #9
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %if.end23.if.then354_crit_edge, label %if.end7.i.i, !prof !68

if.end23.if.then354_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then354

if.end7.i.i:                                      ; preds = %if.end23
  %24 = extractvalue { i32, i1 } %22, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3520) #13
  %tobool25.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool25.not, label %if.end7.i.i.if.then354_crit_edge, label %if.end27

if.end7.i.i.if.then354_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then354

if.end27:                                         ; preds = %if.end7.i.i
  %flags = getelementptr i8, ptr %cmsg, i32 52
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %flags, align 8
  %27 = trunc i64 %26 to i8
  %28 = ptrtoint ptr %op_active to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load30 = load i8, ptr %op_active, align 8
  %bf.shl = shl i8 %27, 7
  %bf.clear31 = and i8 %bf.load30, 127
  %bf.set = or i8 %bf.clear31, %bf.shl
  store i8 %bf.set, ptr %op_active, align 8
  %29 = load i64, ptr %flags, align 8
  %30 = trunc i64 %29 to i8
  %31 = shl i8 %30, 5
  %bf.shl41 = and i8 %31, 64
  %bf.clear42 = and i8 %bf.set, -65
  %bf.set43 = or i8 %bf.shl41, %bf.clear42
  store i8 %bf.set43, ptr %op_active, align 8
  %32 = load i64, ptr %flags, align 8
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 32
  %bf.clear55 = and i8 %bf.set43, -33
  %bf.set56 = or i8 %bf.clear55, %34
  store i8 %bf.set56, ptr %op_active, align 8
  %35 = load i64, ptr %flags, align 8
  %36 = trunc i64 %35 to i8
  %37 = lshr i8 %36, 4
  %bf.shl67 = and i8 %37, 4
  %bf.clear68 = and i8 %bf.set56, -7
  %bf.set69 = or i8 %bf.shl67, %bf.clear68
  %bf.set74 = or i8 %bf.set69, 2
  store i8 %bf.set74, ptr %op_active, align 8
  %rs_recverr = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 26
  %38 = ptrtoint ptr %rs_recverr to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %rs_recverr, align 8
  %bf.value77 = shl i8 %39, 4
  %bf.shl78 = and i8 %bf.value77, 16
  %bf.clear79 = and i8 %bf.set74, -17
  %bf.set80 = or i8 %bf.clear79, %bf.shl78
  store i8 %bf.set80, ptr %op_active, align 8
  %op_odp_mr = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 1, i32 10
  %40 = ptrtoint ptr %op_odp_mr to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %op_odp_mr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i527)
  %tobool82.not = icmp eq i32 %retval.0.i527, 0
  br i1 %tobool82.not, label %do.end, label %if.end27.if.end102_crit_edge, !prof !68

if.end27.if.end102_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

do.end:                                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 668, i32 noundef 9, ptr noundef null) #9
  br label %if.end102

if.end102:                                        ; preds = %do.end, %if.end27.if.end102_crit_edge
  %call109 = tail call ptr @rds_message_alloc_sgs(ptr noundef %rm, i32 noundef %retval.0.i527) #9
  %op_sg = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 1, i32 6
  %41 = ptrtoint ptr %op_sg to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call109, ptr %op_sg, align 8
  %cmp.i528 = icmp ugt ptr %call109, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i528, label %if.then112, label %if.end115

if.then112:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %call109 to i32
  br label %out_ret

if.end115:                                        ; preds = %if.end102
  %43 = ptrtoint ptr %op_active to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load117 = load i8, ptr %op_active, align 8
  %44 = and i8 %bf.load117, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %if.end115.if.end137_crit_edge, label %if.then129

if.end115.if.end137_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end137

if.then129:                                       ; preds = %if.end115
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %46 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %46, i32 noundef 3264, i32 noundef 24) #14
  %op_notifier = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 1, i32 7
  %47 = ptrtoint ptr %op_notifier to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call7.i, ptr %op_notifier, align 4
  %tobool132.not = icmp eq ptr %call7.i, null
  br i1 %tobool132.not, label %if.then129.if.then354.sink.split_crit_edge, label %if.end134

if.then129.if.then354.sink.split_crit_edge:       ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then354.sink.split

if.end134:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #11
  %user_token = getelementptr i8, ptr %cmsg, i32 60
  %48 = ptrtoint ptr %user_token to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %user_token, align 8
  %n_user_token = getelementptr inbounds %struct.rds_notifier, ptr %call7.i, i32 0, i32 1
  %50 = ptrtoint ptr %n_user_token to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %n_user_token, align 8
  %n_status = getelementptr inbounds %struct.rds_notifier, ptr %call7.i, i32 0, i32 2
  %51 = ptrtoint ptr %n_status to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %n_status, align 8
  br label %if.end137

if.end137:                                        ; preds = %if.end134, %if.end115.if.end137_crit_edge
  %52 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %add.ptr, align 8
  %conv.i = trunc i64 %53 to i32
  %54 = ptrtoint ptr %rdma to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv.i, ptr %rdma, align 8
  %remote_vec = getelementptr i8, ptr %cmsg, i32 20
  %55 = ptrtoint ptr %remote_vec to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %remote_vec, align 8
  %57 = load i64, ptr %add.ptr, align 8
  %shr.i = lshr i64 %57, 32
  %add = add i64 %shr.i, %56
  %op_remote_addr = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 1, i32 1
  %58 = ptrtoint ptr %op_remote_addr to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %add, ptr %op_remote_addr, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_cmsg_rdma_args.__UNIQUE_ID_ddebug552, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_cmsg_rdma_args, %if.then152)) #9
          to label %do.end159 [label %if.then152], !srcloc !59

if.then152:                                       ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %nr_local to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %nr_local, align 8
  %61 = ptrtoint ptr %remote_vec to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %remote_vec, align 8
  %63 = ptrtoint ptr %rdma to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %rdma, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_cmsg_rdma_args.__UNIQUE_ID_ddebug552, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i64 noundef %60, i64 noundef %62, i32 noundef %64) #9
  br label %do.end159

do.end159:                                        ; preds = %if.then152, %if.end137
  %65 = ptrtoint ptr %nr_local to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %nr_local, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %66)
  %cmp162589.not = icmp eq i64 %66, 0
  br i1 %cmp162589.not, label %do.end159.for.end326_crit_edge, label %for.body.lr.ph

do.end159.for.end326_crit_edge:                   ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end326

for.body.lr.ph:                                   ; preds = %do.end159
  %rs_user_addr = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 1
  %rs_user_bytes = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 2
  %cmp13.not.not = xor i1 %cmp13.not, true
  %rs_transport = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 8
  %op_odp_addr = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 1, i32 9
  %op_nents = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 1, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc324.for.body_crit_edge, %for.body.lr.ph
  %nr_bytes.0591 = phi i32 [ 0, %for.body.lr.ph ], [ %conv273, %for.inc324.for.body_crit_edge ]
  %i.0590 = phi i32 [ 0, %for.body.lr.ph ], [ %inc325, %for.inc324.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rds_iovec, ptr %17, i32 %i.0590
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %arrayidx, align 8
  %bytes.i = getelementptr %struct.rds_iovec, ptr %17, i32 %i.0590, i32 1
  %69 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %bytes.i, align 8
  %add.i530 = add i64 %70, %68
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i530, i64 %68)
  %cmp.not.i = icmp ule i64 %add.i530, %68
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %70)
  %cmp3.i = icmp ugt i64 %70, 4294967295
  %or.cond.i = or i1 %cmp3.i, %cmp.not.i
  %sub.i531 = add i64 %add.i530, 4095
  %shr.i532 = lshr i64 %sub.i531, 12
  %shr9.i = lshr i64 %68, 12
  %sub10.i = sub nsw i64 %shr.i532, %shr9.i
  %conv.i533 = trunc i64 %sub10.i to i32
  %retval.0.i534 = select i1 %or.cond.i, i32 0, i32 %conv.i533
  %71 = ptrtoint ptr %rs_user_addr to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %68, ptr %rs_user_addr, align 8
  %72 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %bytes.i, align 8
  %74 = ptrtoint ptr %rs_user_bytes to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %73, ptr %rs_user_bytes, align 8
  %75 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %arrayidx, align 8
  %conv168 = trunc i64 %76 to i32
  %77 = ptrtoint ptr %op_active to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load170 = load i8, ptr %op_active, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load170)
  %tobool.not.i = icmp slt i8 %bf.load170, 0
  %spec.select.i = select i1 %tobool.not.i, i32 65536, i32 65537
  %call.i = tail call i32 @pin_user_pages_fast(i32 noundef %conv168, i32 noundef %retval.0.i534, i32 noundef %spec.select.i, ptr noundef nonnull %call8.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i535 = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %retval.0.i534)
  %cmp1.i536 = icmp ult i32 %call.i, %retval.0.i534
  %or.cond.i537 = and i1 %cmp.i535, %cmp1.i536
  br i1 %or.cond.i537, label %if.then2.i, label %for.body.rds_pin_pages.exit_crit_edge

for.body.rds_pin_pages.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %rds_pin_pages.exit

if.then2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unpin_user_pages(ptr noundef nonnull %call8.i.i, i32 noundef %call.i) #9
  br label %rds_pin_pages.exit

rds_pin_pages.exit:                               ; preds = %if.then2.i, %for.body.rds_pin_pages.exit_crit_edge
  %ret.0.i = phi i32 [ -14, %if.then2.i ], [ %call.i, %for.body.rds_pin_pages.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0.i)
  %cmp178 = icmp slt i32 %ret.0.i, 1
  %or.cond506 = select i1 %cmp13.not.not, i1 %cmp178, i1 false
  br i1 %or.cond506, label %rds_pin_pages.exit.out_ret_crit_edge, label %lor.lhs.false180

rds_pin_pages.exit.out_ret_crit_edge:             ; preds = %rds_pin_pages.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ret

lor.lhs.false180:                                 ; preds = %rds_pin_pages.exit
  %or.cond507 = select i1 %cmp13.not, i1 %cmp178, i1 false
  %or.cond507.not = xor i1 %or.cond507, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %ret.0.i)
  %cmp187.not = icmp eq i32 %ret.0.i, -95
  %or.cond508 = select i1 %or.cond507.not, i1 true, i1 %cmp187.not
  br i1 %or.cond508, label %if.end190, label %lor.lhs.false180.out_ret_crit_edge

lor.lhs.false180.out_ret_crit_edge:               ; preds = %lor.lhs.false180
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ret

if.end190:                                        ; preds = %lor.lhs.false180
  br i1 %cmp187.not, label %if.then193, label %if.end190.do.body252_crit_edge

if.end190.do.body252_crit_edge:                   ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body252

if.then193:                                       ; preds = %if.end190
  %78 = ptrtoint ptr %rs_transport to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rs_transport, align 4
  %get_mr = getelementptr inbounds %struct.rds_transport, ptr %79, i32 0, i32 23
  %80 = ptrtoint ptr %get_mr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %get_mr, align 4
  %tobool194.not = icmp eq ptr %81, null
  br i1 %tobool194.not, label %if.then193.if.then354.sink.split_crit_edge, label %if.end196

if.then193.if.then354.sink.split_crit_edge:       ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then354.sink.split

if.end196:                                        ; preds = %if.then193
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %82 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %82, i32 noundef 3520, i32 noundef 36) #14
  %tobool198.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool198.not, label %if.end196.if.then354.sink.split_crit_edge, label %if.end200

if.end196.if.then354.sink.split_crit_edge:        ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then354.sink.split

if.end200:                                        ; preds = %if.end196
  %83 = ptrtoint ptr %call7.i.i to i32
  %84 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %call7.i.i, align 8
  %r_kref = getelementptr inbounds %struct.rds_mr, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref, i32 noundef 4) #9
  %85 = ptrtoint ptr %r_kref to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile i32 1, ptr %r_kref, align 4
  %86 = ptrtoint ptr %rs_transport to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rs_transport, align 4
  %r_trans = getelementptr inbounds %struct.rds_mr, ptr %call7.i.i, i32 0, i32 5
  %88 = ptrtoint ptr %r_trans to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %r_trans, align 4
  %r_sock = getelementptr inbounds %struct.rds_mr, ptr %call7.i.i, i32 0, i32 4
  %89 = ptrtoint ptr %r_sock to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %rs, ptr %r_sock, align 8
  %get_mr204 = getelementptr inbounds %struct.rds_transport, ptr %87, i32 0, i32 23
  %90 = ptrtoint ptr %get_mr204 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %get_mr204, align 4
  %r_key = getelementptr inbounds %struct.rds_mr, ptr %call7.i.i, i32 0, i32 2
  %92 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %arrayidx, align 8
  %94 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %bytes.i, align 8
  %call207 = tail call ptr %91(ptr noundef null, i32 noundef 0, ptr noundef %rs, ptr noundef %r_key, ptr noundef null, i64 noundef %93, i64 noundef %95, i32 noundef 2) #9
  %r_trans_private = getelementptr inbounds %struct.rds_mr, ptr %call7.i.i, i32 0, i32 6
  %96 = ptrtoint ptr %r_trans_private to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call207, ptr %r_trans_private, align 8
  %cmp.i538 = icmp ugt ptr %call207, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i538, label %if.then210, label %do.body232

if.then210:                                       ; preds = %if.end200
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_cmsg_rdma_args.__UNIQUE_ID_ddebug553, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_cmsg_rdma_args, %if.then226)) #9
          to label %do.end230 [label %if.then226], !srcloc !59

if.then226:                                       ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %r_trans_private to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %r_trans_private, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_cmsg_rdma_args.__UNIQUE_ID_ddebug553, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.4, i32 noundef 1, ptr noundef %98) #9
  br label %do.end230

do.end230:                                        ; preds = %if.then226, %if.then210
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %if.then354.sink.split

do.body232:                                       ; preds = %if.end200
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_cmsg_rdma_args.__UNIQUE_ID_ddebug554, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_cmsg_rdma_args, %if.then244)) #9
          to label %cleanup [label %if.then244], !srcloc !59

if.then244:                                       ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %r_trans_private to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %r_trans_private, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_cmsg_rdma_args.__UNIQUE_ID_ddebug554, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, ptr noundef nonnull %call7.i.i, ptr noundef %100) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then244, %do.body232
  %101 = ptrtoint ptr %op_odp_mr to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call7.i.i, ptr %op_odp_mr, align 8
  %102 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %arrayidx, align 8
  %104 = ptrtoint ptr %op_odp_addr to i32
  call void @__asan_store8_noabort(i32 %104)
  store i64 %103, ptr %op_odp_addr, align 8
  br label %do.body252

do.body252:                                       ; preds = %cleanup, %if.end190.do.body252_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_cmsg_rdma_args.__UNIQUE_ID_ddebug555, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_cmsg_rdma_args, %if.then264)) #9
          to label %do.end269 [label %if.then264], !srcloc !59

if.then264:                                       ; preds = %do.body252
  call void @__sanitizer_cov_trace_pc() #11
  %105 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %bytes.i, align 8
  %107 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %arrayidx, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_cmsg_rdma_args.__UNIQUE_ID_ddebug555, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4, i32 noundef %nr_bytes.0591, i32 noundef %retval.0.i534, i64 noundef %106, i64 noundef %108) #9
  br label %do.end269

do.end269:                                        ; preds = %if.then264, %do.body252
  %109 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %bytes.i, align 8
  %111 = trunc i64 %110 to i32
  %conv273 = add i32 %nr_bytes.0591, %111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i534)
  %cmp275587.not = icmp eq i32 %retval.0.i534, 0
  br i1 %cmp275587.not, label %do.end269.for.inc324_crit_edge, label %do.end269.for.body277_crit_edge

do.end269.for.body277_crit_edge:                  ; preds = %do.end269
  br label %for.body277

do.end269.for.inc324_crit_edge:                   ; preds = %do.end269
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc324

for.body277:                                      ; preds = %do.end309.for.body277_crit_edge, %do.end269.for.body277_crit_edge
  %j.0588 = phi i32 [ %inc, %do.end309.for.body277_crit_edge ], [ 0, %do.end269.for.body277_crit_edge ]
  %112 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %arrayidx, align 8
  %114 = trunc i64 %113 to i32
  %conv280 = and i32 %114, 4095
  %115 = ptrtoint ptr %op_sg to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %op_sg, align 8
  %117 = ptrtoint ptr %op_nents to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %op_nents, align 8
  %add282 = add i32 %118, %j.0588
  %arrayidx283 = getelementptr %struct.scatterlist, ptr %116, i32 %add282
  %arrayidx284 = getelementptr ptr, ptr %call8.i.i, i32 %j.0588
  %119 = ptrtoint ptr %arrayidx284 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx284, align 4
  %121 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %bytes.i, align 8
  %conv286 = trunc i64 %122 to i32
  %sub = sub nuw nsw i32 4096, %conv280
  %123 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %conv286)
  %124 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx283, align 4
  %126 = ptrtoint ptr %120 to i32
  %and2.i.i = and i32 %126, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !62

do.body5.i.i:                                     ; preds = %for.body277
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !69
  unreachable

do.body11.i.i:                                    ; preds = %for.body277
  %and.i.i.i540 = and i32 %125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i540)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i540, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !62

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !70
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %125, 3
  %or.i.i = or i32 %and.i.i, %126
  %127 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %or.i.i, ptr %arrayidx283, align 4
  %offset1.i = getelementptr %struct.scatterlist, ptr %116, i32 %add282, i32 1
  %128 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %conv280, ptr %offset1.i, align 4
  %length.i = getelementptr %struct.scatterlist, ptr %116, i32 %add282, i32 2
  %129 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %123, ptr %length.i, align 4
  %dma_length = getelementptr %struct.scatterlist, ptr %116, i32 %add282, i32 4
  %130 = ptrtoint ptr %dma_length to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %123, ptr %dma_length, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_cmsg_rdma_args.__UNIQUE_ID_ddebug558, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_cmsg_rdma_args, %if.then302)) #9
          to label %do.end309 [label %if.then302], !srcloc !59

if.then302:                                       ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %131 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %offset1.i, align 4
  %133 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %length.i, align 4
  %135 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %arrayidx, align 8
  %137 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %bytes.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_cmsg_rdma_args.__UNIQUE_ID_ddebug558, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4, i32 noundef %132, i32 noundef %134, i64 noundef %136, i64 noundef %138) #9
  br label %do.end309

do.end309:                                        ; preds = %if.then302, %sg_set_page.exit
  %139 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %length.i, align 4
  %conv311 = zext i32 %140 to i64
  %141 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %arrayidx, align 8
  %add313 = add i64 %142, %conv311
  store i64 %add313, ptr %arrayidx, align 8
  %143 = load i32, ptr %length.i, align 4
  %conv315 = zext i32 %143 to i64
  %144 = ptrtoint ptr %bytes.i to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %bytes.i, align 8
  %sub317 = sub i64 %145, %conv315
  store i64 %sub317, ptr %bytes.i, align 8
  %inc = add nuw i32 %j.0588, 1
  %exitcond.not = icmp eq i32 %inc, %retval.0.i534
  br i1 %exitcond.not, label %do.end309.for.inc324_crit_edge, label %do.end309.for.body277_crit_edge

do.end309.for.body277_crit_edge:                  ; preds = %do.end309
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body277

do.end309.for.inc324_crit_edge:                   ; preds = %do.end309
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc324

for.inc324:                                       ; preds = %do.end309.for.inc324_crit_edge, %do.end269.for.inc324_crit_edge
  %146 = ptrtoint ptr %op_nents to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %op_nents, align 8
  %add319 = add i32 %147, %retval.0.i534
  store i32 %add319, ptr %op_nents, align 8
  %inc325 = add i32 %i.0590, 1
  %conv160 = zext i32 %inc325 to i64
  %148 = ptrtoint ptr %nr_local to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %nr_local, align 8
  %cmp162 = icmp ugt i64 %149, %conv160
  br i1 %cmp162, label %for.inc324.for.body_crit_edge, label %for.inc324.for.end326_crit_edge

for.inc324.for.end326_crit_edge:                  ; preds = %for.inc324
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end326

for.inc324.for.body_crit_edge:                    ; preds = %for.inc324
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end326:                                       ; preds = %for.inc324.for.end326_crit_edge, %do.end159.for.end326_crit_edge
  %nr_bytes.0.lcssa = phi i32 [ 0, %do.end159.for.end326_crit_edge ], [ %conv273, %for.inc324.for.end326_crit_edge ]
  %conv327 = zext i32 %nr_bytes.0.lcssa to i64
  %bytes329 = getelementptr i8, ptr %cmsg, i32 28
  %150 = ptrtoint ptr %bytes329 to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %bytes329, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %151, i64 %conv327)
  %cmp330 = icmp ult i64 %151, %conv327
  br i1 %cmp330, label %do.body333, label %out_ret.thread569

do.body333:                                       ; preds = %for.end326
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_cmsg_rdma_args.__UNIQUE_ID_ddebug559, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_cmsg_rdma_args, %if.then345)) #9
          to label %out_ret [label %if.then345], !srcloc !59

if.then345:                                       ; preds = %do.body333
  call void @__sanitizer_cov_trace_pc() #11
  %152 = ptrtoint ptr %bytes329 to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %bytes329, align 8
  %conv348 = trunc i64 %153 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_cmsg_rdma_args.__UNIQUE_ID_ddebug559, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4, i32 noundef %nr_bytes.0.lcssa, i32 noundef %conv348) #9
  br label %if.then354.sink.split

out_ret.thread569:                                ; preds = %for.end326
  call void @__sanitizer_cov_trace_pc() #11
  %op_bytes = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 1, i32 3
  %154 = ptrtoint ptr %op_bytes to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %nr_bytes.0.lcssa, ptr %op_bytes, align 4
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #9
  br label %do.body356

out_ret:                                          ; preds = %do.body333, %lor.lhs.false180.out_ret_crit_edge, %rds_pin_pages.exit.out_ret_crit_edge, %if.then112
  %ret.3 = phi i32 [ %42, %if.then112 ], [ -22, %do.body333 ], [ %ret.0.i, %lor.lhs.false180.out_ret_crit_edge ], [ %ret.0.i, %rds_pin_pages.exit.out_ret_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %tobool353.not = icmp eq i32 %ret.3, 0
  br i1 %tobool353.not, label %out_ret.do.body356_crit_edge, label %out_ret.if.then354_crit_edge

out_ret.if.then354_crit_edge:                     ; preds = %out_ret
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then354

out_ret.do.body356_crit_edge:                     ; preds = %out_ret
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body356

if.then354.sink.split:                            ; preds = %if.then345, %do.end230, %if.end196.if.then354.sink.split_crit_edge, %if.then193.if.then354.sink.split_crit_edge, %if.then129.if.then354.sink.split_crit_edge
  %ret.4564.ph = phi i32 [ -22, %if.then345 ], [ -12, %if.then129.if.then354.sink.split_crit_edge ], [ -95, %do.end230 ], [ -12, %if.end196.if.then354.sink.split_crit_edge ], [ -95, %if.then193.if.then354.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #9
  br label %if.then354

if.then354:                                       ; preds = %if.then354.sink.split, %out_ret.if.then354_crit_edge, %if.end7.i.i.if.then354_crit_edge, %if.end23.if.then354_crit_edge, %if.end.i.if.then354_crit_edge, %for.body.i.if.then354_crit_edge, %if.end6.if.then354_crit_edge, %if.end3.if.then354_crit_edge, %if.end.if.then354_crit_edge
  %ret.4564 = phi i32 [ %ret.3, %out_ret.if.then354_crit_edge ], [ -12, %if.end7.i.i.if.then354_crit_edge ], [ -22, %if.end6.if.then354_crit_edge ], [ -90, %if.end3.if.then354_crit_edge ], [ -107, %if.end.if.then354_crit_edge ], [ -12, %if.end23.if.then354_crit_edge ], [ %ret.4564.ph, %if.then354.sink.split ], [ -22, %if.end.i.if.then354_crit_edge ], [ -22, %for.body.i.if.then354_crit_edge ]
  tail call void @rds_rdma_free_op(ptr noundef %rdma)
  br label %cleanup375

do.body356:                                       ; preds = %out_ret.do.body356_crit_edge, %out_ret.thread569
  %155 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i = and i32 %155, -16384
  %156 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %156, i32 0, i32 1
  %157 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %158, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !76
  %159 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i = and i32 %159, -16384
  %160 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %160, i32 0, i32 3
  %161 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %cpu, align 4
  %arrayidx366 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %162
  %163 = ptrtoint ptr %arrayidx366 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx366, align 4
  %add367 = add i32 %164, ptrtoint (ptr @rds_stats to i32)
  %165 = inttoptr i32 %add367 to ptr
  %s_send_rdma = getelementptr inbounds %struct.rds_statistics, ptr %165, i32 0, i32 22
  %166 = ptrtoint ptr %s_send_rdma to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %s_send_rdma, align 8
  %inc368 = add i64 %167, 1
  store i64 %inc368, ptr %s_send_rdma, align 8
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !77
  %168 = tail call i32 @llvm.read_register.i32(metadata !49) #9
  %and.i.i.i524 = and i32 %168, -16384
  %169 = inttoptr i32 %and.i.i.i524 to ptr
  %preempt_count.i.i525 = getelementptr inbounds %struct.thread_info, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %preempt_count.i.i525 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile i32, ptr %preempt_count.i.i525, align 4
  %sub.i = add i32 %171, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i525, align 4
  br label %cleanup375

cleanup375:                                       ; preds = %do.body356, %if.then354, %lor.lhs.false.cleanup375_crit_edge, %entry.cleanup375_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup375_crit_edge ], [ -22, %entry.cleanup375_crit_edge ], [ 0, %do.body356 ], [ %ret.4564, %if.then354 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rds_message_alloc_sgs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rds_pin_pages(i32 noundef %user_addr, i32 noundef %nr_pages, ptr noundef %pages, i32 noundef %write) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  %spec.select = select i1 %tobool.not, i32 65536, i32 65537
  %call = tail call i32 @pin_user_pages_fast(i32 noundef %user_addr, i32 noundef %nr_pages, i32 noundef %spec.select, ptr noundef %pages) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %nr_pages)
  %cmp1 = icmp ult i32 %call, %nr_pages
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then2, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @unpin_user_pages(ptr noundef %pages, i32 noundef %call) #9
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %entry.if.end3_crit_edge
  %ret.0 = phi i32 [ -14, %if.then2 ], [ %call, %entry.if.end3_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_cmsg_rdma_dest(ptr noundef %rs, ptr nocapture noundef %rm, ptr nocapture noundef readonly %cmsg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmsg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmsg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %1)
  %cmp = icmp ult i32 %1, 20
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %m_rdma_cookie = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 10
  %2 = ptrtoint ptr %m_rdma_cookie to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_rdma_cookie, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp1.not = icmp eq i64 %3, 0
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr = getelementptr i8, ptr %cmsg, i32 12
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %add.ptr, align 1
  %6 = ptrtoint ptr %m_rdma_cookie to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %m_rdma_cookie, align 8
  %rs_rdma_lock = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 24
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rs_rdma_lock) #9
  %rs_rdma_keys = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 25
  %conv10 = and i64 %5, 4294967295
  %7 = ptrtoint ptr %rs_rdma_keys to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rs_rdma_keys, align 4
  %tobool.not30.i = icmp eq ptr %8, null
  br i1 %tobool.not30.i, label %if.end.if.end13_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

while.body.i:                                     ; preds = %if.end8.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %9 = phi ptr [ %13, %if.end8.i.while.body.i_crit_edge ], [ %8, %if.end.while.body.i_crit_edge ]
  %r_key.i = getelementptr inbounds %struct.rds_mr, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %r_key.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %r_key.i, align 4
  %conv.i32 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv10, i64 %conv.i32)
  %cmp.i = icmp ult i64 %conv10, %conv.i32
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 2
  br label %if.end8.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp8(i64 %conv10, i64 %conv.i32)
  %cmp4.i = icmp ugt i64 %conv10, %conv.i32
  br i1 %cmp4.i, label %if.then6.i, label %if.else

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 1
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.then.i
  %p.1.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then6.i ]
  %12 = ptrtoint ptr %p.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %p.1.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end8.i.if.end13_crit_edge, label %if.end8.i.while.body.i_crit_edge

if.end8.i.while.body.i_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end8.i.if.end13_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.else:                                          ; preds = %if.else.i
  %r_kref = getelementptr inbounds %struct.rds_mr, ptr %9, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %r_kref, i32 1, i32 3, i32 1) #9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref, ptr %r_kref, i32 1, ptr elementtype(i32) %r_kref) #9, !srcloc !73
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.else.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !68

if.else.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.else
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.then16_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !62

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.then16_crit_edge:              ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.else.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.else.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %r_kref, i32 noundef %.sink.i.i.i.i) #9
  br label %if.then16

if.end13:                                         ; preds = %if.end8.i.if.end13_crit_edge, %if.end.if.end13_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rs_rdma_lock, i32 noundef %call7) #9
  br label %cleanup

if.then16:                                        ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.then16_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rs_rdma_lock, i32 noundef %call7) #9
  %r_trans = getelementptr inbounds %struct.rds_mr, ptr %9, i32 0, i32 5
  %16 = ptrtoint ptr %r_trans to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %r_trans, align 4
  %sync_mr = getelementptr inbounds %struct.rds_transport, ptr %17, i32 0, i32 24
  %18 = ptrtoint ptr %sync_mr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sync_mr, align 4
  %r_trans_private = getelementptr inbounds %struct.rds_mr, ptr %9, i32 0, i32 6
  %20 = ptrtoint ptr %r_trans_private to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %r_trans_private, align 4
  tail call void %19(ptr noundef %21, i32 noundef 1) #9
  %op_rdma_mr = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 1, i32 8
  %22 = ptrtoint ptr %op_rdma_mr to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %9, ptr %op_rdma_mr, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end13, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then16 ], [ -22, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_cmsg_rdma_map(ptr noundef %rs, ptr noundef %rm, ptr nocapture noundef readonly %cmsg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmsg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmsg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %1)
  %cmp = icmp ult i32 %1, 44
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %m_rdma_cookie = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 10
  %2 = ptrtoint ptr %m_rdma_cookie to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %m_rdma_cookie, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp1.not = icmp eq i64 %3, 0
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %cmsg, i32 12
  %op_rdma_mr = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 1, i32 8
  %m_conn_path = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 15
  %4 = ptrtoint ptr %m_conn_path to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m_conn_path, align 8
  %call = tail call fastcc i32 @__rds_rdma_map(ptr noundef %rs, ptr noundef %add.ptr, ptr noundef %m_rdma_cookie, ptr noundef %op_rdma_mr, ptr noundef %5)
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_cmsg_atomic(ptr nocapture noundef readonly %rs, ptr noundef %rm, ptr nocapture noundef readonly %cmsg) local_unnamed_addr #0 align 64 {
entry:
  %page = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %page) #9
  %0 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %page, align 4
  %1 = ptrtoint ptr %cmsg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cmsg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %2)
  %cmp = icmp ult i32 %2, 84
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14
  %op_active = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 0, i32 4
  %4 = ptrtoint ptr %op_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %op_active, align 8
  %5 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr = getelementptr i8, ptr %cmsg, i32 12
  %cmsg_type = getelementptr inbounds %struct.cmsghdr, ptr %cmsg, i32 0, i32 2
  %6 = ptrtoint ptr %cmsg_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmsg_type, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.body [
    i32 6, label %sw.bb
    i32 8, label %sw.bb5
    i32 7, label %sw.bb14
    i32 9, label %sw.bb23
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %3, align 8
  %10 = getelementptr i8, ptr %cmsg, i32 36
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %10, align 8
  %13 = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %12, ptr %13, align 8
  %nocarry_mask = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %nocarry_mask to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %nocarry_mask, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %3, align 8
  %17 = getelementptr i8, ptr %cmsg, i32 36
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %17, align 8
  %20 = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %19, ptr %20, align 8
  %nocarry_mask11 = getelementptr i8, ptr %cmsg, i32 44
  %22 = ptrtoint ptr %nocarry_mask11 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %nocarry_mask11, align 8
  %nocarry_mask13 = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 0, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %nocarry_mask13 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %nocarry_mask13, align 8
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %3, align 8
  %26 = getelementptr i8, ptr %cmsg, i32 36
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %26, align 8
  %29 = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %28, ptr %29, align 8
  %swap = getelementptr i8, ptr %cmsg, i32 44
  %31 = ptrtoint ptr %swap to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %swap, align 8
  %swap20 = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 0, i32 1, i32 0, i32 1
  %33 = ptrtoint ptr %swap20 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %swap20, align 8
  %compare_mask = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 0, i32 1, i32 0, i32 2
  %34 = call ptr @memset(ptr %compare_mask, i32 255, i32 16)
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %3, align 8
  %36 = getelementptr i8, ptr %cmsg, i32 36
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %36, align 8
  %39 = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %38, ptr %39, align 8
  %swap29 = getelementptr i8, ptr %cmsg, i32 44
  %41 = ptrtoint ptr %swap29 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %swap29, align 8
  %swap31 = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 0, i32 1, i32 0, i32 1
  %43 = ptrtoint ptr %swap31 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %swap31, align 8
  %compare_mask32 = getelementptr i8, ptr %cmsg, i32 52
  %44 = ptrtoint ptr %compare_mask32 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %compare_mask32, align 8
  %compare_mask34 = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 0, i32 1, i32 0, i32 2
  %46 = ptrtoint ptr %compare_mask34 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %compare_mask34, align 8
  %swap_mask35 = getelementptr i8, ptr %cmsg, i32 60
  %47 = ptrtoint ptr %swap_mask35 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %swap_mask35, align 8
  %swap_mask37 = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 0, i32 1, i32 0, i32 3
  %49 = ptrtoint ptr %swap_mask37 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %swap_mask37, align 8
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/rdma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 905, 0\0A.popsection", ""() #9, !srcloc !78
  unreachable

sw.epilog:                                        ; preds = %sw.bb23, %sw.bb14, %sw.bb5, %sw.bb
  %flags = getelementptr i8, ptr %cmsg, i32 68
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %flags, align 8
  %52 = trunc i64 %51 to i8
  %53 = shl i8 %52, 2
  %bf.shl = and i8 %53, -128
  %bf.clear45 = and i8 %bf.load, 127
  %bf.set = or i8 %bf.shl, %bf.clear45
  %54 = ptrtoint ptr %op_active to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %bf.set, ptr %op_active, align 8
  %55 = load i64, ptr %flags, align 8
  %56 = trunc i64 %55 to i8
  %57 = lshr i8 %56, 2
  %bf.shl56 = and i8 %57, 16
  %bf.clear57 = and i8 %bf.set, -25
  %bf.set58 = or i8 %bf.shl56, %bf.clear57
  %bf.set64 = or i8 %bf.set58, 8
  store i8 %bf.set64, ptr %op_active, align 8
  %rs_recverr = getelementptr inbounds %struct.rds_sock, ptr %rs, i32 0, i32 26
  %58 = ptrtoint ptr %rs_recverr to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %rs_recverr, align 8
  %bf.value67 = shl i8 %59, 6
  %bf.shl68 = and i8 %bf.value67, 64
  %bf.clear69 = and i8 %bf.set64, -65
  %bf.set70 = or i8 %bf.clear69, %bf.shl68
  store i8 %bf.set70, ptr %op_active, align 8
  %call = tail call ptr @rds_message_alloc_sgs(ptr noundef %rm, i32 noundef 1) #9
  %op_sg = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 0, i32 5
  %60 = ptrtoint ptr %op_sg to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call, ptr %op_sg, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then76, label %if.end80

if.then76:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %call to i32
  br label %err

if.end80:                                         ; preds = %sw.epilog
  %local_addr = getelementptr i8, ptr %cmsg, i32 20
  %62 = ptrtoint ptr %local_addr to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %local_addr, align 8
  %and81 = and i64 %63, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and81)
  %tobool82.not = icmp eq i64 %and81, 0
  br i1 %tobool82.not, label %if.end84, label %if.end80.err_crit_edge

if.end80.err_crit_edge:                           ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end84:                                         ; preds = %if.end80
  %conv86 = trunc i64 %63 to i32
  %call.i = call i32 @pin_user_pages_fast(i32 noundef %conv86, i32 noundef 1, i32 noundef 65537, ptr noundef nonnull %page) #9
  %64 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %call.i, label %if.end84.err_crit_edge [
    i32 0, label %rds_pin_pages.exit.thread
    i32 1, label %if.end91
  ]

if.end84.err_crit_edge:                           ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

rds_pin_pages.exit.thread:                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  call void @unpin_user_pages(ptr noundef nonnull %page, i32 noundef 0) #9
  br label %err

if.end91:                                         ; preds = %if.end84
  %65 = ptrtoint ptr %op_sg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %op_sg, align 4
  %67 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %page, align 4
  %69 = ptrtoint ptr %local_addr to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %local_addr, align 8
  %conv95 = trunc i64 %70 to i32
  %and96 = and i32 %conv95, 4095
  %71 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %66, align 4
  %73 = ptrtoint ptr %68 to i32
  %and2.i.i = and i32 %73, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !62

do.body5.i.i:                                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !69
  unreachable

do.body11.i.i:                                    ; preds = %if.end91
  %and.i.i.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !62

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !70
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %72, 3
  %or.i.i = or i32 %and.i.i, %73
  %74 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or.i.i, ptr %66, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %66, i32 0, i32 1
  %75 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %and96, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %66, i32 0, i32 2
  %76 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 8, ptr %length.i, align 4
  %77 = ptrtoint ptr %op_active to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load99 = load i8, ptr %op_active, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load99)
  %78 = icmp ult i8 %bf.load99, 64
  br i1 %78, label %sg_set_page.exit.if.end123_crit_edge, label %if.then111

sg_set_page.exit.if.end123_crit_edge:             ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123

if.then111:                                       ; preds = %sg_set_page.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %79 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %79, i32 noundef 3264, i32 noundef 24) #14
  %op_notifier = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 0, i32 6
  %80 = ptrtoint ptr %op_notifier to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call7.i, ptr %op_notifier, align 8
  %tobool116.not = icmp eq ptr %call7.i, null
  br i1 %tobool116.not, label %if.then111.err_crit_edge, label %if.end118

if.then111.err_crit_edge:                         ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end118:                                        ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #11
  %user_token = getelementptr i8, ptr %cmsg, i32 76
  %81 = ptrtoint ptr %user_token to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %user_token, align 8
  %n_user_token = getelementptr inbounds %struct.rds_notifier, ptr %call7.i, i32 0, i32 1
  %83 = ptrtoint ptr %n_user_token to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %n_user_token, align 8
  %n_status = getelementptr inbounds %struct.rds_notifier, ptr %call7.i, i32 0, i32 2
  %84 = ptrtoint ptr %n_status to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %n_status, align 8
  br label %if.end123

if.end123:                                        ; preds = %if.end118, %sg_set_page.exit.if.end123_crit_edge
  %85 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %add.ptr, align 8
  %conv.i = trunc i64 %86 to i32
  %op_rkey = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 0, i32 2
  %87 = ptrtoint ptr %op_rkey to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv.i, ptr %op_rkey, align 8
  %remote_addr = getelementptr i8, ptr %cmsg, i32 28
  %88 = ptrtoint ptr %remote_addr to i32
  call void @__asan_load8_noabort(i32 %88)
  %89 = load i64, ptr %remote_addr, align 8
  %90 = load i64, ptr %add.ptr, align 8
  %shr.i = lshr i64 %90, 32
  %add129 = add i64 %shr.i, %89
  %op_remote_addr = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 0, i32 3
  %91 = ptrtoint ptr %op_remote_addr to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %add129, ptr %op_remote_addr, align 8
  br label %cleanup

err:                                              ; preds = %if.then111.err_crit_edge, %rds_pin_pages.exit.thread, %if.end84.err_crit_edge, %if.end80.err_crit_edge, %if.then76
  %ret.0 = phi i32 [ %61, %if.then76 ], [ -14, %if.end80.err_crit_edge ], [ -12, %if.then111.err_crit_edge ], [ -14, %rds_pin_pages.exit.thread ], [ %call.i, %if.end84.err_crit_edge ]
  %92 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %page, align 4
  %tobool131.not = icmp eq ptr %93, null
  br i1 %tobool131.not, label %err.if.end133_crit_edge, label %if.then132

err.if.end133_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end133

if.then132:                                       ; preds = %err
  call void @__sanitizer_cov_trace_pc() #11
  call void @unpin_user_page(ptr noundef nonnull %93) #9
  br label %if.end133

if.end133:                                        ; preds = %if.then132, %err.if.end133_crit_edge
  %94 = ptrtoint ptr %op_active to i32
  call void @__asan_load1_noabort(i32 %94)
  %bf.load136 = load i8, ptr %op_active, align 8
  %bf.clear137 = and i8 %bf.load136, -9
  store i8 %bf.clear137, ptr %op_active, align 8
  %op_notifier140 = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 0, i32 6
  %95 = ptrtoint ptr %op_notifier140 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %op_notifier140, align 8
  call void @kfree(ptr noundef %96) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end133, %if.end123, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end133 ], [ 0, %if.end123 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %page) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @can_do_mlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_user_pages_fast(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47}
!llvm.named.register.sp = !{!49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rds/rdma.c", i32 451, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rds_rdma_unuse.__UNIQUE_ID_ddebug551, !1, !"__UNIQUE_ID_ddebug551", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/rds/rdma.c", i32 702, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @rds_cmsg_rdma_args.__UNIQUE_ID_ddebug552, !7, !"__UNIQUE_ID_ddebug552", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/rds/rdma.c", i32 746, i32 5}
!12 = !{ptr @rds_cmsg_rdma_args.__UNIQUE_ID_ddebug553, !11, !"__UNIQUE_ID_ddebug553", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/rds/rdma.c", i32 752, i32 4}
!15 = !{ptr @rds_cmsg_rdma_args.__UNIQUE_ID_ddebug554, !14, !"__UNIQUE_ID_ddebug554", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/rds/rdma.c", i32 758, i32 3}
!18 = !{ptr @rds_cmsg_rdma_args.__UNIQUE_ID_ddebug555, !17, !"__UNIQUE_ID_ddebug555", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/rds/rdma.c", i32 773, i32 4}
!21 = !{ptr @rds_cmsg_rdma_args.__UNIQUE_ID_ddebug558, !20, !"__UNIQUE_ID_ddebug558", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/rds/rdma.c", i32 784, i32 3}
!24 = !{ptr @rds_cmsg_rdma_args.__UNIQUE_ID_ddebug559, !23, !"__UNIQUE_ID_ddebug559", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/rds/rdma.c", i32 101, i32 2}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rds_destroy_mr.__UNIQUE_ID_ddebug546, !26, !"__UNIQUE_ID_ddebug546", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/rds/rdma.c", i32 227, i32 2}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @__rds_rdma_map.__UNIQUE_ID_ddebug547, !30, !"__UNIQUE_ID_ddebug547", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/rds/rdma.c", i32 284, i32 3}
!35 = !{ptr @__rds_rdma_map.__UNIQUE_ID_ddebug548, !34, !"__UNIQUE_ID_ddebug548", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/rds/rdma.c", i32 309, i32 2}
!38 = !{ptr @__rds_rdma_map.__UNIQUE_ID_ddebug549, !37, !"__UNIQUE_ID_ddebug549", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/rds/rdma.c", i32 342, i32 2}
!41 = !{ptr @__rds_rdma_map.__UNIQUE_ID_ddebug550, !40, !"__UNIQUE_ID_ddebug550", i1 false, i1 false}
!42 = distinct !{null, !43, !"__already_done", i1 false, i1 false}
!43 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!49 = !{!"sp"}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 2148328424, i64 2148328429, i64 2148328442, i64 2148328486, i64 2148328520, i64 2148328541}
!60 = !{i64 2148817302}
!61 = !{i64 2148731742, i64 2148731774, i64 2148731803, i64 2148731837, i64 2148731868, i64 2148731891}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{i64 2150013537}
!64 = !{i64 2152787977, i64 2152788002}
!65 = !{i64 5283532}
!66 = !{i64 5283729}
!67 = !{i64 2152768962}
!68 = !{!"branch_weights", i32 1, i32 2000}
!69 = !{i64 2154144160, i64 2154144652, i64 2154144197, i64 2154144253, i64 2154144287, i64 2154144311, i64 2154144352, i64 2154144373, i64 2154144401, i64 2154144435}
!70 = !{i64 2154145770, i64 2154146262, i64 2154145807, i64 2154145863, i64 2154145897, i64 2154145921, i64 2154145962, i64 2154145983, i64 2154146011, i64 2154146045}
!71 = !{i64 2158311137, i64 2158311417, i64 2158311751, i64 2158312085}
!72 = !{i64 2158312787, i64 2158313266, i64 2158312824, i64 2158312880, i64 2158312914, i64 2158312938, i64 2158312979, i64 2158313000, i64 2158313028, i64 2158313062}
!73 = !{i64 2148729277, i64 2148729309, i64 2148729338, i64 2148729372, i64 2148729403, i64 2148729426}
!74 = !{!"auto-init"}
!75 = !{i64 2154147718, i64 2154148210, i64 2154147755, i64 2154147811, i64 2154147845, i64 2154147869, i64 2154147910, i64 2154147931, i64 2154147959, i64 2154147993}
!76 = !{i64 2158342952}
!77 = !{i64 2158343125}
!78 = !{i64 2158344097, i64 2158344576, i64 2158344134, i64 2158344190, i64 2158344224, i64 2158344248, i64 2158344289, i64 2158344310, i64 2158344338, i64 2158344372}
