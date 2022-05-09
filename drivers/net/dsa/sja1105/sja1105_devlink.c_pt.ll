; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/sja1105/sja1105_devlink.c_pt.bc'
source_filename = "../drivers/net/dsa/sja1105/sja1105_devlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.devlink_region_ops = type { ptr, ptr, ptr, ptr }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.sja1105_private = type { %struct.sja1105_static_config, [11 x i32], [11 x i32], [11 x i32], [11 x i8], i32, i32, i32, ptr, i32, ptr, ptr, [11 x i16], [11 x i16], %struct.sja1105_flow_block, %struct.mutex, %struct.spinlock, i8, %struct.mutex, ptr, ptr, ptr, ptr, ptr, [11 x ptr], %struct.sja1105_ptp_data, %struct.sja1105_tas_data }
%struct.sja1105_static_config = type { i64, [21 x %struct.sja1105_table] }
%struct.sja1105_table = type { ptr, i32, ptr }
%struct.sja1105_flow_block = type { %struct.list_head, [110 x i8], i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sja1105_ptp_data = type { %struct.timer_list, %struct.sk_buff_head, %struct.sk_buff_head, %struct.ptp_clock_info, ptr, %struct.sja1105_ptp_cmd, %struct.mutex, i8, i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sja1105_ptp_cmd = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.sja1105_tas_data = type { [11 x ptr], %struct.sja1105_gating_config, i32, i32, %struct.work_struct, i64, i64, i64, i8 }
%struct.sja1105_gating_config = type { i64, i64, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sja1105_info = type { i64, i64, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i32], [5 x i64] }
%struct.sja1105_table_ops = type { ptr, i32, i32, i32 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sja1105\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"asic.id\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sja1105_region_static_config_ops = internal global { %struct.devlink_region_ops, [16 x i8] } { %struct.devlink_region_ops { ptr @.str.2, ptr @kfree, ptr @sja1105_region_static_config_snapshot, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"static-config\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 125, i32 41 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 130, i32 10 }
@___asan_gen_.9 = private unnamed_addr constant [33 x i8] c"sja1105_region_static_config_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 55, i32 34 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [45 x i8] c"../drivers/net/dsa/sja1105/sja1105_devlink.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 56, i32 10 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @sja1105_region_static_config_ops, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_region_static_config_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_devlink_info_get(ptr nocapture noundef readonly %ds, ptr noundef %req, ptr nocapture noundef readnone %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %call = tail call i32 @devlink_info_driver_name_put(ptr noundef %req, ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %info = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %name = getelementptr inbounds %struct.sja1105_info, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 8
  %call2 = tail call i32 @devlink_info_version_fixed_put(ptr noundef %req, ptr noundef nonnull @.str.1, ptr noundef %5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_info_driver_name_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_info_version_fixed_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_devlink_setup(ptr noundef %ds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4) #8
  %regions.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 19
  %3 = ptrtoint ptr %regions.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i.i.i, ptr %regions.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %entry.sja1105_setup_devlink_regions.exit_crit_edge, label %for.body.i

entry.sja1105_setup_devlink_regions.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sja1105_setup_devlink_regions.exit

for.body.i:                                       ; preds = %entry
  %call3.i = tail call fastcc i32 @sja1105_static_config_get_max_size(ptr noundef %1) #5
  %conv.i = zext i32 %call3.i to i64
  %call6.i = tail call ptr @dsa_devlink_region_create(ptr noundef %ds, ptr noundef nonnull @sja1105_region_static_config_ops, i32 noundef 1, i64 noundef %conv.i) #5
  %cmp.i.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  %4 = ptrtoint ptr %regions.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regions.i, align 4
  br i1 %cmp.i.i, label %while.body.preheader.i, label %if.end14.i

while.body.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx12.i = getelementptr ptr, ptr %5, i32 -1
  %6 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx12.i, align 4
  tail call void @dsa_devlink_region_destroy(ptr noundef %7) #5
  %8 = ptrtoint ptr %call6.i to i32
  br label %sja1105_setup_devlink_regions.exit

if.end14.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call6.i, ptr %5, align 4
  br label %sja1105_setup_devlink_regions.exit

sja1105_setup_devlink_regions.exit:               ; preds = %if.end14.i, %while.body.preheader.i, %entry.sja1105_setup_devlink_regions.exit_crit_edge
  %retval.0.i = phi i32 [ %8, %while.body.preheader.i ], [ 0, %if.end14.i ], [ -12, %entry.sja1105_setup_devlink_regions.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sja1105_devlink_teardown(ptr nocapture noundef readonly %ds) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1.i = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1.i, align 4
  %regions.i = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %regions.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regions.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  tail call void @dsa_devlink_region_destroy(ptr noundef %5) #5
  %6 = ptrtoint ptr %regions.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regions.i, align 4
  tail call void @kfree(ptr noundef %7) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dsa_devlink_region_create(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_devlink_region_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sja1105_static_config_get_max_size(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  %config = alloca %struct.sja1105_static_config, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %config) #5
  %0 = call ptr @memset(ptr %config, i32 255, i32 264)
  %info = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 8
  %1 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %info, align 4
  %static_ops = getelementptr inbounds %struct.sja1105_info, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %static_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %static_ops, align 8
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %2, align 8
  %call = call i32 @sja1105_static_config_init(ptr noundef nonnull %config, ptr noundef %4, i64 noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 8
  %max_entry_count = getelementptr inbounds %struct.sja1105_table_ops, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %max_entry_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_entry_count, align 4
  %entry_count = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %entry_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %entry_count, align 4
  %arrayidx.1 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  %max_entry_count.1 = getelementptr inbounds %struct.sja1105_table_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %max_entry_count.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_entry_count.1, align 4
  %entry_count.1 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 1, i32 1
  %16 = ptrtoint ptr %entry_count.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %entry_count.1, align 8
  %arrayidx.2 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.2, align 8
  %max_entry_count.2 = getelementptr inbounds %struct.sja1105_table_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %max_entry_count.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_entry_count.2, align 4
  %entry_count.2 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 2, i32 1
  %21 = ptrtoint ptr %entry_count.2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %entry_count.2, align 4
  %arrayidx.3 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 3
  %22 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.3, align 4
  %max_entry_count.3 = getelementptr inbounds %struct.sja1105_table_ops, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %max_entry_count.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_entry_count.3, align 4
  %entry_count.3 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 3, i32 1
  %26 = ptrtoint ptr %entry_count.3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %entry_count.3, align 8
  %arrayidx.4 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 4
  %27 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.4, align 8
  %max_entry_count.4 = getelementptr inbounds %struct.sja1105_table_ops, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %max_entry_count.4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_entry_count.4, align 4
  %entry_count.4 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 4, i32 1
  %31 = ptrtoint ptr %entry_count.4 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %entry_count.4, align 4
  %arrayidx.5 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 5
  %32 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.5, align 4
  %max_entry_count.5 = getelementptr inbounds %struct.sja1105_table_ops, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %max_entry_count.5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_entry_count.5, align 4
  %entry_count.5 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 5, i32 1
  %36 = ptrtoint ptr %entry_count.5 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %entry_count.5, align 8
  %arrayidx.6 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 6
  %37 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.6, align 8
  %max_entry_count.6 = getelementptr inbounds %struct.sja1105_table_ops, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %max_entry_count.6 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_entry_count.6, align 4
  %entry_count.6 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 6, i32 1
  %41 = ptrtoint ptr %entry_count.6 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %entry_count.6, align 4
  %arrayidx.7 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 7
  %42 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.7, align 4
  %max_entry_count.7 = getelementptr inbounds %struct.sja1105_table_ops, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %max_entry_count.7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_entry_count.7, align 4
  %entry_count.7 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 7, i32 1
  %46 = ptrtoint ptr %entry_count.7 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %entry_count.7, align 8
  %arrayidx.8 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 8
  %47 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.8, align 8
  %max_entry_count.8 = getelementptr inbounds %struct.sja1105_table_ops, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %max_entry_count.8 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %max_entry_count.8, align 4
  %entry_count.8 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 8, i32 1
  %51 = ptrtoint ptr %entry_count.8 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %entry_count.8, align 4
  %arrayidx.9 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 9
  %52 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.9, align 4
  %max_entry_count.9 = getelementptr inbounds %struct.sja1105_table_ops, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %max_entry_count.9 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_entry_count.9, align 4
  %entry_count.9 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 9, i32 1
  %56 = ptrtoint ptr %entry_count.9 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %entry_count.9, align 8
  %arrayidx.10 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 10
  %57 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.10, align 8
  %max_entry_count.10 = getelementptr inbounds %struct.sja1105_table_ops, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %max_entry_count.10 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max_entry_count.10, align 4
  %entry_count.10 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 10, i32 1
  %61 = ptrtoint ptr %entry_count.10 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %entry_count.10, align 4
  %arrayidx.11 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 11
  %62 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.11, align 4
  %max_entry_count.11 = getelementptr inbounds %struct.sja1105_table_ops, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %max_entry_count.11 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %max_entry_count.11, align 4
  %entry_count.11 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 11, i32 1
  %66 = ptrtoint ptr %entry_count.11 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %entry_count.11, align 8
  %arrayidx.12 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 12
  %67 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.12, align 8
  %max_entry_count.12 = getelementptr inbounds %struct.sja1105_table_ops, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %max_entry_count.12 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %max_entry_count.12, align 4
  %entry_count.12 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 12, i32 1
  %71 = ptrtoint ptr %entry_count.12 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %entry_count.12, align 4
  %arrayidx.13 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 13
  %72 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.13, align 4
  %max_entry_count.13 = getelementptr inbounds %struct.sja1105_table_ops, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %max_entry_count.13 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %max_entry_count.13, align 4
  %entry_count.13 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 13, i32 1
  %76 = ptrtoint ptr %entry_count.13 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %entry_count.13, align 8
  %arrayidx.14 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 14
  %77 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.14, align 8
  %max_entry_count.14 = getelementptr inbounds %struct.sja1105_table_ops, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %max_entry_count.14 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %max_entry_count.14, align 4
  %entry_count.14 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 14, i32 1
  %81 = ptrtoint ptr %entry_count.14 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %entry_count.14, align 4
  %arrayidx.15 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 15
  %82 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx.15, align 4
  %max_entry_count.15 = getelementptr inbounds %struct.sja1105_table_ops, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %max_entry_count.15 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %max_entry_count.15, align 4
  %entry_count.15 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 15, i32 1
  %86 = ptrtoint ptr %entry_count.15 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %entry_count.15, align 8
  %arrayidx.16 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 16
  %87 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.16, align 8
  %max_entry_count.16 = getelementptr inbounds %struct.sja1105_table_ops, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %max_entry_count.16 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %max_entry_count.16, align 4
  %entry_count.16 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 16, i32 1
  %91 = ptrtoint ptr %entry_count.16 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %entry_count.16, align 4
  %arrayidx.17 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 17
  %92 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.17, align 4
  %max_entry_count.17 = getelementptr inbounds %struct.sja1105_table_ops, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %max_entry_count.17 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %max_entry_count.17, align 4
  %entry_count.17 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 17, i32 1
  %96 = ptrtoint ptr %entry_count.17 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %entry_count.17, align 8
  %arrayidx.18 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 18
  %97 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx.18, align 8
  %max_entry_count.18 = getelementptr inbounds %struct.sja1105_table_ops, ptr %98, i32 0, i32 3
  %99 = ptrtoint ptr %max_entry_count.18 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %max_entry_count.18, align 4
  %entry_count.18 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 18, i32 1
  %101 = ptrtoint ptr %entry_count.18 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %entry_count.18, align 4
  %arrayidx.19 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 19
  %102 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx.19, align 4
  %max_entry_count.19 = getelementptr inbounds %struct.sja1105_table_ops, ptr %103, i32 0, i32 3
  %104 = ptrtoint ptr %max_entry_count.19 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %max_entry_count.19, align 4
  %entry_count.19 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 19, i32 1
  %106 = ptrtoint ptr %entry_count.19 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %entry_count.19, align 8
  %arrayidx.20 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 20
  %107 = ptrtoint ptr %arrayidx.20 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx.20, align 8
  %max_entry_count.20 = getelementptr inbounds %struct.sja1105_table_ops, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %max_entry_count.20 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %max_entry_count.20, align 4
  %entry_count.20 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 20, i32 1
  %111 = ptrtoint ptr %entry_count.20 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %entry_count.20, align 4
  %call2 = call i32 @sja1105_static_config_get_length(ptr noundef nonnull %config) #5
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %for.body.preheader ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %config) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_region_static_config_snapshot(ptr noundef %dl, ptr nocapture noundef readnone %ops, ptr nocapture noundef readnone %extack, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @devlink_priv(ptr noundef %dl) #5
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %call2 = tail call i32 @sja1105_static_config_get_length(ptr noundef %3) #5
  %call3 = tail call fastcc i32 @sja1105_static_config_get_max_size(ptr noundef %3)
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %call3, i32 noundef 3520) #9
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8.i.i, ptr %data, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 @static_config_buf_prepare_for_upload(ptr noundef %3, ptr noundef nonnull %call8.i.i, i32 noundef %call2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_static_config_get_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @static_config_buf_prepare_for_upload(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_static_config_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/sja1105/sja1105_devlink.c", i32 125, i32 41}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/dsa/sja1105/sja1105_devlink.c", i32 130, i32 10}
!4 = distinct !{null, !5, !"sja1105_regions", i1 false, i1 false}
!5 = !{!"../drivers/net/dsa/sja1105/sja1105_devlink.c", i32 70, i32 30}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/dsa/sja1105/sja1105_devlink.c", i32 56, i32 10}
!8 = !{ptr @sja1105_region_static_config_ops, !9, !"sja1105_region_static_config_ops", i1 false, i1 false}
!9 = !{!"../drivers/net/dsa/sja1105/sja1105_devlink.c", i32 55, i32 34}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
