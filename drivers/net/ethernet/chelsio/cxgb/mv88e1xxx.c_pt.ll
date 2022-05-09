; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb/mv88e1xxx.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb/mv88e1xxx.c"
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
%struct.board_info = type { i8, i8, i32, i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr }
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

@t1_mv88e1xxx_ops = dso_local constant { %struct.gphy, [24 x i8] } { %struct.gphy { ptr @mv88e1xxx_phy_create, ptr @mv88e1xxx_phy_reset }, [24 x i8] zeroinitializer }, align 32
@mv88e1xxx_ops = internal constant { %struct.cphy_ops, [40 x i8] } { %struct.cphy_ops { ptr @mv88e1xxx_destroy, ptr @mv88e1xxx_reset, ptr @mv88e1xxx_interrupt_enable, ptr @mv88e1xxx_interrupt_disable, ptr @mv88e1xxx_interrupt_clear, ptr @mv88e1xxx_interrupt_handler, ptr @mv88e1xxx_autoneg_enable, ptr @mv88e1xxx_autoneg_disable, ptr @mv88e1xxx_autoneg_restart, ptr @mv88e1xxx_advertise, ptr @mv88e1xxx_set_loopback, ptr @mv88e1xxx_set_speed_duplex, ptr @mv88e1xxx_get_link_status, i32 0 }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"t1_mv88e1xxx_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 395, i32 19 }
@___asan_gen_.5 = private unnamed_addr constant [14 x i8] c"mv88e1xxx_ops\00", align 1
@___asan_gen_.6 = private constant [49 x i8] c"../drivers/net/ethernet/chelsio/cxgb/mv88e1xxx.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 341, i32 30 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @t1_mv88e1xxx_ops, ptr @mv88e1xxx_ops], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t1_mv88e1xxx_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e1xxx_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mv88e1xxx_phy_create(ptr noundef %dev, i32 noundef %phy_addr, ptr noundef readonly %mdio_ops) #0 align 64 {
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
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %adapter1.i = getelementptr inbounds %struct.cphy, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %adapter1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %add.ptr.i, ptr %adapter1.i, align 4
  %ops.i = getelementptr inbounds %struct.cphy, ptr %call7.i.i, i32 0, i32 8
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @mv88e1xxx_ops, ptr %ops.i, align 8
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
  store i32 0, ptr %mmds3.i, align 8
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
  %brd_info = getelementptr i8, ptr %dev, i32 2436
  %15 = ptrtoint ptr %brd_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %brd_info, align 4
  %caps = getelementptr inbounds %struct.board_info, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %caps, align 4
  %and = and i32 %18, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %cphy_init.exit.if.end9_crit_edge, label %land.lhs.true

cphy_init.exit.if.end9_crit_edge:                 ; preds = %cphy_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

land.lhs.true:                                    ; preds = %cphy_init.exit
  %chip_phy = getelementptr inbounds %struct.board_info, ptr %16, i32 0, i32 5
  %19 = ptrtoint ptr %chip_phy to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %chip_phy, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp = icmp eq i8 %20, 1
  br i1 %cmp, label %if.then6, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %mdio.i.i = getelementptr inbounds %struct.cphy, ptr %call7.i.i, i32 0, i32 9
  %mdio_write.i.i = getelementptr inbounds %struct.cphy, ptr %call7.i.i, i32 0, i32 9, i32 5
  %21 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mdio_write.i.i, align 8
  %23 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mdio.i.i, align 4
  %call.i.i = tail call i32 %22(ptr noundef %dev, i32 noundef %24, i32 noundef -1, i16 noundef zeroext 29, i16 noundef zeroext 11) #6
  %call.i.i29 = tail call i32 %22(ptr noundef %dev, i32 noundef %24, i32 noundef -1, i16 noundef zeroext 30, i16 noundef zeroext -32764) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %land.lhs.true.if.end9_crit_edge, %cphy_init.exit.if.end9_crit_edge
  %mdio.i.i.i = getelementptr inbounds %struct.cphy, ptr %call7.i.i, i32 0, i32 9
  %mdio_read.i.i.i = getelementptr inbounds %struct.cphy, ptr %call7.i.i, i32 0, i32 9, i32 4
  %25 = ptrtoint ptr %mdio_read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mdio_read.i.i.i, align 4
  %27 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev9.i, align 8
  %29 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mdio.i.i.i, align 4
  %call.i.i.i = tail call i32 %26(ptr noundef %28, i32 noundef %30, i32 noundef -1, i16 noundef zeroext 20) #6
  %31 = tail call i32 @llvm.smax.i32(i32 %call.i.i.i, i32 -1) #6
  %mdio_write.i.i.i = getelementptr inbounds %struct.cphy, ptr %call7.i.i, i32 0, i32 9, i32 5
  %32 = ptrtoint ptr %mdio_write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdio_write.i.i.i, align 8
  %34 = trunc i32 %31 to i16
  %35 = and i16 %34, -3841
  %conv3.i.i.i = or i16 %35, 1280
  %call.i.i3.i = tail call i32 %33(ptr noundef %28, i32 noundef %30, i32 noundef -1, i16 noundef zeroext 20, i16 noundef zeroext %conv3.i.i.i) #6
  %chip_version.i = getelementptr i8, ptr %dev, i32 2466
  %36 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %chip_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %37)
  %cmp.i = icmp eq i8 %37, 2
  br i1 %cmp.i, label %adapter_matches_type.exit, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

