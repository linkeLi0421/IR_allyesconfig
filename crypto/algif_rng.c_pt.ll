; ModuleID = '/llk/IR_all_yes/crypto/algif_rng.c_pt.bc'
source_filename = "../crypto/algif_rng.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.af_alg_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [14 x i8] }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rng_parent_ctx = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.rng_ctx = type { i32, ptr, ptr, i32 }
%struct.alg_sock = type { %struct.sock, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.119, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.120, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.121, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.115, [0 x i32], %union.anon.116, i16, i16, %union.anon.117, %struct.refcount_struct, [0 x i32], %union.anon.118 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
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

@__UNIQUE_ID_file465 = internal constant [32 x i8] c"algif_rng.file=crypto/algif_rng\00", section ".modinfo", align 1
@__UNIQUE_ID_license466 = internal constant [22 x i8] c"algif_rng.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author467 = internal constant [55 x i8] c"algif_rng.author=Stephan Mueller <smueller@chronox.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description468 = internal constant [72 x i8] c"algif_rng.description=User-space interface for random number generators\00", section ".modinfo", align 1
@algif_type_rng = internal constant { %struct.af_alg_type, [40 x i8] } { %struct.af_alg_type { ptr @rng_bind, ptr @rng_release, ptr @rng_setkey, ptr @rng_setentropy, ptr @rng_accept_parent, ptr null, ptr null, ptr @algif_rng_ops, ptr null, ptr null, [14 x i8] c"rng\00\00\00\00\00\00\00\00\00\00\00" }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_algif_rng__469_341_rng_init6 = internal global ptr @rng_init, section ".initcall6.init", align 4
@__exitcall_rng_exit = internal global ptr @rng_exit, section ".exitcall.exit", align 4
@algif_rng_ops = internal global { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 38, ptr null, ptr @af_alg_release, ptr @sock_no_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @sock_no_getname, ptr null, ptr @sock_no_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @sock_no_sendmsg, ptr @rng_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@algif_rng_test_ops = internal global { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 38, ptr null, ptr @af_alg_release, ptr @sock_no_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @sock_no_getname, ptr null, ptr @sock_no_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @rng_test_sendmsg, ptr @rng_test_recvmsg, ptr @sock_no_mmap, ptr @sock_no_sendpage, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [15 x i8] c"algif_type_rng\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 317, i32 33 }
@___asan_gen_.6 = private unnamed_addr constant [14 x i8] c"algif_rng_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 164, i32 25 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 230, i32 6 }
@___asan_gen_.13 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 214, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 156, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [19 x i8] c"algif_rng_test_ops\00", align 1
@___asan_gen_.19 = private constant [22 x i8] c"../crypto/algif_rng.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 183, i32 40 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_author467, ptr @__UNIQUE_ID_description468, ptr @__UNIQUE_ID_file465, ptr @__UNIQUE_ID_license466, ptr @__exitcall_rng_exit, ptr @__initcall__kmod_algif_rng__469_341_rng_init6, ptr @rng_exit, ptr @algif_type_rng, ptr @algif_rng_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @algif_rng_test_ops], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @algif_type_rng to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @algif_rng_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @algif_rng_test_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rng_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @af_alg_unregister_type(ptr noundef nonnull @algif_type_rng) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end8, label %do.body3, !prof !34

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/algif_rng.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 338, 0\0A.popsection", ""() #9, !srcloc !35
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_unregister_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rng_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @af_alg_register_type(ptr noundef nonnull @algif_type_rng) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rng_bind(ptr noundef %name, i32 noundef %type, i32 noundef %mask) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @crypto_alloc_rng(ptr noundef %name, i32 noundef %type, i32 noundef %mask) #9
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call2, %if.then4 ], [ %call7.i.i, %if.end6 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rng_release(ptr noundef %private) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %private, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !36

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %1) #9
  %entropy = getelementptr inbounds %struct.rng_parent_ctx, ptr %private, i32 0, i32 1
  %2 = ptrtoint ptr %entropy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entropy, align 4
  tail call void @kfree_sensitive(ptr noundef %3) #9
  tail call void @kfree_sensitive(ptr noundef nonnull %private) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rng_setkey(ptr nocapture noundef readonly %private, ptr noundef %seed, i32 noundef %seedlen) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %call = tail call i32 @crypto_rng_reset(ptr noundef %1, ptr noundef %seed, i32 noundef %seedlen) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rng_setentropy(ptr nocapture noundef %private, [2 x i32] %entropy.coerce, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 21) #9
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %entropy1 = getelementptr inbounds %struct.rng_parent_ctx, ptr %private, i32 0, i32 1
  %0 = ptrtoint ptr %entropy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entropy1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %len)
  %cmp = icmp ugt i32 %len, 128
  br i1 %cmp, label %if.end3.cleanup_crit_edge, label %if.end5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool6.not = icmp eq i32 %len, 0
  br i1 %tobool6.not, label %if.end5.if.end13_crit_edge, label %if.then7

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then7:                                         ; preds = %if.end5
  %2 = tail call ptr @llvm.returnaddress(i32 0) #9
  %3 = ptrtoint ptr %2 to i32
  %call.i = tail call ptr @__kmalloc_track_caller(i32 noundef %len, i32 noundef 1060032, i32 noundef %3) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then7.if.then10_crit_edge, label %if.end.i

if.then7.if.then10_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.end.i:                                         ; preds = %if.then7
  %src.coerce.fca.0.extract.i.i.i = extractvalue [2 x i32] %entropy.coerce, 0
  %4 = inttoptr i32 %src.coerce.fca.0.extract.i.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i.i = extractvalue [2 x i32] %entropy.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i.i)
  %bf.cast.i.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i.i, 0
  br i1 %bf.cast.i.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %if.end.i
  tail call void @__check_object_size(ptr noundef nonnull %call.i, i32 noundef %len, i1 noundef zeroext false) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #9
  %call.i.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i.i.i, label %if.then.i.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.then.i.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.then.i.i.i.i.i.i
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 %len, i32 -1226833920) #13, !srcloc !37
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i6.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i.i, label %if.end.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !prof !34

