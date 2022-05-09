; ModuleID = '/llk/IR_all_yes/mm/vmpressure.c_pt.bc'
source_filename = "../mm/vmpressure.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.70 }
%struct.atomic_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.vmpressure = type { i32, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.work_struct }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mem_cgroup = type { %struct.cgroup_subsys_state, %struct.mem_cgroup_id, %struct.page_counter, %union.anon.82, %struct.page_counter, %struct.page_counter, %struct.work_struct, i32, %struct.vmpressure, i8, i8, i32, i32, i32, %struct.cgroup_file, %struct.cgroup_file, %struct.cgroup_file, %struct.mutex, %struct.mem_cgroup_thresholds, %struct.mem_cgroup_thresholds, %struct.list_head, i32, %struct.spinlock, i32, [20 x i8], %struct.memcg_padding, %struct.memcg_vmstats, [9 x %struct.atomic_t], [9 x %struct.atomic_t], i32, i8, i32, i32, ptr, %struct.list_head, [92 x i8], %struct.memcg_padding, %struct.atomic_t, ptr, ptr, %struct.list_head, %struct.wb_domain, [4 x %struct.memcg_cgwb_frn], %struct.list_head, %struct.spinlock, [0 x ptr], [84 x i8] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.mem_cgroup_id = type { i32, %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.82 = type { %struct.page_counter }
%struct.page_counter = type { %struct.atomic_t, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mem_cgroup_thresholds = type { ptr, ptr }
%struct.memcg_vmstats = type { [44 x i32], [76 x i32], [44 x i32], [76 x i32] }
%struct.memcg_padding = type { [0 x i8] }
%struct.wb_domain = type { %struct.spinlock, %struct.fprop_global, %struct.timer_list, i32, i32, i32 }
%struct.fprop_global = type { %struct.percpu_counter, i32, %struct.seqcount }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.memcg_cgwb_frn = type { i64, i32, i64, %struct.wb_completion }
%struct.wb_completion = type { %struct.atomic_t, ptr }
%struct.vmpressure_event = type { ptr, i32, i32, %struct.list_head }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@vmpressure_str_levels = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12], [20 x i8] zeroinitializer }, align 32
@vmpressure_str_modes = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.13, ptr @.str.14, ptr @.str.15], [20 x i8] zeroinitializer }, align 32
@vmpressure_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&vmpr->sr_lock\00", [17 x i8] zeroinitializer }, align 32
@vmpressure_init.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&vmpr->events_lock\00", [45 x i8] zeroinitializer }, align 32
@vmpressure_init.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&vmpr->work)\00", [33 x i8] zeroinitializer }, align 32
@memory_cgrp_subsys_enabled_key = external dso_local global %struct.static_key_true, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@root_mem_cgroup = external dso_local local_unnamed_addr global ptr, align 4
@vmpressure_calc_level.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, i8 0, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vmpressure\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vmpressure_calc_level\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mm/vmpressure.c\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: %3lu  (s: %lu  r: %lu)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"medium\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"critical\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hierarchy\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"local\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 382, i32 24 }
@___asan_gen_.19 = private unnamed_addr constant [22 x i8] c"vmpressure_str_levels\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 99, i32 27 }
@___asan_gen_.22 = private unnamed_addr constant [21 x i8] c"vmpressure_str_modes\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 105, i32 27 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 453, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 454, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 456, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 144, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 100, i32 21 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 101, i32 24 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 102, i32 26 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 106, i32 32 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 107, i32 27 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private constant [19 x i8] c"../mm/vmpressure.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 108, i32 23 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @.str, ptr @vmpressure_str_levels, ptr @vmpressure_str_modes, ptr @vmpressure_init.__key, ptr @.str.1, ptr @vmpressure_init.__key.2, ptr @.str.3, ptr @vmpressure_init.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmpressure_str_levels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmpressure_str_modes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmpressure_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmpressure_init.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vmpressure_init.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vmpressure(i32 noundef %gfp, ptr noundef %memcg, i1 noundef zeroext %tree, i32 noundef %scanned, i32 noundef %reclaimed) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@vmpressure, %cleanup42)) #4
          to label %if.end [label %cleanup42], !srcloc !42

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @memcg_to_vmpressure(ptr noundef %memcg) #4
  %and = and i32 %gfp, 202
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %scanned)
  %tobool4.not = icmp eq i32 %scanned, 0
  %or.cond = or i1 %tobool.not, %tobool4.not
  br i1 %or.cond, label %if.end.cleanup42_crit_edge, label %if.end6

