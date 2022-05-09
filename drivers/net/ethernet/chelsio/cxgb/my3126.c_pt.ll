; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb/my3126.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb/my3126.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gphy = type { ptr, ptr }
%struct.cphy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cphy = type { i32, ptr, %struct.delayed_work, i16, i32, i32, i32, i32, ptr, %struct.mdio_if_info, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.mdio_ops = type { ptr, ptr, ptr, i32 }
%struct.adapter = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.adapter_params, ptr, ptr, ptr, %struct.napi_struct, [4 x %struct.port_info], %struct.delayed_work, %struct.timer_list, %struct.spinlock, %struct.spinlock, %struct.spinlock, [80 x i8], %struct.spinlock, i32, i32, i32, [72 x i8] }
%struct.adapter_params = type { %struct.sge_params, %struct.mc5_params, %struct.tp_params, %struct.chelsio_pci_params, ptr, [8 x i16], i32, i32, i16, i8, i8, i8 }
%struct.sge_params = type { [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32 }
%struct.mc5_params = type { i32, i32, i32 }
%struct.tp_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.chelsio_pci_params = type { i16, i8, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.port_info = type { ptr, ptr, ptr, %struct.link_config }
%struct.link_config = type { i32, i32, i16, i16, i8, i8, i8, i8, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }

@t1_my3126_ops = dso_local constant { %struct.gphy, [24 x i8] } { %struct.gphy { ptr @my3126_phy_create, ptr @my3126_phy_reset }, [24 x i8] zeroinitializer }, align 32
@my3126_ops = internal constant { %struct.cphy_ops, [40 x i8] } { %struct.cphy_ops { ptr @my3126_destroy, ptr @my3126_reset, ptr @my3126_interrupt_enable, ptr @my3126_interrupt_disable, ptr @my3126_interrupt_clear, ptr @my3126_interrupt_handler, ptr null, ptr null, ptr null, ptr null, ptr @my3126_set_loopback, ptr null, ptr @my3126_get_link_status, i32 26 }, [40 x i8] zeroinitializer }, align 32
@my3126_phy_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&cphy->phy_update)->work)\00", [50 x i8] zeroinitializer }, align 32
@my3126_phy_create.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&cphy->phy_update)->timer\00", [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.6 = private unnamed_addr constant [14 x i8] c"t1_my3126_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 207, i32 19 }
@___asan_gen_.9 = private unnamed_addr constant [11 x i8] c"my3126_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 158, i32 30 }
@___asan_gen_.18 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [46 x i8] c"../drivers/net/ethernet/chelsio/cxgb/my3126.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 180, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @t1_my3126_ops, ptr @my3126_ops, ptr @my3126_phy_create.__key, ptr @.str, ptr @my3126_phy_create.__key.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t1_my3126_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @my3126_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @my3126_phy_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @my3126_phy_create.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @my3126_phy_create(ptr noundef %dev, i32 noundef %phy_addr, ptr noundef readonly %mdio_ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 160) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 2304
  %adapter1.i = getelementptr inbounds %struct.cphy, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %adapter1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %add.ptr.i.i, ptr %adapter1.i, align 4
  %ops.i = getelementptr inbounds %struct.cphy, ptr %call7.i.i, i32 0, i32 8
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @my3126_ops, ptr %ops.i, align 8
  %tobool.not.i = icmp eq ptr %mdio_ops, null
  br i1 %tobool.not.i, label %if.end.cphy_init.exit_crit_edge, label %if.then.i

if.end.cphy_init.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cphy_init.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %call7.i.i, i32 0, i32 9
  %3 = ptrtoint ptr %mdio.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %phy_addr, ptr %mdio.i, align 4
  %mmds3.i = getelementptr inbounds %struct.cphy, ptr %call7.i.i, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %mmds3.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 26, ptr %mmds3.i, align 8
  %mode_support.i = getelementptr inbounds %struct.mdio_ops, ptr %mdio_ops, i32 0, i32 3
  %5 = ptrtoint ptr %mode_support.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode_support.i, align 4
  %mode_support5.i = getelementptr inbounds %struct.cphy, ptr %call7.i.i, i32 0, i32 9, i32 2
  %7 = ptrtoint ptr %mode_support5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %mode_support5.i, align 4
  %read.i = getelementptr inbounds %struct.mdio_ops, ptr %mdio_ops, i32 0, i32 1
  %8 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read.i, align 4
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %call7.i.i, i32 0, i32 9, i32 4
  %10 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %mdio_read.i, align 4
  %write.i = getelementptr inbounds %struct.mdio_ops, ptr %mdio_ops, i32 0, i32 2
  %11 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write.i, align 4
  %mdio_write.i = getelementptr inbounds %struct.cphy, ptr %call7.i.i, i32 0, i32 9, i32 5
  %13 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %mdio_write.i, align 8
  br label %cphy_init.exit

