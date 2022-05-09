; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/microchip/lan966x/lan966x_vlan.c_pt.bc'
source_filename = "../drivers/net/ethernet/microchip/lan966x/lan966x_vlan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lan966x = type { ptr, i8, ptr, [66 x ptr], i32, [6 x i8], ptr, i16, i16, %struct.list_head, %struct.spinlock, [4096 x i16], [128 x i32], ptr, i32, %struct.mutex, ptr, %struct.delayed_work, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.lan966x_port = type { ptr, ptr, i8, i16, i16, i8, i8, %struct.phylink_config, %struct.phylink_pcs, %struct.lan966x_port_config, ptr, ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.phylink_pcs = type { ptr, i8 }
%struct.lan966x_port_config = type { i32, ptr, i32, i32, i32, i8, i8 }

@lan966x_vlan_port_set_vid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 124, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Port already has a native VLAN: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lan966x_vlan_port_set_vid\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/ethernet/microchip/lan966x/lan966x_vlan.c\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lan966x_vlan_port_set_vid._entry_ptr = internal global ptr @lan966x_vlan_port_set_vid._entry, section ".printk_index", align 4
@.str.5 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/net/ethernet/microchip/lan966x/lan966x_main.h\00", [42 x i8] zeroinitializer }, align 32
@lan966x_vlan_set_mask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 51, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Vlan set mask failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lan966x_vlan_set_mask\00", [42 x i8] zeroinitializer }, align 32
@lan966x_vlan_set_mask._entry_ptr = internal global ptr @lan966x_vlan_set_mask._entry, section ".printk_index", align 4
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 122, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant [57 x i8] c"../drivers/net/ethernet/microchip/lan966x/lan966x_main.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 238, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [57 x i8] c"../drivers/net/ethernet/microchip/lan966x/lan966x_vlan.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 51, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @lan966x_vlan_port_set_vid._entry, ptr @lan966x_vlan_port_set_vid._entry_ptr, ptr @lan966x_vlan_set_mask._entry, ptr @lan966x_vlan_set_mask._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_vlan_port_set_vid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_vlan_set_mask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @lan966x_vlan_cpu_member_cpu_vlan_mask(ptr noundef %lan966x, i16 noundef zeroext %vid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %vid to i32
  %cpu_vlan_mask = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 12
  %div3.i = lshr i32 %conv, 5
  %arrayidx.i = getelementptr i32, ptr %cpu_vlan_mask, i32 %div3.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv, 31
  %2 = shl nuw i32 1, %and.i
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool = icmp ne i32 %3, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lan966x_vlan_port_set_vid(ptr nocapture noundef %port, i16 noundef zeroext %vid, i1 noundef zeroext %pvid, i1 noundef zeroext %untagged) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lan966x2 = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %lan966x2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lan966x2, align 4
  br i1 %untagged, label %land.lhs.true, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

land.lhs.true:                                    ; preds = %entry
  %vid3 = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 4
  %2 = ptrtoint ptr %vid3 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vid3, align 4
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %vid)
  %cmp.not = icmp eq i16 %3, %vid
  br i1 %cmp.not, label %land.lhs.true.if.end12_crit_edge, label %if.then

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool7.not = icmp eq i16 %3, 0
  br i1 %tobool7.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef %conv) #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %vid3 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %vid, ptr %vid3, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end, %land.lhs.true.if.end12_crit_edge, %entry.if.end12_crit_edge
  br i1 %pvid, label %if.then14, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %pvid15 = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 3
  %7 = ptrtoint ptr %pvid15 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %vid, ptr %pvid15, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end12.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.then14 ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @lan966x_vlan_port_set_vlan_aware(ptr nocapture noundef writeonly %port, i1 noundef zeroext %vlan_aware) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %vlan_aware to i8
  %vlan_aware1 = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 5
  %0 = ptrtoint ptr %vlan_aware1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %vlan_aware1, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lan966x_vlan_port_apply(ptr nocapture noundef readonly %port) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lan966x1 = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %lan966x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lan966x1, align 4
  %bridge_mask.i = getelementptr inbounds %struct.lan966x, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %bridge_mask.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %bridge_mask.i, align 4
  %conv.i = zext i16 %3 to i32
  %chip_port.i = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 2
  %4 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_port.i, align 4
  %conv2.i = zext i8 %5 to i32
  %shl.i = shl nuw i32 1, %conv2.i
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.do.end13_crit_edge, label %if.end.i

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13