if.end.cleanup42_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup42

if.end6:                                          ; preds = %if.end
  br i1 %tree, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  %sr_lock = getelementptr inbounds %struct.vmpressure, ptr %call1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sr_lock) #4
  %tree_scanned = getelementptr inbounds %struct.vmpressure, ptr %call1, i32 0, i32 2
  %0 = ptrtoint ptr %tree_scanned to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tree_scanned, align 4
  %add = add i32 %1, %scanned
  store i32 %add, ptr %tree_scanned, align 4
  %tree_reclaimed = getelementptr inbounds %struct.vmpressure, ptr %call1, i32 0, i32 3
  %2 = ptrtoint ptr %tree_reclaimed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tree_reclaimed, align 4
  %add9 = add i32 %3, %reclaimed
  store i32 %add9, ptr %tree_reclaimed, align 4
  tail call void @_raw_spin_unlock(ptr noundef %sr_lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add)
  %cmp = icmp ult i32 %add, 512
  br i1 %cmp, label %if.then8.cleanup42_crit_edge, label %if.end12

if.then8.cleanup42_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup42

if.end12:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %work = getelementptr inbounds %struct.vmpressure, ptr %call1, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %work) #4
  br label %cleanup42

if.else:                                          ; preds = %if.end6
  %tobool14.not = icmp eq ptr %memcg, null
  br i1 %tobool14.not, label %if.else.cleanup42_crit_edge, label %lor.lhs.false

if.else.cleanup42_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup42

lor.lhs.false:                                    ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @root_mem_cgroup to i32))
  %5 = load ptr, ptr @root_mem_cgroup, align 4
  %cmp.i = icmp eq ptr %5, %memcg
  br i1 %cmp.i, label %lor.lhs.false.cleanup42_crit_edge, label %if.end17

lor.lhs.false.cleanup42_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup42

if.end17:                                         ; preds = %lor.lhs.false
  %sr_lock18 = getelementptr inbounds %struct.vmpressure, ptr %call1, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sr_lock18) #4
  %6 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call1, align 4
  %add20 = add i32 %7, %scanned
  store i32 %add20, ptr %call1, align 4
  %reclaimed21 = getelementptr inbounds %struct.vmpressure, ptr %call1, i32 0, i32 1
  %8 = ptrtoint ptr %reclaimed21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reclaimed21, align 4
  %add22 = add i32 %9, %reclaimed
  store i32 %add22, ptr %reclaimed21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %add20)
  %cmp23 = icmp ult i32 %add20, 512
  br i1 %cmp23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock(ptr noundef %sr_lock18) #4
  br label %cleanup42