adapter_matches_type.exit:                        ; preds = %if.end9
  %chip_revision.i = getelementptr i8, ptr %dev, i32 2464
  %38 = ptrtoint ptr %chip_revision.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %chip_revision.i, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %39)
  %cmp4.i.not = icmp eq i16 %39, 3
  br i1 %cmp4.i.not, label %if.then13, label %adapter_matches_type.exit.cleanup_crit_edge

adapter_matches_type.exit.cleanup_crit_edge:      ; preds = %adapter_matches_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13:                                        ; preds = %adapter_matches_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %mdio_write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mdio_write.i.i.i, align 8
  %call.i.i33 = tail call i32 %41(ptr noundef %28, i32 noundef %30, i32 noundef -1, i16 noundef zeroext 24, i16 noundef zeroext 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %adapter_matches_type.exit.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mv88e1xxx_phy_reset(ptr nocapture noundef readnone %adapter) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv88e1xxx_destroy(ptr noundef %cphy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %cphy) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e1xxx_reset(ptr nocapture noundef readonly %cphy, i32 noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9
  %mdio_read.i.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 4
  %0 = ptrtoint ptr %mdio_read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i.i, align 4
  %4 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i.i.i, align 4
  %call.i.i.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef -1, i16 noundef zeroext 0) #6
  %6 = tail call i32 @llvm.smax.i32(i32 %call.i.i.i, i32 -1) #6
  %mdio_write.i.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 5
  %7 = ptrtoint ptr %mdio_write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdio_write.i.i.i, align 4
  %9 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i.i, align 4
  %11 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mdio.i.i.i, align 4
  %13 = trunc i32 %6 to i16
  %conv3.i.i.i = or i16 %13, -32768
  %call.i.i3.i = tail call i32 %8(ptr noundef %10, i32 noundef %12, i32 noundef -1, i16 noundef zeroext 0, i16 noundef zeroext %conv3.i.i.i) #6
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %time_out.0 = phi i32 [ 1000, %entry ], [ %dec, %do.cond.do.body_crit_edge ]
  %14 = ptrtoint ptr %mdio_read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mdio_read.i.i.i, align 4
  %16 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i.i, align 4
  %18 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mdio.i.i.i, align 4
  %call.i.i = tail call i32 %15(ptr noundef %17, i32 noundef %19, i32 noundef -1, i16 noundef zeroext 0) #6
  %20 = tail call i32 @llvm.smax.i32(i32 %call.i.i, i32 -1) #6
  %and = and i32 %20, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end_crit_edge, label %do.cond

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.cond:                                          ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #6
  %dec = add nsw i32 %time_out.0, -1
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %do.cond.do.end_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %do.body.do.end_crit_edge
  %22 = shl nuw i32 %and, 16
  %sext = ashr exact i32 %22, 31
  ret i32 %sext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e1xxx_interrupt_enable(ptr nocapture noundef readonly %cphy) #0 align 64 {
entry:
  %elmer = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9
  %mdio_write.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 5
  %0 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %4 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i.i, align 4
  %call.i.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef -1, i16 noundef zeroext 18, i16 noundef zeroext 27808) #6
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
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elmer) #6
  %10 = ptrtoint ptr %elmer to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %elmer, align 4, !annotation !13
  %call3 = call i32 @t1_tpi_read(ptr noundef %7, i32 noundef 1048584, ptr noundef nonnull %elmer) #6
  %11 = ptrtoint ptr %elmer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %elmer, align 4
  %or = or i32 %12, 2
  store i32 %or, ptr %elmer, align 4
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 4
  %chip_version.i = getelementptr inbounds %struct.adapter, ptr %14, i32 0, i32 8, i32 9
  %15 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %chip_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp.i = icmp eq i8 %16, 2
  br i1 %cmp.i, label %adapter_matches_type.exit, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

