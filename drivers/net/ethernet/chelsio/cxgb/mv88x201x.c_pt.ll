; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb/mv88x201x.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb/mv88x201x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gphy = type { ptr, ptr }
%struct.cphy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cphy = type { i32, ptr, %struct.delayed_work, i16, i32, i32, i32, i32, ptr, %struct.mdio_if_info, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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

@t1_mv88x201x_ops = dso_local constant { %struct.gphy, [24 x i8] } { %struct.gphy { ptr @mv88x201x_phy_create, ptr @mv88x201x_phy_reset }, [24 x i8] zeroinitializer }, align 32
@mv88x201x_ops = internal constant { %struct.cphy_ops, [40 x i8] } { %struct.cphy_ops { ptr @mv88x201x_destroy, ptr @mv88x201x_reset, ptr @mv88x201x_interrupt_enable, ptr @mv88x201x_interrupt_disable, ptr @mv88x201x_interrupt_clear, ptr @mv88x201x_interrupt_handler, ptr null, ptr null, ptr null, ptr null, ptr @mv88x201x_set_loopback, ptr null, ptr @mv88x201x_get_link_status, i32 30 }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"t1_mv88x201x_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 256, i32 19 }
@___asan_gen_.4 = private unnamed_addr constant [14 x i8] c"mv88x201x_ops\00", align 1
@___asan_gen_.5 = private constant [49 x i8] c"../drivers/net/ethernet/chelsio/cxgb/mv88x201x.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 198, i32 30 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @t1_mv88x201x_ops, ptr @mv88x201x_ops], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t1_mv88x201x_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88x201x_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mv88x201x_phy_create(ptr noundef %dev, i32 noundef %phy_addr, ptr noundef readonly %mdio_ops) #0 align 64 {
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
  store ptr @mv88x201x_ops, ptr %ops.i, align 8
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
  store i32 30, ptr %mmds3.i, align 8
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
  %mdio.i14 = getelementptr inbounds %struct.cphy, ptr %call7.i.i, i32 0, i32 9
  %mdio_read.i15 = getelementptr inbounds %struct.cphy, ptr %call7.i.i, i32 0, i32 9, i32 4
  %15 = ptrtoint ptr %mdio_read.i15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdio_read.i15, align 4
  %17 = ptrtoint ptr %mdio.i14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mdio.i14, align 4
  %call.i = tail call i32 %16(ptr noundef %dev, i32 noundef %18, i32 noundef 3, i16 noundef zeroext -32000) #6
  %19 = tail call i32 @llvm.smax.i32(i32 %call.i, i32 -1) #6
  %mdio_write.i17 = getelementptr inbounds %struct.cphy, ptr %call7.i.i, i32 0, i32 9, i32 5
  %20 = ptrtoint ptr %mdio_write.i17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mdio_write.i17, align 8
  %22 = trunc i32 %19 to i16
  %conv3.i = or i16 %22, 1
  %call.i19 = tail call i32 %21(ptr noundef %dev, i32 noundef %18, i32 noundef 3, i16 noundef zeroext -32000, i16 noundef zeroext %conv3.i) #6
  %call.i23 = tail call i32 %16(ptr noundef %dev, i32 noundef %18, i32 noundef 1, i16 noundef zeroext 8) #6
  %call.i27 = tail call i32 %16(ptr noundef %dev, i32 noundef %18, i32 noundef 3, i16 noundef zeroext 8) #6
  %call.i.i = tail call i32 %21(ptr noundef %dev, i32 noundef %18, i32 noundef 3, i16 noundef zeroext -31996, i16 noundef zeroext -8739) #6
  br label %cleanup

cleanup:                                          ; preds = %cphy_init.exit, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88x201x_phy_reset(ptr noundef %adapter) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !13
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv88x201x_destroy(ptr noundef %cphy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %cphy) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mv88x201x_reset(ptr nocapture noundef readnone %cphy, i32 noundef %wait) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88x201x_interrupt_enable(ptr nocapture noundef readonly %cphy) #0 align 64 {
entry:
  %elmer = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9
  %mdio_write.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 5
  %0 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext -28670, i16 noundef zeroext 1) #6
  %adapter = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 1
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 4
  %is_asic.i = getelementptr inbounds %struct.adapter, ptr %7, i32 0, i32 8, i32 10
  %8 = ptrtoint ptr %is_asic.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_asic.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elmer) #6
  %10 = ptrtoint ptr %elmer to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %elmer, align 4, !annotation !13
  %call3 = call i32 @t1_tpi_read(ptr noundef %7, i32 noundef 1048584, ptr noundef nonnull %elmer) #6
  %11 = ptrtoint ptr %elmer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %elmer, align 4
  %or = or i32 %12, 64
  store i32 %or, ptr %elmer, align 4
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 4
  %call5 = call i32 @t1_tpi_write(ptr noundef %14, i32 noundef 1048584, i32 noundef %or) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elmer) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88x201x_interrupt_disable(ptr nocapture noundef readonly %cphy) #0 align 64 {
entry:
  %elmer = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9
  %mdio_write.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 5
  %0 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext -28670, i16 noundef zeroext 0) #6
  %adapter = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 1
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 4
  %is_asic.i = getelementptr inbounds %struct.adapter, ptr %7, i32 0, i32 8, i32 10
  %8 = ptrtoint ptr %is_asic.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_asic.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elmer) #6
  %10 = ptrtoint ptr %elmer to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %elmer, align 4, !annotation !13
  %call3 = call i32 @t1_tpi_read(ptr noundef %7, i32 noundef 1048584, ptr noundef nonnull %elmer) #6
  %11 = ptrtoint ptr %elmer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %elmer, align 4
  %and = and i32 %12, -65
  store i32 %and, ptr %elmer, align 4
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 4
  %call5 = call i32 @t1_tpi_write(ptr noundef %14, i32 noundef 1048584, i32 noundef %and) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elmer) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88x201x_interrupt_clear(ptr noundef readonly %cphy) #0 align 64 {
