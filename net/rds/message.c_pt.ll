; ModuleID = '/llk/IR_all_yes/net/rds/message.c_pt.bc'
source_filename = "../net/rds/message.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rds_message_addref\22, \22a\22\09"
module asm "\09.weak\09__crc_rds_message_addref\09\09\09\09"
module asm "\09.long\09__crc_rds_message_addref\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rds_message_addref:\09\09\09\09\09"
module asm "\09.asciz \09\22rds_message_addref\22\09\09\09\09\09"
module asm "__kstrtabns_rds_message_addref:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rds_message_put\22, \22a\22\09"
module asm "\09.weak\09__crc_rds_message_put\09\09\09\09"
module asm "\09.long\09__crc_rds_message_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rds_message_put:\09\09\09\09\09"
module asm "\09.asciz \09\22rds_message_put\22\09\09\09\09\09"
module asm "__kstrtabns_rds_message_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rds_message_populate_header\22, \22a\22\09"
module asm "\09.weak\09__crc_rds_message_populate_header\09\09\09\09"
module asm "\09.long\09__crc_rds_message_populate_header\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rds_message_populate_header:\09\09\09\09\09"
module asm "\09.asciz \09\22rds_message_populate_header\22\09\09\09\09\09"
module asm "__kstrtabns_rds_message_populate_header:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rds_message_add_extension\22, \22a\22\09"
module asm "\09.weak\09__crc_rds_message_add_extension\09\09\09\09"
module asm "\09.long\09__crc_rds_message_add_extension\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rds_message_add_extension:\09\09\09\09\09"
module asm "\09.asciz \09\22rds_message_add_extension\22\09\09\09\09\09"
module asm "__kstrtabns_rds_message_add_extension:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rds_message_add_rdma_dest_extension\22, \22a\22\09"
module asm "\09.weak\09__crc_rds_message_add_rdma_dest_extension\09\09\09\09"
module asm "\09.long\09__crc_rds_message_add_rdma_dest_extension\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rds_message_add_rdma_dest_extension:\09\09\09\09\09"
module asm "\09.asciz \09\22rds_message_add_rdma_dest_extension\22\09\09\09\09\09"
module asm "__kstrtabns_rds_message_add_rdma_dest_extension:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rds_message_unmapped\22, \22a\22\09"
module asm "\09.weak\09__crc_rds_message_unmapped\09\09\09\09"
module asm "\09.long\09__crc_rds_message_unmapped\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rds_message_unmapped:\09\09\09\09\09"
module asm "\09.asciz \09\22rds_message_unmapped\22\09\09\09\09\09"
module asm "__kstrtabns_rds_message_unmapped:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rds_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.126 }
%union.anon.126 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rds_msg_zcopy_queue = type { %struct.list_head, %struct.spinlock }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rds_message = type { %struct.refcount_struct, %struct.list_head, %struct.list_head, %struct.rds_incoming, i64, %struct.in6_addr, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i64, i32, i32, ptr, %struct.anon.179, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rds_incoming = type { %struct.refcount_struct, %struct.list_head, ptr, ptr, %struct.rds_header, i32, %struct.in6_addr, %struct.rds_inc_usercopy, [4 x i64] }
%struct.rds_header = type { i64, i64, i32, i16, i16, i8, i8, [4 x i8], i16, [16 x i8] }
%struct.rds_inc_usercopy = type { i64, i64 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.179 = type { %struct.rm_atomic_op, %struct.rm_rdma_op, %struct.rm_data_op }
%struct.rm_atomic_op = type { i32, %union.anon.127, i32, i64, i8, ptr, ptr, ptr }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i64, i64, i64, i64 }
%struct.rm_rdma_op = type { i32, i64, i8, i32, i32, i32, ptr, ptr, ptr, i64, ptr }
%struct.rm_data_op = type { i8, i32, i32, i32, i32, ptr, ptr }
%struct.rds_znotifier = type { %struct.mmpin, i32 }
%struct.mmpin = type { ptr, i32 }
%struct.rds_sock = type { %struct.sock, i64, i64, %struct.rhash_head, [22 x i8], %struct.sockaddr_in6, %struct.in6_addr, i16, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, i32, i32, %struct.list_head, i64, i64, %struct.list_head, i32, %struct.rwlock_t, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.rb_root, i8, i8, i32, i8, [3 x i8], %struct.rds_msg_zcopy_queue, i8 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.80, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.81, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.82, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.41, %union.anon.43, %union.anon.44, i16, i8, i8, i32, %union.anon.46, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.72, [0 x i32], %union.anon.73, i16, i16, %union.anon.74, %struct.refcount_struct, [0 x i32], %union.anon.75 }
%union.anon.41 = type { i64 }
%union.anon.43 = type { i32 }
%union.anon.44 = type { i32 }
%union.anon.46 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
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
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.rb_root = type { ptr }
%struct.rds_msg_zcopy_info = type { %struct.list_head, %union.anon.181 }
%union.anon.181 = type { %struct.rds_zcopy_cookies }
%struct.rds_zcopy_cookies = type { i32, [8 x i32] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.3, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.rds_mr = type { %struct.rb_node, %struct.kref, i32, i8, ptr, ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.47, %union.anon.48 }
%union.anon.47 = type { ptr }
%union.anon.48 = type { i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@rds_message_addref.__UNIQUE_ID_ddebug544 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 13, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rds\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rds_message_addref\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"net/rds/message.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(): addref rm %p ref %d\0A\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_rds_message_addref = external dso_local constant [0 x i8], align 1
@__kstrtabns_rds_message_addref = external dso_local constant [0 x i8], align 1
@__ksymtab_rds_message_addref = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rds_message_addref to i32), ptr @__kstrtab_rds_message_addref, ptr @__kstrtabns_rds_message_addref }, section "___ksymtab_gpl+rds_message_addref", align 4
@rds_message_put.__UNIQUE_ID_ddebug545 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 43, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rds_message_put\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s(): put rm %p ref %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"danger refcount zero on %p\0A\00", [36 x i8] zeroinitializer }, align 32
@__kstrtab_rds_message_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_rds_message_put = external dso_local constant [0 x i8], align 1
@__ksymtab_rds_message_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rds_message_put to i32), ptr @__kstrtab_rds_message_put, ptr @__kstrtabns_rds_message_put }, section "___ksymtab_gpl+rds_message_put", align 4
@__kstrtab_rds_message_populate_header = external dso_local constant [0 x i8], align 1
@__kstrtabns_rds_message_populate_header = external dso_local constant [0 x i8], align 1
@__ksymtab_rds_message_populate_header = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rds_message_populate_header to i32), ptr @__kstrtab_rds_message_populate_header, ptr @__kstrtabns_rds_message_populate_header }, section "___ksymtab_gpl+rds_message_populate_header", align 4
@__kstrtab_rds_message_add_extension = external dso_local constant [0 x i8], align 1
@__kstrtabns_rds_message_add_extension = external dso_local constant [0 x i8], align 1
@__ksymtab_rds_message_add_extension = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rds_message_add_extension to i32), ptr @__kstrtab_rds_message_add_extension, ptr @__kstrtabns_rds_message_add_extension }, section "___ksymtab_gpl+rds_message_add_extension", align 4
@__kstrtab_rds_message_add_rdma_dest_extension = external dso_local constant [0 x i8], align 1
@__kstrtabns_rds_message_add_rdma_dest_extension = external dso_local constant [0 x i8], align 1
@__ksymtab_rds_message_add_rdma_dest_extension = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rds_message_add_rdma_dest_extension to i32), ptr @__kstrtab_rds_message_add_rdma_dest_extension, ptr @__kstrtabns_rds_message_add_rdma_dest_extension }, section "___ksymtab_gpl+rds_message_add_rdma_dest_extension", align 4
@rds_message_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&rm->m_rs_lock\00", [17 x i8] zeroinitializer }, align 32
@rds_message_alloc.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&rm->m_flush_wait\00", [46 x i8] zeroinitializer }, align 32
@rds_message_alloc_sgs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014rds: alloc sgs failed! nents <= 0\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rds_message_alloc_sgs\00", [42 x i8] zeroinitializer }, align 32
@rds_message_alloc_sgs._entry_ptr = internal global ptr @rds_message_alloc_sgs._entry, section ".printk_index", align 4
@rds_message_alloc_sgs._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014rds: alloc sgs failed! total %d used %d nents %d\0A\00", [44 x i8] zeroinitializer }, align 32
@rds_message_alloc_sgs._entry_ptr.14 = internal global ptr @rds_message_alloc_sgs._entry.12, section ".printk_index", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@rds_stats = external dso_local global %struct.rds_statistics, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_rds_message_unmapped = external dso_local constant [0 x i8], align 1
@__kstrtabns_rds_message_unmapped = external dso_local constant [0 x i8], align 1
@__ksymtab_rds_message_unmapped = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rds_message_unmapped to i32), ptr @__kstrtab_rds_message_unmapped, ptr @__kstrtabns_rds_message_unmapped }, section "___ksymtab_gpl+rds_message_unmapped", align 4
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@rds_exthdr_size = internal constant { <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }>, [32 x i8] } { <{ i32, i32, i32, i32, i32, i32, i32, [9 x i32] }> <{ i32 0, i32 4, i32 4, i32 8, i32 0, i32 2, i32 4, [9 x i32] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rds_message_zcopy_from_user.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 53, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 175, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 176, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 301, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 302, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 317, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 322, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 717, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [16 x i8] c"rds_exthdr_size\00", align 1
@___asan_gen_.69 = private constant [21 x i8] c"../net/rds/message.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 42, i32 21 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__ksymtab_rds_message_add_extension, ptr @__ksymtab_rds_message_add_rdma_dest_extension, ptr @__ksymtab_rds_message_addref, ptr @__ksymtab_rds_message_populate_header, ptr @__ksymtab_rds_message_put, ptr @__ksymtab_rds_message_unmapped, ptr @rds_message_alloc_sgs._entry, ptr @rds_message_alloc_sgs._entry.12, ptr @rds_message_alloc_sgs._entry_ptr, ptr @rds_message_alloc_sgs._entry_ptr.14, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @rds_message_alloc.__key, ptr @.str.7, ptr @rds_message_alloc.__key.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @rds_exthdr_size], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_message_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_message_alloc.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_message_alloc_sgs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_message_alloc_sgs._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_exthdr_size to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_message_addref(ptr noundef %rm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_message_addref.__UNIQUE_ID_ddebug544, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_message_addref, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !55

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rm, i32 noundef 4) #11
  %0 = ptrtoint ptr %rm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %rm, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_message_addref.__UNIQUE_ID_ddebug544, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %rm, i32 noundef %1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rm, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %rm, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rm, ptr %rm, i32 1, ptr elementtype(i32) %rm) #11, !srcloc !56
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %do.end.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !57

