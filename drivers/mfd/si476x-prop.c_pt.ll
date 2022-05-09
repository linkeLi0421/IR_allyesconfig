; ModuleID = '/llk/IR_all_yes/drivers/mfd/si476x-prop.c_pt.bc'
source_filename = "../drivers/mfd/si476x-prop.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+devm_regmap_init_si476x\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_regmap_init_si476x\09\09\09\09"
module asm "\09.long\09__crc_devm_regmap_init_si476x\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_regmap_init_si476x:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_regmap_init_si476x\22\09\09\09\09\09"
module asm "__kstrtabns_devm_regmap_init_si476x:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.si476x_property_range = type { i16, i16 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.si476x_core = type { ptr, ptr, i32, [2 x %struct.mfd_cell], %struct.mutex, %struct.atomic_t, %struct.wait_queue_head, %struct.kfifo, %struct.work_struct, i8, %struct.mutex, %struct.wait_queue_head, %struct.atomic_t, %struct.wait_queue_head, %struct.atomic_t, %struct.si476x_power_up_args, i32, [4 x %struct.regulator_bulk_data], i32, %struct.si476x_pinmux, i32, %struct.atomic_t, %struct.delayed_work, i32, i32 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.kfifo = type { %union.anon.80, [0 x i8] }
%union.anon.80 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.si476x_power_up_args = type { i32, i32, i8, i8, i32, i32, i32, i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.si476x_pinmux = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@devm_regmap_init_si476x._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@si476x_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 16, ptr @si476x_core_regmap_writable_register, ptr @si476x_core_regmap_readable_register, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @si476x_core_regmap_read, ptr @si476x_core_regmap_write, ptr null, i8 0, i32 16387, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"si476x_prop:231:(&si476x_regmap_config)->lock\00", [50 x i8] zeroinitializer }, align 32
@__kstrtab_devm_regmap_init_si476x = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_regmap_init_si476x = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_regmap_init_si476x = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_regmap_init_si476x to i32), ptr @__kstrtab_devm_regmap_init_si476x, ptr @__kstrtabns_devm_regmap_init_si476x }, section "___ksymtab_gpl+devm_regmap_init_si476x", align 4
@si476x_core_is_valid_property.is_valid_property = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @si476x_core_is_valid_property_a10, ptr @si476x_core_is_valid_property_a20, ptr @si476x_core_is_valid_property_a30], [20 x i8] zeroinitializer }, align 32
@si476x_core_is_valid_property_a10.valid_ranges = internal constant { [18 x %struct.si476x_property_range], [56 x i8] } { [18 x %struct.si476x_property_range] [%struct.si476x_property_range { i16 512, i16 515 }, %struct.si476x_property_range { i16 768, i16 771 }, %struct.si476x_property_range { i16 1024, i16 1028 }, %struct.si476x_property_range { i16 1792, i16 1799 }, %struct.si476x_property_range { i16 4352, i16 4354 }, %struct.si476x_property_range { i16 4608, i16 4612 }, %struct.si476x_property_range { i16 4864, i16 4870 }, %struct.si476x_property_range { i16 8192, i16 8197 }, %struct.si476x_property_range { i16 8448, i16 8452 }, %struct.si476x_property_range { i16 8454, i16 8454 }, %struct.si476x_property_range { i16 8704, i16 8718 }, %struct.si476x_property_range { i16 12544, i16 12548 }, %struct.si476x_property_range { i16 12807, i16 12815 }, %struct.si476x_property_range { i16 13056, i16 13060 }, %struct.si476x_property_range { i16 13568, i16 13591 }, %struct.si476x_property_range { i16 13824, i16 13847 }, %struct.si476x_property_range { i16 14080, i16 14103 }, %struct.si476x_property_range { i16 16384, i16 16387 }], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 16, i64 4102, i64 8720, i64 12800]
@__sancov_gen_cov_switch_values.2 = internal global [16 x i64] [i64 14, i64 16, i64 0, i64 1280, i64 1281, i64 1536, i64 1801, i64 1804, i64 1805, i64 1806, i64 1808, i64 1816, i64 4615, i64 4616, i64 8199, i64 8960]
@__sancov_gen_cov_switch_values.3 = internal global [6 x i64] [i64 4, i64 16, i64 1819, i64 4102, i64 8720, i64 13313]
@__sancov_gen_cov_switch_values.4 = internal global [6 x i64] [i64 4, i64 16, i64 1819, i64 4102, i64 8720, i64 13313]
@__sancov_gen_cov_switch_values.5 = internal global [12 x i64] [i64 10, i64 16, i64 1820, i64 1821, i64 4103, i64 4104, i64 8719, i64 8724, i64 8961, i64 12549, i64 12550, i64 13314]
@___asan_gen_.6 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [21 x i8] c"si476x_regmap_config\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 213, i32 35 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 230, i32 9 }
@___asan_gen_.15 = private unnamed_addr constant [18 x i8] c"is_valid_property\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 138, i32 37 }
@___asan_gen_.18 = private unnamed_addr constant [13 x i8] c"valid_ranges\00", align 1
@___asan_gen_.19 = private constant [29 x i8] c"../drivers/mfd/si476x-prop.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 59, i32 44 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_devm_regmap_init_si476x, ptr @devm_regmap_init_si476x._key, ptr @si476x_regmap_config, ptr @.str, ptr @si476x_core_is_valid_property.is_valid_property, ptr @si476x_core_is_valid_property_a10.valid_ranges], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_regmap_init_si476x._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si476x_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si476x_core_is_valid_property.is_valid_property to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @si476x_core_is_valid_property_a10.valid_ranges to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_regmap_init_si476x(ptr noundef %core) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call = tail call ptr @__devm_regmap_init(ptr noundef %dev, ptr noundef null, ptr noundef %core, ptr noundef nonnull @si476x_regmap_config, ptr noundef nonnull @devm_regmap_init_si476x._key, ptr noundef nonnull @.str) #3
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @si476x_core_regmap_writable_register(ptr nocapture noundef readonly %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %conv = trunc i32 %reg to i16
  %revision.i = getelementptr inbounds %struct.si476x_core, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp sgt i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp2.i = icmp eq i32 %3, -1
  %spec.select.i = or i1 %cmp.i, %cmp2.i
  br i1 %spec.select.i, label %do.body4.i, label %si476x_core_is_valid_property.exit, !prof !30

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mfd/si476x-prop.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 145, 0\0A.popsection", ""() #3, !srcloc !31
  unreachable

si476x_core_is_valid_property.exit:               ; preds = %entry
  %arrayidx.i = getelementptr [3 x ptr], ptr @si476x_core_is_valid_property.is_valid_property, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call zeroext i1 %5(ptr noundef %1, i16 noundef zeroext %conv) #3
  br i1 %call.i, label %land.rhs, label %si476x_core_is_valid_property.exit.land.end_crit_edge

si476x_core_is_valid_property.exit.land.end_crit_edge: ; preds = %si476x_core_is_valid_property.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

land.rhs:                                         ; preds = %si476x_core_is_valid_property.exit
  %6 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i8 = icmp sgt i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp2.i9 = icmp eq i32 %7, -1
  %spec.select.i10 = or i1 %cmp.i8, %cmp2.i9
  br i1 %spec.select.i10, label %do.body4.i11, label %do.end7.i, !prof !30

do.body4.i11:                                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mfd/si476x-prop.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 154, 0\0A.popsection", ""() #3, !srcloc !32
  unreachable

do.end7.i:                                        ; preds = %land.rhs
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.end7.i.land.end_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb11.i
  ]

