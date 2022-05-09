; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-regmap.c_pt.bc'
source_filename = "../drivers/gpio/gpio-regmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+gpio_regmap_get_drvdata\22, \22a\22\09"
module asm "\09.weak\09__crc_gpio_regmap_get_drvdata\09\09\09\09"
module asm "\09.long\09__crc_gpio_regmap_get_drvdata\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpio_regmap_get_drvdata:\09\09\09\09\09"
module asm "\09.asciz \09\22gpio_regmap_get_drvdata\22\09\09\09\09\09"
module asm "__kstrtabns_gpio_regmap_get_drvdata:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gpio_regmap_register\22, \22a\22\09"
module asm "\09.weak\09__crc_gpio_regmap_register\09\09\09\09"
module asm "\09.long\09__crc_gpio_regmap_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpio_regmap_register:\09\09\09\09\09"
module asm "\09.asciz \09\22gpio_regmap_register\22\09\09\09\09\09"
module asm "__kstrtabns_gpio_regmap_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+gpio_regmap_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_gpio_regmap_unregister\09\09\09\09"
module asm "\09.long\09__crc_gpio_regmap_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_gpio_regmap_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22gpio_regmap_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_gpio_regmap_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_gpio_regmap_register\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_gpio_regmap_register\09\09\09\09"
module asm "\09.long\09__crc_devm_gpio_regmap_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_gpio_regmap_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_gpio_regmap_register\22\09\09\09\09\09"
module asm "__kstrtabns_devm_gpio_regmap_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.gpio_regmap = type { ptr, ptr, %struct.gpio_chip, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.64, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.64 = type { ptr }
%struct.gpio_regmap_config = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }

@__kstrtab_gpio_regmap_get_drvdata = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpio_regmap_get_drvdata = external dso_local constant [0 x i8], align 1
@__ksymtab_gpio_regmap_get_drvdata = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpio_regmap_get_drvdata to i32), ptr @__kstrtab_gpio_regmap_get_drvdata, ptr @__kstrtabns_gpio_regmap_get_drvdata }, section "___ksymtab_gpl+gpio_regmap_get_drvdata", align 4
@gpio_regmap_register.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gpio_regmap_register.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@__kstrtab_gpio_regmap_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpio_regmap_register = external dso_local constant [0 x i8], align 1
@__ksymtab_gpio_regmap_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpio_regmap_register to i32), ptr @__kstrtab_gpio_regmap_register, ptr @__kstrtabns_gpio_regmap_register }, section "___ksymtab_gpl+gpio_regmap_register", align 4
@__kstrtab_gpio_regmap_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_gpio_regmap_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_gpio_regmap_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @gpio_regmap_unregister to i32), ptr @__kstrtab_gpio_regmap_unregister, ptr @__kstrtabns_gpio_regmap_unregister }, section "___ksymtab_gpl+gpio_regmap_unregister", align 4
@__kstrtab_devm_gpio_regmap_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_gpio_regmap_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_gpio_regmap_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_gpio_regmap_register to i32), ptr @__kstrtab_devm_gpio_regmap_register, ptr @__kstrtabns_devm_gpio_regmap_register }, section "___ksymtab_gpl+devm_gpio_regmap_register", align 4
@__UNIQUE_ID_author223 = internal constant [52 x i8] c"gpio_regmap.author=Michael Walle <michael@walle.cc>\00", section ".modinfo", align 1
@__UNIQUE_ID_description224 = internal constant [56 x i8] c"gpio_regmap.description=GPIO generic regmap driver core\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [42 x i8] c"gpio_regmap.file=drivers/gpio/gpio-regmap\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [24 x i8] c"gpio_regmap.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.5 = private constant [30 x i8] c"../drivers/gpio/gpio-regmap.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 274, i32 8 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author223, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__ksymtab_devm_gpio_regmap_register, ptr @__ksymtab_gpio_regmap_get_drvdata, ptr @__ksymtab_gpio_regmap_register, ptr @__ksymtab_gpio_regmap_unregister, ptr @gpio_regmap_register.lock_key, ptr @gpio_regmap_register.request_key], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_regmap_register.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_regmap_register.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @gpio_regmap_get_drvdata(ptr nocapture noundef readonly %gpio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.gpio_regmap, ptr %gpio, i32 0, i32 11
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @gpio_regmap_register(ptr noundef readonly %config) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ngpio = getelementptr inbounds %struct.gpio_regmap_config, ptr %config, i32 0, i32 4
  %2 = ptrtoint ptr %ngpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %reg_dat_base = getelementptr inbounds %struct.gpio_regmap_config, ptr %config, i32 0, i32 6
  %4 = ptrtoint ptr %reg_dat_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_dat_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.end4.if.end9_crit_edge

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end4
  %reg_set_base = getelementptr inbounds %struct.gpio_regmap_config, ptr %config, i32 0, i32 7
  %6 = ptrtoint ptr %reg_set_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg_set_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end4.if.end9_crit_edge
  %reg_dir_out_base = getelementptr inbounds %struct.gpio_regmap_config, ptr %config, i32 0, i32 10
  %8 = ptrtoint ptr %reg_dir_out_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg_dir_out_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %lor.lhs.false, label %if.end9.land.lhs.true12_crit_edge

if.end9.land.lhs.true12_crit_edge:                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true12

lor.lhs.false:                                    ; preds = %if.end9
  %reg_dir_in_base = getelementptr inbounds %struct.gpio_regmap_config, ptr %config, i32 0, i32 9
  %10 = ptrtoint ptr %reg_dir_in_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg_dir_in_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11.not = icmp eq i32 %11, 0
  br i1 %tobool11.not, label %lor.lhs.false.if.end28_crit_edge, label %lor.lhs.false.land.lhs.true12_crit_edge

lor.lhs.false.land.lhs.true12_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true12

lor.lhs.false.if.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

land.lhs.true12:                                  ; preds = %lor.lhs.false.land.lhs.true12_crit_edge, %if.end9.land.lhs.true12_crit_edge
  br i1 %tobool5.not, label %land.lhs.true12.cleanup_crit_edge, label %lor.lhs.false15

land.lhs.true12.cleanup_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false15:                                  ; preds = %land.lhs.true12
  %reg_set_base16 = getelementptr inbounds %struct.gpio_regmap_config, ptr %config, i32 0, i32 7
  %12 = ptrtoint ptr %reg_set_base16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg_set_base16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool17.not = icmp eq i32 %13, 0
  br i1 %tobool17.not, label %lor.lhs.false15.cleanup_crit_edge, label %if.end20

lor.lhs.false15.cleanup_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false15
  br i1 %tobool10.not, label %if.end20.if.end28_crit_edge, label %land.lhs.true23

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

land.lhs.true23:                                  ; preds = %if.end20
  %reg_dir_in_base24 = getelementptr inbounds %struct.gpio_regmap_config, ptr %config, i32 0, i32 9
  %14 = ptrtoint ptr %reg_dir_in_base24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg_dir_in_base24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool25.not = icmp eq i32 %15, 0
  br i1 %tobool25.not, label %land.lhs.true23.if.end28_crit_edge, label %land.lhs.true23.cleanup_crit_edge

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true23.if.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.end28:                                         ; preds = %land.lhs.true23.if.end28_crit_edge, %if.end20.if.end28_crit_edge, %lor.lhs.false.if.end28_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 392) #9
  %tobool30.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool30.not, label %if.end28.cleanup_crit_edge, label %if.end33

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %17 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %config, align 4
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %call7.i.i, align 8
  %drvdata = getelementptr inbounds %struct.gpio_regmap_config, ptr %config, i32 0, i32 15
  %20 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %drvdata, align 4
  %driver_data = getelementptr inbounds %struct.gpio_regmap, ptr %call7.i.i, i32 0, i32 11
  %22 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %driver_data, align 4
  %regmap = getelementptr inbounds %struct.gpio_regmap_config, ptr %config, i32 0, i32 1
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %regmap36 = getelementptr inbounds %struct.gpio_regmap, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %regmap36 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %regmap36, align 4
  %ngpio_per_reg = getelementptr inbounds %struct.gpio_regmap_config, ptr %config, i32 0, i32 12
  %26 = ptrtoint ptr %ngpio_per_reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ngpio_per_reg, align 4
  %ngpio_per_reg37 = getelementptr inbounds %struct.gpio_regmap, ptr %call7.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %ngpio_per_reg37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %ngpio_per_reg37, align 8
  %reg_stride = getelementptr inbounds %struct.gpio_regmap_config, ptr %config, i32 0, i32 11
  %29 = ptrtoint ptr %reg_stride to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg_stride, align 4
  %reg_stride38 = getelementptr inbounds %struct.gpio_regmap, ptr %call7.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %reg_stride38 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %reg_stride38, align 4
  %reg_mask_xlate = getelementptr inbounds %struct.gpio_regmap_config, ptr %config, i32 0, i32 14
  %32 = ptrtoint ptr %reg_mask_xlate to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_mask_xlate, align 4
  %reg_mask_xlate39 = getelementptr inbounds %struct.gpio_regmap, ptr %call7.i.i, i32 0, i32 10
  %34 = ptrtoint ptr %reg_mask_xlate39 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %reg_mask_xlate39, align 8
  %35 = ptrtoint ptr %reg_dat_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg_dat_base, align 4
  %reg_dat_base41 = getelementptr inbounds %struct.gpio_regmap, ptr %call7.i.i, i32 0, i32 5
  %37 = ptrtoint ptr %reg_dat_base41 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %reg_dat_base41, align 4
  %reg_set_base42 = getelementptr inbounds %struct.gpio_regmap_config, ptr %config, i32 0, i32 7
  %38 = ptrtoint ptr %reg_set_base42 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %reg_set_base42, align 4
  %reg_set_base43 = getelementptr inbounds %struct.gpio_regmap, ptr %call7.i.i, i32 0, i32 6
  %40 = ptrtoint ptr %reg_set_base43 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %reg_set_base43, align 8
  %reg_clr_base = getelementptr inbounds %struct.gpio_regmap_config, ptr %config, i32 0, i32 8
  %41 = ptrtoint ptr %reg_clr_base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %reg_clr_base, align 4
  %reg_clr_base44 = getelementptr inbounds %struct.gpio_regmap, ptr %call7.i.i, i32 0, i32 7
  %43 = ptrtoint ptr %reg_clr_base44 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %reg_clr_base44, align 4
  %reg_dir_in_base45 = getelementptr inbounds %struct.gpio_regmap_config, ptr %config, i32 0, i32 9
  %44 = ptrtoint ptr %reg_dir_in_base45 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %reg_dir_in_base45, align 4
  %reg_dir_in_base46 = getelementptr inbounds %struct.gpio_regmap, ptr %call7.i.i, i32 0, i32 8
  %46 = ptrtoint ptr %reg_dir_in_base46 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %reg_dir_in_base46, align 8
  %47 = ptrtoint ptr %reg_dir_out_base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %reg_dir_out_base, align 4
  %reg_dir_out_base48 = getelementptr inbounds %struct.gpio_regmap, ptr %call7.i.i, i32 0, i32 9
  %49 = ptrtoint ptr %reg_dir_out_base48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %reg_dir_out_base48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool50.not = icmp eq i32 %27, 0
  br i1 %tobool50.not, label %if.then51, label %if.end33.if.end54_crit_edge