do.end.if.end15.sink.split.i.i.i_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %do.end
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !58

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %do.end.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %do.end.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %rm, i32 noundef %.sink.i.i.i) #11
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_notify_msg_zcopy_purge(ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  %copy = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %copy) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %copy, i32 0, i32 1
  %1 = ptrtoint ptr %copy to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %copy, ptr %copy, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %copy, ptr %0, align 4
  %lock = getelementptr inbounds %struct.rds_msg_zcopy_queue, ptr %q, i32 0, i32 1
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %3 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %q, align 4
  %cmp.i.not.i = icmp eq ptr %4, %q
  br i1 %cmp.i.not.i, label %entry.list_splice.exit_crit_edge, label %if.then.i

entry.list_splice.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %copy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %copy, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %q, i32 0, i32 1
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %copy, ptr %prev3.i.i, align 4
  store ptr %4, ptr %copy, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %8, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev6.i.i, align 4
  br label %list_splice.exit

list_splice.exit:                                 ; preds = %if.then.i, %entry.list_splice.exit_crit_edge
  %12 = ptrtoint ptr %q to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %q, ptr %q, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %q, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %q, ptr %prev.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  %14 = ptrtoint ptr %copy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %copy, align 4
  %cmp15.not31 = icmp eq ptr %15, %copy
  br i1 %cmp15.not31, label %list_splice.exit.for.end_crit_edge, label %list_splice.exit.for.body_crit_edge

list_splice.exit.for.body_crit_edge:              ; preds = %list_splice.exit
  br label %for.body

list_splice.exit.for.end_crit_edge:               ; preds = %list_splice.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %list_splice.exit.for.body_crit_edge
  %info.032 = phi ptr [ %tmp.0, %list_del.exit.for.body_crit_edge ], [ %15, %list_splice.exit.for.body_crit_edge ]
  %16 = ptrtoint ptr %info.032 to i32
  call void @__asan_load4_noabort(i32 %16)
  %tmp.0 = load ptr, ptr %info.032, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %info.032) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %info.032, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %info.032 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %info.032, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %23 = ptrtoint ptr %info.032 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %info.032, align 4
  %prev.i30 = getelementptr inbounds %struct.list_head, ptr %info.032, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i30 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i30, align 4
  call void @kfree(ptr noundef %info.032) #11
  %cmp15.not = icmp eq ptr %tmp.0, %copy
  br i1 %cmp15.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %list_splice.exit.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %copy) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_message_put(ptr noundef %rm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rds_message_put.__UNIQUE_ID_ddebug545, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rds_message_put, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !55

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rm, i32 noundef 4) #11
  %0 = ptrtoint ptr %rm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %rm, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rds_message_put.__UNIQUE_ID_ddebug545, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, ptr noundef %rm, i32 noundef %1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i.i.i92 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rm, i32 noundef 4) #11
  %2 = ptrtoint ptr %rm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %rm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %do.end23, label %do.end.if.end29_crit_edge, !prof !57

do.end.if.end29_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

do.end23:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 176, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef %rm) #11
  br label %if.end29

if.end29:                                         ; preds = %do.end23, %do.end.if.end29_crit_edge
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %rm, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr %rm, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rm, ptr %rm, i32 1, ptr elementtype(i32) %rm) #11, !srcloc !60
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %do.body40, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end82_crit_edge, label %if.then10.i.i.i, !prof !58

if.end5.i.i.i.if.end82_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %rm, i32 noundef 3) #11
  br label %if.end82

do.body40:                                        ; preds = %if.end29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !61
  %m_sock_item = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 1
  %5 = ptrtoint ptr %m_sock_item to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %m_sock_item, align 4
  %cmp.i.not = icmp eq ptr %6, %m_sock_item
  br i1 %cmp.i.not, label %do.body61, label %do.body52, !prof !58

do.body52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/message.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 178, 0\0A.popsection", ""() #11, !srcloc !62
  unreachable

do.body61:                                        ; preds = %do.body40
  %m_conn_item = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 2
  %7 = ptrtoint ptr %m_conn_item to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %m_conn_item, align 4
  %cmp.i93.not = icmp eq ptr %8, %m_conn_item
  br i1 %cmp.i93.not, label %do.end81, label %do.body73, !prof !58

do.body73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/message.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 179, 0\0A.popsection", ""() #11, !srcloc !63
  unreachable

do.end81:                                         ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @rds_message_purge(ptr noundef %rm)
  tail call void @kfree(ptr noundef %rm) #11
  br label %if.end82

if.end82:                                         ; preds = %do.end81, %if.then10.i.i.i, %if.end5.i.i.i.if.end82_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rds_message_purge(ptr noundef %rm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %m_flags = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 6
  %0 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %m_flags, align 4
  %2 = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.body3, label %entry.cleanup_crit_edge, !prof !58

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body3:                                         ; preds = %entry
  %m_rs_lock = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 7
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %m_rs_lock) #11
  %m_rs = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 9
  %3 = ptrtoint ptr %m_rs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %m_rs, align 4
  %tobool8.not = icmp eq ptr %4, null
  br i1 %tobool8.not, label %do.body3.if.end20_crit_edge, label %if.then9

do.body3.if.end20_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then9:                                         ; preds = %do.body3
  %op_mmp_znotifier = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 2, i32 5
  %5 = ptrtoint ptr %op_mmp_znotifier to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %op_mmp_znotifier, align 4
  %tobool11 = icmp ne ptr %6, null
  br i1 %tobool11, label %if.then12, label %if.then9.if.end17_crit_edge

if.then9.if.end17_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then12:                                        ; preds = %if.then9
  %z_cookie.i = getelementptr inbounds %struct.rds_znotifier, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %z_cookie.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %z_cookie.i, align 4
  tail call void @mm_unaccount_pinned_pages(ptr noundef nonnull %6) #11
  %rs_zcookie_queue.i = getelementptr inbounds %struct.rds_sock, ptr %4, i32 0, i32 31
  %lock.i = getelementptr inbounds %struct.rds_sock, ptr %4, i32 0, i32 31, i32 1
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %9 = ptrtoint ptr %rs_zcookie_queue.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %rs_zcookie_queue.i, align 4
  %cmp.i.i = icmp eq ptr %10, %rs_zcookie_queue.i
  br i1 %cmp.i.i, label %if.then12.if.end34.i_crit_edge, label %land.lhs.true.i

