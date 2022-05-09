; ModuleID = '/llk/IR_all_yes/drivers/base/regmap/regmap-i2c.c_pt.bc'
source_filename = "../drivers/base/regmap/regmap-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__regmap_init_i2c\22, \22a\22\09"
module asm "\09.weak\09__crc___regmap_init_i2c\09\09\09\09"
module asm "\09.long\09__crc___regmap_init_i2c\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___regmap_init_i2c:\09\09\09\09\09"
module asm "\09.asciz \09\22__regmap_init_i2c\22\09\09\09\09\09"
module asm "__kstrtabns___regmap_init_i2c:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__devm_regmap_init_i2c\22, \22a\22\09"
module asm "\09.weak\09__crc___devm_regmap_init_i2c\09\09\09\09"
module asm "\09.long\09__crc___devm_regmap_init_i2c\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_regmap_init_i2c:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_regmap_init_i2c\22\09\09\09\09\09"
module asm "__kstrtabns___devm_regmap_init_i2c:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__kstrtab___regmap_init_i2c = external dso_local constant [0 x i8], align 1
@__kstrtabns___regmap_init_i2c = external dso_local constant [0 x i8], align 1
@__ksymtab___regmap_init_i2c = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__regmap_init_i2c to i32), ptr @__kstrtab___regmap_init_i2c, ptr @__kstrtabns___regmap_init_i2c }, section "___ksymtab_gpl+__regmap_init_i2c", align 4
@__kstrtab___devm_regmap_init_i2c = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_regmap_init_i2c = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_regmap_init_i2c = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_regmap_init_i2c to i32), ptr @__kstrtab___devm_regmap_init_i2c, ptr @__kstrtabns___devm_regmap_init_i2c }, section "___ksymtab_gpl+__devm_regmap_init_i2c", align 4
@__UNIQUE_ID_file288 = internal constant [47 x i8] c"regmap_i2c.file=drivers/base/regmap/regmap-i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license289 = internal constant [23 x i8] c"regmap_i2c.license=GPL\00", section ".modinfo", align 1
@regmap_i2c = internal constant { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr @regmap_i2c_write, ptr @regmap_i2c_gather_write, ptr null, ptr null, ptr null, ptr @regmap_i2c_read, ptr null, ptr null, ptr null, i8 0, i32 1, i32 1, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@regmap_i2c_smbus_i2c_block = internal constant { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr @regmap_i2c_smbus_i2c_write, ptr null, ptr null, ptr null, ptr null, ptr @regmap_i2c_smbus_i2c_read, ptr null, ptr null, ptr null, i8 0, i32 0, i32 0, i32 32, i32 32, i8 0 }, [32 x i8] zeroinitializer }, align 32
@regmap_i2c_smbus_i2c_block_reg16 = internal constant { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr @regmap_i2c_smbus_i2c_write_reg16, ptr null, ptr null, ptr null, ptr null, ptr @regmap_i2c_smbus_i2c_read_reg16, ptr null, ptr null, ptr null, i8 0, i32 0, i32 0, i32 32, i32 32, i8 0 }, [32 x i8] zeroinitializer }, align 32
@regmap_smbus_word = internal constant { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr null, ptr null, ptr null, ptr @regmap_smbus_word_reg_write, ptr null, ptr null, ptr @regmap_smbus_word_reg_read, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@regmap_smbus_word_swapped = internal constant { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr null, ptr null, ptr null, ptr @regmap_smbus_word_write_swapped, ptr null, ptr null, ptr @regmap_smbus_word_read_swapped, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@regmap_smbus_byte = internal constant { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr null, ptr null, ptr null, ptr @regmap_smbus_byte_reg_write, ptr null, ptr null, ptr @regmap_smbus_byte_reg_read, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.1 = private unnamed_addr constant [11 x i8] c"regmap_i2c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 200, i32 32 }
@___asan_gen_.4 = private unnamed_addr constant [27 x i8] c"regmap_i2c_smbus_i2c_block\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 242, i32 32 }
@___asan_gen_.7 = private unnamed_addr constant [33 x i8] c"regmap_i2c_smbus_i2c_block_reg16\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 299, i32 32 }
@___asan_gen_.10 = private unnamed_addr constant [18 x i8] c"regmap_smbus_word\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 82, i32 32 }
@___asan_gen_.13 = private unnamed_addr constant [26 x i8] c"regmap_smbus_word_swapped\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 118, i32 32 }
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"regmap_smbus_byte\00", align 1
@___asan_gen_.17 = private constant [36 x i8] c"../drivers/base/regmap/regmap-i2c.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 46, i32 32 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_file288, ptr @__UNIQUE_ID_license289, ptr @__ksymtab___devm_regmap_init_i2c, ptr @__ksymtab___regmap_init_i2c, ptr @regmap_i2c, ptr @regmap_i2c_smbus_i2c_block, ptr @regmap_i2c_smbus_i2c_block_reg16, ptr @regmap_smbus_word, ptr @regmap_smbus_word_swapped, ptr @regmap_smbus_byte], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_i2c to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_i2c_smbus_i2c_block to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_i2c_smbus_i2c_block_reg16 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_smbus_word to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_smbus_word_swapped to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_smbus_byte to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__regmap_init_i2c(ptr noundef %i2c, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @regmap_get_i2c_bus(ptr noundef %i2c, ptr noundef %config)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call4 = tail call ptr @__regmap_init(ptr noundef %dev, ptr noundef %call, ptr noundef %dev, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @regmap_get_i2c_bus(ptr noundef %i2c, ptr noundef %config) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #4
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end49_crit_edge

entry.if.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.else:                                          ; preds = %entry
  %val_bits = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 4
  %6 = ptrtoint ptr %val_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp = icmp eq i32 %7, 8
  br i1 %cmp, label %land.lhs.true, label %if.else.if.else18_crit_edge

if.else.if.else18_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else18

land.lhs.true:                                    ; preds = %if.else
  %reg_bits = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 1
  %8 = ptrtoint ptr %reg_bits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp1 = icmp eq i32 %9, 8
  br i1 %cmp1, label %land.lhs.true2, label %land.lhs.true.if.else7_crit_edge

land.lhs.true.if.else7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else7

land.lhs.true2:                                   ; preds = %land.lhs.true
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %algo.i.i139 = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %algo.i.i139 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %algo.i.i139, align 8
  %functionality.i.i140 = getelementptr inbounds %struct.i2c_algorithm, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %functionality.i.i140 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %functionality.i.i140, align 4
  %call.i.i141 = tail call i32 %15(ptr noundef %11) #4
  %and.i142 = and i32 %call.i.i141, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %and.i142)
  %cmp.i143.not = icmp eq i32 %and.i142, 201326592
  br i1 %cmp.i143.not, label %land.lhs.true2.if.end49_crit_edge, label %land.lhs.true2.if.else7_crit_edge

land.lhs.true2.if.else7_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else7

land.lhs.true2.if.end49_crit_edge:                ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.else7:                                         ; preds = %land.lhs.true2.if.else7_crit_edge, %land.lhs.true.if.else7_crit_edge
  %16 = ptrtoint ptr %val_bits to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %val_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.pr)
  %cmp9 = icmp eq i32 %.pr, 8
  br i1 %cmp9, label %land.lhs.true10, label %if.else7.if.else18_crit_edge

if.else7.if.else18_crit_edge:                     ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else18

land.lhs.true10:                                  ; preds = %if.else7
  %17 = ptrtoint ptr %reg_bits to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %18)
  %cmp12 = icmp eq i32 %18, 16
  br i1 %cmp12, label %land.lhs.true13, label %land.lhs.true10.if.else18thread-pre-split_crit_edge