if.end33.if.end54_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then51:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %ngpio to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ngpio, align 4
  %52 = ptrtoint ptr %ngpio_per_reg37 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %ngpio_per_reg37, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end33.if.end54_crit_edge
  %53 = ptrtoint ptr %reg_stride38 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %reg_stride38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool56.not = icmp eq i32 %54, 0
  br i1 %tobool56.not, label %if.then57, label %if.end54.if.end59_crit_edge

if.end54.if.end59_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %reg_stride38 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %reg_stride38, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.end54.if.end59_crit_edge
  %56 = ptrtoint ptr %reg_mask_xlate39 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg_mask_xlate39, align 8
  %tobool61.not = icmp eq ptr %57, null
  br i1 %tobool61.not, label %if.then62, label %if.end59.if.end64_crit_edge

if.end59.if.end64_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %reg_mask_xlate39 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @gpio_regmap_simple_xlate, ptr %reg_mask_xlate39, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end59.if.end64_crit_edge
  %gpio_chip = getelementptr inbounds %struct.gpio_regmap, ptr %call7.i.i, i32 0, i32 2
  %parent66 = getelementptr inbounds %struct.gpio_regmap, ptr %call7.i.i, i32 0, i32 2, i32 2
  %59 = ptrtoint ptr %parent66 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %18, ptr %parent66, align 8
  %fwnode = getelementptr inbounds %struct.gpio_regmap_config, ptr %config, i32 0, i32 2
  %60 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fwnode, align 4
  %fwnode67 = getelementptr inbounds %struct.gpio_regmap, ptr %call7.i.i, i32 0, i32 2, i32 3
  %62 = ptrtoint ptr %fwnode67 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %fwnode67, align 4
  %base = getelementptr inbounds %struct.gpio_regmap, ptr %call7.i.i, i32 0, i32 2, i32 19
  %63 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %base, align 4
  %64 = ptrtoint ptr %ngpio to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ngpio, align 4
  %conv = trunc i32 %65 to i16
  %ngpio69 = getelementptr inbounds %struct.gpio_regmap, ptr %call7.i.i, i32 0, i32 2, i32 20
  %66 = ptrtoint ptr %ngpio69 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv, ptr %ngpio69, align 8
  %names = getelementptr inbounds %struct.gpio_regmap_config, ptr %config, i32 0, i32 5
  %67 = ptrtoint ptr %names to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %names, align 4
  %names70 = getelementptr inbounds %struct.gpio_regmap, ptr %call7.i.i, i32 0, i32 2, i32 22
  %69 = ptrtoint ptr %names70 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %68, ptr %names70, align 4
  %label = getelementptr inbounds %struct.gpio_regmap_config, ptr %config, i32 0, i32 3
  %70 = ptrtoint ptr %label to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %label, align 4
  %tobool71.not = icmp eq ptr %71, null
  br i1 %tobool71.not, label %cond.false, label %if.end64.cond.end_crit_edge

