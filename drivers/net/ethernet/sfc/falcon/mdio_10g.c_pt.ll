; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/falcon/mdio_10g.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/falcon/mdio_10g.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ef4_nic = type { [16 x i8], %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, i8, ptr, [16 x i8], %struct.work_struct, i32, ptr, i32, i32, i32, i8, i32, i32, i32, i32, i32, [32 x ptr], [32 x %struct.ef4_msi_context], [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [40 x i8], [128 x i32], i8, i32, i32, i8, %struct.ef4_buffer, i32, i32, %struct.delayed_work, %struct.list_head, ptr, %struct.mutex, %struct.work_struct, i8, i8, i8, ptr, i64, %struct.ef4_buffer, i64, i64, i8, i32, ptr, ptr, %struct.mdio_if_info, i32, i32, %struct.ef4_link_state, i32, i8, %union.ef4_multicast_hash, i8, i32, %struct.atomic_t, i32, i64, ptr, %struct.rw_semaphore, %struct.spinlock, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, ptr, [32 x i8], %struct.delayed_work, %struct.spinlock, i32, %struct.spinlock, %struct.atomic_t, [60 x i8] }
%struct.ef4_msi_context = type { ptr, i32, [22 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ef4_buffer = type { ptr, i32, i32 }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.ef4_link_state = type { i8, i8, i8, i32 }
%union.ef4_multicast_hash = type { [2 x %union.ef4_oword] }
%union.ef4_oword = type { [2 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.144, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.144 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.ef4_phy_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to read status of MMD %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"not all MMDs came out of reset in time. MMDs still in reset: %x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to read devices present\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"required MMDs not present: got %x, wanted %x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/sfc/falcon/mdio_10g.c\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"no MDIO PHY present with ID %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PHY MMD %d not responding.\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 15, i64 16, i64 17]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 88, i32 6 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 105, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 128, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 134, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 277, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 323, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [46 x i8] c"../drivers/net/ethernet/sfc/falcon/mdio_10g.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 59, i32 4 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_mdio_id_oui(i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %oui.06 = phi i32 [ 0, %entry ], [ %oui.1, %for.body.for.body_crit_edge ]
  %shl = shl i32 1024, %i.07
  %and = and i32 %shl, %id
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %xor = xor i32 %i.07, 7
  %shl1 = shl nuw i32 1, %xor
  %or = select i1 %tobool.not, i32 0, i32 %shl1
  %oui.1 = or i32 %or, %oui.06
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 22
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 %oui.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_mdio_reset_mmd(ptr nocapture noundef readonly %port, i32 noundef %mmd, i32 noundef %spins, i32 noundef %spintime) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio.i = getelementptr inbounds %struct.ef4_nic, ptr %port, i32 0, i32 78
  %mdio_write.i = getelementptr inbounds %struct.ef4_nic, ptr %port, i32 0, i32 78, i32 5
  %0 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_write.i, align 4
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %port, i32 0, i32 69
  %2 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 8
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef %mmd, i16 noundef zeroext 0, i16 noundef zeroext -32768) #6
  %mdio_read.i = getelementptr inbounds %struct.ef4_nic, ptr %port, i32 0, i32 78, i32 4
  br label %do.body1

do.body1:                                         ; preds = %do.body1.do.body1_crit_edge, %entry
  %spins.addr.0 = phi i32 [ %spins, %entry ], [ %dec, %do.body1.do.body1_crit_edge ]
  tail call void @msleep(i32 noundef %spintime) #6
  %6 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_read.i, align 8
  %8 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev.i, align 4
  %10 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mdio.i, align 8
  %call.i13 = tail call i32 %7(ptr noundef %9, i32 noundef %11, i32 noundef %mmd, i16 noundef zeroext 0) #6
  %dec = add i32 %spins.addr.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  %and = and i32 %call.i13, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %do.end4, label %do.body1.do.body1_crit_edge

do.body1.do.body1_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1

do.end4:                                          ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select = select i1 %tobool.not, i32 -110, i32 %dec
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_mdio_wait_reset_mmds(ptr nocapture noundef readonly %efx, i32 noundef %mmd_mask) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mmd_mask)
  %tobool2.not62 = icmp eq i32 %mmd_mask, 0
  %mdio.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %mdio_read.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 4
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  br label %while.cond1.preheader

while.cond1.preheader:                            ; preds = %cleanup.while.cond1.preheader_crit_edge, %entry
  %tries.067 = phi i32 [ 100, %entry ], [ %dec, %cleanup.while.cond1.preheader_crit_edge ]
  br i1 %tobool2.not62, label %while.cond1.preheader.cleanup33_crit_edge, label %while.cond1.preheader.while.body3_crit_edge

while.cond1.preheader.while.body3_crit_edge:      ; preds = %while.cond1.preheader
  br label %while.body3

while.cond1.preheader.cleanup33_crit_edge:        ; preds = %while.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup33

while.body3:                                      ; preds = %if.end14.while.body3_crit_edge, %while.cond1.preheader.while.body3_crit_edge
  %mmd.065 = phi i32 [ %inc, %if.end14.while.body3_crit_edge ], [ 0, %while.cond1.preheader.while.body3_crit_edge ]
  %mask.064 = phi i32 [ %shr, %if.end14.while.body3_crit_edge ], [ %mmd_mask, %while.cond1.preheader.while.body3_crit_edge ]
  %in_reset.163 = phi i32 [ %in_reset.2, %if.end14.while.body3_crit_edge ], [ 0, %while.cond1.preheader.while.body3_crit_edge ]
  %and = and i32 %mask.064, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %while.body3.if.end14_crit_edge, label %if.then

while.body3.if.end14_crit_edge:                   ; preds = %while.body3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then:                                          ; preds = %while.body3
  %0 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i, align 8
  %2 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev.i, align 4
  %4 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i, align 8
  %call.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef %mmd.065, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.body, label %if.end9

do.body:                                          ; preds = %if.then
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 8
  %and6 = and i32 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.body.cleanup33_crit_edge, label %if.then8

do.body.cleanup33_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup33

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str, i32 noundef %mmd.065) #9
  br label %cleanup33

if.end9:                                          ; preds = %if.then
  %and10 = and i32 %call.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end14_crit_edge, label %if.then12

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %shl = shl nuw i32 1, %mmd.065
  %or = or i32 %shl, %in_reset.163
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end9.if.end14_crit_edge, %while.body3.if.end14_crit_edge
  %in_reset.2 = phi i32 [ %or, %if.then12 ], [ %in_reset.163, %if.end9.if.end14_crit_edge ], [ %in_reset.163, %while.body3.if.end14_crit_edge ]
  %shr = ashr i32 %mask.064, 1
  %inc = add i32 %mmd.065, 1
  %tobool2.not = icmp ult i32 %mask.064, 2
  br i1 %tobool2.not, label %while.end, label %if.end14.while.body3_crit_edge

if.end14.while.body3_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body3

while.end:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in_reset.2)
  %tobool15.not = icmp eq i32 %in_reset.2, 0
  br i1 %tobool15.not, label %while.end.cleanup33_crit_edge, label %cleanup

while.end.cleanup33_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup33

cleanup:                                          ; preds = %while.end
  %dec = add nsw i32 %tries.067, -1
  tail call void @msleep(i32 noundef 10) #6
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.body23, label %cleanup.while.cond1.preheader_crit_edge

cleanup.while.cond1.preheader_crit_edge:          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond1.preheader

do.body23:                                        ; preds = %cleanup
  %msg_enable24 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %10 = ptrtoint ptr %msg_enable24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable24, align 8
  %and25 = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %do.body23.cleanup33_crit_edge, label %if.then27

do.body23.cleanup33_crit_edge:                    ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup33

if.then27:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.1, i32 noundef %in_reset.2) #9
  br label %cleanup33

cleanup33:                                        ; preds = %if.then27, %do.body23.cleanup33_crit_edge, %while.end.cleanup33_crit_edge, %if.then8, %do.body.cleanup33_crit_edge, %while.cond1.preheader.cleanup33_crit_edge
  %retval.2 = phi i32 [ -110, %if.then27 ], [ -110, %do.body23.cleanup33_crit_edge ], [ -5, %if.then8 ], [ -5, %do.body.cleanup33_crit_edge ], [ 0, %while.end.cleanup33_crit_edge ], [ 0, %while.cond1.preheader.cleanup33_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_mdio_check_mmds(ptr nocapture noundef readonly %efx, i32 noundef %mmd_mask) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mmd_mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %0 = tail call i32 @llvm.cttz.i32(i32 %mmd_mask, i1 false) #6, !range !23
  %spec.select = select i1 %tobool.not, i32 %0, i32 4
  %mdio.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %mdio_read.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 4
  %1 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mdio_read.i, align 8
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %3 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net_dev.i, align 4
  %5 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mdio.i, align 8
  %call.i = tail call i32 %2(ptr noundef %4, i32 noundef %6, i32 noundef %spec.select, i16 noundef zeroext 5) #6
  %7 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdio_read.i, align 8
  %9 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %net_dev.i, align 4
  %11 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mdio.i, align 8
  %call.i53 = tail call i32 %8(ptr noundef %10, i32 noundef %12, i32 noundef %spec.select, i16 noundef zeroext 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %cmp3 = icmp slt i32 %call.i53, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %or.cond, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %13 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable, align 8
  %and4 = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %do.body.cleanup_crit_edge, label %if.then6

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  %shl = shl i32 %call.i53, 16
  %or = or i32 %shl, %call.i
  %and8 = and i32 %or, %mmd_mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and8, i32 %mmd_mask)
  %cmp9.not = icmp eq i32 %and8, %mmd_mask
  br i1 %cmp9.not, label %while.cond.preheader, label %do.body11

while.cond.preheader:                             ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mmd_mask)
  %tobool21.not58 = icmp eq i32 %mmd_mask, 0
  br i1 %tobool21.not58, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body11:                                        ; preds = %if.end7
  %msg_enable12 = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %17 = ptrtoint ptr %msg_enable12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_enable12, align 8
  %and13 = and i32 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body11.cleanup_crit_edge, label %if.then15

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then15:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.3, i32 noundef %or, i32 noundef %mmd_mask) #9
  br label %cleanup

