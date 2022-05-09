; ModuleID = '/llk/IR_all_yes/net/sunrpc/auth_unix.c_pt.bc'
source_filename = "../net/sunrpc/auth_unix.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rpc_authops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rpc_auth = type { i32, i32, i32, i32, i32, ptr, i32, %struct.refcount_struct, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rpc_credops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.35 }
%union.anon.35 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.rpc_cred = type { %struct.hlist_node, %struct.list_head, %struct.callback_head, ptr, ptr, i32, i32, %struct.refcount_struct, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.39 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.39 = type { %struct.callback_head }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%struct.rpc_task = type { %struct.atomic_t, i32, %struct.list_head, ptr, ptr, i32, i32, ptr, %union.anon.145, i32, %struct.rpc_message, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i16, i16, i16, i8 }
%union.anon.145 = type { %struct.work_struct }
%struct.rpc_message = type { ptr, ptr, ptr, ptr }
%struct.rpc_rqst = type { ptr, %struct.xdr_buf, %struct.xdr_buf, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.anon.149, %struct.list_head, %struct.list_head, ptr, i32, ptr, i32, i32, i32, %struct.xdr_buf, i32, i32, i32, i64, i32, i32, %struct.atomic_t, i32, i64, i32, %struct.list_head, i32, %struct.list_head }
%union.anon.149 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xdr_buf = type { [1 x %struct.kvec], [1 x %struct.kvec], ptr, ptr, i32, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, ptr, %union.anon.150, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.150 = type { %struct.work_struct }

@unix_pool = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"UNIX\00", [27 x i8] zeroinitializer }, align 32
@authunix_ops = dso_local constant { %struct.rpc_authops, [52 x i8] } { %struct.rpc_authops { ptr null, i32 1, ptr @.str, ptr @unx_create, ptr @unx_destroy, ptr null, ptr @unx_lookup_cred, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@unix_auth = internal global { %struct.rpc_auth, [60 x i8] } { %struct.rpc_auth { i32 37, i32 2, i32 2, i32 0, i32 0, ptr @authunix_ops, i32 1, %struct.refcount_struct { %struct.atomic_t { i32 1 } }, ptr null }, [60 x i8] zeroinitializer }, align 32
@unix_credops = internal constant { %struct.rpc_credops, [48 x i8] } { %struct.rpc_credops { ptr @.str.1, ptr null, ptr @unx_destroy_cred, ptr @unx_match, ptr @unx_marshal, ptr @unx_refresh, ptr @unx_validate, ptr @rpcauth_wrap_req_encode, ptr @rpcauth_unwrap_resp_decode, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AUTH_UNIX\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@___asan_gen_.3 = private unnamed_addr constant [10 x i8] c"unix_pool\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 26, i32 20 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 209, i32 13 }
@___asan_gen_.9 = private unnamed_addr constant [13 x i8] c"authunix_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 206, i32 26 }
@___asan_gen_.12 = private unnamed_addr constant [10 x i8] c"unix_auth\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 216, i32 18 }
@___asan_gen_.15 = private unnamed_addr constant [13 x i8] c"unix_credops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 226, i32 26 }
@___asan_gen_.19 = private constant [26 x i8] c"../net/sunrpc/auth_unix.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 227, i32 13 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 286, i32 3 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @unix_pool, ptr @.str, ptr @authunix_ops, ptr @unix_auth, ptr @unix_credops, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unix_pool to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @authunix_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unix_auth to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unix_credops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rpc_init_authunix() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @mempool_create(i32 noundef 16, ptr noundef nonnull @mempool_kmalloc, ptr noundef nonnull @mempool_kfree, ptr noundef nonnull inttoptr (i32 48 to ptr)) #7
  store ptr %call.i, ptr @unix_pool, align 4
  %tobool.not = icmp eq ptr %call.i, null
  %cond = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpc_destroy_authunix() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @unix_pool, align 4
  tail call void @mempool_destroy(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @unx_create(ptr nocapture noundef readnone %args, ptr nocapture noundef readnone %clnt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef getelementptr inbounds (%struct.rpc_auth, ptr @unix_auth, i32 0, i32 7), i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr getelementptr inbounds (%struct.rpc_auth, ptr @unix_auth, i32 0, i32 7), i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) getelementptr inbounds (%struct.rpc_auth, ptr @unix_auth, i32 0, i32 7), ptr getelementptr inbounds (%struct.rpc_auth, ptr @unix_auth, i32 0, i32 7), i32 1, ptr elementtype(i32) getelementptr inbounds (%struct.rpc_auth, ptr @unix_auth, i32 0, i32 7)) #7, !srcloc !23
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !24

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !25

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef getelementptr inbounds (%struct.rpc_auth, ptr @unix_auth, i32 0, i32 7), i32 noundef %.sink.i.i.i) #7
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret ptr @unix_auth
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @unx_destroy(ptr nocapture noundef %auth) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @unx_lookup_cred(ptr noundef %auth, ptr noundef %acred, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @unix_pool, align 4
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %0, i32 noundef 3136) #7
  tail call void @rpcauth_init_cred(ptr noundef %call, ptr noundef %acred, ptr noundef %auth, ptr noundef nonnull @unix_credops) #7
  %cr_flags = getelementptr inbounds %struct.rpc_cred, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %cr_flags to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %cr_flags, align 4
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_kmalloc(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_kfree(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpcauth_init_cred(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @unx_destroy_cred(ptr noundef %cred) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cr_rcu = getelementptr inbounds %struct.rpc_cred, ptr %cred, i32 0, i32 2
  tail call void @call_rcu(ptr noundef %cr_rcu, ptr noundef nonnull @unx_free_cred_callback) #7
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @unx_match(ptr nocapture noundef readonly %acred, ptr nocapture noundef readonly %cred, i32 noundef %flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cr_cred = getelementptr inbounds %struct.rpc_cred, ptr %cred, i32 0, i32 8
  %0 = ptrtoint ptr %cr_cred to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cr_cred, align 4
  %2 = ptrtoint ptr %acred to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acred, align 4
  %cmp = icmp eq ptr %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %fsuid = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 10
  %fsuid4 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %4)
  %.unpack = load i32, ptr %fsuid, align 4
  %5 = ptrtoint ptr %fsuid4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.unpack69 = load i32, ptr %fsuid4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack, i32 %.unpack69)
  %cmp.i = icmp eq i32 %.unpack, %.unpack69
  br i1 %cmp.i, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %fsgid = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 11
  %fsgid8 = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack70 = load i32, ptr %fsgid, align 4
  %7 = ptrtoint ptr %fsgid8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.unpack71 = load i32, ptr %fsgid8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack70, i32 %.unpack71)
  %cmp.i74 = icmp eq i32 %.unpack70, %.unpack71
  br i1 %cmp.i74, label %if.end13, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %lor.lhs.false
  %group_info = getelementptr inbounds %struct.cred, ptr %3, i32 0, i32 27
  %8 = ptrtoint ptr %group_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %group_info, align 4
  %cmp15.not = icmp eq ptr %9, null
  br i1 %cmp15.not, label %if.end13.if.end19_crit_edge, label %if.then16

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %ngroups = getelementptr inbounds %struct.group_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ngroups, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end13.if.end19_crit_edge
  %groups.0 = phi i32 [ %11, %if.then16 ], [ 0, %if.end13.if.end19_crit_edge ]
  %12 = tail call i32 @llvm.umin.i32(i32 %groups.0, i32 16)
  %group_info24 = getelementptr inbounds %struct.cred, ptr %1, i32 0, i32 27
  %13 = ptrtoint ptr %group_info24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %group_info24, align 4
  %cmp25 = icmp eq ptr %14, null
  br i1 %cmp25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp27 = icmp eq i32 %12, 0
  %conv = zext i1 %cmp27 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end19
  %ngroups31 = getelementptr inbounds %struct.group_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %ngroups31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ngroups31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %16)
  %cmp32.not = icmp eq i32 %12, %16
  br i1 %cmp32.not, label %for.cond.preheader, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp3676.not = icmp eq i32 %12, 0
  br i1 %cmp3676.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.077, 1
  %exitcond.not = icmp eq i32 %inc, %12
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.077 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.group_info, ptr %14, i32 0, i32 2, i32 %i.077
  %arrayidx43 = getelementptr %struct.group_info, ptr %9, i32 0, i32 2, i32 %i.077
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack72 = load i32, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack73 = load i32, ptr %arrayidx43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.unpack72, i32 %.unpack73)
  %cmp.i75 = icmp eq i32 %.unpack72, %.unpack73
  br i1 %cmp.i75, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.then26, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.then26 ], [ 1, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ], [ 1, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ], [ 1, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unx_marshal(ptr nocapture noundef readonly %task, ptr noundef %xdr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_client = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 13
  %0 = ptrtoint ptr %tk_client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tk_client, align 4
  %tk_rqstp = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 16
  %2 = ptrtoint ptr %tk_rqstp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tk_rqstp, align 8
  %rq_cred = getelementptr inbounds %struct.rpc_rqst, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %rq_cred to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rq_cred, align 8
  %cr_cred = getelementptr inbounds %struct.rpc_cred, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %cr_cred to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cr_cred, align 4
  %group_info = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %group_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %group_info, align 4
  %cl_cred = getelementptr inbounds %struct.rpc_clnt, ptr %1, i32 0, i32 29
  %10 = ptrtoint ptr %cl_cred to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cl_cred, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %user_ns = getelementptr inbounds %struct.cred, ptr %11, i32 0, i32 25
  %12 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %user_ns, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %13, %cond.true ], [ @init_user_ns, %entry.cond.end_crit_edge ]
  %call = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 12) #7
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %cond.end.cleanup_crit_edge, label %if.end

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %incdec.ptr = getelementptr i32, ptr %call, i32 1
  %14 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %call, align 4
  %incdec.ptr3 = getelementptr i32, ptr %call, i32 2
  %15 = ptrtoint ptr %incdec.ptr3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %incdec.ptr3, align 4
  %cl_nodelen = getelementptr inbounds %struct.rpc_clnt, ptr %1, i32 0, i32 18
  %16 = ptrtoint ptr %cl_nodelen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cl_nodelen, align 4
  %18 = add i32 %17, 7
  %add.i = and i32 %18, -4
  %call1.i = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %add.i) #7
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %xdr_stream_encode_opaque.exit, !prof !24

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

xdr_stream_encode_opaque.exit:                    ; preds = %if.end
  %cl_nodename = getelementptr inbounds %struct.rpc_clnt, ptr %1, i32 0, i32 19
  %call5.i = tail call ptr @xdr_encode_opaque(ptr noundef nonnull %call1.i, ptr noundef %cl_nodename, i32 noundef %17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp = icmp slt i32 %add.i, 0
  br i1 %cmp, label %xdr_stream_encode_opaque.exit.cleanup_crit_edge, label %if.end7

xdr_stream_encode_opaque.exit.cleanup_crit_edge:  ; preds = %xdr_stream_encode_opaque.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %xdr_stream_encode_opaque.exit
  %call8 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 12) #7
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %19 = ptrtoint ptr %cr_cred to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cr_cred, align 4
  %fsuid = getelementptr inbounds %struct.cred, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %fsuid to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack = load i32, ptr %fsuid, align 4
  %22 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call13 = tail call i32 @from_kuid_munged(ptr noundef %cond, [1 x i32] %22) #7
  %incdec.ptr14 = getelementptr i32, ptr %call8, i32 1
  %23 = ptrtoint ptr %call8 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call13, ptr %call8, align 4
  %24 = ptrtoint ptr %cr_cred to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cr_cred, align 4
  %fsgid = getelementptr inbounds %struct.cred, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %fsgid to i32
  call void @__asan_load4_noabort(i32 %26)
  %.unpack91 = load i32, ptr %fsgid, align 4
  %27 = insertvalue [1 x i32] undef, i32 %.unpack91, 0
  %call17 = tail call i32 @from_kgid_munged(ptr noundef %cond, [1 x i32] %27) #7
  %incdec.ptr18 = getelementptr i32, ptr %call8, i32 2
  %28 = ptrtoint ptr %incdec.ptr14 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call17, ptr %incdec.ptr14, align 4
  %incdec.ptr19 = getelementptr i32, ptr %call8, i32 3
  %tobool20.not = icmp eq ptr %9, null
  br i1 %tobool20.not, label %if.end11.if.end27_crit_edge, label %for.cond.preheader

if.end11.if.end27_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

for.cond.preheader:                               ; preds = %if.end11
  %ngroups = getelementptr inbounds %struct.group_info, ptr %9, i32 0, i32 1
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %for.cond.preheader
  %i.096 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.land.rhs_crit_edge ]
  %p.095 = phi ptr [ %incdec.ptr19, %for.cond.preheader ], [ %incdec.ptr26, %for.body.land.rhs_crit_edge ]
  %29 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ngroups, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.096, i32 %30)
  %cmp23 = icmp slt i32 %i.096, %30
  br i1 %cmp23, label %for.body, label %land.rhs.if.end27_crit_edge

