; ModuleID = '/llk/IR_all_yes/ipc/msgutil.c_pt.bc'
source_filename = "../ipc/msgutil.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.user_namespace = type opaque
%struct.proc_ns_operations = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ipc_namespace = type { [3 x %struct.ipc_ids], [4 x i32], i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i32, %struct.notifier_block, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.llist_node, %struct.ns_common }
%struct.ipc_ids = type { i32, i16, %struct.rw_semaphore, %struct.idr, i32, i32, i32, %struct.rhashtable }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.llist_node = type { ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.msg_msg = type { %struct.list_head, i32, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.msg_msgseg = type { ptr }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mq_lock\00", [24 x i8] zeroinitializer }, align 32
@mq_lock = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@ipcns_operations = external dso_local constant %struct.proc_ns_operations, align 4
@init_ipc_ns = dso_local global { %struct.ipc_namespace, [324 x i8] } { %struct.ipc_namespace { [3 x %struct.ipc_ids] zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i32 0, i32 0, %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.notifier_block zeroinitializer, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @init_user_ns, ptr null, %struct.llist_node zeroinitializer, %struct.ns_common { %struct.atomic_t zeroinitializer, ptr @ipcns_operations, i32 -268435457, %struct.refcount_struct { %struct.atomic_t { i32 1 } } } }, [324 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ipc/msgutil.c\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [8 x i8] c"mq_lock\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 21, i32 1 }
@___asan_gen_.11 = private unnamed_addr constant [12 x i8] c"init_ipc_ns\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 28, i32 22 }
@___asan_gen_.15 = private constant [17 x i8] c"../ipc/msgutil.c\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.15, i32 180, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 230, i32 6 }
@___asan_gen_.21 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 214, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 156, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @mq_lock, ptr @init_ipc_ns, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mq_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ipc_ns to i32), i32 1340, i32 1664, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @load_msg(ptr noundef %src, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %len, i32 4072) #6
  %add.i = add nuw nsw i32 %0, 24
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 4197568) #9
  %cmp1.i = icmp eq ptr %call9.i.i, null
  br i1 %cmp1.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %next.i = getelementptr inbounds %struct.msg_msg, ptr %call9.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %next.i, align 16
  %security.i = getelementptr inbounds %struct.msg_msg, ptr %call9.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %security.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %security.i, align 4
  %sub.i = sub i32 %len, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.not67.i = icmp eq i32 %sub.i, 0
  br i1 %cmp3.not67.i, label %if.end.i.if.end_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %len.addr.069.i = phi i32 [ %sub19.i, %cleanup.i.while.body.i_crit_edge ], [ %sub.i, %if.end.i.while.body.i_crit_edge ]
  %pseg.068.i = phi ptr [ %call9.i58.i, %cleanup.i.while.body.i_crit_edge ], [ %next.i, %if.end.i.while.body.i_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 65, i32 noundef 0) #6
  %call.i.i77 = tail call i32 @__cond_resched() #6
  %3 = tail call i32 @llvm.umin.i32(i32 %len.addr.069.i, i32 4092) #6
  %add12.i = add nuw nsw i32 %3, 4
  %call9.i58.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add12.i, i32 noundef 4197568) #9
  %cmp14.i = icmp eq ptr %call9.i58.i, null
  br i1 %cmp14.i, label %out_err.i, label %cleanup.i

cleanup.i:                                        ; preds = %while.body.i
  %4 = ptrtoint ptr %pseg.068.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9.i58.i, ptr %pseg.068.i, align 4
  %5 = ptrtoint ptr %call9.i58.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %call9.i58.i, align 128
  %sub19.i = sub i32 %len.addr.069.i, %3
  %cmp3.not.i = icmp eq i32 %sub19.i, 0
  br i1 %cmp3.not.i, label %cleanup.i.if.end_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

cleanup.i.if.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

out_err.i:                                        ; preds = %while.body.i
  tail call void @security_msg_msg_free(ptr noundef nonnull %call9.i.i) #6
  %6 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next.i, align 16
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #6
  %cmp.not7.i.i = icmp eq ptr %7, null
  br i1 %cmp.not7.i.i, label %out_err.i.cleanup_crit_edge, label %out_err.i.while.body.i.i_crit_edge

out_err.i.while.body.i.i_crit_edge:               ; preds = %out_err.i
  br label %while.body.i.i

out_err.i.cleanup_crit_edge:                      ; preds = %out_err.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %out_err.i.while.body.i.i_crit_edge
  %seg.08.i.i = phi ptr [ %9, %while.body.i.i.while.body.i.i_crit_edge ], [ %7, %out_err.i.while.body.i.i_crit_edge ]
  %8 = ptrtoint ptr %seg.08.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %seg.08.i.i, align 4
  tail call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 180, i32 noundef 0) #6
  %call.i.i.i78 = tail call i32 @__cond_resched() #6
  tail call void @kfree(ptr noundef nonnull %seg.08.i.i) #6
  %cmp.not.i.i = icmp eq ptr %9, null
  br i1 %cmp.not.i.i, label %while.body.i.i.cleanup_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