if.then12.if.end34.i_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

land.lhs.true.i:                                  ; preds = %if.then12
  %11 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %lock.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %cmp.i64.i = icmp eq i32 %12, 8
  br i1 %cmp.i64.i, label %land.lhs.true.i.if.end34.i_crit_edge, label %if.then10.i

land.lhs.true.i.if.end34.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

if.then10.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i = getelementptr %struct.rds_msg_zcopy_info, ptr %rs_zcookie_queue.i, i32 0, i32 1, i32 0, i32 1, i32 %12
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %8, ptr %arrayidx.i.i, align 4
  %inc.i.i = add i32 %12, 1
  %14 = ptrtoint ptr %lock.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %inc.i.i, ptr %lock.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #11
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 -8
  tail call void @kfree(ptr noundef %add.ptr.i.i) #11
  br label %rds_rm_zerocopy_callback.exit

if.end34.i:                                       ; preds = %land.lhs.true.i.if.end34.i_crit_edge, %if.then12.if.end34.i_crit_edge
  %add.ptr.i65.i = getelementptr i8, ptr %6, i32 -8
  %15 = call ptr @memset(ptr %z_cookie.i, i32 0, i32 28)
  %arrayidx.i67.i = getelementptr i8, ptr %6, i32 4
  %16 = ptrtoint ptr %arrayidx.i67.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %8, ptr %arrayidx.i67.i, align 4
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %6, align 4
  %prev.i.i = getelementptr i8, ptr %6, i32 -4
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %rs_zcookie_queue.i, ptr noundef %19, ptr noundef %add.ptr.i65.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end34.i.list_add_tail.exit.i_crit_edge

if.end34.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %rs_zcookie_queue.i, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %rs_zcookie_queue.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i65.i, ptr %rs_zcookie_queue.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.rds_sock, ptr %4, i32 0, i32 31, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %rs_zcookie_queue.i, ptr %19, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end34.i.list_add_tail.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #11
  br label %rds_rm_zerocopy_callback.exit

rds_rm_zerocopy_callback.exit:                    ; preds = %list_add_tail.exit.i, %if.then10.i
  tail call void @rds_wake_sk_sleep(ptr noundef nonnull %4) #11
  %24 = ptrtoint ptr %op_mmp_znotifier to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %op_mmp_znotifier, align 4
  br label %if.end17

if.end17:                                         ; preds = %rds_rm_zerocopy_callback.exit, %if.then9.if.end17_crit_edge
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #11
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #11, !srcloc !60
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !58

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #11
  br label %sock_put.exit

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !61
  tail call void @sk_free(ptr noundef nonnull %4) #11
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  %26 = ptrtoint ptr %m_rs to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %m_rs, align 4
  br label %if.end20

if.end20:                                         ; preds = %sock_put.exit, %do.body3.if.end20_crit_edge
  %zcopy.1.off0 = phi i1 [ %tobool11, %sock_put.exit ], [ false, %do.body3.if.end20_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %m_rs_lock, i32 noundef %call5) #11
  %op_nents = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 2, i32 1
  %27 = ptrtoint ptr %op_nents to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %op_nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp23124.not = icmp eq i32 %28, 0
  br i1 %cmp23124.not, label %if.end20.for.end_crit_edge, label %for.body.lr.ph

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end20
  %op_sg = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 2, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0125 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %29 = ptrtoint ptr %op_sg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %op_sg, align 8
  %arrayidx31 = getelementptr %struct.scatterlist, ptr %30, i32 %i.0125
  %31 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx31, align 4
  %and.i.i95 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95)
  %tobool.i.not.i96 = icmp eq i32 %and.i.i95, 0
  br i1 %zcopy.1.off0, label %if.else, label %if.then26

if.then26:                                        ; preds = %for.body
  br i1 %tobool.i.not.i96, label %sg_page.exit, label %do.body2.i, !prof !58

do.body2.i:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #11, !srcloc !64
  unreachable

sg_page.exit:                                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  %and.i = and i32 %32, -4
  %33 = inttoptr i32 %and.i to ptr
  tail call void @__free_pages(ptr noundef %33, i32 noundef 0) #11
  br label %for.inc

if.else:                                          ; preds = %for.body
  br i1 %tobool.i.not.i96, label %sg_page.exit99, label %do.body2.i97, !prof !58

do.body2.i97:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #11, !srcloc !64
  unreachable

sg_page.exit99:                                   ; preds = %if.else
  %and.i98 = and i32 %32, -4
  %34 = inttoptr i32 %and.i98 to ptr
  %35 = getelementptr inbounds %struct.page, ptr %34, i32 0, i32 1
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  %and.i.i100 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i100)
  %tobool.not.i.i = icmp eq i32 %and.i.i100, 0
  br i1 %tobool.not.i.i, label %sg_page.exit99._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !58

sg_page.exit99._compound_head.exit.i_crit_edge:   ; preds = %sg_page.exit99
  call void @__sanitizer_cov_trace_pc() #13
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %sg_page.exit99
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %37, -1
  %.pre = inttoptr i32 %sub.i.i to ptr
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %sg_page.exit99._compound_head.exit.i_crit_edge
  %.pre-phi = phi ptr [ %34, %sg_page.exit99._compound_head.exit.i_crit_edge ], [ %.pre, %if.then.i.i ]
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  %38 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i.i.i.i101 = icmp eq i32 %39, 0
  br i1 %cmp.i.i.i.i101, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !57

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str.15) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !65
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %40 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #11, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %40, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@rds_message_purge, %if.then.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !55

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %.pre-phi, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.for.inc_crit_edge

folio_put_testzero.exit.i.i.for.inc_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %.pre-phi) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.for.inc_crit_edge, %sg_page.exit
  %inc = add nuw i32 %i.0125, 1
  %41 = ptrtoint ptr %op_nents to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %op_nents, align 4
  %cmp23 = icmp ult i32 %inc, %42
  br i1 %cmp23, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end20.for.end_crit_edge
  %43 = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14
  %44 = ptrtoint ptr %op_nents to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %op_nents, align 4
  %op_active = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 1, i32 2
  %45 = ptrtoint ptr %op_active to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load = load i8, ptr %op_active, align 8
  %46 = and i8 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool36.not = icmp eq i8 %46, 0
  br i1 %tobool36.not, label %for.end.if.end39_crit_edge, label %if.then37

for.end.if.end39_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

if.then37:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %rdma = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 1
  tail call void @rds_rdma_free_op(ptr noundef %rdma) #11
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %for.end.if.end39_crit_edge
  %op_rdma_mr = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 1, i32 8
  %47 = ptrtoint ptr %op_rdma_mr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %op_rdma_mr, align 8
  %tobool41.not = icmp eq ptr %48, null
  br i1 %tobool41.not, label %if.end39.if.end46_crit_edge, label %if.then42

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then42:                                        ; preds = %if.end39
  %r_kref = getelementptr inbounds %struct.rds_mr, ptr %48, i32 0, i32 1
  %call.i.i.i.i.i.i102 = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr %r_kref, i32 1, i32 3, i32 1) #11
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref, ptr %r_kref, i32 1, ptr elementtype(i32) %r_kref) #11, !srcloc !60
  %asmresult.i.i.i.i.i.i.i103 = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i103)
  %cmp.i.i.i.i104 = icmp eq i32 %asmresult.i.i.i.i.i.i.i103, 1
  br i1 %cmp.i.i.i.i104, label %if.then.i108, label %if.end5.i.i.i.i106

if.end5.i.i.i.i106:                               ; preds = %if.then42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i103)
  %.not.i.i.i.i105 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i103, 0
  br i1 %.not.i.i.i.i105, label %if.end5.i.i.i.i106.if.end46_crit_edge, label %if.then10.i.i.i.i107, !prof !58

if.end5.i.i.i.i106.if.end46_crit_edge:            ; preds = %if.end5.i.i.i.i106
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then10.i.i.i.i107:                             ; preds = %if.end5.i.i.i.i106
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %r_kref, i32 noundef 3) #11
  br label %if.end46

if.then.i108:                                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !61
  tail call void @__rds_put_mr_final(ptr noundef %r_kref) #11
  br label %if.end46

