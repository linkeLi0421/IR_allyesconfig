; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/renesas/gpio.c_pt.bc'
source_filename = "../drivers/pinctrl/renesas/gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sh_pfc = type { ptr, ptr, %struct.spinlock, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sh_pfc_soc_info = type { ptr, ptr, %struct.pinmux_range, %struct.pinmux_range, ptr, i32, %struct.pinmux_range, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.pinmux_range = type { i16, i16, i16 }
%struct.sh_pfc_window = type { i32, ptr, i32 }
%struct.sh_pfc_chip = type { ptr, %struct.gpio_chip, ptr, ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.64, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.64 = type { ptr }
%struct.pinmux_data_reg = type { i32, i8, ptr }
%struct.sh_pfc_gpio_data_reg = type { ptr, i32 }
%struct.sh_pfc_pin = type { ptr, i32, i16, i16 }
%struct.sh_pfc_gpio_pin = type { i8, i8 }
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
%struct.sh_pfc_pin_range = type { i16, i16 }
%struct.pinmux_irq = type { ptr }
%struct.pinmux_func = type { i16, ptr }

@sh_pfc_register_gpiochip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 350, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"invalid number of IRQ resources\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sh_pfc_register_gpiochip\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/pinctrl/renesas/gpio.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sh_pfc_register_gpiochip._entry_ptr = internal global ptr @sh_pfc_register_gpiochip._entry, section ".printk_index", align 4
@sh_pfc_add_gpiochip.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sh_pfc_add_gpiochip.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sh_pfc_add_gpiochip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 317, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s handling gpio %u -> %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sh_pfc_add_gpiochip\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sh_pfc_add_gpiochip._entry_ptr = internal global ptr @sh_pfc_add_gpiochip._entry, section ".printk_index", align 4
@gpio_function_request.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@gpio_function_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 261, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Use of GPIO API for function requests is deprecated, convert to pinctrl\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gpio_function_request\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@gpio_function_request._entry_ptr = internal global ptr @gpio_function_request._entry, section ".printk_index", align 4
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 350, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 311, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 315, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private constant [34 x i8] c"../drivers/pinctrl/renesas/gpio.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 260, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @gpio_function_request._entry, ptr @gpio_function_request._entry_ptr, ptr @sh_pfc_add_gpiochip._entry, ptr @sh_pfc_add_gpiochip._entry_ptr, ptr @sh_pfc_register_gpiochip._entry, ptr @sh_pfc_register_gpiochip._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sh_pfc_add_gpiochip.lock_key, ptr @sh_pfc_add_gpiochip.request_key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_register_gpiochip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_add_gpiochip.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_add_gpiochip.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_add_gpiochip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_function_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sh_pfc_register_gpiochip(ptr noundef %pfc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 1
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %data_regs = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data_regs, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup66_crit_edge, label %if.end

entry.cleanup66_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup66

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %num_windows = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 3
  %6 = ptrtoint ptr %num_windows to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_windows, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3169.not = icmp eq i32 %7, 0
  br i1 %cmp3169.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %windows = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 4
  %8 = ptrtoint ptr %windows to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %windows, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0170 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx4 = getelementptr %struct.sh_pfc_window, ptr %9, i32 %i.0170
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %11)
  %cmp5.not = icmp ult i32 %5, %11
  br i1 %cmp5.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %size = getelementptr %struct.sh_pfc_window, ptr %9, i32 %i.0170, i32 2
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %size, align 4
  %add = add i32 %13, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp7 = icmp ult i32 %5, %add
  br i1 %cmp7, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0170, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.cleanup66_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup66_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup66

for.end:                                          ; preds = %land.lhs.true.for.end_crit_edge, %if.end.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %i.0170, %land.lhs.true.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %7)
  %cmp11 = icmp eq i32 %i.0.lcssa, %7
  br i1 %cmp11, label %for.end.cleanup66_crit_edge, label %if.end13

for.end.cleanup66_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup66

if.end13:                                         ; preds = %for.end
  %num_irqs = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 5
  %14 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_irqs, align 4
  %gpio_irq_size = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %gpio_irq_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gpio_irq_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp15.not = icmp eq i32 %15, %17
  br i1 %cmp15.not, label %if.end17, label %do.end

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pfc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str) #7
  br label %cleanup66

if.end17:                                         ; preds = %if.end13
  %windows18 = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 4
  %20 = ptrtoint ptr %windows18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %windows18, align 4
  %22 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pfc, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %23, i32 noundef 364, i32 noundef 3520) #4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end17.if.then21_crit_edge, label %if.end.i, !prof !33

if.end17.if.then21_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

if.end.i:                                         ; preds = %if.end17
  %arrayidx19 = getelementptr %struct.sh_pfc_window, ptr %21, i32 %i.0.lcssa
  %mem5.i = getelementptr inbounds %struct.sh_pfc_chip, ptr %call.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %mem5.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx19, ptr %mem5.i, align 4
  %25 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %pfc, ptr %call.i.i, align 4
  %gpio_chip.i134 = getelementptr inbounds %struct.sh_pfc_chip, ptr %call.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %info, align 4
  %nr_pins.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %nr_pins.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nr_pins.i, align 4
  %30 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %29, i32 2) #4
  %31 = extractvalue { i32, i1 } %30, 1
  br i1 %31, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !33

devm_kcalloc.exit.thread.i:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %pins32.i = getelementptr inbounds %struct.sh_pfc_chip, ptr %call.i.i, i32 0, i32 4
  br label %if.then21.sink.split

devm_kcalloc.exit.i:                              ; preds = %if.end.i
  %32 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pfc, align 4
  %34 = extractvalue { i32, i1 } %30, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %33, i32 noundef %34, i32 noundef 3520) #4
  %pins.i = getelementptr inbounds %struct.sh_pfc_chip, ptr %call.i.i, i32 0, i32 4
  %35 = ptrtoint ptr %pins.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call5.i.i.i, ptr %pins.i, align 4
  %cmp.i135 = icmp eq ptr %call5.i.i.i, null
  br i1 %cmp.i135, label %devm_kcalloc.exit.i.if.then21_crit_edge, label %if.end.i136

devm_kcalloc.exit.i.if.then21_crit_edge:          ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