do.end7.i.land.end_crit_edge:                     ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

sw.bb.i:                                          ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 12800, i16 %conv)
  %cmp9.i = icmp ne i16 %conv, 12800
  br label %land.end

sw.bb11.i:                                        ; preds = %do.end7.i
  %9 = zext i16 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.1)
  switch i16 %conv, label %lor.rhs18.i [
    i16 4102, label %sw.bb11.i.land.end_crit_edge
    i16 8720, label %sw.bb11.i.land.end_crit_edge12
    i16 12800, label %sw.bb11.i.land.end_crit_edge13
  ]

sw.bb11.i.land.end_crit_edge13:                   ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

sw.bb11.i.land.end_crit_edge12:                   ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

sw.bb11.i.land.end_crit_edge:                     ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

lor.rhs18.i:                                      ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.end

land.end:                                         ; preds = %lor.rhs18.i, %sw.bb11.i.land.end_crit_edge, %sw.bb11.i.land.end_crit_edge12, %sw.bb11.i.land.end_crit_edge13, %sw.bb.i, %do.end7.i.land.end_crit_edge, %si476x_core_is_valid_property.exit.land.end_crit_edge
  %10 = phi i1 [ false, %si476x_core_is_valid_property.exit.land.end_crit_edge ], [ %cmp9.i, %sw.bb.i ], [ false, %sw.bb11.i.land.end_crit_edge ], [ true, %lor.rhs18.i ], [ false, %sw.bb11.i.land.end_crit_edge12 ], [ true, %do.end7.i.land.end_crit_edge ], [ false, %sw.bb11.i.land.end_crit_edge13 ]
  ret i1 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @si476x_core_regmap_readable_register(ptr nocapture noundef readonly %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %revision.i = getelementptr inbounds %struct.si476x_core, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp sgt i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp2.i = icmp eq i32 %3, -1
  %spec.select.i = or i1 %cmp.i, %cmp2.i
  br i1 %spec.select.i, label %do.body4.i, label %si476x_core_is_valid_property.exit, !prof !30

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/mfd/si476x-prop.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 145, 0\0A.popsection", ""() #3, !srcloc !31
  unreachable

si476x_core_is_valid_property.exit:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv = trunc i32 %reg to i16
  %arrayidx.i = getelementptr [3 x ptr], ptr @si476x_core_is_valid_property.is_valid_property, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call zeroext i1 %5(ptr noundef %1, i16 noundef zeroext %conv) #3
  ret i1 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si476x_core_regmap_read(ptr noundef %context, i32 noundef %reg, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %reg to i16
  %call = tail call i32 @si476x_core_cmd_get_property(ptr noundef %context, i16 noundef zeroext %conv) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @si476x_core_regmap_write(ptr noundef %context, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %reg to i16
  %conv1 = trunc i32 %val to i16
  %call = tail call i32 @si476x_core_cmd_set_property(ptr noundef %context, i16 noundef zeroext %conv, i16 noundef zeroext %conv1) #3
  ret i32 %call
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @si476x_core_is_valid_property_a10(ptr nocapture noundef readnone %core, i16 noundef zeroext %property) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %cmp17.i = phi i1 [ %cmp.i, %for.inc.i.for.body.i_crit_edge ], [ true, %entry ]
  %i.015.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry ]
  %high.i = getelementptr %struct.si476x_property_range, ptr @si476x_core_is_valid_property_a10.valid_ranges, i32 %i.015.i, i32 1
  %0 = ptrtoint ptr %high.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %high.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %property)
  %cmp2.not.i = icmp ult i16 %1, %property
  br i1 %cmp2.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.si476x_property_range, ptr @si476x_core_is_valid_property_a10.valid_ranges, i32 %i.015.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %property)
  %cmp7.not.i = icmp ugt i16 %3, %property
  br i1 %cmp7.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.si476x_core_element_is_in_range.exit_crit_edge