land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i.i
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef %len) #9
  %6 = tail call i32 @llvm.read_register.i32(metadata !24) #9
  %and.i.i.i.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i.i) #7, !srcloc !38
  %and.i.i.i.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i.i) #9, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !40
  %call1.i.i.i.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call.i, ptr noundef %4, i32 noundef %len) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #9, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i.i)
  %tobool4.not.i.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i.i, label %if.end.i.i.i.i.i.memdup_sockptr.exit_crit_edge, label %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, !prof !34

if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge:   ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i.i.i

if.end.i.i.i.i.i.memdup_sockptr.exit_crit_edge:   ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %memdup_sockptr.exit

if.then11.i.i.i.i.i:                              ; preds = %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge, %if.then.i.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge
  %res.0.i.i.i.i.i29 = phi i32 [ %call1.i.i.i.i.i.i, %if.end.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ], [ %len, %if.then.i.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ], [ %len, %land.lhs.true.i.i.i.i.i.if.then11.i.i.i.i.i_crit_edge ]
  %sub.i.i.i.i.i = sub i32 %len, %res.0.i.i.i.i.i29
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %call.i, i32 %sub.i.i.i.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i.i.i.i, i32 0, i32 %res.0.i.i.i.i.i29)
  tail call void @kfree(ptr noundef nonnull %call.i) #9
  br label %if.then10

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = call ptr @memcpy(ptr %call.i, ptr %4, i32 %len)
  br label %memdup_sockptr.exit

memdup_sockptr.exit:                              ; preds = %if.end.i.i.i, %if.end.i.i.i.i.i.memdup_sockptr.exit_crit_edge
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %memdup_sockptr.exit.if.then10_crit_edge, label %memdup_sockptr.exit.if.end13_crit_edge

memdup_sockptr.exit.if.end13_crit_edge:           ; preds = %memdup_sockptr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

