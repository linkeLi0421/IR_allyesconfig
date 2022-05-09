; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/mv88e6xxx/phy.c_pt.bc'
source_filename = "../drivers/net/dsa/mv88e6xxx/phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mv88e6xxx_info = type { i32, i16, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, i32, i8, ptr, i8 }
%struct.mv88e6xxx_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mv88e6xxx_chip = type { ptr, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, ptr, %struct.mutex, i32, %struct.work_struct, %struct.timer_list, %struct.mutex, ptr, i32, %struct.list_head, %struct.idr, %struct.mv88e6xxx_irq, %struct.mv88e6xxx_irq, i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], i32, [64 x i8], ptr, %struct.kthread_delayed_work, [2 x i8], %struct.cyclecounter, %struct.timecounter, %struct.delayed_work, ptr, %struct.ptp_clock_info, %struct.delayed_work, [16 x %struct.ptp_pin_desc], i16, i16, i16, i32, i32, [12 x %struct.mv88e6xxx_port_hwtstamp], [12 x %struct.mv88e6xxx_port], [5 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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

@mv88e6xxx_phy_page_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 75, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to restore PHY %d page Copper (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mv88e6xxx_phy_page_put\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/net/dsa/mv88e6xxx/phy.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mv88e6xxx_phy_page_put._entry_ptr = internal global ptr @mv88e6xxx_phy_page_put._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mv88e6xxx_phy_ppu_state_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&chip->ppu_mutex\00", [47 x i8] zeroinitializer }, align 32
@mv88e6xxx_phy_ppu_state_init.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&chip->ppu_work)\00", [61 x i8] zeroinitializer }, align 32
@mv88e6xxx_phy_ppu_state_init.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&chip->ppu_timer)\00", [45 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.10 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 73, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 193, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 194, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [35 x i8] c"../drivers/net/dsa/mv88e6xxx/phy.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 195, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @mv88e6xxx_phy_page_put._entry, ptr @mv88e6xxx_phy_page_put._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mv88e6xxx_phy_ppu_state_init.__key, ptr @.str.5, ptr @mv88e6xxx_phy_ppu_state_init.__key.6, ptr @.str.7, ptr @mv88e6xxx_phy_ppu_state_init.__key.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_phy_page_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_phy_ppu_state_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_phy_ppu_state_init.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv88e6xxx_phy_ppu_state_init.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6165_phy_read(ptr noundef %chip, ptr nocapture noundef readnone %bus, i32 noundef %addr, i32 noundef %reg, ptr noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %addr, i32 noundef %reg, ptr noundef %val) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_read(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6165_phy_write(ptr noundef %chip, ptr nocapture noundef readnone %bus, i32 noundef %addr, i32 noundef %reg, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %addr, i32 noundef %reg, i16 noundef zeroext %val) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mv88e6xxx_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_phy_read(ptr noundef %chip, i32 noundef %phy, i32 noundef %reg, ptr noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mv88e6xxx_default_mdio_bus(ptr noundef %chip) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %ops = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %phy_read = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %phy_read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_read, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call7 = tail call i32 %5(ptr noundef %chip, ptr noundef nonnull %call, i32 noundef %phy, i32 noundef %reg, ptr noundef %val) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end3 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mv88e6xxx_default_mdio_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_phy_write(ptr noundef %chip, i32 noundef %phy, i32 noundef %reg, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mv88e6xxx_default_mdio_bus(ptr noundef %chip) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %ops = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %phy_write = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %phy_write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_write, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call7 = tail call i32 %5(ptr noundef %chip, ptr noundef nonnull %call, i32 noundef %phy, i32 noundef %reg, i16 noundef zeroext %val) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end3 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_phy_page_read(ptr noundef %chip, i32 noundef %phy, i8 noundef zeroext %page, i32 noundef %reg, ptr noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %reg)
  %cmp = icmp eq i32 %reg, 22
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv.i = zext i8 %page to i16
  %call.i.i = tail call ptr @mv88e6xxx_default_mdio_bus(ptr noundef %chip) #3
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.cleanup_crit_edge, label %if.end.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %ops.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i.i, align 4
  %phy_write.i.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %phy_write.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_write.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %mv88e6xxx_phy_page_get.exit

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

mv88e6xxx_phy_page_get.exit:                      ; preds = %if.end.i.i
  %call7.i.i = tail call i32 %5(ptr noundef %chip, ptr noundef nonnull %call.i.i, i32 noundef %phy, i32 noundef 22, i16 noundef zeroext %conv.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool.not = icmp eq i32 %call7.i.i, 0
  br i1 %tobool.not, label %if.then1, label %mv88e6xxx_phy_page_get.exit.cleanup_crit_edge

mv88e6xxx_phy_page_get.exit.cleanup_crit_edge:    ; preds = %mv88e6xxx_phy_page_get.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then1:                                         ; preds = %mv88e6xxx_phy_page_get.exit
  %call.i = tail call ptr @mv88e6xxx_default_mdio_bus(ptr noundef %chip) #3
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then1.mv88e6xxx_phy_read.exit_crit_edge, label %if.end.i

if.then1.mv88e6xxx_phy_read.exit_crit_edge:       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #5
  br label %mv88e6xxx_phy_read.exit

if.end.i:                                         ; preds = %if.then1
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 8
  %ops.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %phy_read.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %phy_read.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_read.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %if.end.i.mv88e6xxx_phy_read.exit_crit_edge, label %if.end3.i

if.end.i.mv88e6xxx_phy_read.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %mv88e6xxx_phy_read.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %call7.i = tail call i32 %11(ptr noundef %chip, ptr noundef nonnull %call.i, i32 noundef %phy, i32 noundef %reg, ptr noundef %val) #3
  br label %mv88e6xxx_phy_read.exit

mv88e6xxx_phy_read.exit:                          ; preds = %if.end3.i, %if.end.i.mv88e6xxx_phy_read.exit_crit_edge, %if.then1.mv88e6xxx_phy_read.exit_crit_edge
  %retval.0.i = phi i32 [ %call7.i, %if.end3.i ], [ -95, %if.then1.mv88e6xxx_phy_read.exit_crit_edge ], [ -95, %if.end.i.mv88e6xxx_phy_read.exit_crit_edge ]
  %call.i.i10 = tail call ptr @mv88e6xxx_default_mdio_bus(ptr noundef %chip) #3
  %tobool.not.i.i11 = icmp eq ptr %call.i.i10, null
  br i1 %tobool.not.i.i11, label %mv88e6xxx_phy_read.exit.do.end.i_crit_edge, label %if.end.i.i15

mv88e6xxx_phy_read.exit.do.end.i_crit_edge:       ; preds = %mv88e6xxx_phy_read.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

if.end.i.i15:                                     ; preds = %mv88e6xxx_phy_read.exit
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 8
  %ops.i.i12 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %ops.i.i12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i.i12, align 4
  %phy_write.i.i13 = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %phy_write.i.i13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy_write.i.i13, align 4
  %tobool1.not.i.i14 = icmp eq ptr %17, null
  br i1 %tobool1.not.i.i14, label %if.end.i.i15.do.end.i_crit_edge, label %mv88e6xxx_phy_write.exit.i

if.end.i.i15.do.end.i_crit_edge:                  ; preds = %if.end.i.i15
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

mv88e6xxx_phy_write.exit.i:                       ; preds = %if.end.i.i15
  %call7.i.i16 = tail call i32 %17(ptr noundef %chip, ptr noundef nonnull %call.i.i10, i32 noundef %phy, i32 noundef 22, i16 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i16)
  %tobool.not.i17 = icmp eq i32 %call7.i.i16, 0
  br i1 %tobool.not.i17, label %mv88e6xxx_phy_write.exit.i.cleanup_crit_edge, label %mv88e6xxx_phy_write.exit.i.do.end.i_crit_edge, !prof !26

mv88e6xxx_phy_write.exit.i.do.end.i_crit_edge:    ; preds = %mv88e6xxx_phy_write.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

mv88e6xxx_phy_write.exit.i.cleanup_crit_edge:     ; preds = %mv88e6xxx_phy_write.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end.i:                                         ; preds = %mv88e6xxx_phy_write.exit.i.do.end.i_crit_edge, %if.end.i.i15.do.end.i_crit_edge, %mv88e6xxx_phy_read.exit.do.end.i_crit_edge
  %retval.0.i8.i = phi i32 [ %call7.i.i16, %mv88e6xxx_phy_write.exit.i.do.end.i_crit_edge ], [ -95, %mv88e6xxx_phy_read.exit.do.end.i_crit_edge ], [ -95, %if.end.i.i15.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str, i32 noundef %phy, i32 noundef %retval.0.i8.i) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %mv88e6xxx_phy_write.exit.i.cleanup_crit_edge, %mv88e6xxx_phy_page_get.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call7.i.i, %mv88e6xxx_phy_page_get.exit.cleanup_crit_edge ], [ %retval.0.i, %mv88e6xxx_phy_write.exit.i.cleanup_crit_edge ], [ %retval.0.i, %do.end.i ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %if.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_phy_page_write(ptr noundef %chip, i32 noundef %phy, i8 noundef zeroext %page, i32 noundef %reg, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %reg)
  %cmp = icmp eq i32 %reg, 22
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv.i = zext i8 %page to i16
  %call.i.i = tail call ptr @mv88e6xxx_default_mdio_bus(ptr noundef %chip) #3
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.cleanup_crit_edge, label %if.end.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %ops.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i.i, align 4
  %phy_write.i.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %phy_write.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_write.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %mv88e6xxx_phy_page_get.exit

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

mv88e6xxx_phy_page_get.exit:                      ; preds = %if.end.i.i
  %call7.i.i = tail call i32 %5(ptr noundef %chip, ptr noundef nonnull %call.i.i, i32 noundef %phy, i32 noundef 22, i16 noundef zeroext %conv.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool.not = icmp eq i32 %call7.i.i, 0
  br i1 %tobool.not, label %if.then1, label %mv88e6xxx_phy_page_get.exit.cleanup_crit_edge

mv88e6xxx_phy_page_get.exit.cleanup_crit_edge:    ; preds = %mv88e6xxx_phy_page_get.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then1:                                         ; preds = %mv88e6xxx_phy_page_get.exit
  %call.i = tail call ptr @mv88e6xxx_default_mdio_bus(ptr noundef %chip) #3
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then1.if.end6_crit_edge, label %if.end.i

if.then1.if.end6_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.end.i:                                         ; preds = %if.then1
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 8
  %ops.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %phy_write.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %phy_write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy_write.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %if.end.i.if.end6_crit_edge, label %mv88e6xxx_phy_write.exit

if.end.i.if.end6_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

mv88e6xxx_phy_write.exit:                         ; preds = %if.end.i
  %call7.i = tail call i32 %11(ptr noundef %chip, ptr noundef nonnull %call.i, i32 noundef %phy, i32 noundef 22, i16 noundef zeroext %conv.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool3.not = icmp eq i32 %call7.i, 0
  br i1 %tobool3.not, label %if.then4, label %mv88e6xxx_phy_write.exit.if.end6_crit_edge

mv88e6xxx_phy_write.exit.if.end6_crit_edge:       ; preds = %mv88e6xxx_phy_write.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.then4:                                         ; preds = %mv88e6xxx_phy_write.exit
  %call.i18 = tail call ptr @mv88e6xxx_default_mdio_bus(ptr noundef %chip) #3
  %tobool.not.i19 = icmp eq ptr %call.i18, null
  br i1 %tobool.not.i19, label %if.then4.if.end6_crit_edge, label %if.end.i23

if.then4.if.end6_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.end.i23:                                       ; preds = %if.then4
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 8
  %ops.i20 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %13, i32 0, i32 22
  %14 = ptrtoint ptr %ops.i20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i20, align 4
  %phy_write.i21 = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %phy_write.i21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy_write.i21, align 4
  %tobool1.not.i22 = icmp eq ptr %17, null
  br i1 %tobool1.not.i22, label %if.end.i23.if.end6_crit_edge, label %if.end3.i25

if.end.i23.if.end6_crit_edge:                     ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.end3.i25:                                      ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #5
  %call7.i24 = tail call i32 %17(ptr noundef %chip, ptr noundef nonnull %call.i18, i32 noundef %phy, i32 noundef %reg, i16 noundef zeroext %val) #3
  br label %if.end6

if.end6:                                          ; preds = %if.end3.i25, %if.end.i23.if.end6_crit_edge, %if.then4.if.end6_crit_edge, %mv88e6xxx_phy_write.exit.if.end6_crit_edge, %if.end.i.if.end6_crit_edge, %if.then1.if.end6_crit_edge
  %err.0 = phi i32 [ %call7.i, %mv88e6xxx_phy_write.exit.if.end6_crit_edge ], [ %call7.i24, %if.end3.i25 ], [ -95, %if.then4.if.end6_crit_edge ], [ -95, %if.end.i23.if.end6_crit_edge ], [ -95, %if.then1.if.end6_crit_edge ], [ -95, %if.end.i.if.end6_crit_edge ]
  %call.i.i28 = tail call ptr @mv88e6xxx_default_mdio_bus(ptr noundef %chip) #3
  %tobool.not.i.i29 = icmp eq ptr %call.i.i28, null
  br i1 %tobool.not.i.i29, label %if.end6.do.end.i_crit_edge, label %if.end.i.i33

if.end6.do.end.i_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

if.end.i.i33:                                     ; preds = %if.end6
  %18 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chip, align 8
  %ops.i.i30 = getelementptr inbounds %struct.mv88e6xxx_info, ptr %19, i32 0, i32 22
  %20 = ptrtoint ptr %ops.i.i30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ops.i.i30, align 4
  %phy_write.i.i31 = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %phy_write.i.i31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy_write.i.i31, align 4
  %tobool1.not.i.i32 = icmp eq ptr %23, null
  br i1 %tobool1.not.i.i32, label %if.end.i.i33.do.end.i_crit_edge, label %mv88e6xxx_phy_write.exit.i

if.end.i.i33.do.end.i_crit_edge:                  ; preds = %if.end.i.i33
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

mv88e6xxx_phy_write.exit.i:                       ; preds = %if.end.i.i33
  %call7.i.i34 = tail call i32 %23(ptr noundef %chip, ptr noundef nonnull %call.i.i28, i32 noundef %phy, i32 noundef 22, i16 noundef zeroext 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i34)
  %tobool.not.i35 = icmp eq i32 %call7.i.i34, 0
  br i1 %tobool.not.i35, label %mv88e6xxx_phy_write.exit.i.cleanup_crit_edge, label %mv88e6xxx_phy_write.exit.i.do.end.i_crit_edge, !prof !26

mv88e6xxx_phy_write.exit.i.do.end.i_crit_edge:    ; preds = %mv88e6xxx_phy_write.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end.i

mv88e6xxx_phy_write.exit.i.cleanup_crit_edge:     ; preds = %mv88e6xxx_phy_write.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end.i:                                         ; preds = %mv88e6xxx_phy_write.exit.i.do.end.i_crit_edge, %if.end.i.i33.do.end.i_crit_edge, %if.end6.do.end.i_crit_edge
  %retval.0.i8.i = phi i32 [ %call7.i.i34, %mv88e6xxx_phy_write.exit.i.do.end.i_crit_edge ], [ -95, %if.end6.do.end.i_crit_edge ], [ -95, %if.end.i.i33.do.end.i_crit_edge ]
  %dev.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 3
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str, i32 noundef %phy, i32 noundef %retval.0.i8.i) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %mv88e6xxx_phy_write.exit.i.cleanup_crit_edge, %mv88e6xxx_phy_page_get.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call7.i.i, %mv88e6xxx_phy_page_get.exit.cleanup_crit_edge ], [ %err.0, %mv88e6xxx_phy_write.exit.i.cleanup_crit_edge ], [ %err.0, %do.end.i ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %if.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6185_phy_ppu_read(ptr noundef %chip, ptr nocapture noundef readnone %bus, i32 noundef %addr, i32 noundef %reg, ptr noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ppu_mutex.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %ppu_mutex.i, i32 noundef 0) #3
  %ppu_disabled.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 10
  %0 = ptrtoint ptr %ppu_disabled.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ppu_disabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %mv88e6xxx_phy_ppu_access_get.exit.thread

if.then.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 8
  %ops.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %ppu_disable.i.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %ppu_disable.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppu_disable.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %mv88e6xxx_phy_ppu_access_get.exit.thread12, label %mv88e6xxx_phy_ppu_disable.exit.i

mv88e6xxx_phy_ppu_access_get.exit.thread12:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %ppu_disabled.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %ppu_disabled.i, align 8
  br label %if.then

mv88e6xxx_phy_ppu_disable.exit.i:                 ; preds = %if.then.i
  %call.i.i = tail call i32 %7(ptr noundef %chip) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %mv88e6xxx_phy_ppu_disable.exit.i.if.end.sink.split_crit_edge, label %mv88e6xxx_phy_ppu_access_get.exit

mv88e6xxx_phy_ppu_disable.exit.i.if.end.sink.split_crit_edge: ; preds = %mv88e6xxx_phy_ppu_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.sink.split

mv88e6xxx_phy_ppu_access_get.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ppu_timer.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 12
  %call4.i = tail call i32 @del_timer(ptr noundef %ppu_timer.i) #3
  br label %if.then

mv88e6xxx_phy_ppu_access_get.exit:                ; preds = %mv88e6xxx_phy_ppu_disable.exit.i
  %9 = ptrtoint ptr %ppu_disabled.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ppu_disabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %mv88e6xxx_phy_ppu_access_get.exit.if.then_crit_edge, label %mv88e6xxx_phy_ppu_access_get.exit.if.end_crit_edge

mv88e6xxx_phy_ppu_access_get.exit.if.end_crit_edge: ; preds = %mv88e6xxx_phy_ppu_access_get.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

mv88e6xxx_phy_ppu_access_get.exit.if.then_crit_edge: ; preds = %mv88e6xxx_phy_ppu_access_get.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %mv88e6xxx_phy_ppu_access_get.exit.if.then_crit_edge, %mv88e6xxx_phy_ppu_access_get.exit.thread, %mv88e6xxx_phy_ppu_access_get.exit.thread12
  %call1 = tail call i32 @mv88e6xxx_read(ptr noundef %chip, i32 noundef %addr, i32 noundef %reg, ptr noundef %val) #3
  %ppu_timer.i5 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %10, 1
  %call1.i = tail call i32 @mod_timer(ptr noundef %ppu_timer.i5, i32 noundef %add.i) #3
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.then, %mv88e6xxx_phy_ppu_disable.exit.i.if.end.sink.split_crit_edge
  %err.0.ph = phi i32 [ %call1, %if.then ], [ %call.i.i, %mv88e6xxx_phy_ppu_disable.exit.i.if.end.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ppu_mutex.i) #3
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %mv88e6xxx_phy_ppu_access_get.exit.if.end_crit_edge
  %err.0 = phi i32 [ %call.i.i, %mv88e6xxx_phy_ppu_access_get.exit.if.end_crit_edge ], [ %err.0.ph, %if.end.sink.split ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6185_phy_ppu_write(ptr noundef %chip, ptr nocapture noundef readnone %bus, i32 noundef %addr, i32 noundef %reg, i16 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ppu_mutex.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %ppu_mutex.i, i32 noundef 0) #3
  %ppu_disabled.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 10
  %0 = ptrtoint ptr %ppu_disabled.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ppu_disabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.then.i, label %mv88e6xxx_phy_ppu_access_get.exit.thread

if.then.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 8
  %ops.i.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %ppu_disable.i.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %ppu_disable.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppu_disable.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %mv88e6xxx_phy_ppu_access_get.exit.thread12, label %mv88e6xxx_phy_ppu_disable.exit.i

mv88e6xxx_phy_ppu_access_get.exit.thread12:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %ppu_disabled.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %ppu_disabled.i, align 8
  br label %if.then

mv88e6xxx_phy_ppu_disable.exit.i:                 ; preds = %if.then.i
  %call.i.i = tail call i32 %7(ptr noundef %chip) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %mv88e6xxx_phy_ppu_disable.exit.i.if.end.sink.split_crit_edge, label %mv88e6xxx_phy_ppu_access_get.exit

mv88e6xxx_phy_ppu_disable.exit.i.if.end.sink.split_crit_edge: ; preds = %mv88e6xxx_phy_ppu_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.sink.split

mv88e6xxx_phy_ppu_access_get.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ppu_timer.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 12
  %call4.i = tail call i32 @del_timer(ptr noundef %ppu_timer.i) #3
  br label %if.then

mv88e6xxx_phy_ppu_access_get.exit:                ; preds = %mv88e6xxx_phy_ppu_disable.exit.i
  %9 = ptrtoint ptr %ppu_disabled.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ppu_disabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %mv88e6xxx_phy_ppu_access_get.exit.if.then_crit_edge, label %mv88e6xxx_phy_ppu_access_get.exit.if.end_crit_edge

mv88e6xxx_phy_ppu_access_get.exit.if.end_crit_edge: ; preds = %mv88e6xxx_phy_ppu_access_get.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

mv88e6xxx_phy_ppu_access_get.exit.if.then_crit_edge: ; preds = %mv88e6xxx_phy_ppu_access_get.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %mv88e6xxx_phy_ppu_access_get.exit.if.then_crit_edge, %mv88e6xxx_phy_ppu_access_get.exit.thread, %mv88e6xxx_phy_ppu_access_get.exit.thread12
  %call1 = tail call i32 @mv88e6xxx_write(ptr noundef %chip, i32 noundef %addr, i32 noundef %reg, i16 noundef zeroext %val) #3
  %ppu_timer.i5 = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %10, 1
  %call1.i = tail call i32 @mod_timer(ptr noundef %ppu_timer.i5, i32 noundef %add.i) #3
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.then, %mv88e6xxx_phy_ppu_disable.exit.i.if.end.sink.split_crit_edge
  %err.0.ph = phi i32 [ %call1, %if.then ], [ %call.i.i, %mv88e6xxx_phy_ppu_disable.exit.i.if.end.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ppu_mutex.i) #3
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %mv88e6xxx_phy_ppu_access_get.exit.if.end_crit_edge
  %err.0 = phi i32 [ %call.i.i, %mv88e6xxx_phy_ppu_access_get.exit.if.end_crit_edge ], [ %err.0.ph, %if.end.sink.split ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mv88e6xxx_phy_init(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %ops = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %ppu_enable = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %ppu_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ppu_enable, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ppu_disable = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %ppu_disable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppu_disable, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %ppu_mutex.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %ppu_mutex.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @mv88e6xxx_phy_ppu_state_init.__key) #3
  %ppu_work.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 11
  tail call void @__init_work(ptr noundef %ppu_work.i, i32 noundef 0) #3
  %8 = ptrtoint ptr %ppu_work.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %ppu_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 11, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @mv88e6xxx_phy_ppu_state_init.__key.6, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #3
  %entry5.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 11, i32 1
  %9 = ptrtoint ptr %entry5.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry5.i, ptr %entry5.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 11, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry5.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 11, i32 2
  %11 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mv88e6xxx_phy_ppu_reenable_work, ptr %func.i, align 4
  %ppu_timer.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 12
  tail call void @init_timer_key(ptr noundef %ppu_timer.i, ptr noundef nonnull @mv88e6xxx_phy_ppu_reenable_timer, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @mv88e6xxx_phy_ppu_state_init.__key.8) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mv88e6xxx_phy_destroy(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %ops = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %ppu_enable = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %ppu_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ppu_enable, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ppu_disable = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %ppu_disable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ppu_disable, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %ppu_timer.i = getelementptr inbounds %struct.mv88e6xxx_chip, ptr %chip, i32 0, i32 12
  %call.i = tail call i32 @del_timer_sync(ptr noundef %ppu_timer.i) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mv88e6xxx_phy_setup(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %ops.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %ppu_enable.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %ppu_enable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ppu_enable.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.mv88e6xxx_phy_ppu_enable.exit_crit_edge, label %if.end.i

entry.mv88e6xxx_phy_ppu_enable.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %mv88e6xxx_phy_ppu_enable.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call.i = tail call i32 %5(ptr noundef %chip) #3
  br label %mv88e6xxx_phy_ppu_enable.exit

mv88e6xxx_phy_ppu_enable.exit:                    ; preds = %if.end.i, %entry.mv88e6xxx_phy_ppu_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end.i ], [ 0, %entry.mv88e6xxx_phy_ppu_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv88e6xxx_phy_ppu_reenable_work(ptr noundef %ugly) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ugly, i32 -220
  %reg_lock.i = getelementptr i8, ptr %ugly, i32 -204
  tail call void @mutex_lock_nested(ptr noundef %reg_lock.i, i32 noundef 0) #3
  %ppu_mutex = getelementptr i8, ptr %ugly, i32 -96
  %call = tail call i32 @mutex_trylock(ptr noundef %ppu_mutex) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %ops.i = getelementptr inbounds %struct.mv88e6xxx_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %ppu_enable.i = getelementptr inbounds %struct.mv88e6xxx_ops, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %ppu_enable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ppu_enable.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.if.then2_crit_edge, label %mv88e6xxx_phy_ppu_enable.exit

if.then.if.then2_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then2

mv88e6xxx_phy_ppu_enable.exit:                    ; preds = %if.then
  %call.i = tail call i32 %5(ptr noundef %add.ptr) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %mv88e6xxx_phy_ppu_enable.exit.if.then2_crit_edge, label %mv88e6xxx_phy_ppu_enable.exit.if.end_crit_edge

mv88e6xxx_phy_ppu_enable.exit.if.end_crit_edge:   ; preds = %mv88e6xxx_phy_ppu_enable.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

mv88e6xxx_phy_ppu_enable.exit.if.then2_crit_edge: ; preds = %mv88e6xxx_phy_ppu_enable.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then2

if.then2:                                         ; preds = %mv88e6xxx_phy_ppu_enable.exit.if.then2_crit_edge, %if.then.if.then2_crit_edge
  %ppu_disabled = getelementptr i8, ptr %ugly, i32 -4
  %6 = ptrtoint ptr %ppu_disabled to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ppu_disabled, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %mv88e6xxx_phy_ppu_enable.exit.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %ppu_mutex) #3
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  tail call void @mutex_unlock(ptr noundef %reg_lock.i) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mv88e6xxx_phy_ppu_reenable_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ppu_work = getelementptr i8, ptr %t, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %ppu_work) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/mv88e6xxx/phy.c", i32 73, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mv88e6xxx_phy_page_put._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mv88e6xxx_phy_page_put._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @mv88e6xxx_phy_ppu_state_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/net/dsa/mv88e6xxx/phy.c", i32 193, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mv88e6xxx_phy_ppu_state_init.__key.6, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/net/dsa/mv88e6xxx/phy.c", i32 194, i32 2}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mv88e6xxx_phy_ppu_state_init.__key.8, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/net/dsa/mv88e6xxx/phy.c", i32 195, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"branch_weights", i32 2000, i32 1}
