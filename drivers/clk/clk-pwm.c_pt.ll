; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-pwm.c_pt.bc'
source_filename = "../drivers/clk/clk-pwm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.clk_pwm = type { %struct.clk_hw, ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_duty = type { i32, i32 }

@__initcall__kmod_clk_pwm__170_154_clk_pwm_driver_init6 = internal global ptr @clk_pwm_driver_init, section ".initcall6.init", align 4
@clk_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @clk_pwm_probe, ptr @clk_pwm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @clk_pwm_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_clk_pwm_driver_exit = internal global ptr @clk_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [54 x i8] c"clk_pwm.author=Philipp Zabel <p.zabel@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [37 x i8] c"clk_pwm.description=PWM clock driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [33 x i8] c"clk_pwm.file=drivers/clk/clk-pwm\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [20 x i8] c"clk_pwm.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm-clock\00", [22 x i8] zeroinitializer }, align 32
@clk_pwm_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pwm-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@clk_pwm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 87, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid PWM period\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_pwm_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/clk/clk-pwm.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@clk_pwm_probe._entry_ptr = internal global ptr @clk_pwm_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@clk_pwm_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 95, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fixed_rate cannot be zero\0A\00", [37 x i8] zeroinitializer }, align 32
@clk_pwm_probe._entry_ptr.9 = internal global ptr @clk_pwm_probe._entry.7, section ".printk_index", align 4
@clk_pwm_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 102, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"clock-frequency does not match PWM period\0A\00", [53 x i8] zeroinitializer }, align 32
@clk_pwm_probe._entry_ptr.12 = internal global ptr @clk_pwm_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@clk_pwm_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_pwm_prepare, ptr @clk_pwm_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pwm_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pwm_get_duty_cycle, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [15 x i8] c"clk_pwm_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 145, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 149, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"clk_pwm_dt_ids\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 139, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 87, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 91, i32 33 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 95, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 101, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 116, i32 32 }
@___asan_gen_.59 = private unnamed_addr constant [12 x i8] c"clk_pwm_ops\00", align 1
@___asan_gen_.60 = private constant [25 x i8] c"../drivers/clk/clk-pwm.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 60, i32 29 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_clk_pwm_driver_exit, ptr @__initcall__kmod_clk_pwm__170_154_clk_pwm_driver_init6, ptr @clk_pwm_driver_exit, ptr @clk_pwm_probe._entry, ptr @clk_pwm_probe._entry.10, ptr @clk_pwm_probe._entry.7, ptr @clk_pwm_probe._entry_ptr, ptr @clk_pwm_probe._entry_ptr.12, ptr @clk_pwm_probe._entry_ptr.9, ptr @clk_pwm_driver, ptr @.str, ptr @clk_pwm_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @clk_pwm_ops], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pwm_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pwm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pwm_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pwm_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pwm_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @clk_pwm_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @clk_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @clk_pwm_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pwm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %state.i101 = alloca %struct.pwm_state, align 8
  %state.i = alloca %struct.pwm_state, align 8
  %init = alloca %struct.clk_init_data, align 4
  %clk_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %2 = call ptr @memset(ptr %init, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #7
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_pwm_get(ptr noundef %dev, ptr noundef null) #7
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %args1.i = getelementptr inbounds %struct.pwm_device, ptr %call3, i32 0, i32 6
  %4 = ptrtoint ptr %args1.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %pargs.sroa.0.0.copyload106 = load i64, ptr %args1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pargs.sroa.0.0.copyload106)
  %tobool8.not = icmp eq i64 %pargs.sroa.0.0.copyload106, 0
  br i1 %tobool8.not, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %fixed_rate = getelementptr inbounds %struct.clk_pwm, ptr %call.i, i32 0, i32 2
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef %fixed_rate, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool13.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool13.not, label %if.end18thread-pre-split, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i64 @div64_u64(i64 noundef 1000000000, i64 noundef %pargs.sroa.0.0.copyload106) #7
  %conv = trunc i64 %call16 to i32
  %5 = ptrtoint ptr %fixed_rate to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %fixed_rate, align 4
  br label %if.end18

if.end18thread-pre-split:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %fixed_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %fixed_rate, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end18thread-pre-split, %if.then14
  %7 = phi i32 [ %.pr, %if.end18thread-pre-split ], [ %conv, %if.then14 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool20.not = icmp eq i32 %7, 0
  br i1 %tobool20.not, label %do.end24, label %if.end26

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  %div = udiv i32 1000000000, %7
  %conv29 = zext i32 %div to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %pargs.sroa.0.0.copyload106, i64 %conv29)
  %cmp.not = icmp eq i64 %pargs.sroa.0.0.copyload106, %conv29
  br i1 %cmp.not, label %if.end26.if.end43_crit_edge, label %land.lhs.true

if.end26.if.end43_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

land.lhs.true:                                    ; preds = %if.end26
  %sub = add i32 %7, 999999999
  %div34 = udiv i32 %sub, %7
  %conv35 = zext i32 %div34 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %pargs.sroa.0.0.copyload106, i64 %conv35)
  %cmp36.not = icmp eq i64 %pargs.sroa.0.0.copyload106, %conv35
  br i1 %cmp36.not, label %land.lhs.true.if.end43_crit_edge, label %do.end41

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