memdup_sockptr.exit.if.then10_crit_edge:          ; preds = %memdup_sockptr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.then10:                                        ; preds = %memdup_sockptr.exit.if.then10_crit_edge, %if.then11.i.i.i.i.i, %if.then7.if.then10_crit_edge
  %retval.0.i32 = phi ptr [ %call.i, %memdup_sockptr.exit.if.then10_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then7.if.then10_crit_edge ], [ inttoptr (i32 -14 to ptr), %if.then11.i.i.i.i.i ]
  %11 = ptrtoint ptr %retval.0.i32 to i32
  br label %cleanup

if.end13:                                         ; preds = %memdup_sockptr.exit.if.end13_crit_edge, %if.end5.if.end13_crit_edge
  %kentropy.0 = phi ptr [ %call.i, %memdup_sockptr.exit.if.end13_crit_edge ], [ null, %if.end5.if.end13_crit_edge ]
  %12 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private, align 4
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %__crt_alg.i, align 4
  %set_ent = getelementptr i8, ptr %15, i32 -120
  %16 = ptrtoint ptr %set_ent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %set_ent, align 8
  tail call void %17(ptr noundef %13, ptr noundef %kentropy.0, i32 noundef %len) #9
  %18 = ptrtoint ptr %entropy1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %kentropy.0, ptr %entropy1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then10, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then10 ], [ 0, %if.end13 ], [ -13, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -90, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rng_accept_parent(ptr nocapture noundef readonly %private, ptr noundef %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @sock_kmalloc(ptr noundef %sk, i32 noundef 16, i32 noundef 3264) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16, ptr %call1, align 4
  %addtl = getelementptr inbounds %struct.rng_ctx, ptr %call1, i32 0, i32 2
  %1 = ptrtoint ptr %addtl to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %addtl, align 4
  %addtl_len = getelementptr inbounds %struct.rng_ctx, ptr %call1, i32 0, i32 3
  %2 = ptrtoint ptr %addtl_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %addtl_len, align 4
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 4
  %drng3 = getelementptr inbounds %struct.rng_ctx, ptr %call1, i32 0, i32 1
  %5 = ptrtoint ptr %drng3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %drng3, align 4
  %private4 = getelementptr inbounds %struct.alg_sock, ptr %sk, i32 0, i32 5
  %6 = ptrtoint ptr %private4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1, ptr %private4, align 8
  %sk_destruct = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 82
  %7 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @rng_sock_destruct, ptr %sk_destruct, align 4
  %entropy = getelementptr inbounds %struct.rng_parent_ctx, ptr %private, i32 0, i32 1
  %8 = ptrtoint ptr %entropy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %entropy, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.then6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %sk_socket = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 71
  %10 = ptrtoint ptr %sk_socket to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sk_socket, align 8
  %ops = getelementptr inbounds %struct.socket, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @algif_rng_test_ops, ptr %ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then6 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_rng(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_rng_reset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmalloc_track_caller(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rng_sock_destruct(ptr noundef %sk) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.alg_sock, ptr %sk, i32 0, i32 5
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %addtl.i = getelementptr inbounds %struct.rng_ctx, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %addtl.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addtl.i, align 4
  tail call void @kfree_sensitive(ptr noundef %3) #9
  %4 = ptrtoint ptr %addtl.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %addtl.i, align 4
  %addtl_len.i = getelementptr inbounds %struct.rng_ctx, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %addtl_len.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %addtl_len.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  tail call void @sock_kfree_s(ptr noundef %sk, ptr noundef %1, i32 noundef %7) #9
  tail call void @af_alg_release_parent(ptr noundef %sk) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_kfree_s(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

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
declare dso_local i32 @sock_no_ioctl(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rng_test_sendmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk, align 16
  %private = getelementptr inbounds %struct.alg_sock, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %len)
  %cmp = icmp ugt i32 %len, 128
  br i1 %cmp, label %entry.unlock.thread_crit_edge, label %if.end

entry.unlock.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.thread

if.end:                                           ; preds = %entry
  %addtl.i = getelementptr inbounds %struct.rng_ctx, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %addtl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addtl.i, align 4
  tail call void @kfree_sensitive(ptr noundef %5) #9
  %6 = ptrtoint ptr %addtl.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %addtl.i, align 4
  %addtl_len.i = getelementptr inbounds %struct.rng_ctx, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %addtl_len.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %addtl_len.i, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %len, i32 noundef 3264) #14
  %8 = ptrtoint ptr %addtl.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9.i, ptr %addtl.i, align 4
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end.unlock.thread_crit_edge, label %if.end5

if.end.unlock.thread_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.thread

if.end5:                                          ; preds = %if.end
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  tail call void @__check_object_size(ptr noundef nonnull %call9.i, i32 noundef %len, i1 noundef zeroext false) #9
  %call3.i.i.i = tail call i32 @_copy_from_iter(ptr noundef nonnull %call9.i, i32 noundef %len, ptr noundef %msg_iter.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i.i.i, i32 %len)
  %cmp.i.i = icmp eq i32 %call3.i.i.i, %len
  br i1 %cmp.i.i, label %if.end5.unlock.thread.sink.split_crit_edge, label %if.then9, !prof !34

if.end5.unlock.thread.sink.split_crit_edge:       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.thread.sink.split

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %call3.i.i.i) #9
  %9 = ptrtoint ptr %addtl.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %addtl.i, align 4
  tail call void @kfree_sensitive(ptr noundef %10) #9
  %11 = ptrtoint ptr %addtl.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %addtl.i, align 4
  br label %unlock.thread.sink.split

unlock.thread.sink.split:                         ; preds = %if.then9, %if.end5.unlock.thread.sink.split_crit_edge
  %.sink = phi i32 [ 0, %if.then9 ], [ %len, %if.end5.unlock.thread.sink.split_crit_edge ]
  %.ph = phi i32 [ -14, %if.then9 ], [ %len, %if.end5.unlock.thread.sink.split_crit_edge ]
  %12 = ptrtoint ptr %addtl_len.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %addtl_len.i, align 4
  br label %unlock.thread

unlock.thread:                                    ; preds = %unlock.thread.sink.split, %if.end.unlock.thread_crit_edge, %entry.unlock.thread_crit_edge
  %13 = phi i32 [ -12, %if.end.unlock.thread_crit_edge ], [ -90, %entry.unlock.thread_crit_edge ], [ %.ph, %unlock.thread.sink.split ]
  %14 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk, align 16
  tail call void @release_sock(ptr noundef %15) #9
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rng_test_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %private = getelementptr inbounds %struct.alg_sock, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #9
  %drng = getelementptr inbounds %struct.rng_ctx, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %drng to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drng, align 4
  %addtl = getelementptr inbounds %struct.rng_ctx, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %addtl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addtl, align 4
  %addtl_len = getelementptr inbounds %struct.rng_ctx, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %addtl_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addtl_len, align 4
  %call3 = tail call fastcc i32 @_rng_recvmsg(ptr noundef %5, ptr noundef %msg, i32 noundef %len, ptr noundef %7, i32 noundef %9)
  %10 = ptrtoint ptr %addtl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %addtl, align 4
  tail call void @kfree_sensitive(ptr noundef %11) #9
  %12 = ptrtoint ptr %addtl to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %addtl, align 4
  %13 = ptrtoint ptr %addtl_len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %addtl_len, align 4
  %14 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sk1, align 16
  tail call void @release_sock(ptr noundef %15) #9
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendpage(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_rng_recvmsg(ptr noundef %drng, ptr noundef %msg, i32 noundef %len, ptr noundef %addtl, i32 noundef %addtl_len) unnamed_addr #3 align 64 {
entry:
  %result = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %result) #9
  %0 = call ptr @memset(ptr %result, i32 255, i32 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp eq i32 %len, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.umin.i32(i32 %len, i32 128)
  %2 = call ptr @memset(ptr %result, i32 0, i32 %1)
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %drng, i32 0, i32 3
  %3 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %__crt_alg.i, align 4
  tail call void @crypto_stats_get(ptr noundef %4) #9
  %5 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 -128
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i.i, align 128
  %call1.i = call i32 %8(ptr noundef %drng, ptr noundef %addtl, i32 noundef %addtl_len, ptr noundef nonnull %result, i32 noundef %1) #9
  call void @crypto_stats_rng_generate(ptr noundef %4, i32 noundef %1, i32 noundef %call1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp5 = icmp slt i32 %call1.i, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @__check_object_size(ptr noundef nonnull %result, i32 noundef %1, i1 noundef zeroext true) #9
  %call3.i.i = call i32 @_copy_to_iter(ptr noundef nonnull %result, i32 noundef %1, ptr noundef %msg_iter.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i.i, i32 %1)
  %cmp.i = icmp eq i32 %call3.i.i, %1
  %9 = call ptr @memset(ptr %result, i32 0, i32 %1)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %result) #9, !srcloc !41
  %.call9 = select i1 %cmp.i, i32 %1, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %.call9, %if.end7 ], [ 0, %entry.cleanup_crit_edge ], [ %call1.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %result) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_rng_generate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_to_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendmsg(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rng_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %private = getelementptr inbounds %struct.alg_sock, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %drng = getelementptr inbounds %struct.rng_ctx, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %drng to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drng, align 4
  %call2 = tail call fastcc i32 @_rng_recvmsg(ptr noundef %5, ptr noundef %msg, i32 noundef %len, ptr noundef null, i32 noundef 0)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @af_alg_register_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !20, !22}
!llvm.named.register.sp = !{!24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__UNIQUE_ID_file465, !1, !"__UNIQUE_ID_file465", i1 false, i1 false}
!1 = !{!"../crypto/algif_rng.c", i32 49, i32 1}
!2 = !{ptr @__UNIQUE_ID_license466, !1, !"__UNIQUE_ID_license466", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author467, !4, !"__UNIQUE_ID_author467", i1 false, i1 false}
!4 = !{!"../crypto/algif_rng.c", i32 50, i32 1}
!5 = !{ptr @__UNIQUE_ID_description468, !6, !"__UNIQUE_ID_description468", i1 false, i1 false}
!6 = !{!"../crypto/algif_rng.c", i32 51, i32 1}
!7 = !{ptr @__initcall__kmod_algif_rng__469_341_rng_init6, !8, !"__initcall__kmod_algif_rng__469_341_rng_init6", i1 false, i1 false}
!8 = !{!"../crypto/algif_rng.c", i32 341, i32 1}
!9 = !{ptr @__exitcall_rng_exit, !10, !"__exitcall_rng_exit", i1 false, i1 false}
!10 = !{!"../crypto/algif_rng.c", i32 342, i32 1}
!11 = !{ptr @algif_type_rng, !12, !"algif_type_rng", i1 false, i1 false}
!12 = !{!"../crypto/algif_rng.c", i32 317, i32 33}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!15 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!20 = !{ptr @algif_rng_test_ops, !21, !"algif_rng_test_ops", i1 false, i1 false}
!21 = !{!"../crypto/algif_rng.c", i32 183, i32 40}
!22 = !{ptr @algif_rng_ops, !23, !"algif_rng_ops", i1 false, i1 false}
!23 = !{!"../crypto/algif_rng.c", i32 164, i32 25}
!24 = !{!"sp"}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{i64 2156958275, i64 2156958758, i64 2156958312, i64 2156958368, i64 2156958402, i64 2156958426, i64 2156958467, i64 2156958488, i64 2156958516, i64 2156958550}
!36 = !{!"branch_weights", i32 1, i32 2000}
!37 = !{i64 2153112203, i64 2153112228}
!38 = !{i64 5607758}
!39 = !{i64 5607955}
!40 = !{i64 2153093188}
!41 = !{i64 2149045604}
