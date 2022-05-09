; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/mv88e6xxx/smi.c_pt.bc'
source_filename = "../drivers/net/dsa/mv88e6xxx/smi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mv88e6xxx_bus_ops = type { ptr, ptr }
%struct.mv88e6xxx_info = type { i32, i16, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i32, i8, ptr, i8 }
%struct.mv88e6xxx_chip = type { ptr, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, %struct.mutex, i32, %struct.work_struct, %struct.timer_list, %struct.mutex, ptr, i32, %struct.list_head, %struct.idr, %struct.mv88e6xxx_irq, %struct.mv88e6xxx_irq, i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], ptr, %struct.kthread_delayed_work, [2 x i8], %struct.cyclecounter, %struct.timecounter, %struct.delayed_work, ptr, %struct.ptp_clock_info, %struct.delayed_work, [16 x %struct.ptp_pin_desc], i16, i16, i16, i32, i32, [12 x %struct.mv88e6xxx_port_hwtstamp], [12 x %struct.mv88e6xxx_port], [5 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mv88e6xxx_irq = type { i16, %struct.irq_chip, ptr, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.kthread_delayed_work = type { %struct.kthread_work, %struct.timer_list }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.mv88e6xxx_port_hwtstamp = type { i32, i32, %struct.sk_buff_head, %struct.sk_buff_head, i32, ptr, i16, %struct.hwtstamp_config }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.mv88e6xxx_port = type { ptr, i32, %struct.mv88e6xxx_vlan, [2 x i64], i64, i64, i64, i64, i64, i32, i8, i8, i8, i32, [64 x i8], ptr }
%struct.mv88e6xxx_vlan = type { i16, i8 }

@mv88e6xxx_smi_dual_direct_ops = internal constant { %struct.mv88e6xxx_bus_ops, [24 x i8] } { %struct.mv88e6xxx_bus_ops { ptr @mv88e6xxx_smi_dual_direct_read, ptr @mv88e6xxx_smi_dual_direct_write }, [24 x i8] zeroinitializer }, align 32
@mv88e6xxx_smi_direct_ops = internal constant { %struct.mv88e6xxx_bus_ops, [24 x i8] } { %struct.mv88e6xxx_bus_ops { ptr @mv88e6xxx_smi_direct_read, ptr @mv88e6xxx_smi_direct_write }, [24 x i8] zeroinitializer }, align 32
@mv88e6xxx_smi_indirect_ops = internal constant { %struct.mv88e6xxx_bus_ops, [24 x i8] } { %struct.mv88e6xxx_bus_ops { ptr @mv88e6xxx_smi_indirect_read, ptr @mv88e6xxx_smi_indirect_write }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [30 x i8] c"mv88e6xxx_smi_dual_direct_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 93, i32 39 }
@___asan_gen_.4 = private unnamed_addr constant [25 x i8] c"mv88e6xxx_smi_direct_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 76, i32 39 }
@___asan_gen_.7 = private unnamed_addr constant [27 x i8] c"mv88e6xxx_smi_indirect_ops\00", align 1
@___asan_gen_.8 = private constant [35 x i8] c"../drivers/net/dsa/mv88e6xxx/smi.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 158, i32 39 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @mv88e6xxx_smi_dual_direct_ops, ptr @mv88e6xxx_smi_direct_ops, ptr @mv88e6xxx_smi_indirect_ops], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_smi_dual_direct_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_smi_direct_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_smi_indirect_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mv88e6xxx_smi_init(ptr nocapture noundef %chip, ptr noundef %bus, i32 noundef %sw_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %dual_chip = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %dual_chip to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dual_chip, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sw_addr)
  %cmp = icmp eq i32 %sw_addr, 0
  br i1 %cmp, label %if.else.if.end10_crit_edge, label %if.else3

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.else3:                                         ; preds = %if.else
  %multi_chip = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %multi_chip to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %multi_chip, align 4, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.else3.return_crit_edge, label %if.else3.if.end10_crit_edge

if.else3.if.end10_crit_edge:                      ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.else3.return_crit_edge:                        ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end10:                                         ; preds = %if.else3.if.end10_crit_edge, %if.else.if.end10_crit_edge, %entry.if.end10_crit_edge
  %mv88e6xxx_smi_direct_ops.sink = phi ptr [ @mv88e6xxx_smi_dual_direct_ops, %entry.if.end10_crit_edge ], [ @mv88e6xxx_smi_direct_ops, %if.else.if.end10_crit_edge ], [ @mv88e6xxx_smi_indirect_ops, %if.else3.if.end10_crit_edge ]
  %smi_ops2 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 5
  %6 = ptrtoint ptr %smi_ops2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mv88e6xxx_smi_direct_ops.sink, ptr %smi_ops2, align 4
  %bus11 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 6
  %7 = ptrtoint ptr %bus11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %bus, ptr %bus11, align 8
  %sw_addr12 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 7
  %8 = ptrtoint ptr %sw_addr12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sw_addr, ptr %sw_addr12, align 4
  br label %return

return:                                           ; preds = %if.end10, %if.else3.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %if.else3.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6xxx_smi_dual_direct_read(ptr nocapture noundef readonly %chip, i32 noundef %dev, i32 noundef %reg, ptr nocapture noundef writeonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_addr = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %sw_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sw_addr, align 4
  %add = add i32 %1, %dev
  %bus.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i, align 8
  %call.i = tail call i32 @mdiobus_read_nested(ptr noundef %3, i32 noundef %add, i32 noundef %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.mv88e6xxx_smi_direct_read.exit_crit_edge, label %if.end.i

entry.mv88e6xxx_smi_direct_read.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mv88e6xxx_smi_direct_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i = trunc i32 %call.i to i16
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv.i, ptr %data, align 2
  br label %mv88e6xxx_smi_direct_read.exit

mv88e6xxx_smi_direct_read.exit:                   ; preds = %if.end.i, %entry.mv88e6xxx_smi_direct_read.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %call.i, %entry.mv88e6xxx_smi_direct_read.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6xxx_smi_dual_direct_write(ptr nocapture noundef readonly %chip, i32 noundef %dev, i32 noundef %reg, i16 noundef zeroext %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_addr = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %sw_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sw_addr, align 4
  %add = add i32 %1, %dev
  %bus.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 6
  %2 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i, align 8
  %call.i = tail call i32 @mdiobus_write_nested(ptr noundef %3, i32 noundef %add, i32 noundef %reg, i16 noundef zeroext %data) #4
  %4 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6xxx_smi_direct_read(ptr nocapture noundef readonly %chip, i32 noundef %dev, i32 noundef %reg, ptr nocapture noundef writeonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %call = tail call i32 @mdiobus_read_nested(ptr noundef %1, i32 noundef %dev, i32 noundef %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = trunc i32 %call to i16
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %data, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read_nested(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6xxx_smi_direct_write(ptr nocapture noundef readonly %chip, i32 noundef %dev, i32 noundef %reg, i16 noundef zeroext %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 6
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %call = tail call i32 @mdiobus_write_nested(ptr noundef %1, i32 noundef %dev, i32 noundef %reg, i16 noundef zeroext %data) #4
  %2 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write_nested(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6xxx_smi_indirect_read(ptr nocapture noundef readonly %chip, i32 noundef %dev, i32 noundef %reg, ptr nocapture noundef writeonly %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_addr = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %sw_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sw_addr, align 4
  %bus.i.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end11.i.for.body.i_crit_edge, %entry
  %i.05.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end11.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read_nested(ptr noundef %3, i32 noundef %1, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %for.body.i.cleanup_crit_edge, label %if.end.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  %4 = and i32 %call.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp8.i = icmp eq i32 %4, 0
  br i1 %cmp8.i, label %if.end, label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %if.end11.i.cleanup_crit_edge, label %if.end11.i.for.body.i_crit_edge

if.end11.i.for.body.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %5 = ptrtoint ptr %sw_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sw_addr, align 4
  %shl = shl i32 %dev, 5
  %or = or i32 %shl, %reg
  %7 = trunc i32 %or to i16
  %conv = or i16 %7, -26624
  %8 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i, align 8
  %call.i = tail call i32 @mdiobus_write_nested(ptr noundef %9, i32 noundef %6, i32 noundef 0, i16 noundef zeroext %conv) #4
  %10 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool4.not = icmp sgt i32 %call.i, -1
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %11 = ptrtoint ptr %sw_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sw_addr, align 4
  br label %for.body.i30

for.body.i30:                                     ; preds = %if.end11.i35.for.body.i30_crit_edge, %if.end6
  %i.05.i27 = phi i32 [ 0, %if.end6 ], [ %inc.i33, %if.end11.i35.for.body.i30_crit_edge ]
  %13 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus.i.i, align 8
  %call.i.i28 = tail call i32 @mdiobus_read_nested(ptr noundef %14, i32 noundef %12, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i28)
  %cmp.i.i29 = icmp slt i32 %call.i.i28, 0
  br i1 %cmp.i.i29, label %for.body.i30.cleanup_crit_edge, label %if.end.i32

for.body.i30.cleanup_crit_edge:                   ; preds = %for.body.i30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i32:                                       ; preds = %for.body.i30
  %15 = and i32 %call.i.i28, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp8.i31 = icmp eq i32 %15, 0
  br i1 %cmp8.i31, label %if.end11, label %if.end11.i35

if.end11.i35:                                     ; preds = %if.end.i32
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %inc.i33 = add nuw nsw i32 %i.05.i27, 1
  %exitcond.not.i34 = icmp eq i32 %inc.i33, 16
  br i1 %exitcond.not.i34, label %if.end11.i35.cleanup_crit_edge, label %if.end11.i35.for.body.i30_crit_edge

if.end11.i35.for.body.i30_crit_edge:              ; preds = %if.end11.i35
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i30

if.end11.i35.cleanup_crit_edge:                   ; preds = %if.end11.i35
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end.i32
  %16 = ptrtoint ptr %sw_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sw_addr, align 4
  %18 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i.i, align 8
  %call.i39 = tail call i32 @mdiobus_read_nested(ptr noundef %19, i32 noundef %17, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %cmp.i = icmp slt i32 %call.i39, 0
  br i1 %cmp.i, label %if.end11.cleanup_crit_edge, label %if.end.i40

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i40:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i = trunc i32 %call.i39 to i16
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i, ptr %data, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end.i40, %if.end11.cleanup_crit_edge, %if.end11.i35.cleanup_crit_edge, %for.body.i30.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.end.cleanup_crit_edge ], [ 0, %if.end.i40 ], [ %call.i39, %if.end11.cleanup_crit_edge ], [ -110, %if.end11.i35.cleanup_crit_edge ], [ %call.i.i28, %for.body.i30.cleanup_crit_edge ], [ -110, %if.end11.i.cleanup_crit_edge ], [ %call.i.i, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mv88e6xxx_smi_indirect_write(ptr nocapture noundef readonly %chip, i32 noundef %dev, i32 noundef %reg, i16 noundef zeroext %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sw_addr = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %sw_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sw_addr, align 4
  %bus.i.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end11.i.for.body.i_crit_edge, %entry
  %i.05.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end11.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read_nested(ptr noundef %3, i32 noundef %1, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %for.body.i.cleanup_crit_edge, label %if.end.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %for.body.i
  %4 = and i32 %call.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp8.i = icmp eq i32 %4, 0
  br i1 %cmp8.i, label %if.end, label %if.end11.i

if.end11.i:                                       ; preds = %if.end.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %if.end11.i.cleanup_crit_edge, label %if.end11.i.for.body.i_crit_edge

if.end11.i.for.body.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %5 = ptrtoint ptr %sw_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sw_addr, align 4
  %7 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus.i.i, align 8
  %call.i = tail call i32 @mdiobus_write_nested(ptr noundef %8, i32 noundef %6, i32 noundef 1, i16 noundef zeroext %data) #4
  %9 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool3.not = icmp sgt i32 %call.i, -1
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %10 = ptrtoint ptr %sw_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sw_addr, align 4
  %shl = shl i32 %dev, 5
  %or = or i32 %shl, %reg
  %12 = trunc i32 %or to i16
  %conv = or i16 %12, -27648
  %13 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus.i.i, align 8
  %call.i27 = tail call i32 @mdiobus_write_nested(ptr noundef %14, i32 noundef %11, i32 noundef 0, i16 noundef zeroext %conv) #4
  %15 = tail call i32 @llvm.smin.i32(i32 %call.i27, i32 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i27)
  %tobool9.not = icmp sgt i32 %call.i27, -1
  br i1 %tobool9.not, label %if.end11, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %16 = ptrtoint ptr %sw_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sw_addr, align 4
  br label %for.body.i32

for.body.i32:                                     ; preds = %if.end11.i37.for.body.i32_crit_edge, %if.end11
  %i.05.i29 = phi i32 [ 0, %if.end11 ], [ %inc.i35, %if.end11.i37.for.body.i32_crit_edge ]
  %18 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i.i, align 8
  %call.i.i30 = tail call i32 @mdiobus_read_nested(ptr noundef %19, i32 noundef %17, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i30)
  %cmp.i.i31 = icmp slt i32 %call.i.i30, 0
  br i1 %cmp.i.i31, label %for.body.i32.cleanup_crit_edge, label %if.end.i34

for.body.i32.cleanup_crit_edge:                   ; preds = %for.body.i32
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i34:                                       ; preds = %for.body.i32
  %20 = and i32 %call.i.i30, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp8.i33 = icmp eq i32 %20, 0
  br i1 %cmp8.i33, label %if.end.i34.cleanup_crit_edge, label %if.end11.i37

if.end.i34.cleanup_crit_edge:                     ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11.i37:                                     ; preds = %if.end.i34
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  %inc.i35 = add nuw nsw i32 %i.05.i29, 1
  %exitcond.not.i36 = icmp eq i32 %inc.i35, 16
  br i1 %exitcond.not.i36, label %if.end11.i37.cleanup_crit_edge, label %if.end11.i37.for.body.i32_crit_edge

if.end11.i37.for.body.i32_crit_edge:              ; preds = %if.end11.i37
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i32

if.end11.i37.cleanup_crit_edge:                   ; preds = %if.end11.i37
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11.i37.cleanup_crit_edge, %if.end.i34.cleanup_crit_edge, %for.body.i32.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.end.cleanup_crit_edge ], [ %15, %if.end5.cleanup_crit_edge ], [ %call.i.i30, %for.body.i32.cleanup_crit_edge ], [ -110, %if.end11.i37.cleanup_crit_edge ], [ 0, %if.end.i34.cleanup_crit_edge ], [ -110, %if.end11.i.cleanup_crit_edge ], [ %call.i.i, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @mv88e6xxx_smi_dual_direct_ops, !1, !"mv88e6xxx_smi_dual_direct_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/mv88e6xxx/smi.c", i32 93, i32 39}
!2 = !{ptr @mv88e6xxx_smi_direct_ops, !3, !"mv88e6xxx_smi_direct_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/dsa/mv88e6xxx/smi.c", i32 76, i32 39}
!4 = !{ptr @mv88e6xxx_smi_indirect_ops, !5, !"mv88e6xxx_smi_indirect_ops", i1 false, i1 false}
!5 = !{!"../drivers/net/dsa/mv88e6xxx/smi.c", i32 158, i32 39}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i8 0, i8 2}