land.rhs.if.end27_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

for.body:                                         ; preds = %land.rhs
  %arrayidx = getelementptr %struct.group_info, ptr %9, i32 0, i32 2, i32 %i.096
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %.unpack92 = load i32, ptr %arrayidx, align 4
  %32 = insertvalue [1 x i32] undef, i32 %.unpack92, 0
  %call25 = tail call i32 @from_kgid_munged(ptr noundef %cond, [1 x i32] %32) #7
  %incdec.ptr26 = getelementptr i32, ptr %p.095, i32 1
  %33 = ptrtoint ptr %p.095 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call25, ptr %p.095, align 4
  %inc = add nuw nsw i32 %i.096, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.body.if.end27_crit_edge, label %for.body.land.rhs_crit_edge

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.end27:                                         ; preds = %for.body.if.end27_crit_edge, %land.rhs.if.end27_crit_edge, %if.end11.if.end27_crit_edge
  %p.1 = phi ptr [ %incdec.ptr19, %if.end11.if.end27_crit_edge ], [ %incdec.ptr26, %for.body.if.end27_crit_edge ], [ %p.095, %land.rhs.if.end27_crit_edge ]
  %sub.ptr.lhs.cast = ptrtoint ptr %p.1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %incdec.ptr18 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 2
  %sub = add nsw i32 %sub.ptr.div, -1
  %34 = ptrtoint ptr %incdec.ptr18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub, ptr %incdec.ptr18, align 4
  %sub.ptr.rhs.cast29 = ptrtoint ptr %incdec.ptr to i32
  %sub.ptr.sub30 = sub i32 -4, %sub.ptr.rhs.cast29
  %shl = add i32 %sub.ptr.sub30, %sub.ptr.lhs.cast
  %35 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shl, ptr %incdec.ptr, align 4
  %shl38 = shl i32 %sub, 2
  %call39 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef %shl38) #7
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.end27.cleanup_crit_edge, label %if.end42

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end42:                                         ; preds = %if.end27
  %call43 = tail call ptr @xdr_reserve_space(ptr noundef %xdr, i32 noundef 8) #7
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %if.end42.cleanup_crit_edge, label %if.end46

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr47 = getelementptr i32, ptr %call43, i32 1
  %36 = ptrtoint ptr %call43 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %call43, align 4
  %37 = ptrtoint ptr %incdec.ptr47 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %incdec.ptr47, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.end42.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %xdr_stream_encode_opaque.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end46 ], [ -90, %if.end42.cleanup_crit_edge ], [ -90, %if.end27.cleanup_crit_edge ], [ -90, %if.end7.cleanup_crit_edge ], [ -90, %xdr_stream_encode_opaque.exit.cleanup_crit_edge ], [ -90, %cond.end.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unx_refresh(ptr nocapture noundef readonly %task) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_rqstp = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 16
  %0 = ptrtoint ptr %tk_rqstp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tk_rqstp, align 8
  %rq_cred = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rq_cred to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_cred, align 8
  %cr_flags = getelementptr inbounds %struct.rpc_cred, ptr %3, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 1, ptr noundef %cr_flags) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @unx_validate(ptr nocapture noundef readonly %task, ptr noundef %xdr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tk_rqstp = getelementptr inbounds %struct.rpc_task, ptr %task, i32 0, i32 16
  %0 = ptrtoint ptr %tk_rqstp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tk_rqstp, align 8
  %rq_cred = getelementptr inbounds %struct.rpc_rqst, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rq_cred to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_cred, align 8
  %cr_auth = getelementptr inbounds %struct.rpc_cred, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cr_auth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cr_auth, align 4
  %call = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef 8) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %switch = icmp ult i32 %7, 3
  br i1 %switch, label %sw.epilog, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  %incdec.ptr = getelementptr i32, ptr %call, i32 1
  %8 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %incdec.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400, i32 %9)
  %cmp = icmp ugt i32 %9, 400
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %if.end3

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %sw.epilog
  %call4 = tail call ptr @xdr_inline_decode(ptr noundef %xdr, i32 noundef %9) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %add = add nuw nsw i32 %9, 3
  %shr = lshr i32 %add, 2
  %add8 = add nuw nsw i32 %shr, 2
  %au_verfsize = getelementptr inbounds %struct.rpc_auth, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %au_verfsize to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add8, ptr %au_verfsize, align 4
  %au_rslack = getelementptr inbounds %struct.rpc_auth, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %au_rslack to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add8, ptr %au_rslack, align 4
  %au_ralign = getelementptr inbounds %struct.rpc_auth, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %au_ralign to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add8, ptr %au_ralign, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end3.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %sw.epilog.cleanup_crit_edge ], [ -5, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcauth_wrap_req_encode(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcauth_unwrap_resp_decode(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @unx_free_cred_callback(ptr noundef %head) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cr_cred = getelementptr i8, ptr %head, i32 28
  %0 = ptrtoint ptr %cr_cred to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cr_cred, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.put_cred.exit_crit_edge, label %do.body.i

entry.put_cred.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_cred.exit

do.body.i:                                        ; preds = %entry
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %1) #7
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !24

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__invalid_creds(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, i32 noundef 286) #7
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !26
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #7, !srcloc !27
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__put_cred(ptr noundef nonnull %1) #7
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge, %entry.put_cred.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %head, i32 -16
  %3 = load ptr, ptr @unix_pool, align 4
  tail call void @mempool_free(ptr noundef %add.ptr, ptr noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_reserve_space(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kuid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @from_kgid_munged(ptr noundef, [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_encode_opaque(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdr_inline_decode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/sunrpc/auth_unix.c", i32 209, i32 13}
!2 = !{ptr @authunix_ops, !3, !"authunix_ops", i1 false, i1 false}
!3 = !{!"../net/sunrpc/auth_unix.c", i32 206, i32 26}
!4 = !{ptr @unix_pool, !5, !"unix_pool", i1 false, i1 false}
!5 = !{!"../net/sunrpc/auth_unix.c", i32 26, i32 20}
!6 = !{ptr @unix_auth, !7, !"unix_auth", i1 false, i1 false}
!7 = !{!"../net/sunrpc/auth_unix.c", i32 216, i32 18}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/sunrpc/auth_unix.c", i32 227, i32 13}
!10 = !{ptr @unix_credops, !11, !"unix_credops", i1 false, i1 false}
!11 = !{!"../net/sunrpc/auth_unix.c", i32 226, i32 26}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/cred.h", i32 286, i32 3}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i64 2148585510, i64 2148585542, i64 2148585571, i64 2148585605, i64 2148585636, i64 2148585659}
!24 = !{!"branch_weights", i32 1, i32 2000}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2148672456}
!27 = !{i64 2148587165, i64 2148587197, i64 2148587226, i64 2148587260, i64 2148587291, i64 2148587314}
!28 = !{i64 2148672685}
