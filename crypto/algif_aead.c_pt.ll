; ModuleID = '/llk/IR_all_yes/crypto/algif_aead.c_pt.bc'
source_filename = "../crypto/algif_aead.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.af_alg_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [14 x i8] }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.9 }
%union.anon.9 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.aead_tfm = type { ptr, ptr }
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
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.af_alg_tsgl = type { %struct.list_head, i32, [0 x %struct.scatterlist] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.af_alg_async_req = type { ptr, ptr, %struct.af_alg_rsgl, ptr, %struct.list_head, ptr, i32, i32, i32, [56 x i8], %union.anon.149 }
%struct.af_alg_rsgl = type { %struct.af_alg_sgl, %struct.list_head, i32 }
%struct.af_alg_sgl = type { [17 x %struct.scatterlist], [16 x ptr], i32 }
%union.anon.149 = type { %struct.aead_request }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.kiocb = type { ptr, i64, ptr, ptr, i32, i16, i16, ptr }

@algif_type_aead = internal constant { %struct.af_alg_type, [40 x i8] } { %struct.af_alg_type { ptr @aead_bind, ptr @aead_release, ptr @aead_setkey, ptr null, ptr @aead_accept_parent, ptr @aead_accept_parent_nokey, ptr @aead_setauthsize, ptr @algif_aead_ops, ptr @algif_aead_ops_nokey, ptr null, [14 x i8] c"aead\00\00\00\00\00\00\00\00\00\00" }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_algif_aead__466_601_algif_aead_init6 = internal global ptr @algif_aead_init, section ".initcall6.init", align 4
@__exitcall_algif_aead_exit = internal global ptr @algif_aead_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file467 = internal constant [34 x i8] c"algif_aead.file=crypto/algif_aead\00", section ".modinfo", align 1
@__UNIQUE_ID_license468 = internal constant [23 x i8] c"algif_aead.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author469 = internal constant [56 x i8] c"algif_aead.author=Stephan Mueller <smueller@chronox.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description470 = internal constant [67 x i8] c"algif_aead.description=AEAD kernel crypto API user space interface\00", section ".modinfo", align 1
@algif_aead_ops = internal global { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 38, ptr null, ptr @af_alg_release, ptr @sock_no_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @sock_no_getname, ptr @af_alg_poll, ptr @sock_no_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @aead_sendmsg, ptr @aead_recvmsg, ptr @sock_no_mmap, ptr @af_alg_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@algif_aead_ops_nokey = internal global { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 38, ptr null, ptr @af_alg_release, ptr @sock_no_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @sock_no_getname, ptr @af_alg_poll, ptr @sock_no_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @aead_sendmsg_nokey, ptr @aead_recvmsg_nokey, ptr @sock_no_mmap, ptr @aead_sendpage_nokey, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 4294966767, i64 4294967222]
@___asan_gen_.2 = private unnamed_addr constant [16 x i8] c"algif_type_aead\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 577, i32 33 }
@___asan_gen_.5 = private unnamed_addr constant [15 x i8] c"algif_aead_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 356, i32 25 }
@___asan_gen_.8 = private unnamed_addr constant [21 x i8] c"algif_aead_ops_nokey\00", align 1
@___asan_gen_.9 = private constant [23 x i8] c"../crypto/algif_aead.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 447, i32 25 }
@___asan_gen_.11 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 87, i32 2 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author469, ptr @__UNIQUE_ID_description470, ptr @__UNIQUE_ID_file467, ptr @__UNIQUE_ID_license468, ptr @__exitcall_algif_aead_exit, ptr @__initcall__kmod_algif_aead__466_601_algif_aead_init6, ptr @algif_aead_exit, ptr @algif_type_aead, ptr @algif_aead_ops, ptr @algif_aead_ops_nokey, ptr @init_completion.__key, ptr @.str], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @algif_type_aead to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @algif_aead_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @algif_aead_ops_nokey to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @algif_aead_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @af_alg_unregister_type(ptr noundef nonnull @algif_type_aead) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !29

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/algif_aead.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 598, 0\0A.popsection", ""() #7, !srcloc !30
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_unregister_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @algif_aead_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @af_alg_register_type(ptr noundef nonnull @algif_type_aead) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @aead_bind(ptr noundef %name, i32 noundef %type, i32 noundef %mask) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @crypto_alloc_aead(ptr noundef %name, i32 noundef %type, i32 noundef %mask) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @crypto_get_default_null_skcipher() #7
  %cmp.i26 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i26, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %call2, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %call2, ptr noundef %base.i.i) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %call7.i.i, align 8
  %null_tfm13 = getelementptr inbounds %struct.aead_tfm, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %null_tfm13 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7, ptr %null_tfm13, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %if.then4 ], [ %call7, %if.then9 ], [ %call7.i.i, %if.end11 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aead_release(ptr noundef %private) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %1, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #7
  tail call void @crypto_put_default_null_skcipher() #7
  tail call void @kfree(ptr noundef %private) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aead_setkey(ptr nocapture noundef readonly %private, ptr noundef %key, i32 noundef %keylen) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %call = tail call i32 @crypto_aead_setkey(ptr noundef %1, ptr noundef %key, i32 noundef %keylen) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aead_accept_parent(ptr nocapture noundef readonly %private, ptr noundef %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base.i.i, align 128
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %1, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %ivsize.i.i.i = getelementptr i8, ptr %5, i32 -104
  %6 = ptrtoint ptr %ivsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ivsize.i.i.i, align 8
  %call3.i = tail call ptr @sock_kmalloc(ptr noundef %sk, i32 noundef 92, i32 noundef 3264) #7
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %8 = call ptr @memset(ptr %call3.i, i32 0, i32 92)
  %call4.i = tail call ptr @sock_kmalloc(ptr noundef %sk, i32 noundef %7, i32 noundef 3264) #7
  %iv.i = getelementptr inbounds %struct.af_alg_ctx, ptr %call3.i, i32 0, i32 1
  %9 = ptrtoint ptr %iv.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call4.i, ptr %iv.i, align 4
  %tobool6.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sock_kfree_s(ptr noundef %sk, ptr noundef nonnull %call3.i, i32 noundef 92) #7
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = call ptr @memset(ptr %call4.i, i32 0, i32 %7)
  %11 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %call3.i, ptr %call3.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call3.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call3.i, ptr %prev.i.i, align 4
  %len10.i = getelementptr inbounds %struct.af_alg_ctx, ptr %call3.i, i32 0, i32 10
  %13 = ptrtoint ptr %len10.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 92, ptr %len10.i, align 4
  %wait.i = getelementptr inbounds %struct.af_alg_ctx, ptr %call3.i, i32 0, i32 3
  %14 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %wait.i, align 4
  %wait.i.i.i = getelementptr inbounds %struct.af_alg_ctx, ptr %call3.i, i32 0, i32 3, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #7
  %private11.i = getelementptr inbounds %struct.alg_sock, ptr %sk, i32 0, i32 5
  %15 = ptrtoint ptr %private11.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call3.i, ptr %private11.i, align 8
  %sk_destruct.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 82
  %16 = ptrtoint ptr %sk_destruct.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @aead_sock_destruct, ptr %sk_destruct.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8.i, %if.then7.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -126, %entry.cleanup_crit_edge ], [ 0, %if.end8.i ], [ -12, %if.then7.i ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aead_accept_parent_nokey(ptr nocapture noundef readonly %private, ptr noundef %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %1, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %3, i32 -104
  %4 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ivsize.i.i, align 8
  %call3 = tail call ptr @sock_kmalloc(ptr noundef %sk, i32 noundef 92, i32 noundef 3264) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = call ptr @memset(ptr %call3, i32 0, i32 92)
  %call4 = tail call ptr @sock_kmalloc(ptr noundef %sk, i32 noundef %5, i32 noundef 3264) #7
  %iv = getelementptr inbounds %struct.af_alg_ctx, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %iv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4, ptr %iv, align 4
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sock_kfree_s(ptr noundef %sk, ptr noundef nonnull %call3, i32 noundef 92) #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = call ptr @memset(ptr %call4, i32 0, i32 %5)
  %9 = ptrtoint ptr %call3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call3, ptr %call3, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call3, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call3, ptr %prev.i, align 4
  %len10 = getelementptr inbounds %struct.af_alg_ctx, ptr %call3, i32 0, i32 10
  %11 = ptrtoint ptr %len10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 92, ptr %len10, align 4
  %wait = getelementptr inbounds %struct.af_alg_ctx, ptr %call3, i32 0, i32 3
  %12 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %wait, align 4
  %wait.i.i = getelementptr inbounds %struct.af_alg_ctx, ptr %call3, i32 0, i32 3, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #7
  %private11 = getelementptr inbounds %struct.alg_sock, ptr %sk, i32 0, i32 5
  %13 = ptrtoint ptr %private11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call3, ptr %private11, align 8
  %sk_destruct = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 82
  %14 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @aead_sock_destruct, ptr %sk_destruct, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -12, %if.then7 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aead_setauthsize(ptr nocapture noundef readonly %private, i32 noundef %authsize) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %call = tail call i32 @crypto_aead_setauthsize(ptr noundef %1, i32 noundef %authsize) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_aead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_get_default_null_skcipher() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_put_default_null_skcipher() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_kfree_s(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aead_sock_destruct(ptr noundef %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %7, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %9, i32 -104
  %10 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ivsize.i.i, align 8
  %used = getelementptr inbounds %struct.af_alg_ctx, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %used, align 4
  tail call void @af_alg_pull_tsgl(ptr noundef %sk, i32 noundef %13, ptr noundef null, i32 noundef 0) #7
  %iv = getelementptr inbounds %struct.af_alg_ctx, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iv, align 4
  tail call void @sock_kzfree_s(ptr noundef %sk, ptr noundef %15, i32 noundef %11) #7
  %len = getelementptr inbounds %struct.af_alg_ctx, ptr %1, i32 0, i32 10
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  tail call void @sock_kfree_s(ptr noundef %sk, ptr noundef %1, i32 noundef %17) #7
  tail call void @af_alg_release_parent(ptr noundef %sk) #7
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
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #2

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
define internal i32 @aead_sendmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %7, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %9, i32 -104
  %10 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ivsize.i.i, align 8
  %call4 = tail call i32 @af_alg_sendmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %size, i32 noundef %11) #7
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aead_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %ignored, i32 noundef %flags) #3 align 64 {
entry:
  %__skreq_desc.i6.i = alloca [512 x i8], align 128
  %__skreq_desc.i.i = alloca [512 x i8], align 128
  %usedpages.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #7
  %count.i.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not34 = icmp eq i32 %3, 0
  br i1 %tobool.not34, label %entry.out_crit_edge, label %while.body.lr.ph

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

while.body.lr.ph:                                 ; preds = %entry
  %tfm1.i.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i.i, i32 0, i32 4, i32 3
  %complete.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i.i, i32 0, i32 4, i32 1
  %data2.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i.i, i32 0, i32 4, i32 2
  %flags4.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i.i, i32 0, i32 4, i32 4
  %src1.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i.i, i32 0, i32 2
  %dst2.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i.i, i32 0, i32 3
  %iv4.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i.i, i32 0, i32 1
  %tfm1.i.i.i8.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i6.i, i32 0, i32 4, i32 3
  %complete.i.i9.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i6.i, i32 0, i32 4, i32 1
  %data2.i.i10.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i6.i, i32 0, i32 4, i32 2
  %flags4.i.i11.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i6.i, i32 0, i32 4, i32 4
  %src1.i.i12.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i6.i, i32 0, i32 2
  %dst2.i.i13.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i6.i, i32 0, i32 3
  %iv4.i.i14.i = getelementptr inbounds %struct.skcipher_request, ptr %__skreq_desc.i6.i, i32 0, i32 1
  %msg_iocb.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %ret.035 = phi i32 [ 0, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
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
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %null_tfm4.i = getelementptr inbounds %struct.aead_tfm, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %null_tfm4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %null_tfm4.i, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %13, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %usedpages.i) #7
  %18 = ptrtoint ptr %usedpages.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %usedpages.i, align 4
  %init.i = getelementptr inbounds %struct.af_alg_ctx, ptr %9, i32 0, i32 9
  %19 = ptrtoint ptr %init.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %init.i, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %while.body.if.then.i_crit_edge, label %lor.lhs.false.i

while.body.if.then.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %while.body
  %more.i = getelementptr inbounds %struct.af_alg_ctx, ptr %9, i32 0, i32 6
  %21 = ptrtoint ptr %more.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %more.i, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool6.not.i = icmp eq i8 %22, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i.if.end10.i_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i.if.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %while.body.if.then.i_crit_edge
  %call7.i = call i32 @af_alg_wait_for_data(ptr noundef %5, i32 noundef %flags, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then.i.if.end10.i_crit_edge, label %if.then.i._aead_recvmsg.exit_crit_edge

if.then.i._aead_recvmsg.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_aead_recvmsg.exit

if.then.i.if.end10.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then.i.if.end10.i_crit_edge, %lor.lhs.false.i.if.end10.i_crit_edge
  %23 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent.i, align 8
  %25 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %private.i, align 8
  %private2.i.i = getelementptr inbounds %struct.alg_sock, ptr %24, i32 0, i32 5
  %27 = ptrtoint ptr %private2.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %private2.i.i, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 128
  %used.i.i = getelementptr inbounds %struct.af_alg_ctx, ptr %26, i32 0, i32 4
  %33 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %used.i.i, align 4
  %aead_assoclen.i.i = getelementptr inbounds %struct.af_alg_ctx, ptr %26, i32 0, i32 2
  %35 = ptrtoint ptr %aead_assoclen.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %aead_assoclen.i.i, align 4
  %enc.i.i = getelementptr inbounds %struct.af_alg_ctx, ptr %26, i32 0, i32 8
  %37 = ptrtoint ptr %enc.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %enc.i.i, align 2, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.i = icmp eq i8 %38, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 %32, i32 0
  %add.i.i = add i32 %spec.select.i.i, %36
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %add.i.i)
  %cmp.i.not.i = icmp ult i32 %34, %add.i.i
  br i1 %cmp.i.not.i, label %if.end10.i._aead_recvmsg.exit.thread_crit_edge, label %if.end14.i

if.end10.i._aead_recvmsg.exit.thread_crit_edge:   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_aead_recvmsg.exit.thread

if.end14.i:                                       ; preds = %if.end10.i
  %used11.i = getelementptr inbounds %struct.af_alg_ctx, ptr %9, i32 0, i32 4
  %39 = ptrtoint ptr %used11.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %used11.i, align 4
  %enc.i = getelementptr inbounds %struct.af_alg_ctx, ptr %9, i32 0, i32 8
  %41 = ptrtoint ptr %enc.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %enc.i, align 2, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool15.not.i = icmp eq i8 %42, 0
  %43 = sub i32 0, %17
  %outlen.0.p.i = select i1 %tobool15.not.i, i32 %43, i32 %17
  %outlen.0.i = add i32 %outlen.0.p.i, %40
  %aead_assoclen.i = getelementptr inbounds %struct.af_alg_ctx, ptr %9, i32 0, i32 2
  %44 = ptrtoint ptr %aead_assoclen.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %aead_assoclen.i, align 4
  %sub18.i = sub i32 %40, %45
  %reqsize.i.i = getelementptr inbounds %struct.crypto_aead, ptr %13, i32 0, i32 1
  %46 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %reqsize.i.i, align 4
  %add20.i = add i32 %47, 640
  %call21.i = call ptr @af_alg_alloc_areq(ptr noundef %5, i32 noundef %add20.i) #7
  %cmp.i5.i = icmp ugt ptr %call21.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i5.i, label %if.then23.i, label %if.end25.i

if.then23.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %call21.i to i32
  br label %_aead_recvmsg.exit

if.end25.i:                                       ; preds = %if.end14.i
  %call26.i = call i32 @af_alg_get_rsgl(ptr noundef %5, ptr noundef %msg, i32 noundef %flags, ptr noundef %call21.i, i32 noundef %outlen.0.i, ptr noundef nonnull %usedpages.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end25.i.free.thread.i_crit_edge

if.end25.i.free.thread.i_crit_edge:               ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free.thread.i

if.end29.i:                                       ; preds = %if.end25.i
  %49 = ptrtoint ptr %usedpages.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %usedpages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %outlen.0.i, i32 %50)
  %cmp.i = icmp ugt i32 %outlen.0.i, %50
  br i1 %cmp.i, label %if.then30.i, label %if.end29.i.if.end37.i_crit_edge

if.end29.i.if.end37.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i

if.then30.i:                                      ; preds = %if.end29.i
  %sub31.i = sub i32 %outlen.0.i, %50
  call void @__sanitizer_cov_trace_cmp4(i32 %sub18.i, i32 %sub31.i)
  %cmp32.i = icmp ult i32 %sub18.i, %sub31.i
  br i1 %cmp32.i, label %if.then30.i.free.thread.i_crit_edge, label %cleanup.thread.i

if.then30.i.free.thread.i_crit_edge:              ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free.thread.i

cleanup.thread.i:                                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub35.i = sub i32 %sub18.i, %sub31.i
  br label %if.end37.i

if.end37.i:                                       ; preds = %cleanup.thread.i, %if.end29.i.if.end37.i_crit_edge
  %used.1.i = phi i32 [ %sub18.i, %if.end29.i.if.end37.i_crit_edge ], [ %sub35.i, %cleanup.thread.i ]
  %outlen.2.i = phi i32 [ %outlen.0.i, %if.end29.i.if.end37.i_crit_edge ], [ %50, %cleanup.thread.i ]
  %51 = ptrtoint ptr %aead_assoclen.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %aead_assoclen.i, align 4
  %add39.i = add i32 %52, %used.1.i
  %53 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %9, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.end.i.for.cond.i_crit_edge, %if.end37.i
  %tsgl.0.i = phi ptr [ %54, %if.end37.i ], [ %tmp.0.i, %for.end.i.for.cond.i_crit_edge ]
  %55 = ptrtoint ptr %tsgl.0.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %tmp.0.i = load ptr, ptr %tsgl.0.i, align 4
  %cmp47.not.i = icmp eq ptr %tsgl.0.i, %9
  br i1 %cmp47.not.i, label %for.end69.i, label %for.cond48.preheader.i

for.cond48.preheader.i:                           ; preds = %for.cond.i
  %cur.i = getelementptr inbounds %struct.af_alg_tsgl, ptr %tsgl.0.i, i32 0, i32 1
  %56 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cur.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp4941.not.i = icmp eq i32 %57, 0
  br i1 %cmp4941.not.i, label %for.cond48.preheader.i.for.end.i_crit_edge, label %for.body50.lr.ph.i

for.cond48.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond48.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body50.lr.ph.i:                               ; preds = %for.cond48.preheader.i
  %sg.i = getelementptr inbounds %struct.af_alg_tsgl, ptr %tsgl.0.i, i32 0, i32 2
  br label %for.body50.i

for.body50.i:                                     ; preds = %for.inc.i.for.body50.i_crit_edge, %for.body50.lr.ph.i
  %i.043.i = phi i32 [ 0, %for.body50.lr.ph.i ], [ %inc.i, %for.inc.i.for.body50.i_crit_edge ]
  %add.ptr51.i = getelementptr %struct.scatterlist, ptr %sg.i, i32 %i.043.i
  %length.i = getelementptr %struct.scatterlist, ptr %sg.i, i32 %i.043.i, i32 2
  %58 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool52.not.i = icmp eq i32 %59, 0
  br i1 %tobool52.not.i, label %for.body50.i.for.inc.i_crit_edge, label %lor.lhs.false53.i

for.body50.i.for.inc.i_crit_edge:                 ; preds = %for.body50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false53.i:                                ; preds = %for.body50.i
  %60 = ptrtoint ptr %add.ptr51.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr51.i, align 4
  %and.i.i.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %cleanup58.i, label %do.body2.i.i, !prof !29

do.body2.i.i:                                     ; preds = %lor.lhs.false53.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #7, !srcloc !32
  unreachable

cleanup58.i:                                      ; preds = %lor.lhs.false53.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %61)
  %tobool55.not.i = icmp ult i32 %61, 4
  br i1 %tobool55.not.i, label %cleanup58.i.for.inc.i_crit_edge, label %cleanup58.i.for.end.i_crit_edge

cleanup58.i.for.end.i_crit_edge:                  ; preds = %cleanup58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

cleanup58.i.for.inc.i_crit_edge:                  ; preds = %cleanup58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %cleanup58.i.for.inc.i_crit_edge, %for.body50.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.043.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %57
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body50.i_crit_edge

for.inc.i.for.body50.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body50.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %cleanup58.i.for.end.i_crit_edge, %for.cond48.preheader.i.for.end.i_crit_edge
  %tsgl_src.3.i = phi ptr [ null, %for.cond48.preheader.i.for.end.i_crit_edge ], [ null, %for.inc.i.for.end.i_crit_edge ], [ %add.ptr51.i, %cleanup58.i.for.end.i_crit_edge ]
  %tobool60.not.i = icmp eq ptr %tsgl_src.3.i, null
  br i1 %tobool60.not.i, label %for.end.i.for.cond.i_crit_edge, label %for.end.i.if.end73.i_crit_edge

for.end.i.if.end73.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73.i

for.end.i.for.cond.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

for.end69.i:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add39.i)
  %tobool70.not.not.i = icmp eq i32 %add39.i, 0
  br i1 %tobool70.not.not.i, label %for.end69.i.if.end73.i_crit_edge, label %for.end69.i.free.thread.i_crit_edge

for.end69.i.free.thread.i_crit_edge:              ; preds = %for.end69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free.thread.i

for.end69.i.if.end73.i_crit_edge:                 ; preds = %for.end69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73.i

if.end73.i:                                       ; preds = %for.end69.i.if.end73.i_crit_edge, %for.end.i.if.end73.i_crit_edge
  %tsgl_src.436.i = phi ptr [ null, %for.end69.i.if.end73.i_crit_edge ], [ %tsgl_src.3.i, %for.end.i.if.end73.i_crit_edge ]
  %first_rsgl.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call21.i, i32 0, i32 2
  %62 = ptrtoint ptr %enc.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %enc.i, align 2, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool77.not.i = icmp eq i8 %63, 0
  br i1 %tobool77.not.i, label %if.else87.i, label %if.then78.i

if.then78.i:                                      ; preds = %if.end73.i
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %__skreq_desc.i.i) #7
  %64 = call ptr @memset(ptr %__skreq_desc.i.i, i32 255, i32 512)
  %base.i.i.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %15, i32 0, i32 2
  %65 = ptrtoint ptr %tfm1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %base.i.i.i.i.i, ptr %tfm1.i.i.i.i, align 32
  %66 = ptrtoint ptr %complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %complete.i.i.i, align 8
  %67 = ptrtoint ptr %data2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %data2.i.i.i, align 4
  %68 = ptrtoint ptr %flags4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 512, ptr %flags4.i.i.i, align 4
  %69 = ptrtoint ptr %src1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %tsgl_src.436.i, ptr %src1.i.i.i, align 8
  %70 = ptrtoint ptr %dst2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %first_rsgl.i, ptr %dst2.i.i.i, align 4
  %71 = ptrtoint ptr %__skreq_desc.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add39.i, ptr %__skreq_desc.i.i, align 128
  %72 = ptrtoint ptr %iv4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %iv4.i.i.i, align 4
  %call.i.i = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %__skreq_desc.i.i) #7
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %__skreq_desc.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool84.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool84.not.i, label %if.end86.i, label %if.then78.i.free.thread.i_crit_edge

