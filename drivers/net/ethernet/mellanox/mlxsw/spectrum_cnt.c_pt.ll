; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum_cnt.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum_cnt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlxsw_sp_counter_sub_pool = type { i64, i32, i32, ptr, i64, i32, i32, %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.devlink_resource_size_params = type { i64, i64, i64, i32 }
%struct.mlxsw_sp = type { ptr, ptr, ptr, [6 x i8], ptr, ptr, ptr, %struct.rhashtable, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, ptr, ptr, ptr, %struct.mlxsw_sp_parsing, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.rhashtable, %struct.mutex }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlxsw_sp_parsing = type { %struct.refcount_struct, i16, i16, %struct.mutex }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlxsw_sp_counter_pool = type { i64, ptr, %struct.spinlock, %struct.atomic_t, i32, [0 x %struct.mlxsw_sp_counter_sub_pool] }

@mlxsw_sp_counter_sub_pools = internal constant { [2 x %struct.mlxsw_sp_counter_sub_pool], [32 x i8] } { [2 x %struct.mlxsw_sp_counter_sub_pool] [%struct.mlxsw_sp_counter_sub_pool { i64 0, i32 0, i32 12, ptr @.str.3, i64 11, i32 0, i32 6, %struct.atomic_t zeroinitializer }, %struct.mlxsw_sp_counter_sub_pool { i64 0, i32 0, i32 13, ptr @.str.4, i64 12, i32 0, i32 2, %struct.atomic_t zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_counter_pool_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&pool->counter_pool_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/mellanox/mlxsw/spectrum_cnt.c\00", [45 x i8] zeroinitializer }, align 32
@mlxsw_sp_counter_resources_register.size_params = internal global { %struct.devlink_resource_size_params, [32 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"counters\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"flow\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rif\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [27 x i8] c"mlxsw_sp_counter_sub_pools\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 30, i32 47 }
@___asan_gen_.8 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 135, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 173, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [12 x i8] c"size_params\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 244, i32 45 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 266, i32 6 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 33, i32 20 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [54 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum_cnt.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 39, i32 20 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @mlxsw_sp_counter_sub_pools, ptr @mlxsw_sp_counter_pool_init.__key, ptr @.str, ptr @.str.1, ptr @mlxsw_sp_counter_resources_register.size_params, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_counter_sub_pools to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_counter_pool_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_counter_resources_register.size_params to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_counter_pool_init(ptr nocapture noundef %mlxsw_sp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %call = tail call ptr @priv_to_devlink(ptr noundef %1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 160) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %counter_pool = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 21
  %3 = ptrtoint ptr %counter_pool to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %counter_pool, align 4
  %sub_pools_count3 = getelementptr inbounds %struct.mlxsw_sp_counter_pool, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %sub_pools_count3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %sub_pools_count3, align 4
  %sub_pools = getelementptr inbounds %struct.mlxsw_sp_counter_pool, ptr %call7.i.i, i32 0, i32 5
  %5 = call ptr @memcpy(ptr %sub_pools, ptr @mlxsw_sp_counter_sub_pools, i32 96)
  %counter_pool_lock = getelementptr inbounds %struct.mlxsw_sp_counter_pool, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %counter_pool_lock, ptr noundef nonnull @.str, ptr noundef nonnull @mlxsw_sp_counter_pool_init.__key, i16 noundef signext 3) #5
  %active_entries_count = getelementptr inbounds %struct.mlxsw_sp_counter_pool, ptr %call7.i.i, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_entries_count, i32 noundef 4) #5
  %6 = ptrtoint ptr %active_entries_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %active_entries_count, align 8
  %call7 = tail call i32 @devlink_resource_size_get(ptr noundef %call, i64 noundef 10, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.err_pool_resource_size_get_crit_edge

if.end.err_pool_resource_size_get_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_pool_resource_size_get

if.end10:                                         ; preds = %if.end
  tail call void @devlink_resource_occ_get_register(ptr noundef %call, i64 noundef 10, ptr noundef nonnull @mlxsw_sp_counter_pool_occ_get, ptr noundef nonnull %call7.i.i) #5
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %call7.i.i, align 8
  %conv = trunc i64 %8 to i32
  %call12 = tail call ptr @bitmap_zalloc(i32 noundef %conv, i32 noundef 3264) #5
  %usage = getelementptr inbounds %struct.mlxsw_sp_counter_pool, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %usage to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call12, ptr %usage, align 8
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %if.end10.err_usage_alloc_crit_edge, label %if.end16

if.end10.err_usage_alloc_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_usage_alloc

if.end16:                                         ; preds = %if.end10
  %10 = ptrtoint ptr %counter_pool to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %counter_pool, align 4
  %12 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core, align 4
  %call.i = tail call ptr @priv_to_devlink(ptr noundef %13) #5
  %sub_pools_count.i = getelementptr inbounds %struct.mlxsw_sp_counter_pool, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %sub_pools_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sub_pools_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp56.not.i = icmp eq i32 %15, 0
  br i1 %cmp56.not.i, label %if.end16.cleanup_crit_edge, label %if.end16.for.body.i_crit_edge

if.end16.for.body.i_crit_edge:                    ; preds = %if.end16
  br label %for.body.i

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i:                                       ; preds = %if.end7.i.for.body.i_crit_edge, %if.end16.for.body.i_crit_edge
  %i.058.i = phi i32 [ %inc.i, %if.end7.i.for.body.i_crit_edge ], [ 0, %if.end16.for.body.i_crit_edge ]
  %base_index.057.i = phi i32 [ %conv12.i, %if.end7.i.for.body.i_crit_edge ], [ 0, %if.end16.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlxsw_sp_counter_pool, ptr %11, i32 0, i32 5, i32 %i.058.i
  %entry_size_res_id.i = getelementptr %struct.mlxsw_sp_counter_pool, ptr %11, i32 0, i32 5, i32 %i.058.i, i32 2
  %16 = ptrtoint ptr %entry_size_res_id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %entry_size_res_id.i, align 4
  %18 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %core, align 4
  %call2.i = tail call zeroext i1 @mlxsw_core_res_valid(ptr noundef %19, i32 noundef %17) #5
  br i1 %call2.i, label %if.end.i, label %for.body.i.err_sub_pools_init_crit_edge

for.body.i.err_sub_pools_init_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_sub_pools_init

if.end.i:                                         ; preds = %for.body.i
  %20 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %core, align 4
  %call4.i = tail call i64 @mlxsw_core_res_get(ptr noundef %21, i32 noundef %17) #5
  %conv.i = trunc i64 %call4.i to i32
  %entry_size.i = getelementptr %struct.mlxsw_sp_counter_pool, ptr %11, i32 0, i32 5, i32 %i.058.i, i32 5
  %22 = ptrtoint ptr %entry_size.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv.i, ptr %entry_size.i, align 8
  %resource_id.i = getelementptr %struct.mlxsw_sp_counter_pool, ptr %11, i32 0, i32 5, i32 %i.058.i, i32 4
  %23 = ptrtoint ptr %resource_id.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %resource_id.i, align 8
  %call5.i = tail call i32 @devlink_resource_size_get(ptr noundef %call.i, i64 noundef %24, ptr noundef %arrayidx.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end7.i, label %for.cond13.preheader.i

for.cond13.preheader.i:                           ; preds = %if.end.i
  %i.160.i = add i32 %i.058.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.160.i)
  %cmp1461.i = icmp sgt i32 %i.160.i, -1
  br i1 %cmp1461.i, label %for.cond13.preheader.i.for.body16.i_crit_edge, label %for.cond13.preheader.i.err_sub_pools_init_crit_edge

for.cond13.preheader.i.err_sub_pools_init_crit_edge: ; preds = %for.cond13.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_sub_pools_init

for.cond13.preheader.i.for.body16.i_crit_edge:    ; preds = %for.cond13.preheader.i
  br label %for.body16.i

if.end7.i:                                        ; preds = %if.end.i
  %25 = ptrtoint ptr %resource_id.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %resource_id.i, align 8
  tail call void @devlink_resource_occ_get_register(ptr noundef %call.i, i64 noundef %26, ptr noundef nonnull @mlxsw_sp_counter_sub_pool_occ_get, ptr noundef %arrayidx.i) #5
  %base_index9.i = getelementptr %struct.mlxsw_sp_counter_pool, ptr %11, i32 0, i32 5, i32 %i.058.i, i32 1
  %27 = ptrtoint ptr %base_index9.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %base_index.057.i, ptr %base_index9.i, align 8
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx.i, align 8
  %30 = trunc i64 %29 to i32
  %conv12.i = add i32 %base_index.057.i, %30
  %active_entries_count.i = getelementptr %struct.mlxsw_sp_counter_pool, ptr %11, i32 0, i32 5, i32 %i.058.i, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_entries_count.i, i32 noundef 4) #5
  %31 = ptrtoint ptr %active_entries_count.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile i32 0, ptr %active_entries_count.i, align 4
  %inc.i = add nuw i32 %i.058.i, 1
  %32 = ptrtoint ptr %sub_pools_count.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sub_pools_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %33
  br i1 %cmp.i, label %if.end7.i.for.body.i_crit_edge, label %if.end7.i.cleanup_crit_edge

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %for.cond13.preheader.i.for.body16.i_crit_edge
  %i.162.i = phi i32 [ %i.1.i, %for.body16.i.for.body16.i_crit_edge ], [ %i.160.i, %for.cond13.preheader.i.for.body16.i_crit_edge ]
  %resource_id19.i = getelementptr %struct.mlxsw_sp_counter_pool, ptr %11, i32 0, i32 5, i32 %i.162.i, i32 4
  %34 = ptrtoint ptr %resource_id19.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %resource_id19.i, align 8
  tail call void @devlink_resource_occ_get_unregister(ptr noundef %call.i, i64 noundef %35) #5
  %i.1.i = add nsw i32 %i.162.i, -1
  %cmp14.i.not = icmp eq i32 %i.162.i, 0
  br i1 %cmp14.i.not, label %for.body16.i.err_sub_pools_init_crit_edge, label %for.body16.i.for.body16.i_crit_edge

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body16.i

for.body16.i.err_sub_pools_init_crit_edge:        ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_sub_pools_init

err_sub_pools_init:                               ; preds = %for.body16.i.err_sub_pools_init_crit_edge, %for.cond13.preheader.i.err_sub_pools_init_crit_edge, %for.body.i.err_sub_pools_init_crit_edge
  %retval.0.i51 = phi i32 [ %call5.i, %for.cond13.preheader.i.err_sub_pools_init_crit_edge ], [ %call5.i, %for.body16.i.err_sub_pools_init_crit_edge ], [ -5, %for.body.i.err_sub_pools_init_crit_edge ]
  %36 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %usage, align 8
  tail call void @bitmap_free(ptr noundef %37) #5
  br label %err_usage_alloc

err_usage_alloc:                                  ; preds = %err_sub_pools_init, %if.end10.err_usage_alloc_crit_edge
  %err.0 = phi i32 [ %retval.0.i51, %err_sub_pools_init ], [ -12, %if.end10.err_usage_alloc_crit_edge ]
  tail call void @devlink_resource_occ_get_unregister(ptr noundef %call, i64 noundef 10) #5
  br label %err_pool_resource_size_get

err_pool_resource_size_get:                       ; preds = %err_usage_alloc, %if.end.err_pool_resource_size_get_crit_edge
  %err.1 = phi i32 [ %call7, %if.end.err_pool_resource_size_get_crit_edge ], [ %err.0, %err_usage_alloc ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %err_pool_resource_size_get, %if.end7.i.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_pool_resource_size_get ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ 0, %if.end7.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @priv_to_devlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_resource_size_get(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_resource_occ_get_register(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_sp_counter_pool_occ_get(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %active_entries_count = getelementptr inbounds %struct.mlxsw_sp_counter_pool, ptr %priv, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active_entries_count, i32 noundef 4) #5
  %0 = ptrtoint ptr %active_entries_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %active_entries_count, align 4
  %conv = sext i32 %1 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_resource_occ_get_unregister(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_counter_pool_fini(ptr nocapture noundef readonly %mlxsw_sp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %counter_pool = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 21
  %0 = ptrtoint ptr %counter_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %counter_pool, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %call = tail call ptr @priv_to_devlink(ptr noundef %3) #5
  %4 = ptrtoint ptr %counter_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %counter_pool, align 4
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core, align 4
  %call.i = tail call ptr @priv_to_devlink(ptr noundef %7) #5
  %sub_pools_count.i = getelementptr inbounds %struct.mlxsw_sp_counter_pool, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %sub_pools_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sub_pools_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp27.not.i = icmp eq i32 %9, 0
  br i1 %cmp27.not.i, label %entry.mlxsw_sp_counter_sub_pools_fini.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.mlxsw_sp_counter_sub_pools_fini.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_counter_sub_pools_fini.exit

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.028.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %active_entries_count.i = getelementptr %struct.mlxsw_sp_counter_pool, ptr %5, i32 0, i32 5, i32 %i.028.i, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active_entries_count.i, i32 noundef 4) #5
  %10 = ptrtoint ptr %active_entries_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %active_entries_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %do.end.i, !prof !24

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 107, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.body.i.if.end.i_crit_edge
  %resource_id.i = getelementptr %struct.mlxsw_sp_counter_pool, ptr %5, i32 0, i32 5, i32 %i.028.i, i32 4
  %12 = ptrtoint ptr %resource_id.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %resource_id.i, align 8
  tail call void @devlink_resource_occ_get_unregister(ptr noundef %call.i, i64 noundef %13) #5
  %inc.i = add nuw i32 %i.028.i, 1
  %14 = ptrtoint ptr %sub_pools_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sub_pools_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %15
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.mlxsw_sp_counter_sub_pools_fini.exit_crit_edge

if.end.i.mlxsw_sp_counter_sub_pools_fini.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_counter_sub_pools_fini.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

mlxsw_sp_counter_sub_pools_fini.exit:             ; preds = %if.end.i.mlxsw_sp_counter_sub_pools_fini.exit_crit_edge, %entry.mlxsw_sp_counter_sub_pools_fini.exit_crit_edge
  %usage = getelementptr inbounds %struct.mlxsw_sp_counter_pool, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %usage, align 8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %1, align 8
  %conv = trunc i64 %19 to i32
  %call1 = tail call i32 @_find_first_bit_be(ptr noundef %17, i32 noundef %conv) #5
  %conv2 = sext i32 %call1 to i64
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %conv2)
  %cmp.not = icmp eq i64 %21, %conv2
  br i1 %cmp.not, label %mlxsw_sp_counter_sub_pools_fini.exit.if.end_crit_edge, label %do.end, !prof !24

mlxsw_sp_counter_sub_pools_fini.exit.if.end_crit_edge: ; preds = %mlxsw_sp_counter_sub_pools_fini.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %mlxsw_sp_counter_sub_pools_fini.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 174, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %mlxsw_sp_counter_sub_pools_fini.exit.if.end_crit_edge
  %active_entries_count = getelementptr inbounds %struct.mlxsw_sp_counter_pool, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active_entries_count, i32 noundef 4) #5
  %22 = ptrtoint ptr %active_entries_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %active_entries_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool25.not = icmp eq i32 %23, 0
  br i1 %tobool25.not, label %if.end.if.end47_crit_edge, label %do.end41, !prof !24

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

do.end41:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 175, i32 noundef 9, ptr noundef null) #5
  br label %if.end47

if.end47:                                         ; preds = %do.end41, %if.end.if.end47_crit_edge
  %24 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %usage, align 8
  tail call void @bitmap_free(ptr noundef %25) #5
  tail call void @devlink_resource_occ_get_unregister(ptr noundef %call, i64 noundef 10) #5
  tail call void @kfree(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_counter_alloc(ptr nocapture noundef readonly %mlxsw_sp, i32 noundef %sub_pool_id, ptr nocapture noundef writeonly %p_counter_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %counter_pool = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 21
  %0 = ptrtoint ptr %counter_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %counter_pool, align 4
  %arrayidx = getelementptr %struct.mlxsw_sp_counter_pool, ptr %1, i32 0, i32 5, i32 %sub_pool_id
  %base_index = getelementptr %struct.mlxsw_sp_counter_pool, ptr %1, i32 0, i32 5, i32 %sub_pool_id, i32 1
  %2 = ptrtoint ptr %base_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_index, align 8
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx, align 8
  %6 = trunc i64 %5 to i32
  %conv1 = add i32 %3, %6
  %counter_pool_lock = getelementptr inbounds %struct.mlxsw_sp_counter_pool, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %counter_pool_lock) #5
  %usage = getelementptr inbounds %struct.mlxsw_sp_counter_pool, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %usage, align 8
  %call = tail call i32 @_find_next_zero_bit_be(ptr noundef %8, i32 noundef %conv1, i32 noundef %3) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv1)
  %cmp = icmp eq i32 %call, %conv1
  br i1 %cmp, label %entry.err_alloc_crit_edge, label %if.end

entry.err_alloc_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_alloc

if.end:                                           ; preds = %entry
  %entry_size = getelementptr %struct.mlxsw_sp_counter_pool, ptr %1, i32 0, i32 5, i32 %sub_pool_id, i32 5
  %9 = ptrtoint ptr %entry_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %entry_size, align 8
  %add4 = add i32 %10, %call
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %conv1)
  %cmp5 = icmp ugt i32 %add4, %conv1
  br i1 %cmp5, label %if.end.err_alloc_crit_edge, label %for.cond.preheader

if.end.err_alloc_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_alloc

for.cond.preheader:                               ; preds = %if.end
  %11 = ptrtoint ptr %entry_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %entry_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1046.not = icmp eq i32 %12, 0
  br i1 %cmp1046.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.047 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add12 = add i32 %i.047, %call
  %13 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %usage, align 8
  %rem.i = and i32 %add12, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %add12, 5
  %add.ptr.i = getelementptr i32, ptr %14, i32 %div2.i
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %16, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  %inc = add nuw i32 %i.047, 1
  %17 = ptrtoint ptr %entry_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %entry_size, align 8
  %cmp10 = icmp ult i32 %inc, %18
  br i1 %cmp10, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %counter_pool_lock) #5
  %19 = ptrtoint ptr %p_counter_index to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call, ptr %p_counter_index, align 4
  %20 = ptrtoint ptr %entry_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %entry_size, align 8
  %active_entries_count = getelementptr %struct.mlxsw_sp_counter_pool, ptr %1, i32 0, i32 5, i32 %sub_pool_id, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_entries_count, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %active_entries_count, i32 1, i32 3, i32 1) #5
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_entries_count, ptr %active_entries_count, i32 %21, ptr elementtype(i32) %active_entries_count) #5, !srcloc !25
  %23 = ptrtoint ptr %entry_size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %entry_size, align 8
  %active_entries_count17 = getelementptr inbounds %struct.mlxsw_sp_counter_pool, ptr %1, i32 0, i32 3
  %call.i.i45 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_entries_count17, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %active_entries_count17, i32 1, i32 3, i32 1) #5
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_entries_count17, ptr %active_entries_count17, i32 %24, ptr elementtype(i32) %active_entries_count17) #5, !srcloc !25
  br label %cleanup