if.end.i:                                         ; preds = %entry
  %vlan_aware.i = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 5
  %6 = ptrtoint ptr %vlan_aware.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vlan_aware.i, align 2, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not.i = icmp eq i8 %7, 0
  br i1 %tobool3.not.i, label %if.end.i.do.end13_crit_edge, label %cond.true.i

if.end.i.do.end13_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13

cond.true.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %pvid.i = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 3
  %8 = ptrtoint ptr %pvid.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %pvid.i, align 2
  br label %do.end13

do.end13:                                         ; preds = %cond.true.i, %if.end.i.do.end13_crit_edge, %entry.do.end13_crit_edge
  %retval.0.i = phi i16 [ 4095, %entry.do.end13_crit_edge ], [ %9, %cond.true.i ], [ 0, %if.end.i.do.end13_crit_edge ]
  %10 = and i16 %retval.0.i, 4095
  %and15 = zext i16 %10 to i32
  %vlan_aware = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 5
  %11 = ptrtoint ptr %vlan_aware to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %vlan_aware, align 2, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool16.not = icmp eq i8 %12, 0
  %or50 = or i32 %and15, 1310720
  %spec.select = select i1 %tobool16.not, i32 %and15, i32 %or50
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %5)
  %cmp20.not.i.i = icmp ult i8 %5, 9
  br i1 %cmp20.not.i.i, label %do.end13.lan_addr.exit.i_crit_edge, label %do.end36.i.i, !prof !25

do.end13.lan_addr.exit.i_crit_edge:               ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %lan_addr.exit.i

do.end36.i.i:                                     ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 239, i32 noundef 9, ptr noundef null) #6
  br label %lan_addr.exit.i

lan_addr.exit.i:                                  ; preds = %do.end36.i.i, %do.end13.lan_addr.exit.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.lan966x, ptr %1, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 28672
  %mul.i.i = shl nuw nsw i32 %conv2.i, 7
  %add.ptr81.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i.i) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  br i1 %cmp20.not.i.i, label %lan_addr.exit.i.lan_rmw.exit_crit_edge, label %do.end36.i2.i, !prof !25

lan_addr.exit.i.lan_rmw.exit_crit_edge:           ; preds = %lan_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lan_rmw.exit

do.end36.i2.i:                                    ; preds = %lan_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 239, i32 noundef 9, ptr noundef null) #6
  br label %lan_rmw.exit

lan_rmw.exit:                                     ; preds = %do.end36.i2.i, %lan_addr.exit.i.lan_rmw.exit_crit_edge
  %16 = and i32 %15, 15787007
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %or.i = or i32 %17, %spec.select
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %20, i32 28672
  %add.ptr81.i6.i = getelementptr i8, ptr %add.ptr.i4.i, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i6.i, i32 %18) #6, !srcloc !29
  %21 = ptrtoint ptr %vlan_aware to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %vlan_aware, align 2, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool70.not = icmp ne i8 %22, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.0.i)
  %tobool72.not = icmp eq i16 %retval.0.i, 0
  %or.cond259 = select i1 %tobool70.not, i1 %tobool72.not, i1 false
  %val.1 = select i1 %or.cond259, i32 1291845632, i32 16777216
  %23 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %chip_port.i, align 4
  %conv127 = zext i8 %24 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %24)
  %cmp20.not.i.i263 = icmp ult i8 %24, 9
  br i1 %cmp20.not.i.i263, label %lan_rmw.exit.lan_wr.exit_crit_edge, label %do.end36.i.i264, !prof !25

lan_rmw.exit.lan_wr.exit_crit_edge:               ; preds = %lan_rmw.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lan_wr.exit

do.end36.i.i264:                                  ; preds = %lan_rmw.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 239, i32 noundef 9, ptr noundef null) #6
  br label %lan_wr.exit