if.end46:                                         ; preds = %if.then.i108, %if.then10.i.i.i.i107, %if.end5.i.i.i.i106.if.end46_crit_edge, %if.end39.if.end46_crit_edge
  %op_active47 = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 0, i32 4
  %50 = ptrtoint ptr %op_active47 to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load48 = load i8, ptr %op_active47, align 8
  %51 = and i8 %bf.load48, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool52.not = icmp eq i8 %51, 0
  br i1 %tobool52.not, label %if.end46.if.end55_crit_edge, label %if.then53

if.end46.if.end55_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.then53:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @rds_atomic_free_op(ptr noundef %43) #11
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end46.if.end55_crit_edge
  %op_rdma_mr57 = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 0, i32 7
  %52 = ptrtoint ptr %op_rdma_mr57 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %op_rdma_mr57, align 4
  %tobool58.not = icmp eq ptr %53, null
  br i1 %tobool58.not, label %if.end55.cleanup_crit_edge, label %if.then59

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then59:                                        ; preds = %if.end55
  %r_kref62 = getelementptr inbounds %struct.rds_mr, ptr %53, i32 0, i32 1
  %call.i.i.i.i.i.i109 = tail call zeroext i1 @__kasan_check_write(ptr noundef %r_kref62, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr %r_kref62, i32 1, i32 3, i32 1) #11
  %54 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r_kref62, ptr %r_kref62, i32 1, ptr elementtype(i32) %r_kref62) #11, !srcloc !60
  %asmresult.i.i.i.i.i.i.i110 = extractvalue { i32, i32, i32 } %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i110)
  %cmp.i.i.i.i111 = icmp eq i32 %asmresult.i.i.i.i.i.i.i110, 1
  br i1 %cmp.i.i.i.i111, label %if.then.i115, label %if.end5.i.i.i.i113

if.end5.i.i.i.i113:                               ; preds = %if.then59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i110)
  %.not.i.i.i.i112 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i110, 0
  br i1 %.not.i.i.i.i112, label %if.end5.i.i.i.i113.cleanup_crit_edge, label %if.then10.i.i.i.i114, !prof !58

if.end5.i.i.i.i113.cleanup_crit_edge:             ; preds = %if.end5.i.i.i.i113
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i114:                             ; preds = %if.end5.i.i.i.i113
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %r_kref62, i32 noundef 3) #11
  br label %cleanup

if.then.i115:                                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !61
  tail call void @__rds_put_mr_final(ptr noundef %r_kref62) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i115, %if.then10.i.i.i.i114, %if.end5.i.i.i.i113.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @rds_message_populate_header(ptr nocapture noundef writeonly %hdr, i16 noundef zeroext %sport, i16 noundef zeroext %dport, i64 noundef %seq) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %h_flags = getelementptr inbounds %struct.rds_header, ptr %hdr, i32 0, i32 5
  %0 = ptrtoint ptr %h_flags to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %h_flags, align 8
  %h_sport = getelementptr inbounds %struct.rds_header, ptr %hdr, i32 0, i32 3
  %1 = ptrtoint ptr %h_sport to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %sport, ptr %h_sport, align 4
  %h_dport = getelementptr inbounds %struct.rds_header, ptr %hdr, i32 0, i32 4
  %2 = ptrtoint ptr %h_dport to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %dport, ptr %h_dport, align 2
  %3 = ptrtoint ptr %hdr to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %seq, ptr %hdr, align 8
  %h_exthdr = getelementptr inbounds %struct.rds_header, ptr %hdr, i32 0, i32 9
  %4 = ptrtoint ptr %h_exthdr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %h_exthdr, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rds_message_add_extension(ptr nocapture noundef %hdr, i32 noundef %type, ptr nocapture noundef readonly %data, i32 noundef %len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %h_exthdr = getelementptr inbounds %struct.rds_header, ptr %hdr, i32 0, i32 9
  %0 = ptrtoint ptr %h_exthdr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %h_exthdr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp ne i8 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %type)
  %cmp2 = icmp ugt i32 %type, 15
  %or.cond = or i1 %cmp2, %cmp.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx4 = getelementptr [16 x i32], ptr @rds_exthdr_size, i32 0, i32 %type
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %len)
  %cmp5.not = icmp ne i32 %3, %len
  %4 = add i32 %len, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %4)
  %cmp9 = icmp ult i32 %4, -16
  %or.cond25 = or i1 %cmp9, %cmp5.not
  br i1 %or.cond25, label %lor.lhs.false.cleanup_crit_edge, label %if.end12

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %conv14 = trunc i32 %type to i8
  %incdec.ptr = getelementptr %struct.rds_header, ptr %hdr, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %h_exthdr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv14, ptr %h_exthdr, align 1
  %6 = call ptr @memcpy(ptr %incdec.ptr, ptr %data, i32 %len)
  %arrayidx15 = getelementptr i8, ptr %incdec.ptr, i32 %len
  %7 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx15, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end12 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rds_message_next_extension(ptr nocapture noundef readonly %hdr, ptr nocapture noundef %pos, ptr nocapture noundef writeonly %buf, ptr nocapture noundef %buflen) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %h_exthdr = getelementptr inbounds %struct.rds_header, ptr %hdr, i32 0, i32 9
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %1)
  %cmp = icmp ugt i32 %1, 15
  br i1 %cmp, label %entry.none_crit_edge, label %if.end

entry.none_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %none

if.end:                                           ; preds = %entry
  %inc = add nuw nsw i32 %1, 1
  %arrayidx = getelementptr i8, ptr %h_exthdr, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %4 = add i8 %3, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -15, i8 %4)
  %5 = icmp ult i8 %4, -15
  br i1 %5, label %if.end.none_crit_edge, label %if.end6

if.end.none_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %none

if.end6:                                          ; preds = %if.end
  %arrayidx7 = getelementptr [16 x i32], ptr @rds_exthdr_size, i32 0, i32 %conv
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7, align 4
  %add = add i32 %7, %inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add)
  %cmp8 = icmp ugt i32 %add, 16
  br i1 %cmp8, label %if.end6.none_crit_edge, label %if.end11

if.end6.none_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %none

if.end11:                                         ; preds = %if.end6
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %pos, align 4
  %9 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %buflen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %10)
  %cmp13 = icmp ult i32 %7, %10
  br i1 %cmp13, label %if.then15, label %if.end11.if.end16_crit_edge

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %7, ptr %buflen, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end11.if.end16_crit_edge
  %add.ptr = getelementptr i8, ptr %h_exthdr, i32 %inc
  %12 = ptrtoint ptr %buflen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buflen, align 4
  %14 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 %13)
  br label %cleanup

none:                                             ; preds = %if.end6.none_crit_edge, %if.end.none_crit_edge, %entry.none_crit_edge
  %15 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16, ptr %pos, align 4
  %16 = ptrtoint ptr %buflen to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %buflen, align 4
  br label %cleanup

cleanup:                                          ; preds = %none, %if.end16
  %retval.0 = phi i32 [ 0, %none ], [ %conv, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rds_message_add_rdma_dest_extension(ptr nocapture noundef %hdr, i32 noundef %r_key, i32 noundef %offset) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %h_exthdr.i = getelementptr inbounds %struct.rds_header, ptr %hdr, i32 0, i32 9
  %0 = ptrtoint ptr %h_exthdr.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %h_exthdr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not.i.not = icmp eq i8 %1, 0
  br i1 %cmp.not.i.not, label %lor.lhs.false.i, label %entry.rds_message_add_extension.exit_crit_edge

entry.rds_message_add_extension.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rds_message_add_extension.exit

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr.i = getelementptr %struct.rds_header, ptr %hdr, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %h_exthdr.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 3, ptr %h_exthdr.i, align 1
  %3 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %3, i32 4)
  store i32 %r_key, ptr %incdec.ptr.i, align 1
  %ext_hdr.sroa.5.0.incdec.ptr.i.sroa_idx = getelementptr %struct.rds_header, ptr %hdr, i32 0, i32 9, i32 5
  %4 = ptrtoint ptr %ext_hdr.sroa.5.0.incdec.ptr.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 %offset, ptr %ext_hdr.sroa.5.0.incdec.ptr.i.sroa_idx, align 1
  %arrayidx15.i = getelementptr %struct.rds_header, ptr %hdr, i32 0, i32 9, i32 9
  %5 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx15.i, align 1
  br label %rds_message_add_extension.exit