if.end.i136:                                      ; preds = %devm_kcalloc.exit.i
  %36 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i.i, align 4
  %info.i.i = getelementptr inbounds %struct.sh_pfc, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %info.i.i, align 4
  %data_regs.i.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %39, i32 0, i32 19
  %40 = ptrtoint ptr %data_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data_regs.i.i, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.end.i136
  %i.0.i.i = phi i32 [ 0, %if.end.i136 ], [ %inc.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %reg_width.i.i = getelementptr %struct.pinmux_data_reg, ptr %41, i32 %i.0.i.i, i32 1
  %42 = ptrtoint ptr %reg_width.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %reg_width.i.i, align 4
  %tobool.not.i.i = icmp eq i8 %43, 0
  %inc.i.i = add i32 %i.0.i.i, 1
  br i1 %tobool.not.i.i, label %for.end.i.i, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  %44 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.0.i.i, i32 8) #4
  %45 = extractvalue { i32, i1 } %44, 1
  br i1 %45, label %devm_kcalloc.exit.thread.i.i, label %devm_kcalloc.exit.i.i, !prof !33

devm_kcalloc.exit.thread.i.i:                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %regs57.i.i = getelementptr inbounds %struct.sh_pfc_chip, ptr %call.i.i, i32 0, i32 3
  br label %if.then21.sink.split

devm_kcalloc.exit.i.i:                            ; preds = %for.end.i.i
  %46 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %37, align 4
  %48 = extractvalue { i32, i1 } %44, 0
  %call5.i.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %47, i32 noundef %48, i32 noundef 3520) #4
  %regs.i.i = getelementptr inbounds %struct.sh_pfc_chip, ptr %call.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call5.i.i.i.i, ptr %regs.i.i, align 4
  %cmp.i.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %cmp.i.i, label %devm_kcalloc.exit.i.i.if.then21_crit_edge, label %if.end.i.i

devm_kcalloc.exit.i.i.if.then21_crit_edge:        ; preds = %devm_kcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

if.end.i.i:                                       ; preds = %devm_kcalloc.exit.i.i
  %50 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %info.i.i, align 4
  %data_regs4.i.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %51, i32 0, i32 19
  %52 = ptrtoint ptr %data_regs4.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data_regs4.i.i, align 4
  %reg_width662.i.i = getelementptr inbounds %struct.pinmux_data_reg, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %reg_width662.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %reg_width662.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool7.not63.i.i = icmp eq i8 %55, 0
  br i1 %tobool7.not63.i.i, label %if.end.i.i.for.cond18.preheader.i.i_crit_edge, label %if.end.i.i.for.body8.i.i_crit_edge

if.end.i.i.for.body8.i.i_crit_edge:               ; preds = %if.end.i.i
  br label %for.body8.i.i

if.end.i.i.for.cond18.preheader.i.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond18.preheader.i.i

for.cond18.preheader.i.i:                         ; preds = %for.body8.i.i.for.cond18.preheader.i.i_crit_edge, %if.end.i.i.for.cond18.preheader.i.i_crit_edge
  %56 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %info.i.i, align 4
  %nr_pins67.i.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %nr_pins67.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nr_pins67.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp2068.not.i.i = icmp eq i32 %59, 0
  br i1 %cmp2068.not.i.i, label %for.cond18.preheader.i.i.if.end10.i_crit_edge, label %for.cond18.preheader.i.i.for.body21.i.i_crit_edge

for.cond18.preheader.i.i.for.body21.i.i_crit_edge: ; preds = %for.cond18.preheader.i.i
  br label %for.body21.i.i

for.cond18.preheader.i.i.if.end10.i_crit_edge:    ; preds = %for.cond18.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

for.body8.i.i:                                    ; preds = %for.body8.i.i.for.body8.i.i_crit_edge, %if.end.i.i.for.body8.i.i_crit_edge
  %reg_width666.i.i = phi ptr [ %reg_width6.i.i, %for.body8.i.i.for.body8.i.i_crit_edge ], [ %reg_width662.i.i, %if.end.i.i.for.body8.i.i_crit_edge ]
  %i.165.i.i = phi i32 [ %inc16.i.i, %for.body8.i.i.for.body8.i.i_crit_edge ], [ 0, %if.end.i.i.for.body8.i.i_crit_edge ]
  %dreg.064.i.i = phi ptr [ %incdec.ptr.i.i, %for.body8.i.i.for.body8.i.i_crit_edge ], [ %53, %if.end.i.i.for.body8.i.i_crit_edge ]
  %60 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i.i, align 4
  %arrayidx10.i.i = getelementptr %struct.sh_pfc_gpio_data_reg, ptr %61, i32 %i.165.i.i
  %62 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %dreg.064.i.i, ptr %arrayidx10.i.i, align 4
  %63 = ptrtoint ptr %dreg.064.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dreg.064.i.i, align 4
  %65 = ptrtoint ptr %mem5.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mem5.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %sub.i.i.i = sub i32 %64, %68
  %virt.i.i.i = getelementptr inbounds %struct.sh_pfc_window, ptr %66, i32 0, i32 1
  %69 = ptrtoint ptr %virt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %virt.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %70, i32 %sub.i.i.i
  %71 = ptrtoint ptr %reg_width666.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %reg_width666.i.i, align 4
  %conv.i.i.i = zext i8 %72 to i32
  %call.i.i.i = tail call i32 @sh_pfc_read_raw_reg(ptr noundef %add.ptr.i.i.i, i32 noundef %conv.i.i.i) #4
  %73 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i.i, align 4
  %shadow.i.i = getelementptr %struct.sh_pfc_gpio_data_reg, ptr %74, i32 %i.165.i.i, i32 1
  %75 = ptrtoint ptr %shadow.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %call.i.i.i, ptr %shadow.i.i, align 4
  %inc16.i.i = add i32 %i.165.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.pinmux_data_reg, ptr %dreg.064.i.i, i32 1
  %reg_width6.i.i = getelementptr %struct.pinmux_data_reg, ptr %dreg.064.i.i, i32 1, i32 1
  %76 = ptrtoint ptr %reg_width6.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %reg_width6.i.i, align 4
  %tobool7.not.i.i = icmp eq i8 %77, 0
  br i1 %tobool7.not.i.i, label %for.body8.i.i.for.cond18.preheader.i.i_crit_edge, label %for.body8.i.i.for.body8.i.i_crit_edge

for.body8.i.i.for.body8.i.i_crit_edge:            ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body8.i.i

for.body8.i.i.for.cond18.preheader.i.i_crit_edge: ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond18.preheader.i.i