if.then78.i.free.thread.i_crit_edge:              ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free.thread.i

if.end86.i:                                       ; preds = %if.then78.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @af_alg_pull_tsgl(ptr noundef %5, i32 noundef %add39.i, ptr noundef null, i32 noundef 0) #7
  br label %if.end130.i

if.else87.i:                                      ; preds = %if.end73.i
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %__skreq_desc.i6.i) #7
  %73 = call ptr @memset(ptr %__skreq_desc.i6.i, i32 255, i32 512)
  %base.i.i.i.i7.i = getelementptr inbounds %struct.crypto_skcipher, ptr %15, i32 0, i32 2
  %74 = ptrtoint ptr %tfm1.i.i.i8.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %base.i.i.i.i7.i, ptr %tfm1.i.i.i8.i, align 32
  %75 = ptrtoint ptr %complete.i.i9.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %complete.i.i9.i, align 8
  %76 = ptrtoint ptr %data2.i.i10.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %data2.i.i10.i, align 4
  %77 = ptrtoint ptr %flags4.i.i11.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 512, ptr %flags4.i.i11.i, align 4
  %78 = ptrtoint ptr %src1.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %tsgl_src.436.i, ptr %src1.i.i12.i, align 8
  %79 = ptrtoint ptr %dst2.i.i13.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %first_rsgl.i, ptr %dst2.i.i13.i, align 4
  %80 = ptrtoint ptr %__skreq_desc.i6.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %outlen.2.i, ptr %__skreq_desc.i6.i, align 128
  %81 = ptrtoint ptr %iv4.i.i14.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %iv4.i.i14.i, align 4
  %call.i15.i = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %__skreq_desc.i6.i) #7
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %__skreq_desc.i6.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %tobool93.not.i = icmp eq i32 %call.i15.i, 0
  br i1 %tobool93.not.i, label %if.end95.i, label %if.else87.i.free.thread.i_crit_edge