cphy_init.exit:                                   ; preds = %if.then.i, %if.end.cphy_init.exit_crit_edge
  %dev9.i = getelementptr inbounds %struct.cphy, ptr %call7.i.i, i32 0, i32 9, i32 3
  %14 = ptrtoint ptr %dev9.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %dev9.i, align 8
  %phy_update = getelementptr inbounds %struct.cphy, ptr %call7.i.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %phy_update, i32 noundef 0) #6
  %15 = ptrtoint ptr %phy_update to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %phy_update, align 8
  %lockdep_map = getelementptr inbounds %struct.cphy, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @my3126_phy_create.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry8 = getelementptr inbounds %struct.cphy, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %16 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr inbounds %struct.cphy, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry8, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.cphy, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 2
  %18 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @my3126_poll, ptr %func, align 4
  %timer = getelementptr inbounds %struct.cphy, ptr %call7.i.i, i32 0, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @my3126_phy_create.__key.1) #6
  %bmsr = getelementptr inbounds %struct.cphy, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %bmsr to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %bmsr, align 4
  br label %cleanup

cleanup:                                          ; preds = %cphy_init.exit, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @my3126_phy_reset(ptr noundef %adapter) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !18
  %call = call i32 @t1_tpi_read(ptr noundef %adapter, i32 noundef 1048600, ptr noundef nonnull %val) #6
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %and = and i32 %2, -5
  store i32 %and, ptr %val, align 4
  %call1 = call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %and) #6
  call void @msleep(i32 noundef 100) #6
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %or = or i32 %4, 4
  %call2 = call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %or) #6
  call void @msleep(i32 noundef 1000) #6
  %call3 = call i32 @t1_tpi_read(ptr noundef %adapter, i32 noundef 1048600, ptr noundef nonnull %val) #6
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %or4 = or i32 %6, 32768
  store i32 %or4, ptr %val, align 4
  %call5 = call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %or4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 21474800) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @my3126_poll(ptr nocapture noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %call = tail call i32 @my3126_interrupt_handler(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @my3126_destroy(ptr noundef %cphy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %cphy) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @my3126_reset(ptr nocapture noundef readnone %cphy, i32 noundef %wait) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @my3126_interrupt_enable(ptr noundef %cphy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_update = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %phy_update, i32 noundef 3) #6
  %adapter = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 1
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 4
  %elmer_gpo = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 7
  %call1 = tail call i32 @t1_tpi_read(ptr noundef %2, i32 noundef 1048600, ptr noundef %elmer_gpo) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @my3126_interrupt_disable(ptr noundef %cphy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_update = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 2
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %phy_update) #6
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @my3126_interrupt_clear(ptr nocapture noundef readnone %cphy) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @my3126_interrupt_handler(ptr nocapture noundef %cphy) #0 align 64 {
entry:
  %val = alloca i32, align 4
  %act_count = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %act_count) #6
  %1 = ptrtoint ptr %act_count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %act_count, align 4, !annotation !18
  %adapter1 = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 1
  %2 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter1, align 4
  %count = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 4
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %5)
  %cmp = icmp eq i32 %5, 50
  br i1 %cmp, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then:                                          ; preds = %entry
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 4
  %6 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 3
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %7(ptr noundef %9, i32 noundef %11, i32 noundef 1, i16 noundef zeroext 1) #6
  %12 = tail call i32 @llvm.smax.i32(i32 %call.i, i32 -1) #6
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %val, align 4
  %conv = trunc i32 %12 to i16
  %bmsr = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 3
  %14 = ptrtoint ptr %bmsr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %bmsr, align 4
  %conv4 = xor i16 %15, %conv
  %16 = and i16 %conv4, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.not = icmp eq i16 %16, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @t1_link_changed(ptr noundef %3, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %17 = ptrtoint ptr %bmsr to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv, ptr %bmsr, align 4
  %18 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %count, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  %call10 = tail call i32 @t1_tpi_write(ptr noundef %3, i32 noundef 33792, i32 noundef 1) #6
  %call11 = call i32 @t1_tpi_read(ptr noundef %3, i32 noundef 33872, ptr noundef nonnull %act_count) #6
  %call12 = call i32 @t1_tpi_read(ptr noundef %3, i32 noundef 34384, ptr noundef nonnull %val) #6
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %21 = ptrtoint ptr %act_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %act_count, align 4
  %add = add i32 %22, %20
  store i32 %add, ptr %act_count, align 4
  %call13 = call i32 @t1_tpi_read(ptr noundef %3, i32 noundef 1048600, ptr noundef nonnull %val) #6
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  %elmer_gpo = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 7
  %25 = ptrtoint ptr %elmer_gpo to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %elmer_gpo, align 4
  %26 = and i32 %24, 524544
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %lor.lhs.false18, label %if.end9.if.then24_crit_edge

if.end9.if.then24_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24

lor.lhs.false18:                                  ; preds = %if.end9
  %act_count19 = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 5
  %28 = ptrtoint ptr %act_count19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %act_count19, align 4
  %30 = ptrtoint ptr %act_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %act_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp20 = icmp eq i32 %29, %31
  br i1 %cmp20, label %lor.lhs.false18.if.then24_crit_edge, label %lor.lhs.false22

lor.lhs.false18.if.then24_crit_edge:              ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24

lor.lhs.false22:                                  ; preds = %lor.lhs.false18
  %act_on = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 6
  %32 = ptrtoint ptr %act_on to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %act_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool23.not = icmp eq i32 %33, 0
  br i1 %tobool23.not, label %if.else35, label %lor.lhs.false22.if.then24_crit_edge

lor.lhs.false22.if.then24_crit_edge:              ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24

if.then24:                                        ; preds = %lor.lhs.false22.if.then24_crit_edge, %lor.lhs.false18.if.then24_crit_edge, %if.end9.if.then24_crit_edge
  %chip_version.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 8, i32 9
  %34 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %chip_version.i, align 2
  %36 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i8 %35, label %if.then24.if.end33_crit_edge [
    i8 2, label %adapter_matches_type.exit
    i8 1, label %adapter_matches_type.exit84
  ]

if.then24.if.end33_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

adapter_matches_type.exit:                        ; preds = %if.then24
  %chip_revision.i = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 8, i32 8
  %37 = ptrtoint ptr %chip_revision.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %chip_revision.i, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %38)
  %cmp4.i.not = icmp eq i16 %38, 3
  br i1 %cmp4.i.not, label %if.then27, label %adapter_matches_type.exit.if.end33_crit_edge