for.body21.i.i:                                   ; preds = %for.inc28.i.i.for.body21.i.i_crit_edge, %for.cond18.preheader.i.i.for.body21.i.i_crit_edge
  %78 = phi ptr [ %107, %for.inc28.i.i.for.body21.i.i_crit_edge ], [ %57, %for.cond18.preheader.i.i.for.body21.i.i_crit_edge ]
  %i.269.i.i = phi i32 [ %inc29.i.i, %for.inc28.i.i.for.body21.i.i_crit_edge ], [ 0, %for.cond18.preheader.i.i.for.body21.i.i_crit_edge ]
  %pins.i.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %78, i32 0, i32 7
  %79 = ptrtoint ptr %pins.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pins.i.i, align 4
  %enum_id.i.i = getelementptr %struct.sh_pfc_pin, ptr %80, i32 %i.269.i.i, i32 3
  %81 = ptrtoint ptr %enum_id.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %enum_id.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %cmp24.i.i = icmp eq i16 %82, 0
  br i1 %cmp24.i.i, label %for.body21.i.i.for.inc28.i.i_crit_edge, label %if.end27.i.i

for.body21.i.i.for.inc28.i.i_crit_edge:           ; preds = %for.body21.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc28.i.i

if.end27.i.i:                                     ; preds = %for.body21.i.i
  %83 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %call.i.i, align 4
  %85 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pins.i, align 4
  %info.i.i.i = getelementptr inbounds %struct.sh_pfc, ptr %84, i32 0, i32 1
  %87 = ptrtoint ptr %info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %info.i.i.i, align 4
  %data_regs.i.i.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %88, i32 0, i32 19
  %89 = ptrtoint ptr %data_regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data_regs.i.i.i, align 4
  %reg_width42.i.i.i = getelementptr inbounds %struct.pinmux_data_reg, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %reg_width42.i.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %reg_width42.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not43.i.i.i = icmp eq i8 %92, 0
  br i1 %tobool.not43.i.i.i, label %if.end27.i.i.do.body.i.i.i_crit_edge, label %for.cond5.preheader.lr.ph.i.i.i

if.end27.i.i.do.body.i.i.i_crit_edge:             ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i.i

for.cond5.preheader.lr.ph.i.i.i:                  ; preds = %if.end27.i.i
  %pins2.i.i.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %88, i32 0, i32 7
  %93 = ptrtoint ptr %pins2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pins2.i.i.i, align 4
  %enum_id.i.i.i = getelementptr %struct.sh_pfc_pin, ptr %94, i32 %i.269.i.i, i32 3
  %95 = ptrtoint ptr %enum_id.i.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %enum_id.i.i.i, align 2
  br label %for.cond5.preheader.i.i.i

for.cond5.preheader.i.i.i:                        ; preds = %for.inc17.i.i.i.for.cond5.preheader.i.i.i_crit_edge, %for.cond5.preheader.lr.ph.i.i.i
  %97 = phi i8 [ %92, %for.cond5.preheader.lr.ph.i.i.i ], [ %103, %for.inc17.i.i.i.for.cond5.preheader.i.i.i_crit_edge ]
  %i.045.i.i.i = phi i32 [ 0, %for.cond5.preheader.lr.ph.i.i.i ], [ %inc18.i.i.i, %for.inc17.i.i.i.for.cond5.preheader.i.i.i_crit_edge ]
  %dreg.044.i.i.i = phi ptr [ %90, %for.cond5.preheader.lr.ph.i.i.i ], [ %incdec.ptr.i.i.i, %for.inc17.i.i.i.for.cond5.preheader.i.i.i_crit_edge ]
  %enum_ids.i.i.i = getelementptr inbounds %struct.pinmux_data_reg, ptr %dreg.044.i.i.i, i32 0, i32 2
  %98 = ptrtoint ptr %enum_ids.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %enum_ids.i.i.i, align 4
  %umax.i.i.i = zext i8 %97 to i32
  br label %for.body8.i.i.i

for.body8.i.i.i:                                  ; preds = %for.inc.i.i.i.for.body8.i.i.i_crit_edge, %for.cond5.preheader.i.i.i
  %bit.041.i.i.i = phi i32 [ 0, %for.cond5.preheader.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body8.i.i.i_crit_edge ]
  %arrayidx9.i.i.i = getelementptr i16, ptr %99, i32 %bit.041.i.i.i
  %100 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %arrayidx9.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %101, i16 %96)
  %cmp12.i.i.i = icmp eq i16 %101, %96
  br i1 %cmp12.i.i.i, label %gpio_setup_data_reg.exit.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body8.i.i.i
  %inc.i.i.i = add nuw nsw i32 %bit.041.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.inc17.i.i.i, label %for.inc.i.i.i.for.body8.i.i.i_crit_edge

for.inc.i.i.i.for.body8.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body8.i.i.i

for.inc17.i.i.i:                                  ; preds = %for.inc.i.i.i
  %inc18.i.i.i = add i32 %i.045.i.i.i, 1
  %incdec.ptr.i.i.i = getelementptr %struct.pinmux_data_reg, ptr %dreg.044.i.i.i, i32 1
  %reg_width.i55.i.i = getelementptr %struct.pinmux_data_reg, ptr %dreg.044.i.i.i, i32 1, i32 1
  %102 = ptrtoint ptr %reg_width.i55.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %reg_width.i55.i.i, align 4
  %tobool.not.i.i.i = icmp eq i8 %103, 0
  br i1 %tobool.not.i.i.i, label %for.inc17.i.i.i.do.body.i.i.i_crit_edge, label %for.inc17.i.i.i.for.cond5.preheader.i.i.i_crit_edge

for.inc17.i.i.i.for.cond5.preheader.i.i.i_crit_edge: ; preds = %for.inc17.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond5.preheader.i.i.i

for.inc17.i.i.i.do.body.i.i.i_crit_edge:          ; preds = %for.inc17.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %for.inc17.i.i.i.do.body.i.i.i_crit_edge, %if.end27.i.i.do.body.i.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/renesas/gpio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 92, 0\0A.popsection", ""() #4, !srcloc !34
  unreachable