if.else87.i.free.thread.i_crit_edge:              ; preds = %if.else87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free.thread.i

if.end95.i:                                       ; preds = %if.else87.i
  %sub96.i = sub i32 %add39.i, %17
  %call97.i = call i32 @af_alg_count_tsgl(ptr noundef %5, i32 noundef %add39.i, i32 noundef %sub96.i) #7
  %tsgl_entries.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call21.i, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97.i)
  %tobool99.not.i = icmp eq i32 %call97.i, 0
  %spec.select.i = select i1 %tobool99.not.i, i32 1, i32 %call97.i
  %82 = ptrtoint ptr %tsgl_entries.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %spec.select.i, ptr %tsgl_entries.i, align 4
  %83 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.select.i, i32 20) #7
  %84 = extractvalue { i32, i1 } %83, 1
  %85 = extractvalue { i32, i1 } %83, 0
  %retval.0.i.i = select i1 %84, i32 -1, i32 %85
  %call105.i = call ptr @sock_kmalloc(ptr noundef %5, i32 noundef %retval.0.i.i, i32 noundef 3264) #7
  %tsgl106.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call21.i, i32 0, i32 5
  %86 = ptrtoint ptr %tsgl106.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call105.i, ptr %tsgl106.i, align 8
  %tobool108.not.i = icmp eq ptr %call105.i, null
  br i1 %tobool108.not.i, label %if.end95.i.free.thread.i_crit_edge, label %if.end110.i