lan_wr.exit:                                      ; preds = %do.end36.i.i264, %lan_rmw.exit.lan_wr.exit_crit_edge
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i267 = getelementptr i8, ptr %26, i32 28672
  %mul.i.i268 = shl nuw nsw i32 %conv127, 7
  %add.ptr81.i.i269 = getelementptr i8, ptr %add.ptr.i.i267, i32 %mul.i.i268
  %add.ptr82.i.i = getelementptr i8, ptr %add.ptr81.i.i269, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i, i32 %val.1) #6, !srcloc !29
  %27 = ptrtoint ptr %vlan_aware to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %vlan_aware, align 2, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool145.not = icmp eq i8 %28, 0
  br i1 %tobool145.not, label %lan_wr.exit.if.end184_crit_edge, label %if.then146

lan_wr.exit.if.end184_crit_edge:                  ; preds = %lan_wr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end184

if.then146:                                       ; preds = %lan_wr.exit
  call void @__sanitizer_cov_trace_pc() #8
  %vid = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 4
  %29 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vid, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool147.not = icmp eq i16 %30, 0
  %. = select i1 %tobool147.not, i32 384, i32 128
  br label %if.end184

if.end184:                                        ; preds = %if.then146, %lan_wr.exit.if.end184_crit_edge
  %val.2 = phi i32 [ 0, %lan_wr.exit.if.end184_crit_edge ], [ %., %if.then146 ]
  %31 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %chip_port.i, align 4
  %conv186 = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %32)
  %cmp20.not.i.i272 = icmp ult i8 %32, 10
  br i1 %cmp20.not.i.i272, label %if.end184.lan_addr.exit.i278_crit_edge, label %do.end36.i.i273, !prof !25

if.end184.lan_addr.exit.i278_crit_edge:           ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #8
  br label %lan_addr.exit.i278

do.end36.i.i273:                                  ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 239, i32 noundef 9, ptr noundef null) #6
  br label %lan_addr.exit.i278

lan_addr.exit.i278:                               ; preds = %do.end36.i.i273, %if.end184.lan_addr.exit.i278_crit_edge
  %arrayidx.i.i274 = getelementptr %struct.lan966x, ptr %1, i32 0, i32 3, i32 47
  %33 = ptrtoint ptr %arrayidx.i.i274 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i.i274, align 4
  %mul.i.i275 = shl nuw nsw i32 %conv186, 7
  %add.ptr81.i.i276 = getelementptr i8, ptr %34, i32 %mul.i.i275
  %add.ptr82.i.i277 = getelementptr i8, ptr %add.ptr81.i.i276, i32 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i277) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  br i1 %cmp20.not.i.i272, label %lan_addr.exit.i278.lan_rmw.exit284_crit_edge, label %do.end36.i2.i279, !prof !25

lan_addr.exit.i278.lan_rmw.exit284_crit_edge:     ; preds = %lan_addr.exit.i278
  call void @__sanitizer_cov_trace_pc() #8
  br label %lan_rmw.exit284

do.end36.i2.i279:                                 ; preds = %lan_addr.exit.i278
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 239, i32 noundef 9, ptr noundef null) #6
  br label %lan_rmw.exit284

lan_rmw.exit284:                                  ; preds = %do.end36.i2.i279, %lan_addr.exit.i278.lan_rmw.exit284_crit_edge
  %36 = and i32 %35, 536805375
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %or.i282 = or i32 %37, %val.2
  %38 = tail call i32 @llvm.bswap.i32(i32 %or.i282) #6
  %39 = ptrtoint ptr %arrayidx.i.i274 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i.i274, align 4
  %add.ptr81.i6.i283 = getelementptr i8, ptr %40, i32 %mul.i.i275
  %add.ptr82.i7.i = getelementptr i8, ptr %add.ptr81.i6.i283, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i7.i, i32 %38) #6, !srcloc !29
  %vid210 = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 4
  %41 = ptrtoint ptr %vid210 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vid210, align 4
  %43 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %chip_port.i, align 4
  %conv234 = zext i8 %44 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %44)
  %cmp20.not.i.i286 = icmp ult i8 %44, 10
  br i1 %cmp20.not.i.i286, label %lan_rmw.exit284.lan_addr.exit.i291_crit_edge, label %do.end36.i.i287, !prof !25