gpio_setup_data_reg.exit.i.i:                     ; preds = %for.body8.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i.i.i = getelementptr %struct.sh_pfc_gpio_pin, ptr %86, i32 %i.269.i.i
  %conv14.i.i.i = trunc i32 %i.045.i.i.i to i8
  %dreg15.i.i.i = getelementptr %struct.sh_pfc_gpio_pin, ptr %86, i32 %i.269.i.i, i32 1
  %104 = ptrtoint ptr %dreg15.i.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv14.i.i.i, ptr %dreg15.i.i.i, align 1
  %conv16.i.i.i = trunc i32 %bit.041.i.i.i to i8
  %105 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv16.i.i.i, ptr %arrayidx.i.i.i, align 1
  br label %for.inc28.i.i

for.inc28.i.i:                                    ; preds = %gpio_setup_data_reg.exit.i.i, %for.body21.i.i.for.inc28.i.i_crit_edge
  %inc29.i.i = add nuw i32 %i.269.i.i, 1
  %106 = ptrtoint ptr %info.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %info.i.i, align 4
  %nr_pins.i.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %107, i32 0, i32 8
  %108 = ptrtoint ptr %nr_pins.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %nr_pins.i.i, align 4
  %cmp20.i.i = icmp ult i32 %inc29.i.i, %109
  br i1 %cmp20.i.i, label %for.inc28.i.i.for.body21.i.i_crit_edge, label %for.inc28.i.i.if.end10.i_crit_edge

for.inc28.i.i.if.end10.i_crit_edge:               ; preds = %for.inc28.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

for.inc28.i.i.for.body21.i.i_crit_edge:           ; preds = %for.inc28.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body21.i.i

if.end10.i:                                       ; preds = %for.inc28.i.i.if.end10.i_crit_edge, %for.cond18.preheader.i.i.if.end10.i_crit_edge
  %request.i = getelementptr inbounds %struct.sh_pfc_chip, ptr %call.i.i, i32 0, i32 1, i32 5
  %110 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @gpio_pin_request, ptr %request.i, align 4
  %free.i = getelementptr inbounds %struct.sh_pfc_chip, ptr %call.i.i, i32 0, i32 1, i32 6
  %111 = ptrtoint ptr %free.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr @gpio_pin_free, ptr %free.i, align 4
  %direction_input.i = getelementptr inbounds %struct.sh_pfc_chip, ptr %call.i.i, i32 0, i32 1, i32 8
  %112 = ptrtoint ptr %direction_input.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @gpio_pin_direction_input, ptr %direction_input.i, align 4
  %get.i = getelementptr inbounds %struct.sh_pfc_chip, ptr %call.i.i, i32 0, i32 1, i32 10
  %113 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @gpio_pin_get, ptr %get.i, align 4
  %direction_output.i = getelementptr inbounds %struct.sh_pfc_chip, ptr %call.i.i, i32 0, i32 1, i32 9
  %114 = ptrtoint ptr %direction_output.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @gpio_pin_direction_output, ptr %direction_output.i, align 4
  %set.i = getelementptr inbounds %struct.sh_pfc_chip, ptr %call.i.i, i32 0, i32 1, i32 12
  %115 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @gpio_pin_set, ptr %set.i, align 4
  %to_irq.i = getelementptr inbounds %struct.sh_pfc_chip, ptr %call.i.i, i32 0, i32 1, i32 15
  %116 = ptrtoint ptr %to_irq.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @gpio_pin_to_irq, ptr %to_irq.i, align 4
  %117 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %info, align 4
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %118, align 4
  %121 = ptrtoint ptr %gpio_chip.i134 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %120, ptr %gpio_chip.i134, align 4
  %122 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %pfc, align 4
  %parent.i = getelementptr inbounds %struct.sh_pfc_chip, ptr %call.i.i, i32 0, i32 1, i32 2
  %124 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %123, ptr %parent.i, align 4
  %owner.i = getelementptr inbounds %struct.sh_pfc_chip, ptr %call.i.i, i32 0, i32 1, i32 4
  %125 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr null, ptr %owner.i, align 4
  %base.i137 = getelementptr inbounds %struct.sh_pfc_chip, ptr %call.i.i, i32 0, i32 1, i32 19
  %126 = ptrtoint ptr %base.i137 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %base.i137, align 4
  %nr_gpio_pins.i = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 9
  %127 = ptrtoint ptr %nr_gpio_pins.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %nr_gpio_pins.i, align 4
  %conv.i138 = trunc i32 %128 to i16
  %ngpio.i139 = getelementptr inbounds %struct.sh_pfc_chip, ptr %call.i.i, i32 0, i32 1, i32 20
  %129 = ptrtoint ptr %ngpio.i139 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv.i138, ptr %ngpio.i139, align 4
  %call12.i = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %123, ptr noundef %gpio_chip.i134, ptr noundef nonnull %call.i.i, ptr noundef nonnull @sh_pfc_add_gpiochip.lock_key, ptr noundef nonnull @sh_pfc_add_gpiochip.request_key) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.then20.i, label %do.end.i, !prof !33

if.then20.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  %130 = inttoptr i32 %call12.i to ptr
  br label %sh_pfc_add_gpiochip.exit

do.end.i:                                         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  %131 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %pfc, align 4
  %133 = ptrtoint ptr %gpio_chip.i134 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %gpio_chip.i134, align 4
  %135 = ptrtoint ptr %base.i137 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %base.i137, align 4
  %137 = ptrtoint ptr %ngpio.i139 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %ngpio.i139, align 4
  %conv.i = zext i16 %138 to i32
  %add.i = add i32 %136, -1
  %sub.i = add i32 %add.i, %conv.i
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %132, ptr noundef nonnull @.str.5, ptr noundef %134, i32 noundef %136, i32 noundef %sub.i) #7
  br label %sh_pfc_add_gpiochip.exit

sh_pfc_add_gpiochip.exit:                         ; preds = %do.end.i, %if.then20.i
  %retval.0.i = phi ptr [ %130, %if.then20.i ], [ %call.i.i, %do.end.i ]
  %cmp.i109 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i109, label %sh_pfc_add_gpiochip.exit.if.then21_crit_edge, label %if.end23

sh_pfc_add_gpiochip.exit.if.then21_crit_edge:     ; preds = %sh_pfc_add_gpiochip.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then21

if.then21.sink.split:                             ; preds = %devm_kcalloc.exit.thread.i.i, %devm_kcalloc.exit.thread.i
  %regs57.i.i.sink = phi ptr [ %regs57.i.i, %devm_kcalloc.exit.thread.i.i ], [ %pins32.i, %devm_kcalloc.exit.thread.i ]
  %139 = ptrtoint ptr %regs57.i.i.sink to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr null, ptr %regs57.i.i.sink, align 4
  br label %if.then21