land.lhs.true10.if.else18thread-pre-split_crit_edge: ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else18thread-pre-split

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %19 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter, align 8
  %algo.i.i145 = getelementptr inbounds %struct.i2c_adapter, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %algo.i.i145 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %algo.i.i145, align 8
  %functionality.i.i146 = getelementptr inbounds %struct.i2c_algorithm, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %functionality.i.i146 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %functionality.i.i146, align 4
  %call.i.i147 = tail call i32 %24(ptr noundef %20) #4
  %and.i148 = and i32 %call.i.i147, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %and.i148)
  %cmp.i149.not = icmp eq i32 %and.i148, 201326592
  br i1 %cmp.i149.not, label %land.lhs.true13.if.end49_crit_edge, label %land.lhs.true13.if.else18thread-pre-split_crit_edge

land.lhs.true13.if.else18thread-pre-split_crit_edge: ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else18thread-pre-split

land.lhs.true13.if.end49_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.else18thread-pre-split:                        ; preds = %land.lhs.true13.if.else18thread-pre-split_crit_edge, %land.lhs.true10.if.else18thread-pre-split_crit_edge
  %25 = ptrtoint ptr %val_bits to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr164 = load i32, ptr %val_bits, align 4
  br label %if.else18

if.else18:                                        ; preds = %if.else18thread-pre-split, %if.else7.if.else18_crit_edge, %if.else.if.else18_crit_edge
  %26 = phi i32 [ %.pr164, %if.else18thread-pre-split ], [ %.pr, %if.else7.if.else18_crit_edge ], [ %7, %if.else.if.else18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %26)
  %cmp20 = icmp eq i32 %26, 16
  br i1 %cmp20, label %land.lhs.true21, label %if.else18.if.else31_crit_edge