while.body:                                       ; preds = %if.end27.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %mmd.060 = phi i32 [ %inc, %if.end27.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %mmd_mask.addr.059 = phi i32 [ %shr, %if.end27.while.body_crit_edge ], [ %mmd_mask, %while.cond.preheader.while.body_crit_edge ]
  %and22 = and i32 %mmd_mask.addr.059, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %mmd.060)
  %cmp.not.i = icmp eq i32 %mmd.060, 7
  %or.cond56 = select i1 %tobool23.not, i1 true, i1 %cmp.not.i
  br i1 %or.cond56, label %while.body.if.end27_crit_edge, label %if.then.i

while.body.if.end27_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then.i:                                        ; preds = %while.body
  %21 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mdio_read.i, align 8
  %23 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %net_dev.i, align 4
  %25 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mdio.i, align 8
  %call.i.i = tail call i32 %22(ptr noundef %24, i32 noundef %26, i32 noundef %mmd.060, i16 noundef zeroext 8) #6
  %and.i = and i32 %call.i.i, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %and.i)
  %cmp1.not.i = icmp eq i32 %and.i, 32768
  br i1 %cmp1.not.i, label %if.then.i.if.end27_crit_edge, label %do.body.i

if.then.i.if.end27_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

do.body.i:                                        ; preds = %if.then.i
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %27 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_enable.i, align 8
  %and3.i = and i32 %28, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %if.then4.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net_dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.6, i32 noundef %mmd.060) #9
  br label %cleanup