if.then21:                                        ; preds = %if.then21.sink.split, %sh_pfc_add_gpiochip.exit.if.then21_crit_edge, %devm_kcalloc.exit.i.i.if.then21_crit_edge, %devm_kcalloc.exit.i.if.then21_crit_edge, %if.end17.if.then21_crit_edge
  %retval.0.i156 = phi ptr [ %retval.0.i, %sh_pfc_add_gpiochip.exit.if.then21_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end17.if.then21_crit_edge ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.i.if.then21_crit_edge ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.i.i.if.then21_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then21.sink.split ]
  %140 = ptrtoint ptr %retval.0.i156 to i32
  br label %cleanup66

if.end23:                                         ; preds = %sh_pfc_add_gpiochip.exit
  %gpio = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 10
  %141 = ptrtoint ptr %gpio to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %retval.0.i, ptr %gpio, align 4
  %142 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %pfc, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %143, i32 0, i32 27
  %144 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %145, null
  br i1 %tobool.not, label %for.cond27.preheader, label %if.end23.cleanup66_crit_edge

if.end23.cleanup66_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup66

for.cond27.preheader:                             ; preds = %if.end23
  %nr_ranges = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 8
  %146 = ptrtoint ptr %nr_ranges to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %nr_ranges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp28175.not = icmp eq i32 %147, 0
  br i1 %cmp28175.not, label %for.cond27.preheader.for.end56_crit_edge, label %for.body29.lr.ph

for.cond27.preheader.for.end56_crit_edge:         ; preds = %for.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end56

for.body29.lr.ph:                                 ; preds = %for.cond27.preheader
  %ranges = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 7
  %nr_gpio_pins = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 9
  %gpio_chip = getelementptr inbounds %struct.sh_pfc_chip, ptr %retval.0.i, i32 0, i32 1
  br label %for.body29

for.cond27:                                       ; preds = %dev_name.exit
  %inc55 = add nuw i32 %i.1176, 1
  %148 = ptrtoint ptr %nr_ranges to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %nr_ranges, align 4
  %cmp28 = icmp ult i32 %inc55, %149
  br i1 %cmp28, label %for.cond27.for.body29_crit_edge, label %for.cond27.for.end56_crit_edge

for.cond27.for.end56_crit_edge:                   ; preds = %for.cond27
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end56

for.cond27.for.body29_crit_edge:                  ; preds = %for.cond27
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body29

for.body29:                                       ; preds = %for.cond27.for.body29_crit_edge, %for.body29.lr.ph
  %i.1176 = phi i32 [ 0, %for.body29.lr.ph ], [ %inc55, %for.cond27.for.body29_crit_edge ]
  %150 = ptrtoint ptr %ranges to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ranges, align 4
  %arrayidx30 = getelementptr %struct.sh_pfc_pin_range, ptr %151, i32 %i.1176
  %152 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %arrayidx30, align 2
  %conv = zext i16 %153 to i32
  %154 = ptrtoint ptr %nr_gpio_pins to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %nr_gpio_pins, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %155, i32 %conv)
  %cmp31.not = icmp ugt i32 %155, %conv
  br i1 %cmp31.not, label %if.end34, label %for.body29.for.end56_crit_edge

for.body29.for.end56_crit_edge:                   ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end56

if.end34:                                         ; preds = %for.body29
  %156 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pfc, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %157, i32 0, i32 3
  %158 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i110 = icmp eq ptr %159, null
  br i1 %tobool.not.i110, label %if.end.i111, label %if.end34.dev_name.exit_crit_edge

if.end34.dev_name.exit_crit_edge:                 ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i111:                                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  %160 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %157, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i111, %if.end34.dev_name.exit_crit_edge
  %retval.0.i112 = phi ptr [ %161, %if.end.i111 ], [ %159, %if.end34.dev_name.exit_crit_edge ]
  %end = getelementptr %struct.sh_pfc_pin_range, ptr %151, i32 %i.1176, i32 1
  %162 = ptrtoint ptr %end to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %end, align 2
  %conv41 = zext i16 %163 to i32
  %sub = sub nsw i32 1, %conv
  %add44 = add nsw i32 %sub, %conv41
  %call45 = tail call i32 @gpiochip_add_pin_range(ptr noundef %gpio_chip, ptr noundef %retval.0.i112, i32 noundef %conv, i32 noundef %conv, i32 noundef %add44) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %dev_name.exit.cleanup66_crit_edge, label %for.cond27

dev_name.exit.cleanup66_crit_edge:                ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup66

for.end56:                                        ; preds = %for.body29.for.end56_crit_edge, %for.cond27.for.end56_crit_edge, %for.cond27.preheader.for.end56_crit_edge
  %164 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %info, align 4
  %nr_func_gpios = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %165, i32 0, i32 14
  %166 = ptrtoint ptr %nr_func_gpios to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %nr_func_gpios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool58.not = icmp eq i32 %167, 0
  br i1 %tobool58.not, label %for.end56.cleanup66_crit_edge, label %if.then59

for.end56.cleanup66_crit_edge:                    ; preds = %for.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup66

if.then59:                                        ; preds = %for.end56
  %168 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %pfc, align 4
  %call.i.i113 = tail call noalias ptr @devm_kmalloc(ptr noundef %169, i32 noundef 364, i32 noundef 3520) #4
  %tobool.not.i114 = icmp eq ptr %call.i.i113, null
  br i1 %tobool.not.i114, label %if.then59.if.then62_crit_edge, label %if.end10.i123, !prof !33

if.then59.if.then62_crit_edge:                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then62

