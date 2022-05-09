; ModuleID = '/llk/IR_all_yes/fs/nfs/cache_lib.c_pt.bc'
source_filename = "../fs/nfs/cache_lib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_string = type { i32, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cache_detail = type { ptr, i32, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, %struct.list_head, i64, i32, %struct.list_head, %struct.atomic_t, i64, i64, %union.anon.74, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%union.anon.74 = type { ptr }
%struct.nfs_cache_defer_req = type { %struct.cache_req, %struct.cache_deferred_req, %struct.completion, %struct.refcount_struct }
%struct.cache_req = type { ptr, i32 }
%struct.cache_deferred_req = type { %struct.hlist_node, %struct.list_head, ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }

@__param_str_cache_getent = internal constant [19 x i8] c"nfsv4.cache_getent\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_cache_getent = internal constant %struct.kparam_string { i32 256, ptr @nfs_cache_getent_prog }, align 4
@__param_cache_getent = internal constant %struct.kernel_param { ptr @__param_str_cache_getent, ptr null, ptr @param_ops_string, i16 384, i8 -1, i8 0, %union.anon.68 { ptr @__param_string_cache_getent } }, section "__param", align 4
@__UNIQUE_ID_cache_getenttype282 = internal constant [35 x i8] c"nfsv4.parmtype=cache_getent:string\00", section ".modinfo", align 1
@__UNIQUE_ID_cache_getent283 = internal constant [64 x i8] c"nfsv4.parm=cache_getent:Path to the client cache upcall program\00", section ".modinfo", align 1
@__param_str_cache_getent_timeout = internal constant [27 x i8] c"nfsv4.cache_getent_timeout\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@nfs_cache_getent_timeout = internal global { i32, [28 x i8] } { i32 15, [28 x i8] zeroinitializer }, align 32
@__param_cache_getent_timeout = internal constant %struct.kernel_param { ptr @__param_str_cache_getent_timeout, ptr null, ptr @param_ops_ulong, i16 384, i8 -1, i8 0, %union.anon.68 { ptr @nfs_cache_getent_timeout } }, section "__param", align 4
@__UNIQUE_ID_cache_getent_timeouttype284 = internal constant [42 x i8] c"nfsv4.parmtype=cache_getent_timeout:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_cache_getent_timeout285 = internal constant [108 x i8] c"nfsv4.parm=cache_getent_timeout:Timeout (in seconds) after which the cache upcall is assumed to have failed\00", section ".modinfo", align 1
@nfs_cache_upcall.envp = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr null], [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HOME=/\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TERM=linux\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PATH=/sbin:/usr/sbin:/bin:/usr/bin\00", [61 x i8] zeroinitializer }, align 32
@nfs_cache_getent_prog = internal global { [256 x i8], [64 x i8] } { [256 x i8] c"/sbin/nfs_cache_getent\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [64 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cache\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967283, i64 4294967294]
@___asan_gen_.5 = private unnamed_addr constant [25 x i8] c"nfs_cache_getent_timeout\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 26, i32 22 }
@___asan_gen_.8 = private unnamed_addr constant [5 x i8] c"envp\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 37, i32 15 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 37, i32 26 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 38, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 39, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant [22 x i8] c"nfs_cache_getent_prog\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 24, i32 13 }
@___asan_gen_.24 = private constant [22 x i8] c"../fs/nfs/cache_lib.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 121, i32 28 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 87, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_cache_getent283, ptr @__UNIQUE_ID_cache_getent_timeout285, ptr @__UNIQUE_ID_cache_getent_timeouttype284, ptr @__UNIQUE_ID_cache_getenttype282, ptr @__param_cache_getent, ptr @__param_cache_getent_timeout, ptr @nfs_cache_getent_timeout, ptr @nfs_cache_upcall.envp, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @nfs_cache_getent_prog, ptr @.str.3, ptr @init_completion.__key, ptr @.str.4], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_cache_getent_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_cache_upcall.envp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_cache_getent_prog to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_cache_upcall(ptr nocapture noundef readonly %cd, ptr noundef %entry_name) local_unnamed_addr #0 align 64 {
entry:
  %argv = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %argv) #6
  %0 = getelementptr inbounds [4 x ptr], ptr %argv, i32 0, i32 1
  %1 = getelementptr inbounds [4 x ptr], ptr %argv, i32 0, i32 2
  %2 = getelementptr inbounds [4 x ptr], ptr %argv, i32 0, i32 3
  %3 = ptrtoint ptr %argv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nfs_cache_getent_prog, ptr %argv, align 4
  %name = getelementptr inbounds %struct.cache_detail, ptr %cd, i32 0, i32 4
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 8
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry_name, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %2, align 4
  %9 = load i8, ptr @nfs_cache_getent_prog, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  br i1 %cmp, label %entry.out.thread_crit_edge, label %if.end