if.end26:                                         ; preds = %if.end17
  %10 = ptrtoint ptr %reclaimed21 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %reclaimed21, align 4
  %11 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %call1, align 4
  tail call void @_raw_spin_unlock(ptr noundef %sr_lock18) #4
  %call30 = tail call fastcc i32 @vmpressure_calc_level(i32 noundef %add20, i32 noundef %add22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31.not = icmp eq i32 %call30, 0
  br i1 %cmp31.not, label %if.end26.cleanup42_crit_edge, label %do.body34

if.end26.cleanup42_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup42

do.body34:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %add35 = add i32 %12, 100
  %socket_pressure = getelementptr inbounds %struct.mem_cgroup, ptr %memcg, i32 0, i32 29
  %13 = ptrtoint ptr %socket_pressure to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %add35, ptr %socket_pressure, align 8
  br label %cleanup42

cleanup42:                                        ; preds = %do.body34, %if.end26.cleanup42_crit_edge, %if.then24, %lor.lhs.false.cleanup42_crit_edge, %if.else.cleanup42_crit_edge, %if.end12, %if.then8.cleanup42_crit_edge, %if.end.cleanup42_crit_edge, %entry
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memcg_to_vmpressure(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vmpressure_calc_level(i32 noundef %scanned, i32 noundef %reclaimed) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %reclaimed, i32 %scanned)
  %cmp.not = icmp ult i32 %reclaimed, %scanned
  br i1 %cmp.not, label %if.end, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add = add i32 %reclaimed, %scanned
  %mul = mul i32 %add, %reclaimed
  %div = udiv i32 %mul, %scanned
  %sub = sub i32 %add, %div
  %mul1 = mul i32 %sub, 100
  %div2 = udiv i32 %mul1, %add
  br label %do.body

do.body:                                          ; preds = %if.end, %entry.do.body_crit_edge
  %pressure.0 = phi i32 [ 0, %entry.do.body_crit_edge ], [ %div2, %if.end ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vmpressure_calc_level.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vmpressure_calc_level, %if.then5)) #4
          to label %do.end [label %if.then5], !srcloc !42

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vmpressure_calc_level.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef %pressure.0, i32 noundef %scanned, i32 noundef %reclaimed) #4
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 94, i32 %pressure.0)
  %cmp.i = icmp ugt i32 %pressure.0, 94
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %pressure.0)
  %cmp1.i = icmp ugt i32 %pressure.0, 59
  %..i = zext i1 %cmp1.i to i32
  %retval.0.i18 = select i1 %cmp.i, i32 2, i32 %..i
  ret i32 %retval.0.i18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vmpressure_prio(i32 noundef %gfp, ptr noundef %memcg, i32 noundef %prio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %prio)
  %cmp = icmp ugt i32 %prio, 3
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memory_cgrp_subsys_enabled_key, i32 1), ptr blockaddress(@vmpressure_prio, %return)) #4
          to label %if.end.i [label %return], !srcloc !42

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call ptr @memcg_to_vmpressure(ptr noundef %memcg) #4
  %and.i = and i32 %gfp, 202
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.return_crit_edge, label %if.end6.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end6.i:                                        ; preds = %if.end.i
  %sr_lock.i = getelementptr inbounds %struct.vmpressure, ptr %call1.i, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sr_lock.i) #4
  %tree_scanned.i = getelementptr inbounds %struct.vmpressure, ptr %call1.i, i32 0, i32 2
  %0 = ptrtoint ptr %tree_scanned.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tree_scanned.i, align 4
  %add.i = add i32 %1, 512
  store i32 %add.i, ptr %tree_scanned.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %sr_lock.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -513, i32 %1)
  %cmp.i = icmp ugt i32 %1, -513
  br i1 %cmp.i, label %if.end6.i.return_crit_edge, label %if.end12.i

if.end6.i.return_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end12.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  %work.i = getelementptr inbounds %struct.vmpressure, ptr %call1.i, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work.i) #4
  br label %return

return:                                           ; preds = %if.end12.i, %if.end6.i.return_crit_edge, %if.end.i.return_crit_edge, %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vmpressure_register_event(ptr noundef %memcg, ptr noundef %eventfd, ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %spec = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @memcg_to_vmpressure(ptr noundef %memcg) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %spec) #4
  %call1 = tail call ptr @kstrndup(ptr noundef %args, i32 noundef 19, i32 noundef 3264) #4
  %0 = ptrtoint ptr %spec to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %spec, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call ptr @strsep(ptr noundef nonnull %spec, ptr noundef nonnull @.str) #4
  %call3 = call i32 @match_string(ptr noundef nonnull @vmpressure_str_levels, i32 noundef 3, ptr noundef %call2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end5:                                          ; preds = %if.end
  %call6 = call ptr @strsep(ptr noundef nonnull %spec, ptr noundef nonnull @.str) #4
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.if.end13_crit_edge, label %if.then8

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then8:                                         ; preds = %if.end5
  %call9 = call i32 @match_string(ptr noundef nonnull @vmpressure_str_modes, i32 noundef 3, ptr noundef nonnull %call6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then8.out_crit_edge, label %if.then8.if.end13_crit_edge

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then8.out_crit_edge:                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end13:                                         ; preds = %if.then8.if.end13_crit_edge, %if.end5.if.end13_crit_edge
  %mode.0 = phi i32 [ 0, %if.end5.if.end13_crit_edge ], [ %call9, %if.then8.if.end13_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 20) #7
  %tobool15.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool15.not, label %if.end13.out_crit_edge, label %if.end17

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end17:                                         ; preds = %if.end13
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %eventfd, ptr %call7.i.i, align 8
  %level18 = getelementptr inbounds %struct.vmpressure_event, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %level18 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call3, ptr %level18, align 4
  %mode19 = getelementptr inbounds %struct.vmpressure_event, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %mode19 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mode.0, ptr %mode19, align 8
  %events_lock = getelementptr inbounds %struct.vmpressure, ptr %call, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %events_lock, i32 noundef 0) #4
  %node = getelementptr inbounds %struct.vmpressure_event, ptr %call7.i.i, i32 0, i32 3
  %events = getelementptr inbounds %struct.vmpressure, ptr %call, i32 0, i32 5
  %5 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %events, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %events, ptr noundef %6) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end17.list_add.exit_crit_edge