land.lhs.true.i.si476x_core_element_is_in_range.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %si476x_core_element_is_in_range.exit

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.015.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %i.015.i)
  %cmp.i = icmp ult i32 %i.015.i, 17
  %exitcond.not.i = icmp eq i32 %inc.i, 18
  br i1 %exitcond.not.i, label %for.inc.i.si476x_core_element_is_in_range.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.inc.i.si476x_core_element_is_in_range.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %si476x_core_element_is_in_range.exit

si476x_core_element_is_in_range.exit:             ; preds = %for.inc.i.si476x_core_element_is_in_range.exit_crit_edge, %land.lhs.true.i.si476x_core_element_is_in_range.exit_crit_edge
  %cmp.lcssa.i = phi i1 [ %cmp.i, %for.inc.i.si476x_core_element_is_in_range.exit_crit_edge ], [ %cmp17.i, %land.lhs.true.i.si476x_core_element_is_in_range.exit_crit_edge ]
  %4 = freeze i1 %cmp.lcssa.i
  br i1 %4, label %si476x_core_element_is_in_range.exit.lor.end_crit_edge, label %switch.early.test

si476x_core_element_is_in_range.exit.lor.end_crit_edge: ; preds = %si476x_core_element_is_in_range.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test:                                ; preds = %si476x_core_element_is_in_range.exit
  %5 = zext i16 %property to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.2)
  switch i16 %property, label %for.cond.i.13 [
    i16 8960, label %switch.early.test.lor.end_crit_edge
    i16 8199, label %switch.early.test.lor.end_crit_edge25
    i16 4616, label %switch.early.test.lor.end_crit_edge26
    i16 4615, label %switch.early.test.lor.end_crit_edge27
    i16 1816, label %switch.early.test.lor.end_crit_edge28
    i16 1808, label %switch.early.test.lor.end_crit_edge29
    i16 1806, label %switch.early.test.lor.end_crit_edge30
    i16 1805, label %switch.early.test.lor.end_crit_edge31
    i16 1804, label %switch.early.test.lor.end_crit_edge32
    i16 1801, label %switch.early.test.lor.end_crit_edge33
    i16 1536, label %switch.early.test.lor.end_crit_edge34
    i16 1281, label %switch.early.test.lor.end_crit_edge35
    i16 1280, label %switch.early.test.lor.end_crit_edge36
    i16 0, label %switch.early.test.lor.end_crit_edge37
  ]

