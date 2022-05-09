; ModuleID = '/llk/IR_all_yes/security/tomoyo/gc.c_pt.bc'
source_filename = "../security/tomoyo/gc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.tomoyo_condition = type { %struct.tomoyo_shared_acl_head, i32, i16, i16, i16, i16, i16, i8, ptr }
%struct.tomoyo_shared_acl_head = type { %struct.list_head, %struct.atomic_t }
%struct.tomoyo_condition_element = type { i8, i8, i8 }
%struct.tomoyo_number_union = type { [2 x i32], ptr, [2 x i8] }
%struct.tomoyo_name_union = type { ptr, ptr }
%struct.tomoyo_argv = type { i32, ptr, i8 }
%struct.tomoyo_envp = type { ptr, ptr, i8 }
%struct.tomoyo_io_buffer = type { ptr, ptr, ptr, %struct.mutex, ptr, i32, %struct.anon.131, %struct.anon.132, ptr, i32, ptr, i32, i32, i8, %struct.list_head }
%struct.anon.131 = type { ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, [64 x ptr] }
%struct.anon.132 = type { ptr, ptr, i32, i8 }
%struct.tomoyo_domain_info = type { %struct.list_head, %struct.list_head, ptr, ptr, [8 x i32], i8, i8, [2 x i8], %struct.atomic_t }
%struct.tomoyo_acl_info = type <{ %struct.list_head, ptr, i8, i8 }>
%struct.tomoyo_acl_head = type <{ %struct.list_head, i8 }>
%struct.tomoyo_group = type { %struct.tomoyo_shared_acl_head, ptr, %struct.list_head }
%struct.tomoyo_transition_control = type { %struct.tomoyo_acl_head, i8, i8, ptr, ptr }
%struct.tomoyo_manager = type { %struct.tomoyo_acl_head, ptr }
%struct.tomoyo_aggregator = type { %struct.tomoyo_acl_head, ptr, ptr }
%struct.tomoyo_path_group = type { %struct.tomoyo_acl_head, ptr }
%struct.tomoyo_name = type { %struct.tomoyo_shared_acl_head, %struct.tomoyo_path_info }
%struct.tomoyo_path_info = type { ptr, i32, i16, i8, i8 }
%struct.tomoyo_path_acl = type { %struct.tomoyo_acl_info, i16, %struct.tomoyo_name_union }
%struct.tomoyo_path2_acl = type { %struct.tomoyo_acl_info, i8, %struct.tomoyo_name_union, %struct.tomoyo_name_union }
%struct.tomoyo_path_number_acl = type { %struct.tomoyo_acl_info, i8, %struct.tomoyo_name_union, %struct.tomoyo_number_union }
%struct.tomoyo_mkdev_acl = type { %struct.tomoyo_acl_info, i8, %struct.tomoyo_name_union, %struct.tomoyo_number_union, %struct.tomoyo_number_union, %struct.tomoyo_number_union }
%struct.tomoyo_mount_acl = type { %struct.tomoyo_acl_info, %struct.tomoyo_name_union, %struct.tomoyo_name_union, %struct.tomoyo_name_union, %struct.tomoyo_number_union }
%struct.tomoyo_env_acl = type { %struct.tomoyo_acl_info, ptr }
%struct.tomoyo_inet_acl = type { %struct.tomoyo_acl_info, i8, i8, %struct.tomoyo_ipaddr_union, %struct.tomoyo_number_union }
%struct.tomoyo_ipaddr_union = type { [2 x %struct.in6_addr], ptr, i8 }
%struct.in6_addr = type { %union.anon.81 }
%union.anon.81 = type { [4 x i32] }
%struct.tomoyo_unix_acl = type { %struct.tomoyo_acl_info, i8, i8, %struct.tomoyo_name_union }
%struct.tomoyo_task_acl = type { %struct.tomoyo_acl_info, ptr }

@tomoyo_io_buffer_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@tomoyo_io_buffer_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @tomoyo_io_buffer_list, ptr @tomoyo_io_buffer_list }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GC for TOMOYO\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tomoyo_io_buffer_list_lock\00", [37 x i8] zeroinitializer }, align 32
@tomoyo_gc_thread.tomoyo_gc_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tomoyo_gc_thread.tomoyo_gc_mutex, i64 52), ptr getelementptr (i8, ptr @tomoyo_gc_thread.tomoyo_gc_mutex, i64 52) }, ptr @tomoyo_gc_thread.tomoyo_gc_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tomoyo_gc_mutex.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tomoyo_gc_mutex\00", [16 x i8] zeroinitializer }, align 32
@tomoyo_policy_lock = external dso_local global %struct.mutex, align 4
@tomoyo_domain_list = external dso_local global %struct.list_head, align 4
@tomoyo_namespace_list = external dso_local global %struct.list_head, align 4
@tomoyo_condition_list = external dso_local global %struct.list_head, align 4
@tomoyo_name_list = external dso_local global [256 x %struct.list_head], align 4
@tomoyo_ss = external dso_local global %struct.srcu_struct, align 4
@tomoyo_memory_used = external dso_local local_unnamed_addr global [3 x i32], align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 2, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.4 = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@___asan_gen_.5 = private unnamed_addr constant [27 x i8] c"tomoyo_io_buffer_list_lock\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [22 x i8] c"tomoyo_io_buffer_list\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 28, i32 8 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 669, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 30, i32 8 }
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"tomoyo_gc_mutex\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [24 x i8] c"../security/tomoyo/gc.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 615, i32 9 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @tomoyo_io_buffer_list_lock, ptr @tomoyo_io_buffer_list, ptr @.str, ptr @.str.1, ptr @tomoyo_gc_thread.tomoyo_gc_mutex, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_io_buffer_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_io_buffer_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tomoyo_gc_thread.tomoyo_gc_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tomoyo_del_condition(ptr noundef %element) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %condc1 = getelementptr inbounds %struct.tomoyo_condition, ptr %element, i32 0, i32 2
  %0 = ptrtoint ptr %condc1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %condc1, align 4
  %numbers_count2 = getelementptr inbounds %struct.tomoyo_condition, ptr %element, i32 0, i32 3
  %2 = ptrtoint ptr %numbers_count2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %numbers_count2, align 2
  %names_count3 = getelementptr inbounds %struct.tomoyo_condition, ptr %element, i32 0, i32 4
  %4 = ptrtoint ptr %names_count3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %names_count3, align 4
  %argc4 = getelementptr inbounds %struct.tomoyo_condition, ptr %element, i32 0, i32 5
  %6 = ptrtoint ptr %argc4 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %argc4, align 2
  %envc5 = getelementptr inbounds %struct.tomoyo_condition, ptr %element, i32 0, i32 6
  %8 = ptrtoint ptr %envc5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %envc5, align 4
  %add.ptr6 = getelementptr %struct.tomoyo_condition, ptr %element, i32 1
  %conv = zext i16 %1 to i32
  %add.ptr7 = getelementptr %struct.tomoyo_condition_element, ptr %add.ptr6, i32 %conv
  %conv8 = zext i16 %3 to i32
  %add.ptr9 = getelementptr %struct.tomoyo_number_union, ptr %add.ptr7, i32 %conv8
  %conv10 = zext i16 %5 to i32
  %add.ptr11 = getelementptr %struct.tomoyo_name_union, ptr %add.ptr9, i32 %conv10
  %conv12 = zext i16 %7 to i32
  %add.ptr13 = getelementptr %struct.tomoyo_argv, ptr %add.ptr11, i32 %conv12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp75.not = icmp eq i16 %3, 0
  br i1 %cmp75.not, label %entry.for.cond16.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond16.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.body.for.cond16.preheader_crit_edge, %entry.for.cond16.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp1878.not = icmp eq i16 %5, 0
  br i1 %cmp1878.not, label %for.cond16.preheader.for.cond25.preheader_crit_edge, label %for.cond16.preheader.for.body20_crit_edge

for.cond16.preheader.for.body20_crit_edge:        ; preds = %for.cond16.preheader
  br label %for.body20

for.cond16.preheader.for.cond25.preheader_crit_edge: ; preds = %for.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond25.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %numbers_p.077 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %add.ptr7, %entry.for.body_crit_edge ]
  %i.076 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %incdec.ptr = getelementptr %struct.tomoyo_number_union, ptr %numbers_p.077, i32 1
  tail call void @tomoyo_put_number_union(ptr noundef %numbers_p.077) #4
  %inc = add nuw nsw i32 %i.076, 1
  %exitcond.not = icmp eq i32 %inc, %conv8
  br i1 %exitcond.not, label %for.body.for.cond16.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.cond16.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond16.preheader

for.cond25.preheader:                             ; preds = %for.body20.for.cond25.preheader_crit_edge, %for.cond16.preheader.for.cond25.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp2781.not = icmp eq i16 %7, 0
  br i1 %cmp2781.not, label %for.cond25.preheader.for.cond34.preheader_crit_edge, label %for.cond25.preheader.for.body29_crit_edge

for.cond25.preheader.for.body29_crit_edge:        ; preds = %for.cond25.preheader
  br label %for.body29

for.cond25.preheader.for.cond34.preheader_crit_edge: ; preds = %for.cond25.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond34.preheader

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %for.cond16.preheader.for.body20_crit_edge
  %names_p.080 = phi ptr [ %incdec.ptr21, %for.body20.for.body20_crit_edge ], [ %add.ptr9, %for.cond16.preheader.for.body20_crit_edge ]
  %i.179 = phi i32 [ %inc23, %for.body20.for.body20_crit_edge ], [ 0, %for.cond16.preheader.for.body20_crit_edge ]
  %incdec.ptr21 = getelementptr %struct.tomoyo_name_union, ptr %names_p.080, i32 1
  tail call void @tomoyo_put_name_union(ptr noundef %names_p.080) #4
  %inc23 = add nuw nsw i32 %i.179, 1
  %exitcond87.not = icmp eq i32 %inc23, %conv10
  br i1 %exitcond87.not, label %for.body20.for.cond25.preheader_crit_edge, label %for.body20.for.body20_crit_edge

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body20

for.body20.for.cond25.preheader_crit_edge:        ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond25.preheader

for.cond34.preheader:                             ; preds = %tomoyo_put_name.exit.for.cond34.preheader_crit_edge, %for.cond25.preheader.for.cond34.preheader_crit_edge
  %conv35 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp3684.not = icmp eq i16 %9, 0
  br i1 %cmp3684.not, label %for.cond34.preheader.for.end43_crit_edge, label %for.cond34.preheader.for.body38_crit_edge

for.cond34.preheader.for.body38_crit_edge:        ; preds = %for.cond34.preheader
  br label %for.body38

for.cond34.preheader.for.end43_crit_edge:         ; preds = %for.cond34.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end43

for.body29:                                       ; preds = %tomoyo_put_name.exit.for.body29_crit_edge, %for.cond25.preheader.for.body29_crit_edge
  %argv.083 = phi ptr [ %incdec.ptr31, %tomoyo_put_name.exit.for.body29_crit_edge ], [ %add.ptr11, %for.cond25.preheader.for.body29_crit_edge ]
  %i.282 = phi i32 [ %inc32, %tomoyo_put_name.exit.for.body29_crit_edge ], [ 0, %for.cond25.preheader.for.body29_crit_edge ]
  %value = getelementptr inbounds %struct.tomoyo_argv, ptr %argv.083, i32 0, i32 1
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %value, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %for.body29.tomoyo_put_name.exit_crit_edge, label %if.then.i

for.body29.tomoyo_put_name.exit_crit_edge:        ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #6
  br label %tomoyo_put_name.exit

if.then.i:                                        ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #6
  %users.i = getelementptr i8, ptr %11, i32 -4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #4
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #4, !srcloc !20
  br label %tomoyo_put_name.exit