rds_message_add_extension.exit:                   ; preds = %lor.lhs.false.i, %entry.rds_message_add_extension.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %lor.lhs.false.i ], [ 0, %entry.rds_message_add_extension.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rds_message_alloc(i32 noundef %extra_len, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388112, i32 %extra_len)
  %cmp = icmp ugt i32 %extra_len, 8388112
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %or.i = or i32 %gfp, 256
  %add = add nuw nsw i32 %extra_len, 496
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef %or.i) #14
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end2

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %m_used_sgs = getelementptr inbounds %struct.rds_message, ptr %call9.i.i, i32 0, i32 11
  %0 = ptrtoint ptr %m_used_sgs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %m_used_sgs, align 16
  %div = udiv i32 %extra_len, 20
  %m_total_sgs = getelementptr inbounds %struct.rds_message, ptr %call9.i.i, i32 0, i32 12
  %1 = ptrtoint ptr %m_total_sgs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %div, ptr %m_total_sgs, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i, i32 noundef 4) #11
  %2 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %call9.i.i, align 128
  %m_sock_item = getelementptr inbounds %struct.rds_message, ptr %call9.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %m_sock_item to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %m_sock_item, ptr %m_sock_item, align 4
  %prev.i = getelementptr inbounds %struct.rds_message, ptr %call9.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %m_sock_item, ptr %prev.i, align 8
  %m_conn_item = getelementptr inbounds %struct.rds_message, ptr %call9.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %m_conn_item to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %m_conn_item, ptr %m_conn_item, align 4
  %prev.i17 = getelementptr inbounds %struct.rds_message, ptr %call9.i.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i17 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %m_conn_item, ptr %prev.i17, align 16
  %m_rs_lock = getelementptr inbounds %struct.rds_message, ptr %call9.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %m_rs_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @rds_message_alloc.__key, i16 noundef signext 3) #11
  %m_flush_wait = getelementptr inbounds %struct.rds_message, ptr %call9.i.i, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %m_flush_wait, ptr noundef nonnull @.str.9, ptr noundef nonnull @rds_message_alloc.__key.8) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end8.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end8.i.i.cleanup_crit_edge ], [ %call9.i.i, %if.end2 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rds_message_alloc_sgs(ptr noundef %rm, i32 noundef %nents) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.rds_message, ptr %rm, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nents)
  %cmp = icmp slt i32 %nents, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %m_used_sgs = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 11
  %0 = ptrtoint ptr %m_used_sgs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %m_used_sgs, align 8
  %add = add i32 %1, %nents
  %m_total_sgs = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 12
  %2 = ptrtoint ptr %m_total_sgs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_total_sgs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp2 = icmp ugt i32 %add, %3
  br i1 %cmp2, label %do.end6, label %if.end12

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %3, i32 noundef %1, i32 noundef %nents) #15
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx14 = getelementptr %struct.scatterlist, ptr %arrayidx, i32 %1
  tail call void @sg_init_table(ptr noundef %arrayidx14, i32 noundef %nents) #11
  %4 = ptrtoint ptr %m_used_sgs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %m_used_sgs, align 8
  %add16 = add i32 %5, %nents
  store i32 %add16, ptr %m_used_sgs, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end6, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -12 to ptr), %do.end6 ], [ %arrayidx14, %if.end12 ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rds_message_map_pages(ptr nocapture noundef readonly %page_addrs, i32 noundef %total_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %total_len, 4095
  %div43 = lshr i32 %sub, 12
  %mul = mul nuw nsw i32 %div43, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388112, i32 %mul)
  %cmp.i = icmp ugt i32 %mul, 8388112
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end8.i.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i.i.i:                                    ; preds = %entry
  %add.i = add nuw nsw i32 %mul, 496
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 2304) #14
  %tobool.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.end8.i.i.i
  %m_used_sgs.i = getelementptr inbounds %struct.rds_message, ptr %call9.i.i.i, i32 0, i32 11
  %0 = ptrtoint ptr %m_used_sgs.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %m_used_sgs.i, align 16
  %m_total_sgs.i = getelementptr inbounds %struct.rds_message, ptr %call9.i.i.i, i32 0, i32 12
  %1 = ptrtoint ptr %m_total_sgs.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %div43, ptr %m_total_sgs.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call9.i.i.i, i32 noundef 4) #11
  %2 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %call9.i.i.i, align 128
  %m_sock_item.i = getelementptr inbounds %struct.rds_message, ptr %call9.i.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %m_sock_item.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %m_sock_item.i, ptr %m_sock_item.i, align 4
  %prev.i.i = getelementptr inbounds %struct.rds_message, ptr %call9.i.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %m_sock_item.i, ptr %prev.i.i, align 8
  %m_conn_item.i = getelementptr inbounds %struct.rds_message, ptr %call9.i.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %m_conn_item.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %m_conn_item.i, ptr %m_conn_item.i, align 4
  %prev.i17.i = getelementptr inbounds %struct.rds_message, ptr %call9.i.i.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i17.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %m_conn_item.i, ptr %prev.i17.i, align 16
  %m_rs_lock.i = getelementptr inbounds %struct.rds_message, ptr %call9.i.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %m_rs_lock.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @rds_message_alloc.__key, i16 noundef signext 3) #11
  %m_flush_wait.i = getelementptr inbounds %struct.rds_message, ptr %call9.i.i.i, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %m_flush_wait.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @rds_message_alloc.__key.8) #11
  %m_flags = getelementptr inbounds %struct.rds_message, ptr %call9.i.i.i, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 7, ptr noundef %m_flags) #11
  %h_len = getelementptr inbounds %struct.rds_message, ptr %call9.i.i.i, i32 0, i32 3, i32 4, i32 2
  %7 = ptrtoint ptr %h_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %total_len, ptr %h_len, align 64
  %op_nents = getelementptr inbounds %struct.rds_message, ptr %call9.i.i.i, i32 0, i32 14, i32 2, i32 1
  %8 = ptrtoint ptr %op_nents to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div43, ptr %op_nents, align 4
  %arrayidx.i = getelementptr %struct.rds_message, ptr %call9.i.i.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub)
  %cmp.i44 = icmp ult i32 %sub, 4096
  br i1 %cmp.i44, label %do.end.i, label %if.end.i48

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #15
  br label %rds_message_alloc_sgs.exit.thread

if.end.i48:                                       ; preds = %if.end
  %9 = ptrtoint ptr %m_used_sgs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %m_used_sgs.i, align 16
  %add.i46 = add i32 %10, %div43
  %11 = ptrtoint ptr %m_total_sgs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %m_total_sgs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i46, i32 %12)
  %cmp2.i = icmp ugt i32 %add.i46, %12
  br i1 %cmp2.i, label %do.end6.i, label %rds_message_alloc_sgs.exit

do.end6.i:                                        ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #13
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %12, i32 noundef %10, i32 noundef %div43) #15
  br label %rds_message_alloc_sgs.exit.thread

rds_message_alloc_sgs.exit.thread:                ; preds = %do.end6.i, %do.end.i
  %retval.0.i49.ph = phi ptr [ inttoptr (i32 -12 to ptr), %do.end6.i ], [ inttoptr (i32 -22 to ptr), %do.end.i ]
  %op_sg54 = getelementptr inbounds %struct.rds_message, ptr %call9.i.i.i, i32 0, i32 14, i32 2, i32 6
  %13 = ptrtoint ptr %op_sg54 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %retval.0.i49.ph, ptr %op_sg54, align 32
  br label %if.then10

rds_message_alloc_sgs.exit:                       ; preds = %if.end.i48
  %arrayidx14.i = getelementptr %struct.scatterlist, ptr %arrayidx.i, i32 %10
  tail call void @sg_init_table(ptr noundef %arrayidx14.i, i32 noundef %div43) #11
  %14 = ptrtoint ptr %m_used_sgs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %m_used_sgs.i, align 16
  %add16.i = add i32 %15, %div43
  store i32 %add16.i, ptr %m_used_sgs.i, align 16
  %op_sg = getelementptr inbounds %struct.rds_message, ptr %call9.i.i.i, i32 0, i32 14, i32 2, i32 6
  %16 = ptrtoint ptr %op_sg to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx14.i, ptr %op_sg, align 32
  %cmp.i50 = icmp ugt ptr %arrayidx14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50, label %rds_message_alloc_sgs.exit.if.then10_crit_edge, label %for.cond.preheader

rds_message_alloc_sgs.exit.if.then10_crit_edge:   ; preds = %rds_message_alloc_sgs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then10