switch.early.test.lor.end_crit_edge37:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test.lor.end_crit_edge36:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test.lor.end_crit_edge35:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test.lor.end_crit_edge34:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test.lor.end_crit_edge33:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test.lor.end_crit_edge32:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test.lor.end_crit_edge31:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test.lor.end_crit_edge30:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test.lor.end_crit_edge29:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test.lor.end_crit_edge28:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test.lor.end_crit_edge27:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test.lor.end_crit_edge26:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test.lor.end_crit_edge25:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test.lor.end_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

for.cond.i.13:                                    ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

lor.end:                                          ; preds = %for.cond.i.13, %switch.early.test.lor.end_crit_edge, %switch.early.test.lor.end_crit_edge25, %switch.early.test.lor.end_crit_edge26, %switch.early.test.lor.end_crit_edge27, %switch.early.test.lor.end_crit_edge28, %switch.early.test.lor.end_crit_edge29, %switch.early.test.lor.end_crit_edge30, %switch.early.test.lor.end_crit_edge31, %switch.early.test.lor.end_crit_edge32, %switch.early.test.lor.end_crit_edge33, %switch.early.test.lor.end_crit_edge34, %switch.early.test.lor.end_crit_edge35, %switch.early.test.lor.end_crit_edge36, %switch.early.test.lor.end_crit_edge37, %si476x_core_element_is_in_range.exit.lor.end_crit_edge
  %6 = phi i1 [ true, %switch.early.test.lor.end_crit_edge ], [ false, %for.cond.i.13 ], [ true, %si476x_core_element_is_in_range.exit.lor.end_crit_edge ], [ true, %switch.early.test.lor.end_crit_edge25 ], [ true, %switch.early.test.lor.end_crit_edge26 ], [ true, %switch.early.test.lor.end_crit_edge27 ], [ true, %switch.early.test.lor.end_crit_edge28 ], [ true, %switch.early.test.lor.end_crit_edge29 ], [ true, %switch.early.test.lor.end_crit_edge30 ], [ true, %switch.early.test.lor.end_crit_edge31 ], [ true, %switch.early.test.lor.end_crit_edge32 ], [ true, %switch.early.test.lor.end_crit_edge33 ], [ true, %switch.early.test.lor.end_crit_edge34 ], [ true, %switch.early.test.lor.end_crit_edge35 ], [ true, %switch.early.test.lor.end_crit_edge36 ], [ true, %switch.early.test.lor.end_crit_edge37 ]
  ret i1 %6
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @si476x_core_is_valid_property_a20(ptr nocapture noundef readnone %core, i16 noundef zeroext %property) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @si476x_core_is_valid_property_a10(ptr noundef %core, i16 noundef zeroext %property)
  %0 = add i16 %property, -8725
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %0)
  %1 = icmp ult i16 %0, 5
  %call.fr = freeze i1 %call
  %2 = or i1 %call.fr, %1
  br i1 %2, label %entry.lor.end_crit_edge, label %switch.early.test

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test:                                ; preds = %entry
  %3 = zext i16 %property to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.3)
  switch i16 %property, label %for.cond.i.3 [
    i16 13313, label %switch.early.test.lor.end_crit_edge
    i16 8720, label %switch.early.test.lor.end_crit_edge25
    i16 4102, label %switch.early.test.lor.end_crit_edge26
    i16 1819, label %switch.early.test.lor.end_crit_edge27
  ]