if.end17.list_add.exit_crit_edge:                 ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %node, ptr %prev1.i.i, align 4
  %8 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.vmpressure_event, ptr %call7.i.i, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %events, ptr %prev3.i.i, align 8
  %10 = ptrtoint ptr %events to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %node, ptr %events, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end17.list_add.exit_crit_edge
  call void @mutex_unlock(ptr noundef %events_lock) #4
  br label %out

out:                                              ; preds = %list_add.exit, %if.end13.out_crit_edge, %if.then8.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %call3, %if.end.out_crit_edge ], [ %call9, %if.then8.out_crit_edge ], [ 0, %list_add.exit ], [ -12, %if.end13.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call1) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spec) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vmpressure_unregister_event(ptr noundef %memcg, ptr noundef readnone %eventfd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @memcg_to_vmpressure(ptr noundef %memcg) #4
  %events_lock = getelementptr inbounds %struct.vmpressure, ptr %call, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %events_lock, i32 noundef 0) #4
  %events = getelementptr inbounds %struct.vmpressure, ptr %call, i32 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %events, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %events
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.cond
  %ev.0 = getelementptr i8, ptr %.pn, i32 -12
  %1 = ptrtoint ptr %ev.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ev.0, align 4
  %cmp2.not = icmp eq ptr %2, %eventfd
  br i1 %cmp2.not, label %if.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond

if.end:                                           ; preds = %for.body
  %ev.0.le = getelementptr i8, ptr %.pn, i32 -12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %ev.0.le) #4
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %for.cond.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %events_lock) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vmpressure_init(ptr noundef %vmpr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sr_lock = getelementptr inbounds %struct.vmpressure, ptr %vmpr, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %sr_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @vmpressure_init.__key, i16 noundef signext 3) #4
  %events_lock = getelementptr inbounds %struct.vmpressure, ptr %vmpr, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %events_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @vmpressure_init.__key.2) #4
  %events = getelementptr inbounds %struct.vmpressure, ptr %vmpr, i32 0, i32 5
  %0 = ptrtoint ptr %events to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %events, ptr %events, align 4
  %prev.i = getelementptr inbounds %struct.vmpressure, ptr %vmpr, i32 0, i32 5, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %events, ptr %prev.i, align 4
  %work = getelementptr inbounds %struct.vmpressure, ptr %vmpr, i32 0, i32 7
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #4
  %2 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.vmpressure, ptr %vmpr, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @vmpressure_init.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry7 = getelementptr inbounds %struct.vmpressure, ptr %vmpr, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry7, ptr %entry7, align 4
  %prev.i17 = getelementptr inbounds %struct.vmpressure, ptr %vmpr, i32 0, i32 7, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i17 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry7, ptr %prev.i17, align 4
  %func = getelementptr inbounds %struct.vmpressure, ptr %vmpr, i32 0, i32 7, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @vmpressure_work_fn, ptr %func, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vmpressure_work_fn(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %work, i32 -160
  %sr_lock = getelementptr i8, ptr %work, i32 -144
  tail call void @_raw_spin_lock(ptr noundef %sr_lock) #4
  %tree_scanned = getelementptr i8, ptr %work, i32 -152
  %0 = ptrtoint ptr %tree_scanned to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tree_scanned, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock(ptr noundef %sr_lock) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %tree_reclaimed = getelementptr i8, ptr %work, i32 -148
  %2 = ptrtoint ptr %tree_reclaimed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tree_reclaimed, align 4
  %4 = ptrtoint ptr %tree_scanned to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %tree_scanned, align 4
  store i32 0, ptr %tree_reclaimed, align 4
  tail call void @_raw_spin_unlock(ptr noundef %sr_lock) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i = icmp ult i32 %3, %1
  br i1 %cmp.not.i, label %if.end.i, label %if.end.do.body.i_crit_edge

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %add.i = add i32 %3, %1
  %mul.i = mul i32 %add.i, %3
  %div.i = udiv i32 %mul.i, %1
  %sub.i = sub i32 %add.i, %div.i
  %mul1.i = mul i32 %sub.i, 100
  %div2.i = udiv i32 %mul1.i, %add.i
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i, %if.end.do.body.i_crit_edge
  %pressure.0.i = phi i32 [ 0, %if.end.do.body.i_crit_edge ], [ %div2.i, %if.end.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vmpressure_calc_level.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vmpressure_work_fn, %if.then5.i)) #4
          to label %vmpressure_calc_level.exit [label %if.then5.i], !srcloc !42

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @vmpressure_calc_level.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef %pressure.0.i, i32 noundef %1, i32 noundef %3) #4
  br label %vmpressure_calc_level.exit

