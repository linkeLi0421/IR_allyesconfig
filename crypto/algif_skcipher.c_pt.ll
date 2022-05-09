; ModuleID = '/llk/IR_all_yes/crypto/algif_skcipher.c_pt.bc'
source_filename = "../crypto/algif_skcipher.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.af_alg_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [14 x i8] }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.af_alg_ctx = type { %struct.list_head, ptr, i32, %struct.crypto_wait, i32, %struct.atomic_t, i8, i8, i8, i8, i32 }
%struct.list_head = type { ptr, ptr }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.113, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.4, %union.anon.111 }
%union.anon.4 = type { ptr }
%union.anon.111 = type { i64 }
%union.anon.113 = type { ptr }
%struct.af_alg_async_req = type { ptr, ptr, %struct.af_alg_rsgl, ptr, %struct.list_head, ptr, i32, i32, i32, [56 x i8], %union.anon.149 }
%struct.af_alg_rsgl = type { %struct.af_alg_sgl, %struct.list_head, i32 }
%struct.af_alg_sgl = type { [17 x %struct.scatterlist], [16 x ptr], i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%union.anon.149 = type { %struct.aead_request }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }

@algif_type_skcipher = internal constant { %struct.af_alg_type, [40 x i8] } { %struct.af_alg_type { ptr @skcipher_bind, ptr @skcipher_release, ptr @skcipher_setkey, ptr null, ptr @skcipher_accept_parent, ptr @skcipher_accept_parent_nokey, ptr null, ptr @algif_skcipher_ops, ptr @algif_skcipher_ops_nokey, ptr null, [14 x i8] c"skcipher\00\00\00\00\00\00" }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_algif_skcipher__466_386_algif_skcipher_init6 = internal global ptr @algif_skcipher_init, section ".initcall6.init", align 4
@__exitcall_algif_skcipher_exit = internal global ptr @algif_skcipher_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file467 = internal constant [42 x i8] c"algif_skcipher.file=crypto/algif_skcipher\00", section ".modinfo", align 1
@__UNIQUE_ID_license468 = internal constant [27 x i8] c"algif_skcipher.license=GPL\00", section ".modinfo", align 1
@algif_skcipher_ops = internal global { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 38, ptr null, ptr @af_alg_release, ptr @sock_no_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @sock_no_getname, ptr @af_alg_poll, ptr @sock_no_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @skcipher_sendmsg, ptr @skcipher_recvmsg, ptr @sock_no_mmap, ptr @af_alg_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@algif_skcipher_ops_nokey = internal global { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 38, ptr null, ptr @af_alg_release, ptr @sock_no_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @sock_no_getname, ptr @af_alg_poll, ptr @sock_no_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @skcipher_sendmsg_nokey, ptr @skcipher_recvmsg_nokey, ptr @sock_no_mmap, ptr @skcipher_sendpage_nokey, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@___asan_gen_.1 = private unnamed_addr constant [20 x i8] c"algif_type_skcipher\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 363, i32 33 }
@___asan_gen_.4 = private unnamed_addr constant [19 x i8] c"algif_skcipher_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 182, i32 25 }
@___asan_gen_.7 = private unnamed_addr constant [25 x i8] c"algif_skcipher_ops_nokey\00", align 1
@___asan_gen_.8 = private constant [27 x i8] c"../crypto/algif_skcipher.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 273, i32 25 }
@___asan_gen_.10 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 87, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_file467, ptr @__UNIQUE_ID_license468, ptr @__exitcall_algif_skcipher_exit, ptr @__initcall__kmod_algif_skcipher__466_386_algif_skcipher_init6, ptr @algif_skcipher_exit, ptr @algif_type_skcipher, ptr @algif_skcipher_ops, ptr @algif_skcipher_ops_nokey, ptr @init_completion.__key, ptr @.str], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @algif_type_skcipher to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @algif_skcipher_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @algif_skcipher_ops_nokey to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @algif_skcipher_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @af_alg_unregister_type(ptr noundef nonnull @algif_type_skcipher) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !25

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/algif_skcipher.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 383, 0\0A.popsection", ""() #6, !srcloc !26
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
define internal i32 @algif_skcipher_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @af_alg_register_type(ptr noundef nonnull @algif_type_skcipher) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @skcipher_bind(ptr noundef %name, i32 noundef %type, i32 noundef %mask) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @crypto_alloc_skcipher(ptr noundef %name, i32 noundef %type, i32 noundef %mask) #6
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @skcipher_release(ptr noundef %private) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %private, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %private, ptr noundef %base.i.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skcipher_setkey(ptr noundef %private, ptr noundef %key, i32 noundef %keylen) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_skcipher_setkey(ptr noundef %private, ptr noundef %key, i32 noundef %keylen) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skcipher_accept_parent(ptr nocapture noundef readonly %private, ptr noundef %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %private, i32 0, i32 2
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
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @skcipher_accept_parent_nokey(ptr noundef %private, ptr noundef %sk)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -126, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skcipher_accept_parent_nokey(ptr nocapture noundef readonly %private, ptr noundef %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @sock_kmalloc(ptr noundef %sk, i32 noundef 92, i32 noundef 3264) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = call ptr @memset(ptr %call1, i32 0, i32 92)
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %private, i32 0, i32 2, i32 3
  %1 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i = getelementptr i8, ptr %2, i32 -100
  %3 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ivsize.i, align 4
  %call3 = tail call ptr @sock_kmalloc(ptr noundef %sk, i32 noundef %4, i32 noundef 3264) #6
  %iv = getelementptr inbounds %struct.af_alg_ctx, ptr %call1, i32 0, i32 1
  %5 = ptrtoint ptr %iv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %iv, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sock_kfree_s(ptr noundef %sk, ptr noundef nonnull %call1, i32 noundef 92) #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i33 = getelementptr i8, ptr %7, i32 -100
  %8 = ptrtoint ptr %ivsize.i33 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ivsize.i33, align 4
  %10 = call ptr @memset(ptr %call3, i32 0, i32 %9)
  %11 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call1, ptr %call1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call1, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call1, ptr %prev.i, align 4
  %len10 = getelementptr inbounds %struct.af_alg_ctx, ptr %call1, i32 0, i32 10
  %13 = ptrtoint ptr %len10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 92, ptr %len10, align 4
  %wait = getelementptr inbounds %struct.af_alg_ctx, ptr %call1, i32 0, i32 3
  %14 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %wait, align 4
  %wait.i.i = getelementptr inbounds %struct.af_alg_ctx, ptr %call1, i32 0, i32 3, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #6
  %private11 = getelementptr inbounds %struct.alg_sock, ptr %sk, i32 0, i32 5
  %15 = ptrtoint ptr %private11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call1, ptr %private11, align 8
  %sk_destruct = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 82
  %16 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @skcipher_sock_destruct, ptr %sk_destruct, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -12, %if.then6 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_kfree_s(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @skcipher_sock_destruct(ptr noundef %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.alg_sock, ptr %sk, i32 0, i32 5
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %parent = getelementptr inbounds %struct.alg_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %private2 = getelementptr inbounds %struct.alg_sock, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private2, align 8
  %used = getelementptr inbounds %struct.af_alg_ctx, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %used, align 4
  tail call void @af_alg_pull_tsgl(ptr noundef %sk, i32 noundef %7, ptr noundef null, i32 noundef 0) #6
  %iv = getelementptr inbounds %struct.af_alg_ctx, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iv, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %5, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i = getelementptr i8, ptr %11, i32 -100
  %12 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ivsize.i, align 4
  tail call void @sock_kzfree_s(ptr noundef %sk, ptr noundef %9, i32 noundef %13) #6
  %len = getelementptr inbounds %struct.af_alg_ctx, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  tail call void @sock_kfree_s(ptr noundef %sk, ptr noundef %1, i32 noundef %15) #6
  tail call void @af_alg_release_parent(ptr noundef %sk) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @af_alg_pull_tsgl(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_kzfree_s(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @af_alg_release_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_release(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_bind(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_getname(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_poll(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skcipher_sendmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %parent = getelementptr inbounds %struct.alg_sock, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %private = getelementptr inbounds %struct.alg_sock, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private, align 8
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %5, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i = getelementptr i8, ptr %7, i32 -100
  %8 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ivsize.i, align 4
  %call4 = tail call i32 @af_alg_sendmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %size, i32 noundef %9) #6
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skcipher_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %ignored, i32 noundef %flags) #3 align 64 {
entry:
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #6
  %count.i.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not30 = icmp eq i32 %3, 0
  br i1 %tobool.not30, label %entry.out_crit_edge, label %while.body.lr.ph

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

while.body.lr.ph:                                 ; preds = %entry
  %msg_iocb.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %ret.031 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %4 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sk1, align 16
  %parent.i = getelementptr inbounds %struct.alg_sock, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 8
  %private.i = getelementptr inbounds %struct.alg_sock, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private.i, align 8
  %private3.i = getelementptr inbounds %struct.alg_sock, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %private3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private3.i, align 8
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %11, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %chunksize.i.i.i = getelementptr i8, ptr %13, i32 -96
  %14 = ptrtoint ptr %chunksize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chunksize.i.i.i, align 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #6
  %16 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %len.i, align 4
  %init.i = getelementptr inbounds %struct.af_alg_ctx, ptr %9, i32 0, i32 9
  %17 = ptrtoint ptr %init.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %init.i, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %while.body.if.then.i_crit_edge, label %lor.lhs.false.i

while.body.if.then.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %while.body
  %more.i = getelementptr inbounds %struct.af_alg_ctx, ptr %9, i32 0, i32 6
  %19 = ptrtoint ptr %more.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %more.i, align 4, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool5.not.i = icmp eq i8 %20, 0
  br i1 %tobool5.not.i, label %lor.lhs.false.i.if.end9.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.if.end9.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %used.i = getelementptr inbounds %struct.af_alg_ctx, ptr %9, i32 0, i32 4
  %21 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %15)
  %cmp.i = icmp ult i32 %22, %15
  br i1 %cmp.i, label %land.lhs.true.i.if.then.i_crit_edge, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %while.body.if.then.i_crit_edge
  %call6.i = call i32 @af_alg_wait_for_data(ptr noundef %5, i32 noundef %flags, i32 noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then.i.if.end9.i_crit_edge, label %if.then.i._skcipher_recvmsg.exit_crit_edge

if.then.i._skcipher_recvmsg.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_skcipher_recvmsg.exit

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then.i.if.end9.i_crit_edge, %land.lhs.true.i.if.end9.i_crit_edge, %lor.lhs.false.i.if.end9.i_crit_edge
  %23 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %11, align 128
  %add.i = add i32 %24, 640
  %call11.i = call ptr @af_alg_alloc_areq(ptr noundef %5, i32 noundef %add.i) #6
  %cmp.i.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then13.i, label %if.end15.i

if.then13.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %call11.i to i32
  br label %_skcipher_recvmsg.exit

if.end15.i:                                       ; preds = %if.end9.i
  %used16.i = getelementptr inbounds %struct.af_alg_ctx, ptr %9, i32 0, i32 4
  %26 = ptrtoint ptr %used16.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %used16.i, align 4
  %call17.i = call i32 @af_alg_get_rsgl(ptr noundef %5, ptr noundef %msg, i32 noundef %flags, ptr noundef %call11.i, i32 noundef %27, ptr noundef nonnull %len.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end15.i.free.thread.i_crit_edge

if.end15.i.free.thread.i_crit_edge:               ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free.thread.i

if.end20.i:                                       ; preds = %if.end15.i
  %more21.i = getelementptr inbounds %struct.af_alg_ctx, ptr %9, i32 0, i32 6
  %28 = ptrtoint ptr %more21.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %more21.i, align 4, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool22.not.i = icmp eq i8 %29, 0
  br i1 %tobool22.not.i, label %lor.lhs.false23.i, label %if.end20.i.if.then26.i_crit_edge

if.end20.i.if.then26.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.i

lor.lhs.false23.i:                                ; preds = %if.end20.i
  %30 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i, align 4
  %32 = ptrtoint ptr %used16.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %used16.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp25.i = icmp ult i32 %31, %33
  br i1 %cmp25.i, label %lor.lhs.false23.i.if.then26.i_crit_edge, label %lor.lhs.false23.i.if.end27.i_crit_edge

lor.lhs.false23.i.if.end27.i_crit_edge:           ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i

lor.lhs.false23.i.if.then26.i_crit_edge:          ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then26.i

if.then26.i:                                      ; preds = %lor.lhs.false23.i.if.then26.i_crit_edge, %if.end20.i.if.then26.i_crit_edge
  %34 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len.i, align 4
  %rem.i = urem i32 %35, %15
  %sub.i = sub i32 %35, %rem.i
  store i32 %sub.i, ptr %len.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then26.i, %lor.lhs.false23.i.if.end27.i_crit_edge
  %36 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i, align 4
  %call28.i = call i32 @af_alg_count_tsgl(ptr noundef %5, i32 noundef %37, i32 noundef 0) #6
  %tsgl_entries.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call11.i, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool30.not.i = icmp eq i32 %call28.i, 0
  %spec.select.i = select i1 %tobool30.not.i, i32 1, i32 %call28.i
  %38 = ptrtoint ptr %tsgl_entries.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %spec.select.i, ptr %tsgl_entries.i, align 4
  %39 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.select.i, i32 20) #6
  %40 = extractvalue { i32, i1 } %39, 1
  %41 = extractvalue { i32, i1 } %39, 0
  %retval.0.i.i = select i1 %40, i32 -1, i32 %41
  %call36.i = call ptr @sock_kmalloc(ptr noundef %5, i32 noundef %retval.0.i.i, i32 noundef 3264) #6
  %tsgl.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call11.i, i32 0, i32 5
  %42 = ptrtoint ptr %tsgl.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call36.i, ptr %tsgl.i, align 8
  %tobool38.not.i = icmp eq ptr %call36.i, null
  br i1 %tobool38.not.i, label %if.end27.i.free.thread.i_crit_edge, label %if.end40.i

if.end27.i.free.thread.i_crit_edge:               ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free.thread.i

if.end40.i:                                       ; preds = %if.end27.i
  %43 = ptrtoint ptr %tsgl_entries.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tsgl_entries.i, align 4
  call void @sg_init_table(ptr noundef nonnull %call36.i, i32 noundef %44) #6
  %45 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len.i, align 4
  %47 = ptrtoint ptr %tsgl.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tsgl.i, align 8
  call void @af_alg_pull_tsgl(ptr noundef %5, i32 noundef %46, ptr noundef %48, i32 noundef 0) #6
  %cra_u.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call11.i, i32 0, i32 10
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %11, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call11.i, i32 0, i32 10, i32 0, i32 3
  %49 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %50 = ptrtoint ptr %tsgl.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tsgl.i, align 8
  %first_rsgl.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call11.i, i32 0, i32 2
  %52 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len.i, align 4
  %iv.i = getelementptr inbounds %struct.af_alg_ctx, ptr %9, i32 0, i32 1
  %54 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %iv.i, align 4
  %src1.i.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call11.i, i32 0, i32 10, i32 0, i32 0, i32 1
  %56 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %51, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call11.i, i32 0, i32 10, i32 0, i32 0, i32 2
  %57 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %first_rsgl.i, ptr %dst2.i.i, align 4
  %58 = ptrtoint ptr %cra_u.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %53, ptr %cra_u.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call11.i, i32 0, i32 10, i32 0, i32 0, i32 0, i32 1
  %59 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %55, ptr %iv4.i.i, align 4
  %60 = ptrtoint ptr %msg_iocb.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %msg_iocb.i, align 8
  %tobool46.not.i = icmp eq ptr %61, null
  br i1 %tobool46.not.i, label %if.end40.i.if.else.i_crit_edge, label %land.lhs.true47.i

if.end40.i.if.else.i_crit_edge:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

land.lhs.true47.i:                                ; preds = %if.end40.i
  %ki_complete.i.i = getelementptr inbounds %struct.kiocb, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %ki_complete.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ki_complete.i.i, align 8
  %cmp.i1.i = icmp eq ptr %63, null
  br i1 %cmp.i1.i, label %land.lhs.true47.i.if.else.i_crit_edge, label %if.then50.i

land.lhs.true47.i.if.else.i_crit_edge:            ; preds = %land.lhs.true47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then50.i:                                      ; preds = %land.lhs.true47.i
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 19
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #6
  %64 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #6, !srcloc !28
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then50.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !29

if.then50.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then50.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %65 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %65)
  %.not.i.i.i.i.i = icmp sgt i32 %65, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !25

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then50.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then50.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #6
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge
  %66 = ptrtoint ptr %msg_iocb.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %msg_iocb.i, align 8
  %68 = ptrtoint ptr %call11.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %call11.i, align 128
  %69 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %len.i, align 4
  %outlen.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call11.i, i32 0, i32 7
  %71 = ptrtoint ptr %outlen.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %outlen.i, align 64
  %complete.i.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call11.i, i32 0, i32 10, i32 0, i32 1
  %72 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @af_alg_async_cb, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call11.i, i32 0, i32 10, i32 0, i32 2
  %73 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call11.i, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call11.i, i32 0, i32 10, i32 0, i32 4
  %74 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 512, ptr %flags4.i.i, align 4
  %enc.i = getelementptr inbounds %struct.af_alg_ctx, ptr %9, i32 0, i32 8
  %75 = ptrtoint ptr %enc.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %enc.i, align 2, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool53.not.i = icmp eq i8 %76, 0
  br i1 %tobool53.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call55.i = call i32 @crypto_skcipher_encrypt(ptr noundef %cra_u.i) #6
  br label %cond.end.i

cond.false.i:                                     ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call57.i = call i32 @crypto_skcipher_decrypt(ptr noundef %cra_u.i) #6
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call55.i, %cond.true.i ], [ %call57.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %cond.i)
  %cmp58.i = icmp eq i32 %cond.i, -115
  br i1 %cmp58.i, label %_skcipher_recvmsg.exit.thread, label %if.end60.i

_skcipher_recvmsg.exit.thread:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #6
  br label %cleanup.thread

if.end60.i:                                       ; preds = %cond.end.i
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !30
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #6
  %77 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #6, !srcloc !31
  %asmresult.i.i.i.i.i.i.i19 = extractvalue { i32, i32, i32 } %77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i19)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i19, 1
  br i1 %cmp.i.i.i.i, label %if.then.i20, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i19)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i19, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.free.i_crit_edge, label %if.then10.i.i.i.i, !prof !25

if.end5.i.i.i.i.free.i_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free.i

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #6
  br label %free.i

if.then.i20:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !32
  call void @sk_free(ptr noundef %5) #6
  br label %free.i

if.else.i:                                        ; preds = %land.lhs.true47.i.if.else.i_crit_edge, %if.end40.i.if.else.i_crit_edge
  %wait.i = getelementptr inbounds %struct.af_alg_ctx, ptr %9, i32 0, i32 3
  %complete.i2.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call11.i, i32 0, i32 10, i32 0, i32 1
  %78 = ptrtoint ptr %complete.i2.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @crypto_req_done, ptr %complete.i2.i, align 8
  %data2.i3.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call11.i, i32 0, i32 10, i32 0, i32 2
  %79 = ptrtoint ptr %data2.i3.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %wait.i, ptr %data2.i3.i, align 4
  %flags4.i4.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call11.i, i32 0, i32 10, i32 0, i32 4
  %80 = ptrtoint ptr %flags4.i4.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1536, ptr %flags4.i4.i, align 4
  %enc62.i = getelementptr inbounds %struct.af_alg_ctx, ptr %9, i32 0, i32 8
  %81 = ptrtoint ptr %enc62.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %enc62.i, align 2, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool63.not.i = icmp eq i8 %82, 0
  br i1 %tobool63.not.i, label %cond.false67.i, label %cond.true64.i

cond.true64.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %call66.i = call i32 @crypto_skcipher_encrypt(ptr noundef %cra_u.i) #6
  br label %cond.end70.i

cond.false67.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %call69.i = call i32 @crypto_skcipher_decrypt(ptr noundef %cra_u.i) #6
  br label %cond.end70.i

cond.end70.i:                                     ; preds = %cond.false67.i, %cond.true64.i
  %cond71.i = phi i32 [ %call66.i, %cond.true64.i ], [ %call69.i, %cond.false67.i ]
  %83 = zext i32 %cond71.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cond71.i, label %cond.end70.i.free.i_crit_edge [
    i32 -115, label %cond.end70.i.sw.bb.i.i_crit_edge
    i32 -16, label %cond.end70.i.sw.bb.i.i_crit_edge52
  ]

cond.end70.i.sw.bb.i.i_crit_edge52:               ; preds = %cond.end70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

cond.end70.i.sw.bb.i.i_crit_edge:                 ; preds = %cond.end70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

cond.end70.i.free.i_crit_edge:                    ; preds = %cond.end70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free.i

sw.bb.i.i:                                        ; preds = %cond.end70.i.sw.bb.i.i_crit_edge, %cond.end70.i.sw.bb.i.i_crit_edge52
  call void @wait_for_completion(ptr noundef %wait.i) #6
  %84 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %wait.i, align 4
  %err2.i.i = getelementptr inbounds %struct.af_alg_ctx, ptr %9, i32 0, i32 3, i32 1
  %85 = ptrtoint ptr %err2.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %err2.i.i, align 4
  br label %free.i

free.thread.i:                                    ; preds = %if.end27.i.free.thread.i_crit_edge, %if.end15.i.free.thread.i_crit_edge
  %err.0.ph.i = phi i32 [ -12, %if.end27.i.free.thread.i_crit_edge ], [ %call17.i, %if.end15.i.free.thread.i_crit_edge ]
  call void @af_alg_free_resources(ptr noundef %call11.i) #6
  br label %_skcipher_recvmsg.exit

free.i:                                           ; preds = %sw.bb.i.i, %cond.end70.i.free.i_crit_edge, %if.then.i20, %if.then10.i.i.i.i, %if.end5.i.i.i.i.free.i_crit_edge
  %err.0.i = phi i32 [ %cond71.i, %cond.end70.i.free.i_crit_edge ], [ %86, %sw.bb.i.i ], [ %cond.i, %if.end5.i.i.i.i.free.i_crit_edge ], [ %cond.i, %if.then10.i.i.i.i ], [ %cond.i, %if.then.i20 ]
  call void @af_alg_free_resources(ptr noundef %call11.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool75.not.i = icmp eq i32 %err.0.i, 0
  br i1 %tobool75.not.i, label %cond.false77.i, label %free.i._skcipher_recvmsg.exit_crit_edge

free.i._skcipher_recvmsg.exit_crit_edge:          ; preds = %free.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_skcipher_recvmsg.exit

cond.false77.i:                                   ; preds = %free.i
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %len.i, align 4
  br label %_skcipher_recvmsg.exit

_skcipher_recvmsg.exit:                           ; preds = %cond.false77.i, %free.i._skcipher_recvmsg.exit_crit_edge, %free.thread.i, %if.then13.i, %if.then.i._skcipher_recvmsg.exit_crit_edge
  %retval.0.i = phi i32 [ %25, %if.then13.i ], [ %call6.i, %if.then.i._skcipher_recvmsg.exit_crit_edge ], [ %88, %cond.false77.i ], [ %err.0.i, %free.i._skcipher_recvmsg.exit_crit_edge ], [ %err.0.ph.i, %free.thread.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 1
  br i1 %cmp, label %_skcipher_recvmsg.exit.cleanup.thread_crit_edge, label %cleanup

_skcipher_recvmsg.exit.cleanup.thread_crit_edge:  ; preds = %_skcipher_recvmsg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %_skcipher_recvmsg.exit.cleanup.thread_crit_edge, %_skcipher_recvmsg.exit.thread
  %retval.0.i23 = phi i32 [ -529, %_skcipher_recvmsg.exit.thread ], [ %retval.0.i, %_skcipher_recvmsg.exit.cleanup.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -529, i32 %retval.0.i23)
  %cmp3 = icmp eq i32 %retval.0.i23, -529
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.031)
  %tobool4.not = icmp eq i32 %ret.031, 0
  %or.cond = select i1 %cmp3, i1 true, i1 %tobool4.not
  %ret.1 = select i1 %or.cond, i32 %retval.0.i23, i32 %ret.031
  br label %out

cleanup:                                          ; preds = %_skcipher_recvmsg.exit
  %add = add i32 %retval.0.i, %ret.031
  %89 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %count.i.i, align 8
  %tobool.not = icmp eq i32 %90, 0
  br i1 %tobool.not, label %cleanup.out_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %cleanup.out_crit_edge, %cleanup.thread, %entry.out_crit_edge
  %ret.3 = phi i32 [ %ret.1, %cleanup.thread ], [ 0, %entry.out_crit_edge ], [ %add, %cleanup.out_crit_edge ]
  call void @af_alg_wmem_wakeup(ptr noundef %1) #6
  call void @release_sock(ptr noundef %1) #6
  ret i32 %ret.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_sendmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @af_alg_wmem_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_wait_for_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @af_alg_alloc_areq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_get_rsgl(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_count_tsgl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @af_alg_async_cb(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_req_done(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @af_alg_free_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skcipher_sendmsg_nokey(ptr noundef %sock, ptr noundef %msg, i32 noundef %size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @skcipher_check_key(ptr noundef %sock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sk1.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1.i, align 16
  %parent.i = getelementptr inbounds %struct.alg_sock, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %private.i = getelementptr inbounds %struct.alg_sock, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private.i, align 8
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %5, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %7, i32 -100
  %8 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ivsize.i.i, align 4
  %call4.i = tail call i32 @af_alg_sendmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %size, i32 noundef %9) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4.i, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skcipher_recvmsg_nokey(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %ignored, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @skcipher_check_key(ptr noundef %sock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @skcipher_recvmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %ignored, i32 noundef %flags)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skcipher_sendpage_nokey(ptr noundef %sock, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @skcipher_check_key(ptr noundef %sock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @af_alg_sendpage(ptr noundef %sock, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %flags) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @skcipher_check_key(ptr nocapture noundef readonly %sock) unnamed_addr #3 align 64 {
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
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %7, i32 0, i32 2
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
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nokey_refcnt9, ptr %nokey_refcnt9, i32 1, ptr elementtype(i32) %nokey_refcnt9) #6, !srcloc !33
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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__initcall__kmod_algif_skcipher__466_386_algif_skcipher_init6, !1, !"__initcall__kmod_algif_skcipher__466_386_algif_skcipher_init6", i1 false, i1 false}
!1 = !{!"../crypto/algif_skcipher.c", i32 386, i32 1}
!2 = !{ptr @__exitcall_algif_skcipher_exit, !3, !"__exitcall_algif_skcipher_exit", i1 false, i1 false}
!3 = !{!"../crypto/algif_skcipher.c", i32 387, i32 1}
!4 = !{ptr @__UNIQUE_ID_file467, !5, !"__UNIQUE_ID_file467", i1 false, i1 false}
!5 = !{!"../crypto/algif_skcipher.c", i32 388, i32 1}
!6 = !{ptr @__UNIQUE_ID_license468, !5, !"__UNIQUE_ID_license468", i1 false, i1 false}
!7 = !{ptr @algif_type_skcipher, !8, !"algif_type_skcipher", i1 false, i1 false}
!8 = !{!"../crypto/algif_skcipher.c", i32 363, i32 33}
!9 = !{ptr @init_completion.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../include/linux/completion.h", i32 87, i32 2}
!11 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @algif_skcipher_ops, !13, !"algif_skcipher_ops", i1 false, i1 false}
!13 = !{!"../crypto/algif_skcipher.c", i32 182, i32 25}
!14 = !{ptr @algif_skcipher_ops_nokey, !15, !"algif_skcipher_ops_nokey", i1 false, i1 false}
!15 = !{!"../crypto/algif_skcipher.c", i32 273, i32 25}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2156967342, i64 2156967830, i64 2156967379, i64 2156967435, i64 2156967469, i64 2156967493, i64 2156967534, i64 2156967555, i64 2156967583, i64 2156967617}
!27 = !{i8 0, i8 2}
!28 = !{i64 2148168132, i64 2148168164, i64 2148168193, i64 2148168227, i64 2148168258, i64 2148168281}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 2148256133}
!31 = !{i64 2148170597, i64 2148170629, i64 2148170658, i64 2148170692, i64 2148170723, i64 2148170746}
!32 = !{i64 2148879301}
!33 = !{i64 2148169067, i64 2148169093, i64 2148169122, i64 2148169156, i64 2148169187, i64 2148169210}
