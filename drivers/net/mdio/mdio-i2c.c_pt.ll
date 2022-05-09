; ModuleID = '/llk/IR_all_yes/drivers/net/mdio/mdio-i2c.c_pt.bc'
source_filename = "../drivers/net/mdio/mdio-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mdio_i2c_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_mdio_i2c_alloc\09\09\09\09"
module asm "\09.long\09__crc_mdio_i2c_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mdio_i2c_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22mdio_i2c_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_mdio_i2c_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i2c:%s\00", [25 x i8] zeroinitializer }, align 32
@__kstrtab_mdio_i2c_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_mdio_i2c_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_mdio_i2c_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mdio_i2c_alloc to i32), ptr @__kstrtab_mdio_i2c_alloc, ptr @__kstrtabns_mdio_i2c_alloc }, section "___ksymtab_gpl+mdio_i2c_alloc", align 4
@__UNIQUE_ID_author325 = internal constant [29 x i8] c"mdio_i2c.author=Russell King\00", section ".modinfo", align 1
@__UNIQUE_ID_description326 = internal constant [45 x i8] c"mdio_i2c.description=MDIO I2C bridge library\00", section ".modinfo", align 1
@__UNIQUE_ID_file327 = internal constant [40 x i8] c"mdio_i2c.file=drivers/net/mdio/mdio-i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license328 = internal constant [24 x i8] c"mdio_i2c.license=GPL v2\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [31 x i8] c"../drivers/net/mdio/mdio-i2c.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 105, i32 37 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author325, ptr @__UNIQUE_ID_description326, ptr @__UNIQUE_ID_file327, ptr @__UNIQUE_ID_license328, ptr @__ksymtab_mdio_i2c_alloc, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mdio_i2c_alloc(ptr noundef %parent, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 2
  %0 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %3(ptr noundef %i2c) #5
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @mdiobus_alloc_size(i32 noundef 0) #5
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 2
  %init_name.i = getelementptr inbounds %struct.device, ptr %parent, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.dev_name.exit_crit_edge