if.end95.i.free.thread.i_crit_edge:               ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free.thread.i

if.end110.i:                                      ; preds = %if.end95.i
  %87 = ptrtoint ptr %tsgl_entries.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tsgl_entries.i, align 4
  call void @sg_init_table(ptr noundef nonnull %call105.i, i32 noundef %88) #7
  %89 = ptrtoint ptr %tsgl106.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %tsgl106.i, align 8
  call void @af_alg_pull_tsgl(ptr noundef %5, i32 noundef %add39.i, ptr noundef %90, i32 noundef %sub96.i) #7
  %91 = ptrtoint ptr %usedpages.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %usedpages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool115.not.i = icmp eq i32 %92, 0
  br i1 %tobool115.not.i, label %if.else127.i, label %if.then116.i

if.then116.i:                                     ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #9
  %last_rsgl.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call21.i, i32 0, i32 3
  %93 = ptrtoint ptr %last_rsgl.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %last_rsgl.i, align 4
  %npages.i = getelementptr inbounds %struct.af_alg_sgl, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %npages.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %npages.i, align 4
  %add.ptr120.i = getelementptr %struct.scatterlist, ptr %94, i32 -1
  %add.ptr121.i = getelementptr %struct.scatterlist, ptr %add.ptr120.i, i32 %96
  %97 = ptrtoint ptr %add.ptr121.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %add.ptr121.i, align 4
  %and.i16.i = and i32 %98, -3
  store i32 %and.i16.i, ptr %add.ptr121.i, align 4
  %99 = load i32, ptr %npages.i, align 4
  %100 = ptrtoint ptr %tsgl106.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %tsgl106.i, align 8
  %arrayidx.i.i = getelementptr %struct.scatterlist, ptr %94, i32 %99
  %offset.i.i.i = getelementptr %struct.scatterlist, ptr %94, i32 %99, i32 1
  %102 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %offset.i.i.i, align 4
  %length.i.i.i = getelementptr %struct.scatterlist, ptr %94, i32 %99, i32 2
  %103 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %length.i.i.i, align 4
  %104 = ptrtoint ptr %101 to i32
  %or.i.i.i = and i32 %104, -4
  %and.i.i17.i = or i32 %or.i.i.i, 1
  %105 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %and.i.i17.i, ptr %arrayidx.i.i, align 4
  br label %if.end130.i