entry:
  %elmer = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elmer) #6
  %0 = ptrtoint ptr %elmer to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %elmer, align 4, !annotation !13
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 4
  %1 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 3
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %2(ptr noundef %4, i32 noundef %6, i32 noundef 1, i16 noundef zeroext -28669) #6
  %7 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdio_read.i, align 4
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %11 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mdio.i, align 4
  %call.i26 = tail call i32 %8(ptr noundef %10, i32 noundef %12, i32 noundef 1, i16 noundef zeroext -28668) #6
  %13 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mdio_read.i, align 4
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %17 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mdio.i, align 4
  %call.i30 = tail call i32 %14(ptr noundef %16, i32 noundef %18, i32 noundef 1, i16 noundef zeroext -28667) #6
  %19 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mdio_read.i, align 4
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  %23 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mdio.i, align 4
  %call.i34 = tail call i32 %20(ptr noundef %22, i32 noundef %24, i32 noundef 1, i16 noundef zeroext 1) #6
  %25 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mdio_read.i, align 4
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  %29 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mdio.i, align 4
  %call.i38 = tail call i32 %26(ptr noundef %28, i32 noundef %30, i32 noundef 1, i16 noundef zeroext 1) #6
  %31 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mdio_read.i, align 4
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  %35 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mdio.i, align 4
  %call.i42 = tail call i32 %32(ptr noundef %34, i32 noundef %36, i32 noundef 1, i16 noundef zeroext -28667) #6
  %37 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mdio_read.i, align 4
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  %41 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mdio.i, align 4
  %call.i46 = tail call i32 %38(ptr noundef %40, i32 noundef %42, i32 noundef 1, i16 noundef zeroext -28669) #6
  %43 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mdio_read.i, align 4
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 4
  %47 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mdio.i, align 4
  %call.i50 = tail call i32 %44(ptr noundef %46, i32 noundef %48, i32 noundef 1, i16 noundef zeroext -28668) #6
  %adapter = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 1
  %49 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %adapter, align 4
  %is_asic.i = getelementptr inbounds %struct.adapter, ptr %50, i32 0, i32 8, i32 10
  %51 = ptrtoint ptr %is_asic.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %is_asic.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not = icmp eq i8 %52, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = call i32 @t1_tpi_read(ptr noundef %50, i32 noundef 1048588, ptr noundef nonnull %elmer) #6
  %53 = ptrtoint ptr %elmer to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %elmer, align 4
  %or = or i32 %54, 64
  store i32 %or, ptr %elmer, align 4
  %55 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %adapter, align 4
  %call12 = call i32 @t1_tpi_write(ptr noundef %56, i32 noundef 1048588, i32 noundef %or) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elmer) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88x201x_interrupt_handler(ptr noundef %cphy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mv88x201x_interrupt_clear(ptr noundef %cphy)
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mv88x201x_set_loopback(ptr nocapture noundef readnone %cphy, i32 noundef %on) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88x201x_get_link_status(ptr nocapture noundef readonly %cphy, ptr noundef writeonly %link_ok, ptr noundef writeonly %speed, ptr noundef writeonly %duplex, ptr noundef writeonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %link_ok, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mdio.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9
  %mdio_read.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 4
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 4
  %dev.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 4
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef 1, i16 noundef zeroext 1) #6
  %6 = tail call i32 @llvm.smax.i32(i32 %call.i, i32 -1) #6
  %and = lshr i32 %6, 2
  %and.lobit = and i32 %and, 1
  %7 = ptrtoint ptr %link_ok to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and.lobit, ptr %link_ok, align 4
  %8 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdio_read.i, align 4
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %12 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mdio.i, align 4
  %call.i.i = tail call i32 %9(ptr noundef %11, i32 noundef %13, i32 noundef 1, i16 noundef zeroext 7) #6
  %14 = tail call i32 @llvm.smax.i32(i32 %call.i.i, i32 -1) #6
  %mdio_write.i5.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 5
  %15 = ptrtoint ptr %mdio_write.i5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdio_write.i5.i, align 4
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %19 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mdio.i, align 4
  %21 = trunc i32 %14 to i16
  %conv3.i7.i = and i16 %21, -2
  %22 = trunc i32 %and.lobit to i16
  %conv3.i7.sink.i = or i16 %conv3.i7.i, %22
  %call.i8.i = tail call i32 %16(ptr noundef %18, i32 noundef %20, i32 noundef 1, i16 noundef zeroext 7, i16 noundef zeroext %conv3.i7.sink.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool2.not = icmp eq ptr %speed, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 10000, ptr %speed, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %tobool5.not = icmp eq ptr %duplex, null
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %duplex, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %tobool8.not = icmp eq ptr %fc, null
  br i1 %tobool8.not, label %if.end7.if.end10_crit_edge, label %if.then9

if.end7.if.end10_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %fc, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end7.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t1_tpi_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t1_tpi_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @t1_mv88x201x_ops, !1, !"t1_mv88x201x_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb/mv88x201x.c", i32 256, i32 19}
!2 = !{ptr @mv88x201x_ops, !3, !"mv88x201x_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/chelsio/cxgb/mv88x201x.c", i32 198, i32 30}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"auto-init"}