switch.early.test.lor.end_crit_edge27:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test.lor.end_crit_edge26:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test.lor.end_crit_edge25:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test.lor.end_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

for.cond.i.3:                                     ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

lor.end:                                          ; preds = %for.cond.i.3, %switch.early.test.lor.end_crit_edge, %switch.early.test.lor.end_crit_edge25, %switch.early.test.lor.end_crit_edge26, %switch.early.test.lor.end_crit_edge27, %entry.lor.end_crit_edge
  %4 = phi i1 [ true, %switch.early.test.lor.end_crit_edge ], [ false, %for.cond.i.3 ], [ true, %entry.lor.end_crit_edge ], [ true, %switch.early.test.lor.end_crit_edge25 ], [ true, %switch.early.test.lor.end_crit_edge26 ], [ true, %switch.early.test.lor.end_crit_edge27 ]
  ret i1 %4
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @si476x_core_is_valid_property_a30(ptr nocapture noundef readnone %core, i16 noundef zeroext %property) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @si476x_core_is_valid_property_a10(ptr noundef %core, i16 noundef zeroext %property) #3
  %0 = add i16 %property, -8725
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %0)
  %1 = icmp ult i16 %0, 5
  %call.fr.i = freeze i1 %call.i
  %2 = or i1 %1, %call.fr.i
  br i1 %2, label %entry.lor.end_crit_edge, label %switch.early.test.i

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test.i:                              ; preds = %entry
  %3 = zext i16 %property to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.4)
  switch i16 %property, label %for.body.i.preheader [
    i16 13313, label %switch.early.test.i.lor.end_crit_edge
    i16 8720, label %switch.early.test.i.lor.end_crit_edge33
    i16 4102, label %switch.early.test.i.lor.end_crit_edge34
    i16 1819, label %switch.early.test.i.lor.end_crit_edge35
  ]

switch.early.test.i.lor.end_crit_edge35:          ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test.i.lor.end_crit_edge34:          ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test.i.lor.end_crit_edge33:          ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test.i.lor.end_crit_edge:            ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

for.body.i.preheader:                             ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1041, i16 %property)
  %cmp2.not.i = icmp ugt i16 %property, 1041
  br i1 %cmp2.not.i, label %for.inc.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp2(i16 1029, i16 %property)
  %cmp7.not.i = icmp ult i16 %property, 1029
  br i1 %cmp7.not.i, label %land.lhs.true.i.switch.early.test_crit_edge, label %land.lhs.true.i.lor.end_crit_edge

land.lhs.true.i.lor.end_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

land.lhs.true.i.switch.early.test_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %switch.early.test

for.inc.i:                                        ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp2(i16 8203, i16 %property)
  %cmp2.not.i.1 = icmp ugt i16 %property, 8203
  br i1 %cmp2.not.i.1, label %for.inc.i.1, label %land.lhs.true.i.1