adapter_matches_type.exit.if.end33_crit_edge:     ; preds = %adapter_matches_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then27:                                        ; preds = %adapter_matches_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %24, 512
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %or, ptr %val, align 4
  br label %if.end33

adapter_matches_type.exit84:                      ; preds = %if.then24
  %chip_revision.i79 = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 8, i32 8
  %40 = ptrtoint ptr %chip_revision.i79 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %chip_revision.i79, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %41)
  %cmp4.i81.not = icmp eq i16 %41, 1
  br i1 %cmp4.i81.not, label %if.then30, label %adapter_matches_type.exit84.if.end33_crit_edge

adapter_matches_type.exit84.if.end33_crit_edge:   ; preds = %adapter_matches_type.exit84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then30:                                        ; preds = %adapter_matches_type.exit84
  call void @__sanitizer_cov_trace_pc() #8
  %or31 = or i32 %24, 1048576
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or31, ptr %val, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %adapter_matches_type.exit84.if.end33_crit_edge, %if.then27, %adapter_matches_type.exit.if.end33_crit_edge, %if.then24.if.end33_crit_edge
  %act_on34 = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 6
  %43 = ptrtoint ptr %act_on34 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %act_on34, align 4
  br label %if.end48

if.else35:                                        ; preds = %lor.lhs.false22
  %chip_version.i85 = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 8, i32 9
  %44 = ptrtoint ptr %chip_version.i85 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %chip_version.i85, align 2
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %45, label %if.else35.if.end46_crit_edge [
    i8 2, label %adapter_matches_type.exit93
    i8 1, label %adapter_matches_type.exit102
  ]