for.cond.preheader:                               ; preds = %rds_message_alloc_sgs.exit
  %17 = ptrtoint ptr %op_nents to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %op_nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp57.not = icmp eq i32 %18, 0
  br i1 %cmp57.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10:                                        ; preds = %rds_message_alloc_sgs.exit.if.then10_crit_edge, %rds_message_alloc_sgs.exit.thread
  %retval.0.i4956 = phi ptr [ %retval.0.i49.ph, %rds_message_alloc_sgs.exit.thread ], [ %arrayidx14.i, %rds_message_alloc_sgs.exit.if.then10_crit_edge ]
  tail call void @rds_message_put(ptr noundef nonnull %call9.i.i.i)
  br label %cleanup

for.body:                                         ; preds = %sg_set_page.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.058 = phi i32 [ %inc, %sg_set_page.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %19 = ptrtoint ptr %op_sg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %op_sg, align 32
  %arrayidx = getelementptr %struct.scatterlist, ptr %20, i32 %i.058
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %21 = load ptr, ptr @mem_map, align 4
  %arrayidx19 = getelementptr i32, ptr %page_addrs, i32 %i.058
  %22 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx19, align 4
  %sub20 = add i32 %23, 1073741824
  %shr = lshr i32 %sub20, 12
  %add.ptr = getelementptr %struct.page, ptr %21, i32 %shr
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %26 = ptrtoint ptr %add.ptr to i32
  %and2.i.i = and i32 %26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !58

do.body5.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #11, !srcloc !69
  unreachable

do.body11.i.i:                                    ; preds = %for.body
  %and.i.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !58

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #11, !srcloc !70
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %25, 3
  %or.i.i = or i32 %and.i.i, %26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i.i, ptr %arrayidx, align 4
  %offset1.i = getelementptr %struct.scatterlist, ptr %20, i32 %i.058, i32 1
  %28 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %offset1.i, align 4
  %length.i = getelementptr %struct.scatterlist, ptr %20, i32 %i.058, i32 2
  %29 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4096, ptr %length.i, align 4
  %inc = add nuw i32 %i.058, 1
  %30 = ptrtoint ptr %op_nents to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %op_nents, align 4
  %cmp = icmp ult i32 %inc, %31
  br i1 %cmp, label %sg_set_page.exit.for.body_crit_edge, label %sg_set_page.exit.cleanup_crit_edge

sg_set_page.exit.cleanup_crit_edge:               ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sg_set_page.exit.for.body_crit_edge:              ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %sg_set_page.exit.cleanup_crit_edge, %if.then10, %for.cond.preheader.cleanup_crit_edge, %if.end8.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i4956, %if.then10 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.i.i.cleanup_crit_edge ], [ %call9.i.i.i, %for.cond.preheader.cleanup_crit_edge ], [ %call9.i.i.i, %sg_set_page.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_message_copy_from_user(ptr nocapture noundef %rm, ptr noundef %from, i1 noundef zeroext %zcopy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 8
  %h_len = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 3, i32 4, i32 2
  %2 = ptrtoint ptr %h_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %h_len, align 8
  %op_sg = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 2, i32 6
  %3 = ptrtoint ptr %op_sg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %op_sg, align 8
  br i1 %zcopy, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %5 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not81 = icmp eq i32 %6, 0
  br i1 %tobool3.not81, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %op_nents = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 2, i32 1
  br label %while.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call fastcc i32 @rds_message_zcopy_from_user(ptr noundef %rm, ptr noundef %from)
  br label %cleanup

while.body:                                       ; preds = %if.end35.while.body_crit_edge, %while.body.lr.ph
  %7 = phi i32 [ %6, %while.body.lr.ph ], [ %42, %if.end35.while.body_crit_edge ]
  %sg_off.083 = phi i32 [ 0, %while.body.lr.ph ], [ %add36, %if.end35.while.body_crit_edge ]
  %sg.082 = phi ptr [ %4, %while.body.lr.ph ], [ %spec.select, %if.end35.while.body_crit_edge ]
  %8 = ptrtoint ptr %sg.082 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sg.082, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !58

do.body2.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #11, !srcloc !64
  unreachable

sg_page.exit:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %tobool5.not = icmp ult i32 %9, 4
  br i1 %tobool5.not, label %if.then6, label %sg_page.exit.if.end13_crit_edge

sg_page.exit.if.end13_crit_edge:                  ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then6:                                         ; preds = %sg_page.exit
  %call8 = tail call i32 @rds_page_remainder_alloc(ptr noundef %sg.082, i32 noundef %7, i32 noundef 1051842) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %op_nents to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %op_nents, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %op_nents, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end11, %sg_page.exit.if.end13_crit_edge
  %sg_off.1 = phi i32 [ %sg_off.083, %sg_page.exit.if.end13_crit_edge ], [ 0, %if.end11 ]
  %12 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count.i, align 8
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.082, i32 0, i32 2
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length, align 4
  %sub = sub i32 %15, %sg_off.1
  %16 = tail call i32 @llvm.umin.i32(i32 %13, i32 %sub)
  %conv = zext i32 %16 to i64
  %17 = tail call i32 @llvm.read_register.i32(metadata !45) #11
  %and.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %20, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !71
  %21 = tail call i32 @llvm.read_register.i32(metadata !45) #11
  %and.i75 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i75 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %add = add i32 %26, ptrtoint (ptr @rds_stats to i32)
  %27 = inttoptr i32 %add to ptr
  %s_copy_from_user = getelementptr inbounds %struct.rds_statistics, ptr %27, i32 0, i32 28
  %28 = ptrtoint ptr %s_copy_from_user to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %s_copy_from_user, align 8
  %add23 = add i64 %29, %conv
  store i64 %add23, ptr %s_copy_from_user, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !72
  %30 = tail call i32 @llvm.read_register.i32(metadata !45) #11
  %and.i.i.i70 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i70 to ptr
  %preempt_count.i.i71 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i71 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i71, align 4
  %sub.i = add i32 %33, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i71, align 4
  %34 = ptrtoint ptr %sg.082 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sg.082, align 4
  %and.i.i76 = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i76)
  %tobool.i.not.i77 = icmp eq i32 %and.i.i76, 0
  br i1 %tobool.i.not.i77, label %sg_page.exit80, label %do.body2.i78, !prof !58

do.body2.i78:                                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #11, !srcloc !64
  unreachable

sg_page.exit80:                                   ; preds = %if.end13
  %and.i79 = and i32 %35, -4
  %36 = inttoptr i32 %and.i79 to ptr
  %offset = getelementptr inbounds %struct.scatterlist, ptr %sg.082, i32 0, i32 1
  %37 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %offset, align 4
  %add30 = add i32 %38, %sg_off.1
  %call31 = tail call i32 @copy_page_from_iter(ptr noundef %36, i32 noundef %add30, i32 noundef %16, ptr noundef %from) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call31, i32 %16)
  %cmp32.not = icmp eq i32 %call31, %16
  br i1 %cmp32.not, label %if.end35, label %sg_page.exit80.cleanup_crit_edge

sg_page.exit80.cleanup_crit_edge:                 ; preds = %sg_page.exit80
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end35:                                         ; preds = %sg_page.exit80
  %add36 = add i32 %16, %sg_off.1
  %39 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add36, i32 %40)
  %cmp38 = icmp eq i32 %add36, %40
  %spec.select.idx = zext i1 %cmp38 to i32
  %spec.select = getelementptr %struct.scatterlist, ptr %sg.082, i32 %spec.select.idx
  %41 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %count.i, align 8
  %tobool3.not = icmp eq i32 %42, 0
  br i1 %tobool3.not, label %if.end35.cleanup_crit_edge, label %if.end35.while.body_crit_edge

if.end35.while.body_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end35.cleanup_crit_edge, %sg_page.exit80.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.then, %while.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ %call8, %if.then6.cleanup_crit_edge ], [ -14, %sg_page.exit80.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rds_message_zcopy_from_user(ptr nocapture noundef %rm, ptr noundef %from) unnamed_addr #0 align 64 {
entry:
  %pages = alloca ptr, align 4
  %start = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %from, i32 0, i32 4
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 8
  %h_len = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 3, i32 4, i32 2
  %2 = ptrtoint ptr %h_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %h_len, align 8
  %op_sg = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 2, i32 6
  %3 = ptrtoint ptr %op_sg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %op_sg, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 44) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup68_crit_edge, label %if.end