if.end64.cond.end_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %if.end64
  %init_name.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 3
  %72 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %73, null
  br i1 %tobool.not.i, label %if.end.i, label %cond.false.cond.end_crit_edge

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

if.end.i:                                         ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %18, align 4
  br label %cond.end

cond.end:                                         ; preds = %if.end.i, %cond.false.cond.end_crit_edge, %if.end64.cond.end_crit_edge
  %cond = phi ptr [ %71, %if.end64.cond.end_crit_edge ], [ %75, %if.end.i ], [ %73, %cond.false.cond.end_crit_edge ]
  %76 = ptrtoint ptr %gpio_chip to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %cond, ptr %gpio_chip, align 8
  %can_sleep = getelementptr inbounds %struct.gpio_regmap, ptr %call7.i.i, i32 0, i32 2, i32 23
  %77 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %can_sleep, align 8
  %get = getelementptr inbounds %struct.gpio_regmap, ptr %call7.i.i, i32 0, i32 2, i32 10
  %78 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @gpio_regmap_get, ptr %get, align 8
  %79 = ptrtoint ptr %reg_set_base43 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %reg_set_base43, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool76.not = icmp eq i32 %80, 0
  br i1 %tobool76.not, label %cond.end.if.end86_crit_edge, label %land.lhs.true77

cond.end.if.end86_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

land.lhs.true77:                                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %reg_clr_base44 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %reg_clr_base44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool79.not = icmp eq i32 %82, 0
  %set84 = getelementptr inbounds %struct.gpio_regmap, ptr %call7.i.i, i32 0, i32 2, i32 12
  %gpio_regmap_set.gpio_regmap_set_with_clear = select i1 %tobool79.not, ptr @gpio_regmap_set, ptr @gpio_regmap_set_with_clear
  %83 = ptrtoint ptr %set84 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %gpio_regmap_set.gpio_regmap_set_with_clear, ptr %set84, align 8
  br label %if.end86

if.end86:                                         ; preds = %land.lhs.true77, %cond.end.if.end86_crit_edge
  %84 = ptrtoint ptr %reg_dir_in_base46 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %reg_dir_in_base46, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool88.not = icmp eq i32 %85, 0
  br i1 %tobool88.not, label %lor.lhs.false89, label %if.end86.if.then92_crit_edge

if.end86.if.then92_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then92

lor.lhs.false89:                                  ; preds = %if.end86
  %86 = ptrtoint ptr %reg_dir_out_base48 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %reg_dir_out_base48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool91.not = icmp eq i32 %87, 0
  br i1 %tobool91.not, label %lor.lhs.false89.if.end93_crit_edge, label %lor.lhs.false89.if.then92_crit_edge

lor.lhs.false89.if.then92_crit_edge:              ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then92