do.end41:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end43:                                         ; preds = %land.lhs.true.if.end43_crit_edge, %if.end26.if.end43_crit_edge
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i) #7
  %polarity.i = getelementptr inbounds %struct.pwm_device, ptr %call3, i32 0, i32 6, i32 1
  %8 = getelementptr inbounds i8, ptr %state.i, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 16)
  %10 = ptrtoint ptr %polarity.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %polarity.i, align 8
  %polarity1.i = getelementptr inbounds %struct.pwm_state, ptr %state.i, i32 0, i32 2
  %12 = ptrtoint ptr %polarity1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %polarity1.i, align 8
  %13 = ptrtoint ptr %args1.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %args1.i, align 8
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %state.i, align 8
  %call.i100 = call i32 @pwm_apply_state(ptr noundef %call3, ptr noundef nonnull %state.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #7
  %add45 = add i64 %pargs.sroa.0.0.copyload106, 1
  %shr = lshr i64 %add45, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i101) #7
  %tobool.not.i = icmp ne ptr %call3, null
  %16 = or i64 %shr, %pargs.sroa.0.0.copyload106
  %17 = and i64 %16, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %.not.i = icmp eq i64 %17, 0
  %or.cond.i = and i1 %tobool.not.i, %.not.i
  br i1 %or.cond.i, label %if.end3.i, label %pwm_config.exit.thread

pwm_config.exit.thread:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i101) #7
  br label %cleanup

if.end3.i:                                        ; preds = %if.end43
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %call3, i32 0, i32 7
  %18 = call ptr @memcpy(ptr %state.i101, ptr %state1.i.i, i32 24)
  %duty_cycle.i = getelementptr inbounds %struct.pwm_state, ptr %state.i101, i32 0, i32 1
  %19 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %duty_cycle.i, align 8
  %conv21.i = and i64 %shr, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %conv21.i)
  %cmp4.i = icmp eq i64 %20, %conv21.i
  br i1 %cmp4.i, label %land.lhs.true.i, label %if.end3.if.end10_crit_edge.i

if.end3.if.end10_crit_edge.i:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i = and i64 %pargs.sroa.0.0.copyload106, 4294967295
  br label %pwm_config.exit

land.lhs.true.i:                                  ; preds = %if.end3.i
  %21 = ptrtoint ptr %state.i101 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %state.i101, align 8
  %conv622.i = and i64 %pargs.sroa.0.0.copyload106, 4294967295
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %conv622.i)
  %cmp7.i = icmp eq i64 %22, %conv622.i
  br i1 %cmp7.i, label %pwm_config.exit.thread109, label %land.lhs.true.i.pwm_config.exit_crit_edge

land.lhs.true.i.pwm_config.exit_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pwm_config.exit

pwm_config.exit.thread109:                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i101) #7
  br label %if.end53

pwm_config.exit:                                  ; preds = %land.lhs.true.i.pwm_config.exit_crit_edge, %if.end3.if.end10_crit_edge.i
  %conv1323.pre-phi.i = phi i64 [ %.pre.i, %if.end3.if.end10_crit_edge.i ], [ %conv622.i, %land.lhs.true.i.pwm_config.exit_crit_edge ]
  %23 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv21.i, ptr %duty_cycle.i, align 8
  %24 = ptrtoint ptr %state.i101 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv1323.pre-phi.i, ptr %state.i101, align 8
  %call.i102 = call i32 @pwm_apply_state(ptr noundef nonnull %call3, ptr noundef nonnull %state.i101) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i101) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %cmp50 = icmp slt i32 %call.i102, 0
  br i1 %cmp50, label %pwm_config.exit.cleanup_crit_edge, label %pwm_config.exit.if.end53_crit_edge

pwm_config.exit.if.end53_crit_edge:               ; preds = %pwm_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