tomoyo_put_name.exit:                             ; preds = %if.then.i, %for.body29.tomoyo_put_name.exit_crit_edge
  %incdec.ptr31 = getelementptr %struct.tomoyo_argv, ptr %argv.083, i32 1
  %inc32 = add nuw nsw i32 %i.282, 1
  %exitcond88.not = icmp eq i32 %inc32, %conv12
  br i1 %exitcond88.not, label %tomoyo_put_name.exit.for.cond34.preheader_crit_edge, label %tomoyo_put_name.exit.for.body29_crit_edge

tomoyo_put_name.exit.for.body29_crit_edge:        ; preds = %tomoyo_put_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body29

tomoyo_put_name.exit.for.cond34.preheader_crit_edge: ; preds = %tomoyo_put_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond34.preheader

for.body38:                                       ; preds = %tomoyo_put_name.exit74.for.body38_crit_edge, %for.cond34.preheader.for.body38_crit_edge
  %envp.086 = phi ptr [ %incdec.ptr41, %tomoyo_put_name.exit74.for.body38_crit_edge ], [ %add.ptr13, %for.cond34.preheader.for.body38_crit_edge ]
  %i.385 = phi i32 [ %inc42, %tomoyo_put_name.exit74.for.body38_crit_edge ], [ 0, %for.cond34.preheader.for.body38_crit_edge ]
  %13 = ptrtoint ptr %envp.086 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %envp.086, align 4
  %tobool.not.i65 = icmp eq ptr %14, null
  br i1 %tobool.not.i65, label %for.body38.tomoyo_put_name.exit69_crit_edge, label %if.then.i68

for.body38.tomoyo_put_name.exit69_crit_edge:      ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #6
  br label %tomoyo_put_name.exit69

if.then.i68:                                      ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #6
  %users.i66 = getelementptr i8, ptr %14, i32 -4
  %call.i.i.i67 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i66, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %users.i66, i32 1, i32 3, i32 1) #4
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i66, ptr %users.i66, i32 1, ptr elementtype(i32) %users.i66) #4, !srcloc !20
  br label %tomoyo_put_name.exit69

tomoyo_put_name.exit69:                           ; preds = %if.then.i68, %for.body38.tomoyo_put_name.exit69_crit_edge
  %value39 = getelementptr inbounds %struct.tomoyo_envp, ptr %envp.086, i32 0, i32 1
  %16 = ptrtoint ptr %value39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %value39, align 4
  %tobool.not.i70 = icmp eq ptr %17, null
  br i1 %tobool.not.i70, label %tomoyo_put_name.exit69.tomoyo_put_name.exit74_crit_edge, label %if.then.i73

tomoyo_put_name.exit69.tomoyo_put_name.exit74_crit_edge: ; preds = %tomoyo_put_name.exit69
  call void @__sanitizer_cov_trace_pc() #6
  br label %tomoyo_put_name.exit74

if.then.i73:                                      ; preds = %tomoyo_put_name.exit69
  call void @__sanitizer_cov_trace_pc() #6
  %users.i71 = getelementptr i8, ptr %17, i32 -4
  %call.i.i.i72 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i71, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %users.i71, i32 1, i32 3, i32 1) #4
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i71, ptr %users.i71, i32 1, ptr elementtype(i32) %users.i71) #4, !srcloc !20
  br label %tomoyo_put_name.exit74

tomoyo_put_name.exit74:                           ; preds = %if.then.i73, %tomoyo_put_name.exit69.tomoyo_put_name.exit74_crit_edge
  %incdec.ptr41 = getelementptr %struct.tomoyo_envp, ptr %envp.086, i32 1
  %inc42 = add nuw nsw i32 %i.385, 1
  %exitcond89.not = icmp eq i32 %inc42, %conv35
  br i1 %exitcond89.not, label %tomoyo_put_name.exit74.for.end43_crit_edge, label %tomoyo_put_name.exit74.for.body38_crit_edge

tomoyo_put_name.exit74.for.body38_crit_edge:      ; preds = %tomoyo_put_name.exit74
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body38

tomoyo_put_name.exit74.for.end43_crit_edge:       ; preds = %tomoyo_put_name.exit74
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end43

for.end43:                                        ; preds = %tomoyo_put_name.exit74.for.end43_crit_edge, %for.cond34.preheader.for.end43_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_put_number_union(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tomoyo_put_name_union(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tomoyo_notify_gc(ptr noundef %head, i1 noundef zeroext %is_register) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @tomoyo_io_buffer_list_lock) #4
  br i1 %is_register, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %users = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 13
  %0 = ptrtoint ptr %users to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %users, align 4
  %list = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 14
  %1 = load ptr, ptr @tomoyo_io_buffer_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @tomoyo_io_buffer_list, ptr noundef %1) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add.exit_crit_edge

if.then.list_add.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %prev1.i.i, align 4
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 14, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @tomoyo_io_buffer_list, ptr %prev3.i.i, align 4
  store volatile ptr %list, ptr @tomoyo_io_buffer_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tomoyo_io_buffer_list_lock) #4
  br label %if.end14

if.else:                                          ; preds = %entry
  %write_buf = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 10
  %5 = ptrtoint ptr %write_buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_buf, align 4
  %cmp.not = icmp eq ptr %6, null
  %users2 = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 13
  %7 = ptrtoint ptr %users2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %users2, align 4
  %dec = add i8 %8, -1
  store i8 %dec, ptr %users2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %tobool3.not = icmp eq i8 %dec, 0
  br i1 %tobool3.not, label %if.then4, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then4:                                         ; preds = %if.else
  %list5 = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 14
  %call.i.i24 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list5) #4
  br i1 %call.i.i24, label %if.end.i.i25, label %if.then4.list_del.exit_crit_edge

if.then4.list_del.exit_crit_edge:                 ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i25:                                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 14, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %list5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %list5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i25, %if.then4.list_del.exit_crit_edge
  %15 = ptrtoint ptr %list5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %list5, align 4
  %prev.i = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 14, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %read_buf = getelementptr inbounds %struct.tomoyo_io_buffer, ptr %head, i32 0, i32 8
  %17 = ptrtoint ptr %read_buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %read_buf, align 4
  tail call void @kfree(ptr noundef %18) #4
  %19 = ptrtoint ptr %write_buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write_buf, align 4
  tail call void @kfree(ptr noundef %20) #4
  tail call void @kfree(ptr noundef %head) #4
  br label %if.end7

if.end7:                                          ; preds = %list_del.exit, %if.else.if.end7_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tomoyo_io_buffer_list_lock) #4
  br i1 %cmp.not, label %if.end7.if.end14_crit_edge, label %if.then9

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then9:                                         ; preds = %if.end7
  %call = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @tomoyo_gc_thread, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9.if.end14_crit_edge, label %if.then11

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = tail call i32 @wake_up_process(ptr noundef %call) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then9.if.end14_crit_edge, %if.end7.if.end14_crit_edge, %list_add.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tomoyo_gc_thread(ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mutex_trylock(ptr noundef nonnull @tomoyo_gc_thread.tomoyo_gc_mutex) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @tomoyo_policy_lock, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tomoyo_domain_list to i32))
  %0 = load ptr, ptr @tomoyo_domain_list, align 4
  %cmp.not247.i = icmp eq ptr %0, @tomoyo_domain_list
  br i1 %cmp.not247.i, label %if.end.for.cond16.preheader.i_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.for.cond16.preheader.i_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond16.preheader.i

for.cond16.preheader.i:                           ; preds = %for.inc.i.for.cond16.preheader.i_crit_edge, %if.end.for.cond16.preheader.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tomoyo_namespace_list to i32))
  %.pn253.i = load ptr, ptr @tomoyo_namespace_list, align 4
  %cmp17.not254.i = icmp eq ptr %.pn253.i, @tomoyo_namespace_list
  br i1 %cmp17.not254.i, label %for.cond16.preheader.i.for.end38.i_crit_edge, label %for.cond16.preheader.i.for.cond20.preheader.i_crit_edge

for.cond16.preheader.i.for.cond20.preheader.i_crit_edge: ; preds = %for.cond16.preheader.i
  br label %for.cond20.preheader.i

for.cond16.preheader.i.for.end38.i_crit_edge:     ; preds = %for.cond16.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end38.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %domain.0248.i = phi ptr [ %tmp.0249.i, %for.inc.i.for.body.i_crit_edge ], [ %0, %if.end.for.body.i_crit_edge ]
  %1 = ptrtoint ptr %domain.0248.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp.0249.i = load ptr, ptr %domain.0248.i, align 4
  %acl_info_list.i = getelementptr inbounds %struct.tomoyo_domain_info, ptr %domain.0248.i, i32 0, i32 1
  %2 = ptrtoint ptr %acl_info_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acl_info_list.i, align 4
  %cmp.not22.i.i = icmp eq ptr %3, %acl_info_list.i
  br i1 %cmp.not22.i.i, label %for.body.i.tomoyo_collect_acl.exit.i_crit_edge, label %for.body.i.for.body.i.i_crit_edge

for.body.i.for.body.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.body.i.i

for.body.i.tomoyo_collect_acl.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tomoyo_collect_acl.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.i.for.body.i.i_crit_edge
  %acl.023.i.i = phi ptr [ %tmp.024.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %3, %for.body.i.for.body.i.i_crit_edge ]
  %4 = ptrtoint ptr %acl.023.i.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %tmp.024.i.i = load ptr, ptr %acl.023.i.i, align 1
  %is_deleted.i.i = getelementptr inbounds %struct.tomoyo_acl_info, ptr %acl.023.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %is_deleted.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_deleted.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %is_deleted.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %is_deleted.i.i, align 1
  tail call fastcc void @tomoyo_try_to_gc(i32 noundef 9, ptr noundef %acl.023.i.i) #4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %cmp.not.i.i = icmp eq ptr %tmp.024.i.i, %acl_info_list.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.tomoyo_collect_acl.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.inc.i.i.tomoyo_collect_acl.exit.i_crit_edge:  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tomoyo_collect_acl.exit.i

tomoyo_collect_acl.exit.i:                        ; preds = %for.inc.i.i.tomoyo_collect_acl.exit.i_crit_edge, %for.body.i.tomoyo_collect_acl.exit.i_crit_edge
  %is_deleted.i = getelementptr inbounds %struct.tomoyo_domain_info, ptr %domain.0248.i, i32 0, i32 6
  %8 = ptrtoint ptr %is_deleted.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_deleted.i, align 1, !range !21
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %tomoyo_collect_acl.exit.i.for.inc.i_crit_edge, label %lor.lhs.false.i

tomoyo_collect_acl.exit.i.for.inc.i_crit_edge:    ; preds = %tomoyo_collect_acl.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %tomoyo_collect_acl.exit.i
  %users.i = getelementptr inbounds %struct.tomoyo_domain_info, ptr %domain.0248.i, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i, i32 noundef 4) #4
  %10 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not.i = icmp eq i32 %11, 0
  br i1 %tobool6.not.i, label %if.end.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @tomoyo_try_to_gc(i32 noundef 10, ptr noundef %domain.0248.i) #4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %lor.lhs.false.i.for.inc.i_crit_edge, %tomoyo_collect_acl.exit.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %tmp.0249.i, @tomoyo_domain_list
  br i1 %cmp.not.i, label %for.inc.i.for.cond16.preheader.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.for.cond16.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond16.preheader.i

for.cond16.loopexit.i:                            ; preds = %tomoyo_collect_acl.exit235.i
  %12 = ptrtoint ptr %.pn255.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn255.i, align 4
  %cmp17.not.i = icmp eq ptr %.pn.i, @tomoyo_namespace_list
  br i1 %cmp17.not.i, label %for.cond16.loopexit.i.for.end38.i_crit_edge, label %for.cond16.loopexit.i.for.cond20.preheader.i_crit_edge