lan_rmw.exit284.lan_addr.exit.i291_crit_edge:     ; preds = %lan_rmw.exit284
  call void @__sanitizer_cov_trace_pc() #8
  br label %lan_addr.exit.i291

do.end36.i.i287:                                  ; preds = %lan_rmw.exit284
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 239, i32 noundef 9, ptr noundef null) #6
  br label %lan_addr.exit.i291

lan_addr.exit.i291:                               ; preds = %do.end36.i.i287, %lan_rmw.exit284.lan_addr.exit.i291_crit_edge
  %45 = ptrtoint ptr %arrayidx.i.i274 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i.i274, align 4
  %mul.i.i289 = shl nuw nsw i32 %conv234, 7
  %add.ptr81.i.i290 = getelementptr i8, ptr %46, i32 %mul.i.i289
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81.i.i290) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  br i1 %cmp20.not.i.i286, label %lan_addr.exit.i291.lan_rmw.exit297_crit_edge, label %do.end36.i2.i292, !prof !25

lan_addr.exit.i291.lan_rmw.exit297_crit_edge:     ; preds = %lan_addr.exit.i291
  call void @__sanitizer_cov_trace_pc() #8
  br label %lan_rmw.exit297

do.end36.i2.i292:                                 ; preds = %lan_addr.exit.i291
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 239, i32 noundef 9, ptr noundef null) #6
  br label %lan_rmw.exit297

lan_rmw.exit297:                                  ; preds = %do.end36.i2.i292, %lan_addr.exit.i291.lan_rmw.exit297_crit_edge
  %48 = lshr i32 %47, 8
  %and.i293 = and i32 %48, 61440
  %49 = and i16 %42, 4095
  %or232 = zext i16 %49 to i32
  %and3.i294 = or i32 %and.i293, %or232
  %or.i295 = or i32 %and3.i294, -2130706432
  %50 = tail call i32 @llvm.bswap.i32(i32 %or.i295) #6
  %51 = ptrtoint ptr %arrayidx.i.i274 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i.i274, align 4
  %add.ptr81.i6.i296 = getelementptr i8, ptr %52, i32 %mul.i.i289
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i6.i296, i32 %50) #6, !srcloc !29
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lan966x_vlan_port_add_vlan(ptr nocapture noundef %port, i16 noundef zeroext %vid, i1 noundef zeroext %pvid, i1 noundef zeroext %untagged) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lan966x2 = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %lan966x2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lan966x2, align 4
  %conv.i = zext i16 %vid to i32
  %cpu_vlan_mask.i = getelementptr inbounds %struct.lan966x, ptr %1, i32 0, i32 12
  %div3.i.i = lshr i32 %conv.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %cpu_vlan_mask.i, i32 %div3.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv.i, 31
  %4 = shl nuw i32 1, %and.i.i
  %5 = and i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.lan966x, ptr %1, i32 0, i32 11, i32 %conv.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 2
  %8 = or i16 %7, 256
  store i16 %8, ptr %arrayidx.i, align 2
  tail call fastcc void @lan966x_vlan_set_mask(ptr noundef %1, i16 noundef zeroext %vid) #6
  tail call void @lan966x_fdb_write_entries(ptr noundef %1, i16 noundef zeroext %vid) #6
  tail call void @lan966x_mdb_write_entries(ptr noundef %1, i16 noundef zeroext %vid) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %lan966x2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lan966x2, align 4
  br i1 %untagged, label %land.lhs.true.i, label %if.end.if.end12.i_crit_edge

if.end.if.end12.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.end
  %vid3.i = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 4
  %11 = ptrtoint ptr %vid3.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vid3.i, align 4
  %conv.i16 = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %vid)
  %cmp.not.i = icmp eq i16 %12, %vid
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end12.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool7.not.i = icmp eq i16 %12, 0
  br i1 %tobool7.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str, i32 noundef %conv.i16) #9
  br label %lan966x_vlan_port_set_vid.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %vid3.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %vid, ptr %vid3.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.end.i, %land.lhs.true.i.if.end12.i_crit_edge, %if.end.if.end12.i_crit_edge
  br i1 %pvid, label %if.then14.i, label %if.end12.i.lan966x_vlan_port_set_vid.exit_crit_edge