adapter_matches_type.exit:                        ; preds = %if.then
  %chip_revision.i = getelementptr inbounds %struct.adapter, ptr %14, i32 0, i32 8, i32 8
  %17 = ptrtoint ptr %chip_revision.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %chip_revision.i, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %18)
  %cmp4.i.not = icmp eq i16 %18, 3
  br i1 %cmp4.i.not, label %if.then7, label %adapter_matches_type.exit.if.end_crit_edge

adapter_matches_type.exit.if.end_crit_edge:       ; preds = %adapter_matches_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then7:                                         ; preds = %adapter_matches_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  %or8 = or i32 %12, 30
  %19 = ptrtoint ptr %elmer to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or8, ptr %elmer, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %adapter_matches_type.exit.if.end_crit_edge, %if.then.if.end_crit_edge
  %20 = ptrtoint ptr %elmer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %elmer, align 4
  %call10 = call i32 @t1_tpi_write(ptr noundef %14, i32 noundef 1048584, i32 noundef %21) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elmer) #6
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e1xxx_interrupt_disable(ptr nocapture noundef readonly %cphy) #0 align 64 {
entry:
  %elmer = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9
  %mdio_write.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 5
  %0 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %4 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i.i, align 4
  %call.i.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef -1, i16 noundef zeroext 18, i16 noundef zeroext 0) #6
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
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elmer) #6
  %10 = ptrtoint ptr %elmer to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %elmer, align 4, !annotation !13
  %call3 = call i32 @t1_tpi_read(ptr noundef %7, i32 noundef 1048584, ptr noundef nonnull %elmer) #6
  %11 = ptrtoint ptr %elmer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %elmer, align 4
  %and = and i32 %12, -3
  store i32 %and, ptr %elmer, align 4
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 4
  %chip_version.i = getelementptr inbounds %struct.adapter, ptr %14, i32 0, i32 8, i32 9
  %15 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %chip_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %16)
  %cmp.i = icmp eq i8 %16, 2
  br i1 %cmp.i, label %adapter_matches_type.exit, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

adapter_matches_type.exit:                        ; preds = %if.then
  %chip_revision.i = getelementptr inbounds %struct.adapter, ptr %14, i32 0, i32 8, i32 8
  %17 = ptrtoint ptr %chip_revision.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %chip_revision.i, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %18)
  %cmp4.i.not = icmp eq i16 %18, 3
  br i1 %cmp4.i.not, label %if.then7, label %adapter_matches_type.exit.if.end_crit_edge