for.cond16.loopexit.i.for.cond20.preheader.i_crit_edge: ; preds = %for.cond16.loopexit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond20.preheader.i

for.cond16.loopexit.i.for.end38.i_crit_edge:      ; preds = %for.cond16.loopexit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end38.i

for.cond20.preheader.i:                           ; preds = %for.cond16.loopexit.i.for.cond20.preheader.i_crit_edge, %for.cond16.preheader.i.for.cond20.preheader.i_crit_edge
  %.pn255.i = phi ptr [ %.pn.i, %for.cond16.loopexit.i.for.cond20.preheader.i_crit_edge ], [ %.pn253.i, %for.cond16.preheader.i.for.cond20.preheader.i_crit_edge ]
  %policy_list.i = getelementptr i8, ptr %.pn255.i, i32 -2136
  br label %for.body22.i

for.cond25.preheader.i:                           ; preds = %tomoyo_collect_member.exit.i
  %acl_group.i = getelementptr i8, ptr %.pn255.i, i32 -2048
  br label %for.body27.i

for.body22.i:                                     ; preds = %tomoyo_collect_member.exit.i.for.body22.i_crit_edge, %for.cond20.preheader.i
  %id.0250.i = phi i32 [ 0, %for.cond20.preheader.i ], [ %inc.i, %tomoyo_collect_member.exit.i.for.body22.i_crit_edge ]
  %arrayidx.i = getelementptr [11 x %struct.list_head], ptr %policy_list.i, i32 0, i32 %id.0250.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %cmp.not21.i.i = icmp eq ptr %14, %arrayidx.i
  br i1 %cmp.not21.i.i, label %for.body22.i.tomoyo_collect_member.exit.i_crit_edge, label %for.body22.i.for.body.i222.i_crit_edge

for.body22.i.for.body.i222.i_crit_edge:           ; preds = %for.body22.i
  br label %for.body.i222.i

for.body22.i.tomoyo_collect_member.exit.i_crit_edge: ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tomoyo_collect_member.exit.i

for.body.i222.i:                                  ; preds = %for.inc.i225.i.for.body.i222.i_crit_edge, %for.body22.i.for.body.i222.i_crit_edge
  %member.022.i.i = phi ptr [ %tmp.023.i.i, %for.inc.i225.i.for.body.i222.i_crit_edge ], [ %14, %for.body22.i.for.body.i222.i_crit_edge ]
  %15 = ptrtoint ptr %member.022.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %tmp.023.i.i = load ptr, ptr %member.022.i.i, align 1
  %is_deleted.i220.i = getelementptr inbounds %struct.tomoyo_acl_head, ptr %member.022.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %is_deleted.i220.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_deleted.i220.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i221.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i221.i, label %for.body.i222.i.for.inc.i225.i_crit_edge, label %if.end.i223.i

for.body.i222.i.for.inc.i225.i_crit_edge:         ; preds = %for.body.i222.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i225.i

if.end.i223.i:                                    ; preds = %for.body.i222.i
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %is_deleted.i220.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %is_deleted.i220.i, align 1
  tail call fastcc void @tomoyo_try_to_gc(i32 noundef %id.0250.i, ptr noundef %member.022.i.i) #4
  br label %for.inc.i225.i

for.inc.i225.i:                                   ; preds = %if.end.i223.i, %for.body.i222.i.for.inc.i225.i_crit_edge
  %cmp.not.i224.i = icmp eq ptr %tmp.023.i.i, %arrayidx.i
  br i1 %cmp.not.i224.i, label %for.inc.i225.i.tomoyo_collect_member.exit.i_crit_edge, label %for.inc.i225.i.for.body.i222.i_crit_edge

for.inc.i225.i.for.body.i222.i_crit_edge:         ; preds = %for.inc.i225.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i222.i

for.inc.i225.i.tomoyo_collect_member.exit.i_crit_edge: ; preds = %for.inc.i225.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tomoyo_collect_member.exit.i

tomoyo_collect_member.exit.i:                     ; preds = %for.inc.i225.i.tomoyo_collect_member.exit.i_crit_edge, %for.body22.i.tomoyo_collect_member.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %id.0250.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 11
  br i1 %exitcond.not.i, label %for.cond25.preheader.i, label %tomoyo_collect_member.exit.i.for.body22.i_crit_edge

tomoyo_collect_member.exit.i.for.body22.i_crit_edge: ; preds = %tomoyo_collect_member.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body22.i

for.body27.i:                                     ; preds = %tomoyo_collect_acl.exit235.i.for.body27.i_crit_edge, %for.cond25.preheader.i
  %i.0252.i = phi i32 [ 0, %for.cond25.preheader.i ], [ %inc30.i, %tomoyo_collect_acl.exit235.i.for.body27.i_crit_edge ]
  %arrayidx28.i = getelementptr [256 x %struct.list_head], ptr %acl_group.i, i32 0, i32 %i.0252.i
  %19 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx28.i, align 4
  %cmp.not22.i226.i = icmp eq ptr %20, %arrayidx28.i
  br i1 %cmp.not22.i226.i, label %for.body27.i.tomoyo_collect_acl.exit235.i_crit_edge, label %for.body27.i.for.body.i231.i_crit_edge

for.body27.i.for.body.i231.i_crit_edge:           ; preds = %for.body27.i
  br label %for.body.i231.i

for.body27.i.tomoyo_collect_acl.exit235.i_crit_edge: ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tomoyo_collect_acl.exit235.i

for.body.i231.i:                                  ; preds = %for.inc.i234.i.for.body.i231.i_crit_edge, %for.body27.i.for.body.i231.i_crit_edge
  %acl.023.i227.i = phi ptr [ %tmp.024.i228.i, %for.inc.i234.i.for.body.i231.i_crit_edge ], [ %20, %for.body27.i.for.body.i231.i_crit_edge ]
  %21 = ptrtoint ptr %acl.023.i227.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %tmp.024.i228.i = load ptr, ptr %acl.023.i227.i, align 1
  %is_deleted.i229.i = getelementptr inbounds %struct.tomoyo_acl_info, ptr %acl.023.i227.i, i32 0, i32 2
  %22 = ptrtoint ptr %is_deleted.i229.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_deleted.i229.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i230.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i230.i, label %for.body.i231.i.for.inc.i234.i_crit_edge, label %if.end.i232.i

for.body.i231.i.for.inc.i234.i_crit_edge:         ; preds = %for.body.i231.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i234.i

if.end.i232.i:                                    ; preds = %for.body.i231.i
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %is_deleted.i229.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %is_deleted.i229.i, align 1
  tail call fastcc void @tomoyo_try_to_gc(i32 noundef 9, ptr noundef %acl.023.i227.i) #4
  br label %for.inc.i234.i

for.inc.i234.i:                                   ; preds = %if.end.i232.i, %for.body.i231.i.for.inc.i234.i_crit_edge
  %cmp.not.i233.i = icmp eq ptr %tmp.024.i228.i, %arrayidx28.i
  br i1 %cmp.not.i233.i, label %for.inc.i234.i.tomoyo_collect_acl.exit235.i_crit_edge, label %for.inc.i234.i.for.body.i231.i_crit_edge

for.inc.i234.i.for.body.i231.i_crit_edge:         ; preds = %for.inc.i234.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i231.i

for.inc.i234.i.tomoyo_collect_acl.exit235.i_crit_edge: ; preds = %for.inc.i234.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tomoyo_collect_acl.exit235.i

tomoyo_collect_acl.exit235.i:                     ; preds = %for.inc.i234.i.tomoyo_collect_acl.exit235.i_crit_edge, %for.body27.i.tomoyo_collect_acl.exit235.i_crit_edge
  %inc30.i = add nuw nsw i32 %i.0252.i, 1
  %exitcond273.not.i = icmp eq i32 %inc30.i, 256
  br i1 %exitcond273.not.i, label %for.cond16.loopexit.i, label %tomoyo_collect_acl.exit235.i.for.body27.i_crit_edge

tomoyo_collect_acl.exit235.i.for.body27.i_crit_edge: ; preds = %tomoyo_collect_acl.exit235.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body27.i

for.end38.i:                                      ; preds = %for.cond16.loopexit.i.for.end38.i_crit_edge, %for.cond16.preheader.i.for.end38.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tomoyo_condition_list to i32))
  %25 = load ptr, ptr @tomoyo_condition_list, align 4
  %cmp50.not257.i = icmp eq ptr %25, @tomoyo_condition_list
  br i1 %cmp50.not257.i, label %for.end38.i.for.cond70.preheader.i_crit_edge, label %for.end38.i.for.body52.i_crit_edge

for.end38.i.for.body52.i_crit_edge:               ; preds = %for.end38.i
  br label %for.body52.i

for.end38.i.for.cond70.preheader.i_crit_edge:     ; preds = %for.end38.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond70.preheader.i

for.cond70.preheader.i:                           ; preds = %for.inc60.i.for.cond70.preheader.i_crit_edge, %for.end38.i.for.cond70.preheader.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tomoyo_namespace_list to i32))
  %.pn211265.i = load ptr, ptr @tomoyo_namespace_list, align 4
  %cmp72.not266.i = icmp eq ptr %.pn211265.i, @tomoyo_namespace_list
  br i1 %cmp72.not266.i, label %for.cond70.preheader.i.for.body131.i.preheader_crit_edge, label %for.cond70.preheader.i.for.cond75.preheader.i_crit_edge

for.cond70.preheader.i.for.cond75.preheader.i_crit_edge: ; preds = %for.cond70.preheader.i
  br label %for.cond75.preheader.i

for.cond70.preheader.i.for.body131.i.preheader_crit_edge: ; preds = %for.cond70.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body131.i.preheader

for.body52.i:                                     ; preds = %for.inc60.i.for.body52.i_crit_edge, %for.end38.i.for.body52.i_crit_edge
  %ptr.0258.i = phi ptr [ %tmp39.0259.i, %for.inc60.i.for.body52.i_crit_edge ], [ %25, %for.end38.i.for.body52.i_crit_edge ]
  %26 = ptrtoint ptr %ptr.0258.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %tmp39.0259.i = load ptr, ptr %ptr.0258.i, align 1
  %users53.i = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %ptr.0258.i, i32 0, i32 1
  %call.i.i214.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users53.i, i32 noundef 4) #4
  %27 = ptrtoint ptr %users53.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %users53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp55.i = icmp sgt i32 %28, 0
  br i1 %cmp55.i, label %for.body52.i.for.inc60.i_crit_edge, label %if.end57.i

for.body52.i.for.inc60.i_crit_edge:               ; preds = %for.body52.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc60.i

if.end57.i:                                       ; preds = %for.body52.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i215.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users53.i, i32 noundef 4) #4
  %29 = ptrtoint ptr %users53.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 -1, ptr %users53.i, align 4
  tail call fastcc void @tomoyo_try_to_gc(i32 noundef 7, ptr noundef %ptr.0258.i) #4
  br label %for.inc60.i

for.inc60.i:                                      ; preds = %if.end57.i, %for.body52.i.for.inc60.i_crit_edge
  %cmp50.not.i = icmp eq ptr %tmp39.0259.i, @tomoyo_condition_list
  br i1 %cmp50.not.i, label %for.inc60.i.for.cond70.preheader.i_crit_edge, label %for.inc60.i.for.body52.i_crit_edge

for.inc60.i.for.body52.i_crit_edge:               ; preds = %for.inc60.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body52.i

for.inc60.i.for.cond70.preheader.i_crit_edge:     ; preds = %for.inc60.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond70.preheader.i