if.end12.i.lan966x_vlan_port_set_vid.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lan966x_vlan_port_set_vid.exit

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %pvid15.i = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 3
  %16 = ptrtoint ptr %pvid15.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %vid, ptr %pvid15.i, align 2
  br label %lan966x_vlan_port_set_vid.exit

lan966x_vlan_port_set_vid.exit:                   ; preds = %if.then14.i, %if.end12.i.lan966x_vlan_port_set_vid.exit_crit_edge, %do.end.i
  %17 = ptrtoint ptr %lan966x2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lan966x2, align 4
  %chip_port.i = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 2
  %19 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %chip_port.i, align 4
  %conv.i17 = zext i8 %20 to i32
  %shl.i = shl nuw i32 1, %conv.i17
  %arrayidx.i19 = getelementptr %struct.lan966x, ptr %18, i32 0, i32 11, i32 %conv.i
  %21 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx.i19, align 2
  %23 = trunc i32 %shl.i to i16
  %conv3.i = or i16 %22, %23
  store i16 %conv3.i, ptr %arrayidx.i19, align 2
  tail call fastcc void @lan966x_vlan_set_mask(ptr noundef %18, i16 noundef zeroext %vid) #6
  tail call void @lan966x_vlan_port_apply(ptr noundef %port)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan966x_fdb_write_entries(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan966x_mdb_write_entries(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lan966x_vlan_port_del_vlan(ptr nocapture noundef %port, i16 noundef zeroext %vid) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lan966x1 = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %lan966x1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lan966x1, align 4
  %pvid.i = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 3
  %2 = ptrtoint ptr %pvid.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pvid.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %vid)
  %cmp.i = icmp eq i16 %3, %vid
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %pvid.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %pvid.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %vid4.i = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 4
  %5 = ptrtoint ptr %vid4.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vid4.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %vid)
  %cmp7.i = icmp eq i16 %6, %vid
  br i1 %cmp7.i, label %if.then9.i, label %if.end.i.lan966x_vlan_port_remove_vid.exit_crit_edge

if.end.i.lan966x_vlan_port_remove_vid.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lan966x_vlan_port_remove_vid.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %vid4.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %vid4.i, align 4
  br label %lan966x_vlan_port_remove_vid.exit

lan966x_vlan_port_remove_vid.exit:                ; preds = %if.then9.i, %if.end.i.lan966x_vlan_port_remove_vid.exit_crit_edge
  %chip_port.i = getelementptr inbounds %struct.lan966x_port, ptr %port, i32 0, i32 2
  %8 = ptrtoint ptr %chip_port.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %chip_port.i, align 4
  %conv.i = zext i8 %9 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %idxprom.i = zext i16 %vid to i32
  %arrayidx.i = getelementptr %struct.lan966x, ptr %1, i32 0, i32 11, i32 %idxprom.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx.i, align 2
  %12 = trunc i32 %shl.i to i16
  %13 = xor i16 %12, -1
  %conv3.i = and i16 %11, %13
  store i16 %conv3.i, ptr %arrayidx.i, align 2
  tail call fastcc void @lan966x_vlan_set_mask(ptr noundef %1, i16 noundef zeroext %vid) #6
  tail call void @lan966x_vlan_port_apply(ptr noundef %port)
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.i, align 2
  %16 = and i16 %15, -257
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool.i.not = icmp eq i16 %16, 0
  br i1 %tobool.i.not, label %if.then, label %lan966x_vlan_port_remove_vid.exit.if.end_crit_edge