while.body.i.i.cleanup_crit_edge:                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %cleanup.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %add.ptr = getelementptr %struct.msg_msg, ptr %call9.i.i, i32 1
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %0, i1 noundef zeroext false) #6
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.end.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end.if.end.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %src, i32 %0, i32 -1226833920) #10, !srcloc !24
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !25

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %0) #6
  %11 = tail call i32 @llvm.read_register.i32(metadata !14) #6
  %and.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !26
  %and.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %src, i32 noundef %0) #6
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #6, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %0, %if.end.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %0, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.for.cond_crit_edge, label %if.then11.i.i, !prof !25

if.end.i.i.for.cond_crit_edge:                    ; preds = %if.end.i.i
  br label %for.cond

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = sub i32 %0, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %sub.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %out_err

for.cond:                                         ; preds = %if.end.i.i70.for.cond_crit_edge, %if.end.i.i.for.cond_crit_edge
  %len.addr.0 = phi i32 [ %sub, %if.end.i.i70.for.cond_crit_edge ], [ %len, %if.end.i.i.for.cond_crit_edge ]
  %seg.0.in = phi ptr [ %seg.0, %if.end.i.i70.for.cond_crit_edge ], [ %next.i, %if.end.i.i.for.cond_crit_edge ]
  %alen.0 = phi i32 [ %16, %if.end.i.i70.for.cond_crit_edge ], [ %0, %if.end.i.i.for.cond_crit_edge ]
  %src.addr.0 = phi ptr [ %add.ptr7, %if.end.i.i70.for.cond_crit_edge ], [ %src, %if.end.i.i.for.cond_crit_edge ]
  %15 = ptrtoint ptr %seg.0.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %seg.0 = load ptr, ptr %seg.0.in, align 4
  %cmp6.not = icmp eq ptr %seg.0, null
  br i1 %cmp6.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %sub = sub i32 %len.addr.0, %alen.0
  %add.ptr7 = getelementptr i8, ptr %src.addr.0, i32 %alen.0
  %16 = tail call i32 @llvm.umin.i32(i32 %sub, i32 4092)
  %add.ptr14 = getelementptr %struct.msg_msgseg, ptr %seg.0, i32 1
  tail call void @__check_object_size(ptr noundef %add.ptr14, i32 noundef %16, i1 noundef zeroext false) #6
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #6
  %call.i.i56 = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i56, label %for.body.if.end.i.i70_crit_edge, label %land.lhs.true.i.i60

for.body.if.end.i.i70_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i70

land.lhs.true.i.i60:                              ; preds = %for.body
  %17 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr7, i32 %16, i32 -1226833920) #10, !srcloc !24
  %asmresult.i.i58 = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i58)
  %cmp.i6.i59 = icmp eq i32 %asmresult.i.i58, 0
  br i1 %cmp.i6.i59, label %if.then.i7.i67, label %land.lhs.true.i.i60.if.end.i.i70_crit_edge, !prof !25

land.lhs.true.i.i60.if.end.i.i70_crit_edge:       ; preds = %land.lhs.true.i.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i70