err_alloc:                                        ; preds = %if.end.err_alloc_crit_edge, %entry.err_alloc_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %counter_pool_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %err_alloc, %for.end
  %retval.0 = phi i32 [ -105, %err_alloc ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_counter_free(ptr nocapture noundef readonly %mlxsw_sp, i32 noundef %sub_pool_id, i32 noundef %counter_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %counter_pool = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 21
  %0 = ptrtoint ptr %counter_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %counter_pool, align 4
  %conv = zext i32 %counter_index to i64
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %conv)
  %cmp.not = icmp ugt i64 %3, %conv
  br i1 %cmp.not, label %if.end22, label %do.end, !prof !24

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 231, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end22:                                         ; preds = %entry
  %counter_pool_lock = getelementptr inbounds %struct.mlxsw_sp_counter_pool, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %counter_pool_lock) #5
  %entry_size = getelementptr %struct.mlxsw_sp_counter_pool, ptr %1, i32 0, i32 5, i32 %sub_pool_id, i32 5
  %4 = ptrtoint ptr %entry_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %entry_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2344.not = icmp eq i32 %5, 0
  br i1 %cmp2344.not, label %if.end22.for.end_crit_edge, label %for.body.lr.ph

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end22
  %usage = getelementptr inbounds %struct.mlxsw_sp_counter_pool, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add = add i32 %i.045, %counter_index
  %6 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %usage, align 8
  %rem.i = and i32 %add, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %add, 5
  %add.ptr.i = getelementptr i32, ptr %7, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %9, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  %inc = add nuw i32 %i.045, 1
  %10 = ptrtoint ptr %entry_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %entry_size, align 8
  %cmp23 = icmp ult i32 %inc, %11
  br i1 %cmp23, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end22.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %counter_pool_lock) #5
  %12 = ptrtoint ptr %entry_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %entry_size, align 8
  %active_entries_count = getelementptr %struct.mlxsw_sp_counter_pool, ptr %1, i32 0, i32 5, i32 %sub_pool_id, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_entries_count, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %active_entries_count, i32 1, i32 3, i32 1) #5
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_entries_count, ptr %active_entries_count, i32 %13, ptr elementtype(i32) %active_entries_count) #5, !srcloc !26
  %15 = ptrtoint ptr %entry_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %entry_size, align 8
  %active_entries_count28 = getelementptr inbounds %struct.mlxsw_sp_counter_pool, ptr %1, i32 0, i32 3
  %call.i.i43 = tail call zeroext i1 @__kasan_check_write(ptr noundef %active_entries_count28, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %active_entries_count28, i32 1, i32 3, i32 1) #5
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %active_entries_count28, ptr %active_entries_count28, i32 %16, ptr elementtype(i32) %active_entries_count28) #5, !srcloc !26
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_counter_resources_register(ptr noundef %mlxsw_core) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @priv_to_devlink(ptr noundef %mlxsw_core) #5
  %call1 = tail call zeroext i1 @mlxsw_core_res_valid(ptr noundef %mlxsw_core, i32 noundef 9) #5
  br i1 %call1, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call2 = tail call zeroext i1 @mlxsw_core_res_valid(ptr noundef %mlxsw_core, i32 noundef 10) #5
  br i1 %call2, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call3 = tail call i64 @mlxsw_core_res_get(ptr noundef %mlxsw_core, i32 noundef 9) #5
  %call4 = tail call i64 @mlxsw_core_res_get(ptr noundef %mlxsw_core, i32 noundef 10) #5
  store i64 %call3, ptr @mlxsw_sp_counter_resources_register.size_params, align 8
  store i64 %call3, ptr getelementptr inbounds (%struct.devlink_resource_size_params, ptr @mlxsw_sp_counter_resources_register.size_params, i32 0, i32 1), align 8
  store i64 %call4, ptr getelementptr inbounds (%struct.devlink_resource_size_params, ptr @mlxsw_sp_counter_resources_register.size_params, i32 0, i32 2), align 8
  store i32 0, ptr getelementptr inbounds (%struct.devlink_resource_size_params, ptr @mlxsw_sp_counter_resources_register.size_params, i32 0, i32 3), align 8
  %call5 = tail call i32 @devlink_resource_register(ptr noundef %call, ptr noundef nonnull @.str.2, i64 noundef %call3, i64 noundef 10, i64 noundef 0, ptr noundef nonnull @mlxsw_sp_counter_resources_register.size_params) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %for.body.preheader, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %mul = mul i64 %call4, 6
  %0 = call i64 @llvm.umin.i64(i64 %mul, i64 %call3)
  store i64 %0, ptr @mlxsw_sp_counter_resources_register.size_params, align 8
  store i64 %0, ptr getelementptr inbounds (%struct.devlink_resource_size_params, ptr @mlxsw_sp_counter_resources_register.size_params, i32 0, i32 1), align 8
  store i64 %call4, ptr getelementptr inbounds (%struct.devlink_resource_size_params, ptr @mlxsw_sp_counter_resources_register.size_params, i32 0, i32 2), align 8
  store i32 0, ptr getelementptr inbounds (%struct.devlink_resource_size_params, ptr @mlxsw_sp_counter_resources_register.size_params, i32 0, i32 3), align 8
  %call13 = tail call i32 @devlink_resource_register(ptr noundef %call, ptr noundef nonnull @.str.3, i64 noundef %0, i64 noundef 11, i64 noundef 10, ptr noundef nonnull @mlxsw_sp_counter_resources_register.size_params) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %for.body.preheader
  %mul.1 = shl i64 %call4, 1
  %add.1 = add i64 %mul.1, %0
  call void @__sanitizer_cov_trace_cmp8(i64 %add.1, i64 %call3)
  %cmp8.1 = icmp ugt i64 %add.1, %call3
  %sub.1 = sub i64 %call3, %0
  %spec.select.1 = select i1 %cmp8.1, i64 %sub.1, i64 %mul.1
  store i64 %spec.select.1, ptr @mlxsw_sp_counter_resources_register.size_params, align 8
  store i64 %spec.select.1, ptr getelementptr inbounds (%struct.devlink_resource_size_params, ptr @mlxsw_sp_counter_resources_register.size_params, i32 0, i32 1), align 8
  store i64 %call4, ptr getelementptr inbounds (%struct.devlink_resource_size_params, ptr @mlxsw_sp_counter_resources_register.size_params, i32 0, i32 2), align 8
  store i32 0, ptr getelementptr inbounds (%struct.devlink_resource_size_params, ptr @mlxsw_sp_counter_resources_register.size_params, i32 0, i32 3), align 8
  %call13.1 = tail call i32 @devlink_resource_register(ptr noundef %call, ptr noundef nonnull @.str.4, i64 noundef %spec.select.1, i64 noundef 12, i64 noundef 10, ptr noundef nonnull @mlxsw_sp_counter_resources_register.size_params) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.1)
  %tobool14.not.1 = icmp eq i32 %call13.1, 0
  br i1 %tobool14.not.1, label %if.end16.1, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16.1:                                       ; preds = %if.end16
  %call20 = tail call i64 @div64_u64(i64 noundef %call3, i64 noundef %call4) #5
  %add21 = add i64 %call20, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 8, i64 %add21)
  %cmp22 = icmp ult i64 %add21, 8
  br i1 %cmp22, label %do.end, label %if.end16.1.cleanup_crit_edge, !prof !27