if.end27:                                         ; preds = %if.then.i.if.end27_crit_edge, %while.body.if.end27_crit_edge
  %shr = lshr i32 %mmd_mask.addr.059, 1
  %inc = add nuw nsw i32 %mmd.060, 1
  %tobool21.not = icmp ult i32 %mmd_mask.addr.059, 2
  br i1 %tobool21.not, label %if.end27.cleanup_crit_edge, label %if.end27.while.body_crit_edge

if.end27.while.body_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %if.end27.cleanup_crit_edge, %if.then4.i, %do.body.i.cleanup_crit_edge, %if.then15, %do.body11.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %if.then6, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %if.then6 ], [ -5, %do.body.cleanup_crit_edge ], [ -19, %if.then15 ], [ -19, %do.body11.cleanup_crit_edge ], [ -5, %do.body.i.cleanup_crit_edge ], [ -5, %if.then4.i ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ef4_mdio_links_ok(ptr noundef %efx, i32 noundef %mmd_mask) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %loopback_mode = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 88
  %0 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %loopback_mode, align 4
  %shl = shl nuw i32 1, %1
  %and = and i32 %shl, 66600958
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.else:                                          ; preds = %entry
  %and3 = and i32 %shl, 133693440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.else6, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.else6:                                         ; preds = %if.else
  %phy_mode = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 79
  %2 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_mode, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %tobool.i = icmp ugt i32 %3, 1
  br i1 %tobool.i, label %if.else6.return_crit_edge, label %if.else8

if.else6.return_crit_edge:                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.else8:                                         ; preds = %if.else6
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.else8.if.end26_crit_edge [
    i32 15, label %if.then10
    i32 16, label %if.then15
    i32 17, label %if.then20
  ]

if.else8.if.end26_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then10:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #8
  %and11 = and i32 %mmd_mask, -155
  br label %if.end26

if.then15:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #8
  %and16 = and i32 %mmd_mask, -139
  br label %if.end26

if.then20:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #8
  %and21 = and i32 %mmd_mask, -131
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %if.then15, %if.then10, %if.else8.if.end26_crit_edge
  %mmd_mask.addr.0 = phi i32 [ %and11, %if.then10 ], [ %and16, %if.then15 ], [ %and21, %if.then20 ], [ %mmd_mask, %if.else8.if.end26_crit_edge ]
  %mdio = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %call27 = tail call i32 @mdio45_links_ok(ptr noundef %mdio, i32 noundef %mmd_mask.addr.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28 = icmp ne i32 %call27, 0
  br label %return

return:                                           ; preds = %if.end26, %if.else6.return_crit_edge, %if.else.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ %tobool28, %if.end26 ], [ true, %entry.return_crit_edge ], [ false, %if.else.return_crit_edge ], [ false, %if.else6.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio45_links_ok(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_mdio_transmit_disable(ptr noundef %efx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_mode = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 79
  %0 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_mode, align 16
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %mdio.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %2 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mdio.i, align 8
  %call.i = tail call i32 @mdio_set_flag(ptr noundef %mdio.i, i32 noundef %3, i32 noundef 1, i16 noundef zeroext 9, i32 noundef 1, i1 noundef zeroext %tobool) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_mdio_phy_reconfigure(ptr noundef %efx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %loopback_mode = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 88
  %0 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %loopback_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %1)
  %cmp = icmp eq i32 %1, 17
  %mdio.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %2 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mdio.i, align 8
  %call.i = tail call i32 @mdio_set_flag(ptr noundef %mdio.i, i32 noundef %3, i32 noundef 1, i16 noundef zeroext 0, i32 noundef 1, i1 noundef zeroext %cmp) #6
  %4 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %loopback_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp2 = icmp eq i32 %5, 16
  %6 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mdio.i, align 8
  %call.i11 = tail call i32 @mdio_set_flag(ptr noundef %mdio.i, i32 noundef %7, i32 noundef 3, i16 noundef zeroext 0, i32 noundef 16384, i1 noundef zeroext %cmp2) #6
  %8 = ptrtoint ptr %loopback_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %loopback_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %9)
  %cmp4 = icmp eq i32 %9, 26
  %10 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mdio.i, align 8
  %call.i13 = tail call i32 @mdio_set_flag(ptr noundef %mdio.i, i32 noundef %11, i32 noundef 4, i16 noundef zeroext 0, i32 noundef 16384, i1 noundef zeroext %cmp4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_mdio_set_mmds_lpower(ptr noundef %efx, i32 noundef %low_power, i32 noundef %mmd_mask) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mmd_mask, -129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not7 = icmp eq i32 %and, 0
  br i1 %tobool.not7, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %mdio.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %mdio_read.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 4
  %net_dev.i.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %low_power)
  %tobool1.i = icmp ne i32 %low_power, 0
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %mmd.09 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end.while.body_crit_edge ]
  %mmd_mask.addr.08 = phi i32 [ %and, %while.body.lr.ph ], [ %shr, %if.end.while.body_crit_edge ]
  %and1 = and i32 %mmd_mask.addr.08, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %while.body
  %0 = ptrtoint ptr %mdio_read.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio_read.i.i, align 8
  %2 = ptrtoint ptr %net_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev.i.i, align 4
  %4 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio.i.i, align 8
  %call.i.i = tail call i32 %1(ptr noundef %3, i32 noundef %5, i32 noundef %mmd.09, i16 noundef zeroext 1) #6
  %and.i = and i32 %call.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %mdio.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mdio.i.i, align 8
  %call.i5.i = tail call i32 @mdio_set_flag(ptr noundef %mdio.i.i, i32 noundef %7, i32 noundef %mmd.09, i16 noundef zeroext 0, i32 noundef 2048, i1 noundef zeroext %tobool1.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %while.body.if.end_crit_edge
  %shr = lshr i32 %mmd_mask.addr.08, 1
  %inc = add nuw nsw i32 %mmd.09, 1
  %tobool.not = icmp ult i32 %mmd_mask.addr.08, 2
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_mdio_set_link_ksettings(ptr noundef %efx, ptr noundef %cmd) local_unnamed_addr #2 align 64 {
entry:
  %prev = alloca %struct.ethtool_link_ksettings, align 4
  %prev_advertising = alloca i32, align 4
  %advertising = alloca i32, align 4
  %prev_supported = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %prev) #6
  %0 = getelementptr inbounds i8, ptr %prev, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 84)
  %2 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 76, ptr %prev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev_advertising) #6
  %3 = ptrtoint ptr %prev_advertising to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %prev_advertising, align 4, !annotation !24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %advertising) #6
  %4 = ptrtoint ptr %advertising to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %advertising, align 4, !annotation !24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prev_supported) #6
  %5 = ptrtoint ptr %prev_supported to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %prev_supported, align 4, !annotation !24
  %phy_op = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 76
  %6 = ptrtoint ptr %phy_op to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_op, align 16
  %get_link_ksettings = getelementptr inbounds %struct.ef4_phy_operations, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %get_link_ksettings to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_link_ksettings, align 4
  call void %9(ptr noundef %efx, ptr noundef nonnull %prev) #6
  %advertising1 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  %call = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %advertising, ptr noundef %advertising1) #6
  %link_modes2 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %prev, i32 0, i32 1
  %advertising3 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %prev, i32 0, i32 1, i32 1
  %call5 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %prev_advertising, ptr noundef %advertising3) #6
  %call8 = call zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef nonnull %prev_supported, ptr noundef %link_modes2) #6
  %10 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %advertising, align 4
  %12 = ptrtoint ptr %prev_advertising to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prev_advertising, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp = icmp eq i32 %11, %13
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %14 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %speed, align 4
  %speed10 = getelementptr inbounds %struct.ethtool_link_settings, ptr %prev, i32 0, i32 1
  %16 = ptrtoint ptr %speed10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %speed10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp11 = icmp eq i32 %15, %17
  br i1 %cmp11, label %land.lhs.true12, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true12:                                  ; preds = %land.lhs.true
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %18 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %duplex, align 4
  %duplex15 = getelementptr inbounds %struct.ethtool_link_settings, ptr %prev, i32 0, i32 2
  %20 = ptrtoint ptr %duplex15 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %duplex15, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp17 = icmp eq i8 %19, %21
  br i1 %cmp17, label %land.lhs.true19, label %land.lhs.true12.if.end_crit_edge