if.end10.i123:                                    ; preds = %if.then59
  %mem5.i115 = getelementptr inbounds %struct.sh_pfc_chip, ptr %call.i.i113, i32 0, i32 2
  %170 = ptrtoint ptr %mem5.i115 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr null, ptr %mem5.i115, align 4
  %171 = ptrtoint ptr %call.i.i113 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %pfc, ptr %call.i.i113, align 4
  %gpio_chip.i141 = getelementptr inbounds %struct.sh_pfc_chip, ptr %call.i.i113, i32 0, i32 1
  %request.i142 = getelementptr inbounds %struct.sh_pfc_chip, ptr %call.i.i113, i32 0, i32 1, i32 5
  %172 = ptrtoint ptr %request.i142 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr @gpio_function_request, ptr %request.i142, align 4
  %173 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %info, align 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %174, align 4
  %177 = ptrtoint ptr %gpio_chip.i141 to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %176, ptr %gpio_chip.i141, align 4
  %owner.i144 = getelementptr inbounds %struct.sh_pfc_chip, ptr %call.i.i113, i32 0, i32 1, i32 4
  %178 = ptrtoint ptr %owner.i144 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr null, ptr %owner.i144, align 4
  %nr_gpio_pins.i145 = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 9
  %179 = ptrtoint ptr %nr_gpio_pins.i145 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %nr_gpio_pins.i145, align 4
  %base.i146 = getelementptr inbounds %struct.sh_pfc_chip, ptr %call.i.i113, i32 0, i32 1, i32 19
  %181 = ptrtoint ptr %base.i146 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %180, ptr %base.i146, align 4
  %nr_func_gpios.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %174, i32 0, i32 14
  %182 = ptrtoint ptr %nr_func_gpios.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %nr_func_gpios.i, align 4
  %conv.i147 = trunc i32 %183 to i16
  %ngpio.i148 = getelementptr inbounds %struct.sh_pfc_chip, ptr %call.i.i113, i32 0, i32 1, i32 20
  %184 = ptrtoint ptr %ngpio.i148 to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %conv.i147, ptr %ngpio.i148, align 4
  %185 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %pfc, align 4
  %call12.i121 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %186, ptr noundef %gpio_chip.i141, ptr noundef nonnull %call.i.i113, ptr noundef nonnull @sh_pfc_add_gpiochip.lock_key, ptr noundef nonnull @sh_pfc_add_gpiochip.request_key) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i121)
  %cmp13.i122 = icmp slt i32 %call12.i121, 0
  br i1 %cmp13.i122, label %if.then20.i124, label %do.end.i130, !prof !33

if.then20.i124:                                   ; preds = %if.end10.i123
  call void @__sanitizer_cov_trace_pc() #6
  %187 = inttoptr i32 %call12.i121 to ptr
  br label %sh_pfc_add_gpiochip.exit132

do.end.i130:                                      ; preds = %if.end10.i123
  call void @__sanitizer_cov_trace_pc() #6
  %188 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %pfc, align 4
  %190 = ptrtoint ptr %gpio_chip.i141 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %gpio_chip.i141, align 4
  %192 = ptrtoint ptr %base.i146 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %base.i146, align 4
  %194 = ptrtoint ptr %ngpio.i148 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %ngpio.i148, align 4
  %conv.i127 = zext i16 %195 to i32
  %add.i128 = add i32 %193, -1
  %sub.i129 = add i32 %add.i128, %conv.i127
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %189, ptr noundef nonnull @.str.5, ptr noundef %191, i32 noundef %193, i32 noundef %sub.i129) #7
  br label %sh_pfc_add_gpiochip.exit132

sh_pfc_add_gpiochip.exit132:                      ; preds = %do.end.i130, %if.then20.i124
  %retval.0.i131 = phi ptr [ %187, %if.then20.i124 ], [ %call.i.i113, %do.end.i130 ]
  %cmp.i133 = icmp ugt ptr %retval.0.i131, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i133, label %sh_pfc_add_gpiochip.exit132.if.then62_crit_edge, label %sh_pfc_add_gpiochip.exit132.cleanup66_crit_edge

sh_pfc_add_gpiochip.exit132.cleanup66_crit_edge:  ; preds = %sh_pfc_add_gpiochip.exit132
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup66

sh_pfc_add_gpiochip.exit132.if.then62_crit_edge:  ; preds = %sh_pfc_add_gpiochip.exit132
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then62

if.then62:                                        ; preds = %sh_pfc_add_gpiochip.exit132.if.then62_crit_edge, %if.then59.if.then62_crit_edge
  %retval.0.i131165 = phi ptr [ %retval.0.i131, %sh_pfc_add_gpiochip.exit132.if.then62_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then59.if.then62_crit_edge ]
  %196 = ptrtoint ptr %retval.0.i131165 to i32
  br label %cleanup66