entry.out.thread_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread

if.end:                                           ; preds = %entry
  %call = call i32 @call_usermodehelper(ptr noundef nonnull @nfs_cache_getent_prog, ptr noundef nonnull %argv, ptr noundef nonnull @nfs_cache_upcall.envp, i32 noundef 1) #6
  %10 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %out [
    i32 -2, label %if.end.if.then8_crit_edge
    i32 -13, label %if.end.if.then8_crit_edge17
  ]

if.end.if.then8_crit_edge17:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

if.then8:                                         ; preds = %if.end.if.then8_crit_edge, %if.end.if.then8_crit_edge17
  store i8 0, ptr @nfs_cache_getent_prog, align 1
  br label %out.thread

out:                                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = call i32 @llvm.smin.i32(i32 %call, i32 0)
  br label %out.thread

out.thread:                                       ; preds = %out, %if.then8, %entry.out.thread_crit_edge
  %12 = phi i32 [ %call, %if.then8 ], [ -13, %entry.out.thread_crit_edge ], [ %11, %out ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %argv) #6
  ret i32 %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_usermodehelper(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_cache_defer_req_put(ptr noundef %dreq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.nfs_cache_defer_req, ptr %dreq, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #6, !srcloc !40
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !41

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %count, i32 noundef 3) #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !42
  tail call void @kfree(ptr noundef %dreq) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs_cache_defer_req_alloc() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 96) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %completion = getelementptr inbounds %struct.nfs_cache_defer_req, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.nfs_cache_defer_req, ptr %call7.i.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #6
  %count = getelementptr inbounds %struct.nfs_cache_defer_req, ptr %call7.i.i, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #6
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %count, align 4
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nfs_dns_cache_defer, ptr %call7.i.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nfs_dns_cache_defer(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %revisit = getelementptr inbounds %struct.nfs_cache_defer_req, ptr %req, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %revisit to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @nfs_dns_cache_revisit, ptr %revisit, align 4
  %count = getelementptr inbounds %struct.nfs_cache_defer_req, ptr %req, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #6
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #6, !srcloc !43
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !44

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !41

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count, i32 noundef %.sink.i.i.i) #6
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %deferred_req = getelementptr inbounds %struct.nfs_cache_defer_req, ptr %req, i32 0, i32 1
  ret ptr %deferred_req
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_cache_wait_for_upcall(ptr noundef %dreq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %completion = getelementptr inbounds %struct.nfs_cache_defer_req, ptr %dreq, i32 0, i32 2
  %0 = load i32, ptr @nfs_cache_getent_timeout, align 4
  %mul = mul i32 %0, 100
  %call = tail call i32 @wait_for_completion_timeout(ptr noundef %completion, i32 noundef %mul) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %. = select i1 %cmp, i32 -110, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_cache_register_sb(ptr noundef %sb, ptr noundef %cd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rpc_d_lookup_sb(ptr noundef %sb, ptr noundef nonnull @.str.3) #6
  %name = getelementptr inbounds %struct.cache_detail, ptr %cd, i32 0, i32 4
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 8
  %call1 = tail call i32 @sunrpc_cache_register_pipefs(ptr noundef %call, ptr noundef %1, i16 noundef zeroext 384, ptr noundef %cd) #6
  tail call void @dput(ptr noundef %call) #6
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_d_lookup_sb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sunrpc_cache_register_pipefs(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_cache_register_net(ptr noundef %net, ptr noundef %cd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sunrpc_init_cache_detail(ptr noundef %cd) #6
  %call = tail call ptr @rpc_get_sb_net(ptr noundef %net) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @rpc_d_lookup_sb(ptr noundef nonnull %call, ptr noundef nonnull @.str.3) #6
  %name.i = getelementptr inbounds %struct.cache_detail, ptr %cd, i32 0, i32 4
  %0 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name.i, align 8
  %call1.i = tail call i32 @sunrpc_cache_register_pipefs(ptr noundef %call.i, ptr noundef %1, i16 noundef zeroext 384, ptr noundef %cd) #6
  tail call void @dput(ptr noundef %call.i) #6
  tail call void @rpc_put_sb_net(ptr noundef %net) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then3

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sunrpc_destroy_cache_detail(ptr noundef %cd) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %ret.0 = phi i32 [ %call1.i, %if.then3 ], [ 0, %if.then.if.end4_crit_edge ], [ 0, %entry.if.end4_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sunrpc_init_cache_detail(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_get_sb_net(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_put_sb_net(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sunrpc_destroy_cache_detail(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_cache_unregister_sb(ptr nocapture readnone %sb, ptr noundef %cd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sunrpc_cache_unregister_pipefs(ptr noundef %cd) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sunrpc_cache_unregister_pipefs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs_cache_unregister_net(ptr noundef %net, ptr noundef %cd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rpc_get_sb_net(ptr noundef %net) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sunrpc_cache_unregister_pipefs(ptr noundef %cd) #6
  tail call void @rpc_put_sb_net(ptr noundef %net) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @sunrpc_destroy_cache_detail(ptr noundef %cd) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfs_dns_cache_revisit(ptr noundef %d, i32 noundef %toomany) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %completion = getelementptr i8, ptr %d, i32 28
  tail call void @complete(ptr noundef %completion) #6
  %count.i = getelementptr i8, ptr %d, i32 84
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #6, !srcloc !40
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.nfs_cache_defer_req_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !41

if.end5.i.i.i.i.nfs_cache_defer_req_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nfs_cache_defer_req_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #6
  br label %nfs_cache_defer_req_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %d, i32 -8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !42
  tail call void @kfree(ptr noundef %add.ptr) #6
  br label %nfs_cache_defer_req_put.exit

nfs_cache_defer_req_put.exit:                     ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.nfs_cache_defer_req_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !25, !27, !29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__param_cache_getent, !1, !"__param_cache_getent", i1 false, i1 false}
!1 = !{!"../fs/nfs/cache_lib.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_cache_getenttype282, !1, !"__UNIQUE_ID_cache_getenttype282", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_cache_getent283, !4, !"__UNIQUE_ID_cache_getent283", i1 false, i1 false}
!4 = !{!"../fs/nfs/cache_lib.c", i32 30, i32 1}
!5 = !{ptr @__param_cache_getent_timeout, !6, !"__param_cache_getent_timeout", i1 false, i1 false}
!6 = !{!"../fs/nfs/cache_lib.c", i32 31, i32 1}
!7 = !{ptr @__UNIQUE_ID_cache_getent_timeouttype284, !6, !"__UNIQUE_ID_cache_getent_timeouttype284", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_cache_getent_timeout285, !9, !"__UNIQUE_ID_cache_getent_timeout285", i1 false, i1 false}
!9 = !{!"../fs/nfs/cache_lib.c", i32 32, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nfs/cache_lib.c", i32 37, i32 26}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/nfs/cache_lib.c", i32 38, i32 3}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/nfs/cache_lib.c", i32 39, i32 3}
!16 = !{ptr @nfs_cache_upcall.envp, !17, !"envp", i1 false, i1 false}
!17 = !{!"../fs/nfs/cache_lib.c", i32 37, i32 15}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/nfs/cache_lib.c", i32 121, i32 28}
!20 = !{ptr @__param_str_cache_getent, !1, !"__param_str_cache_getent", i1 false, i1 false}
!21 = !{ptr @__param_string_cache_getent, !1, !"__param_string_cache_getent", i1 false, i1 false}
!22 = !{ptr @__param_str_cache_getent_timeout, !6, !"__param_str_cache_getent_timeout", i1 false, i1 false}
!23 = !{ptr @nfs_cache_getent_timeout, !24, !"nfs_cache_getent_timeout", i1 false, i1 false}
!24 = !{!"../fs/nfs/cache_lib.c", i32 26, i32 22}
!25 = !{ptr @nfs_cache_getent_prog, !26, !"nfs_cache_getent_prog", i1 false, i1 false}
!26 = !{!"../fs/nfs/cache_lib.c", i32 24, i32 13}
!27 = !{ptr @init_completion.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../include/linux/completion.h", i32 87, i32 2}
!29 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 2148650918}
!40 = !{i64 2148565358, i64 2148565390, i64 2148565419, i64 2148565453, i64 2148565484, i64 2148565507}
!41 = !{!"branch_weights", i32 2000, i32 1}
!42 = !{i64 2149848691}
!43 = !{i64 2148562893, i64 2148562925, i64 2148562954, i64 2148562988, i64 2148563019, i64 2148563042}
!44 = !{!"branch_weights", i32 1, i32 2000}