if.else127.i:                                     ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %tsgl106.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tsgl106.i, align 8
  br label %if.end130.i

if.end130.i:                                      ; preds = %if.else127.i, %if.then116.i, %if.end86.i
  %rsgl_src.0.i = phi ptr [ %first_rsgl.i, %if.end86.i ], [ %first_rsgl.i, %if.then116.i ], [ %107, %if.else127.i ]
  %cra_u.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call21.i, i32 0, i32 10
  %iv.i = getelementptr inbounds %struct.af_alg_ctx, ptr %9, i32 0, i32 1
  %108 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %iv.i, align 4
  %src1.i.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call21.i, i32 0, i32 10, i32 0, i32 4
  %110 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %rsgl_src.0.i, ptr %src1.i.i, align 4
  %dst2.i.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call21.i, i32 0, i32 10, i32 0, i32 5
  %111 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %first_rsgl.i, ptr %dst2.i.i, align 8
  %cryptlen3.i.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call21.i, i32 0, i32 10, i32 0, i32 2
  %112 = ptrtoint ptr %cryptlen3.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %used.1.i, ptr %cryptlen3.i.i, align 4
  %iv4.i.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call21.i, i32 0, i32 10, i32 0, i32 3
  %113 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %109, ptr %iv4.i.i, align 32
  %114 = ptrtoint ptr %aead_assoclen.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %aead_assoclen.i, align 4
  %assoclen1.i.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call21.i, i32 0, i32 10, i32 0, i32 1
  %116 = ptrtoint ptr %assoclen1.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %assoclen1.i.i, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %13, i32 0, i32 3
  %tfm1.i.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call21.i, i32 0, i32 10, i32 0, i32 0, i32 3
  %117 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %118 = ptrtoint ptr %msg_iocb.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %msg_iocb.i, align 8
  %tobool138.not.i = icmp eq ptr %119, null
  br i1 %tobool138.not.i, label %if.end130.i.if.else155.i_crit_edge, label %land.lhs.true139.i