if.else18.if.else31_crit_edge:                    ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else31

land.lhs.true21:                                  ; preds = %if.else18
  %reg_bits22 = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 1
  %27 = ptrtoint ptr %reg_bits22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg_bits22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %28)
  %cmp23 = icmp eq i32 %28, 8
  br i1 %cmp23, label %land.lhs.true24, label %land.lhs.true21.if.else31_crit_edge

land.lhs.true21.if.else31_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else31

land.lhs.true24:                                  ; preds = %land.lhs.true21
  %29 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter, align 8
  %algo.i.i151 = getelementptr inbounds %struct.i2c_adapter, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %algo.i.i151 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %algo.i.i151, align 8
  %functionality.i.i152 = getelementptr inbounds %struct.i2c_algorithm, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %functionality.i.i152 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %functionality.i.i152, align 4
  %call.i.i153 = tail call i32 %34(ptr noundef %30) #4
  %and.i154 = and i32 %call.i.i153, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %and.i154)
  %cmp.i155.not = icmp eq i32 %and.i154, 6291456
  br i1 %cmp.i155.not, label %if.then28, label %land.lhs.true24.if.else31_crit_edge

land.lhs.true24.if.else31_crit_edge:              ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else31

if.then28:                                        ; preds = %land.lhs.true24
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call29 = tail call i32 @regmap_get_val_endian(ptr noundef %dev, ptr noundef null, ptr noundef %config) #4
  %35 = zext i32 %call29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call29, label %if.then28.cleanup_crit_edge [
    i32 2, label %if.then28.if.end49_crit_edge
    i32 1, label %sw.bb30
  ]

if.then28.if.end49_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb30:                                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.else31:                                        ; preds = %land.lhs.true24.if.else31_crit_edge, %land.lhs.true21.if.else31_crit_edge, %if.else18.if.else31_crit_edge
  %36 = ptrtoint ptr %val_bits to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %37)
  %cmp33 = icmp eq i32 %37, 8
  br i1 %cmp33, label %land.lhs.true34, label %if.else31.cleanup_crit_edge

if.else31.cleanup_crit_edge:                      ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true34:                                  ; preds = %if.else31
  %reg_bits35 = getelementptr inbounds %struct.regmap_config, ptr %config, i32 0, i32 1
  %38 = ptrtoint ptr %reg_bits35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %reg_bits35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %39)
  %cmp36 = icmp eq i32 %39, 8
  br i1 %cmp36, label %if.end45, label %land.lhs.true34.cleanup_crit_edge

land.lhs.true34.cleanup_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end45:                                         ; preds = %land.lhs.true34
  %40 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adapter, align 8
  %algo.i.i157 = getelementptr inbounds %struct.i2c_adapter, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %algo.i.i157 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %algo.i.i157, align 8
  %functionality.i.i158 = getelementptr inbounds %struct.i2c_algorithm, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %functionality.i.i158 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %functionality.i.i158, align 4
  %call.i.i159 = tail call i32 %45(ptr noundef %41) #4
  %and.i160 = and i32 %call.i.i159, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i160)
  %cmp.i161.not = icmp eq i32 %and.i160, 1572864
  br i1 %cmp.i161.not, label %if.end45.if.end49_crit_edge, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end49