for.cond75.preheader.i:                           ; preds = %for.end118.2.i.for.cond75.preheader.i_crit_edge, %for.cond70.preheader.i.for.cond75.preheader.i_crit_edge
  %.pn211267.i = phi ptr [ %.pn211.i, %for.end118.2.i.for.cond75.preheader.i_crit_edge ], [ %.pn211265.i, %for.cond70.preheader.i.for.cond75.preheader.i_crit_edge ]
  %group_list.i = getelementptr i8, ptr %.pn211267.i, i32 -2160
  %30 = ptrtoint ptr %group_list.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %group_list.i, align 4
  %cmp94.not261.i = icmp eq ptr %31, %group_list.i
  br i1 %cmp94.not261.i, label %for.cond75.preheader.i.for.end118.i_crit_edge, label %for.cond75.preheader.i.for.body96.i_crit_edge

for.cond75.preheader.i.for.body96.i_crit_edge:    ; preds = %for.cond75.preheader.i
  br label %for.body96.i

for.cond75.preheader.i.for.end118.i_crit_edge:    ; preds = %for.cond75.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end118.i

for.body96.i:                                     ; preds = %for.inc111.i.for.body96.i_crit_edge, %for.cond75.preheader.i.for.body96.i_crit_edge
  %group.0262.i = phi ptr [ %tmp80.0263.i, %for.inc111.i.for.body96.i_crit_edge ], [ %31, %for.cond75.preheader.i.for.body96.i_crit_edge ]
  %32 = ptrtoint ptr %group.0262.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %tmp80.0263.i = load ptr, ptr %group.0262.i, align 4
  %member_list.i = getelementptr inbounds %struct.tomoyo_group, ptr %group.0262.i, i32 0, i32 2
  %33 = ptrtoint ptr %member_list.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %member_list.i, align 4
  %cmp.not21.i236.i = icmp eq ptr %34, %member_list.i
  br i1 %cmp.not21.i236.i, label %for.body96.i.tomoyo_collect_member.exit245.i_crit_edge, label %for.body96.i.for.body.i241.i_crit_edge

for.body96.i.for.body.i241.i_crit_edge:           ; preds = %for.body96.i
  br label %for.body.i241.i

for.body96.i.tomoyo_collect_member.exit245.i_crit_edge: ; preds = %for.body96.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tomoyo_collect_member.exit245.i

for.body.i241.i:                                  ; preds = %for.inc.i244.i.for.body.i241.i_crit_edge, %for.body96.i.for.body.i241.i_crit_edge
  %member.022.i237.i = phi ptr [ %tmp.023.i238.i, %for.inc.i244.i.for.body.i241.i_crit_edge ], [ %34, %for.body96.i.for.body.i241.i_crit_edge ]
  %35 = ptrtoint ptr %member.022.i237.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %tmp.023.i238.i = load ptr, ptr %member.022.i237.i, align 1
  %is_deleted.i239.i = getelementptr inbounds %struct.tomoyo_acl_head, ptr %member.022.i237.i, i32 0, i32 1
  %36 = ptrtoint ptr %is_deleted.i239.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %is_deleted.i239.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i240.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i240.i, label %for.body.i241.i.for.inc.i244.i_crit_edge, label %if.end.i242.i

for.body.i241.i.for.inc.i244.i_crit_edge:         ; preds = %for.body.i241.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i244.i

if.end.i242.i:                                    ; preds = %for.body.i241.i
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %is_deleted.i239.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %is_deleted.i239.i, align 1
  tail call fastcc void @tomoyo_try_to_gc(i32 noundef 2, ptr noundef %member.022.i237.i) #4
  br label %for.inc.i244.i

for.inc.i244.i:                                   ; preds = %if.end.i242.i, %for.body.i241.i.for.inc.i244.i_crit_edge
  %cmp.not.i243.i = icmp eq ptr %tmp.023.i238.i, %member_list.i
  br i1 %cmp.not.i243.i, label %for.inc.i244.i.tomoyo_collect_member.exit245.i_crit_edge, label %for.inc.i244.i.for.body.i241.i_crit_edge

for.inc.i244.i.for.body.i241.i_crit_edge:         ; preds = %for.inc.i244.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i241.i

for.inc.i244.i.tomoyo_collect_member.exit245.i_crit_edge: ; preds = %for.inc.i244.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tomoyo_collect_member.exit245.i

tomoyo_collect_member.exit245.i:                  ; preds = %for.inc.i244.i.tomoyo_collect_member.exit245.i_crit_edge, %for.body96.i.tomoyo_collect_member.exit245.i_crit_edge
  %39 = ptrtoint ptr %member_list.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %member_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %40, %member_list.i
  br i1 %cmp.i.not.i, label %lor.lhs.false100.i, label %tomoyo_collect_member.exit245.i.for.inc111.i_crit_edge

tomoyo_collect_member.exit245.i.for.inc111.i_crit_edge: ; preds = %tomoyo_collect_member.exit245.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc111.i

lor.lhs.false100.i:                               ; preds = %tomoyo_collect_member.exit245.i
  %users102.i = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %group.0262.i, i32 0, i32 1
  %call.i.i216.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users102.i, i32 noundef 4) #4
  %41 = ptrtoint ptr %users102.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %users102.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp104.i = icmp sgt i32 %42, 0
  br i1 %cmp104.i, label %lor.lhs.false100.i.for.inc111.i_crit_edge, label %if.end106.i

lor.lhs.false100.i.for.inc111.i_crit_edge:        ; preds = %lor.lhs.false100.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc111.i

if.end106.i:                                      ; preds = %lor.lhs.false100.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i217.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users102.i, i32 noundef 4) #4
  %43 = ptrtoint ptr %users102.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile i32 -1, ptr %users102.i, align 4
  tail call fastcc void @tomoyo_try_to_gc(i32 noundef 0, ptr noundef %group.0262.i) #4
  br label %for.inc111.i

for.inc111.i:                                     ; preds = %if.end106.i, %lor.lhs.false100.i.for.inc111.i_crit_edge, %tomoyo_collect_member.exit245.i.for.inc111.i_crit_edge
  %cmp94.not.i = icmp eq ptr %tmp80.0263.i, %group_list.i
  br i1 %cmp94.not.i, label %for.inc111.i.for.end118.i_crit_edge, label %for.inc111.i.for.body96.i_crit_edge

for.inc111.i.for.body96.i_crit_edge:              ; preds = %for.inc111.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body96.i

for.inc111.i.for.end118.i_crit_edge:              ; preds = %for.inc111.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end118.i

for.end118.i:                                     ; preds = %for.inc111.i.for.end118.i_crit_edge, %for.cond75.preheader.i.for.end118.i_crit_edge
  %arrayidx79.1.i = getelementptr i8, ptr %.pn211267.i, i32 -2152
  %44 = ptrtoint ptr %arrayidx79.1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx79.1.i, align 4
  %cmp94.not261.1.i = icmp eq ptr %45, %arrayidx79.1.i
  br i1 %cmp94.not261.1.i, label %for.end118.i.for.end118.1.i_crit_edge, label %for.end118.i.for.body96.1.i_crit_edge

for.end118.i.for.body96.1.i_crit_edge:            ; preds = %for.end118.i
  br label %for.body96.1.i

for.end118.i.for.end118.1.i_crit_edge:            ; preds = %for.end118.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end118.1.i

for.body96.1.i:                                   ; preds = %for.inc111.1.i.for.body96.1.i_crit_edge, %for.end118.i.for.body96.1.i_crit_edge
  %group.0262.1.i = phi ptr [ %tmp80.0263.1.i, %for.inc111.1.i.for.body96.1.i_crit_edge ], [ %45, %for.end118.i.for.body96.1.i_crit_edge ]
  %46 = ptrtoint ptr %group.0262.1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %tmp80.0263.1.i = load ptr, ptr %group.0262.1.i, align 4
  %member_list.1.i = getelementptr inbounds %struct.tomoyo_group, ptr %group.0262.1.i, i32 0, i32 2
  %47 = ptrtoint ptr %member_list.1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %member_list.1.i, align 4
  %cmp.not21.i236.1.i = icmp eq ptr %48, %member_list.1.i
  br i1 %cmp.not21.i236.1.i, label %for.body96.1.i.tomoyo_collect_member.exit245.1.i_crit_edge, label %for.body96.1.i.for.body.i241.1.i_crit_edge

for.body96.1.i.for.body.i241.1.i_crit_edge:       ; preds = %for.body96.1.i
  br label %for.body.i241.1.i

for.body96.1.i.tomoyo_collect_member.exit245.1.i_crit_edge: ; preds = %for.body96.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tomoyo_collect_member.exit245.1.i

for.body.i241.1.i:                                ; preds = %for.inc.i244.1.i.for.body.i241.1.i_crit_edge, %for.body96.1.i.for.body.i241.1.i_crit_edge
  %member.022.i237.1.i = phi ptr [ %tmp.023.i238.1.i, %for.inc.i244.1.i.for.body.i241.1.i_crit_edge ], [ %48, %for.body96.1.i.for.body.i241.1.i_crit_edge ]
  %49 = ptrtoint ptr %member.022.i237.1.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %tmp.023.i238.1.i = load ptr, ptr %member.022.i237.1.i, align 1
  %is_deleted.i239.1.i = getelementptr inbounds %struct.tomoyo_acl_head, ptr %member.022.i237.1.i, i32 0, i32 1
  %50 = ptrtoint ptr %is_deleted.i239.1.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %is_deleted.i239.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i240.1.i = icmp eq i8 %51, 0
  br i1 %tobool.not.i240.1.i, label %for.body.i241.1.i.for.inc.i244.1.i_crit_edge, label %if.end.i242.1.i

for.body.i241.1.i.for.inc.i244.1.i_crit_edge:     ; preds = %for.body.i241.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i244.1.i

if.end.i242.1.i:                                  ; preds = %for.body.i241.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %52 = ptrtoint ptr %is_deleted.i239.1.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 -1, ptr %is_deleted.i239.1.i, align 1
  tail call fastcc void @tomoyo_try_to_gc(i32 noundef 3, ptr noundef %member.022.i237.1.i) #4
  br label %for.inc.i244.1.i

for.inc.i244.1.i:                                 ; preds = %if.end.i242.1.i, %for.body.i241.1.i.for.inc.i244.1.i_crit_edge
  %cmp.not.i243.1.i = icmp eq ptr %tmp.023.i238.1.i, %member_list.1.i
  br i1 %cmp.not.i243.1.i, label %for.inc.i244.1.i.tomoyo_collect_member.exit245.1.i_crit_edge, label %for.inc.i244.1.i.for.body.i241.1.i_crit_edge

for.inc.i244.1.i.for.body.i241.1.i_crit_edge:     ; preds = %for.inc.i244.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i241.1.i

for.inc.i244.1.i.tomoyo_collect_member.exit245.1.i_crit_edge: ; preds = %for.inc.i244.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tomoyo_collect_member.exit245.1.i

tomoyo_collect_member.exit245.1.i:                ; preds = %for.inc.i244.1.i.tomoyo_collect_member.exit245.1.i_crit_edge, %for.body96.1.i.tomoyo_collect_member.exit245.1.i_crit_edge
  %53 = ptrtoint ptr %member_list.1.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %member_list.1.i, align 4
  %cmp.i.not.1.i = icmp eq ptr %54, %member_list.1.i
  br i1 %cmp.i.not.1.i, label %lor.lhs.false100.1.i, label %tomoyo_collect_member.exit245.1.i.for.inc111.1.i_crit_edge

tomoyo_collect_member.exit245.1.i.for.inc111.1.i_crit_edge: ; preds = %tomoyo_collect_member.exit245.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc111.1.i

lor.lhs.false100.1.i:                             ; preds = %tomoyo_collect_member.exit245.1.i
  %users102.1.i = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %group.0262.1.i, i32 0, i32 1
  %call.i.i216.1.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users102.1.i, i32 noundef 4) #4
  %55 = ptrtoint ptr %users102.1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %users102.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp104.1.i = icmp sgt i32 %56, 0
  br i1 %cmp104.1.i, label %lor.lhs.false100.1.i.for.inc111.1.i_crit_edge, label %if.end106.1.i