vmpressure_calc_level.exit:                       ; preds = %if.then5.i, %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 94, i32 %pressure.0.i)
  %cmp.i.i = icmp ugt i32 %pressure.0.i, 94
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %pressure.0.i)
  %cmp1.i.i = icmp ugt i32 %pressure.0.i, 59
  %..i.i = zext i1 %cmp1.i.i to i32
  %retval.0.i18.i = select i1 %cmp.i.i, i32 2, i32 %..i.i
  br label %do.body

do.body:                                          ; preds = %vmpressure_parent.exit.do.body_crit_edge, %vmpressure_calc_level.exit
  %vmpr.0 = phi ptr [ %add.ptr.i, %vmpressure_calc_level.exit ], [ %call2.i, %vmpressure_parent.exit.do.body_crit_edge ]
  %ancestor.0.off0 = phi i1 [ false, %vmpressure_calc_level.exit ], [ true, %vmpressure_parent.exit.do.body_crit_edge ]
  %signalled.0.off0 = phi i1 [ false, %vmpressure_calc_level.exit ], [ %spec.select, %vmpressure_parent.exit.do.body_crit_edge ]
  %events_lock.i = getelementptr inbounds %struct.vmpressure, ptr %vmpr.0, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %events_lock.i, i32 noundef 0) #4
  %events.i = getelementptr inbounds %struct.vmpressure, ptr %vmpr.0, i32 0, i32 5
  %5 = ptrtoint ptr %events.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn32.i = load ptr, ptr %events.i, align 4
  %cmp.not34.i = icmp eq ptr %.pn32.i, %events.i
  br i1 %cmp.not34.i, label %do.body.vmpressure_event.exit_crit_edge, label %do.body.for.body.i_crit_edge

do.body.for.body.i_crit_edge:                     ; preds = %do.body
  br label %for.body.i

do.body.vmpressure_event.exit_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %vmpressure_event.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.body.for.body.i_crit_edge
  %.pn36.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn32.i, %do.body.for.body.i_crit_edge ]
  %ret.0.off035.i = phi i1 [ %ret.1.off0.i, %for.inc.i.for.body.i_crit_edge ], [ false, %do.body.for.body.i_crit_edge ]
  %ev.037.i = getelementptr i8, ptr %.pn36.i, i32 -12
  br i1 %ancestor.0.off0, label %land.lhs.true.i, label %for.body.i.if.end.i28_crit_edge

for.body.i.if.end.i28_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i28

land.lhs.true.i:                                  ; preds = %for.body.i
  %mode.i = getelementptr i8, ptr %.pn36.i, i32 -4
  %6 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp3.i = icmp eq i32 %7, 2
  br i1 %cmp3.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.if.end.i28_crit_edge

land.lhs.true.i.if.end.i28_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i28

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end.i28:                                       ; preds = %land.lhs.true.i.if.end.i28_crit_edge, %for.body.i.if.end.i28_crit_edge
  br i1 %signalled.0.off0, label %land.lhs.true5.i, label %if.end.i28.if.end9.i_crit_edge

if.end.i28.if.end9.i_crit_edge:                   ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9.i

land.lhs.true5.i:                                 ; preds = %if.end.i28
  %mode6.i = getelementptr i8, ptr %.pn36.i, i32 -4
  %8 = ptrtoint ptr %mode6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp7.i = icmp eq i32 %9, 0
  br i1 %cmp7.i, label %land.lhs.true5.i.for.inc.i_crit_edge, label %land.lhs.true5.i.if.end9.i_crit_edge

land.lhs.true5.i.if.end9.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9.i

land.lhs.true5.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end9.i:                                        ; preds = %land.lhs.true5.i.if.end9.i_crit_edge, %if.end.i28.if.end9.i_crit_edge
  %level10.i = getelementptr i8, ptr %.pn36.i, i32 -8
  %10 = ptrtoint ptr %level10.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %level10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %retval.0.i18.i)
  %cmp11.i = icmp ugt i32 %11, %retval.0.i18.i
  br i1 %cmp11.i, label %if.end9.i.for.inc.i_crit_edge, label %if.end13.i

