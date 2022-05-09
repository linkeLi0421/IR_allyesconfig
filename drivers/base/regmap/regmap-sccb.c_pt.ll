; ModuleID = '/llk/IR_all_yes/drivers/base/regmap/regmap-sccb.c_pt.bc'
source_filename = "../drivers/base/regmap/regmap-sccb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__regmap_init_sccb\22, \22a\22\09"
module asm "\09.weak\09__crc___regmap_init_sccb\09\09\09\09"
module asm "\09.long\09__crc___regmap_init_sccb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___regmap_init_sccb:\09\09\09\09\09"
module asm "\09.asciz \09\22__regmap_init_sccb\22\09\09\09\09\09"
module asm "__kstrtabns___regmap_init_sccb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__devm_regmap_init_sccb\22, \22a\22\09"
module asm "\09.weak\09__crc___devm_regmap_init_sccb\09\09\09\09"
module asm "\09.long\09__crc___devm_regmap_init_sccb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_regmap_init_sccb:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_regmap_init_sccb\22\09\09\09\09\09"
module asm "__kstrtabns___devm_regmap_init_sccb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@__kstrtab___regmap_init_sccb = external dso_local constant [0 x i8], align 1
@__kstrtabns___regmap_init_sccb = external dso_local constant [0 x i8], align 1
@__ksymtab___regmap_init_sccb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__regmap_init_sccb to i32), ptr @__kstrtab___regmap_init_sccb, ptr @__kstrtabns___regmap_init_sccb }, section "___ksymtab_gpl+__regmap_init_sccb", align 4
@__kstrtab___devm_regmap_init_sccb = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_regmap_init_sccb = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_regmap_init_sccb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_regmap_init_sccb to i32), ptr @__kstrtab___devm_regmap_init_sccb, ptr @__kstrtabns___devm_regmap_init_sccb }, section "___ksymtab_gpl+__devm_regmap_init_sccb", align 4
@__UNIQUE_ID_file288 = internal constant [49 x i8] c"regmap_sccb.file=drivers/base/regmap/regmap-sccb\00", section ".modinfo", align 1
@__UNIQUE_ID_license289 = internal constant [27 x i8] c"regmap_sccb.license=GPL v2\00", section ".modinfo", align 1
@regmap_sccb_bus = internal global { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr null, ptr null, ptr null, ptr @regmap_sccb_write, ptr null, ptr null, ptr @regmap_sccb_read, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"regmap_sccb_bus\00", align 1
@___asan_gen_.2 = private constant [37 x i8] c"../drivers/base/regmap/regmap-sccb.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 83, i32 26 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_file288, ptr @__UNIQUE_ID_license289, ptr @__ksymtab___devm_regmap_init_sccb, ptr @__ksymtab___regmap_init_sccb, ptr @regmap_sccb_bus], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_sccb_bus to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__regmap_init_sccb(ptr noundef %i2c, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %val_bits.i = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 4
  %0 = ptrtoint ptr %val_bits.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp.i = icmp eq i32 %1, 8
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %reg_bits.i = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 1
  %2 = ptrtoint ptr %reg_bits.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp1.i = icmp eq i32 %3, 8
  br i1 %cmp1.i, label %land.lhs.true2.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 3
  %4 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter.i, align 8
  %algo.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %algo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %algo.i.i.i, align 8
  %functionality.i.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %functionality.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %functionality.i.i.i, align 4
  %call.i.i.i = tail call i32 %9(ptr noundef %5) #3
  %and.i.i = and i32 %call.i.i.i, 1441792
  call void @__sanitizer_cov_trace_const_cmp4(i32 1441792, i32 %and.i.i)
  %cmp.i.i = icmp ne i32 %and.i.i, 1441792
  %brmerge = or i1 %cmp.i.i, icmp ult (ptr inttoptr (i32 -4096 to ptr), ptr @regmap_sccb_bus)
  %.mux = select i1 %cmp.i.i, ptr inttoptr (i32 -524 to ptr), ptr @regmap_sccb_bus
  br i1 %brmerge, label %land.lhs.true2.i.cleanup_crit_edge, label %if.end

land.lhs.true2.i.cleanup_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #5
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call4 = tail call ptr @__regmap_init(ptr noundef %dev, ptr noundef nonnull @regmap_sccb_bus, ptr noundef %dev, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true2.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %if.end ], [ inttoptr (i32 -524 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -524 to ptr), %land.lhs.true.i.cleanup_crit_edge ], [ %.mux, %land.lhs.true2.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__devm_regmap_init_sccb(ptr noundef %i2c, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %val_bits.i = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 4
  %0 = ptrtoint ptr %val_bits.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp.i = icmp eq i32 %1, 8
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %reg_bits.i = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 1
  %2 = ptrtoint ptr %reg_bits.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp1.i = icmp eq i32 %3, 8
  br i1 %cmp1.i, label %land.lhs.true2.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 3
  %4 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter.i, align 8
  %algo.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %algo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %algo.i.i.i, align 8
  %functionality.i.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %functionality.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %functionality.i.i.i, align 4
  %call.i.i.i = tail call i32 %9(ptr noundef %5) #3
  %and.i.i = and i32 %call.i.i.i, 1441792
  call void @__sanitizer_cov_trace_const_cmp4(i32 1441792, i32 %and.i.i)
  %cmp.i.i = icmp ne i32 %and.i.i, 1441792
  %brmerge = or i1 %cmp.i.i, icmp ult (ptr inttoptr (i32 -4096 to ptr), ptr @regmap_sccb_bus)
  %.mux = select i1 %cmp.i.i, ptr inttoptr (i32 -524 to ptr), ptr @regmap_sccb_bus
  br i1 %brmerge, label %land.lhs.true2.i.cleanup_crit_edge, label %if.end

land.lhs.true2.i.cleanup_crit_edge:               ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #5
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call4 = tail call ptr @__devm_regmap_init(ptr noundef %dev, ptr noundef nonnull @regmap_sccb_bus, ptr noundef %dev, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true2.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %if.end ], [ inttoptr (i32 -524 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -524 to ptr), %land.lhs.true.i.cleanup_crit_edge ], [ %.mux, %land.lhs.true2.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_sccb_write(ptr noundef %context, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %context, i32 -32
  %conv = trunc i32 %reg to i8
  %conv1 = trunc i32 %val to i8
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv, i8 noundef zeroext %conv1) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_sccb_read(ptr nocapture noundef readonly %context, i32 noundef %reg, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  %data = alloca %union.i2c_smbus_data, align 2
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %context, i32 -32
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %data) #3
  %0 = call ptr @memset(ptr %data, i32 255, i32 34)
  %adapter = getelementptr i8, ptr %context, i32 -8
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %lock_ops.i = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lock_ops.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  tail call void %6(ptr noundef %2, i32 noundef 2) #3
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %addr = getelementptr i8, ptr %context, i32 -30
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr, align 2
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr, align 8
  %conv = trunc i32 %reg to i8
  %call = tail call i32 @__i2c_smbus_xfer(ptr noundef %8, i16 noundef zeroext %10, i16 noundef zeroext %12, i8 noundef zeroext 0, i8 noundef zeroext %conv, i32 noundef 1, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr, align 2
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr, align 8
  %call6 = call i32 @__i2c_smbus_xfer(ptr noundef %14, i16 noundef zeroext %16, i16 noundef zeroext %18, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 1, ptr noundef nonnull %data) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end.out_crit_edge, label %if.end10

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data, align 2
  %conv11 = zext i8 %20 to i32
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv11, ptr %val, align 4
  br label %out

out:                                              ; preds = %if.end10, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %call6, %if.end.out_crit_edge ], [ %call6, %if.end10 ]
  %22 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter, align 8
  %lock_ops.i22 = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %lock_ops.i22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lock_ops.i22, align 8
  %unlock_bus.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %unlock_bus.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %unlock_bus.i, align 4
  call void %27(ptr noundef %23, i32 noundef 2) #3
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %data) #3
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_smbus_xfer(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @__ksymtab___regmap_init_sccb, !1, !"__ksymtab___regmap_init_sccb", i1 false, i1 false}
!1 = !{!"../drivers/base/regmap/regmap-sccb.c", i32 111, i32 1}
!2 = !{ptr @__ksymtab___devm_regmap_init_sccb, !3, !"__ksymtab___devm_regmap_init_sccb", i1 false, i1 false}
!3 = !{!"../drivers/base/regmap/regmap-sccb.c", i32 126, i32 1}
!4 = !{ptr @__UNIQUE_ID_file288, !5, !"__UNIQUE_ID_file288", i1 false, i1 false}
!5 = !{!"../drivers/base/regmap/regmap-sccb.c", i32 128, i32 1}
!6 = !{ptr @__UNIQUE_ID_license289, !5, !"__UNIQUE_ID_license289", i1 false, i1 false}
!7 = !{ptr @regmap_sccb_bus, !8, !"regmap_sccb_bus", i1 false, i1 false}
!8 = !{!"../drivers/base/regmap/regmap-sccb.c", i32 83, i32 26}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