lor.lhs.false89.if.end93_crit_edge:               ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.then92:                                        ; preds = %lor.lhs.false89.if.then92_crit_edge, %if.end86.if.then92_crit_edge
  %get_direction = getelementptr inbounds %struct.gpio_regmap, ptr %call7.i.i, i32 0, i32 2, i32 7
  %88 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @gpio_regmap_get_direction, ptr %get_direction, align 4
  %direction_input = getelementptr inbounds %struct.gpio_regmap, ptr %call7.i.i, i32 0, i32 2, i32 8
  %89 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @gpio_regmap_direction_input, ptr %direction_input, align 8
  %direction_output = getelementptr inbounds %struct.gpio_regmap, ptr %call7.i.i, i32 0, i32 2, i32 9
  %90 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @gpio_regmap_direction_output, ptr %direction_output, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %lor.lhs.false89.if.end93_crit_edge
  %call94 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %gpio_chip, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @gpio_regmap_register.lock_key, ptr noundef nonnull @gpio_regmap_register.request_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp = icmp slt i32 %call94, 0
  br i1 %cmp, label %if.end93.err_free_gpio_crit_edge, label %if.end97

if.end93.err_free_gpio_crit_edge:                 ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_gpio

if.end97:                                         ; preds = %if.end93
  %irq_domain = getelementptr inbounds %struct.gpio_regmap_config, ptr %config, i32 0, i32 13
  %91 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %irq_domain, align 4
  %tobool98.not = icmp eq ptr %92, null
  br i1 %tobool98.not, label %if.end97.cleanup_crit_edge, label %if.then99

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then99:                                        ; preds = %if.end97
  %call101 = tail call i32 @gpiochip_irqchip_add_domain(ptr noundef %gpio_chip, ptr noundef nonnull %92) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.then99.cleanup_crit_edge, label %err_remove_gpiochip

if.then99.cleanup_crit_edge:                      ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_remove_gpiochip:                              ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiochip_remove(ptr noundef %gpio_chip) #6
  br label %err_free_gpio

