; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/mv88e6xxx/global1.c_pt.bc'
source_filename = "../drivers/net/dsa/mv88e6xxx/global1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mv88e6xxx_g1_wait_eeprom_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 90, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Error reading status\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mv88e6xxx_g1_wait_eeprom_done\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/dsa/mv88e6xxx/global1.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mv88e6xxx_g1_wait_eeprom_done._entry_ptr = internal global ptr @mv88e6xxx_g1_wait_eeprom_done._entry, section ".printk_index", align 4
@mv88e6xxx_g1_wait_eeprom_done._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 106, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Timeout waiting for EEPROM done\00", [32 x i8] zeroinitializer }, align 32
@mv88e6xxx_g1_wait_eeprom_done._entry_ptr.7 = internal global ptr @mv88e6xxx_g1_wait_eeprom_done._entry.5, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 90, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [39 x i8] c"../drivers/net/dsa/mv88e6xxx/global1.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 106, i32 2 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @mv88e6xxx_g1_wait_eeprom_done._entry, ptr @mv88e6xxx_g1_wait_eeprom_done._entry.5, ptr @mv88e6xxx_g1_wait_eeprom_done._entry_ptr, ptr @mv88e6xxx_g1_wait_eeprom_done._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_g1_wait_eeprom_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_g1_wait_eeprom_done._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g1_read(ptr noundef %chip, i32 noundef %reg, ptr noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %global1_addr = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %global1_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %global1_addr, align 4
  %call = tail call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %3, i32 noundef %reg, ptr noundef %val) #4
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g1_write(ptr noundef %chip, i32 noundef %reg, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %global1_addr = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %global1_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %global1_addr, align 4
  %call = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %3, i32 noundef %reg, i16 noundef zeroext %val) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g1_wait_bit(ptr noundef %chip, i32 noundef %reg, i32 noundef %bit, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %global1_addr = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %global1_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %global1_addr, align 4
  %call = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %3, i32 noundef %reg, i32 noundef %bit, i32 noundef %val) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_wait_bit(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g1_wait_mask(ptr noundef %chip, i32 noundef %reg, i16 noundef zeroext %mask, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %global1_addr = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %global1_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %global1_addr, align 4
  %call = tail call i32 @mv88e6xxx_wait_mask(ptr noundef %chip, i32 noundef %3, i32 noundef %reg, i16 noundef zeroext %mask, i16 noundef zeroext %val) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_wait_mask(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mv88e6xxx_g1_wait_eeprom_done(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #4
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %val, align 2, !annotation !21
  %add.neg = sub i32 -100, %0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub15 = add i32 %add.neg, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub15)
  %cmp16 = icmp slt i32 %sub15, 0
  br i1 %cmp16, label %entry.while.body_crit_edge, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end6.while.body_crit_edge, %entry.while.body_crit_edge
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip, align 8
  %global1_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %global1_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %global1_addr.i, align 4
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %6, i32 noundef 0, ptr noundef nonnull %val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %while.body.cleanup.sink.split_crit_edge

while.body.cleanup.sink.split_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end:                                           ; preds = %while.body
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %val, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %8)
  %cmp1.not = icmp eq i16 %8, -1
  %9 = and i16 %8, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool4.not = icmp eq i16 %9, 0
  %or.cond = or i1 %cmp1.not, %tobool4.not
  br i1 %or.cond, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %10
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end6.while.body_crit_edge, label %if.end6.cleanup.sink.split_crit_edge

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

cleanup.sink.split:                               ; preds = %if.end6.cleanup.sink.split_crit_edge, %while.body.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.6.sink = phi ptr [ @.str.6, %entry.cleanup.sink.split_crit_edge ], [ @.str, %while.body.cleanup.sink.split_crit_edge ], [ @.str.6, %if.end6.cleanup.sink.split_crit_edge ]
  %dev10 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %11 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull %.str.6.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g1_set_switch_mac(ptr noundef %chip, ptr nocapture noundef readonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr, align 1
  %conv = zext i8 %1 to i16
  %shl = shl nuw i16 %conv, 8
  %arrayidx1 = getelementptr i8, ptr %addr, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i16
  %or = or i16 %shl, %conv2
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 8
  %global1_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %global1_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %global1_addr.i, align 4
  %call.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %7, i32 noundef 1, i16 noundef zeroext %or) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx4 = getelementptr i8, ptr %addr, i32 2
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %9 to i16
  %shl6 = shl nuw i16 %conv5, 8
  %arrayidx7 = getelementptr i8, ptr %addr, i32 3
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %11 to i16
  %or9 = or i16 %shl6, %conv8
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 8
  %global1_addr.i41 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %global1_addr.i41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %global1_addr.i41, align 4
  %call.i42 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %15, i32 noundef 2, i16 noundef zeroext %or9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %tobool12.not = icmp eq i32 %call.i42, 0
  br i1 %tobool12.not, label %if.end14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx15 = getelementptr i8, ptr %addr, i32 4
  %16 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %17 to i16
  %shl17 = shl nuw i16 %conv16, 8
  %arrayidx18 = getelementptr i8, ptr %addr, i32 5
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %19 to i16
  %or20 = or i16 %shl17, %conv19
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 8
  %global1_addr.i43 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %global1_addr.i43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %global1_addr.i43, align 4
  %call.i44 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %23, i32 noundef 3, i16 noundef zeroext %or20) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i42, %if.end.cleanup_crit_edge ], [ %call.i44, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6185_g1_reset(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !21
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %global1_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %global1_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %global1_addr.i, align 4
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %4, i32 noundef 4, ptr noundef nonnull %val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %val, align 2
  %7 = or i16 %6, -16384
  store i16 %7, ptr %val, align 2
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 8
  %global1_addr.i23 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %global1_addr.i23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %global1_addr.i23, align 4
  %call.i24 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %11, i32 noundef 4, i16 noundef zeroext %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool6.not = icmp eq i32 %call.i24, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 8
  %global1_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %global1_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %global1_addr.i.i, align 4
  %call.i.i = call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %15, i32 noundef 0, i32 noundef 11, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool10.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 8
  %global1_addr.i.i25 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %global1_addr.i.i25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %global1_addr.i.i25, align 4
  %call.i.i26 = call i32 @mv88e6xxx_wait_mask(ptr noundef %chip, i32 noundef %19, i32 noundef 0, i16 noundef zeroext -16384, i16 noundef zeroext -16384) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i26, %if.end12 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i24, %if.end.cleanup_crit_edge ], [ %call.i.i, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6250_g1_reset(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !21
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %global1_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %global1_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %global1_addr.i, align 4
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %4, i32 noundef 4, ptr noundef nonnull %val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %val, align 2
  %7 = or i16 %6, -32768
  store i16 %7, ptr %val, align 2
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 8
  %global1_addr.i13 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %global1_addr.i13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %global1_addr.i13, align 4
  %call.i14 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %11, i32 noundef 4, i16 noundef zeroext %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool3.not = icmp eq i32 %call.i14, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 8
  %global1_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %global1_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %global1_addr.i.i, align 4
  %call.i.i = call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %15, i32 noundef 0, i32 noundef 11, i32 noundef 1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.end5 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i14, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6352_g1_reset(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i) #4
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val.i, align 2, !annotation !21
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %global1_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %global1_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %global1_addr.i.i, align 4
  %call.i.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %4, i32 noundef 4, ptr noundef nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mv88e6250_g1_reset.exit.thread_crit_edge

entry.mv88e6250_g1_reset.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mv88e6250_g1_reset.exit.thread

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %val.i, align 2
  %7 = or i16 %6, -32768
  store i16 %7, ptr %val.i, align 2
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 8
  %global1_addr.i13.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %global1_addr.i13.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %global1_addr.i13.i, align 4
  %call.i14.i = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %11, i32 noundef 4, i16 noundef zeroext %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i)
  %tobool3.not.i = icmp eq i32 %call.i14.i, 0
  br i1 %tobool3.not.i, label %mv88e6250_g1_reset.exit, label %if.end.i.mv88e6250_g1_reset.exit.thread_crit_edge

if.end.i.mv88e6250_g1_reset.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mv88e6250_g1_reset.exit.thread

mv88e6250_g1_reset.exit.thread:                   ; preds = %if.end.i.mv88e6250_g1_reset.exit.thread_crit_edge, %entry.mv88e6250_g1_reset.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i14.i, %if.end.i.mv88e6250_g1_reset.exit.thread_crit_edge ], [ %call.i.i, %entry.mv88e6250_g1_reset.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #4
  br label %cleanup

mv88e6250_g1_reset.exit:                          ; preds = %if.end.i
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 8
  %global1_addr.i.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %global1_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %global1_addr.i.i.i, align 4
  %call.i.i.i = call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %15, i32 noundef 0, i32 noundef 11, i32 noundef 1) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not, label %if.end, label %mv88e6250_g1_reset.exit.cleanup_crit_edge

mv88e6250_g1_reset.exit.cleanup_crit_edge:        ; preds = %mv88e6250_g1_reset.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %mv88e6250_g1_reset.exit
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 8
  %global1_addr.i.i4 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %global1_addr.i.i4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %global1_addr.i.i4, align 4
  %call.i.i5 = call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %19, i32 noundef 0, i32 noundef 15, i32 noundef 1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %mv88e6250_g1_reset.exit.cleanup_crit_edge, %mv88e6250_g1_reset.exit.thread
  %retval.0 = phi i32 [ %call.i.i5, %if.end ], [ %call.i.i.i, %mv88e6250_g1_reset.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %mv88e6250_g1_reset.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6185_g1_ppu_enable(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !21
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %global1_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %global1_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %global1_addr.i, align 4
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %4, i32 noundef 4, ptr noundef nonnull %val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %val, align 2
  %7 = or i16 %6, 16384
  store i16 %7, ptr %val, align 2
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 8
  %global1_addr.i13 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %global1_addr.i13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %global1_addr.i13, align 4
  %call.i14 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %11, i32 noundef 4, i16 noundef zeroext %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool3.not = icmp eq i32 %call.i14, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 8
  %global1_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %global1_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %global1_addr.i.i, align 4
  %call.i.i = call i32 @mv88e6xxx_wait_mask(ptr noundef %chip, i32 noundef %15, i32 noundef 0, i16 noundef zeroext -16384, i16 noundef zeroext -16384) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.end5 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i14, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6185_g1_ppu_disable(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !21
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %global1_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %global1_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %global1_addr.i, align 4
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %4, i32 noundef 4, ptr noundef nonnull %val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %val, align 2
  %7 = and i16 %6, -16385
  store i16 %7, ptr %val, align 2
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 8
  %global1_addr.i13 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %global1_addr.i13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %global1_addr.i13, align 4
  %call.i14 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %11, i32 noundef 4, i16 noundef zeroext %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool3.not = icmp eq i32 %call.i14, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 8
  %global1_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %global1_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %global1_addr.i.i, align 4
  %call.i.i = call i32 @mv88e6xxx_wait_mask(ptr noundef %chip, i32 noundef %15, i32 noundef 0, i16 noundef zeroext -16384, i16 noundef zeroext -32768) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.end5 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i14, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6185_g1_set_max_frame_size(ptr noundef %chip, i32 noundef %mtu) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !21
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %global1_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %global1_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %global1_addr.i, align 4
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %4, i32 noundef 4, ptr noundef nonnull %val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add = add i32 %mtu, 18
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %val, align 2
  %7 = and i16 %6, -1025
  call void @__sanitizer_cov_trace_const_cmp4(i32 1518, i32 %add)
  %cmp = icmp sgt i32 %add, 1518
  %masksel = select i1 %cmp, i16 1024, i16 0
  %spec.select = or i16 %7, %masksel
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %spec.select, ptr %val, align 2
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 8
  %global1_addr.i12 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %global1_addr.i12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %global1_addr.i12, align 4
  %call.i13 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %12, i32 noundef 4, i16 noundef zeroext %spec.select) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i13, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6085_g1_ip_pri_map(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %global1_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %global1_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %global1_addr.i, align 4
  %call.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %3, i32 noundef 16, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 8
  %global1_addr.i51 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %global1_addr.i51 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %global1_addr.i51, align 4
  %call.i52 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %7, i32 noundef 17, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool2.not = icmp eq i32 %call.i52, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 8
  %global1_addr.i53 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %global1_addr.i53 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %global1_addr.i53, align 4
  %call.i54 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %11, i32 noundef 18, i16 noundef zeroext 21845) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool6.not = icmp eq i32 %call.i54, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 8
  %global1_addr.i55 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %global1_addr.i55 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %global1_addr.i55, align 4
  %call.i56 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %15, i32 noundef 19, i16 noundef zeroext 21845) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool10.not = icmp eq i32 %call.i56, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %16 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip, align 8
  %global1_addr.i57 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %global1_addr.i57 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %global1_addr.i57, align 4
  %call.i58 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %19, i32 noundef 20, i16 noundef zeroext -21846) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool14.not = icmp eq i32 %call.i58, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %20 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chip, align 8
  %global1_addr.i59 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %global1_addr.i59 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %global1_addr.i59, align 4
  %call.i60 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %23, i32 noundef 21, i16 noundef zeroext -21846) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool18.not = icmp eq i32 %call.i60, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %24 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chip, align 8
  %global1_addr.i61 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %global1_addr.i61 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %global1_addr.i61, align 4
  %call.i62 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %27, i32 noundef 22, i16 noundef zeroext -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %tobool22.not = icmp eq i32 %call.i62, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip, align 8
  %global1_addr.i63 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %global1_addr.i63 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %global1_addr.i63, align 4
  %call.i64 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %31, i32 noundef 23, i16 noundef zeroext -1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call.i52, %if.end.cleanup_crit_edge ], [ %call.i54, %if.end4.cleanup_crit_edge ], [ %call.i56, %if.end8.cleanup_crit_edge ], [ %call.i58, %if.end12.cleanup_crit_edge ], [ %call.i60, %if.end16.cleanup_crit_edge ], [ %call.i62, %if.end20.cleanup_crit_edge ], [ %call.i64, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6085_g1_ieee_pri_map(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %global1_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %global1_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %global1_addr.i, align 4
  %call.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %3, i32 noundef 24, i16 noundef zeroext -1471) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6250_g1_ieee_pri_map(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %global1_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %global1_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %global1_addr.i, align 4
  %call.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %3, i32 noundef 24, i16 noundef zeroext -1456) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6095_g1_set_egress_port(ptr noundef %chip, i32 noundef %direction, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !21
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %global1_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %global1_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %global1_addr.i, align 4
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %4, i32 noundef 26, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %direction, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %reg, align 2
  %8 = and i16 %7, 4095
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %reg, align 2
  %11 = and i16 %10, -3841
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb
  %.sink21 = phi i16 [ 8, %sw.bb4 ], [ 12, %sw.bb ]
  %.sink = phi i16 [ %11, %sw.bb4 ], [ %8, %sw.bb ]
  %port.tr = trunc i32 %port to i16
  %12 = shl i16 %port.tr, %.sink21
  %conv11 = or i16 %.sink, %12
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv11, ptr %reg, align 2
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 8
  %global1_addr.i18 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %global1_addr.i18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %global1_addr.i18, align 4
  %call.i19 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %17, i32 noundef 26, i16 noundef zeroext %conv11) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i19, %sw.epilog ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6095_g1_set_cpu_port(ptr noundef %chip, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !21
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %global1_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %global1_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %global1_addr.i, align 4
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %4, i32 noundef 26, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg, align 2
  %7 = and i16 %6, -241
  %port.tr = trunc i32 %port to i16
  %8 = shl i16 %port.tr, 4
  %conv3 = or i16 %7, %8
  store i16 %conv3, ptr %reg, align 2
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 8
  %global1_addr.i8 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %global1_addr.i8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %global1_addr.i8, align 4
  %call.i9 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %12, i32 noundef 26, i16 noundef zeroext %conv3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i9, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6390_g1_set_egress_port(ptr noundef %chip, i32 noundef %direction, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %direction, label %entry.cleanup_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %ptr.0 = phi i16 [ 8448, %sw.bb1 ], [ 8192, %entry.sw.epilog_crit_edge ]
  %1 = trunc i32 %port to i16
  %conv1.i = and i16 %1, 255
  %2 = or i16 %conv1.i, %ptr.0
  %or2.i = or i16 %2, -32768
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip, align 8
  %global1_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %global1_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %global1_addr.i.i, align 4
  %call.i.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %6, i32 noundef 26, i16 noundef zeroext %or2.i) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6390_g1_set_cpu_port(ptr noundef %chip, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %port to i16
  %conv1.i = and i16 %0, 31
  %or2.i = or i16 %conv1.i, -20256
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %global1_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %global1_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %global1_addr.i.i, align 4
  %call.i.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %4, i32 noundef 26, i16 noundef zeroext %or2.i) #4
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6390_g1_mgmt_rsvd2cpu(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %global1_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %global1_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %global1_addr.i.i, align 4
  %call.i.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %3, i32 noundef 26, i16 noundef zeroext -32513) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 8
  %global1_addr.i.i27 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %global1_addr.i.i27 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %global1_addr.i.i27, align 4
  %call.i.i28 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %7, i32 noundef 26, i16 noundef zeroext -32257) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i28)
  %tobool2.not = icmp eq i32 %call.i.i28, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 8
  %global1_addr.i.i29 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %global1_addr.i.i29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %global1_addr.i.i29, align 4
  %call.i.i30 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %11, i32 noundef 26, i16 noundef zeroext -32001) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i30)
  %tobool6.not = icmp eq i32 %call.i.i30, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 8
  %global1_addr.i.i31 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %global1_addr.i.i31 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %global1_addr.i.i31, align 4
  %call.i.i32 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %15, i32 noundef 26, i16 noundef zeroext -31745) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %entry.cleanup_crit_edge ], [ %call.i.i28, %if.end.cleanup_crit_edge ], [ %call.i.i30, %if.end4.cleanup_crit_edge ], [ %call.i.i32, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6185_g1_set_cascade_port(ptr noundef %chip, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #4
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg.i, align 2, !annotation !21
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %global1_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %global1_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %global1_addr.i.i, align 4
  %call.i.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %4, i32 noundef 28, ptr noundef nonnull %reg.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mv88e6xxx_g1_ctl2_mask.exit_crit_edge

entry.mv88e6xxx_g1_ctl2_mask.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mv88e6xxx_g1_ctl2_mask.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %port.tr = trunc i32 %port to i16
  %conv = shl i16 %port.tr, 12
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg.i, align 2
  %and.i = and i16 %6, 4095
  %or14.i = or i16 %and.i, %conv
  store i16 %or14.i, ptr %reg.i, align 2
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 8
  %global1_addr.i15.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %global1_addr.i15.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %global1_addr.i15.i, align 4
  %call.i16.i = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %10, i32 noundef 28, i16 noundef zeroext %or14.i) #4
  br label %mv88e6xxx_g1_ctl2_mask.exit

mv88e6xxx_g1_ctl2_mask.exit:                      ; preds = %if.end.i, %entry.mv88e6xxx_g1_ctl2_mask.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i16.i, %if.end.i ], [ %call.i.i, %entry.mv88e6xxx_g1_ctl2_mask.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #4
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6085_g1_rmu_disable(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #4
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg.i, align 2, !annotation !21
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %global1_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %global1_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %global1_addr.i.i, align 4
  %call.i.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %4, i32 noundef 28, ptr noundef nonnull %reg.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mv88e6xxx_g1_ctl2_mask.exit_crit_edge

entry.mv88e6xxx_g1_ctl2_mask.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mv88e6xxx_g1_ctl2_mask.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg.i, align 2
  %and.i = and i16 %6, -12289
  store i16 %and.i, ptr %reg.i, align 2
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 8
  %global1_addr.i15.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %global1_addr.i15.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %global1_addr.i15.i, align 4
  %call.i16.i = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %10, i32 noundef 28, i16 noundef zeroext %and.i) #4
  br label %mv88e6xxx_g1_ctl2_mask.exit

mv88e6xxx_g1_ctl2_mask.exit:                      ; preds = %if.end.i, %entry.mv88e6xxx_g1_ctl2_mask.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i16.i, %if.end.i ], [ %call.i.i, %entry.mv88e6xxx_g1_ctl2_mask.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #4
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6352_g1_rmu_disable(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #4
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg.i, align 2, !annotation !21
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %global1_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %global1_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %global1_addr.i.i, align 4
  %call.i.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %4, i32 noundef 28, ptr noundef nonnull %reg.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mv88e6xxx_g1_ctl2_mask.exit_crit_edge

entry.mv88e6xxx_g1_ctl2_mask.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mv88e6xxx_g1_ctl2_mask.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg.i, align 2
  %and.i = and i16 %6, -12289
  store i16 %and.i, ptr %reg.i, align 2
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 8
  %global1_addr.i15.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %global1_addr.i15.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %global1_addr.i15.i, align 4
  %call.i16.i = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %10, i32 noundef 28, i16 noundef zeroext %and.i) #4
  br label %mv88e6xxx_g1_ctl2_mask.exit

mv88e6xxx_g1_ctl2_mask.exit:                      ; preds = %if.end.i, %entry.mv88e6xxx_g1_ctl2_mask.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i16.i, %if.end.i ], [ %call.i.i, %entry.mv88e6xxx_g1_ctl2_mask.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #4
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6390_g1_rmu_disable(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #4
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg.i, align 2, !annotation !21
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %global1_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %global1_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %global1_addr.i.i, align 4
  %call.i.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %4, i32 noundef 28, ptr noundef nonnull %reg.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mv88e6xxx_g1_ctl2_mask.exit_crit_edge

entry.mv88e6xxx_g1_ctl2_mask.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mv88e6xxx_g1_ctl2_mask.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg.i, align 2
  %or14.i = or i16 %6, 1792
  store i16 %or14.i, ptr %reg.i, align 2
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 8
  %global1_addr.i15.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %global1_addr.i15.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %global1_addr.i15.i, align 4
  %call.i16.i = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %10, i32 noundef 28, i16 noundef zeroext %or14.i) #4
  br label %mv88e6xxx_g1_ctl2_mask.exit

mv88e6xxx_g1_ctl2_mask.exit:                      ; preds = %if.end.i, %entry.mv88e6xxx_g1_ctl2_mask.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i16.i, %if.end.i ], [ %call.i.i, %entry.mv88e6xxx_g1_ctl2_mask.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #4
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6390_g1_stats_set_histogram(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #4
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg.i, align 2, !annotation !21
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %global1_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %global1_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %global1_addr.i.i, align 4
  %call.i.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %4, i32 noundef 28, ptr noundef nonnull %reg.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mv88e6xxx_g1_ctl2_mask.exit_crit_edge

entry.mv88e6xxx_g1_ctl2_mask.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mv88e6xxx_g1_ctl2_mask.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg.i, align 2
  %or14.i = or i16 %6, 192
  store i16 %or14.i, ptr %reg.i, align 2
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 8
  %global1_addr.i15.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %global1_addr.i15.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %global1_addr.i15.i, align 4
  %call.i16.i = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %10, i32 noundef 28, i16 noundef zeroext %or14.i) #4
  br label %mv88e6xxx_g1_ctl2_mask.exit

mv88e6xxx_g1_ctl2_mask.exit:                      ; preds = %if.end.i, %entry.mv88e6xxx_g1_ctl2_mask.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i16.i, %if.end.i ], [ %call.i.i, %entry.mv88e6xxx_g1_ctl2_mask.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #4
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g1_set_device_number(ptr noundef %chip, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  %reg.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg.i) #4
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg.i, align 2, !annotation !21
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %global1_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %global1_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %global1_addr.i.i, align 4
  %call.i.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %4, i32 noundef 28, ptr noundef nonnull %reg.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mv88e6xxx_g1_ctl2_mask.exit_crit_edge

entry.mv88e6xxx_g1_ctl2_mask.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mv88e6xxx_g1_ctl2_mask.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = trunc i32 %index to i16
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %reg.i, align 2
  %and.i = and i16 %6, -32
  %and513.i = and i16 %conv, 31
  %or14.i = or i16 %and.i, %and513.i
  store i16 %or14.i, ptr %reg.i, align 2
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 8
  %global1_addr.i15.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %global1_addr.i15.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %global1_addr.i15.i, align 4
  %call.i16.i = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %10, i32 noundef 28, i16 noundef zeroext %or14.i) #4
  br label %mv88e6xxx_g1_ctl2_mask.exit