if.end16.1.cleanup_crit_edge:                     ; preds = %if.end16.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end16.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 302, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end16.1.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %lor.lhs.false.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ -22, %do.end ], [ 0, %if.end16.1.cleanup_crit_edge ], [ %call13, %for.body.preheader.cleanup_crit_edge ], [ %call13.1, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_core_res_valid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlxsw_core_res_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_resource_register(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @mlxsw_sp_counter_sub_pool_occ_get(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %active_entries_count = getelementptr inbounds %struct.mlxsw_sp_counter_sub_pool, ptr %priv, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %active_entries_count, i32 noundef 4) #5
  %0 = ptrtoint ptr %active_entries_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %active_entries_count, align 4
  %conv = sext i32 %1 to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @mlxsw_sp_counter_pool_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_cnt.c", i32 135, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_cnt.c", i32 173, i32 2}
!5 = !{ptr @mlxsw_sp_counter_resources_register.size_params, !6, !"size_params", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_cnt.c", i32 244, i32 45}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_cnt.c", i32 266, i32 6}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_cnt.c", i32 33, i32 20}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_cnt.c", i32 39, i32 20}
!13 = !{ptr @mlxsw_sp_counter_sub_pools, !14, !"mlxsw_sp_counter_sub_pools", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_cnt.c", i32 30, i32 47}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{i64 2148216820, i64 2148216846, i64 2148216875, i64 2148216909, i64 2148216940, i64 2148216963}
!26 = !{i64 2148219285, i64 2148219311, i64 2148219340, i64 2148219374, i64 2148219405, i64 2148219428}
!27 = !{!"branch_weights", i32 1, i32 2000}