adapter_matches_type.exit.if.end_crit_edge:       ; preds = %adapter_matches_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then7:                                         ; preds = %adapter_matches_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  %and8 = and i32 %12, -31
  %19 = ptrtoint ptr %elmer to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and8, ptr %elmer, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %adapter_matches_type.exit.if.end_crit_edge, %if.then.if.end_crit_edge
  %20 = ptrtoint ptr %elmer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %elmer, align 4
  %call10 = call i32 @t1_tpi_write(ptr noundef %14, i32 noundef 1048584, i32 noundef %21) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elmer) #6
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry.if.end11_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e1xxx_interrupt_clear(ptr nocapture noundef readonly %cphy) #0 align 64 {
entry:
  %elmer = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elmer) #6
  %mdio.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9
  %mdio_read.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 4
  %0 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %4 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i.i, align 4
  %call.i.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef -1, i16 noundef zeroext 19) #6
  %6 = tail call i32 @llvm.smax.i32(i32 %call.i.i, i32 -1) #6
  %7 = ptrtoint ptr %elmer to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %elmer, align 4
  %adapter = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 1
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 4
  %is_asic.i = getelementptr inbounds %struct.adapter, ptr %9, i32 0, i32 8, i32 10
  %10 = ptrtoint ptr %is_asic.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_asic.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then:                                          ; preds = %entry
  %call3 = call i32 @t1_tpi_read(ptr noundef %9, i32 noundef 1048588, ptr noundef nonnull %elmer) #6
  %12 = ptrtoint ptr %elmer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %elmer, align 4
  %or = or i32 %13, 2
  store i32 %or, ptr %elmer, align 4
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter, align 4
  %chip_version.i = getelementptr inbounds %struct.adapter, ptr %15, i32 0, i32 8, i32 9
  %16 = ptrtoint ptr %chip_version.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %chip_version.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp.i = icmp eq i8 %17, 2
  br i1 %cmp.i, label %adapter_matches_type.exit, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

adapter_matches_type.exit:                        ; preds = %if.then
  %chip_revision.i = getelementptr inbounds %struct.adapter, ptr %15, i32 0, i32 8, i32 8
  %18 = ptrtoint ptr %chip_revision.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %chip_revision.i, align 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %19)
  %cmp4.i.not = icmp eq i16 %19, 3
  br i1 %cmp4.i.not, label %if.then7, label %adapter_matches_type.exit.if.end_crit_edge