land.lhs.true12.if.end_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true19:                                  ; preds = %land.lhs.true12
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %port, align 1
  %port23 = getelementptr inbounds %struct.ethtool_link_settings, ptr %prev, i32 0, i32 3
  %24 = ptrtoint ptr %port23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %port23, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp25 = icmp eq i8 %23, %25
  br i1 %cmp25, label %land.lhs.true27, label %land.lhs.true19.if.end_crit_edge

land.lhs.true19.if.end_crit_edge:                 ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true27:                                  ; preds = %land.lhs.true19
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %26 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %autoneg, align 1
  %autoneg31 = getelementptr inbounds %struct.ethtool_link_settings, ptr %prev, i32 0, i32 5
  %28 = ptrtoint ptr %autoneg31 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %autoneg31, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %29)
  %cmp33 = icmp eq i8 %27, %29
  br i1 %cmp33, label %land.lhs.true27.cleanup_crit_edge, label %land.lhs.true27.if.end_crit_edge

land.lhs.true27.if.end_crit_edge:                 ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true27.cleanup_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true27.if.end_crit_edge, %land.lhs.true19.if.end_crit_edge, %land.lhs.true12.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %port36 = getelementptr inbounds %struct.ethtool_link_settings, ptr %prev, i32 0, i32 3
  %30 = ptrtoint ptr %port36 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %port36, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp38.not = icmp eq i8 %31, 0
  br i1 %cmp38.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %port41 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %32 = ptrtoint ptr %port41 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %port41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp43.not = icmp eq i8 %33, 0
  br i1 %cmp43.not, label %if.end46, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end46:                                         ; preds = %lor.lhs.false
  %autoneg48 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %34 = ptrtoint ptr %autoneg48 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %autoneg48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not = icmp eq i8 %35, 0
  br i1 %tobool.not, label %if.end46.cleanup_crit_edge, label %lor.lhs.false49

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false49:                                  ; preds = %if.end46
  %or = or i32 %11, 64
  %36 = ptrtoint ptr %prev_supported to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %prev_supported, align 4
  %neg = xor i32 %37, -1
  %and = and i32 %or, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool50.not = icmp eq i32 %and, 0
  br i1 %tobool50.not, label %if.end52, label %lor.lhs.false49.cleanup_crit_edge