if.else35.if.end46_crit_edge:                     ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

adapter_matches_type.exit93:                      ; preds = %if.else35
  %chip_revision.i88 = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 8, i32 8
  %47 = ptrtoint ptr %chip_revision.i88 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %chip_revision.i88, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %48)
  %cmp4.i90.not = icmp eq i16 %48, 3
  br i1 %cmp4.i90.not, label %if.then38, label %adapter_matches_type.exit93.if.end46_crit_edge

adapter_matches_type.exit93.if.end46_crit_edge:   ; preds = %adapter_matches_type.exit93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then38:                                        ; preds = %adapter_matches_type.exit93
  call void @__sanitizer_cov_trace_pc() #8
  %and39 = and i32 %24, -513
  %49 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and39, ptr %val, align 4
  br label %if.end46

adapter_matches_type.exit102:                     ; preds = %if.else35
  %chip_revision.i97 = getelementptr inbounds %struct.adapter, ptr %3, i32 0, i32 8, i32 8
  %50 = ptrtoint ptr %chip_revision.i97 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %chip_revision.i97, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %51)
  %cmp4.i99.not = icmp eq i16 %51, 1
  br i1 %cmp4.i99.not, label %if.then43, label %adapter_matches_type.exit102.if.end46_crit_edge

adapter_matches_type.exit102.if.end46_crit_edge:  ; preds = %adapter_matches_type.exit102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then43:                                        ; preds = %adapter_matches_type.exit102
  call void @__sanitizer_cov_trace_pc() #8
  %and44 = and i32 %24, -1048577
  %52 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %and44, ptr %val, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %adapter_matches_type.exit102.if.end46_crit_edge, %if.then38, %adapter_matches_type.exit93.if.end46_crit_edge, %if.else35.if.end46_crit_edge
  %53 = ptrtoint ptr %act_on to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %act_on, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end46, %if.end33
  %54 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val, align 4
  %call49 = call i32 @t1_tpi_write(ptr noundef %3, i32 noundef 1048600, i32 noundef %55) #6
  %56 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val, align 4
  %58 = ptrtoint ptr %elmer_gpo to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %elmer_gpo, align 4
  %59 = ptrtoint ptr %act_count to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %act_count, align 4
  %act_count51 = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 5
  %61 = ptrtoint ptr %act_count51 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %act_count51, align 4
  %62 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %count, align 4
  %inc = add i32 %63, 1
  store i32 %inc, ptr %count, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %act_count) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @my3126_set_loopback(ptr nocapture noundef readnone %cphy, i32 noundef %on) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @my3126_get_link_status(ptr nocapture noundef %cphy, ptr nocapture noundef writeonly %link_ok, ptr nocapture noundef writeonly %speed, ptr nocapture noundef writeonly %duplex, ptr noundef writeonly %fc) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %adapter1 = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 1
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 4
  %2 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %6 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %3(ptr noundef %5, i32 noundef %7, i32 noundef 1, i16 noundef zeroext 1) #6
  %8 = tail call i32 @llvm.smax.i32(i32 %call.i, i32 -1) #6
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %val, align 4
  %call2 = call i32 @t1_tpi_read(ptr noundef %1, i32 noundef 1048600, ptr noundef nonnull %val) #6
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %elmer_gpo = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 7
  %12 = ptrtoint ptr %elmer_gpo to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %elmer_gpo, align 4
  %and = and i32 %8, 4
  %13 = ptrtoint ptr %link_ok to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and, ptr %link_ok, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %chip_version.i49 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 9
  %14 = ptrtoint ptr %chip_version.i49 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %chip_version.i49, align 2
  br i1 %tobool.not, label %if.else13, label %if.then

if.then:                                          ; preds = %entry
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %15, label %if.then.if.end24_crit_edge [
    i8 2, label %adapter_matches_type.exit
    i8 1, label %adapter_matches_type.exit48
  ]

if.then.if.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