if.end9.i.for.inc.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end13.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %ev.037.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ev.037.i, align 4
  %call.i = tail call i64 @eventfd_signal(ptr noundef %13, i64 noundef 1) #4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end13.i, %if.end9.i.for.inc.i_crit_edge, %land.lhs.true5.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge
  %ret.1.off0.i = phi i1 [ %ret.0.off035.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %ret.0.off035.i, %land.lhs.true5.i.for.inc.i_crit_edge ], [ %ret.0.off035.i, %if.end9.i.for.inc.i_crit_edge ], [ true, %if.end13.i ]
  %14 = ptrtoint ptr %.pn36.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i = load ptr, ptr %.pn36.i, align 4
  %cmp.not.i29 = icmp eq ptr %.pn.i, %events.i
  br i1 %cmp.not.i29, label %for.inc.i.vmpressure_event.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.vmpressure_event.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vmpressure_event.exit

vmpressure_event.exit:                            ; preds = %for.inc.i.vmpressure_event.exit_crit_edge, %do.body.vmpressure_event.exit_crit_edge
  %ret.0.off0.lcssa.i = phi i1 [ false, %do.body.vmpressure_event.exit_crit_edge ], [ %ret.1.off0.i, %for.inc.i.vmpressure_event.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %events_lock.i) #4
  %call.i30 = tail call ptr @vmpressure_to_memcg(ptr noundef %vmpr.0) #4
  %parent.i.i = getelementptr inbounds %struct.mem_cgroup, ptr %call.i30, i32 0, i32 2, i32 13
  %15 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %16, null
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 -176
  %tobool.not5.i = icmp eq ptr %add.ptr.i.i, null
  %tobool.not.i = or i1 %tobool.not.i.i, %tobool.not5.i
  br i1 %tobool.not.i, label %vmpressure_event.exit.cleanup_crit_edge, label %vmpressure_parent.exit

vmpressure_event.exit.cleanup_crit_edge:          ; preds = %vmpressure_event.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

vmpressure_parent.exit:                           ; preds = %vmpressure_event.exit
  %spec.select = select i1 %ret.0.off0.lcssa.i, i1 true, i1 %signalled.0.off0
  %call2.i = tail call ptr @memcg_to_vmpressure(ptr noundef nonnull %add.ptr.i.i) #4
  %tobool12.not = icmp eq ptr %call2.i, null
  br i1 %tobool12.not, label %vmpressure_parent.exit.cleanup_crit_edge, label %vmpressure_parent.exit.do.body_crit_edge

vmpressure_parent.exit.do.body_crit_edge:         ; preds = %vmpressure_parent.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

vmpressure_parent.exit.cleanup_crit_edge:         ; preds = %vmpressure_parent.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %vmpressure_parent.exit.cleanup_crit_edge, %vmpressure_event.exit.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vmpressure_cleanup(ptr noundef %vmpr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %work = getelementptr inbounds %struct.vmpressure, ptr %vmpr, i32 0, i32 7
  %call = tail call zeroext i1 @flush_work(ptr noundef %work) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @eventfd_signal(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmpressure_to_memcg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../mm/vmpressure.c", i32 382, i32 24}
!2 = !{ptr @vmpressure_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../mm/vmpressure.c", i32 453, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @vmpressure_init.__key.2, !6, !"__key", i1 false, i1 false}
!6 = !{!"../mm/vmpressure.c", i32 454, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @vmpressure_init.__key.4, !9, !"__key", i1 false, i1 false}
!9 = !{!"../mm/vmpressure.c", i32 456, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../mm/vmpressure.c", i32 144, i32 2}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @vmpressure_calc_level.__UNIQUE_ID_ddebug288, !12, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../mm/vmpressure.c", i32 100, i32 21}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../mm/vmpressure.c", i32 101, i32 24}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../mm/vmpressure.c", i32 102, i32 26}
!23 = !{ptr @vmpressure_str_levels, !24, !"vmpressure_str_levels", i1 false, i1 false}
!24 = !{!"../mm/vmpressure.c", i32 99, i32 27}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../mm/vmpressure.c", i32 106, i32 32}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../mm/vmpressure.c", i32 107, i32 27}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../mm/vmpressure.c", i32 108, i32 23}
!31 = !{ptr @vmpressure_str_modes, !32, !"vmpressure_str_modes", i1 false, i1 false}
!32 = !{!"../mm/vmpressure.c", i32 105, i32 27}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i64 2148273763, i64 2148273768, i64 2148273781, i64 2148273825, i64 2148273859, i64 2148273880}