if.then.i7.i67:                                   ; preds = %land.lhs.true.i.i60
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i61 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr14, i32 noundef %16) #6
  %18 = tail call i32 @llvm.read_register.i32(metadata !14) #6
  %and.i.i.i.i.i.i62 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i.i62 to ptr
  %cpu_domain.i.i.i.i.i63 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 4
  %20 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i63) #4, !srcloc !26
  %and.i.i.i.i64 = and i32 %20, -13
  %or.i.i.i.i65 = or i32 %and.i.i.i.i64, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i65) #6, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  %call1.i.i.i66 = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr14, ptr noundef %add.ptr7, i32 noundef %16) #6
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %20) #6, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  br label %if.end.i.i70

if.end.i.i70:                                     ; preds = %if.then.i7.i67, %land.lhs.true.i.i60.if.end.i.i70_crit_edge, %for.body.if.end.i.i70_crit_edge
  %res.0.i.i68 = phi i32 [ %16, %for.body.if.end.i.i70_crit_edge ], [ %call1.i.i.i66, %if.then.i7.i67 ], [ %16, %land.lhs.true.i.i60.if.end.i.i70_crit_edge ]
  %tobool4.not.i.i69 = icmp eq i32 %res.0.i.i68, 0
  br i1 %tobool4.not.i.i69, label %if.end.i.i70.for.cond_crit_edge, label %if.then11.i.i73, !prof !25

if.end.i.i70.for.cond_crit_edge:                  ; preds = %if.end.i.i70
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

if.then11.i.i73:                                  ; preds = %if.end.i.i70
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i71 = sub i32 %16, %res.0.i.i68
  %add.ptr.i.i72 = getelementptr i8, ptr %add.ptr14, i32 %sub.i.i71
  %21 = call ptr @memset(ptr %add.ptr.i.i72, i32 0, i32 %res.0.i.i68)
  br label %out_err

for.end:                                          ; preds = %for.cond
  %call20 = tail call i32 @security_msg_msg_alloc(ptr noundef nonnull %call9.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %for.end.cleanup_crit_edge, label %for.end.out_err_crit_edge

for.end.out_err_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

out_err:                                          ; preds = %for.end.out_err_crit_edge, %if.then11.i.i73, %if.then11.i.i
  %err.0 = phi i32 [ %call20, %for.end.out_err_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i73 ]
  tail call void @security_msg_msg_free(ptr noundef nonnull %call9.i.i) #6
  %22 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %next.i, align 16
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #6
  %cmp.not7.i = icmp eq ptr %23, null
  br i1 %cmp.not7.i, label %out_err.free_msg.exit_crit_edge, label %out_err.while.body.i81_crit_edge

out_err.while.body.i81_crit_edge:                 ; preds = %out_err
  br label %while.body.i81

out_err.free_msg.exit_crit_edge:                  ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_msg.exit

while.body.i81:                                   ; preds = %while.body.i81.while.body.i81_crit_edge, %out_err.while.body.i81_crit_edge
  %seg.08.i = phi ptr [ %25, %while.body.i81.while.body.i81_crit_edge ], [ %23, %out_err.while.body.i81_crit_edge ]
  %24 = ptrtoint ptr %seg.08.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %seg.08.i, align 4
  tail call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 180, i32 noundef 0) #6
  %call.i.i80 = tail call i32 @__cond_resched() #6
  tail call void @kfree(ptr noundef nonnull %seg.08.i) #6
  %cmp.not.i = icmp eq ptr %25, null
  br i1 %cmp.not.i, label %while.body.i81.free_msg.exit_crit_edge, label %while.body.i81.while.body.i81_crit_edge

while.body.i81.while.body.i81_crit_edge:          ; preds = %while.body.i81
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i81

while.body.i81.free_msg.exit_crit_edge:           ; preds = %while.body.i81
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_msg.exit