lor.lhs.false100.1.i.for.inc111.1.i_crit_edge:    ; preds = %lor.lhs.false100.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc111.1.i

if.end106.1.i:                                    ; preds = %lor.lhs.false100.1.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i217.1.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users102.1.i, i32 noundef 4) #4
  %57 = ptrtoint ptr %users102.1.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile i32 -1, ptr %users102.1.i, align 4
  tail call fastcc void @tomoyo_try_to_gc(i32 noundef 0, ptr noundef %group.0262.1.i) #4
  br label %for.inc111.1.i

for.inc111.1.i:                                   ; preds = %if.end106.1.i, %lor.lhs.false100.1.i.for.inc111.1.i_crit_edge, %tomoyo_collect_member.exit245.1.i.for.inc111.1.i_crit_edge
  %cmp94.not.1.i = icmp eq ptr %tmp80.0263.1.i, %arrayidx79.1.i
  br i1 %cmp94.not.1.i, label %for.inc111.1.i.for.end118.1.i_crit_edge, label %for.inc111.1.i.for.body96.1.i_crit_edge

for.inc111.1.i.for.body96.1.i_crit_edge:          ; preds = %for.inc111.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body96.1.i

for.inc111.1.i.for.end118.1.i_crit_edge:          ; preds = %for.inc111.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end118.1.i

for.end118.1.i:                                   ; preds = %for.inc111.1.i.for.end118.1.i_crit_edge, %for.end118.i.for.end118.1.i_crit_edge
  %arrayidx79.2.i = getelementptr i8, ptr %.pn211267.i, i32 -2144
  %58 = ptrtoint ptr %arrayidx79.2.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx79.2.i, align 4
  %cmp94.not261.2.i = icmp eq ptr %59, %arrayidx79.2.i
  br i1 %cmp94.not261.2.i, label %for.end118.1.i.for.end118.2.i_crit_edge, label %for.end118.1.i.for.body96.2.i_crit_edge

for.end118.1.i.for.body96.2.i_crit_edge:          ; preds = %for.end118.1.i
  br label %for.body96.2.i

for.end118.1.i.for.end118.2.i_crit_edge:          ; preds = %for.end118.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end118.2.i

for.body96.2.i:                                   ; preds = %for.inc111.2.i.for.body96.2.i_crit_edge, %for.end118.1.i.for.body96.2.i_crit_edge
  %group.0262.2.i = phi ptr [ %tmp80.0263.2.i, %for.inc111.2.i.for.body96.2.i_crit_edge ], [ %59, %for.end118.1.i.for.body96.2.i_crit_edge ]
  %60 = ptrtoint ptr %group.0262.2.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %tmp80.0263.2.i = load ptr, ptr %group.0262.2.i, align 4
  %member_list.2.i = getelementptr inbounds %struct.tomoyo_group, ptr %group.0262.2.i, i32 0, i32 2
  %61 = ptrtoint ptr %member_list.2.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %member_list.2.i, align 4
  %cmp.not21.i236.2.i = icmp eq ptr %62, %member_list.2.i
  br i1 %cmp.not21.i236.2.i, label %for.body96.2.i.tomoyo_collect_member.exit245.2.i_crit_edge, label %for.body96.2.i.for.body.i241.2.i_crit_edge

for.body96.2.i.for.body.i241.2.i_crit_edge:       ; preds = %for.body96.2.i
  br label %for.body.i241.2.i

for.body96.2.i.tomoyo_collect_member.exit245.2.i_crit_edge: ; preds = %for.body96.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tomoyo_collect_member.exit245.2.i

for.body.i241.2.i:                                ; preds = %for.inc.i244.2.i.for.body.i241.2.i_crit_edge, %for.body96.2.i.for.body.i241.2.i_crit_edge
  %member.022.i237.2.i = phi ptr [ %tmp.023.i238.2.i, %for.inc.i244.2.i.for.body.i241.2.i_crit_edge ], [ %62, %for.body96.2.i.for.body.i241.2.i_crit_edge ]
  %63 = ptrtoint ptr %member.022.i237.2.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %tmp.023.i238.2.i = load ptr, ptr %member.022.i237.2.i, align 1
  %is_deleted.i239.2.i = getelementptr inbounds %struct.tomoyo_acl_head, ptr %member.022.i237.2.i, i32 0, i32 1
  %64 = ptrtoint ptr %is_deleted.i239.2.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %is_deleted.i239.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i240.2.i = icmp eq i8 %65, 0
  br i1 %tobool.not.i240.2.i, label %for.body.i241.2.i.for.inc.i244.2.i_crit_edge, label %if.end.i242.2.i

for.body.i241.2.i.for.inc.i244.2.i_crit_edge:     ; preds = %for.body.i241.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i244.2.i

if.end.i242.2.i:                                  ; preds = %for.body.i241.2.i
  call void @__sanitizer_cov_trace_pc() #6
  %66 = ptrtoint ptr %is_deleted.i239.2.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -1, ptr %is_deleted.i239.2.i, align 1
  tail call fastcc void @tomoyo_try_to_gc(i32 noundef 1, ptr noundef %member.022.i237.2.i) #4
  br label %for.inc.i244.2.i

for.inc.i244.2.i:                                 ; preds = %if.end.i242.2.i, %for.body.i241.2.i.for.inc.i244.2.i_crit_edge
  %cmp.not.i243.2.i = icmp eq ptr %tmp.023.i238.2.i, %member_list.2.i
  br i1 %cmp.not.i243.2.i, label %for.inc.i244.2.i.tomoyo_collect_member.exit245.2.i_crit_edge, label %for.inc.i244.2.i.for.body.i241.2.i_crit_edge

for.inc.i244.2.i.for.body.i241.2.i_crit_edge:     ; preds = %for.inc.i244.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i241.2.i

for.inc.i244.2.i.tomoyo_collect_member.exit245.2.i_crit_edge: ; preds = %for.inc.i244.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tomoyo_collect_member.exit245.2.i

tomoyo_collect_member.exit245.2.i:                ; preds = %for.inc.i244.2.i.tomoyo_collect_member.exit245.2.i_crit_edge, %for.body96.2.i.tomoyo_collect_member.exit245.2.i_crit_edge
  %67 = ptrtoint ptr %member_list.2.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile ptr, ptr %member_list.2.i, align 4
  %cmp.i.not.2.i = icmp eq ptr %68, %member_list.2.i
  br i1 %cmp.i.not.2.i, label %lor.lhs.false100.2.i, label %tomoyo_collect_member.exit245.2.i.for.inc111.2.i_crit_edge

tomoyo_collect_member.exit245.2.i.for.inc111.2.i_crit_edge: ; preds = %tomoyo_collect_member.exit245.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc111.2.i

lor.lhs.false100.2.i:                             ; preds = %tomoyo_collect_member.exit245.2.i
  %users102.2.i = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %group.0262.2.i, i32 0, i32 1
  %call.i.i216.2.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users102.2.i, i32 noundef 4) #4
  %69 = ptrtoint ptr %users102.2.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %users102.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp104.2.i = icmp sgt i32 %70, 0
  br i1 %cmp104.2.i, label %lor.lhs.false100.2.i.for.inc111.2.i_crit_edge, label %if.end106.2.i

lor.lhs.false100.2.i.for.inc111.2.i_crit_edge:    ; preds = %lor.lhs.false100.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc111.2.i

if.end106.2.i:                                    ; preds = %lor.lhs.false100.2.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i217.2.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users102.2.i, i32 noundef 4) #4
  %71 = ptrtoint ptr %users102.2.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile i32 -1, ptr %users102.2.i, align 4
  tail call fastcc void @tomoyo_try_to_gc(i32 noundef 0, ptr noundef %group.0262.2.i) #4
  br label %for.inc111.2.i

for.inc111.2.i:                                   ; preds = %if.end106.2.i, %lor.lhs.false100.2.i.for.inc111.2.i_crit_edge, %tomoyo_collect_member.exit245.2.i.for.inc111.2.i_crit_edge
  %cmp94.not.2.i = icmp eq ptr %tmp80.0263.2.i, %arrayidx79.2.i
  br i1 %cmp94.not.2.i, label %for.inc111.2.i.for.end118.2.i_crit_edge, label %for.inc111.2.i.for.body96.2.i_crit_edge

for.inc111.2.i.for.body96.2.i_crit_edge:          ; preds = %for.inc111.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body96.2.i

for.inc111.2.i.for.end118.2.i_crit_edge:          ; preds = %for.inc111.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end118.2.i

for.end118.2.i:                                   ; preds = %for.inc111.2.i.for.end118.2.i_crit_edge, %for.end118.1.i.for.end118.2.i_crit_edge
  %72 = ptrtoint ptr %.pn211267.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn211.i = load ptr, ptr %.pn211267.i, align 4
  %cmp72.not.i = icmp eq ptr %.pn211.i, @tomoyo_namespace_list
  br i1 %cmp72.not.i, label %for.end118.2.i.for.body131.i.preheader_crit_edge, label %for.end118.2.i.for.cond75.preheader.i_crit_edge

for.end118.2.i.for.cond75.preheader.i_crit_edge:  ; preds = %for.end118.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond75.preheader.i

for.end118.2.i.for.body131.i.preheader_crit_edge: ; preds = %for.end118.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body131.i.preheader

for.body131.i.preheader:                          ; preds = %for.end118.2.i.for.body131.i.preheader_crit_edge, %for.cond70.preheader.i.for.body131.i.preheader_crit_edge
  br label %for.body131.i

for.body131.i:                                    ; preds = %for.end163.i.for.body131.i_crit_edge, %for.body131.i.preheader
  %i.2272.i = phi i32 [ %inc165.i, %for.end163.i.for.body131.i_crit_edge ], [ 0, %for.body131.i.preheader ]
  %arrayidx133.i = getelementptr [256 x %struct.list_head], ptr @tomoyo_name_list, i32 0, i32 %i.2272.i
  %73 = ptrtoint ptr %arrayidx133.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx133.i, align 4
  %cmp147.not269.i = icmp eq ptr %74, %arrayidx133.i
  br i1 %cmp147.not269.i, label %for.body131.i.for.end163.i_crit_edge, label %for.body131.i.for.body149.i_crit_edge

for.body131.i.for.body149.i_crit_edge:            ; preds = %for.body131.i
  br label %for.body149.i

for.body131.i.for.end163.i_crit_edge:             ; preds = %for.body131.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end163.i

for.body149.i:                                    ; preds = %for.inc157.i.for.body149.i_crit_edge, %for.body131.i.for.body149.i_crit_edge
  %ptr134.0270.i = phi ptr [ %tmp135.0271.i, %for.inc157.i.for.body149.i_crit_edge ], [ %74, %for.body131.i.for.body149.i_crit_edge ]
  %75 = ptrtoint ptr %ptr134.0270.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %tmp135.0271.i = load ptr, ptr %ptr134.0270.i, align 1
  %users150.i = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %ptr134.0270.i, i32 0, i32 1
  %call.i.i218.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users150.i, i32 noundef 4) #4
  %76 = ptrtoint ptr %users150.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %users150.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp152.i = icmp sgt i32 %77, 0
  br i1 %cmp152.i, label %for.body149.i.for.inc157.i_crit_edge, label %if.end154.i

for.body149.i.for.inc157.i_crit_edge:             ; preds = %for.body149.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc157.i

if.end154.i:                                      ; preds = %for.body149.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i219.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users150.i, i32 noundef 4) #4
  %78 = ptrtoint ptr %users150.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile i32 -1, ptr %users150.i, align 4
  tail call fastcc void @tomoyo_try_to_gc(i32 noundef 8, ptr noundef %ptr134.0270.i) #4
  br label %for.inc157.i