entry.cleanup68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup68

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %8 = getelementptr inbounds %struct.rds_msg_zcopy_info, ptr %call7.i.i, i32 0, i32 1
  %op_mmp_znotifier = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 2, i32 5
  %9 = ptrtoint ptr %op_mmp_znotifier to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %op_mmp_znotifier, align 4
  %call6 = tail call i32 @mm_account_pinned_pages(ptr noundef %8, i32 noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %while.cond.preheader, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

while.cond.preheader:                             ; preds = %if.end
  %10 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11.not116 = icmp eq i32 %11, 0
  br i1 %tobool11.not116, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %op_nents24 = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 14, i32 2, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %sg.0118 = phi ptr [ %4, %while.body.lr.ph ], [ %incdec.ptr, %cleanup.while.body_crit_edge ]
  %length.0117 = phi i32 [ %1, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pages) #11
  %12 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %pages, align 4, !annotation !73
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %start) #11
  %13 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %start, align 4, !annotation !73
  %call12 = call i32 @iov_iter_get_pages(ptr noundef %from, ptr noundef nonnull %pages, i32 noundef 4096, i32 noundef 1, ptr noundef nonnull %start) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %for.cond.preheader, label %if.end22

for.cond.preheader:                               ; preds = %while.body
  %14 = ptrtoint ptr %op_nents24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %op_nents24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp15119.not = icmp eq i32 %15, 0
  br i1 %cmp15119.not, label %for.cond.preheader.cleanup.thread_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup.thread_crit_edge:      ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0120 = phi i32 [ %inc, %put_page.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %16 = ptrtoint ptr %op_sg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %op_sg, align 8
  %arrayidx = getelementptr %struct.scatterlist, ptr %17, i32 %i.0120
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %and.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !58

do.body2.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #11, !srcloc !64
  unreachable

sg_page.exit:                                     ; preds = %for.body
  %and.i = and i32 %19, -4
  %20 = inttoptr i32 %and.i to ptr
  %21 = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %21, align 4
  %and.i.i104 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i104)
  %tobool.not.i.i = icmp eq i32 %and.i.i104, 0
  br i1 %tobool.not.i.i, label %sg_page.exit._compound_head.exit.i_crit_edge, label %if.then.i.i, !prof !58

sg_page.exit._compound_head.exit.i_crit_edge:     ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %_compound_head.exit.i

if.then.i.i:                                      ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %23, -1
  %.pre = inttoptr i32 %sub.i.i to ptr
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.then.i.i, %sg_page.exit._compound_head.exit.i_crit_edge
  %.pre-phi = phi ptr [ %20, %sg_page.exit._compound_head.exit.i_crit_edge ], [ %.pre, %if.then.i.i ]
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %.pre-phi, i32 0, i32 3
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  %24 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.i.i.i.i = icmp eq i32 %25, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !57

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @dump_page(ptr noundef %.pre-phi, ptr noundef nonnull @.str.15) #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !65
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !66
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %26 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #11, !srcloc !67
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %26, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@rds_message_zcopy_from_user, %if.then.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !55

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %.pre-phi, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__put_page(ptr noundef %.pre-phi) #11
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %inc = add nuw i32 %i.0120, 1
  %27 = ptrtoint ptr %op_nents24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %op_nents24, align 4
  %cmp15 = icmp ult i32 %inc, %28
  br i1 %cmp15, label %put_page.exit.for.body_crit_edge, label %put_page.exit.cleanup.thread_crit_edge

put_page.exit.cleanup.thread_crit_edge:           ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup.thread:                                   ; preds = %put_page.exit.cleanup.thread_crit_edge, %for.cond.preheader.cleanup.thread_crit_edge
  %29 = ptrtoint ptr %op_mmp_znotifier to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %op_mmp_znotifier, align 4
  call void @mm_unaccount_pinned_pages(ptr noundef %30) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pages) #11
  br label %err

if.end22:                                         ; preds = %while.body
  call void @iov_iter_advance(ptr noundef %from, i32 noundef %call12) #11
  %sub = sub i32 %length.0117, %call12
  %31 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pages, align 4
  %33 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %start, align 4
  %35 = ptrtoint ptr %sg.0118 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sg.0118, align 4
  %37 = ptrtoint ptr %32 to i32
  %and2.i.i = and i32 %37, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i105 = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i105, label %do.body11.i.i, label %do.body5.i.i, !prof !58

do.body5.i.i:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #11, !srcloc !69
  unreachable

do.body11.i.i:                                    ; preds = %if.end22
  %and.i.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %cleanup, label %do.body19.i.i, !prof !58

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #11, !srcloc !70
  unreachable

cleanup:                                          ; preds = %do.body11.i.i
  %and.i.i106 = and i32 %36, 3
  %or.i.i = or i32 %and.i.i106, %37
  %38 = ptrtoint ptr %sg.0118 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or.i.i, ptr %sg.0118, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0118, i32 0, i32 1
  %39 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %34, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.0118, i32 0, i32 2
  %40 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call12, ptr %length.i, align 4
  %41 = ptrtoint ptr %op_nents24 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %op_nents24, align 4
  %inc25 = add i32 %42, 1
  store i32 %inc25, ptr %op_nents24, align 4
  %incdec.ptr = getelementptr %struct.scatterlist, ptr %sg.0118, i32 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %start) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pages) #11
  %43 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %count.i, align 8
  %tobool11.not = icmp eq i32 %44, 0
  br i1 %tobool11.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %length.0.lcssa = phi i32 [ %1, %while.cond.preheader.while.end_crit_edge ], [ %sub, %cleanup.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.0.lcssa)
  %cmp28.not = icmp eq i32 %length.0.lcssa, 0
  br i1 %cmp28.not, label %while.end.cleanup68_crit_edge, label %land.rhs

while.end.cleanup68_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup68

land.rhs:                                         ; preds = %while.end
  %.b100 = load i1, ptr @rds_message_zcopy_from_user.__already_done, align 1
  br i1 %.b100, label %land.rhs.cleanup68_crit_edge, label %if.then36, !prof !58

land.rhs.cleanup68_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup68

if.then36:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rds_message_zcopy_from_user.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 414, i32 noundef 9, ptr noundef null) #11
  br label %cleanup68