free_msg.exit:                                    ; preds = %while.body.i81.free_msg.exit_crit_edge, %out_err.free_msg.exit_crit_edge
  %26 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %free_msg.exit, %for.end.cleanup_crit_edge, %while.body.i.i.cleanup_crit_edge, %out_err.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %26, %free_msg.exit ], [ %call9.i.i, %for.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %out_err.i.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %while.body.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_msg_msg_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_msg(ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @security_msg_msg_free(ptr noundef %msg) #6
  %next = getelementptr inbounds %struct.msg_msg, ptr %msg, i32 0, i32 3
  %0 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next, align 4
  tail call void @kfree(ptr noundef %msg) #6
  %cmp.not7 = icmp eq ptr %1, null
  br i1 %cmp.not7, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %seg.08 = phi ptr [ %3, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %2 = ptrtoint ptr %seg.08 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %seg.08, align 4
  tail call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 180, i32 noundef 0) #6
  %call.i = tail call i32 @__cond_resched() #6
  tail call void @kfree(ptr noundef nonnull %seg.08) #6
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @copy_msg(ptr nocapture noundef readonly %src, ptr noundef %dst) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %m_ts = getelementptr inbounds %struct.msg_msg, ptr %src, i32 0, i32 2
  %0 = ptrtoint ptr %m_ts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %m_ts, align 4
  %m_ts2 = getelementptr inbounds %struct.msg_msg, ptr %dst, i32 0, i32 2
  %2 = ptrtoint ptr %m_ts2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %m_ts2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ugt i32 %1, %3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = tail call i32 @llvm.umin.i32(i32 %1, i32 4072)
  %add.ptr = getelementptr %struct.msg_msg, ptr %dst, i32 1
  %add.ptr4 = getelementptr %struct.msg_msg, ptr %src, i32 1
  %5 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr4, i32 %4)
  %next5 = getelementptr inbounds %struct.msg_msg, ptr %src, i32 0, i32 3
  %6 = ptrtoint ptr %next5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %src_pseg.044 = load ptr, ptr %next5, align 4
  %cmp6.not45 = icmp eq ptr %src_pseg.044, null
  br i1 %cmp6.not45, label %if.end.for.end_crit_edge, label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %next = getelementptr inbounds %struct.msg_msg, ptr %dst, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %src_pseg.049 = phi ptr [ %src_pseg.0, %for.body.for.body_crit_edge ], [ %src_pseg.044, %for.body.preheader ]
  %dst_pseg.0.in48 = phi ptr [ %dst_pseg.0, %for.body.for.body_crit_edge ], [ %next, %for.body.preheader ]
  %alen.047 = phi i32 [ %8, %for.body.for.body_crit_edge ], [ %4, %for.body.preheader ]
  %len.046 = phi i32 [ %sub, %for.body.for.body_crit_edge ], [ %1, %for.body.preheader ]
  %7 = ptrtoint ptr %dst_pseg.0.in48 to i32
  call void @__asan_load4_noabort(i32 %7)
  %dst_pseg.0 = load ptr, ptr %dst_pseg.0.in48, align 4
  %sub = sub i32 %len.046, %alen.047
  %8 = tail call i32 @llvm.umin.i32(i32 %sub, i32 4092)
  %add.ptr13 = getelementptr %struct.msg_msgseg, ptr %dst_pseg.0, i32 1
  %add.ptr14 = getelementptr %struct.msg_msgseg, ptr %src_pseg.049, i32 1
  %9 = call ptr @memcpy(ptr %add.ptr13, ptr %add.ptr14, i32 %8)
  %10 = ptrtoint ptr %src_pseg.049 to i32
  call void @__asan_load4_noabort(i32 %10)
  %src_pseg.0 = load ptr, ptr %src_pseg.049, align 4
  %cmp6.not = icmp eq ptr %src_pseg.0, null
  br i1 %cmp6.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %m_type = getelementptr inbounds %struct.msg_msg, ptr %src, i32 0, i32 1
  %11 = ptrtoint ptr %m_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %m_type, align 4
  %m_type17 = getelementptr inbounds %struct.msg_msg, ptr %dst, i32 0, i32 1
  %13 = ptrtoint ptr %m_type17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %m_type17, align 4
  %14 = ptrtoint ptr %m_ts to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %m_ts, align 4
  %16 = ptrtoint ptr %m_ts2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %m_ts2, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %dst, %for.end ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @store_msg(ptr noundef %dest, ptr noundef %msg, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %len, i32 4072)
  %add.ptr = getelementptr %struct.msg_msg, ptr %msg, i32 1
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %0, i1 noundef zeroext true) #6
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %entry.copy_to_user.exit_crit_edge, label %if.end.i.i