if.end130.i.if.else155.i_crit_edge:               ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else155.i

land.lhs.true139.i:                               ; preds = %if.end130.i
  %ki_complete.i.i = getelementptr inbounds %struct.kiocb, ptr %119, i32 0, i32 2
  %120 = ptrtoint ptr %ki_complete.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ki_complete.i.i, align 8
  %cmp.i18.i = icmp eq ptr %121, null
  br i1 %cmp.i18.i, label %land.lhs.true139.i.if.else155.i_crit_edge, label %if.then142.i

land.lhs.true139.i.if.else155.i_crit_edge:        ; preds = %land.lhs.true139.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else155.i

if.then142.i:                                     ; preds = %land.lhs.true139.i
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %5, i32 0, i32 19
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #7
  %122 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #7, !srcloc !33
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %122, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then142.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !34

if.then142.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then142.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then142.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %123 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %123)
  %.not.i.i.i.i.i = icmp sgt i32 %123, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !29

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then142.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then142.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #7
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge
  %124 = ptrtoint ptr %msg_iocb.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %msg_iocb.i, align 8
  %126 = ptrtoint ptr %call21.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %125, ptr %call21.i, align 128
  %outlen144.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call21.i, i32 0, i32 7
  %127 = ptrtoint ptr %outlen144.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %outlen.2.i, ptr %outlen144.i, align 64
  %complete.i.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call21.i, i32 0, i32 10, i32 0, i32 0, i32 1
  %128 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @af_alg_async_cb, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call21.i, i32 0, i32 10, i32 0, i32 0, i32 2
  %129 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call21.i, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call21.i, i32 0, i32 10, i32 0, i32 0, i32 4
  %130 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 512, ptr %flags4.i.i, align 4
  %131 = ptrtoint ptr %enc.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %enc.i, align 2, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool147.not.i = icmp eq i8 %132, 0
  br i1 %tobool147.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call149.i = call i32 @crypto_aead_encrypt(ptr noundef %cra_u.i) #7
  br label %cond.end.i

cond.false.i:                                     ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call151.i = call i32 @crypto_aead_decrypt(ptr noundef %cra_u.i) #7
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call149.i, %cond.true.i ], [ %call151.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %cond.i)
  %cmp152.i = icmp eq i32 %cond.i, -115
  br i1 %cmp152.i, label %cond.end.i._aead_recvmsg.exit.thread_crit_edge, label %if.end154.i

cond.end.i._aead_recvmsg.exit.thread_crit_edge:   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_aead_recvmsg.exit.thread

if.end154.i:                                      ; preds = %cond.end.i
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !35
  call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #7
  %133 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #7, !srcloc !36
  %asmresult.i.i.i.i.i.i.i22 = extractvalue { i32, i32, i32 } %133, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i22)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i22, 1
  br i1 %cmp.i.i.i.i, label %if.then.i23, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i22)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i22, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.free.i_crit_edge, label %if.then10.i.i.i.i, !prof !29

if.end5.i.i.i.i.free.i_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free.i

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef 3) #7
  br label %free.i

if.then.i23:                                      ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !37
  call void @sk_free(ptr noundef %5) #7
  br label %free.i

if.else155.i:                                     ; preds = %land.lhs.true139.i.if.else155.i_crit_edge, %if.end130.i.if.else155.i_crit_edge
  %wait.i = getelementptr inbounds %struct.af_alg_ctx, ptr %9, i32 0, i32 3
  %complete.i19.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call21.i, i32 0, i32 10, i32 0, i32 0, i32 1
  %134 = ptrtoint ptr %complete.i19.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @crypto_req_done, ptr %complete.i19.i, align 8
  %data2.i20.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call21.i, i32 0, i32 10, i32 0, i32 0, i32 2
  %135 = ptrtoint ptr %data2.i20.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %wait.i, ptr %data2.i20.i, align 4
  %flags4.i21.i = getelementptr inbounds %struct.af_alg_async_req, ptr %call21.i, i32 0, i32 10, i32 0, i32 0, i32 4
  %136 = ptrtoint ptr %flags4.i21.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 1536, ptr %flags4.i21.i, align 4
  %137 = ptrtoint ptr %enc.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %enc.i, align 2, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool158.not.i = icmp eq i8 %138, 0
  br i1 %tobool158.not.i, label %cond.false162.i, label %cond.true159.i