for.inc157.i:                                     ; preds = %if.end154.i, %for.body149.i.for.inc157.i_crit_edge
  %cmp147.not.i = icmp eq ptr %tmp135.0271.i, %arrayidx133.i
  br i1 %cmp147.not.i, label %for.inc157.i.for.end163.i_crit_edge, label %for.inc157.i.for.body149.i_crit_edge

for.inc157.i.for.body149.i_crit_edge:             ; preds = %for.inc157.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body149.i

for.inc157.i.for.end163.i_crit_edge:              ; preds = %for.inc157.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end163.i

for.end163.i:                                     ; preds = %for.inc157.i.for.end163.i_crit_edge, %for.body131.i.for.end163.i_crit_edge
  %inc165.i = add nuw nsw i32 %i.2272.i, 1
  %exitcond275.not.i = icmp eq i32 %inc165.i, 256
  br i1 %exitcond275.not.i, label %tomoyo_collect_entry.exit, label %for.end163.i.for.body131.i_crit_edge

for.end163.i.for.body131.i_crit_edge:             ; preds = %for.end163.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body131.i

tomoyo_collect_entry.exit:                        ; preds = %for.end163.i
  tail call void @mutex_unlock(ptr noundef nonnull @tomoyo_policy_lock) #4
  tail call void @_raw_spin_lock(ptr noundef nonnull @tomoyo_io_buffer_list_lock) #4
  %79 = load ptr, ptr @tomoyo_io_buffer_list, align 4
  %cmp.not26 = icmp eq ptr %79, @tomoyo_io_buffer_list
  br i1 %cmp.not26, label %tomoyo_collect_entry.exit.for.end_crit_edge, label %tomoyo_collect_entry.exit.for.body_crit_edge

tomoyo_collect_entry.exit.for.body_crit_edge:     ; preds = %tomoyo_collect_entry.exit
  br label %for.body

tomoyo_collect_entry.exit.for.end_crit_edge:      ; preds = %tomoyo_collect_entry.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %tomoyo_collect_entry.exit.for.body_crit_edge
  %.pn.in27 = phi ptr [ %.pn30, %for.inc.for.body_crit_edge ], [ %79, %tomoyo_collect_entry.exit.for.body_crit_edge ]
  %head.029 = getelementptr i8, ptr %.pn.in27, i32 -448
  %80 = ptrtoint ptr %.pn.in27 to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pn30 = load ptr, ptr %.pn.in27, align 4
  %users = getelementptr i8, ptr %.pn.in27, i32 -4
  %81 = ptrtoint ptr %users to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool6.not = icmp eq i8 %82, 0
  br i1 %tobool6.not, label %if.end8, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in27) #4
  br i1 %call.i.i, label %if.end.i.i23, label %if.end8.list_del.exit_crit_edge

if.end8.list_del.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i23:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in27, i32 0, i32 1
  %83 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev.i.i, align 4
  %85 = ptrtoint ptr %.pn.in27 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %.pn.in27, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %84, ptr %prev1.i.i.i, align 4
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %86, ptr %84, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i23, %if.end8.list_del.exit_crit_edge
  %89 = ptrtoint ptr %.pn.in27 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in27, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in27, i32 0, i32 1
  %90 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %read_buf = getelementptr i8, ptr %.pn.in27, i32 -24
  %91 = ptrtoint ptr %read_buf to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %read_buf, align 4
  tail call void @kfree(ptr noundef %92) #4
  %write_buf = getelementptr i8, ptr %.pn.in27, i32 -16
  %93 = ptrtoint ptr %write_buf to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write_buf, align 4
  tail call void @kfree(ptr noundef %94) #4
  tail call void @kfree(ptr noundef %head.029) #4
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn30, @tomoyo_io_buffer_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %tomoyo_collect_entry.exit.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tomoyo_io_buffer_list_lock) #4
  tail call void @mutex_unlock(ptr noundef nonnull @tomoyo_gc_thread.tomoyo_gc_mutex) #4
  br label %out

out:                                              ; preds = %for.end, %entry.out_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tomoyo_try_to_gc(i32 noundef %type, ptr noundef %element) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %element) #4
  br i1 %call.i, label %if.end.i, label %entry.__list_del_entry.exit_crit_edge

entry.__list_del_entry.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %__list_del_entry.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i = getelementptr inbounds %struct.list_head, ptr %element, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %2 = ptrtoint ptr %element to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %element, align 4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %__list_del_entry.exit

__list_del_entry.exit:                            ; preds = %if.end.i, %entry.__list_del_entry.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @tomoyo_policy_lock) #4
  tail call void @synchronize_srcu(ptr noundef nonnull @tomoyo_ss) #4
  tail call void @_raw_spin_lock(ptr noundef nonnull @tomoyo_io_buffer_list_lock) #4
  %.pn38.i = load ptr, ptr @tomoyo_io_buffer_list, align 4
  %cmp.not39.i = icmp eq ptr %.pn38.i, @tomoyo_io_buffer_list
  br i1 %cmp.not39.i, label %__list_del_entry.exit.if.end_crit_edge, label %__list_del_entry.exit.for.body.i_crit_edge

__list_del_entry.exit.for.body.i_crit_edge:       ; preds = %__list_del_entry.exit
  br label %for.body.i

__list_del_entry.exit.if.end_crit_edge:           ; preds = %__list_del_entry.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.body.i:                                       ; preds = %if.end.i41.for.body.i_crit_edge, %__list_del_entry.exit.for.body.i_crit_edge
  %.pn40.i = phi ptr [ %.pn.i, %if.end.i41.for.body.i_crit_edge ], [ %.pn38.i, %__list_del_entry.exit.for.body.i_crit_edge ]
  %users.i = getelementptr i8, ptr %.pn40.i, i32 -4
  %6 = ptrtoint ptr %users.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %users.i, align 4
  %inc.i = add i8 %7, 1
  store i8 %inc.i, ptr %users.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tomoyo_io_buffer_list_lock) #4
  %io_sem.i = getelementptr i8, ptr %.pn40.i, i32 -436
  tail call void @mutex_lock_nested(ptr noundef %io_sem.i, i32 noundef 0) #4
  %domain.i = getelementptr i8, ptr %.pn40.i, i32 -332
  %8 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %domain.i, align 4
  %cmp1.i = icmp eq ptr %9, %element
  br i1 %cmp1.i, label %for.body.i.tomoyo_struct_used_by_io_buffer.exit_crit_edge, label %lor.lhs.false.i

for.body.i.tomoyo_struct_used_by_io_buffer.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tomoyo_struct_used_by_io_buffer.exit

lor.lhs.false.i:                                  ; preds = %for.body.i
  %group.i = getelementptr i8, ptr %.pn40.i, i32 -328
  %10 = ptrtoint ptr %group.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %group.i, align 4
  %cmp3.i = icmp eq ptr %11, %element
  br i1 %cmp3.i, label %lor.lhs.false.i.tomoyo_struct_used_by_io_buffer.exit_crit_edge, label %lor.lhs.false4.i

lor.lhs.false.i.tomoyo_struct_used_by_io_buffer.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tomoyo_struct_used_by_io_buffer.exit

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %acl.i = getelementptr i8, ptr %.pn40.i, i32 -324
  %12 = ptrtoint ptr %acl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %acl.i, align 4
  %cmp6.i = icmp eq ptr %13, %element
  br i1 %cmp6.i, label %lor.lhs.false4.i.tomoyo_struct_used_by_io_buffer.exit_crit_edge, label %lor.lhs.false7.i

lor.lhs.false4.i.tomoyo_struct_used_by_io_buffer.exit_crit_edge: ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tomoyo_struct_used_by_io_buffer.exit

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false4.i
  %domain8.i = getelementptr i8, ptr %.pn40.i, i32 -36
  %14 = ptrtoint ptr %domain8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %domain8.i, align 4
  %cmp10.i = icmp eq ptr %15, %element
  br i1 %cmp10.i, label %lor.lhs.false7.i.tomoyo_struct_used_by_io_buffer.exit_crit_edge, label %if.end.i41

lor.lhs.false7.i.tomoyo_struct_used_by_io_buffer.exit_crit_edge: ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %tomoyo_struct_used_by_io_buffer.exit

if.end.i41:                                       ; preds = %lor.lhs.false7.i
  tail call void @mutex_unlock(ptr noundef %io_sem.i) #4
  tail call void @_raw_spin_lock(ptr noundef nonnull @tomoyo_io_buffer_list_lock) #4
  %16 = ptrtoint ptr %users.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %users.i, align 4
  %dec.i = add i8 %17, -1
  store i8 %dec.i, ptr %users.i, align 4
  %18 = ptrtoint ptr %.pn40.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i = load ptr, ptr %.pn40.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @tomoyo_io_buffer_list
  br i1 %cmp.not.i, label %if.end.i41.if.end_crit_edge, label %if.end.i41.for.body.i_crit_edge

if.end.i41.for.body.i_crit_edge:                  ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end.i41.if.end_crit_edge:                      ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

tomoyo_struct_used_by_io_buffer.exit:             ; preds = %lor.lhs.false7.i.tomoyo_struct_used_by_io_buffer.exit_crit_edge, %lor.lhs.false4.i.tomoyo_struct_used_by_io_buffer.exit_crit_edge, %lor.lhs.false.i.tomoyo_struct_used_by_io_buffer.exit_crit_edge, %for.body.i.tomoyo_struct_used_by_io_buffer.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %io_sem.i) #4
  tail call void @_raw_spin_lock(ptr noundef nonnull @tomoyo_io_buffer_list_lock) #4
  %19 = ptrtoint ptr %users.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %users.i, align 4
  %dec.c.i = add i8 %20, -1
  store i8 %dec.c.i, ptr %users.i, align 4
  br label %reinject.sink.split

if.end:                                           ; preds = %if.end.i41.if.end_crit_edge, %__list_del_entry.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tomoyo_io_buffer_list_lock) #4
  %21 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.end.sw.epilog.thread_crit_edge [
    i32 4, label %sw.bb
    i32 6, label %sw.bb1
    i32 5, label %sw.bb2
    i32 0, label %sw.bb3
    i32 2, label %sw.bb4
    i32 10, label %sw.bb14
    i32 9, label %sw.bb13
    i32 7, label %sw.bb7
    i32 8, label %sw.bb8
  ]

if.end.sw.epilog.thread_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.thread

sw.bb:                                            ; preds = %if.end
  %domainname.i = getelementptr inbounds %struct.tomoyo_transition_control, ptr %element, i32 0, i32 3
  %22 = ptrtoint ptr %domainname.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %domainname.i, align 4
  %tobool.not.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i, label %sw.bb.tomoyo_put_name.exit.i_crit_edge, label %if.then.i.i

sw.bb.tomoyo_put_name.exit.i_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %tomoyo_put_name.exit.i

if.then.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %users.i.i = getelementptr i8, ptr %23, i32 -4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %users.i.i, i32 1, i32 3, i32 1) #4
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i, ptr %users.i.i, i32 1, ptr elementtype(i32) %users.i.i) #4, !srcloc !20
  br label %tomoyo_put_name.exit.i

tomoyo_put_name.exit.i:                           ; preds = %if.then.i.i, %sw.bb.tomoyo_put_name.exit.i_crit_edge
  %program.i = getelementptr inbounds %struct.tomoyo_transition_control, ptr %element, i32 0, i32 4
  %25 = ptrtoint ptr %program.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %program.i, align 4
  %tobool.not.i2.i = icmp eq ptr %26, null
  br i1 %tobool.not.i2.i, label %tomoyo_put_name.exit.i.sw.epilog.thread_crit_edge, label %if.then.i5.i

tomoyo_put_name.exit.i.sw.epilog.thread_crit_edge: ; preds = %tomoyo_put_name.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.thread