err_free_gpio:                                    ; preds = %err_remove_gpiochip, %if.end93.err_free_gpio_crit_edge
  %ret.0 = phi i32 [ %call94, %if.end93.err_free_gpio_crit_edge ], [ %call101, %err_remove_gpiochip ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %93 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_free_gpio, %if.then99.cleanup_crit_edge, %if.end97.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %land.lhs.true23.cleanup_crit_edge, %lor.lhs.false15.cleanup_crit_edge, %land.lhs.true12.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %93, %err_free_gpio ], [ %call7.i.i, %if.then99.cleanup_crit_edge ], [ %call7.i.i, %if.end97.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false15.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true12.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true23.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end28.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gpio_regmap_simple_xlate(ptr nocapture noundef readonly %gpio, i32 noundef %base, i32 noundef %offset, ptr nocapture noundef writeonly %reg, ptr nocapture noundef writeonly %mask) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ngpio_per_reg = getelementptr inbounds %struct.gpio_regmap, ptr %gpio, i32 0, i32 4
  %0 = ptrtoint ptr %ngpio_per_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ngpio_per_reg, align 4
  %.frozen = freeze i32 %1
  %div = udiv i32 %offset, %.frozen
  %2 = mul i32 %div, %.frozen
  %rem.decomposed = sub i32 %offset, %2
  %reg_stride = getelementptr inbounds %struct.gpio_regmap, ptr %gpio, i32 0, i32 3
  %3 = ptrtoint ptr %reg_stride to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_stride, align 4
  %mul = mul i32 %4, %div
  %add = add i32 %mul, %base
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %reg, align 4
  %shl = shl nuw i32 1, %rem.decomposed
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shl, ptr %mask, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_regmap_get(ptr noundef %chip, i32 noundef %offset) #1 align 64 {
entry:
  %val = alloca i32, align 4
  %reg = alloca i32, align 4
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %reg, align 4, !annotation !27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #6
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mask, align 4, !annotation !27
  %reg_dat_base = getelementptr inbounds %struct.gpio_regmap, ptr %call, i32 0, i32 5
  %3 = ptrtoint ptr %reg_dat_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_dat_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %reg_set_base = getelementptr inbounds %struct.gpio_regmap, ptr %call, i32 0, i32 6
  %5 = ptrtoint ptr %reg_set_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_set_base, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %.sink29 = phi i32 [ %6, %if.else ], [ %4, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.sink29)
  %cmp.i27 = icmp eq i32 %.sink29, -1
  %.addr.i28 = select i1 %cmp.i27, i32 0, i32 %.sink29
  %reg_mask_xlate = getelementptr inbounds %struct.gpio_regmap, ptr %call, i32 0, i32 10
  %7 = ptrtoint ptr %reg_mask_xlate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_mask_xlate, align 4
  %call4 = call i32 %8(ptr noundef %call, i32 noundef %.addr.i28, i32 noundef %offset, ptr noundef nonnull %reg, ptr noundef nonnull %mask) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %regmap = getelementptr inbounds %struct.gpio_regmap, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg, align 4
  %call8 = call i32 @regmap_read(ptr noundef %10, i32 noundef %12, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask, align 4
  %and = and i32 %16, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12 = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool12 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %lnot.ext, %if.end11 ], [ %call4, %if.end.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_regmap_set_with_clear(ptr noundef %chip, i32 noundef %offset, i32 noundef %val) #1 align 64 {
entry:
  %reg = alloca i32, align 4
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #6
  %1 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %mask, align 4, !annotation !27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %reg_clr_base = getelementptr inbounds %struct.gpio_regmap, ptr %call, i32 0, i32 7
  %reg_set_base = getelementptr inbounds %struct.gpio_regmap, ptr %call, i32 0, i32 6
  %reg_clr_base.sink = select i1 %tobool.not, ptr %reg_clr_base, ptr %reg_set_base
  %2 = ptrtoint ptr %reg_clr_base.sink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_clr_base.sink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i9 = icmp eq i32 %3, -1
  %.addr.i10 = select i1 %cmp.i9, i32 0, i32 %3
  %reg_mask_xlate = getelementptr inbounds %struct.gpio_regmap, ptr %call, i32 0, i32 10
  %4 = ptrtoint ptr %reg_mask_xlate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_mask_xlate, align 4
  %call3 = call i32 %5(ptr noundef %call, i32 noundef %.addr.i10, i32 noundef %offset, ptr noundef nonnull %reg, ptr noundef nonnull %mask) #6
  %regmap = getelementptr inbounds %struct.gpio_regmap, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg, align 4
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask, align 4
  %call4 = call i32 @regmap_write(ptr noundef %7, i32 noundef %9, i32 noundef %11) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_regmap_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %val) #1 align 64 {
entry:
  %reg = alloca i32, align 4
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %reg_set_base = getelementptr inbounds %struct.gpio_regmap, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %reg_set_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_set_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i = icmp eq i32 %1, -1
  %.addr.i = select i1 %cmp.i, i32 0, i32 %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #6
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %mask, align 4, !annotation !27
  %reg_mask_xlate = getelementptr inbounds %struct.gpio_regmap, ptr %call, i32 0, i32 10
  %4 = ptrtoint ptr %reg_mask_xlate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_mask_xlate, align 4
  %call2 = call i32 %5(ptr noundef %call, i32 noundef %.addr.i, i32 noundef %offset, ptr noundef nonnull %reg, ptr noundef nonnull %mask) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %regmap4 = getelementptr inbounds %struct.gpio_regmap, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap4, align 4
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg, align 4
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask, align 4
  %. = select i1 %tobool.not, i32 0, i32 %11
  %call.i10 = call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_regmap_get_direction(ptr noundef %chip, i32 noundef %offset) #1 align 64 {
entry:
  %val = alloca i32, align 4
  %reg = alloca i32, align 4
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %reg, align 4, !annotation !27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #6
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mask, align 4, !annotation !27
  %reg_dir_out_base = getelementptr inbounds %struct.gpio_regmap, ptr %call, i32 0, i32 9
  %3 = ptrtoint ptr %reg_dir_out_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_dir_out_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.else:                                          ; preds = %entry
  %reg_dir_in_base = getelementptr inbounds %struct.gpio_regmap, ptr %call, i32 0, i32 8
  %5 = ptrtoint ptr %reg_dir_in_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_dir_in_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.else.cleanup_crit_edge, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.else.if.end8_crit_edge, %entry.if.end8_crit_edge
  %.sink40 = phi i32 [ %4, %entry.if.end8_crit_edge ], [ %6, %if.else.if.end8_crit_edge ]
  %invert.0 = phi i32 [ 1, %entry.if.end8_crit_edge ], [ 0, %if.else.if.end8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.sink40)
  %cmp.i38 = icmp eq i32 %.sink40, -1
  %.addr.i39 = select i1 %cmp.i38, i32 0, i32 %.sink40
  %reg_mask_xlate = getelementptr inbounds %struct.gpio_regmap, ptr %call, i32 0, i32 10
  %7 = ptrtoint ptr %reg_mask_xlate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_mask_xlate, align 4
  %call9 = call i32 %8(ptr noundef %call, i32 noundef %.addr.i39, i32 noundef %offset, ptr noundef nonnull %reg, ptr noundef nonnull %mask) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %regmap = getelementptr inbounds %struct.gpio_regmap, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg, align 4
  %call13 = call i32 @regmap_read(ptr noundef %10, i32 noundef %12, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask, align 4
  %and = and i32 %16, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17 = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool17 to i32
  %tobool19.not = xor i32 %invert.0, %lnot.ext
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.else.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %tobool19.not, %if.end16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_regmap_direction_input(ptr noundef %chip, i32 noundef %offset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @gpio_regmap_set_direction(ptr noundef %chip, i32 noundef %offset, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_regmap_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #1 align 64 {
entry:
  %reg.i = alloca i32, align 4
  %mask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %reg_set_base.i = getelementptr inbounds %struct.gpio_regmap, ptr %call.i, i32 0, i32 6
  %0 = ptrtoint ptr %reg_set_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg_set_base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.i.i = icmp eq i32 %1, -1
  %.addr.i.i = select i1 %cmp.i.i, i32 0, i32 %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #6
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg.i, align 4, !annotation !27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #6
  %3 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %mask.i, align 4, !annotation !27
  %reg_mask_xlate.i = getelementptr inbounds %struct.gpio_regmap, ptr %call.i, i32 0, i32 10
  %4 = ptrtoint ptr %reg_mask_xlate.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_mask_xlate.i, align 4
  %call2.i = call i32 %5(ptr noundef %call.i, i32 noundef %.addr.i.i, i32 noundef %offset, ptr noundef nonnull %reg.i, ptr noundef nonnull %mask.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %regmap4.i = getelementptr inbounds %struct.gpio_regmap, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %regmap4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap4.i, align 4
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg.i, align 4
  %10 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask.i, align 4
  %..i = select i1 %tobool.not.i, i32 0, i32 %11
  %call.i10.i = call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %..i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  %call = call fastcc i32 @gpio_regmap_set_direction(ptr noundef %chip, i32 noundef %offset, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_irqchip_add_domain(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gpio_regmap_unregister(ptr noundef %gpio) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_chip = getelementptr inbounds %struct.gpio_regmap, ptr %gpio, i32 0, i32 2
  tail call void @gpiochip_remove(ptr noundef %gpio_chip) #6
  tail call void @kfree(ptr noundef %gpio) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_gpio_regmap_register(ptr noundef %dev, ptr noundef %config) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpio_regmap_register(ptr noundef %config)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @devm_gpio_regmap_unregister, ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %gpio_chip.i.i.i = getelementptr inbounds %struct.gpio_regmap, ptr %call, i32 0, i32 2
  tail call void @gpiochip_remove(ptr noundef %gpio_chip.i.i.i) #6
  tail call void @kfree(ptr noundef %call) #6
  %0 = inttoptr i32 %call.i to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %0, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_gpio_regmap_unregister(ptr noundef %res) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_chip.i = getelementptr inbounds %struct.gpio_regmap, ptr %res, i32 0, i32 2
  tail call void @gpiochip_remove(ptr noundef %gpio_chip.i) #6
  tail call void @kfree(ptr noundef %res) #6
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gpio_regmap_set_direction(ptr noundef %chip, i32 noundef %offset, i1 noundef zeroext %output) unnamed_addr #1 align 64 {
entry:
  %reg = alloca i32, align 4
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #6
  %1 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %mask, align 4, !annotation !27
  %reg_dir_out_base = getelementptr inbounds %struct.gpio_regmap, ptr %call, i32 0, i32 9
  %2 = ptrtoint ptr %reg_dir_out_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_dir_out_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.end8.thread

if.else:                                          ; preds = %entry
  %reg_dir_in_base = getelementptr inbounds %struct.gpio_regmap, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %reg_dir_in_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_dir_in_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.else.cleanup_crit_edge, label %if.end8

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i39 = icmp eq i32 %5, -1
  %.addr.i40 = select i1 %cmp.i39, i32 0, i32 %5
  %reg_mask_xlate = getelementptr inbounds %struct.gpio_regmap, ptr %call, i32 0, i32 10
  %6 = ptrtoint ptr %reg_mask_xlate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_mask_xlate, align 4
  %call9 = call i32 %7(ptr noundef %call, i32 noundef %.addr.i40, i32 noundef %offset, ptr noundef nonnull %reg, ptr noundef nonnull %mask) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then14, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp eq i32 %3, -1
  %.addr.i = select i1 %cmp.i, i32 0, i32 %3
  %reg_mask_xlate42 = getelementptr inbounds %struct.gpio_regmap, ptr %call, i32 0, i32 10
  %8 = ptrtoint ptr %reg_mask_xlate42 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_mask_xlate42, align 4
  %call943 = call i32 %9(ptr noundef %call, i32 noundef %.addr.i, i32 noundef %offset, ptr noundef nonnull %reg, ptr noundef nonnull %mask) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call943)
  %tobool10.not44 = icmp eq i32 %call943, 0
  br i1 %tobool10.not44, label %if.else16, label %if.end8.thread.cleanup_crit_edge

if.end8.thread.cleanup_crit_edge:                 ; preds = %if.end8.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14:                                        ; preds = %if.end8
  br i1 %output, label %if.then14.if.end22_crit_edge, label %cond.false

if.then14.if.end22_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

cond.false:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask, align 4
  br label %if.end22

if.else16:                                        ; preds = %if.end8.thread
  br i1 %output, label %cond.true18, label %if.else16.if.end22_crit_edge

if.else16.if.end22_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

cond.true18:                                      ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask, align 4
  br label %if.end22

if.end22:                                         ; preds = %cond.true18, %if.else16.if.end22_crit_edge, %cond.false, %if.then14.if.end22_crit_edge
  %val.0 = phi i32 [ %11, %cond.false ], [ 0, %if.then14.if.end22_crit_edge ], [ %13, %cond.true18 ], [ 0, %if.else16.if.end22_crit_edge ]
  %regmap = getelementptr inbounds %struct.gpio_regmap, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg, align 4
  %18 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mask, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end8.thread.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end22 ], [ -95, %if.else.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call943, %if.end8.thread.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

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

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__ksymtab_gpio_regmap_get_drvdata, !1, !"__ksymtab_gpio_regmap_get_drvdata", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-regmap.c", i32 185, i32 1}
!2 = !{ptr @gpio_regmap_register.lock_key, !3, !"lock_key", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpio-regmap.c", i32 274, i32 8}
!4 = !{ptr @gpio_regmap_register.request_key, !3, !"request_key", i1 false, i1 false}
!5 = !{ptr @__ksymtab_gpio_regmap_register, !6, !"__ksymtab_gpio_regmap_register", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-regmap.c", i32 292, i32 1}
!7 = !{ptr @__ksymtab_gpio_regmap_unregister, !8, !"__ksymtab_gpio_regmap_unregister", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-regmap.c", i32 303, i32 1}
!9 = !{ptr @__ksymtab_devm_gpio_regmap_register, !10, !"__ksymtab_devm_gpio_regmap_register", i1 false, i1 false}
!10 = !{!"../drivers/gpio/gpio-regmap.c", i32 338, i32 1}
!11 = !{ptr @__UNIQUE_ID_author223, !12, !"__UNIQUE_ID_author223", i1 false, i1 false}
!12 = !{!"../drivers/gpio/gpio-regmap.c", i32 340, i32 1}
!13 = !{ptr @__UNIQUE_ID_description224, !14, !"__UNIQUE_ID_description224", i1 false, i1 false}
!14 = !{!"../drivers/gpio/gpio-regmap.c", i32 341, i32 1}
!15 = !{ptr @__UNIQUE_ID_file225, !16, !"__UNIQUE_ID_file225", i1 false, i1 false}
!16 = !{!"../drivers/gpio/gpio-regmap.c", i32 342, i32 1}
!17 = !{ptr @__UNIQUE_ID_license226, !16, !"__UNIQUE_ID_license226", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"auto-init"}