adapter_matches_type.exit:                        ; preds = %if.then
  %chip_revision.i = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 8
  %17 = ptrtoint ptr %chip_revision.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %chip_revision.i, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %18)
  %cmp4.i.not = icmp eq i16 %18, 3
  br i1 %cmp4.i.not, label %if.then6, label %adapter_matches_type.exit.if.end24_crit_edge

adapter_matches_type.exit.if.end24_crit_edge:     ; preds = %adapter_matches_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then6:                                         ; preds = %adapter_matches_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  %and7 = and i32 %11, -257
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and7, ptr %val, align 4
  br label %if.end24

adapter_matches_type.exit48:                      ; preds = %if.then
  %chip_revision.i43 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 8
  %20 = ptrtoint ptr %chip_revision.i43 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %chip_revision.i43, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %21)
  %cmp4.i45.not = icmp eq i16 %21, 1
  br i1 %cmp4.i45.not, label %if.then10, label %adapter_matches_type.exit48.if.end24_crit_edge

adapter_matches_type.exit48.if.end24_crit_edge:   ; preds = %adapter_matches_type.exit48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then10:                                        ; preds = %adapter_matches_type.exit48
  call void @__sanitizer_cov_trace_pc() #8
  %and11 = and i32 %11, -524289
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and11, ptr %val, align 4
  br label %if.end24

if.else13:                                        ; preds = %entry
  %23 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %15, label %if.else13.if.end24_crit_edge [
    i8 2, label %adapter_matches_type.exit57
    i8 1, label %adapter_matches_type.exit66
  ]

if.else13.if.end24_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

adapter_matches_type.exit57:                      ; preds = %if.else13
  %chip_revision.i52 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 8
  %24 = ptrtoint ptr %chip_revision.i52 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %chip_revision.i52, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %25)
  %cmp4.i54.not = icmp eq i16 %25, 3
  br i1 %cmp4.i54.not, label %if.then16, label %adapter_matches_type.exit57.if.end24_crit_edge

adapter_matches_type.exit57.if.end24_crit_edge:   ; preds = %adapter_matches_type.exit57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then16:                                        ; preds = %adapter_matches_type.exit57
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %11, 256
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or, ptr %val, align 4
  br label %if.end24

adapter_matches_type.exit66:                      ; preds = %if.else13
  %chip_revision.i61 = getelementptr inbounds %struct.adapter, ptr %1, i32 0, i32 8, i32 8
  %27 = ptrtoint ptr %chip_revision.i61 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %chip_revision.i61, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %28)
  %cmp4.i63.not = icmp eq i16 %28, 1
  br i1 %cmp4.i63.not, label %if.then20, label %adapter_matches_type.exit66.if.end24_crit_edge

adapter_matches_type.exit66.if.end24_crit_edge:   ; preds = %adapter_matches_type.exit66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then20:                                        ; preds = %adapter_matches_type.exit66
  call void @__sanitizer_cov_trace_pc() #8
  %or21 = or i32 %11, 524288
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or21, ptr %val, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %adapter_matches_type.exit66.if.end24_crit_edge, %if.then16, %adapter_matches_type.exit57.if.end24_crit_edge, %if.else13.if.end24_crit_edge, %if.then10, %adapter_matches_type.exit48.if.end24_crit_edge, %if.then6, %adapter_matches_type.exit.if.end24_crit_edge, %if.then.if.end24_crit_edge
  %30 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val, align 4
  %call25 = call i32 @t1_tpi_write(ptr noundef %1, i32 noundef 1048600, i32 noundef %31) #6
  %32 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val, align 4
  %34 = ptrtoint ptr %elmer_gpo to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %elmer_gpo, align 4
  %35 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 10000, ptr %speed, align 4
  %36 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %duplex, align 4
  %tobool27.not = icmp eq ptr %fc, null
  br i1 %tobool27.not, label %if.end24.if.end29_crit_edge, label %if.then28

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 3, ptr %fc, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end24.if.end29_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t1_tpi_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @t1_link_changed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t1_tpi_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @t1_my3126_ops, !1, !"t1_my3126_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb/my3126.c", i32 207, i32 19}
!2 = !{ptr @my3126_phy_create.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/chelsio/cxgb/my3126.c", i32 180, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @my3126_phy_create.__key.1, !3, !"__key", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @my3126_ops, !8, !"my3126_ops", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/chelsio/cxgb/my3126.c", i32 158, i32 30}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{!"auto-init"}