if.then.i5.i:                                     ; preds = %tomoyo_put_name.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %users.i3.i = getelementptr i8, ptr %26, i32 -4
  %call.i.i.i4.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i3.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %users.i3.i, i32 1, i32 3, i32 1) #4
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i3.i, ptr %users.i3.i, i32 1, ptr elementtype(i32) %users.i3.i) #4, !srcloc !20
  br label %sw.epilog.thread

sw.bb1:                                           ; preds = %if.end
  %manager.i = getelementptr inbounds %struct.tomoyo_manager, ptr %element, i32 0, i32 1
  %28 = ptrtoint ptr %manager.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %manager.i, align 4
  %tobool.not.i.i42 = icmp eq ptr %29, null
  br i1 %tobool.not.i.i42, label %sw.bb1.sw.epilog.thread_crit_edge, label %if.then.i.i45

sw.bb1.sw.epilog.thread_crit_edge:                ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.thread

if.then.i.i45:                                    ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  %users.i.i43 = getelementptr i8, ptr %29, i32 -4
  %call.i.i.i.i44 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i43, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %users.i.i43, i32 1, i32 3, i32 1) #4
  %30 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i43, ptr %users.i.i43, i32 1, ptr elementtype(i32) %users.i.i43) #4, !srcloc !20
  br label %sw.epilog.thread

sw.bb2:                                           ; preds = %if.end
  %original_name.i = getelementptr inbounds %struct.tomoyo_aggregator, ptr %element, i32 0, i32 1
  %31 = ptrtoint ptr %original_name.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %original_name.i, align 4
  %tobool.not.i.i47 = icmp eq ptr %32, null
  br i1 %tobool.not.i.i47, label %sw.bb2.tomoyo_put_name.exit.i52_crit_edge, label %if.then.i.i50

sw.bb2.tomoyo_put_name.exit.i52_crit_edge:        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  br label %tomoyo_put_name.exit.i52

if.then.i.i50:                                    ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  %users.i.i48 = getelementptr i8, ptr %32, i32 -4
  %call.i.i.i.i49 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i48, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %users.i.i48, i32 1, i32 3, i32 1) #4
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i48, ptr %users.i.i48, i32 1, ptr elementtype(i32) %users.i.i48) #4, !srcloc !20
  br label %tomoyo_put_name.exit.i52

tomoyo_put_name.exit.i52:                         ; preds = %if.then.i.i50, %sw.bb2.tomoyo_put_name.exit.i52_crit_edge
  %aggregated_name.i = getelementptr inbounds %struct.tomoyo_aggregator, ptr %element, i32 0, i32 2
  %34 = ptrtoint ptr %aggregated_name.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %aggregated_name.i, align 4
  %tobool.not.i2.i51 = icmp eq ptr %35, null
  br i1 %tobool.not.i2.i51, label %tomoyo_put_name.exit.i52.sw.epilog.thread_crit_edge, label %if.then.i5.i55

tomoyo_put_name.exit.i52.sw.epilog.thread_crit_edge: ; preds = %tomoyo_put_name.exit.i52
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.thread

if.then.i5.i55:                                   ; preds = %tomoyo_put_name.exit.i52
  call void @__sanitizer_cov_trace_pc() #6
  %users.i3.i53 = getelementptr i8, ptr %35, i32 -4
  %call.i.i.i4.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i3.i53, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %users.i3.i53, i32 1, i32 3, i32 1) #4
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i3.i53, ptr %users.i3.i53, i32 1, ptr elementtype(i32) %users.i3.i53) #4, !srcloc !20
  br label %sw.epilog.thread

sw.bb3:                                           ; preds = %if.end
  %group_name.i = getelementptr inbounds %struct.tomoyo_group, ptr %element, i32 0, i32 1
  %37 = ptrtoint ptr %group_name.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %group_name.i, align 4
  %tobool.not.i.i56 = icmp eq ptr %38, null
  br i1 %tobool.not.i.i56, label %sw.bb3.sw.epilog.thread_crit_edge, label %if.then.i.i59

sw.bb3.sw.epilog.thread_crit_edge:                ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.thread

if.then.i.i59:                                    ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  %users.i.i57 = getelementptr i8, ptr %38, i32 -4
  %call.i.i.i.i58 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i57, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %users.i.i57, i32 1, i32 3, i32 1) #4
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i57, ptr %users.i.i57, i32 1, ptr elementtype(i32) %users.i.i57) #4, !srcloc !20
  br label %sw.epilog.thread

sw.bb4:                                           ; preds = %if.end
  %member_name.i = getelementptr inbounds %struct.tomoyo_path_group, ptr %element, i32 0, i32 1
  %40 = ptrtoint ptr %member_name.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %member_name.i, align 4
  %tobool.not.i.i61 = icmp eq ptr %41, null
  br i1 %tobool.not.i.i61, label %sw.bb4.sw.epilog.thread_crit_edge, label %if.then.i.i64

sw.bb4.sw.epilog.thread_crit_edge:                ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.thread

if.then.i.i64:                                    ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  %users.i.i62 = getelementptr i8, ptr %41, i32 -4
  %call.i.i.i.i63 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i62, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %users.i.i62, i32 1, i32 3, i32 1) #4
  %42 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i62, ptr %users.i.i62, i32 1, ptr elementtype(i32) %users.i.i62) #4, !srcloc !20
  br label %sw.epilog.thread

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @tomoyo_del_condition(ptr noundef %element)
  br label %sw.epilog.thread

sw.bb8:                                           ; preds = %if.end
  %entry9 = getelementptr inbounds %struct.tomoyo_name, ptr %element, i32 0, i32 1
  %43 = ptrtoint ptr %entry9 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %entry9, align 4
  %call.i66 = tail call i32 @strlen(ptr noundef %44) #7
  %add.i = add i32 %call.i66, 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @tomoyo_io_buffer_list_lock) #4
  %add.ptr6.i = getelementptr i8, ptr %44, i32 %add.i
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.end.i.for.cond.i_crit_edge, %sw.bb8
  %.pn.in.i = phi ptr [ @tomoyo_io_buffer_list, %sw.bb8 ], [ %.pn.i67, %for.end.i.for.cond.i_crit_edge ]
  %45 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn.i67 = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i68 = icmp eq ptr %.pn.i67, @tomoyo_io_buffer_list
  br i1 %cmp.not.i68, label %sw.epilog, label %for.body.i72

for.body.i72:                                     ; preds = %for.cond.i
  %users.i69 = getelementptr i8, ptr %.pn.i67, i32 -4
  %46 = ptrtoint ptr %users.i69 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %users.i69, align 4
  %inc.i70 = add i8 %47, 1
  store i8 %inc.i70, ptr %users.i69, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tomoyo_io_buffer_list_lock) #4
  %io_sem.i71 = getelementptr i8, ptr %.pn.i67, i32 -436
  tail call void @mutex_lock_nested(ptr noundef %io_sem.i71, i32 noundef 0) #4
  %w4.i = getelementptr i8, ptr %.pn.i67, i32 -296
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.body.i72
  %i.047.i = phi i32 [ 0, %for.body.i72 ], [ %inc8.i, %for.body3.i.for.body3.i_crit_edge ]
  %in_use.1.off046.i = phi i1 [ false, %for.body.i72 ], [ %spec.select.i, %for.body3.i.for.body3.i_crit_edge ]
  %arrayidx.i = getelementptr [64 x ptr], ptr %w4.i, i32 0, i32 %i.047.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i, align 4
  %cmp5.i = icmp ult ptr %49, %44
  %cmp7.i = icmp ugt ptr %49, %add.ptr6.i
  %or.cond.i = select i1 %cmp5.i, i1 true, i1 %cmp7.i
  %not.or.cond.i = xor i1 %or.cond.i, true
  %spec.select.i = select i1 %not.or.cond.i, i1 true, i1 %in_use.1.off046.i
  %inc8.i = add nuw nsw i32 %i.047.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %i.047.i)
  %cmp2.i = icmp ult i32 %i.047.i, 63
  %or.cond48.i = select i1 %or.cond.i, i1 %cmp2.i, i1 false
  br i1 %or.cond48.i, label %for.body3.i.for.body3.i_crit_edge, label %for.end.i

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body3.i

for.end.i:                                        ; preds = %for.body3.i
  tail call void @mutex_unlock(ptr noundef %io_sem.i71) #4
  tail call void @_raw_spin_lock(ptr noundef nonnull @tomoyo_io_buffer_list_lock) #4
  %50 = ptrtoint ptr %users.i69 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %users.i69, align 4
  %dec.i73 = add i8 %51, -1
  store i8 %dec.i73, ptr %users.i69, align 4
  br i1 %spec.select.i, label %for.end.i.reinject.sink.split_crit_edge, label %for.end.i.for.cond.i_crit_edge

for.end.i.for.cond.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

for.end.i.reinject.sink.split_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %reinject.sink.split

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @tomoyo_del_acl(ptr noundef %element)
  br label %sw.epilog.thread

sw.bb14:                                          ; preds = %if.end
  %users = getelementptr inbounds %struct.tomoyo_domain_info, ptr %element, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users, i32 noundef 4) #4
  %52 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not = icmp eq i32 %53, 0
  br i1 %tobool.not, label %if.then21, label %sw.bb14.reinject_crit_edge

sw.bb14.reinject_crit_edge:                       ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #6
  br label %reinject

sw.epilog.thread:                                 ; preds = %sw.bb13, %sw.bb7, %if.then.i.i64, %sw.bb4.sw.epilog.thread_crit_edge, %if.then.i.i59, %sw.bb3.sw.epilog.thread_crit_edge, %if.then.i5.i55, %tomoyo_put_name.exit.i52.sw.epilog.thread_crit_edge, %if.then.i.i45, %sw.bb1.sw.epilog.thread_crit_edge, %if.then.i5.i, %tomoyo_put_name.exit.i.sw.epilog.thread_crit_edge, %if.end.sw.epilog.thread_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @tomoyo_policy_lock, i32 noundef 0) #4
  br label %if.end22

sw.epilog:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tomoyo_io_buffer_list_lock) #4
  tail call void @mutex_lock_nested(ptr noundef nonnull @tomoyo_policy_lock, i32 noundef 0) #4
  br label %if.end22

if.then21:                                        ; preds = %sw.bb14
  tail call void @mutex_lock_nested(ptr noundef nonnull @tomoyo_policy_lock, i32 noundef 0) #4
  %acl_info_list.i = getelementptr inbounds %struct.tomoyo_domain_info, ptr %element, i32 0, i32 1
  %54 = ptrtoint ptr %acl_info_list.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %acl_info_list.i, align 4
  %cmp.not23.i = icmp eq ptr %55, %acl_info_list.i
  br i1 %cmp.not23.i, label %if.then21.for.end.i79_crit_edge, label %if.then21.for.body.i76_crit_edge

if.then21.for.body.i76_crit_edge:                 ; preds = %if.then21
  br label %for.body.i76

if.then21.for.end.i79_crit_edge:                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i79

for.body.i76:                                     ; preds = %for.body.i76.for.body.i76_crit_edge, %if.then21.for.body.i76_crit_edge
  %acl.024.i = phi ptr [ %tmp1.0.i, %for.body.i76.for.body.i76_crit_edge ], [ %55, %if.then21.for.body.i76_crit_edge ]
  %56 = ptrtoint ptr %acl.024.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %tmp1.0.i = load ptr, ptr %acl.024.i, align 1
  tail call fastcc void @tomoyo_del_acl(ptr noundef %acl.024.i) #4
  %call.i.i74 = tail call i32 @ksize(ptr noundef %acl.024.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tomoyo_memory_used to i32))
  %57 = load i32, ptr @tomoyo_memory_used, align 4
  %sub.i.i = sub i32 %57, %call.i.i74
  store i32 %sub.i.i, ptr @tomoyo_memory_used, align 4
  tail call void @kfree(ptr noundef %acl.024.i) #4
  %cmp.not.i75 = icmp eq ptr %tmp1.0.i, %acl_info_list.i
  br i1 %cmp.not.i75, label %for.body.i76.for.end.i79_crit_edge, label %for.body.i76.for.body.i76_crit_edge