adapter_matches_type.exit.if.end_crit_edge:       ; preds = %adapter_matches_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then7:                                         ; preds = %adapter_matches_type.exit
  call void @__sanitizer_cov_trace_pc() #8
  %or8 = or i32 %13, 30
  %20 = ptrtoint ptr %elmer to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or8, ptr %elmer, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %adapter_matches_type.exit.if.end_crit_edge, %if.then.if.end_crit_edge
  %21 = ptrtoint ptr %elmer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %elmer, align 4
  %call10 = call i32 @t1_tpi_write(ptr noundef %15, i32 noundef 1048588, i32 noundef %22) #6
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry.if.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elmer) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e1xxx_interrupt_handler(ptr nocapture noundef %cphy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9
  %mdio_read.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 4
  %dev.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 3
  %0 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i.i, align 4
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %4 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i.i, align 4
  %call.i.i52 = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef -1, i16 noundef zeroext 19) #6
  %6 = tail call i32 @llvm.smax.i32(i32 %call.i.i52, i32 -1) #6
  %and53 = and i32 %6, 27808
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool.not54 = icmp eq i32 %and53, 0
  br i1 %tobool.not54, label %entry.while.end_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %entry.if.end_crit_edge
  %7 = phi i32 [ %29, %cleanup.if.end_crit_edge ], [ %6, %entry.if.end_crit_edge ]
  %cphy_cause.055 = phi i32 [ %spec.select42, %cleanup.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %and1 = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end19_crit_edge, label %if.then3

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then3:                                         ; preds = %if.end
  %8 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdio_read.i.i, align 4
  %10 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i, align 4
  %12 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mdio.i.i, align 4
  %call.i.i46 = tail call i32 %9(ptr noundef %11, i32 noundef %13, i32 noundef -1, i16 noundef zeroext 17) #6
  %14 = tail call i32 @llvm.smax.i32(i32 %call.i.i46, i32 -1) #6
  %and5 = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %15 = ptrtoint ptr %cphy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cphy, align 4
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %16, 1
  %17 = ptrtoint ptr %cphy to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or, ptr %cphy, align 4
  br label %if.end19

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %and11 = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %spec.select.v = select i1 %tobool12.not, i32 -2, i32 -4
  %spec.select = and i32 %spec.select.v, %16
  %18 = ptrtoint ptr %cphy to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select, ptr %cphy, align 4
  %or17 = or i32 %cphy_cause.055, 1
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then7, %if.end.if.end19_crit_edge
  %cphy_cause.1 = phi i32 [ %cphy_cause.055, %if.then7 ], [ %or17, %if.else ], [ %cphy_cause.055, %if.end.if.end19_crit_edge ]
  %and20 = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %if.then22

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %cphy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cphy, align 4
  %or24 = or i32 %20, 2
  store i32 %or24, ptr %cphy, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end19.cleanup_crit_edge
  %21 = ptrtoint ptr %cphy to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cphy, align 4
  %and27 = and i32 %22, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and27)
  %cmp = icmp eq i32 %and27, 3
  %or29 = zext i1 %cmp to i32
  %spec.select42 = or i32 %cphy_cause.1, %or29
  %23 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mdio_read.i.i, align 4
  %25 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i.i, align 4
  %27 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mdio.i.i, align 4
  %call.i.i = tail call i32 %24(ptr noundef %26, i32 noundef %28, i32 noundef -1, i16 noundef zeroext 19) #6
  %29 = tail call i32 @llvm.smax.i32(i32 %call.i.i, i32 -1) #6
  %and = and i32 %29, 27808
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup.while.end_crit_edge, label %cleanup.if.end_crit_edge

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %entry.while.end_crit_edge
  %cphy_cause.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %spec.select42, %cleanup.while.end_crit_edge ]
  ret i32 %cphy_cause.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e1xxx_autoneg_enable(ptr nocapture noundef readonly %cphy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9
  %mdio_read.i.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 4
  %0 = ptrtoint ptr %mdio_read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i.i, align 4
  %4 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i.i.i, align 4
  %call.i.i.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef -1, i16 noundef zeroext 16) #6
  %6 = tail call i32 @llvm.smax.i32(i32 %call.i.i.i, i32 -1) #6
  %mdio_write.i.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 5
  %7 = ptrtoint ptr %mdio_write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdio_write.i.i.i, align 4
  %9 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i.i, align 4
  %11 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mdio.i.i.i, align 4
  %13 = trunc i32 %6 to i16
  %conv3.i.i.i = or i16 %13, 96
  %call.i.i3.i = tail call i32 %8(ptr noundef %10, i32 noundef %12, i32 noundef -1, i16 noundef zeroext 16, i16 noundef zeroext %conv3.i.i.i) #6
  %14 = ptrtoint ptr %mdio_read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mdio_read.i.i.i, align 4
  %16 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i.i, align 4
  %18 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mdio.i.i.i, align 4
  %call.i.i = tail call i32 %15(ptr noundef %17, i32 noundef %19, i32 noundef -1, i16 noundef zeroext 0) #6
  %20 = tail call i32 @llvm.smax.i32(i32 %call.i.i, i32 -1) #6
  %21 = ptrtoint ptr %mdio_write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mdio_write.i.i.i, align 4
  %23 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i.i.i, align 4
  %25 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mdio.i.i.i, align 4
  %27 = trunc i32 %20 to i16
  %conv3.i.i = or i16 %27, 4608
  %call.i.i7 = tail call i32 %22(ptr noundef %24, i32 noundef %26, i32 noundef -1, i16 noundef zeroext 0, i16 noundef zeroext %conv3.i.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e1xxx_autoneg_disable(ptr nocapture noundef readonly %cphy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9
  %mdio_read.i.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 4
  %0 = ptrtoint ptr %mdio_read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i.i, align 4
  %4 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i.i.i, align 4
  %call.i.i.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef -1, i16 noundef zeroext 16) #6
  %6 = tail call i32 @llvm.smax.i32(i32 %call.i.i.i, i32 -1) #6
  %mdio_write.i.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 5
  %7 = ptrtoint ptr %mdio_write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdio_write.i.i.i, align 4
  %9 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i.i, align 4
  %11 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mdio.i.i.i, align 4
  %13 = trunc i32 %6 to i16
  %conv3.i.i.i = and i16 %13, -97
  %call.i.i3.i = tail call i32 %8(ptr noundef %10, i32 noundef %12, i32 noundef -1, i16 noundef zeroext 16, i16 noundef zeroext %conv3.i.i.i) #6
  %14 = ptrtoint ptr %mdio_read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mdio_read.i.i.i, align 4
  %16 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i.i, align 4
  %18 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mdio.i.i.i, align 4
  %call.i.i = tail call i32 %15(ptr noundef %17, i32 noundef %19, i32 noundef -1, i16 noundef zeroext 0) #6
  %20 = tail call i32 @llvm.smax.i32(i32 %call.i.i, i32 -1) #6
  %21 = ptrtoint ptr %mdio_write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mdio_write.i.i.i, align 4
  %23 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i.i.i, align 4
  %25 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mdio.i.i.i, align 4
  %27 = trunc i32 %20 to i16
  %28 = and i16 %27, -4609
  %conv3.i.i = or i16 %28, 512
  %call.i.i7 = tail call i32 %22(ptr noundef %24, i32 noundef %26, i32 noundef -1, i16 noundef zeroext 0, i16 noundef zeroext %conv3.i.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e1xxx_autoneg_restart(ptr nocapture noundef readonly %cphy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9
  %mdio_read.i.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 4
  %0 = ptrtoint ptr %mdio_read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i.i, align 4
  %4 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i.i.i, align 4
  %call.i.i.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef -1, i16 noundef zeroext 0) #6
  %6 = tail call i32 @llvm.smax.i32(i32 %call.i.i.i, i32 -1) #6
  %mdio_write.i.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 5
  %7 = ptrtoint ptr %mdio_write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdio_write.i.i.i, align 4
  %9 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i.i, align 4
  %11 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mdio.i.i.i, align 4
  %13 = trunc i32 %6 to i16
  %conv3.i.i.i = or i16 %13, 512
  %call.i.i3.i = tail call i32 %8(ptr noundef %10, i32 noundef %12, i32 noundef -1, i16 noundef zeroext 0, i16 noundef zeroext %conv3.i.i.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e1xxx_advertise(ptr nocapture noundef readonly %phy, i32 noundef %advertise_map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %advertise_map, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mdio.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 9
  %mdio_read.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 9, i32 4
  %0 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %4 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i.i, align 4
  %call.i.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef -1, i16 noundef zeroext 9) #6
  %6 = tail call i32 @llvm.smax.i32(i32 %call.i.i, i32 -1) #6
  %and1 = and i32 %6, 64767
  %and2 = shl i32 %advertise_map, 4
  %7 = and i32 %and2, 768
  %8 = or i32 %7, %and1
  %phi.cast = trunc i32 %8 to i16
  br label %if.end10

if.end10:                                         ; preds = %if.then, %entry.if.end10_crit_edge
  %val.0 = phi i16 [ 0, %entry.if.end10_crit_edge ], [ %phi.cast, %if.then ]
  %mdio.i.i55 = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 9
  %mdio_write.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 9, i32 5
  %9 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdio_write.i.i, align 4
  %dev.i.i56 = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 9, i32 3
  %11 = ptrtoint ptr %dev.i.i56 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i.i56, align 4
  %13 = ptrtoint ptr %mdio.i.i55 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mdio.i.i55, align 4
  %call.i.i57 = tail call i32 %10(ptr noundef %12, i32 noundef %14, i32 noundef -1, i16 noundef zeroext 9, i16 noundef zeroext %val.0) #6
  %and12 = and i32 %advertise_map, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %spec.select54 = select i1 %tobool13.not, i32 1, i32 33
  %and17 = shl i32 %advertise_map, 5
  %and32 = lshr i32 %advertise_map, 3
  %15 = and i32 %and32, 1024
  %16 = and i32 %and32, 2048
  %17 = and i32 %and17, 448
  %18 = or i32 %17, %15
  %19 = or i32 %18, %16
  %20 = or i32 %19, %spec.select54
  %21 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mdio_write.i.i, align 4
  %23 = ptrtoint ptr %dev.i.i56 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i.i56, align 4
  %25 = ptrtoint ptr %mdio.i.i55 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mdio.i.i55, align 4
  %conv3.i.i61 = trunc i32 %20 to i16
  %call.i.i62 = tail call i32 %22(ptr noundef %24, i32 noundef %26, i32 noundef -1, i16 noundef zeroext 4, i16 noundef zeroext %conv3.i.i61) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e1xxx_set_loopback(ptr nocapture noundef readonly %cphy, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %mdio.i.i.i2 = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9
  %mdio_read.i.i.i3 = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 4
  %0 = ptrtoint ptr %mdio_read.i.i.i3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i.i.i3, align 4
  %dev.i.i.i4 = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %dev.i.i.i4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i.i4, align 4
  %4 = ptrtoint ptr %mdio.i.i.i2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i.i.i2, align 4
  %call.i.i.i5 = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef -1, i16 noundef zeroext 0) #6
  %6 = tail call i32 @llvm.smax.i32(i32 %call.i.i.i5, i32 -1) #6
  %mdio_write.i.i.i6 = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 5
  %7 = ptrtoint ptr %mdio_write.i.i.i6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdio_write.i.i.i6, align 4
  %9 = ptrtoint ptr %dev.i.i.i4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i.i.i4, align 4
  %11 = ptrtoint ptr %mdio.i.i.i2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mdio.i.i.i2, align 4
  %13 = trunc i32 %6 to i16
  %conv3.i.i.i7 = and i16 %13, -16385
  %masksel = select i1 %tobool.not, i16 0, i16 16384
  %conv3.i.i.i7.sink = or i16 %conv3.i.i.i7, %masksel
  %call.i.i3.i8 = tail call i32 %8(ptr noundef %10, i32 noundef %12, i32 noundef -1, i16 noundef zeroext 0, i16 noundef zeroext %conv3.i.i.i7.sink) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e1xxx_set_speed_duplex(ptr nocapture noundef readonly %phy, i32 noundef %speed, i32 noundef %duplex) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 9
  %mdio_read.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 9, i32 4
  %0 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %4 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i.i, align 4
  %call.i.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef -1, i16 noundef zeroext 0) #6
  %6 = tail call i32 @llvm.smax.i32(i32 %call.i.i, i32 -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %speed)
  %cmp = icmp sgt i32 %speed, -1
  br i1 %cmp, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  %and = and i32 %6, -12353
  %7 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %speed, label %if.then.if.end7_crit_edge [
    i32 100, label %if.then2
    i32 1000, label %if.then4
  ]

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %and, 8192
  br label %if.end7

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %or5 = or i32 %and, 64
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.then2, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %ctl.0 = phi i32 [ %and, %if.then.if.end7_crit_edge ], [ %or5, %if.then4 ], [ %or, %if.then2 ], [ %6, %entry.if.end7_crit_edge ]
  %and10 = and i32 %ctl.0, -4353
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %duplex)
  %cmp11 = icmp eq i32 %duplex, 1
  %or13 = or i32 %and10, 256
  %spec.select = select i1 %cmp11, i32 %or13, i32 %and10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %duplex)
  %cmp832 = icmp slt i32 %duplex, 0
  %ctl.1 = select i1 %cmp832, i32 %ctl.0, i32 %spec.select
  %and16 = shl i32 %ctl.1, 6
  %8 = and i32 %and16, 4096
  %9 = or i32 %8, %ctl.1
  %mdio_write.i.i = getelementptr inbounds %struct.cphy, ptr %phy, i32 0, i32 9, i32 5
  %10 = ptrtoint ptr %mdio_write.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdio_write.i.i, align 4
  %12 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i.i, align 4
  %14 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mdio.i.i, align 4
  %conv3.i.i = trunc i32 %9 to i16
  %call.i.i27 = tail call i32 %11(ptr noundef %13, i32 noundef %15, i32 noundef -1, i16 noundef zeroext 0, i16 noundef zeroext %conv3.i.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e1xxx_get_link_status(ptr nocapture noundef readonly %cphy, ptr noundef writeonly %link_ok, ptr noundef writeonly %speed, ptr noundef writeonly %duplex, ptr noundef writeonly %fc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9
  %mdio_read.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 4
  %0 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.cphy, ptr %cphy, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %4 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i.i, align 4
  %call.i.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef -1, i16 noundef zeroext 17) #6
  %6 = tail call i32 @llvm.smax.i32(i32 %call.i.i, i32 -1) #6
  %and = and i32 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then:                                          ; preds = %entry
  %and1 = lshr i32 %6, 2
  %7 = and i32 %and1, 3
  %and8 = lshr i32 %6, 13
  %and8.lobit = and i32 %and8, 1
  %shr = lshr i32 %6, 14
  %and10 = and i32 %shr, 3
  %8 = zext i32 %and10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %and10, label %if.else15 [
    i32 0, label %if.then.if.end18_crit_edge
    i32 1, label %if.then14
  ]

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.else15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.end18:                                         ; preds = %if.else15, %if.then14, %if.then.if.end18_crit_edge, %entry.if.end18_crit_edge
  %sp.0 = phi i32 [ 100, %if.then14 ], [ 1000, %if.else15 ], [ -1, %entry.if.end18_crit_edge ], [ 10, %if.then.if.end18_crit_edge ]
  %dplx.0 = phi i32 [ %and8.lobit, %if.then14 ], [ %and8.lobit, %if.else15 ], [ -1, %entry.if.end18_crit_edge ], [ %and8.lobit, %if.then.if.end18_crit_edge ]
  %pause.2 = phi i32 [ %7, %if.then14 ], [ %7, %if.else15 ], [ 0, %entry.if.end18_crit_edge ], [ %7, %if.then.if.end18_crit_edge ]
  %tobool19.not = icmp eq ptr %link_ok, null
  br i1 %tobool19.not, label %if.end18.if.end23_crit_edge, label %if.then20

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %and21 = lshr i32 %6, 10
  %and21.lobit = and i32 %and21, 1
  %9 = ptrtoint ptr %link_ok to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and21.lobit, ptr %link_ok, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end18.if.end23_crit_edge
  %tobool24.not = icmp eq ptr %speed, null
  br i1 %tobool24.not, label %if.end23.if.end26_crit_edge, label %if.then25

if.end23.if.end26_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sp.0, ptr %speed, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then25, %if.end23.if.end26_crit_edge
  %tobool27.not = icmp eq ptr %duplex, null
  br i1 %tobool27.not, label %if.end26.if.end29_crit_edge, label %if.then28

if.end26.if.end29_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %dplx.0, ptr %duplex, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end26.if.end29_crit_edge
  %tobool30.not = icmp eq ptr %fc, null
  br i1 %tobool30.not, label %if.end29.if.end32_crit_edge, label %if.then31

if.end29.if.end32_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %fc to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %pause.2, ptr %fc, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end29.if.end32_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t1_tpi_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t1_tpi_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @t1_mv88e1xxx_ops, !1, !"t1_mv88e1xxx_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb/mv88e1xxx.c", i32 395, i32 19}
!2 = !{ptr @mv88e1xxx_ops, !3, !"mv88e1xxx_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/chelsio/cxgb/mv88e1xxx.c", i32 341, i32 30}
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