cond.true159.i:                                   ; preds = %if.else155.i
  call void @__sanitizer_cov_trace_pc() #9
  %call161.i = call i32 @crypto_aead_encrypt(ptr noundef %cra_u.i) #7
  br label %cond.end165.i

cond.false162.i:                                  ; preds = %if.else155.i
  call void @__sanitizer_cov_trace_pc() #9
  %call164.i = call i32 @crypto_aead_decrypt(ptr noundef %cra_u.i) #7
  br label %cond.end165.i

cond.end165.i:                                    ; preds = %cond.false162.i, %cond.true159.i
  %cond166.i = phi i32 [ %call161.i, %cond.true159.i ], [ %call164.i, %cond.false162.i ]
  %139 = zext i32 %cond166.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cond166.i, label %cond.end165.i.free.i_crit_edge [
    i32 -115, label %cond.end165.i.sw.bb.i.i_crit_edge
    i32 -16, label %cond.end165.i.sw.bb.i.i_crit_edge61
  ]

cond.end165.i.sw.bb.i.i_crit_edge61:              ; preds = %cond.end165.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i

cond.end165.i.sw.bb.i.i_crit_edge:                ; preds = %cond.end165.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i.i

cond.end165.i.free.i_crit_edge:                   ; preds = %cond.end165.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %free.i

sw.bb.i.i:                                        ; preds = %cond.end165.i.sw.bb.i.i_crit_edge, %cond.end165.i.sw.bb.i.i_crit_edge61
  call void @wait_for_completion(ptr noundef %wait.i) #7
  %140 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %wait.i, align 4
  %err2.i.i = getelementptr inbounds %struct.af_alg_ctx, ptr %9, i32 0, i32 3, i32 1
  %141 = ptrtoint ptr %err2.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %err2.i.i, align 4
  br label %free.i

free.thread.i:                                    ; preds = %if.end95.i.free.thread.i_crit_edge, %if.else87.i.free.thread.i_crit_edge, %if.then78.i.free.thread.i_crit_edge, %for.end69.i.free.thread.i_crit_edge, %if.then30.i.free.thread.i_crit_edge, %if.end25.i.free.thread.i_crit_edge
  %err.1.ph.i = phi i32 [ -22, %if.then30.i.free.thread.i_crit_edge ], [ -12, %if.end95.i.free.thread.i_crit_edge ], [ -14, %for.end69.i.free.thread.i_crit_edge ], [ %call.i15.i, %if.else87.i.free.thread.i_crit_edge ], [ %call.i.i, %if.then78.i.free.thread.i_crit_edge ], [ %call26.i, %if.end25.i.free.thread.i_crit_edge ]
  call void @af_alg_free_resources(ptr noundef %call21.i) #7
  br label %_aead_recvmsg.exit

free.i:                                           ; preds = %sw.bb.i.i, %cond.end165.i.free.i_crit_edge, %if.then.i23, %if.then10.i.i.i.i, %if.end5.i.i.i.i.free.i_crit_edge
  %err.1.i = phi i32 [ %cond166.i, %cond.end165.i.free.i_crit_edge ], [ %142, %sw.bb.i.i ], [ %cond.i, %if.end5.i.i.i.i.free.i_crit_edge ], [ %cond.i, %if.then10.i.i.i.i ], [ %cond.i, %if.then.i23 ]
  call void @af_alg_free_resources(ptr noundef %call21.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %tobool170.not.i = icmp eq i32 %err.1.i, 0
  %spec.select40.i = select i1 %tobool170.not.i, i32 %outlen.2.i, i32 %err.1.i
  br label %_aead_recvmsg.exit

_aead_recvmsg.exit.thread:                        ; preds = %cond.end.i._aead_recvmsg.exit.thread_crit_edge, %if.end10.i._aead_recvmsg.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -529, %cond.end.i._aead_recvmsg.exit.thread_crit_edge ], [ -22, %if.end10.i._aead_recvmsg.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %usedpages.i) #7
  br label %if.then

_aead_recvmsg.exit:                               ; preds = %free.i, %free.thread.i, %if.then23.i, %if.then.i._aead_recvmsg.exit_crit_edge
  %retval.0.i = phi i32 [ %48, %if.then23.i ], [ %call7.i, %if.then.i._aead_recvmsg.exit_crit_edge ], [ %err.1.ph.i, %free.thread.i ], [ %spec.select40.i, %free.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %usedpages.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 1
  br i1 %cmp, label %_aead_recvmsg.exit.if.then_crit_edge, label %cleanup

_aead_recvmsg.exit.if.then_crit_edge:             ; preds = %_aead_recvmsg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %_aead_recvmsg.exit.if.then_crit_edge, %_aead_recvmsg.exit.thread
  %retval.0.i26 = phi i32 [ %retval.0.i.ph, %_aead_recvmsg.exit.thread ], [ %retval.0.i, %_aead_recvmsg.exit.if.then_crit_edge ]
  %143 = zext i32 %retval.0.i26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %143, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %retval.0.i26, label %lor.lhs.false5 [
    i32 -529, label %if.then.if.then7_crit_edge
    i32 -74, label %if.then.if.then7_crit_edge62
  ]

if.then.if.then7_crit_edge62:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then.if.then7_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

lor.lhs.false5:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.035)
  %tobool6.not = icmp eq i32 %ret.035, 0
  br i1 %tobool6.not, label %lor.lhs.false5.if.then7_crit_edge, label %lor.lhs.false5.out_crit_edge

lor.lhs.false5.out_crit_edge:                     ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

lor.lhs.false5.if.then7_crit_edge:                ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then7:                                         ; preds = %lor.lhs.false5.if.then7_crit_edge, %if.then.if.then7_crit_edge, %if.then.if.then7_crit_edge62
  br label %out