for.body.i76.for.body.i76_crit_edge:              ; preds = %for.body.i76
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i76

for.body.i76.for.end.i79_crit_edge:               ; preds = %for.body.i76
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i79

for.end.i79:                                      ; preds = %for.body.i76.for.end.i79_crit_edge, %if.then21.for.end.i79_crit_edge
  %domainname.i77 = getelementptr inbounds %struct.tomoyo_domain_info, ptr %element, i32 0, i32 2
  %58 = ptrtoint ptr %domainname.i77 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %domainname.i77, align 4
  %tobool.not.i.i78 = icmp eq ptr %59, null
  br i1 %tobool.not.i.i78, label %for.end.i79.if.end22_crit_edge, label %if.then.i.i82

for.end.i79.if.end22_crit_edge:                   ; preds = %for.end.i79
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.then.i.i82:                                    ; preds = %for.end.i79
  call void @__sanitizer_cov_trace_pc() #6
  %users.i.i80 = getelementptr i8, ptr %59, i32 -4
  %call.i.i.i.i81 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i80, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %users.i.i80, i32 1, i32 3, i32 1) #4
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i80, ptr %users.i.i80, i32 1, ptr elementtype(i32) %users.i.i80) #4, !srcloc !20
  br label %if.end22

if.end22:                                         ; preds = %if.then.i.i82, %for.end.i79.if.end22_crit_edge, %sw.epilog, %sw.epilog.thread
  %call.i84 = tail call i32 @ksize(ptr noundef %element) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tomoyo_memory_used to i32))
  %61 = load i32, ptr @tomoyo_memory_used, align 4
  %sub.i = sub i32 %61, %call.i84
  store i32 %sub.i, ptr @tomoyo_memory_used, align 4
  tail call void @kfree(ptr noundef %element) #4
  br label %return

reinject.sink.split:                              ; preds = %for.end.i.reinject.sink.split_crit_edge, %tomoyo_struct_used_by_io_buffer.exit
  tail call void @_raw_spin_unlock(ptr noundef nonnull @tomoyo_io_buffer_list_lock) #4
  br label %reinject

reinject:                                         ; preds = %reinject.sink.split, %sw.bb14.reinject_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @tomoyo_policy_lock, i32 noundef 0) #4
  %prev = getelementptr inbounds %struct.list_head, ptr %element, i32 0, i32 1
  %62 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %call.i.i85 = tail call zeroext i1 @__list_add_valid(ptr noundef %element, ptr noundef %63, ptr noundef %65) #4
  br i1 %call.i.i85, label %if.end.i.i, label %reinject.return_crit_edge

reinject.return_crit_edge:                        ; preds = %reinject
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end.i.i:                                       ; preds = %reinject
  call void @__sanitizer_cov_trace_pc() #6
  %66 = ptrtoint ptr %element to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %element, align 4
  %67 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %63, ptr %prev, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !22
  %68 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %element, ptr %63, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %69 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %element, ptr %prev37.i.i, align 4
  br label %return

return:                                           ; preds = %if.end.i.i, %reinject.return_crit_edge, %if.end22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tomoyo_del_acl(ptr noundef %element) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = getelementptr inbounds %struct.tomoyo_acl_info, ptr %element, i32 0, i32 1
  %0 = ptrtoint ptr %cond to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load ptr, ptr %cond, align 1
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.tomoyo_put_condition.exit_crit_edge, label %if.then.i

entry.tomoyo_put_condition.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %tomoyo_put_condition.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %users.i = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %1, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %users.i, i32 1, i32 3, i32 1) #4
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i, ptr %users.i, i32 1, ptr elementtype(i32) %users.i) #4, !srcloc !20
  br label %tomoyo_put_condition.exit

tomoyo_put_condition.exit:                        ; preds = %if.then.i, %entry.tomoyo_put_condition.exit_crit_edge
  %type = getelementptr inbounds %struct.tomoyo_acl_info, ptr %element, i32 0, i32 3
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %type, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %4, label %tomoyo_put_condition.exit.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb5
    i8 2, label %sw.bb10
    i8 3, label %sw.bb16
    i8 4, label %sw.bb22
    i8 7, label %sw.bb27
    i8 5, label %sw.bb32
    i8 6, label %sw.bb37
    i8 8, label %sw.bb43
  ]

tomoyo_put_condition.exit.sw.epilog_crit_edge:    ; preds = %tomoyo_put_condition.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %tomoyo_put_condition.exit
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.tomoyo_path_acl, ptr %element, i32 0, i32 2
  tail call void @tomoyo_put_name_union(ptr noundef %name) #4
  br label %sw.epilog

sw.bb5:                                           ; preds = %tomoyo_put_condition.exit
  call void @__sanitizer_cov_trace_pc() #6
  %name1 = getelementptr inbounds %struct.tomoyo_path2_acl, ptr %element, i32 0, i32 2
  tail call void @tomoyo_put_name_union(ptr noundef %name1) #4
  %name2 = getelementptr inbounds %struct.tomoyo_path2_acl, ptr %element, i32 0, i32 3
  tail call void @tomoyo_put_name_union(ptr noundef %name2) #4
  br label %sw.epilog

sw.bb10:                                          ; preds = %tomoyo_put_condition.exit
  call void @__sanitizer_cov_trace_pc() #6
  %name15 = getelementptr inbounds %struct.tomoyo_path_number_acl, ptr %element, i32 0, i32 2
  tail call void @tomoyo_put_name_union(ptr noundef %name15) #4
  %number = getelementptr inbounds %struct.tomoyo_path_number_acl, ptr %element, i32 0, i32 3
  tail call void @tomoyo_put_number_union(ptr noundef %number) #4
  br label %sw.epilog

sw.bb16:                                          ; preds = %tomoyo_put_condition.exit
  call void @__sanitizer_cov_trace_pc() #6
  %name21 = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %element, i32 0, i32 2
  tail call void @tomoyo_put_name_union(ptr noundef %name21) #4
  %mode = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %element, i32 0, i32 3
  tail call void @tomoyo_put_number_union(ptr noundef %mode) #4
  %major = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %element, i32 0, i32 4
  tail call void @tomoyo_put_number_union(ptr noundef %major) #4
  %minor = getelementptr inbounds %struct.tomoyo_mkdev_acl, ptr %element, i32 0, i32 5
  tail call void @tomoyo_put_number_union(ptr noundef %minor) #4
  br label %sw.epilog

sw.bb22:                                          ; preds = %tomoyo_put_condition.exit
  call void @__sanitizer_cov_trace_pc() #6
  %dev_name = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %element, i32 0, i32 1
  tail call void @tomoyo_put_name_union(ptr noundef %dev_name) #4
  %dir_name = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %element, i32 0, i32 2
  tail call void @tomoyo_put_name_union(ptr noundef %dir_name) #4
  %fs_type = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %element, i32 0, i32 3
  tail call void @tomoyo_put_name_union(ptr noundef %fs_type) #4
  %flags = getelementptr inbounds %struct.tomoyo_mount_acl, ptr %element, i32 0, i32 4
  tail call void @tomoyo_put_number_union(ptr noundef %flags) #4
  br label %sw.epilog

sw.bb27:                                          ; preds = %tomoyo_put_condition.exit
  %env = getelementptr inbounds %struct.tomoyo_env_acl, ptr %element, i32 0, i32 1
  %6 = ptrtoint ptr %env to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %env, align 4
  %tobool.not.i67 = icmp eq ptr %7, null
  br i1 %tobool.not.i67, label %sw.bb27.sw.epilog_crit_edge, label %if.then.i70

sw.bb27.sw.epilog_crit_edge:                      ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then.i70:                                      ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #6
  %users.i68 = getelementptr i8, ptr %7, i32 -4
  %call.i.i.i69 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i68, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %users.i68, i32 1, i32 3, i32 1) #4
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i68, ptr %users.i68, i32 1, ptr elementtype(i32) %users.i68) #4, !srcloc !20
  br label %sw.epilog

sw.bb32:                                          ; preds = %tomoyo_put_condition.exit
  %group = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %element, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %group, align 4
  %tobool.not.i71 = icmp eq ptr %10, null
  br i1 %tobool.not.i71, label %sw.bb32.tomoyo_put_group.exit_crit_edge, label %if.then.i74

sw.bb32.tomoyo_put_group.exit_crit_edge:          ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #6
  br label %tomoyo_put_group.exit

if.then.i74:                                      ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #6
  %users.i72 = getelementptr inbounds %struct.tomoyo_shared_acl_head, ptr %10, i32 0, i32 1
  %call.i.i.i73 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i72, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %users.i72, i32 1, i32 3, i32 1) #4
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i72, ptr %users.i72, i32 1, ptr elementtype(i32) %users.i72) #4, !srcloc !20
  br label %tomoyo_put_group.exit

tomoyo_put_group.exit:                            ; preds = %if.then.i74, %sw.bb32.tomoyo_put_group.exit_crit_edge
  %port = getelementptr inbounds %struct.tomoyo_inet_acl, ptr %element, i32 0, i32 4
  tail call void @tomoyo_put_number_union(ptr noundef %port) #4
  br label %sw.epilog

sw.bb37:                                          ; preds = %tomoyo_put_condition.exit
  call void @__sanitizer_cov_trace_pc() #6
  %name42 = getelementptr inbounds %struct.tomoyo_unix_acl, ptr %element, i32 0, i32 3
  tail call void @tomoyo_put_name_union(ptr noundef %name42) #4
  br label %sw.epilog

sw.bb43:                                          ; preds = %tomoyo_put_condition.exit
  %domainname = getelementptr inbounds %struct.tomoyo_task_acl, ptr %element, i32 0, i32 1
  %12 = ptrtoint ptr %domainname to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %domainname, align 4
  %tobool.not.i75 = icmp eq ptr %13, null
  br i1 %tobool.not.i75, label %sw.bb43.sw.epilog_crit_edge, label %if.then.i78

sw.bb43.sw.epilog_crit_edge:                      ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then.i78:                                      ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #6
  %users.i76 = getelementptr i8, ptr %13, i32 -4
  %call.i.i.i77 = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i76, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %users.i76, i32 1, i32 3, i32 1) #4
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i76, ptr %users.i76, i32 1, ptr elementtype(i32) %users.i76) #4, !srcloc !20
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i78, %sw.bb43.sw.epilog_crit_edge, %sw.bb37, %tomoyo_put_group.exit, %if.then.i70, %sw.bb27.sw.epilog_crit_edge, %sw.bb22, %sw.bb16, %sw.bb10, %sw.bb5, %sw.bb, %tomoyo_put_condition.exit.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ksize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/tomoyo/gc.c", i32 669, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/tomoyo/gc.c", i32 30, i32 8}
!4 = !{ptr @tomoyo_io_buffer_list_lock, !3, !"tomoyo_io_buffer_list_lock", i1 false, i1 false}
!5 = !{ptr @tomoyo_io_buffer_list, !6, !"tomoyo_io_buffer_list", i1 false, i1 false}
!6 = !{!"../security/tomoyo/gc.c", i32 28, i32 8}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../security/tomoyo/gc.c", i32 615, i32 9}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @tomoyo_gc_thread.tomoyo_gc_mutex, !8, !"tomoyo_gc_mutex", i1 false, i1 false}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i64 2148740681, i64 2148740707, i64 2148740736, i64 2148740770, i64 2148740801, i64 2148740824}
!21 = !{i8 0, i8 2}
!22 = !{i64 2151543470}