lan966x_vlan_port_remove_vid.exit.if.end_crit_edge: ; preds = %lan966x_vlan_port_remove_vid.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %lan966x_vlan_port_remove_vid.exit
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %arrayidx.i, align 2
  tail call fastcc void @lan966x_vlan_set_mask(ptr noundef %1, i16 noundef zeroext %vid) #6
  tail call void @lan966x_fdb_erase_entries(ptr noundef %1, i16 noundef zeroext %vid) #6
  tail call void @lan966x_mdb_erase_entries(ptr noundef %1, i16 noundef zeroext %vid) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %lan966x_vlan_port_remove_vid.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan966x_fdb_erase_entries(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lan966x_mdb_erase_entries(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lan966x_vlan_cpu_add_vlan(ptr noundef %lan966x, i16 noundef zeroext %vid) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom.i = zext i16 %vid to i32
  %arrayidx.i = getelementptr %struct.lan966x, ptr %lan966x, i32 0, i32 11, i32 %idxprom.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx.i, align 2
  %2 = and i16 %1, -257
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.i.not = icmp eq i16 %2, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = or i16 %1, 256
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %arrayidx.i, align 2
  tail call fastcc void @lan966x_vlan_set_mask(ptr noundef %lan966x, i16 noundef zeroext %vid) #6
  tail call void @lan966x_mdb_write_entries(ptr noundef %lan966x, i16 noundef zeroext %vid) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cpu_vlan_mask.i = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 12
  %rem.i.i = and i32 %idxprom.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %idxprom.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %cpu_vlan_mask.i, i32 %div2.i.i
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %6, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  tail call void @lan966x_fdb_write_entries(ptr noundef %lan966x, i16 noundef zeroext %vid) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lan966x_vlan_cpu_del_vlan(ptr noundef %lan966x, i16 noundef zeroext %vid) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i16 %vid to i32
  %cpu_vlan_mask.i = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 12
  %rem.i.i = and i32 %conv.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %conv.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %cpu_vlan_mask.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %1, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %arrayidx.i = getelementptr %struct.lan966x, ptr %lan966x, i32 0, i32 11, i32 %conv.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.i, align 2
  %4 = and i16 %3, -257
  store i16 %4, ptr %arrayidx.i, align 2
  tail call fastcc void @lan966x_vlan_set_mask(ptr noundef %lan966x, i16 noundef zeroext %vid) #6
  tail call void @lan966x_fdb_erase_entries(ptr noundef %lan966x, i16 noundef zeroext %vid) #6
  tail call void @lan966x_mdb_erase_entries(ptr noundef %lan966x, i16 noundef zeroext %vid) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lan966x_vlan_init(ptr nocapture noundef %lan966x) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.lan966x, ptr %lan966x, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %1, i32 27580
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %3 = or i32 %2, 50331648
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i7.i = getelementptr i8, ptr %5, i32 27580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i7.i, i32 %3) #6, !srcloc !29
  %call = tail call fastcc i32 @lan966x_vlan_wait_for_completion(ptr noundef %lan966x)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 1, %entry ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.lan966x, ptr %lan966x, i32 0, i32 11, i32 %indvars.iv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %arrayidx, align 2
  %7 = trunc i32 %indvars.iv to i16
  tail call fastcc void @lan966x_vlan_set_mask(ptr noundef %lan966x, i16 noundef zeroext %7)
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 4096
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %num_phys_ports = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 1
  %8 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_phys_ports, align 4
  %conv14 = zext i8 %9 to i32
  %sub15 = sub nsw i32 32, %conv14
  %shr = lshr i32 -1, %sub15
  %10 = trunc i32 %shr to i16
  %conv16 = or i16 %10, 256
  %vlan_mask17 = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 11
  %arrayidx18 = getelementptr %struct.lan966x, ptr %lan966x, i32 0, i32 11, i32 4095
  %11 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv16, ptr %arrayidx18, align 2
  tail call fastcc void @lan966x_vlan_set_mask(ptr noundef %lan966x, i16 noundef zeroext 4095)
  %12 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_phys_ports, align 4
  %conv20 = zext i8 %13 to i32
  %sub22 = sub nsw i32 32, %conv20
  %shr23 = lshr i32 -1, %sub22
  %14 = trunc i32 %shr23 to i16
  %conv27 = or i16 %14, 256
  %15 = ptrtoint ptr %vlan_mask17 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv27, ptr %vlan_mask17, align 4
  tail call fastcc void @lan966x_vlan_set_mask(ptr noundef %lan966x, i16 noundef zeroext 0)
  %cpu_vlan_mask.i = getelementptr inbounds %struct.lan966x, ptr %lan966x, i32 0, i32 12
  %16 = ptrtoint ptr %cpu_vlan_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu_vlan_mask.i, align 4
  %or.i.i = or i32 %17, 1
  store i32 %or.i.i, ptr %cpu_vlan_mask.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr81.i.i = getelementptr i8, ptr %19, i32 29696
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i.i, i32 5120) #6, !srcloc !29
  %20 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %num_phys_ports, align 4
  %conv81 = zext i8 %21 to i32
  %sub82 = sub nsw i32 31, %conv81
  %shr83 = lshr i32 -1, %sub82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  %22 = tail call i32 @llvm.bswap.i32(i32 %shr83) #6
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i126 = getelementptr i8, ptr %24, i32 29832
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i126, i32 %22) #6, !srcloc !29
  %25 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %num_phys_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp90139.not = icmp eq i8 %26, 0
  br i1 %cmp90139.not, label %for.end.for.end97_crit_edge, label %for.body92.lr.ph