mv88e6xxx_g1_ctl2_mask.exit:                      ; preds = %if.end.i, %entry.mv88e6xxx_g1_ctl2_mask.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i16.i, %if.end.i ], [ %call.i.i, %entry.mv88e6xxx_g1_ctl2_mask.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg.i) #4
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6095_g1_stats_set_histogram(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !21
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %global1_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %global1_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %global1_addr.i, align 4
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %4, i32 noundef 29, ptr noundef nonnull %val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %val, align 2
  %7 = or i16 %6, 3072
  store i16 %7, ptr %val, align 2
  %8 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chip, align 8
  %global1_addr.i7 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %global1_addr.i7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %global1_addr.i7, align 4
  %call.i8 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %11, i32 noundef 29, i16 noundef zeroext %7) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i8, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g1_stats_snapshot(ptr noundef %chip, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = trunc i32 %port to i16
  %conv = or i16 %0, -9216
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %global1_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %global1_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %global1_addr.i, align 4
  %call.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %4, i32 noundef 29, i16 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 8
  %global1_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %global1_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %global1_addr.i.i, align 4
  %call.i.i = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %8, i32 noundef 29, i32 noundef 15, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6320_g1_stats_snapshot(ptr noundef %chip, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port.tr = trunc i32 %port to i16
  %0 = shl i16 %port.tr, 5
  %1 = add i16 %0, 32
  %conv.i = or i16 %1, -9216
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 8
  %global1_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %global1_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %global1_addr.i.i, align 4
  %call.i.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %5, i32 noundef 29, i16 noundef zeroext %conv.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mv88e6xxx_g1_stats_snapshot.exit_crit_edge

entry.mv88e6xxx_g1_stats_snapshot.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mv88e6xxx_g1_stats_snapshot.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 8
  %global1_addr.i.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %global1_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %global1_addr.i.i.i, align 4
  %call.i.i.i = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %9, i32 noundef 29, i32 noundef 15, i32 noundef 0) #4
  br label %mv88e6xxx_g1_stats_snapshot.exit

mv88e6xxx_g1_stats_snapshot.exit:                 ; preds = %if.end.i, %entry.mv88e6xxx_g1_stats_snapshot.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i.i, %if.end.i ], [ %call.i.i, %entry.mv88e6xxx_g1_stats_snapshot.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6390_g1_stats_snapshot(ptr noundef %chip, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port.tr = trunc i32 %port to i16
  %0 = shl i16 %port.tr, 5
  %1 = add i16 %0, 32
  %conv = or i16 %1, -12288
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 8
  %global1_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %global1_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %global1_addr.i, align 4
  %call.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %5, i32 noundef 29, i16 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 8
  %global1_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %global1_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %global1_addr.i.i, align 4
  %call.i.i = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %9, i32 noundef 29, i32 noundef 15, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mv88e6xxx_g1_stats_read(ptr noundef %chip, i32 noundef %stat, ptr nocapture noundef writeonly %val) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %reg) #4
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %reg, align 2, !annotation !21
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %val, align 4
  %2 = trunc i32 %stat to i16
  %conv = or i16 %2, -16384
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip, align 8
  %global1_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %global1_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %global1_addr.i, align 4
  %call.i = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %6, i32 noundef 29, i16 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip, align 8
  %global1_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %global1_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %global1_addr.i.i, align 4
  %call.i.i = tail call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %10, i32 noundef 29, i32 noundef 15, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool2.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 8
  %global1_addr.i25 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %global1_addr.i25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %global1_addr.i25, align 4
  %call.i26 = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %14, i32 noundef 30, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool6.not = icmp eq i32 %call.i26, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %reg, align 2
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 8
  %global1_addr.i27 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %global1_addr.i27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %global1_addr.i27, align 4
  %call.i28 = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %20, i32 noundef 31, ptr noundef nonnull %reg) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool11.not = icmp eq i32 %call.i28, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %conv9 = zext i16 %16 to i32
  %shl = shl nuw i32 %conv9, 16
  %21 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %reg, align 2
  %conv14 = zext i16 %22 to i32
  %or15 = or i32 %shl, %conv14
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or15, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %reg) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_g1_stats_clear(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !21
  %1 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip, align 8
  %global1_addr.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %global1_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %global1_addr.i, align 4
  %call.i = call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %4, i32 noundef 29, ptr noundef nonnull %val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %val, align 2
  %7 = and i16 %6, 3072
  %8 = or i16 %7, -28672
  store i16 %8, ptr %val, align 2
  %9 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chip, align 8
  %global1_addr.i15 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %global1_addr.i15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %global1_addr.i15, align 4
  %call.i16 = call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %12, i32 noundef 29, i16 noundef zeroext %8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool5.not = icmp eq i32 %call.i16, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip, align 8
  %global1_addr.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %global1_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %global1_addr.i.i, align 4
  %call.i.i = call i32 @mv88e6xxx_wait_bit(ptr noundef %chip, i32 noundef %16, i32 noundef 29, i32 noundef 15, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %if.end7 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i16, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/mv88e6xxx/global1.c", i32 90, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mv88e6xxx_g1_wait_eeprom_done._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mv88e6xxx_g1_wait_eeprom_done._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/dsa/mv88e6xxx/global1.c", i32 106, i32 2}
!10 = !{ptr @mv88e6xxx_g1_wait_eeprom_done._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @mv88e6xxx_g1_wait_eeprom_done._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"auto-init"}