err:                                              ; preds = %cleanup.thread, %if.end.err_crit_edge
  %ret.2 = phi i32 [ -12, %if.end.err_crit_edge ], [ -14, %cleanup.thread ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %45 = ptrtoint ptr %op_mmp_znotifier to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %op_mmp_znotifier, align 4
  br label %cleanup68

cleanup68:                                        ; preds = %err, %if.then36, %land.rhs.cleanup68_crit_edge, %while.end.cleanup68_crit_edge, %entry.cleanup68_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err ], [ -12, %entry.cleanup68_crit_edge ], [ 0, %while.end.cleanup68_crit_edge ], [ 0, %if.then36 ], [ 0, %land.rhs.cleanup68_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rds_page_remainder_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_from_iter(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_message_inc_copy_to_user(ptr nocapture noundef readonly %inc, ptr noundef %to) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %h_len = getelementptr inbounds %struct.rds_incoming, ptr %inc, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %h_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %h_len, align 8
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %to, i32 0, i32 4
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not71 = icmp ne i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp72 = icmp ne i32 %1, 0
  %or.cond73 = select i1 %tobool.not71, i1 %cmp72, i1 false
  br i1 %or.cond73, label %while.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.preheader:                             ; preds = %entry
  %op_sg = getelementptr i8, ptr %inc, i32 456
  %4 = ptrtoint ptr %op_sg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %op_sg, align 8
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.preheader
  %6 = phi i32 [ %36, %if.end.while.body_crit_edge ], [ %3, %while.body.preheader ]
  %sg.076 = phi ptr [ %spec.select66, %if.end.while.body_crit_edge ], [ %5, %while.body.preheader ]
  %vec_off.075 = phi i32 [ %spec.select, %if.end.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %copied.074 = phi i32 [ %add31, %if.end.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.076, i32 0, i32 2
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length, align 4
  %sub = sub i32 %8, %vec_off.075
  %9 = tail call i32 @llvm.umin.i32(i32 %6, i32 %sub)
  %sub4 = sub i32 %1, %copied.074
  %10 = tail call i32 @llvm.umin.i32(i32 %9, i32 %sub4)
  %conv = zext i32 %10 to i64
  %11 = tail call i32 @llvm.read_register.i32(metadata !45) #11
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %14, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !74
  %15 = tail call i32 @llvm.read_register.i32(metadata !45) #11
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %add = add i32 %20, ptrtoint (ptr @rds_stats to i32)
  %21 = inttoptr i32 %add to ptr
  %s_copy_to_user = getelementptr inbounds %struct.rds_statistics, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %s_copy_to_user to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %s_copy_to_user, align 8
  %add19 = add i64 %23, %conv
  store i64 %add19, ptr %s_copy_to_user, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !75
  %24 = tail call i32 @llvm.read_register.i32(metadata !45) #11
  %and.i.i.i67 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i67 to ptr
  %preempt_count.i.i68 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i68 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i68, align 4
  %sub.i = add i32 %27, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i68, align 4
  %28 = ptrtoint ptr %sg.076 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sg.076, align 4
  %and.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !58

do.body2.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #11, !srcloc !64
  unreachable

sg_page.exit:                                     ; preds = %while.body
  %and.i70 = and i32 %29, -4
  %30 = inttoptr i32 %and.i70 to ptr
  %offset = getelementptr inbounds %struct.scatterlist, ptr %sg.076, i32 0, i32 1
  %31 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %offset, align 4
  %add26 = add i32 %32, %vec_off.075
  %call27 = tail call i32 @copy_page_to_iter(ptr noundef %30, i32 noundef %add26, i32 noundef %10, ptr noundef %to) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call27, i32 %10)
  %cmp28.not = icmp eq i32 %call27, %10
  br i1 %cmp28.not, label %if.end, label %sg_page.exit.cleanup_crit_edge

sg_page.exit.cleanup_crit_edge:                   ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sg_page.exit
  %add30 = add i32 %10, %vec_off.075
  %add31 = add i32 %10, %copied.074
  %33 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add30, i32 %34)
  %cmp33 = icmp eq i32 %add30, %34
  %spec.select = select i1 %cmp33, i32 0, i32 %add30
  %spec.select66.idx = zext i1 %cmp33 to i32
  %spec.select66 = getelementptr %struct.scatterlist, ptr %sg.076, i32 %spec.select66.idx
  %35 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not = icmp ne i32 %36, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %add31)
  %cmp = icmp ugt i32 %1, %add31
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %sg_page.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %add31, %if.end.cleanup_crit_edge ], [ -14, %sg_page.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_to_iter(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_message_wait(ptr noundef %rm) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 514) #11
  %m_flags = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 6
  %0 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %m_flags, align 4
  %2 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %m_flush_wait = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 8
  %call528 = call i32 @prepare_to_wait_event(ptr noundef %m_flush_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %4 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %m_flags, align 4
  %6 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool8.not29 = icmp eq i32 %6, 0
  br i1 %tobool8.not29, label %if.then.for.end_crit_edge, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  br label %if.end

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then.if.end_crit_edge
  %call530 = phi i32 [ %call5, %cleanup.if.end_crit_edge ], [ %call528, %if.then.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call530)
  %tobool10.not = icmp eq i32 %call530, 0
  br i1 %tobool10.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #11
  %call5 = call i32 @prepare_to_wait_event(ptr noundef %m_flush_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #11
  %7 = ptrtoint ptr %m_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %m_flags, align 4
  %9 = and i32 %8, 64
  %tobool8.not = icmp eq i32 %9, 0
  br i1 %tobool8.not, label %cleanup.for.end_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then.for.end_crit_edge
  call void @finish_wait(ptr noundef %m_flush_wait, ptr noundef nonnull %__wq_entry) #11
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %if.end14

if.end14:                                         ; preds = %__out, %entry.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_message_unmapped(ptr noundef %rm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %m_flags = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %m_flags) #11
  %m_flush_wait = getelementptr inbounds %struct.rds_message, ptr %rm, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %m_flush_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_wake_sk_sleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_rdma_free_op(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rds_put_mr_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_atomic_free_op(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mm_unaccount_pinned_pages(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mm_account_pinned_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_get_pages(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !25, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !41, !43}
!llvm.named.register.sp = !{!45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rds/message.c", i32 53, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @rds_message_addref.__UNIQUE_ID_ddebug544, !1, !"__UNIQUE_ID_ddebug544", i1 false, i1 false}
!6 = !{ptr @__ksymtab_rds_message_addref, !7, !"__ksymtab_rds_message_addref", i1 false, i1 false}
!7 = !{!"../net/rds/message.c", i32 56, i32 1}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/rds/message.c", i32 175, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @rds_message_put.__UNIQUE_ID_ddebug545, !9, !"__UNIQUE_ID_ddebug545", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/rds/message.c", i32 176, i32 2}
!14 = !{ptr @__ksymtab_rds_message_put, !15, !"__ksymtab_rds_message_put", i1 false, i1 false}
!15 = !{!"../net/rds/message.c", i32 185, i32 1}
!16 = !{ptr @__ksymtab_rds_message_populate_header, !17, !"__ksymtab_rds_message_populate_header", i1 false, i1 false}
!17 = !{!"../net/rds/message.c", i32 196, i32 1}
!18 = !{ptr @__ksymtab_rds_message_add_extension, !19, !"__ksymtab_rds_message_add_extension", i1 false, i1 false}
!19 = !{!"../net/rds/message.c", i32 221, i32 1}
!20 = !{ptr @__ksymtab_rds_message_add_rdma_dest_extension, !21, !"__ksymtab_rds_message_add_rdma_dest_extension", i1 false, i1 false}
!21 = !{!"../net/rds/message.c", i32 277, i32 1}
!22 = !{ptr @rds_message_alloc.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../net/rds/message.c", i32 301, i32 2}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rds_message_alloc.__key.8, !26, !"__key", i1 false, i1 false}
!26 = !{!"../net/rds/message.c", i32 302, i32 2}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/rds/message.c", i32 317, i32 3}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @rds_message_alloc_sgs._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @rds_message_alloc_sgs._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/rds/message.c", i32 322, i32 3}
!35 = !{ptr @rds_message_alloc_sgs._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @rds_message_alloc_sgs._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @__ksymtab_rds_message_unmapped, !38, !"__ksymtab_rds_message_unmapped", i1 false, i1 false}
!38 = !{!"../net/rds/message.c", i32 522, i32 1}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/mm.h", i32 717, i32 2}
!41 = !{ptr @rds_exthdr_size, !42, !"rds_exthdr_size", i1 false, i1 false}
!42 = !{!"../net/rds/message.c", i32 42, i32 21}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../net/rds/message.c", i32 414, i32 2}
!45 = !{!"sp"}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 2148703259, i64 2148703264, i64 2148703277, i64 2148703321, i64 2148703355, i64 2148703376}
!56 = !{i64 2148222974, i64 2148223006, i64 2148223035, i64 2148223069, i64 2148223100, i64 2148223123}
!57 = !{!"branch_weights", i32 1, i32 2000}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{i64 2148310975}
!60 = !{i64 2148225439, i64 2148225471, i64 2148225500, i64 2148225534, i64 2148225565, i64 2148225588}
!61 = !{i64 2149879564}
!62 = !{i64 2158213850, i64 2158214332, i64 2158213887, i64 2158213943, i64 2158213977, i64 2158214001, i64 2158214042, i64 2158214063, i64 2158214091, i64 2158214125}
!63 = !{i64 2158215458, i64 2158215940, i64 2158215495, i64 2158215551, i64 2158215585, i64 2158215609, i64 2158215650, i64 2158215671, i64 2158215699, i64 2158215733}
!64 = !{i64 2154343101, i64 2154343593, i64 2154343138, i64 2154343194, i64 2154343228, i64 2154343252, i64 2154343293, i64 2154343314, i64 2154343342, i64 2154343376}
!65 = !{i64 2153337678, i64 2153338161, i64 2153337715, i64 2153337771, i64 2153337805, i64 2153337829, i64 2153337870, i64 2153337891, i64 2153337919, i64 2153337953}
!66 = !{i64 2148309896}
!67 = !{i64 2148224629, i64 2148224661, i64 2148224690, i64 2148224724, i64 2148224755, i64 2148224778}
!68 = !{i64 2148310125}
!69 = !{i64 2154339543, i64 2154340035, i64 2154339580, i64 2154339636, i64 2154339670, i64 2154339694, i64 2154339735, i64 2154339756, i64 2154339784, i64 2154339818}
!70 = !{i64 2154341153, i64 2154341645, i64 2154341190, i64 2154341246, i64 2154341280, i64 2154341304, i64 2154341345, i64 2154341366, i64 2154341394, i64 2154341428}
!71 = !{i64 2158238487}
!72 = !{i64 2158238660}
!73 = !{!"auto-init"}
!74 = !{i64 2158245898}
!75 = !{i64 2158246071}