for.end.for.end97_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end97

for.body92.lr.ph:                                 ; preds = %for.end
  %arrayidx.i.i128 = getelementptr %struct.lan966x, ptr %lan966x, i32 0, i32 3, i32 47
  br label %for.body92

for.body92:                                       ; preds = %lan_wr.exit137.for.body92_crit_edge, %for.body92.lr.ph
  %indvars.iv141 = phi i32 [ 0, %for.body92.lr.ph ], [ %indvars.iv.next142, %lan_wr.exit137.for.body92_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %indvars.iv141)
  %cmp20.not.i.i = icmp ult i32 %indvars.iv141, 10
  br i1 %cmp20.not.i.i, label %for.body92.lan_wr.exit_crit_edge, label %do.end36.i.i, !prof !25

for.body92.lan_wr.exit_crit_edge:                 ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #8
  br label %lan_wr.exit

do.end36.i.i:                                     ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 239, i32 noundef 9, ptr noundef null) #6
  br label %lan_wr.exit

lan_wr.exit:                                      ; preds = %do.end36.i.i, %for.body92.lan_wr.exit_crit_edge
  %27 = ptrtoint ptr %arrayidx.i.i128 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i128, align 4
  %mul.i.i = shl nuw nsw i32 %indvars.iv141, 7
  %add.ptr81.i.i129 = getelementptr i8, ptr %28, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i.i129, i32 0) #6, !srcloc !29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  br i1 %cmp20.not.i.i, label %lan_wr.exit.lan_wr.exit137_crit_edge, label %do.end36.i.i131, !prof !25

lan_wr.exit.lan_wr.exit137_crit_edge:             ; preds = %lan_wr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %lan_wr.exit137

do.end36.i.i131:                                  ; preds = %lan_wr.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 239, i32 noundef 9, ptr noundef null) #6
  br label %lan_wr.exit137

lan_wr.exit137:                                   ; preds = %do.end36.i.i131, %lan_wr.exit.lan_wr.exit137_crit_edge
  %29 = ptrtoint ptr %arrayidx.i.i128 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i128, align 4
  %add.ptr81.i.i135 = getelementptr i8, ptr %30, i32 4
  %add.ptr82.i.i136 = getelementptr i8, ptr %add.ptr81.i.i135, i32 %mul.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i.i136, i32 0) #6, !srcloc !29
  %indvars.iv.next142 = add nuw nsw i32 %indvars.iv141, 1
  %31 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %num_phys_ports, align 4
  %33 = zext i8 %32 to i32
  %cmp90 = icmp ult i32 %indvars.iv.next142, %33
  br i1 %cmp90, label %lan_wr.exit137.for.body92_crit_edge, label %lan_wr.exit137.for.end97_crit_edge

lan_wr.exit137.for.end97_crit_edge:               ; preds = %lan_wr.exit137
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end97

lan_wr.exit137.for.body92_crit_edge:              ; preds = %lan_wr.exit137
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body92