if.end6.dev_name.exit_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end6.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %if.end6.dev_name.exit_crit_edge ]
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str, ptr noundef %retval.0.i)
  %parent9 = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 9
  %8 = ptrtoint ptr %parent9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %parent, ptr %parent9, align 4
  %read = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @i2c_mii_read, ptr %read, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @i2c_mii_write, ptr %write, align 8
  %priv = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %i2c, ptr %priv, align 8
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %dev_name.exit ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_mii_read(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %reg) #0 align 64 {
entry:
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  %addr = alloca [3 x i8], align 1
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #5
  %2 = getelementptr inbounds i8, ptr %msgs, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %addr) #5
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %addr, align 1, !annotation !20
  %5 = getelementptr inbounds [3 x i8], ptr %addr, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !20
  %7 = getelementptr inbounds [3 x i8], ptr %addr, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !20
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #5
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %data, align 1, !annotation !20
  %10 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %10, align 1, !annotation !20
  %12 = add i32 %phy_id, -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %12)
  %13 = icmp ult i32 %12, -2
  br i1 %13, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %reg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then1

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %14 = lshr i32 %reg, 16
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 31
  %conv = or i8 %16, 32
  %17 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %addr, align 1
  %18 = lshr i32 %reg, 8
  %conv4 = trunc i32 %18 to i8
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv4, ptr %5, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then1, %if.end.if.end6_crit_edge
  %p.0 = phi ptr [ %7, %if.then1 ], [ %addr, %if.end.if.end6_crit_edge ]
  %conv7 = trunc i32 %reg to i8
  %incdec.ptr8 = getelementptr i8, ptr %p.0, i32 1
  %20 = ptrtoint ptr %p.0 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv7, ptr %p.0, align 1
  %21 = trunc i32 %phy_id to i16
  %conv10 = add i16 %21, 64
  %22 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv10, ptr %msgs, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 0, ptr %flags, align 2
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr8 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %addr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv14 = trunc i32 %sub.ptr.sub to i16
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %24 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv14, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %25 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %addr, ptr %buf, align 4
  %arrayidx19 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv10, ptr %arrayidx19, align 4
  %flags22 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %flags22 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %flags22, align 2
  %len24 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %len24 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 2, ptr %len24, align 4
  %buf27 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %buf27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %data, ptr %buf27, align 4
  %call29 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %msgs, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call29)
  %cmp.not = icmp eq i32 %call29, 2
  br i1 %cmp.not, label %if.end32, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end32:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %data, align 1
  %conv34 = zext i8 %31 to i32
  %shl = shl nuw nsw i32 %conv34, 8
  %32 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %10, align 1
  %conv36 = zext i8 %33 to i32
  %or37 = or i32 %shl, %conv36
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or37, %if.end32 ], [ 65535, %entry.cleanup_crit_edge ], [ 65535, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %addr) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_mii_write(ptr nocapture noundef readonly %bus, i32 noundef %phy_id, i32 noundef %reg, i16 noundef zeroext %val) #0 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  %data = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #5
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %data) #5
  %4 = getelementptr inbounds [5 x i8], ptr %data, i32 0, i32 1
  %5 = getelementptr inbounds [5 x i8], ptr %data, i32 0, i32 2
  %6 = add i32 %phy_id, -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %6)
  %7 = icmp ult i32 %6, -2
  %8 = call ptr @memset(ptr %data, i32 255, i32 5)
  br i1 %7, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %reg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then1

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = lshr i32 %reg, 16
  %10 = trunc i32 %9 to i8
  %conv = and i8 %10, 31
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %data, align 1
  %12 = lshr i32 %reg, 8
  %conv4 = trunc i32 %12 to i8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv4, ptr %4, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.then1, %if.end.if.end6_crit_edge
  %p.0 = phi ptr [ %5, %if.then1 ], [ %data, %if.end.if.end6_crit_edge ]
  %conv7 = trunc i32 %reg to i8
  %incdec.ptr8 = getelementptr i8, ptr %p.0, i32 1
  %14 = ptrtoint ptr %p.0 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv7, ptr %p.0, align 1
  %15 = lshr i16 %val, 8
  %conv11 = trunc i16 %15 to i8
  %incdec.ptr12 = getelementptr i8, ptr %p.0, i32 2
  %16 = ptrtoint ptr %incdec.ptr8 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv11, ptr %incdec.ptr8, align 1
  %conv13 = trunc i16 %val to i8
  %incdec.ptr14 = getelementptr i8, ptr %p.0, i32 3
  %17 = ptrtoint ptr %incdec.ptr12 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv13, ptr %incdec.ptr12, align 1
  %18 = trunc i32 %phy_id to i16
  %conv16 = add i16 %18, 64
  %19 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv16, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %flags, align 2
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr14 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %data to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv18 = trunc i32 %sub.ptr.sub to i16
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %21 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv18, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %data, ptr %buf, align 4
  %call20 = call i32 @i2c_transfer(ptr noundef %1, ptr noundef nonnull %msg, i32 noundef 1) #5
  %23 = call i32 @llvm.smin.i32(i32 %call20, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %23, %if.end6 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %data) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/mdio/mdio-i2c.c", i32 105, i32 37}
!2 = !{ptr @__ksymtab_mdio_i2c_alloc, !3, !"__ksymtab_mdio_i2c_alloc", i1 false, i1 false}
!3 = !{!"../drivers/net/mdio/mdio-i2c.c", i32 113, i32 1}
!4 = !{ptr @__UNIQUE_ID_author325, !5, !"__UNIQUE_ID_author325", i1 false, i1 false}
!5 = !{!"../drivers/net/mdio/mdio-i2c.c", i32 115, i32 1}
!6 = !{ptr @__UNIQUE_ID_description326, !7, !"__UNIQUE_ID_description326", i1 false, i1 false}
!7 = !{!"../drivers/net/mdio/mdio-i2c.c", i32 116, i32 1}
!8 = !{ptr @__UNIQUE_ID_file327, !9, !"__UNIQUE_ID_file327", i1 false, i1 false}
!9 = !{!"../drivers/net/mdio/mdio-i2c.c", i32 117, i32 1}
!10 = !{ptr @__UNIQUE_ID_license328, !9, !"__UNIQUE_ID_license328", i1 false, i1 false}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{!"auto-init"}