land.lhs.true.i.1:                                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8200, i16 %property)
  %cmp7.not.i.1 = icmp ult i16 %property, 8200
  br i1 %cmp7.not.i.1, label %land.lhs.true.i.1.switch.early.test_crit_edge, label %land.lhs.true.i.1.lor.end_crit_edge

land.lhs.true.i.1.lor.end_crit_edge:              ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

land.lhs.true.i.1.switch.early.test_crit_edge:    ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %switch.early.test

for.inc.i.1:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 8739, i16 %property)
  %cmp2.not.i.2 = icmp ugt i16 %property, 8739
  br i1 %cmp2.not.i.2, label %for.inc.i.2, label %land.lhs.true.i.2

land.lhs.true.i.2:                                ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_const_cmp2(i16 8736, i16 %property)
  %cmp7.not.i.2 = icmp ult i16 %property, 8736
  br i1 %cmp7.not.i.2, label %land.lhs.true.i.2.switch.early.test_crit_edge, label %land.lhs.true.i.2.lor.end_crit_edge

land.lhs.true.i.2.lor.end_crit_edge:              ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

land.lhs.true.i.2.switch.early.test_crit_edge:    ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %switch.early.test

for.inc.i.2:                                      ; preds = %for.inc.i.1
  %4 = add i16 %property, -12551
  call void @__sanitizer_cov_trace_const_cmp2(i16 -7, i16 %4)
  %5 = icmp ult i16 %4, -7
  br i1 %5, label %for.inc.i.2.switch.early.test_crit_edge, label %for.inc.i.2.lor.end_crit_edge

for.inc.i.2.lor.end_crit_edge:                    ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

for.inc.i.2.switch.early.test_crit_edge:          ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %switch.early.test

switch.early.test:                                ; preds = %for.inc.i.2.switch.early.test_crit_edge, %land.lhs.true.i.2.switch.early.test_crit_edge, %land.lhs.true.i.1.switch.early.test_crit_edge, %land.lhs.true.i.switch.early.test_crit_edge
  %6 = zext i16 %property to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.5)
  switch i16 %property, label %for.cond.i.9 [
    i16 13314, label %switch.early.test.lor.end_crit_edge
    i16 12550, label %switch.early.test.lor.end_crit_edge36
    i16 12549, label %switch.early.test.lor.end_crit_edge37
    i16 8961, label %switch.early.test.lor.end_crit_edge38
    i16 8724, label %switch.early.test.lor.end_crit_edge39
    i16 8719, label %switch.early.test.lor.end_crit_edge40
    i16 4104, label %switch.early.test.lor.end_crit_edge41
    i16 4103, label %switch.early.test.lor.end_crit_edge42
    i16 1821, label %switch.early.test.lor.end_crit_edge43
    i16 1820, label %switch.early.test.lor.end_crit_edge44
  ]

switch.early.test.lor.end_crit_edge44:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test.lor.end_crit_edge43:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test.lor.end_crit_edge42:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test.lor.end_crit_edge41:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test.lor.end_crit_edge40:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test.lor.end_crit_edge39:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test.lor.end_crit_edge38:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test.lor.end_crit_edge37:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test.lor.end_crit_edge36:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

switch.early.test.lor.end_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

for.cond.i.9:                                     ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #5
  br label %lor.end