for.end97:                                        ; preds = %lan_wr.exit137.for.end97_crit_edge, %for.end.for.end97_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lan966x_vlan_wait_for_completion(ptr nocapture noundef readonly %lan966x) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 23) #6
  %arrayidx.i.i.i = getelementptr %struct.lan966x, ptr %lan966x, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i33 = getelementptr i8, ptr %1, i32 27580
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i33) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  %3 = and i32 %2, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp935 = icmp eq i32 %3, 0
  br i1 %cmp935, label %entry.for.end.thread_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

land.lhs.true:                                    ; preds = %if.then19.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call12 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call12, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call12, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then19

if.then19:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #6
  %4 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i = getelementptr i8, ptr %5, i32 27580
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  %7 = and i32 %6, 50331648
  %cmp9 = icmp eq i32 %7, 0
  br i1 %cmp9, label %if.then19.for.end.thread_crit_edge, label %if.then19.land.lhs.true_crit_edge

if.then19.land.lhs.true_crit_edge:                ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.then19.for.end.thread_crit_edge:               ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

for.end:                                          ; preds = %land.lhs.true
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr82.i.i.i30 = getelementptr i8, ptr %9, i32 27580
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i.i30) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  %11 = and i32 %10, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp22 = icmp eq i32 %11, 0
  br i1 %cmp22, label %for.end.for.end.thread_crit_edge, label %for.end._crit_edge

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %12

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %if.then19.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  br label %12

12:                                               ; preds = %for.end.thread, %for.end._crit_edge
  %13 = phi i32 [ 0, %for.end.thread ], [ -110, %for.end._crit_edge ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lan966x_vlan_set_mask(ptr nocapture noundef readonly %lan966x, i16 noundef zeroext %vid) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i16 %vid to i32
  %arrayidx = getelementptr %struct.lan966x, ptr %lan966x, i32 0, i32 11, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %1 to i32
  %2 = shl nuw nsw i32 %conv, 10
  %shl = and i32 %2, 262144
  %and46 = and i32 %idxprom, 4095
  %3 = or i32 %shl, %and46
  %arrayidx.i.i = getelementptr %struct.lan966x, ptr %lan966x, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i = getelementptr i8, ptr %5, i32 27584
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %7 = and i32 %6, 15793151
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = or i32 %3, %8
  %or.i = xor i32 %9, 262144
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i7.i = getelementptr i8, ptr %12, i32 27584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i7.i, i32 %10) #6, !srcloc !29
  %and72 = and i32 %conv, 511
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i113 = getelementptr i8, ptr %14, i32 27576
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i113) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %16 = and i32 %15, 16711679
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %or.i115 = or i32 %17, %and72
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i115) #6
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i7.i117 = getelementptr i8, ptr %20, i32 27576
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i7.i117, i32 %18) #6, !srcloc !29
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i.i121 = getelementptr i8, ptr %22, i32 27580
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i.i121) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  %24 = and i32 %23, -50331649
  %25 = or i32 %24, 33554432
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr82.i7.i125 = getelementptr i8, ptr %27, i32 27580
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i7.i125, i32 %25) #6, !srcloc !29
  %call = tail call fastcc i32 @lan966x_vlan_wait_for_completion(ptr noundef %lan966x)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool89.not = icmp eq i32 %call, 0
  br i1 %tobool89.not, label %entry.if.end94_crit_edge, label %do.end93

entry.if.end94_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

do.end93:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %lan966x to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lan966x, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.6) #9
  br label %if.end94

if.end94:                                         ; preds = %do.end93, %entry.if.end94_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_vlan.c", i32 122, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @lan966x_vlan_port_set_vid._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @lan966x_vlan_port_set_vid._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_main.h", i32 238, i32 2}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/microchip/lan966x/lan966x_vlan.c", i32 51, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @lan966x_vlan_set_mask._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @lan966x_vlan_set_mask._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i8 0, i8 2}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 6058628}
!27 = !{i64 2157794506}
!28 = !{i64 2157794809}
!29 = !{i64 6058210}
!30 = !{i64 2157793229}
!31 = !{i64 2157792751}