if.end49:                                         ; preds = %if.end45.if.end49_crit_edge, %sw.bb30, %if.then28.if.end49_crit_edge, %land.lhs.true13.if.end49_crit_edge, %land.lhs.true2.if.end49_crit_edge, %entry.if.end49_crit_edge
  %bus.0167 = phi ptr [ @regmap_smbus_byte, %if.end45.if.end49_crit_edge ], [ @regmap_i2c_smbus_i2c_block_reg16, %land.lhs.true13.if.end49_crit_edge ], [ @regmap_i2c_smbus_i2c_block, %land.lhs.true2.if.end49_crit_edge ], [ @regmap_i2c, %entry.if.end49_crit_edge ], [ @regmap_smbus_word_swapped, %sw.bb30 ], [ @regmap_smbus_word, %if.then28.if.end49_crit_edge ]
  %46 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adapter, align 8
  %quirks51 = getelementptr inbounds %struct.i2c_adapter, ptr %47, i32 0, i32 17
  %48 = ptrtoint ptr %quirks51 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %quirks51, align 8
  %tobool52.not = icmp eq ptr %49, null
  br i1 %tobool52.not, label %if.end49.cleanup_crit_edge, label %if.then53

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then53:                                        ; preds = %if.end49
  %max_read_len = getelementptr inbounds %struct.i2c_adapter_quirks, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %max_read_len to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %max_read_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool54.not = icmp eq i16 %51, 0
  br i1 %tobool54.not, label %if.then53.if.end65_crit_edge, label %land.lhs.true55

if.then53.if.end65_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end65

land.lhs.true55:                                  ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i16 %51 to i32
  %max_raw_read = getelementptr inbounds %struct.regmap_bus, ptr %bus.0167, i32 0, i32 13
  %52 = ptrtoint ptr %max_raw_read to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %max_raw_read, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp56 = icmp eq i32 %53, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %conv)
  %cmp61 = icmp ugt i32 %53, %conv
  %or.cond = select i1 %cmp56, i1 true, i1 %cmp61
  %spec.select = select i1 %or.cond, i32 %conv, i32 0
  br label %if.end65

if.end65:                                         ; preds = %land.lhs.true55, %if.then53.if.end65_crit_edge
  %max_read.0 = phi i32 [ 0, %if.then53.if.end65_crit_edge ], [ %spec.select, %land.lhs.true55 ]
  %max_write_len = getelementptr inbounds %struct.i2c_adapter_quirks, ptr %49, i32 0, i32 2
  %54 = ptrtoint ptr %max_write_len to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %max_write_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool67.not = icmp eq i16 %55, 0
  br i1 %tobool67.not, label %if.end65.if.end79_crit_edge, label %land.lhs.true68

if.end65.if.end79_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end79

land.lhs.true68:                                  ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  %conv66 = zext i16 %55 to i32
  %max_raw_write = getelementptr inbounds %struct.regmap_bus, ptr %bus.0167, i32 0, i32 14
  %56 = ptrtoint ptr %max_raw_write to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %max_raw_write, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp69 = icmp eq i32 %57, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %conv66)
  %cmp75 = icmp ugt i32 %57, %conv66
  %or.cond137 = select i1 %cmp69, i1 true, i1 %cmp75
  %spec.select172 = select i1 %or.cond137, i32 %conv66, i32 0
  br label %if.end79

if.end79:                                         ; preds = %land.lhs.true68, %if.end65.if.end79_crit_edge
  %max_write.0 = phi i32 [ 0, %if.end65.if.end79_crit_edge ], [ %spec.select172, %land.lhs.true68 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_read.0)
  %tobool81.not = icmp eq i32 %max_read.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_write.0)
  %tobool84.not = icmp eq i32 %max_write.0, 0
  %or.cond138 = select i1 %tobool81.not, i1 %tobool84.not, i1 false
  br i1 %or.cond138, label %if.end79.cleanup_crit_edge, label %if.then85

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then85:                                        ; preds = %if.end79
  %call86 = tail call ptr @kmemdup(ptr noundef nonnull %bus.0167, i32 noundef 64, i32 noundef 3264) #4
  %tobool87.not = icmp eq ptr %call86, null
  br i1 %tobool87.not, label %if.then85.cleanup_crit_edge, label %if.end90