cleanup66:                                        ; preds = %if.then62, %sh_pfc_add_gpiochip.exit132.cleanup66_crit_edge, %for.end56.cleanup66_crit_edge, %dev_name.exit.cleanup66_crit_edge, %if.end23.cleanup66_crit_edge, %if.then21, %do.end, %for.end.cleanup66_crit_edge, %for.inc.cleanup66_crit_edge, %entry.cleanup66_crit_edge
  %retval.2 = phi i32 [ -22, %do.end ], [ %140, %if.then21 ], [ %196, %if.then62 ], [ 0, %entry.cleanup66_crit_edge ], [ 0, %for.end.cleanup66_crit_edge ], [ 0, %if.end23.cleanup66_crit_edge ], [ 0, %sh_pfc_add_gpiochip.exit132.cleanup66_crit_edge ], [ 0, %for.end56.cleanup66_crit_edge ], [ %call45, %dev_name.exit.cleanup66_crit_edge ], [ 0, %for.inc.cleanup66_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_pin_request(ptr noundef %gc, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %call1 = tail call i32 @sh_pfc_get_pin_index(ptr noundef %1, i32 noundef %offset) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %info = getelementptr inbounds %struct.sh_pfc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %pins = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins, align 4
  %enum_id = getelementptr %struct.sh_pfc_pin, ptr %5, i32 %call1, i32 3
  %6 = ptrtoint ptr %enum_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %enum_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp2 = icmp eq i16 %7, 0
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call i32 @pinctrl_gpio_request(i32 noundef %offset) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_pin_free(ptr nocapture noundef readnone %gc, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pinctrl_gpio_free(i32 noundef %offset) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_pin_direction_input(ptr nocapture noundef readnone %gc, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %offset) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_pin_get(ptr noundef %gc, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %call.i = tail call i32 @sh_pfc_get_pin_index(ptr noundef %1, i32 noundef %offset) #4
  %pins.i = getelementptr inbounds %struct.sh_pfc_chip, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins.i, align 4
  %arrayidx.i = getelementptr %struct.sh_pfc_gpio_pin, ptr %3, i32 %call.i
  %regs.i = getelementptr inbounds %struct.sh_pfc_chip, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %dreg.i = getelementptr %struct.sh_pfc_gpio_pin, ptr %3, i32 %call.i, i32 1
  %6 = ptrtoint ptr %dreg.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dreg.i, align 1
  %idxprom.i = zext i8 %7 to i32
  %arrayidx1.i = getelementptr %struct.sh_pfc_gpio_data_reg, ptr %5, i32 %idxprom.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %9 to i32
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx1.i, align 4
  %reg_width = getelementptr inbounds %struct.pinmux_data_reg, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %reg_width to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %reg_width, align 4
  %conv = zext i8 %13 to i32
  %add.neg = xor i32 %conv.i, -1
  %sub = add nsw i32 %conv, %add.neg
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 4
  %mem1.i = getelementptr inbounds %struct.sh_pfc_chip, ptr %call, i32 0, i32 2
  %16 = ptrtoint ptr %mem1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mem1.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %sub.i = sub i32 %15, %19
  %virt.i = getelementptr inbounds %struct.sh_pfc_window, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 %sub.i
  %call.i5 = tail call i32 @sh_pfc_read_raw_reg(ptr noundef %add.ptr.i, i32 noundef %conv) #4
  %shr = lshr i32 %call.i5, %sub
  %and = and i32 %shr, 1
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_pin_direction_output(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %call.i.i = tail call i32 @sh_pfc_get_pin_index(ptr noundef %1, i32 noundef %offset) #4
  %pins.i.i = getelementptr inbounds %struct.sh_pfc_chip, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %pins.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.sh_pfc_gpio_pin, ptr %3, i32 %call.i.i
  %regs.i.i = getelementptr inbounds %struct.sh_pfc_chip, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %dreg.i.i = getelementptr %struct.sh_pfc_gpio_pin, ptr %3, i32 %call.i.i, i32 1
  %6 = ptrtoint ptr %dreg.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dreg.i.i, align 1
  %idxprom.i.i = zext i8 %7 to i32
  %arrayidx1.i.i = getelementptr %struct.sh_pfc_gpio_data_reg, ptr %5, i32 %idxprom.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %9 to i32
  %10 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx1.i.i, align 4
  %reg_width.i = getelementptr inbounds %struct.pinmux_data_reg, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %reg_width.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %reg_width.i, align 4
  %conv.i = zext i8 %13 to i32
  %add.neg.i = xor i32 %conv.i.i, -1
  %sub.i = add nsw i32 %conv.i, %add.neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %shl1.i = shl nuw i32 1, %sub.i
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %shadow.i = getelementptr %struct.sh_pfc_gpio_data_reg, ptr %5, i32 %idxprom.i.i, i32 1
  %14 = ptrtoint ptr %shadow.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %shadow.i, align 4
  %or.i = or i32 %15, %shl1.i
  store i32 %or.i, ptr %shadow.i, align 4
  br label %gpio_pin_set_value.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %neg.i = xor i32 %shl1.i, -1
  %shadow2.i = getelementptr %struct.sh_pfc_gpio_data_reg, ptr %5, i32 %idxprom.i.i, i32 1
  %16 = ptrtoint ptr %shadow2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %shadow2.i, align 4
  %and.i = and i32 %17, %neg.i
  store i32 %and.i, ptr %shadow2.i, align 4
  br label %gpio_pin_set_value.exit

gpio_pin_set_value.exit:                          ; preds = %if.else.i, %if.then.i
  %shadow4.i = getelementptr %struct.sh_pfc_gpio_data_reg, ptr %5, i32 %idxprom.i.i, i32 1
  %18 = ptrtoint ptr %shadow4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %shadow4.i, align 4
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %11, align 4
  %mem1.i.i = getelementptr inbounds %struct.sh_pfc_chip, ptr %call, i32 0, i32 2
  %22 = ptrtoint ptr %mem1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mem1.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %sub.i.i = sub i32 %21, %25
  %virt.i.i = getelementptr inbounds %struct.sh_pfc_window, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %virt.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 %sub.i.i
  %28 = ptrtoint ptr %reg_width.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %reg_width.i, align 4
  %conv.i7.i = zext i8 %29 to i32
  tail call void @sh_pfc_write_raw_reg(ptr noundef %add.ptr.i.i, i32 noundef %conv.i7.i, i32 noundef %19) #4
  %call1 = tail call i32 @pinctrl_gpio_direction_output(i32 noundef %offset) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_pin_set(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %call.i.i = tail call i32 @sh_pfc_get_pin_index(ptr noundef %1, i32 noundef %offset) #4
  %pins.i.i = getelementptr inbounds %struct.sh_pfc_chip, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %pins.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.sh_pfc_gpio_pin, ptr %3, i32 %call.i.i
  %regs.i.i = getelementptr inbounds %struct.sh_pfc_chip, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i.i, align 4
  %dreg.i.i = getelementptr %struct.sh_pfc_gpio_pin, ptr %3, i32 %call.i.i, i32 1
  %6 = ptrtoint ptr %dreg.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dreg.i.i, align 1
  %idxprom.i.i = zext i8 %7 to i32
  %arrayidx1.i.i = getelementptr %struct.sh_pfc_gpio_data_reg, ptr %5, i32 %idxprom.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %9 to i32
  %10 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx1.i.i, align 4
  %reg_width.i = getelementptr inbounds %struct.pinmux_data_reg, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %reg_width.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %reg_width.i, align 4
  %conv.i = zext i8 %13 to i32
  %add.neg.i = xor i32 %conv.i.i, -1
  %sub.i = add nsw i32 %conv.i, %add.neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %shl1.i = shl nuw i32 1, %sub.i
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %shadow.i = getelementptr %struct.sh_pfc_gpio_data_reg, ptr %5, i32 %idxprom.i.i, i32 1
  %14 = ptrtoint ptr %shadow.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %shadow.i, align 4
  %or.i = or i32 %15, %shl1.i
  store i32 %or.i, ptr %shadow.i, align 4
  br label %gpio_pin_set_value.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %neg.i = xor i32 %shl1.i, -1
  %shadow2.i = getelementptr %struct.sh_pfc_gpio_data_reg, ptr %5, i32 %idxprom.i.i, i32 1
  %16 = ptrtoint ptr %shadow2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %shadow2.i, align 4
  %and.i = and i32 %17, %neg.i
  store i32 %and.i, ptr %shadow2.i, align 4
  br label %gpio_pin_set_value.exit

gpio_pin_set_value.exit:                          ; preds = %if.else.i, %if.then.i
  %shadow4.i = getelementptr %struct.sh_pfc_gpio_data_reg, ptr %5, i32 %idxprom.i.i, i32 1
  %18 = ptrtoint ptr %shadow4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %shadow4.i, align 4
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %11, align 4
  %mem1.i.i = getelementptr inbounds %struct.sh_pfc_chip, ptr %call, i32 0, i32 2
  %22 = ptrtoint ptr %mem1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mem1.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %sub.i.i = sub i32 %21, %25
  %virt.i.i = getelementptr inbounds %struct.sh_pfc_window, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %virt.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 %sub.i.i
  %28 = ptrtoint ptr %reg_width.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %reg_width.i, align 4
  %conv.i7.i = zext i8 %29 to i32
  tail call void @sh_pfc_write_raw_reg(ptr noundef %add.ptr.i.i, i32 noundef %conv.i7.i, i32 noundef %19) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_pin_to_irq(ptr noundef %gc, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %info = getelementptr inbounds %struct.sh_pfc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %gpio_irq_size = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %gpio_irq_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio_irq_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp33.not = icmp eq i32 %5, 0
  br i1 %cmp33.not, label %entry.cleanup16_crit_edge, label %for.body.lr.ph

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup16

for.body.lr.ph:                                   ; preds = %entry
  %gpio_irq = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %gpio_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpio_irq, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc13.for.body_crit_edge, %for.body.lr.ph
  %i.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc14, %for.inc13.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pinmux_irq, ptr %7, i32 %i.034
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %cmp531 = icmp sgt i16 %11, -1
  br i1 %cmp531, label %for.body.for.body7_crit_edge, label %for.body.for.inc13_crit_edge

for.body.for.inc13_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc13

for.body.for.body7_crit_edge:                     ; preds = %for.body
  br label %for.body7

for.cond3:                                        ; preds = %for.body7
  %inc = add i32 %k.032, 1
  %arrayidx4 = getelementptr i16, ptr %9, i32 %inc
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx4, align 2
  %cmp5 = icmp sgt i16 %13, -1
  br i1 %cmp5, label %for.cond3.for.body7_crit_edge, label %for.cond3.for.inc13_crit_edge

for.cond3.for.inc13_crit_edge:                    ; preds = %for.cond3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc13

for.cond3.for.body7_crit_edge:                    ; preds = %for.cond3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body7

for.body7:                                        ; preds = %for.cond3.for.body7_crit_edge, %for.body.for.body7_crit_edge
  %14 = phi i16 [ %13, %for.cond3.for.body7_crit_edge ], [ %11, %for.body.for.body7_crit_edge ]
  %k.032 = phi i32 [ %inc, %for.cond3.for.body7_crit_edge ], [ 0, %for.body.for.body7_crit_edge ]
  %conv28 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv28, i32 %offset)
  %cmp10 = icmp eq i32 %conv28, %offset
  br i1 %cmp10, label %cleanup.thread, label %for.cond3

cleanup.thread:                                   ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #6
  %irqs = getelementptr inbounds %struct.sh_pfc, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %irqs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %irqs, align 4
  %arrayidx12 = getelementptr i32, ptr %16, i32 %i.034
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx12, align 4
  br label %cleanup16

for.inc13:                                        ; preds = %for.cond3.for.inc13_crit_edge, %for.body.for.inc13_crit_edge
  %inc14 = add nuw i32 %i.034, 1
  %exitcond.not = icmp eq i32 %inc14, %5
  br i1 %exitcond.not, label %for.inc13.cleanup16_crit_edge, label %for.inc13.for.body_crit_edge

for.inc13.for.body_crit_edge:                     ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc13.cleanup16_crit_edge:                    ; preds = %for.inc13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup16

cleanup16:                                        ; preds = %for.inc13.cleanup16_crit_edge, %cleanup.thread, %entry.cleanup16_crit_edge
  %retval.2 = phi i32 [ %18, %cleanup.thread ], [ 0, %entry.cleanup16_crit_edge ], [ 0, %for.inc13.cleanup16_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sh_pfc_read_raw_reg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sh_pfc_get_pin_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_request(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_gpio_free(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_input(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_output(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sh_pfc_write_raw_reg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_function_request(ptr noundef %gc, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #4
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %info = getelementptr inbounds %struct.sh_pfc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %func_gpios = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %func_gpios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %func_gpios, align 4
  %arrayidx = getelementptr %struct.pinmux_func, ptr %5, i32 %offset
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 4
  %conv = zext i16 %7 to i32
  %.b27 = load i1, ptr @gpio_function_request.__print_once, align 1
  br i1 %.b27, label %entry.do.end3_crit_edge, label %if.then

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @gpio_function_request.__print_once, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %9, ptr noundef nonnull @.str.8) #7
  br label %do.end3

do.end3:                                          ; preds = %if.then, %entry.do.end3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp = icmp eq i16 %7, 0
  br i1 %cmp, label %do.end3.cleanup_crit_edge, label %do.body8

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body8:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #6
  %lock = getelementptr inbounds %struct.sh_pfc, ptr %1, i32 0, i32 2
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #4
  %call17 = tail call i32 @sh_pfc_config_mux(ptr noundef %1, i32 noundef %conv, i32 noundef 1) #4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #4
  br label %cleanup

cleanup:                                          ; preds = %do.body8, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %do.body8 ], [ -22, %do.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sh_pfc_config_mux(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/renesas/gpio.c", i32 350, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sh_pfc_register_gpiochip._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sh_pfc_register_gpiochip._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @sh_pfc_add_gpiochip.lock_key, !9, !"lock_key", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/renesas/gpio.c", i32 311, i32 8}
!10 = !{ptr @sh_pfc_add_gpiochip.request_key, !9, !"request_key", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/pinctrl/renesas/gpio.c", i32 315, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @sh_pfc_add_gpiochip._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @sh_pfc_add_gpiochip._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = distinct !{null, !18, !"__print_once", i1 false, i1 false}
!18 = !{!"../drivers/pinctrl/renesas/gpio.c", i32 260, i32 2}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @gpio_function_request._entry, !18, !"_entry", i1 false, i1 false}
!23 = !{ptr @gpio_function_request._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"branch_weights", i32 1, i32 2000}
!34 = !{i64 2153802166, i64 2153802660, i64 2153802203, i64 2153802259, i64 2153802293, i64 2153802317, i64 2153802358, i64 2153802379, i64 2153802407, i64 2153802441}