lor.end:                                          ; preds = %for.cond.i.9, %switch.early.test.lor.end_crit_edge, %switch.early.test.lor.end_crit_edge36, %switch.early.test.lor.end_crit_edge37, %switch.early.test.lor.end_crit_edge38, %switch.early.test.lor.end_crit_edge39, %switch.early.test.lor.end_crit_edge40, %switch.early.test.lor.end_crit_edge41, %switch.early.test.lor.end_crit_edge42, %switch.early.test.lor.end_crit_edge43, %switch.early.test.lor.end_crit_edge44, %for.inc.i.2.lor.end_crit_edge, %land.lhs.true.i.2.lor.end_crit_edge, %land.lhs.true.i.1.lor.end_crit_edge, %land.lhs.true.i.lor.end_crit_edge, %switch.early.test.i.lor.end_crit_edge, %switch.early.test.i.lor.end_crit_edge33, %switch.early.test.i.lor.end_crit_edge34, %switch.early.test.i.lor.end_crit_edge35, %entry.lor.end_crit_edge
  %7 = phi i1 [ true, %switch.early.test.lor.end_crit_edge ], [ true, %switch.early.test.i.lor.end_crit_edge ], [ true, %switch.early.test.i.lor.end_crit_edge33 ], [ true, %switch.early.test.i.lor.end_crit_edge34 ], [ true, %switch.early.test.i.lor.end_crit_edge35 ], [ true, %entry.lor.end_crit_edge ], [ false, %for.cond.i.9 ], [ true, %land.lhs.true.i.lor.end_crit_edge ], [ true, %land.lhs.true.i.1.lor.end_crit_edge ], [ true, %land.lhs.true.i.2.lor.end_crit_edge ], [ true, %for.inc.i.2.lor.end_crit_edge ], [ true, %switch.early.test.lor.end_crit_edge36 ], [ true, %switch.early.test.lor.end_crit_edge37 ], [ true, %switch.early.test.lor.end_crit_edge38 ], [ true, %switch.early.test.lor.end_crit_edge39 ], [ true, %switch.early.test.lor.end_crit_edge40 ], [ true, %switch.early.test.lor.end_crit_edge41 ], [ true, %switch.early.test.lor.end_crit_edge42 ], [ true, %switch.early.test.lor.end_crit_edge43 ], [ true, %switch.early.test.lor.end_crit_edge44 ]
  ret i1 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si476x_core_cmd_get_property(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si476x_core_cmd_set_property(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @devm_regmap_init_si476x._key, !1, !"_key", i1 false, i1 false}
!1 = !{!"../drivers/mfd/si476x-prop.c", i32 230, i32 9}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_devm_regmap_init_si476x, !4, !"__ksymtab_devm_regmap_init_si476x", i1 false, i1 false}
!4 = !{!"../drivers/mfd/si476x-prop.c", i32 233, i32 1}
!5 = !{ptr @si476x_regmap_config, !6, !"si476x_regmap_config", i1 false, i1 false}
!6 = !{!"../drivers/mfd/si476x-prop.c", i32 213, i32 35}
!7 = !{ptr @si476x_core_is_valid_property.is_valid_property, !8, !"is_valid_property", i1 false, i1 false}
!8 = !{!"../drivers/mfd/si476x-prop.c", i32 138, i32 37}
!9 = distinct !{null, !10, !"valid_properties", i1 false, i1 false}
!10 = !{!"../drivers/mfd/si476x-prop.c", i32 48, i32 19}
!11 = !{ptr @si476x_core_is_valid_property_a10.valid_ranges, !12, !"valid_ranges", i1 false, i1 false}
!12 = !{!"../drivers/mfd/si476x-prop.c", i32 59, i32 44}
!13 = distinct !{null, !14, !"valid_properties", i1 false, i1 false}
!14 = !{!"../drivers/mfd/si476x-prop.c", i32 89, i32 19}
!15 = distinct !{null, !16, !"valid_ranges", i1 false, i1 false}
!16 = !{!"../drivers/mfd/si476x-prop.c", i32 96, i32 44}
!17 = distinct !{null, !18, !"valid_properties", i1 false, i1 false}
!18 = !{!"../drivers/mfd/si476x-prop.c", i32 110, i32 19}
!19 = distinct !{null, !20, !"valid_ranges", i1 false, i1 false}
!20 = !{!"../drivers/mfd/si476x-prop.c", i32 119, i32 44}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"branch_weights", i32 1, i32 2000}
!31 = !{i64 2155905665, i64 2155906155, i64 2155905702, i64 2155905758, i64 2155905792, i64 2155905816, i64 2155905857, i64 2155905878, i64 2155905906, i64 2155905940}
!32 = !{i64 2155907375, i64 2155907865, i64 2155907412, i64 2155907468, i64 2155907502, i64 2155907526, i64 2155907567, i64 2155907588, i64 2155907616, i64 2155907650}