entry.copy_to_user.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %dest, i32 %0, i32 -1226833920) #10, !srcloc !29
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %0) #6
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %dest, ptr noundef %add.ptr, i32 noundef %0) #6
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %entry.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %0, %entry.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %0, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool.not, label %if.end, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %copy_to_user.exit
  %next = getelementptr inbounds %struct.msg_msg, ptr %msg, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %copy_to_user.exit47.for.cond_crit_edge, %if.end
  %len.addr.0 = phi i32 [ %len, %if.end ], [ %sub, %copy_to_user.exit47.for.cond_crit_edge ]
  %alen.0 = phi i32 [ %0, %if.end ], [ %3, %copy_to_user.exit47.for.cond_crit_edge ]
  %seg.0.in = phi ptr [ %next, %if.end ], [ %seg.0, %copy_to_user.exit47.for.cond_crit_edge ]
  %dest.addr.0 = phi ptr [ %dest, %if.end ], [ %add.ptr2, %copy_to_user.exit47.for.cond_crit_edge ]
  %2 = ptrtoint ptr %seg.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %seg.0 = load ptr, ptr %seg.0.in, align 4
  %cmp1.not = icmp eq ptr %seg.0, null
  br i1 %cmp1.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %sub = sub i32 %len.addr.0, %alen.0
  %add.ptr2 = getelementptr i8, ptr %dest.addr.0, i32 %alen.0
  %3 = tail call i32 @llvm.umin.i32(i32 %sub, i32 4092)
  %add.ptr9 = getelementptr %struct.msg_msgseg, ptr %seg.0, i32 1
  tail call void @__check_object_size(ptr noundef %add.ptr9, i32 noundef %3, i1 noundef zeroext true) #6
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #6
  %call.i.i38 = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i38, label %for.body.copy_to_user.exit47_crit_edge, label %if.end.i.i42

for.body.copy_to_user.exit47_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit47

if.end.i.i42:                                     ; preds = %for.body
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr2, i32 %3, i32 -1226833920) #10, !srcloc !29
  %asmresult.i.i40 = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i40)
  %cmp.i6.i41 = icmp eq i32 %asmresult.i.i40, 0
  br i1 %cmp.i6.i41, label %if.then2.i.i45, label %if.end.i.i42.copy_to_user.exit47_crit_edge

if.end.i.i42.copy_to_user.exit47_crit_edge:       ; preds = %if.end.i.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit47

if.then2.i.i45:                                   ; preds = %if.end.i.i42
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i43 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr9, i32 noundef %3) #6
  %call.i12.i.i44 = tail call i32 @arm_copy_to_user(ptr noundef %add.ptr2, ptr noundef %add.ptr9, i32 noundef %3) #6
  br label %copy_to_user.exit47

copy_to_user.exit47:                              ; preds = %if.then2.i.i45, %if.end.i.i42.copy_to_user.exit47_crit_edge, %for.body.copy_to_user.exit47_crit_edge
  %n.addr.0.i46 = phi i32 [ %3, %for.body.copy_to_user.exit47_crit_edge ], [ %call.i12.i.i44, %if.then2.i.i45 ], [ %3, %if.end.i.i42.copy_to_user.exit47_crit_edge ]
  %tobool11.not = icmp eq i32 %n.addr.0.i46, 0
  br i1 %tobool11.not, label %copy_to_user.exit47.for.cond_crit_edge, label %copy_to_user.exit47.cleanup_crit_edge

copy_to_user.exit47.cleanup_crit_edge:            ; preds = %copy_to_user.exit47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

copy_to_user.exit47.for.cond_crit_edge:           ; preds = %copy_to_user.exit47
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

cleanup:                                          ; preds = %copy_to_user.exit47.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %copy_to_user.exit.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ -1, %copy_to_user.exit47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_msg_msg_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12}
!llvm.named.register.sp = !{!14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../ipc/msgutil.c", i32 21, i32 1}
!2 = !{ptr @mq_lock, !1, !"mq_lock", i1 false, i1 false}
!3 = !{ptr @init_ipc_ns, !4, !"init_ipc_ns", i1 false, i1 false}
!4 = !{!"../ipc/msgutil.c", i32 28, i32 22}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../ipc/msgutil.c", i32 180, i32 3}
!7 = distinct !{null, !8, !"__already_done", i1 false, i1 false}
!8 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!14 = !{!"sp"}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i64 2152293046, i64 2152293071}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 4788601}
!27 = !{i64 4788798}
!28 = !{i64 2152274031}
!29 = !{i64 2152293727, i64 2152293752}
