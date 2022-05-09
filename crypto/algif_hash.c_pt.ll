; ModuleID = '/llk/IR_all_yes/crypto/algif_hash.c_pt.bc'
source_filename = "../crypto/algif_hash.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.af_alg_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [14 x i8] }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.hash_ctx = type { %struct.af_alg_sgl, ptr, %struct.crypto_wait, i32, i8, [35 x i8], %struct.ahash_request }
%struct.af_alg_sgl = type { [17 x %struct.scatterlist], [16 x ptr], i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.alg_sock = type { %struct.sock, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.119, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.120, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.121, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.115, [0 x i32], %union.anon.116, i16, i16, %union.anon.117, %struct.refcount_struct, [0 x i32], %union.anon.118 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
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
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.121 = type { ptr }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.113, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.111 }
%union.anon.4 = type { ptr }
%union.anon.111 = type { i64 }
%union.anon.113 = type { ptr }

@algif_type_hash = internal constant { %struct.af_alg_type, [40 x i8] } { %struct.af_alg_type { ptr @hash_bind, ptr @hash_release, ptr @hash_setkey, ptr null, ptr @hash_accept_parent, ptr @hash_accept_parent_nokey, ptr null, ptr @algif_hash_ops, ptr @algif_hash_ops_nokey, ptr null, [14 x i8] c"hash\00\00\00\00\00\00\00\00\00\00" }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_algif_hash__465_479_algif_hash_init6 = internal global ptr @algif_hash_init, section ".initcall6.init", align 4
@__exitcall_algif_hash_exit = internal global ptr @algif_hash_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file466 = internal constant [34 x i8] c"algif_hash.file=crypto/algif_hash\00", section ".modinfo", align 1
@__UNIQUE_ID_license467 = internal constant [23 x i8] c"algif_hash.license=GPL\00", section ".modinfo", align 1
@algif_hash_ops = internal global { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 38, ptr null, ptr @af_alg_release, ptr @sock_no_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @hash_accept, ptr @sock_no_getname, ptr null, ptr @sock_no_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @hash_sendmsg, ptr @hash_recvmsg, ptr @sock_no_mmap, ptr @hash_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@algif_hash_ops_nokey = internal global { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 38, ptr null, ptr @af_alg_release, ptr @sock_no_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @hash_accept_nokey, ptr @sock_no_getname, ptr null, ptr @sock_no_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @hash_sendmsg_nokey, ptr @hash_recvmsg_nokey, ptr @sock_no_mmap, ptr @hash_sendpage_nokey, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@___asan_gen_.9 = private unnamed_addr constant [16 x i8] c"algif_type_hash\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 456, i32 33 }
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"algif_hash_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 273, i32 25 }
@___asan_gen_.15 = private unnamed_addr constant [21 x i8] c"algif_hash_ops_nokey\00", align 1
@___asan_gen_.16 = private constant [23 x i8] c"../crypto/algif_hash.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 375, i32 25 }
@___asan_gen_.18 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 87, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 230, i32 6 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 214, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_file466, ptr @__UNIQUE_ID_license467, ptr @__exitcall_algif_hash_exit, ptr @__initcall__kmod_algif_hash__465_479_algif_hash_init6, ptr @algif_hash_exit, ptr @algif_type_hash, ptr @algif_hash_ops, ptr @algif_hash_ops_nokey, ptr @init_completion.__key, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @algif_type_hash to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @algif_hash_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @algif_hash_ops_nokey to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @algif_hash_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @af_alg_unregister_type(ptr noundef nonnull @algif_type_hash) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !30

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/algif_hash.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 476, 0\0A.popsection", ""() #6, !srcloc !31
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_unregister_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @algif_hash_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @af_alg_register_type(ptr noundef nonnull @algif_type_hash) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @hash_bind(ptr noundef %name, i32 noundef %type, i32 noundef %mask) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @crypto_alloc_ahash(ptr noundef %name, i32 noundef %type, i32 noundef %mask) #6
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hash_release(ptr noundef %private) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %private, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %private, ptr noundef %base.i.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_setkey(ptr noundef %private, ptr noundef %key, i32 noundef %keylen) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_ahash_setkey(ptr noundef %private, ptr noundef %key, i32 noundef %keylen) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_accept_parent(ptr noundef %private, ptr noundef %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %private, i32 0, i32 10
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base.i.i, align 128
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %reqsize.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %private, i32 0, i32 8
  %2 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reqsize.i.i, align 32
  %add.i = add i32 %3, 640
  %call2.i = tail call ptr @sock_kmalloc(ptr noundef %sk, i32 noundef %add.i, i32 noundef 3264) #6
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %result.i = getelementptr inbounds %struct.hash_ctx, ptr %call2.i, i32 0, i32 1
  %4 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %result.i, align 8
  %len3.i = getelementptr inbounds %struct.hash_ctx, ptr %call2.i, i32 0, i32 3
  %5 = ptrtoint ptr %len3.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add.i, ptr %len3.i, align 8
  %more.i = getelementptr inbounds %struct.hash_ctx, ptr %call2.i, i32 0, i32 4
  %6 = ptrtoint ptr %more.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %more.i, align 4
  %wait.i = getelementptr inbounds %struct.hash_ctx, ptr %call2.i, i32 0, i32 2
  %7 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %wait.i, align 4
  %wait.i.i.i = getelementptr inbounds %struct.hash_ctx, ptr %call2.i, i32 0, i32 2, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #6
  %private4.i = getelementptr inbounds %struct.alg_sock, ptr %sk, i32 0, i32 5
  %8 = ptrtoint ptr %private4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2.i, ptr %private4.i, align 8
  %tfm1.i.i = getelementptr inbounds %struct.hash_ctx, ptr %call2.i, i32 0, i32 6, i32 0, i32 3
  %9 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %base.i.i, ptr %tfm1.i.i, align 16
  %complete.i.i = getelementptr inbounds %struct.hash_ctx, ptr %call2.i, i32 0, i32 6, i32 0, i32 1
  %10 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @crypto_req_done, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.hash_ctx, ptr %call2.i, i32 0, i32 6, i32 0, i32 2
  %11 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %wait.i, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.hash_ctx, ptr %call2.i, i32 0, i32 6, i32 0, i32 4
  %12 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1024, ptr %flags4.i.i, align 4
  %sk_destruct.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 82
  %13 = ptrtoint ptr %sk_destruct.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @hash_sock_destruct, ptr %sk_destruct.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -126, %entry.cleanup_crit_edge ], [ 0, %if.end.i ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_accept_parent_nokey(ptr noundef %private, ptr noundef %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reqsize.i = getelementptr inbounds %struct.crypto_ahash, ptr %private, i32 0, i32 8
  %0 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reqsize.i, align 32
  %add = add i32 %1, 640
  %call2 = tail call ptr @sock_kmalloc(ptr noundef %sk, i32 noundef %add, i32 noundef 3264) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %result = getelementptr inbounds %struct.hash_ctx, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %result, align 8
  %len3 = getelementptr inbounds %struct.hash_ctx, ptr %call2, i32 0, i32 3
  %3 = ptrtoint ptr %len3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add, ptr %len3, align 8
  %more = getelementptr inbounds %struct.hash_ctx, ptr %call2, i32 0, i32 4
  %4 = ptrtoint ptr %more to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %more, align 4
  %wait = getelementptr inbounds %struct.hash_ctx, ptr %call2, i32 0, i32 2
  %5 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wait, align 4
  %wait.i.i = getelementptr inbounds %struct.hash_ctx, ptr %call2, i32 0, i32 2, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #6
  %private4 = getelementptr inbounds %struct.alg_sock, ptr %sk, i32 0, i32 5
  %6 = ptrtoint ptr %private4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %private4, align 8
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %private, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.hash_ctx, ptr %call2, i32 0, i32 6, i32 0, i32 3
  %7 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %complete.i = getelementptr inbounds %struct.hash_ctx, ptr %call2, i32 0, i32 6, i32 0, i32 1
  %8 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @crypto_req_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.hash_ctx, ptr %call2, i32 0, i32 6, i32 0, i32 2
  %9 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %wait, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.hash_ctx, ptr %call2, i32 0, i32 6, i32 0, i32 4
  %10 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1024, ptr %flags4.i, align 4
  %sk_destruct = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 82
  %11 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @hash_sock_destruct, ptr %sk_destruct, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_req_done(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hash_sock_destruct(ptr noundef %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.alg_sock, ptr %sk, i32 0, i32 5
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %result.i = getelementptr inbounds %struct.hash_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %result.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.hash_free_result.exit_crit_edge, label %if.end.i

entry.hash_free_result.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %hash_free_result.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tfm.i.i = getelementptr inbounds %struct.hash_ctx, ptr %1, i32 0, i32 6, i32 0, i32 3
  %4 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %5, i32 12
  %6 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 -128
  %8 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i.i.i, align 128
  tail call void @sock_kzfree_s(ptr noundef %sk, ptr noundef nonnull %3, i32 noundef %9) #6
  %10 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %result.i, align 8
  br label %hash_free_result.exit

hash_free_result.exit:                            ; preds = %if.end.i, %entry.hash_free_result.exit_crit_edge
  %len = getelementptr inbounds %struct.hash_ctx, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 8
  tail call void @sock_kfree_s(ptr noundef %sk, ptr noundef %1, i32 noundef %12) #6
  tail call void @af_alg_release_parent(ptr noundef %sk) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_kfree_s(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @af_alg_release_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_kzfree_s(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_release(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_bind(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_accept(ptr nocapture noundef readonly %sock, ptr noundef %newsock, i32 noundef %flags, i1 noundef zeroext %kern) #3 align 64 {
entry:
  %state = alloca [512 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %private = getelementptr inbounds %struct.alg_sock, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %state) #6
  %4 = call ptr @memset(ptr %state, i32 255, i32 512)
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #6
  %more3 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %more3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %more3, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @release_sock(ptr noundef %1) #6
  br label %if.end

cond.end:                                         ; preds = %entry
  %req2 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6
  %tfm.i.i = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6, i32 0, i32 3
  %7 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tfm.i.i, align 16
  %export.i = getelementptr i8, ptr %8, i32 -108
  %9 = ptrtoint ptr %export.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %export.i, align 4
  %call1.i = call i32 %10(ptr noundef %req2, ptr noundef nonnull %state) #6
  call void @release_sock(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool7.not = icmp eq i32 %call1.i, 0
  br i1 %tobool7.not, label %cond.end.if.end_crit_edge, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %cond.end.if.end_crit_edge, %cond.end.thread
  %parent = getelementptr inbounds %struct.alg_sock, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %call9 = call i32 @af_alg_accept(ptr noundef %12, ptr noundef %newsock, i1 noundef zeroext %kern) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %sk13 = getelementptr inbounds %struct.socket, ptr %newsock, i32 0, i32 4
  %13 = ptrtoint ptr %sk13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sk13, align 16
  %private15 = getelementptr inbounds %struct.alg_sock, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %private15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private15, align 8
  %more17 = getelementptr inbounds %struct.hash_ctx, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %more17 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %6, ptr %more17, align 4
  br i1 %tobool.not, label %if.end12.cleanup_crit_edge, label %if.end21

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %tfm.i.i53 = getelementptr inbounds %struct.hash_ctx, ptr %16, i32 0, i32 6, i32 0, i32 3
  %18 = ptrtoint ptr %tfm.i.i53 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tfm.i.i53, align 16
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 128
  %and.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_ahash_import.exit, label %if.end21.if.then26_crit_edge

if.end21.if.then26_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

crypto_ahash_import.exit:                         ; preds = %if.end21
  %req22 = getelementptr inbounds %struct.hash_ctx, ptr %16, i32 0, i32 6
  %import.i = getelementptr i8, ptr %19, i32 -104
  %22 = ptrtoint ptr %import.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %import.i, align 8
  %call2.i = call i32 %23(ptr noundef %req22, ptr noundef nonnull %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool25.not = icmp eq i32 %call2.i, 0
  br i1 %tobool25.not, label %crypto_ahash_import.exit.cleanup_crit_edge, label %crypto_ahash_import.exit.if.then26_crit_edge

crypto_ahash_import.exit.if.then26_crit_edge:     ; preds = %crypto_ahash_import.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26

crypto_ahash_import.exit.cleanup_crit_edge:       ; preds = %crypto_ahash_import.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then26:                                        ; preds = %crypto_ahash_import.exit.if.then26_crit_edge, %if.end21.if.then26_crit_edge
  %retval.0.i59 = phi i32 [ %call2.i, %crypto_ahash_import.exit.if.then26_crit_edge ], [ -126, %if.end21.if.then26_crit_edge ]
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 50
  call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #6
  %24 = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 13
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %or.i.i.i = or i32 %26, 1
  store i32 %or.i.i.i, ptr %24, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 71
  %27 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %sk_socket.i.i, align 8
  %28 = getelementptr inbounds %struct.sock, ptr %14, i32 0, i32 17
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %28, align 8
  call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #6
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %14, i32 0, i32 19
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !33
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #6
  %30 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #6, !srcloc !34
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !30

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #6
  br label %cleanup

if.then.i:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !35
  call void @sk_free(ptr noundef %14) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %crypto_ahash_import.exit.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %cond.end.cleanup_crit_edge ], [ %call9, %if.end.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %crypto_ahash_import.exit.cleanup_crit_edge ], [ %retval.0.i59, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %retval.0.i59, %if.then10.i.i.i.i ], [ %retval.0.i59, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %state) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_getname(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_sendmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %ignored) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %private = getelementptr inbounds %struct.alg_sock, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sk_sndbuf, align 4
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #6
  %more = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %more to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %more, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then3, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then3:                                         ; preds = %entry
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %8 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_flags, align 4
  %and = and i32 %9, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then3.if.end6_crit_edge, label %if.then5

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.then3
  %result.i = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %result.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then5.if.end6_crit_edge, label %if.end.i

if.then5.if.end6_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %tfm.i.i = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6, i32 0, i32 3
  %12 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %13, i32 12
  %14 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %15, i32 -128
  %16 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i.i.i, align 128
  tail call void @sock_kzfree_s(ptr noundef %1, ptr noundef nonnull %11, i32 noundef %17) #6
  %18 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %result.i, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.end.i, %if.then5.if.end6_crit_edge, %if.then3.if.end6_crit_edge
  %tfm.i.i109 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6, i32 0, i32 3
  %19 = ptrtoint ptr %tfm.i.i109 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tfm.i.i109, align 16
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 128
  %and.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i110 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i110, label %crypto_ahash_init.exit, label %if.end6.unlock.thread_crit_edge

if.end6.unlock.thread_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock.thread

crypto_ahash_init.exit:                           ; preds = %if.end6
  %req = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 -128
  %23 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call2.i = tail call i32 %24(ptr noundef %req) #6
  %25 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2.i, label %crypto_ahash_init.exit.crypto_wait_req.exit_crit_edge [
    i32 -115, label %crypto_ahash_init.exit.sw.bb.i_crit_edge
    i32 -16, label %crypto_ahash_init.exit.sw.bb.i_crit_edge192
  ]

crypto_ahash_init.exit.sw.bb.i_crit_edge192:      ; preds = %crypto_ahash_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

crypto_ahash_init.exit.sw.bb.i_crit_edge:         ; preds = %crypto_ahash_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

crypto_ahash_init.exit.crypto_wait_req.exit_crit_edge: ; preds = %crypto_ahash_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %crypto_wait_req.exit

sw.bb.i:                                          ; preds = %crypto_ahash_init.exit.sw.bb.i_crit_edge, %crypto_ahash_init.exit.sw.bb.i_crit_edge192
  %wait = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 2
  tail call void @wait_for_completion(ptr noundef %wait) #6
  %26 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %wait, align 4
  %err2.i = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %err2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %err2.i, align 4
  br label %crypto_wait_req.exit

crypto_wait_req.exit:                             ; preds = %sw.bb.i, %crypto_ahash_init.exit.crypto_wait_req.exit_crit_edge
  %err.addr.0.i = phi i32 [ %call2.i, %crypto_ahash_init.exit.crypto_wait_req.exit_crit_edge ], [ %28, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i)
  %tobool9.not = icmp eq i32 %err.addr.0.i, 0
  br i1 %tobool9.not, label %crypto_wait_req.exit.if.end12_crit_edge, label %crypto_wait_req.exit.unlock.thread_crit_edge

crypto_wait_req.exit.unlock.thread_crit_edge:     ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock.thread

crypto_wait_req.exit.if.end12_crit_edge:          ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end12:                                         ; preds = %crypto_wait_req.exit.if.end12_crit_edge, %entry.if.end12_crit_edge
  %29 = ptrtoint ptr %more to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %more, align 4
  %count.i.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2, i32 4
  %30 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool15.not165 = icmp eq i32 %31, 0
  br i1 %tobool15.not165, label %if.end12.while.end_crit_edge, label %while.body.lr.ph

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end12
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %req25 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6
  %src1.i = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6, i32 2
  %nbytes2.i = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6, i32 1
  %result3.i = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6, i32 3
  %tfm.i.i113 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6, i32 0, i32 3
  %wait29 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 2
  %err2.i114 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 2, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %32 = phi i32 [ %31, %while.body.lr.ph ], [ %51, %cleanup.while.body_crit_edge ]
  %copied.0166 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %33 = tail call i32 @llvm.smin.i32(i32 %5, i32 %32)
  %34 = tail call i32 @llvm.smin.i32(i32 %33, i32 65536)
  %call20 = tail call i32 @af_alg_make_sg(ptr noundef %3, ptr noundef %msg_iter, i32 noundef %34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %copied.0166)
  %tobool23.not = icmp eq i32 %copied.0166, 0
  br i1 %tobool23.not, label %if.then22.unlock.thread153_crit_edge, label %if.then22..sink.split_crit_edge

if.then22..sink.split_crit_edge:                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %.sink.split

if.then22.unlock.thread153_crit_edge:             ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock.thread153

if.end24:                                         ; preds = %while.body
  %35 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %3, ptr %src1.i, align 4
  %36 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call20, ptr %nbytes2.i, align 8
  %37 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %result3.i, align 32
  %38 = ptrtoint ptr %tfm.i.i113 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tfm.i.i113, align 16
  %__crt_alg.i = getelementptr i8, ptr %39, i32 12
  %40 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %__crt_alg.i, align 4
  tail call void @crypto_stats_get(ptr noundef %41) #6
  %42 = ptrtoint ptr %tfm.i.i113 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tfm.i.i113, align 16
  %update.i = getelementptr i8, ptr %43, i32 -124
  %44 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %update.i, align 4
  %call3.i = tail call i32 %45(ptr noundef %req25) #6
  tail call void @crypto_stats_ahash_update(i32 noundef %call20, i32 noundef %call3.i, ptr noundef %41) #6
  %46 = zext i32 %call3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %call3.i, label %if.end24.crypto_wait_req.exit117_crit_edge [
    i32 -115, label %if.end24.sw.bb.i115_crit_edge
    i32 -16, label %if.end24.sw.bb.i115_crit_edge193
  ]

if.end24.sw.bb.i115_crit_edge193:                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i115

if.end24.sw.bb.i115_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i115

if.end24.crypto_wait_req.exit117_crit_edge:       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %crypto_wait_req.exit117

sw.bb.i115:                                       ; preds = %if.end24.sw.bb.i115_crit_edge, %if.end24.sw.bb.i115_crit_edge193
  tail call void @wait_for_completion(ptr noundef %wait29) #6
  %47 = ptrtoint ptr %wait29 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %wait29, align 4
  %48 = ptrtoint ptr %err2.i114 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %err2.i114, align 4
  br label %crypto_wait_req.exit117

crypto_wait_req.exit117:                          ; preds = %sw.bb.i115, %if.end24.crypto_wait_req.exit117_crit_edge
  %err.addr.0.i116 = phi i32 [ %call3.i, %if.end24.crypto_wait_req.exit117_crit_edge ], [ %49, %sw.bb.i115 ]
  tail call void @af_alg_free_sg(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i116)
  %tobool32.not = icmp eq i32 %err.addr.0.i116, 0
  br i1 %tobool32.not, label %cleanup, label %crypto_wait_req.exit117.unlock.thread153_crit_edge

crypto_wait_req.exit117.unlock.thread153_crit_edge: ; preds = %crypto_wait_req.exit117
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock.thread153

cleanup:                                          ; preds = %crypto_wait_req.exit117
  %add = add i32 %call20, %copied.0166
  tail call void @iov_iter_advance(ptr noundef %msg_iter, i32 noundef %call20) #6
  %50 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %count.i.i, align 8
  %tobool15.not = icmp eq i32 %51, 0
  br i1 %tobool15.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end12.while.end_crit_edge
  %copied.0.lcssa = phi i32 [ 0, %if.end12.while.end_crit_edge ], [ %add, %cleanup.while.end_crit_edge ]
  %msg_flags36 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %52 = ptrtoint ptr %msg_flags36 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %msg_flags36, align 4
  %and37 = and i32 %53, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %and37.lobit = lshr exact i32 %and37, 15
  %54 = trunc i32 %and37.lobit to i8
  %55 = ptrtoint ptr %more to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %more, align 4
  br i1 %tobool38.not, label %if.then42, label %while.end..sink.split_crit_edge

while.end..sink.split_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %.sink.split

if.then42:                                        ; preds = %while.end
  %result.i118 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 1
  %56 = ptrtoint ptr %result.i118 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %result.i118, align 8
  %tobool.not.i119 = icmp eq ptr %57, null
  br i1 %tobool.not.i119, label %if.end.i124, label %if.then42.if.end46_crit_edge

if.then42.if.end46_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.end.i124:                                      ; preds = %if.then42
  %tfm.i.i120 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6, i32 0, i32 3
  %58 = ptrtoint ptr %tfm.i.i120 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tfm.i.i120, align 16
  %__crt_alg.i.i.i121 = getelementptr i8, ptr %59, i32 12
  %60 = ptrtoint ptr %__crt_alg.i.i.i121 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %__crt_alg.i.i.i121, align 4
  %add.ptr.i.i.i.i122 = getelementptr i8, ptr %61, i32 -128
  %62 = ptrtoint ptr %add.ptr.i.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr.i.i.i.i122, align 128
  %call2.i123 = tail call ptr @sock_kmalloc(ptr noundef %1, i32 noundef %63, i32 noundef 3264) #6
  %64 = ptrtoint ptr %result.i118 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call2.i123, ptr %result.i118, align 8
  %tobool5.not.i = icmp eq ptr %call2.i123, null
  br i1 %tobool5.not.i, label %if.end.i124.unlock.thread_crit_edge, label %if.end7.i

if.end.i124.unlock.thread_crit_edge:              ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock.thread

if.end7.i:                                        ; preds = %if.end.i124
  call void @__sanitizer_cov_trace_pc() #8
  %65 = call ptr @memset(ptr %call2.i123, i32 0, i32 %63)
  br label %if.end46

if.end46:                                         ; preds = %if.end7.i, %if.then42.if.end46_crit_edge
  %req47 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6
  %66 = ptrtoint ptr %result.i118 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %result.i118, align 8
  %src1.i126 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6, i32 2
  %68 = ptrtoint ptr %src1.i126 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %src1.i126, align 4
  %nbytes2.i127 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6, i32 1
  %69 = ptrtoint ptr %nbytes2.i127 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %nbytes2.i127, align 8
  %result3.i128 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6, i32 3
  %70 = ptrtoint ptr %result3.i128 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %result3.i128, align 32
  %call49 = tail call i32 @crypto_ahash_final(ptr noundef %req47) #6
  %71 = zext i32 %call49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %call49, label %if.end46.unlock_crit_edge [
    i32 -115, label %if.end46.sw.bb.i130_crit_edge
    i32 -16, label %if.end46.sw.bb.i130_crit_edge194
  ]

if.end46.sw.bb.i130_crit_edge194:                 ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i130

if.end46.sw.bb.i130_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i130

if.end46.unlock_crit_edge:                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

sw.bb.i130:                                       ; preds = %if.end46.sw.bb.i130_crit_edge, %if.end46.sw.bb.i130_crit_edge194
  %wait50 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 2
  tail call void @wait_for_completion(ptr noundef %wait50) #6
  %72 = ptrtoint ptr %wait50 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %wait50, align 4
  %err2.i129 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 2, i32 1
  %73 = ptrtoint ptr %err2.i129 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %err2.i129, align 4
  br label %unlock

unlock.thread:                                    ; preds = %if.end.i124.unlock.thread_crit_edge, %crypto_wait_req.exit.unlock.thread_crit_edge, %if.end6.unlock.thread_crit_edge
  %err.1.ph = phi i32 [ -12, %if.end.i124.unlock.thread_crit_edge ], [ %err.addr.0.i, %crypto_wait_req.exit.unlock.thread_crit_edge ], [ -126, %if.end6.unlock.thread_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #6
  br label %76

unlock.thread153:                                 ; preds = %crypto_wait_req.exit117.unlock.thread153_crit_edge, %if.then22.unlock.thread153_crit_edge
  %err.1.ph152 = phi i32 [ %call20, %if.then22.unlock.thread153_crit_edge ], [ %err.addr.0.i116, %crypto_wait_req.exit117.unlock.thread153_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #6
  br label %76

unlock:                                           ; preds = %sw.bb.i130, %if.end46.unlock_crit_edge
  %err.1 = phi i32 [ %call49, %if.end46.unlock_crit_edge ], [ %74, %sw.bb.i130 ]
  tail call void @release_sock(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool53.not = icmp eq i32 %err.1, 0
  br i1 %tobool53.not, label %unlock._crit_edge, label %unlock._crit_edge195

unlock._crit_edge195:                             ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #8
  br label %76

unlock._crit_edge:                                ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #8
  br label %75

.sink.split:                                      ; preds = %while.end..sink.split_crit_edge, %if.then22..sink.split_crit_edge
  %copied.0163.ph = phi i32 [ %copied.0166, %if.then22..sink.split_crit_edge ], [ %copied.0.lcssa, %while.end..sink.split_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #6
  br label %75

75:                                               ; preds = %.sink.split, %unlock._crit_edge
  %copied.0163 = phi i32 [ %copied.0.lcssa, %unlock._crit_edge ], [ %copied.0163.ph, %.sink.split ]
  br label %76

76:                                               ; preds = %75, %unlock._crit_edge195, %unlock.thread153, %unlock.thread
  %77 = phi i32 [ %copied.0163, %75 ], [ %err.1, %unlock._crit_edge195 ], [ %err.1.ph, %unlock.thread ], [ %err.1.ph152, %unlock.thread153 ]
  ret i32 %77
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %private = getelementptr inbounds %struct.alg_sock, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %req = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6, i32 0, i32 3
  %4 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %5, i32 12
  %6 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 -128
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %len)
  %cmp = icmp ult i32 %9, %len
  br i1 %cmp, label %entry.if.end6_crit_edge, label %if.else

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %len)
  %cmp4 = icmp ugt i32 %9, %len
  br i1 %cmp4, label %if.then5, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %10 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_flags, align 4
  %or = or i32 %11, 32
  store i32 %or, ptr %msg_flags, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.else.if.end6_crit_edge, %entry.if.end6_crit_edge
  %len.addr.0 = phi i32 [ %len, %if.then5 ], [ %len, %if.else.if.end6_crit_edge ], [ %9, %entry.if.end6_crit_edge ]
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #6
  %result7 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %result7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %result7, align 8
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.end.i, label %lor.lhs.false.critedge

if.end.i:                                         ; preds = %if.end6
  %14 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %15, i32 12
  %16 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %17, i32 -128
  %18 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i.i.i, align 128
  %call2.i = tail call ptr @sock_kmalloc(ptr noundef %1, i32 noundef %19, i32 noundef 3264) #6
  %20 = ptrtoint ptr %result7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call2.i, ptr %result7, align 8
  %tobool5.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool5.not.i, label %hash_free_result.exit.thread, label %land.lhs.true

hash_free_result.exit.thread:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @release_sock(ptr noundef %1) #6
  br label %61

land.lhs.true:                                    ; preds = %if.end.i
  %21 = call ptr @memset(ptr %call2.i, i32 0, i32 %19)
  %22 = ptrtoint ptr %result7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %result7, align 8
  %src1.i86 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6, i32 2
  %24 = ptrtoint ptr %src1.i86 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %src1.i86, align 4
  %nbytes2.i87 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6, i32 1
  %25 = ptrtoint ptr %nbytes2.i87 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %nbytes2.i87, align 8
  %result3.i88 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6, i32 3
  %26 = ptrtoint ptr %result3.i88 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %result3.i88, align 32
  %more = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 4
  %27 = ptrtoint ptr %more to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %more, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool15.not = icmp eq i8 %28, 0
  br i1 %tobool15.not, label %if.then16, label %land.lhs.true.if.then27_crit_edge

land.lhs.true.if.then27_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27

if.then16:                                        ; preds = %land.lhs.true
  %29 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tfm.i, align 16
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 128
  %and.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i69 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i69, label %crypto_ahash_init.exit, label %if.then16.unlock_crit_edge

if.then16.unlock_crit_edge:                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

crypto_ahash_init.exit:                           ; preds = %if.then16
  %add.ptr.i.i.i70 = getelementptr i8, ptr %30, i32 -128
  %33 = ptrtoint ptr %add.ptr.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i.i.i70, align 128
  %call2.i71 = tail call i32 %34(ptr noundef %req) #6
  %35 = zext i32 %call2.i71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %call2.i71, label %crypto_ahash_init.exit.crypto_wait_req.exit_crit_edge [
    i32 -115, label %crypto_ahash_init.exit.sw.bb.i_crit_edge
    i32 -16, label %crypto_ahash_init.exit.sw.bb.i_crit_edge98
  ]

crypto_ahash_init.exit.sw.bb.i_crit_edge98:       ; preds = %crypto_ahash_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

crypto_ahash_init.exit.sw.bb.i_crit_edge:         ; preds = %crypto_ahash_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

crypto_ahash_init.exit.crypto_wait_req.exit_crit_edge: ; preds = %crypto_ahash_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %crypto_wait_req.exit

sw.bb.i:                                          ; preds = %crypto_ahash_init.exit.sw.bb.i_crit_edge, %crypto_ahash_init.exit.sw.bb.i_crit_edge98
  %wait = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 2
  tail call void @wait_for_completion(ptr noundef %wait) #6
  %36 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %wait, align 4
  %err2.i = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %err2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %err2.i, align 4
  br label %crypto_wait_req.exit

crypto_wait_req.exit:                             ; preds = %sw.bb.i, %crypto_ahash_init.exit.crypto_wait_req.exit_crit_edge
  %err.addr.0.i = phi i32 [ %call2.i71, %crypto_ahash_init.exit.crypto_wait_req.exit_crit_edge ], [ %38, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i)
  %tobool20.not = icmp eq i32 %err.addr.0.i, 0
  br i1 %tobool20.not, label %crypto_wait_req.exit.if.then27_crit_edge, label %crypto_wait_req.exit.unlock_crit_edge

crypto_wait_req.exit.unlock_crit_edge:            ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

crypto_wait_req.exit.if.then27_crit_edge:         ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27

lor.lhs.false.critedge:                           ; preds = %if.end6
  %39 = ptrtoint ptr %result7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %result7, align 8
  %src1.i = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6, i32 2
  %41 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %src1.i, align 4
  %nbytes2.i = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6, i32 1
  %42 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %nbytes2.i, align 8
  %result3.i = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6, i32 3
  %43 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %result3.i, align 32
  %more25 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 4
  %44 = ptrtoint ptr %more25 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %more25, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool26.not = icmp eq i8 %45, 0
  br i1 %tobool26.not, label %lor.lhs.false.critedge.if.end36_crit_edge, label %lor.lhs.false.critedge.if.then27_crit_edge

lor.lhs.false.critedge.if.then27_crit_edge:       ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27

lor.lhs.false.critedge.if.end36_crit_edge:        ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then27:                                        ; preds = %lor.lhs.false.critedge.if.then27_crit_edge, %crypto_wait_req.exit.if.then27_crit_edge, %land.lhs.true.if.then27_crit_edge
  %more28 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 4
  %46 = ptrtoint ptr %more28 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %more28, align 4
  %call30 = tail call i32 @crypto_ahash_final(ptr noundef %req) #6
  %47 = zext i32 %call30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %call30, label %if.then27.crypto_wait_req.exit77_crit_edge [
    i32 -115, label %if.then27.sw.bb.i75_crit_edge
    i32 -16, label %if.then27.sw.bb.i75_crit_edge99
  ]

if.then27.sw.bb.i75_crit_edge99:                  ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i75

if.then27.sw.bb.i75_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i75

if.then27.crypto_wait_req.exit77_crit_edge:       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %crypto_wait_req.exit77

sw.bb.i75:                                        ; preds = %if.then27.sw.bb.i75_crit_edge, %if.then27.sw.bb.i75_crit_edge99
  %wait31 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 2
  tail call void @wait_for_completion(ptr noundef %wait31) #6
  %48 = ptrtoint ptr %wait31 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %wait31, align 4
  %err2.i74 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %err2.i74 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %err2.i74, align 4
  br label %crypto_wait_req.exit77

crypto_wait_req.exit77:                           ; preds = %sw.bb.i75, %if.then27.crypto_wait_req.exit77_crit_edge
  %err.addr.0.i76 = phi i32 [ %call30, %if.then27.crypto_wait_req.exit77_crit_edge ], [ %50, %sw.bb.i75 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i76)
  %tobool33.not = icmp eq i32 %err.addr.0.i76, 0
  br i1 %tobool33.not, label %crypto_wait_req.exit77.if.end36_crit_edge, label %crypto_wait_req.exit77.unlock_crit_edge

crypto_wait_req.exit77.unlock_crit_edge:          ; preds = %crypto_wait_req.exit77
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

crypto_wait_req.exit77.if.end36_crit_edge:        ; preds = %crypto_wait_req.exit77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.end36:                                         ; preds = %crypto_wait_req.exit77.if.end36_crit_edge, %lor.lhs.false.critedge.if.end36_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.0)
  %cmp9.i.i.i = icmp slt i32 %len.addr.0, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.end36
  %.b1.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge, label %if.then27.i.i.i, !prof !30

land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge:    ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %memcpy_to_msg.exit

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #6
  br label %memcpy_to_msg.exit

if.then.i.i.i.i:                                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %51 = ptrtoint ptr %result7 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %result7, align 8
  tail call void @__check_object_size(ptr noundef %52, i32 noundef %len.addr.0, i1 noundef zeroext true) #6
  %call3.i.i = tail call i32 @_copy_to_iter(ptr noundef %52, i32 noundef %len.addr.0, ptr noundef %msg_iter.i) #6
  br label %memcpy_to_msg.exit

memcpy_to_msg.exit:                               ; preds = %if.then.i.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i.i.i ], [ 0, %if.then27.i.i.i ], [ 0, %land.rhs16.i.i.i.memcpy_to_msg.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %len.addr.0)
  %cmp.i = icmp eq i32 %retval.0.i.i, %len.addr.0
  %cond.i = select i1 %cmp.i, i32 0, i32 -14
  br label %unlock

unlock:                                           ; preds = %memcpy_to_msg.exit, %crypto_wait_req.exit77.unlock_crit_edge, %crypto_wait_req.exit.unlock_crit_edge, %if.then16.unlock_crit_edge
  %err.0.ph = phi i32 [ %err.addr.0.i, %crypto_wait_req.exit.unlock_crit_edge ], [ %cond.i, %memcpy_to_msg.exit ], [ %err.addr.0.i76, %crypto_wait_req.exit77.unlock_crit_edge ], [ -126, %if.then16.unlock_crit_edge ]
  %53 = ptrtoint ptr %result7 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr = load ptr, ptr %result7, align 8
  %tobool.not.i79 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i79, label %unlock.hash_free_result.exit_crit_edge, label %if.end.i83

unlock.hash_free_result.exit_crit_edge:           ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #8
  br label %hash_free_result.exit

if.end.i83:                                       ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i.i81 = getelementptr i8, ptr %55, i32 12
  %56 = ptrtoint ptr %__crt_alg.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %__crt_alg.i.i.i81, align 4
  %add.ptr.i.i.i.i82 = getelementptr i8, ptr %57, i32 -128
  %58 = ptrtoint ptr %add.ptr.i.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %add.ptr.i.i.i.i82, align 128
  tail call void @sock_kzfree_s(ptr noundef %1, ptr noundef nonnull %.pr, i32 noundef %59) #6
  %60 = ptrtoint ptr %result7 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %result7, align 8
  br label %hash_free_result.exit

hash_free_result.exit:                            ; preds = %if.end.i83, %unlock.hash_free_result.exit_crit_edge
  tail call void @release_sock(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.ph)
  %tobool39.not = icmp eq i32 %err.0.ph, 0
  %spec.select = select i1 %tobool39.not, i32 %len.addr.0, i32 %err.0.ph
  br label %61

61:                                               ; preds = %hash_free_result.exit, %hash_free_result.exit.thread
  %62 = phi i32 [ -12, %hash_free_result.exit.thread ], [ %spec.select, %hash_free_result.exit ]
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_sendpage(ptr nocapture noundef readonly %sock, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %private = getelementptr inbounds %struct.alg_sock, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %and = lshr i32 %flags, 2
  %4 = or i32 %and, %flags
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #6
  tail call void @sg_init_table(ptr noundef %3, i32 noundef 1) #6
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %3, align 4
  %7 = ptrtoint ptr %page to i32
  %and2.i.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !30

do.body5.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #6, !srcloc !36
  unreachable

do.body11.i.i:                                    ; preds = %entry
  %and.i.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !30

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #6, !srcloc !37
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %6, 3
  %or.i.i = or i32 %and.i.i, %7
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or.i.i, ptr %3, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %offset, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %size, ptr %length.i, align 4
  %and5 = and i32 %4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %sg_set_page.exit
  %result.i = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %result.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then7.if.then21_crit_edge

if.then7.if.then21_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

if.end.i:                                         ; preds = %if.then7
  %tfm.i.i = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6, i32 0, i32 3
  %13 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tfm.i.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %14, i32 12
  %15 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %16, i32 -128
  %17 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i.i.i.i, align 128
  %call2.i = tail call ptr @sock_kmalloc(ptr noundef %1, i32 noundef %18, i32 noundef 3264) #6
  %19 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call2.i, ptr %result.i, align 8
  %tobool5.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool5.not.i, label %if.end.i.unlock.thread_crit_edge, label %if.end7.i

if.end.i.unlock.thread_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock.thread

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %20 = call ptr @memset(ptr %call2.i, i32 0, i32 %18)
  br label %if.then21

if.else:                                          ; preds = %sg_set_page.exit
  %more = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %more to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %more, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool12.not = icmp eq i8 %22, 0
  br i1 %tobool12.not, label %if.then13, label %if.else.if.else31_crit_edge

if.else.if.else31_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else31

if.then13:                                        ; preds = %if.else
  %result.i86 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 1
  %23 = ptrtoint ptr %result.i86 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %result.i86, align 8
  %tobool.not.i87 = icmp eq ptr %24, null
  br i1 %tobool.not.i87, label %if.then13.if.else31_crit_edge, label %if.end.i91

if.then13.if.else31_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else31

if.end.i91:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %tfm.i.i88 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6, i32 0, i32 3
  %25 = ptrtoint ptr %tfm.i.i88 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tfm.i.i88, align 16
  %__crt_alg.i.i.i89 = getelementptr i8, ptr %26, i32 12
  %27 = ptrtoint ptr %__crt_alg.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %__crt_alg.i.i.i89, align 4
  %add.ptr.i.i.i.i90 = getelementptr i8, ptr %28, i32 -128
  %29 = ptrtoint ptr %add.ptr.i.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i.i.i90, align 128
  tail call void @sock_kzfree_s(ptr noundef %1, ptr noundef nonnull %24, i32 noundef %30) #6
  %31 = ptrtoint ptr %result.i86 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %result.i86, align 8
  br label %if.else31

if.then21:                                        ; preds = %if.end7.i, %if.then7.if.then21_crit_edge
  %req = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6
  %32 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %result.i, align 8
  %src1.i = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6, i32 2
  %34 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %3, ptr %src1.i, align 4
  %nbytes2.i = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6, i32 1
  %35 = ptrtoint ptr %nbytes2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %size, ptr %nbytes2.i, align 8
  %result3.i = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6, i32 3
  %36 = ptrtoint ptr %result3.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %result3.i, align 32
  %more22 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 4
  %37 = ptrtoint ptr %more22 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %more22, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool23.not = icmp eq i8 %38, 0
  br i1 %tobool23.not, label %if.else27, label %if.then24

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = tail call i32 @crypto_ahash_finup(ptr noundef %req) #6
  br label %if.end44

if.else27:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %call29 = tail call i32 @crypto_ahash_digest(ptr noundef %req) #6
  br label %if.end44

if.else31:                                        ; preds = %if.end.i91, %if.then13.if.else31_crit_edge, %if.else.if.else31_crit_edge
  %req104 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6
  %result105 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 1
  %39 = ptrtoint ptr %result105 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %result105, align 8
  %src1.i106 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6, i32 2
  %41 = ptrtoint ptr %src1.i106 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %3, ptr %src1.i106, align 4
  %nbytes2.i107 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6, i32 1
  %42 = ptrtoint ptr %nbytes2.i107 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %size, ptr %nbytes2.i107, align 8
  %result3.i108 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6, i32 3
  %43 = ptrtoint ptr %result3.i108 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %result3.i108, align 32
  %44 = ptrtoint ptr %more to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %more, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool33.not = icmp eq i8 %45, 0
  br i1 %tobool33.not, label %if.then34, label %if.else31.if.end41_crit_edge

if.else31.if.end41_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then34:                                        ; preds = %if.else31
  %tfm.i.i92 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6, i32 0, i32 3
  %46 = ptrtoint ptr %tfm.i.i92 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tfm.i.i92, align 16
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 128
  %and.i = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i93 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i93, label %crypto_ahash_init.exit, label %if.then34.unlock.thread_crit_edge

if.then34.unlock.thread_crit_edge:                ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock.thread

crypto_ahash_init.exit:                           ; preds = %if.then34
  %add.ptr.i.i.i = getelementptr i8, ptr %47, i32 -128
  %50 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call2.i94 = tail call i32 %51(ptr noundef %req104) #6
  %52 = zext i32 %call2.i94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %call2.i94, label %crypto_ahash_init.exit.crypto_wait_req.exit_crit_edge [
    i32 -115, label %crypto_ahash_init.exit.sw.bb.i_crit_edge
    i32 -16, label %crypto_ahash_init.exit.sw.bb.i_crit_edge122
  ]

crypto_ahash_init.exit.sw.bb.i_crit_edge122:      ; preds = %crypto_ahash_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

crypto_ahash_init.exit.sw.bb.i_crit_edge:         ; preds = %crypto_ahash_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

crypto_ahash_init.exit.crypto_wait_req.exit_crit_edge: ; preds = %crypto_ahash_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %crypto_wait_req.exit

sw.bb.i:                                          ; preds = %crypto_ahash_init.exit.sw.bb.i_crit_edge, %crypto_ahash_init.exit.sw.bb.i_crit_edge122
  %wait = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 2
  tail call void @wait_for_completion(ptr noundef %wait) #6
  %53 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %wait, align 4
  %err2.i = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 2, i32 1
  %54 = ptrtoint ptr %err2.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %err2.i, align 4
  br label %crypto_wait_req.exit

crypto_wait_req.exit:                             ; preds = %sw.bb.i, %crypto_ahash_init.exit.crypto_wait_req.exit_crit_edge
  %err.addr.0.i = phi i32 [ %call2.i94, %crypto_ahash_init.exit.crypto_wait_req.exit_crit_edge ], [ %55, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i)
  %tobool38.not = icmp eq i32 %err.addr.0.i, 0
  br i1 %tobool38.not, label %crypto_wait_req.exit.if.end41_crit_edge, label %crypto_wait_req.exit.unlock.thread_crit_edge

crypto_wait_req.exit.unlock.thread_crit_edge:     ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock.thread

crypto_wait_req.exit.if.end41_crit_edge:          ; preds = %crypto_wait_req.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.end41:                                         ; preds = %crypto_wait_req.exit.if.end41_crit_edge, %if.else31.if.end41_crit_edge
  %tfm.i.i97 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 6, i32 0, i32 3
  %56 = ptrtoint ptr %tfm.i.i97 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tfm.i.i97, align 16
  %__crt_alg.i = getelementptr i8, ptr %57, i32 12
  %58 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %__crt_alg.i, align 4
  %60 = ptrtoint ptr %nbytes2.i107 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nbytes2.i107, align 8
  tail call void @crypto_stats_get(ptr noundef %59) #6
  %62 = ptrtoint ptr %tfm.i.i97 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tfm.i.i97, align 16
  %update.i = getelementptr i8, ptr %63, i32 -124
  %64 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %update.i, align 4
  %call3.i = tail call i32 %65(ptr noundef %req104) #6
  tail call void @crypto_stats_ahash_update(i32 noundef %61, i32 noundef %call3.i, ptr noundef %59) #6
  br label %if.end44

if.end44:                                         ; preds = %if.end41, %if.else27, %if.then24
  %err.0 = phi i32 [ %call3.i, %if.end41 ], [ %call26, %if.then24 ], [ %call29, %if.else27 ]
  %66 = zext i32 %err.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %err.0, label %if.end44.crypto_wait_req.exit101_crit_edge [
    i32 -115, label %if.end44.sw.bb.i99_crit_edge
    i32 -16, label %if.end44.sw.bb.i99_crit_edge123
  ]

if.end44.sw.bb.i99_crit_edge123:                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i99

if.end44.sw.bb.i99_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i99

if.end44.crypto_wait_req.exit101_crit_edge:       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %crypto_wait_req.exit101

sw.bb.i99:                                        ; preds = %if.end44.sw.bb.i99_crit_edge, %if.end44.sw.bb.i99_crit_edge123
  %wait45 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 2
  tail call void @wait_for_completion(ptr noundef %wait45) #6
  %67 = ptrtoint ptr %wait45 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %wait45, align 4
  %err2.i98 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 2, i32 1
  %68 = ptrtoint ptr %err2.i98 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %err2.i98, align 4
  br label %crypto_wait_req.exit101

crypto_wait_req.exit101:                          ; preds = %sw.bb.i99, %if.end44.crypto_wait_req.exit101_crit_edge
  %err.addr.0.i100 = phi i32 [ %err.0, %if.end44.crypto_wait_req.exit101_crit_edge ], [ %69, %sw.bb.i99 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i100)
  %tobool47.not = icmp eq i32 %err.addr.0.i100, 0
  br i1 %tobool47.not, label %70, label %crypto_wait_req.exit101.unlock.thread_crit_edge

crypto_wait_req.exit101.unlock.thread_crit_edge:  ; preds = %crypto_wait_req.exit101
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock.thread

70:                                               ; preds = %crypto_wait_req.exit101
  call void @__sanitizer_cov_trace_pc() #8
  %more52 = getelementptr inbounds %struct.hash_ctx, ptr %3, i32 0, i32 4
  %and5.lobit = lshr exact i32 %and5, 15
  %71 = trunc i32 %and5.lobit to i8
  %72 = ptrtoint ptr %more52 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %more52, align 4
  br label %unlock.thread

unlock.thread:                                    ; preds = %70, %crypto_wait_req.exit101.unlock.thread_crit_edge, %crypto_wait_req.exit.unlock.thread_crit_edge, %if.then34.unlock.thread_crit_edge, %if.end.i.unlock.thread_crit_edge
  %73 = phi i32 [ %size, %70 ], [ -12, %if.end.i.unlock.thread_crit_edge ], [ %err.addr.0.i, %crypto_wait_req.exit.unlock.thread_crit_edge ], [ %err.addr.0.i100, %crypto_wait_req.exit101.unlock.thread_crit_edge ], [ -126, %if.then34.unlock.thread_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #6
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_accept(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_make_sg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @af_alg_free_sg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_ahash_update(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_finup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_digest(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_accept_nokey(ptr nocapture noundef readonly %sock, ptr noundef %newsock, i32 noundef %flags, i1 noundef zeroext %kern) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @hash_check_key(ptr noundef %sock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @hash_accept(ptr noundef %sock, ptr noundef %newsock, i32 noundef %flags, i1 noundef zeroext %kern)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_sendmsg_nokey(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @hash_check_key(ptr noundef %sock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @hash_sendmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %size)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_recvmsg_nokey(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %ignored, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @hash_check_key(ptr noundef %sock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @hash_recvmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %ignored, i32 noundef %flags)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hash_sendpage_nokey(ptr nocapture noundef readonly %sock, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @hash_check_key(ptr noundef %sock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @hash_sendpage(ptr noundef %sock, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %flags)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hash_check_key(ptr nocapture noundef readonly %sock) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #6
  %nokey_refcnt = getelementptr inbounds %struct.alg_sock, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nokey_refcnt, i32 noundef 4) #6
  %2 = ptrtoint ptr %nokey_refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %nokey_refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.unlock_child_crit_edge, label %if.end

entry.unlock_child_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock_child

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.alg_sock, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %private = getelementptr inbounds %struct.alg_sock, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private, align 8
  tail call void @lock_sock_nested(ptr noundef %5, i32 noundef 1) #6
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i.i, align 128
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %nokey_refcnt9 = getelementptr inbounds %struct.alg_sock, ptr %5, i32 0, i32 3
  %call.i.i18 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nokey_refcnt9, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %nokey_refcnt9, i32 1, i32 3, i32 1) #6
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nokey_refcnt9, ptr %nokey_refcnt9, i32 1, ptr elementtype(i32) %nokey_refcnt9) #6, !srcloc !38
  %call.i.i19 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nokey_refcnt, i32 noundef 4) #6
  %11 = ptrtoint ptr %nokey_refcnt to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 0, ptr %nokey_refcnt, align 4
  br label %unlock

unlock:                                           ; preds = %if.end8, %if.end.unlock_crit_edge
  %err.0 = phi i32 [ -126, %if.end.unlock_crit_edge ], [ 0, %if.end8 ]
  tail call void @release_sock(ptr noundef %5) #6
  br label %unlock_child

unlock_child:                                     ; preds = %unlock, %entry.unlock_child_crit_edge
  %err.1 = phi i32 [ %err.0, %unlock ], [ 0, %entry.unlock_child_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #6
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_register_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__initcall__kmod_algif_hash__465_479_algif_hash_init6, !1, !"__initcall__kmod_algif_hash__465_479_algif_hash_init6", i1 false, i1 false}
!1 = !{!"../crypto/algif_hash.c", i32 479, i32 1}
!2 = !{ptr @__exitcall_algif_hash_exit, !3, !"__exitcall_algif_hash_exit", i1 false, i1 false}
!3 = !{!"../crypto/algif_hash.c", i32 480, i32 1}
!4 = !{ptr @__UNIQUE_ID_file466, !5, !"__UNIQUE_ID_file466", i1 false, i1 false}
!5 = !{!"../crypto/algif_hash.c", i32 481, i32 1}
!6 = !{ptr @__UNIQUE_ID_license467, !5, !"__UNIQUE_ID_license467", i1 false, i1 false}
!7 = !{ptr @algif_type_hash, !8, !"algif_type_hash", i1 false, i1 false}
!8 = !{!"../crypto/algif_hash.c", i32 456, i32 33}
!9 = !{ptr @init_completion.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../include/linux/completion.h", i32 87, i32 2}
!11 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @algif_hash_ops, !13, !"algif_hash_ops", i1 false, i1 false}
!13 = !{!"../crypto/algif_hash.c", i32 273, i32 25}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!19 = !{ptr @algif_hash_ops_nokey, !20, !"algif_hash_ops_nokey", i1 false, i1 false}
!20 = !{!"../crypto/algif_hash.c", i32 375, i32 25}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"branch_weights", i32 2000, i32 1}
!31 = !{i64 2156994271, i64 2156994755, i64 2156994308, i64 2156994364, i64 2156994398, i64 2156994422, i64 2156994463, i64 2156994484, i64 2156994512, i64 2156994546}
!32 = !{i8 0, i8 2}
!33 = !{i64 2148278265}
!34 = !{i64 2148192729, i64 2148192761, i64 2148192790, i64 2148192824, i64 2148192855, i64 2148192878}
!35 = !{i64 2148903608}
!36 = !{i64 2153483261, i64 2153483753, i64 2153483298, i64 2153483354, i64 2153483388, i64 2153483412, i64 2153483453, i64 2153483474, i64 2153483502, i64 2153483536}
!37 = !{i64 2153484871, i64 2153485363, i64 2153484908, i64 2153484964, i64 2153484998, i64 2153485022, i64 2153485063, i64 2153485084, i64 2153485112, i64 2153485146}
!38 = !{i64 2148191199, i64 2148191225, i64 2148191254, i64 2148191288, i64 2148191319, i64 2148191342}