lor.lhs.false49.cleanup_crit_edge:                ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end52:                                         ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #8
  call void @ef4_link_set_advertising(ptr noundef %efx, i32 noundef %or) #6
  call void @ef4_mdio_an_reconfigure(ptr noundef %efx)
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %lor.lhs.false49.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true27.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end52 ], [ 0, %land.lhs.true27.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false49.cleanup_crit_edge ], [ -22, %if.end46.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev_supported) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %advertising) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prev_advertising) #6
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %prev) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ethtool_convert_link_mode_to_legacy_u32(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_link_set_advertising(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_mdio_an_reconfigure(ptr noundef %efx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmds = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 1
  %0 = ptrtoint ptr %mmds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mmds, align 4
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !25

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 277, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %link_advertising = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 80
  %2 = ptrtoint ptr %link_advertising to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_advertising, align 4
  %and21 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %spec.select = select i1 %tobool22.not, i32 4097, i32 5121
  %and26 = lshr i32 %3, 3
  %4 = and i32 %and26, 2048
  %5 = or i32 %spec.select, %4
  %mdio.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %mdio_write.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 5
  %6 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio_write.i, align 4
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %8 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev.i, align 4
  %10 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mdio.i, align 8
  %conv2.i = trunc i32 %5 to i16
  %call.i = tail call i32 %7(ptr noundef %9, i32 noundef %11, i32 noundef 7, i16 noundef zeroext 16, i16 noundef zeroext %conv2.i) #6
  %phy_op = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 76
  %12 = ptrtoint ptr %phy_op to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_op, align 16
  %set_npage_adv = getelementptr inbounds %struct.ef4_phy_operations, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %set_npage_adv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_npage_adv, align 4
  %16 = ptrtoint ptr %link_advertising to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %link_advertising, align 4
  tail call void %15(ptr noundef %efx, i32 noundef %17) #6
  %mdio_read.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 4
  %18 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdio_read.i, align 8
  %20 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net_dev.i, align 4
  %22 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mdio.i, align 8
  %call.i48 = tail call i32 %19(ptr noundef %21, i32 noundef %23, i32 noundef 7, i16 noundef zeroext 0) #6
  %24 = ptrtoint ptr %mdio_write.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mdio_write.i, align 4
  %26 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %net_dev.i, align 4
  %28 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mdio.i, align 8
  %30 = trunc i32 %call.i48 to i16
  %conv2.i52 = or i16 %30, 12800
  %call.i53 = tail call i32 %25(ptr noundef %27, i32 noundef %29, i32 noundef 7, i16 noundef zeroext 0, i16 noundef zeroext %conv2.i52) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @ef4_mdio_get_pause(ptr nocapture noundef readonly %efx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %wanted_fc = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 85
  %0 = ptrtoint ptr %wanted_fc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wanted_fc, align 8
  %2 = and i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %mmds = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 1
  %3 = ptrtoint ptr %mmds to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mmds, align 4
  %and2 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %do.end15, label %if.end.if.end21_crit_edge, !prof !25

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 303, i32 noundef 9, ptr noundef null) #6
  br label %if.end21

if.end21:                                         ; preds = %do.end15, %if.end.if.end21_crit_edge
  %5 = ptrtoint ptr %wanted_fc to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %wanted_fc, align 8
  %conv29 = zext i8 %6 to i32
  %and.i = and i32 %conv29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.store.select.i = select i1 %tobool.not.i, i16 0, i16 3072
  %and1.i = and i32 %conv29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %7 = xor i16 %spec.store.select.i, 2048
  %spec.select.i = select i1 %tobool2.not.i, i16 %spec.store.select.i, i16 %7
  %mdio.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %mdio_read.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 4
  %8 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdio_read.i, align 8
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %10 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev.i, align 4
  %12 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mdio.i, align 8
  %call.i = tail call i32 %9(ptr noundef %11, i32 noundef %13, i32 noundef 7, i16 noundef zeroext 19) #6
  %conv31 = trunc i32 %call.i to i16
  %and25.i = and i16 %spec.select.i, %conv31
  %and.i38 = zext i16 %and25.i to i32
  %and2.i = and i32 %and.i38, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i39 = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i39, label %if.else.i, label %if.end21.return_crit_edge

if.end21.return_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.else.i:                                        ; preds = %if.end21
  %and6.i = and i32 %and.i38, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.else.i.return_crit_edge, label %if.then8.i

if.else.i.return_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then8.i:                                       ; preds = %if.else.i
  %14 = and i16 %spec.select.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool11.not.i = icmp eq i16 %14, 0
  br i1 %tobool11.not.i, label %if.else13.i, label %if.then8.i.return_crit_edge

if.then8.i.return_crit_edge:                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.else13.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = lshr i16 %conv31, 10
  %16 = trunc i16 %15 to i8
  %17 = and i8 %16, 1
  br label %return

return:                                           ; preds = %if.else13.i, %if.then8.i.return_crit_edge, %if.else.i.return_crit_edge, %if.end21.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i8 [ %1, %entry.return_crit_edge ], [ 0, %if.else.i.return_crit_edge ], [ 3, %if.end21.return_crit_edge ], [ 2, %if.then8.i.return_crit_edge ], [ %17, %if.else13.i ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_mdio_test_alive(ptr noundef %efx) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78
  %mmds = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 1
  %0 = ptrtoint ptr %mmds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mmds, align 4
  %2 = tail call i32 @llvm.cttz.i32(i32 %1, i1 false) #6, !range !23
  %mac_lock = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 64
  tail call void @mutex_lock_nested(ptr noundef %mac_lock, i32 noundef 0) #6
  %mdio_read.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 78, i32 4
  %3 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdio_read.i, align 8
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 69
  %5 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net_dev.i, align 4
  %7 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mdio, align 8
  %call.i = tail call i32 %4(ptr noundef %6, i32 noundef %8, i32 noundef %2, i16 noundef zeroext 2) #6
  %9 = ptrtoint ptr %mdio_read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdio_read.i, align 8
  %11 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %net_dev.i, align 4
  %13 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mdio, align 8
  %call.i39 = tail call i32 %10(ptr noundef %12, i32 noundef %14, i32 noundef %2, i16 noundef zeroext 3) #6
  %trunc = trunc i32 %call.i to i16
  %15 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %trunc, label %lor.lhs.false9 [
    i16 0, label %entry.do.body_crit_edge
    i16 -1, label %entry.do.body_crit_edge41
  ]

entry.do.body_crit_edge41:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false9:                                   ; preds = %entry
  %trunc40 = trunc i32 %call.i39 to i16
  %16 = zext i16 %trunc40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %trunc40, label %if.else [
    i16 0, label %lor.lhs.false9.do.body_crit_edge
    i16 -1, label %lor.lhs.false9.do.body_crit_edge42
  ]

lor.lhs.false9.do.body_crit_edge42:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false9.do.body_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false9.do.body_crit_edge, %lor.lhs.false9.do.body_crit_edge42, %entry.do.body_crit_edge, %entry.do.body_crit_edge41
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 20
  %17 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_enable, align 8
  %and = and i32 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.if.end22_crit_edge, label %if.then17

do.body.if.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %net_dev.i, align 4
  %21 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mdio, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.5, i32 noundef %22) #9
  br label %if.end22

if.else:                                          ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %mmds to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mmds, align 4
  %call21 = tail call i32 @ef4_mdio_check_mmds(ptr noundef %efx, i32 noundef %24)
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then17, %do.body.if.end22_crit_edge
  %rc.0 = phi i32 [ %call21, %if.else ], [ -22, %if.then17 ], [ -22, %do.body.if.end22_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mac_lock) #6
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio_set_flag(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/falcon/mdio_10g.c", i32 88, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/sfc/falcon/mdio_10g.c", i32 105, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/sfc/falcon/mdio_10g.c", i32 128, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/sfc/falcon/mdio_10g.c", i32 134, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/sfc/falcon/mdio_10g.c", i32 277, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/sfc/falcon/mdio_10g.c", i32 323, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/sfc/falcon/mdio_10g.c", i32 59, i32 4}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i32 0, i32 33}
!24 = !{!"auto-init"}
!25 = !{!"branch_weights", i32 1, i32 2000}