if.then85.cleanup_crit_edge:                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end90:                                         ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #6
  %free_on_exit = getelementptr inbounds %struct.regmap_bus, ptr %call86, i32 0, i32 15
  %58 = ptrtoint ptr %free_on_exit to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %free_on_exit, align 4
  %max_raw_read92 = getelementptr inbounds %struct.regmap_bus, ptr %call86, i32 0, i32 13
  %59 = ptrtoint ptr %max_raw_read92 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %max_read.0, ptr %max_raw_read92, align 4
  %max_raw_write94 = getelementptr inbounds %struct.regmap_bus, ptr %call86, i32 0, i32 14
  %60 = ptrtoint ptr %max_raw_write94 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %max_write.0, ptr %max_raw_write94, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %if.then85.cleanup_crit_edge, %if.end79.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %land.lhs.true34.cleanup_crit_edge, %if.else31.cleanup_crit_edge, %if.then28.cleanup_crit_edge
  %retval.0 = phi ptr [ %call86, %if.end90 ], [ %bus.0167, %if.end49.cleanup_crit_edge ], [ %bus.0167, %if.end79.cleanup_crit_edge ], [ inttoptr (i32 -524 to ptr), %if.end45.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then85.cleanup_crit_edge ], [ inttoptr (i32 -524 to ptr), %if.then28.cleanup_crit_edge ], [ inttoptr (i32 -524 to ptr), %land.lhs.true34.cleanup_crit_edge ], [ inttoptr (i32 -524 to ptr), %if.else31.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @regmap_get_i2c_bus(ptr noundef %i2c, ptr noundef %config)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call4 = tail call ptr @__devm_regmap_init(ptr noundef %dev, ptr noundef %call, ptr noundef %dev, ptr noundef %config, ptr noundef %lock_key, ptr noundef %lock_name) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_get_val_endian(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_i2c_write(ptr noundef %context, ptr noundef %data, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %context, i32 -32
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef %data, i32 noundef %count, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %count)
  %cmp = icmp eq i32 %call.i, %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1 = icmp slt i32 %call.i, 0
  %call. = select i1 %cmp1, i32 %call.i, i32 -5
  %retval.0 = select i1 %cmp, i32 0, i32 %call.
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_i2c_gather_write(ptr nocapture noundef readonly %context, ptr noundef %reg, i32 noundef %reg_size, ptr noundef %val, i32 noundef %val_size) #0 align 64 {
entry:
  %xfer = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xfer) #4
  %0 = getelementptr inbounds i8, ptr %xfer, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  %adapter = getelementptr i8, ptr %context, i32 -8
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %3) #4
  %8 = and i32 %call.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr = getelementptr i8, ptr %context, i32 -30
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr, align 2
  %11 = ptrtoint ptr %xfer to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %xfer, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %xfer, i32 0, i32 1
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags, align 2
  %conv = trunc i32 %reg_size to i16
  %len = getelementptr inbounds %struct.i2c_msg, ptr %xfer, i32 0, i32 2
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %xfer, i32 0, i32 3
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %reg, ptr %buf, align 4
  %arrayidx6 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %10, ptr %arrayidx6, align 4
  %flags9 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %flags9 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 16384, ptr %flags9, align 2
  %conv10 = trunc i32 %val_size to i16
  %len12 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %len12 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv10, ptr %len12, align 4
  %buf14 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %buf14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %val, ptr %buf14, align 4
  %19 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adapter, align 8
  %call16 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %xfer, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16)
  %cmp = icmp eq i32 %call16, 2
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp20 = icmp slt i32 %call16, 0
  %call16. = select i1 %cmp20, i32 %call16, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call16., %if.end19 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xfer) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_i2c_read(ptr nocapture noundef readonly %context, ptr noundef %reg, i32 noundef %reg_size, ptr noundef %val, i32 noundef %val_size) #0 align 64 {