cleanup:                                          ; preds = %_aead_recvmsg.exit
  %add = add i32 %retval.0.i, %ret.035
  %144 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %count.i.i, align 8
  %tobool.not = icmp eq i32 %145, 0
  br i1 %tobool.not, label %cleanup.out_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup.out_crit_edge:                            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

out:                                              ; preds = %cleanup.out_crit_edge, %if.then7, %lor.lhs.false5.out_crit_edge, %entry.out_crit_edge
  %ret.3 = phi i32 [ %ret.035, %lor.lhs.false5.out_crit_edge ], [ %retval.0.i26, %if.then7 ], [ 0, %entry.out_crit_edge ], [ %add, %cleanup.out_crit_edge ]
  call void @af_alg_wmem_wakeup(ptr noundef %1) #7
  call void @release_sock(ptr noundef %1) #7
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
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_req_done(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @af_alg_free_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aead_sendmsg_nokey(ptr noundef %sock, ptr noundef %msg, i32 noundef %size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @aead_check_key(ptr noundef %sock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %7, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %ivsize.i.i.i = getelementptr i8, ptr %9, i32 -104
  %10 = ptrtoint ptr %ivsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ivsize.i.i.i, align 8
  %call4.i = tail call i32 @af_alg_sendmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %size, i32 noundef %11) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4.i, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aead_recvmsg_nokey(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %ignored, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @aead_check_key(ptr noundef %sock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @aead_recvmsg(ptr noundef %sock, ptr noundef %msg, i32 noundef %ignored, i32 noundef %flags)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aead_sendpage_nokey(ptr noundef %sock, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @aead_check_key(ptr noundef %sock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @af_alg_sendpage(ptr noundef %sock, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %flags) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aead_check_key(ptr nocapture noundef readonly %sock) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #7
  %nokey_refcnt = getelementptr inbounds %struct.alg_sock, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nokey_refcnt, i32 noundef 4) #7
  %2 = ptrtoint ptr %nokey_refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %nokey_refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.unlock_child_crit_edge, label %if.end

entry.unlock_child_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void @lock_sock_nested(ptr noundef %5, i32 noundef 1) #7
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base.i.i, align 128
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.unlock_crit_edge

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %nokey_refcnt9 = getelementptr inbounds %struct.alg_sock, ptr %5, i32 0, i32 3
  %call.i.i18 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nokey_refcnt9, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %nokey_refcnt9, i32 1, i32 3, i32 1) #7
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nokey_refcnt9, ptr %nokey_refcnt9, i32 1, ptr elementtype(i32) %nokey_refcnt9) #7, !srcloc !38
  %call.i.i19 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nokey_refcnt, i32 noundef 4) #7
  %13 = ptrtoint ptr %nokey_refcnt to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 0, ptr %nokey_refcnt, align 4
  br label %unlock

unlock:                                           ; preds = %if.end8, %if.end.unlock_crit_edge
  %err.0 = phi i32 [ -126, %if.end.unlock_crit_edge ], [ 0, %if.end8 ]
  tail call void @release_sock(ptr noundef %5) #7
  br label %unlock_child

unlock_child:                                     ; preds = %unlock, %entry.unlock_child_crit_edge
  %err.1 = phi i32 [ %err.0, %unlock ], [ 0, %entry.unlock_child_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #7
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_register_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__initcall__kmod_algif_aead__466_601_algif_aead_init6, !1, !"__initcall__kmod_algif_aead__466_601_algif_aead_init6", i1 false, i1 false}
!1 = !{!"../crypto/algif_aead.c", i32 601, i32 1}
!2 = !{ptr @__exitcall_algif_aead_exit, !3, !"__exitcall_algif_aead_exit", i1 false, i1 false}
!3 = !{!"../crypto/algif_aead.c", i32 602, i32 1}
!4 = !{ptr @__UNIQUE_ID_file467, !5, !"__UNIQUE_ID_file467", i1 false, i1 false}
!5 = !{!"../crypto/algif_aead.c", i32 603, i32 1}
!6 = !{ptr @__UNIQUE_ID_license468, !5, !"__UNIQUE_ID_license468", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author469, !8, !"__UNIQUE_ID_author469", i1 false, i1 false}
!8 = !{!"../crypto/algif_aead.c", i32 604, i32 1}
!9 = !{ptr @__UNIQUE_ID_description470, !10, !"__UNIQUE_ID_description470", i1 false, i1 false}
!10 = !{!"../crypto/algif_aead.c", i32 605, i32 1}
!11 = !{ptr @algif_type_aead, !12, !"algif_type_aead", i1 false, i1 false}
!12 = !{!"../crypto/algif_aead.c", i32 577, i32 33}
!13 = !{ptr @init_completion.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../include/linux/completion.h", i32 87, i32 2}
!15 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @algif_aead_ops, !17, !"algif_aead_ops", i1 false, i1 false}
!17 = !{!"../crypto/algif_aead.c", i32 356, i32 25}
!18 = !{ptr @algif_aead_ops_nokey, !19, !"algif_aead_ops_nokey", i1 false, i1 false}
!19 = !{!"../crypto/algif_aead.c", i32 447, i32 25}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{i64 2156994456, i64 2156994940, i64 2156994493, i64 2156994549, i64 2156994583, i64 2156994607, i64 2156994648, i64 2156994669, i64 2156994697, i64 2156994731}
!31 = !{i8 0, i8 2}
!32 = !{i64 2153801438, i64 2153801930, i64 2153801475, i64 2153801531, i64 2153801565, i64 2153801589, i64 2153801630, i64 2153801651, i64 2153801679, i64 2153801713}
!33 = !{i64 2148199535, i64 2148199567, i64 2148199596, i64 2148199630, i64 2148199661, i64 2148199684}
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{i64 2148287536}
!36 = !{i64 2148202000, i64 2148202032, i64 2148202061, i64 2148202095, i64 2148202126, i64 2148202149}
!37 = !{i64 2148898149}
!38 = !{i64 2148200470, i64 2148200496, i64 2148200525, i64 2148200559, i64 2148200590, i64 2148200613}