pwm_config.exit.cleanup_crit_edge:                ; preds = %pwm_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end53:                                         ; preds = %pwm_config.exit.if.end53_crit_edge, %pwm_config.exit.thread109
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %27 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %clk_name, align 4
  %call54 = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef nonnull %clk_name) #7
  %28 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk_name, align 4
  %30 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %31 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @clk_pwm_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %flags, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %33 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %num_parents, align 4
  %pwm56 = getelementptr inbounds %struct.clk_pwm, ptr %call.i, i32 0, i32 1
  %34 = ptrtoint ptr %pwm56 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call3, ptr %pwm56, align 4
  %init57 = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %35 = ptrtoint ptr %init57 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %init, ptr %init57, align 4
  %call60 = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end63:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  %call65 = call i32 @of_clk_add_hw_provider(ptr noundef %1, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %if.end53.cleanup_crit_edge, %pwm_config.exit.cleanup_crit_edge, %pwm_config.exit.thread, %do.end41, %do.end24, %do.end, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then5 ], [ -22, %do.end41 ], [ %call65, %if.end63 ], [ -22, %do.end24 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call.i102, %pwm_config.exit.cleanup_crit_edge ], [ %call60, %if.end53.cleanup_crit_edge ], [ -22, %pwm_config.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pwm_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  tail call void @of_clk_del_provider(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pwm_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_apply_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pwm_prepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %state.i = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pwm = getelementptr inbounds %struct.clk_pwm, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwm, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i) #7
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.pwm_enable.exit_crit_edge, label %if.end.i

entry.pwm_enable.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pwm_enable.exit

if.end.i:                                         ; preds = %entry
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7
  %2 = call ptr @memcpy(ptr %state.i, ptr %state1.i.i, i32 24)
  %enabled.i = getelementptr inbounds %struct.pwm_state, ptr %state.i, i32 0, i32 3
  %3 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled.i, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not.i = icmp eq i8 %4, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.pwm_enable.exit_crit_edge

if.end.i.pwm_enable.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pwm_enable.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %enabled.i, align 4
  %call.i = call i32 @pwm_apply_state(ptr noundef nonnull %1, ptr noundef nonnull %state.i) #7
  br label %pwm_enable.exit

pwm_enable.exit:                                  ; preds = %if.end3.i, %if.end.i.pwm_enable.exit_crit_edge, %entry.pwm_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end3.i ], [ -22, %entry.pwm_enable.exit_crit_edge ], [ 0, %if.end.i.pwm_enable.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_pwm_unprepare(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %state.i = alloca %struct.pwm_state, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pwm = getelementptr inbounds %struct.clk_pwm, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwm, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state.i) #7
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.pwm_disable.exit_crit_edge, label %if.end.i

entry.pwm_disable.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pwm_disable.exit

if.end.i:                                         ; preds = %entry
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7
  %2 = call ptr @memcpy(ptr %state.i, ptr %state1.i.i, i32 24)
  %enabled.i = getelementptr inbounds %struct.pwm_state, ptr %state.i, i32 0, i32 3
  %3 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled.i, align 4, !range !47
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not.i = icmp eq i8 %4, 0
  br i1 %tobool1.not.i, label %if.end.i.pwm_disable.exit_crit_edge, label %if.end3.i

if.end.i.pwm_disable.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pwm_disable.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %enabled.i, align 4
  %call.i = call i32 @pwm_apply_state(ptr noundef nonnull %1, ptr noundef nonnull %state.i) #7
  br label %pwm_disable.exit

pwm_disable.exit:                                 ; preds = %if.end3.i, %if.end.i.pwm_disable.exit_crit_edge, %entry.pwm_disable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state.i) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_pwm_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fixed_rate = getelementptr inbounds %struct.clk_pwm, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %fixed_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fixed_rate, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_pwm_get_duty_cycle(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %duty) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pwm = getelementptr inbounds %struct.clk_pwm, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwm, align 4
  %state1.i = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %state1.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %state.sroa.0.0.copyload3 = load i64, ptr %state1.i, align 8
  %state.sroa.5.0.state1.i.sroa_idx = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %state.sroa.5.0.state1.i.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %3)
  %state.sroa.5.0.copyload4 = load i64, ptr %state.sroa.5.0.state1.i.sroa_idx, align 8
  %conv = trunc i64 %state.sroa.5.0.copyload4 to i32
  %4 = ptrtoint ptr %duty to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %duty, align 4
  %conv1 = trunc i64 %state.sroa.0.0.copyload3 to i32
  %den = getelementptr inbounds %struct.clk_duty, ptr %duty, i32 0, i32 1
  %5 = ptrtoint ptr %den to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv1, ptr %den, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_clk_pwm__170_154_clk_pwm_driver_init6, !1, !"__initcall__kmod_clk_pwm__170_154_clk_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-pwm.c", i32 154, i32 1}
!2 = !{ptr @__exitcall_clk_pwm_driver_exit, !1, !"__exitcall_clk_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/clk/clk-pwm.c", i32 156, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/clk/clk-pwm.c", i32 157, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/clk/clk-pwm.c", i32 158, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/clk-pwm.c", i32 149, i32 11}
!12 = !{ptr @clk_pwm_driver, !13, !"clk_pwm_driver", i1 false, i1 false}
!13 = !{!"../drivers/clk/clk-pwm.c", i32 145, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/clk-pwm.c", i32 87, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @clk_pwm_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @clk_pwm_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/clk-pwm.c", i32 91, i32 33}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/clk-pwm.c", i32 95, i32 3}
!26 = !{ptr @clk_pwm_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @clk_pwm_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/clk-pwm.c", i32 101, i32 3}
!30 = !{ptr @clk_pwm_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @clk_pwm_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/clk-pwm.c", i32 116, i32 32}
!34 = !{ptr @clk_pwm_ops, !35, !"clk_pwm_ops", i1 false, i1 false}
!35 = !{!"../drivers/clk/clk-pwm.c", i32 60, i32 29}
!36 = !{ptr @clk_pwm_dt_ids, !37, !"clk_pwm_dt_ids", i1 false, i1 false}
!37 = !{!"../drivers/clk/clk-pwm.c", i32 139, i32 34}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i8 0, i8 2}