entry:
  %xfer = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xfer) #4
  %0 = getelementptr inbounds i8, ptr %xfer, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  %addr = getelementptr i8, ptr %context, i32 -30
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr, align 2
  %4 = ptrtoint ptr %xfer to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %xfer, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %xfer, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %flags, align 2
  %conv = trunc i32 %reg_size to i16
  %len = getelementptr inbounds %struct.i2c_msg, ptr %xfer, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %xfer, i32 0, i32 3
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %reg, ptr %buf, align 4
  %arrayidx6 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %3, ptr %arrayidx6, align 4
  %flags9 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %flags9 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %flags9, align 2
  %conv10 = trunc i32 %val_size to i16
  %len12 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %len12 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv10, ptr %len12, align 4
  %buf14 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %xfer, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %buf14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %val, ptr %buf14, align 4
  %adapter = getelementptr i8, ptr %context, i32 -8
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %13, ptr noundef nonnull %xfer, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp = icmp eq i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp16 = icmp slt i32 %call, 0
  %call. = select i1 %cmp16, i32 %call, i32 -5
  %retval.0 = select i1 %cmp, i32 0, i32 %call.
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xfer) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_i2c_smbus_i2c_write(ptr noundef %context, ptr noundef %data, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %context, i32 -32
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %2 = trunc i32 %count to i8
  %conv = add i8 %2, -1
  %add.ptr1 = getelementptr i8, ptr %data, i32 1
  %call = tail call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext %1, i8 noundef zeroext %conv, ptr noundef %add.ptr1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_i2c_smbus_i2c_read(ptr noundef %context, ptr nocapture noundef readonly %reg, i32 noundef %reg_size, ptr noundef %val, i32 noundef %val_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reg_size)
  %cmp.not = icmp ne i32 %reg_size, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val_size)
  %cmp1 = icmp eq i32 %val_size, 0
  %or.cond = or i1 %cmp.not, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %context, i32 -32
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reg, align 1
  %conv = trunc i32 %val_size to i8
  %call = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext %1, i8 noundef zeroext %conv, ptr noundef %val) #4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %val_size)
  %cmp2 = icmp eq i32 %call, %val_size
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  %call. = select i1 %cmp5, i32 %call, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call., %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_i2c_smbus_i2c_write_reg16(ptr noundef %context, ptr noundef %data, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp = icmp ult i32 %count, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %context, i32 -32
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %2 = trunc i32 %count to i8
  %conv = add i8 %2, -1
  %add.ptr1 = getelementptr i8, ptr %data, i32 1
  %call = tail call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %add.ptr, i8 noundef zeroext %1, i8 noundef zeroext %conv, ptr noundef %add.ptr1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_i2c_smbus_i2c_read_reg16(ptr noundef %context, ptr nocapture noundef readonly %reg, i32 noundef %reg_size, ptr nocapture noundef writeonly %val, i32 noundef %val_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %context, i32 -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reg_size)
  %cmp.not = icmp eq i32 %reg_size, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %reg, align 2
  %conv1 = trunc i16 %1 to i8
  %2 = lshr i16 %1, 8
  %conv4 = trunc i16 %2 to i8
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv1, i8 noundef zeroext %conv4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  br label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %if.end13.do.body_crit_edge, %if.end.do.body_crit_edge
  %val.addr.0 = phi ptr [ %incdec.ptr, %if.end13.do.body_crit_edge ], [ %val, %if.end.do.body_crit_edge ]
  %count.0 = phi i32 [ %inc, %if.end13.do.body_crit_edge ], [ 0, %if.end.do.body_crit_edge ]
  %len.0 = phi i32 [ %dec, %if.end13.do.body_crit_edge ], [ %val_size, %if.end.do.body_crit_edge ]
  %call9 = tail call i32 @i2c_smbus_read_byte(ptr noundef %add.ptr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.body.do.end_crit_edge, label %if.end13

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end13:                                         ; preds = %do.body
  %conv14 = trunc i32 %call9 to i8
  %incdec.ptr = getelementptr i8, ptr %val.addr.0, i32 1
  %3 = ptrtoint ptr %val.addr.0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv14, ptr %val.addr.0, align 1
  %inc = add nuw i32 %count.0, 1
  %dec = add i32 %len.0, -1
  %cmp15 = icmp sgt i32 %dec, 0
  br i1 %cmp15, label %if.end13.do.body_crit_edge, label %if.end13.do.end_crit_edge

if.end13.do.end_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end13.do.body_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.end:                                           ; preds = %if.end13.do.end_crit_edge, %do.body.do.end_crit_edge
  %call9. = phi i32 [ %call9, %do.body.do.end_crit_edge ], [ -5, %if.end13.do.end_crit_edge ]
  %count.1 = phi i32 [ %count.0, %do.body.do.end_crit_edge ], [ %inc, %if.end13.do.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.1, i32 %val_size)
  %cmp17 = icmp eq i32 %count.1, %val_size
  %spec.select = select i1 %cmp17, i32 0, i32 %call9.
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %spec.select, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_smbus_word_reg_write(ptr noundef %context, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %val)
  %cmp = icmp ugt i32 %val, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %reg)
  %cmp1 = icmp ugt i32 %reg, 255
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %context, i32 -32
  %conv = trunc i32 %reg to i8
  %conv2 = trunc i32 %val to i16
  %call = tail call i32 @i2c_smbus_write_word_data(ptr noundef %add.ptr, i8 noundef zeroext %conv, i16 noundef zeroext %conv2) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_smbus_word_reg_read(ptr noundef %context, i32 noundef %reg, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %reg)
  %cmp = icmp ugt i32 %reg, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %context, i32 -32
  %conv = trunc i32 %reg to i8
  %call = tail call i32 @i2c_smbus_read_word_data(ptr noundef %add.ptr, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_smbus_word_write_swapped(ptr noundef %context, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %val)
  %cmp = icmp ugt i32 %val, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %reg)
  %cmp1 = icmp ugt i32 %reg, 255
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %context, i32 -32
  %conv = trunc i32 %reg to i8
  %conv2 = trunc i32 %val to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv2) #4
  %call.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %add.ptr, i8 noundef zeroext %conv, i16 noundef zeroext %0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_smbus_word_read_swapped(ptr noundef %context, i32 noundef %reg, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %reg)
  %cmp = icmp ugt i32 %reg, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %context, i32 -32
  %conv = trunc i32 %reg to i8
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %add.ptr, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i = trunc i32 %call.i to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #4
  %conv1.i = zext i16 %0 to i32
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %conv1.i, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_smbus_byte_reg_write(ptr noundef %context, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i32 %val, %reg
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %0)
  %.not = icmp ult i32 %0, 256
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %context, i32 -32
  %conv = trunc i32 %reg to i8
  %conv2 = trunc i32 %val to i8
  %call = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv, i8 noundef zeroext %conv2) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @regmap_smbus_byte_reg_read(ptr noundef %context, i32 noundef %reg, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %reg)
  %cmp = icmp ugt i32 %reg, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %context, i32 -32
  %conv = trunc i32 %reg to i8
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__ksymtab___regmap_init_i2c, !1, !"__ksymtab___regmap_init_i2c", i1 false, i1 false}
!1 = !{!"../drivers/base/regmap/regmap-i2c.c", i32 382, i32 1}
!2 = !{ptr @__ksymtab___devm_regmap_init_i2c, !3, !"__ksymtab___devm_regmap_init_i2c", i1 false, i1 false}
!3 = !{!"../drivers/base/regmap/regmap-i2c.c", i32 397, i32 1}
!4 = !{ptr @__UNIQUE_ID_file288, !5, !"__UNIQUE_ID_file288", i1 false, i1 false}
!5 = !{!"../drivers/base/regmap/regmap-i2c.c", i32 399, i32 1}
!6 = !{ptr @__UNIQUE_ID_license289, !5, !"__UNIQUE_ID_license289", i1 false, i1 false}
!7 = !{ptr @regmap_i2c, !8, !"regmap_i2c", i1 false, i1 false}
!8 = !{!"../drivers/base/regmap/regmap-i2c.c", i32 200, i32 32}
!9 = !{ptr @regmap_i2c_smbus_i2c_block, !10, !"regmap_i2c_smbus_i2c_block", i1 false, i1 false}
!10 = !{!"../drivers/base/regmap/regmap-i2c.c", i32 242, i32 32}
!11 = !{ptr @regmap_i2c_smbus_i2c_block_reg16, !12, !"regmap_i2c_smbus_i2c_block_reg16", i1 false, i1 false}
!12 = !{!"../drivers/base/regmap/regmap-i2c.c", i32 299, i32 32}
!13 = !{ptr @regmap_smbus_word, !14, !"regmap_smbus_word", i1 false, i1 false}
!14 = !{!"../drivers/base/regmap/regmap-i2c.c", i32 82, i32 32}
!15 = !{ptr @regmap_smbus_word_swapped, !16, !"regmap_smbus_word_swapped", i1 false, i1 false}
!16 = !{!"../drivers/base/regmap/regmap-i2c.c", i32 118, i32 32}
!17 = !{ptr @regmap_smbus_byte, !18, !"regmap_smbus_byte", i1 false, i1 false}
!18 = !{!"../drivers/base/regmap/regmap-i2c.c", i32 46, i32 32}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
