; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-pwm.c_pt.bc'
source_filename = "../drivers/leds/leds-pwm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.led_init_data = type { ptr, ptr, ptr, i8 }
%struct.led_pwm = type { ptr, i8, i8, i32 }
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
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.led_pwm_priv = type { i32, [0 x %struct.led_pwm_data] }
%struct.led_pwm_data = type { %struct.led_classdev, ptr, %struct.pwm_state, i32 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }

@__initcall__kmod_leds_pwm__183_212_led_pwm_driver_init6 = internal global ptr @led_pwm_driver_init, section ".initcall6.init", align 4
@led_pwm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @led_pwm_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_pwm_leds_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_led_pwm_driver_exit = internal global ptr @led_pwm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [48 x i8] c"leds_pwm.author=Luotao Fu <l.fu@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [44 x i8] c"leds_pwm.description=generic PWM LED driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [36 x i8] c"leds_pwm.file=drivers/leds/leds-pwm\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [24 x i8] c"leds_pwm.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias188 = internal constant [33 x i8] c"leds_pwm.alias=platform:leds-pwm\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"leds_pwm\00", [23 x i8] zeroinitializer }, align 32
@of_pwm_leds_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"pwm-leds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"active-low\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max-brightness\00", [17 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to request PWM for %s\0A\00", [34 x i8] zeroinitializer }, align 32
@led_pwm_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 91, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to read period for %s, default to off\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"led_pwm_add\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/leds/leds-pwm.c\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@led_pwm_add._entry_ptr = internal global ptr @led_pwm_add._entry, section ".printk_index", align 4
@led_pwm_add._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 118, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to register PWM led for %s: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@led_pwm_add._entry_ptr.13 = internal global ptr @led_pwm_add._entry.10, section ".printk_index", align 4
@led_pwm_add._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.7, i32 126, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to set led PWM value for %s: %d\00", [57 x i8] zeroinitializer }, align 32
@led_pwm_add._entry_ptr.16 = internal global ptr @led_pwm_add._entry.14, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.17 = private unnamed_addr constant [15 x i8] c"led_pwm_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 204, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 207, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"of_pwm_leds_match\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 198, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 144, i32 45 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 154, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 155, i32 36 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 77, i32 10 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 89, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 117, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [27 x i8] c"../drivers/leds/leds-pwm.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 125, i32 4 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_alias188, ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_led_pwm_driver_exit, ptr @__initcall__kmod_leds_pwm__183_212_led_pwm_driver_init6, ptr @led_pwm_add._entry, ptr @led_pwm_add._entry.10, ptr @led_pwm_add._entry.14, ptr @led_pwm_add._entry_ptr, ptr @led_pwm_add._entry_ptr.13, ptr @led_pwm_add._entry_ptr.16, ptr @led_pwm_driver_exit, ptr @led_pwm_driver, ptr @.str, ptr @of_pwm_leds_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.15], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_pwm_leds_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_pwm_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_pwm_add._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @led_pwm_add._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @led_pwm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @led_pwm_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @led_pwm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @led_pwm_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @led_pwm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %init_data.i.i = alloca %struct.led_init_data, align 4
  %led.i = alloca %struct.led_pwm, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @device_get_child_node_count(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 440) #6
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %3 = add nuw i32 %2, 8
  %retval.0.i = select i1 %1, i32 -1, i32 %3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %retval.0.i, i32 noundef 3520) #6
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %led.i) #6
  %4 = call ptr @memset(ptr %led.i, i32 0, i32 12)
  %call.i21 = tail call ptr @device_get_next_child_node(ptr noundef %dev, ptr noundef null) #6
  %tobool.not61.i = icmp eq ptr %call.i21, null
  br i1 %tobool.not61.i, label %if.end6.if.end11_crit_edge, label %for.body.lr.ph.i

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

for.body.lr.ph.i:                                 ; preds = %if.end6
  %active_low.i = getelementptr inbounds %struct.led_pwm, ptr %led.i, i32 0, i32 1
  %max_brightness.i = getelementptr inbounds %struct.led_pwm, ptr %led.i, i32 0, i32 3
  %default_state.i = getelementptr inbounds %struct.led_pwm, ptr %led.i, i32 0, i32 2
  %5 = getelementptr inbounds i8, ptr %init_data.i.i, i32 12
  %default_label.i.i = getelementptr inbounds %struct.led_init_data, ptr %init_data.i.i, i32 0, i32 1
  %devicename.i.i = getelementptr inbounds %struct.led_init_data, ptr %init_data.i.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %fwnode.062.i = phi ptr [ %call.i21, %for.body.lr.ph.i ], [ %call20.i, %for.inc.i.for.body.i_crit_edge ]
  %call1.i = call i32 @fwnode_property_read_string(ptr noundef nonnull %fwnode.062.i, ptr noundef nonnull @.str.1, ptr noundef nonnull %led.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  %cmp.i.i.i = icmp ugt ptr %fwnode.062.i, inttoptr (i32 -4096 to ptr)
  %or.cond.i = or i1 %cmp.i.i.i, %tobool2.not.i
  br i1 %or.cond.i, label %for.body.i.if.endthread-pre-split.i_crit_edge, label %is_of_node.exit.i

for.body.i.if.endthread-pre-split.i_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.endthread-pre-split.i

is_of_node.exit.i:                                ; preds = %for.body.i
  %ops.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %fwnode.062.i, i32 0, i32 1
  %6 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i.i, align 4
  %cmp.i.i = icmp eq ptr %7, @of_fwnode_ops
  br i1 %cmp.i.i, label %is_of_node.exit43.i, label %is_of_node.exit.i.if.endthread-pre-split.i_crit_edge

is_of_node.exit.i.if.endthread-pre-split.i_crit_edge: ; preds = %is_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.endthread-pre-split.i

is_of_node.exit43.i:                              ; preds = %is_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %fwnode.062.i, i32 -12
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %10 = ptrtoint ptr %led.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %led.i, align 4
  br label %if.end.i

if.endthread-pre-split.i:                         ; preds = %is_of_node.exit.i.if.endthread-pre-split.i_crit_edge, %for.body.i.if.endthread-pre-split.i_crit_edge
  %11 = ptrtoint ptr %led.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr.i = load ptr, ptr %led.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.endthread-pre-split.i, %is_of_node.exit43.i
  %12 = phi ptr [ %.pr.i, %if.endthread-pre-split.i ], [ %9, %is_of_node.exit43.i ]
  %tobool9.not.i = icmp eq ptr %12, null
  br i1 %tobool9.not.i, label %if.end.i.led_pwm_create_fwnode.exit_crit_edge, label %if.end11.i

if.end.i.led_pwm_create_fwnode.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %led_pwm_create_fwnode.exit

if.end11.i:                                       ; preds = %if.end.i
  %call.i.i = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %fwnode.062.i, ptr noundef nonnull @.str.2) #6
  %conv.i = zext i1 %call.i.i to i8
  %13 = ptrtoint ptr %active_low.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i, ptr %active_low.i, align 4
  %call.i44.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %fwnode.062.i, ptr noundef nonnull @.str.3, ptr noundef %max_brightness.i, i32 noundef 1) #6
  %call14.i = call i32 @led_init_default_state_get(ptr noundef nonnull %fwnode.062.i) #6
  %conv15.i = trunc i32 %call14.i to i8
  %14 = ptrtoint ptr %default_state.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv15.i, ptr %default_state.i, align 1
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call.i, align 8
  %arrayidx.i.i = getelementptr %struct.led_pwm_priv, ptr %call.i, i32 0, i32 1, i32 %16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i.i) #6
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16777215, ptr %5, align 4
  %18 = ptrtoint ptr %init_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %fwnode.062.i, ptr %init_data.i.i, align 4
  %19 = ptrtoint ptr %default_label.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %default_label.i.i, align 4
  %20 = ptrtoint ptr %devicename.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %devicename.i.i, align 4
  %21 = ptrtoint ptr %active_low.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %active_low.i, align 4
  %conv.i.i = zext i8 %22 to i32
  %active_low2.i.i = getelementptr %struct.led_pwm_priv, ptr %call.i, i32 0, i32 1, i32 %16, i32 3
  %23 = ptrtoint ptr %active_low2.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv.i.i, ptr %active_low2.i.i, align 8
  %24 = ptrtoint ptr %led.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %led.i, align 4
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %arrayidx.i.i, align 8
  %brightness.i.i = getelementptr inbounds %struct.led_classdev, ptr %arrayidx.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %brightness.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %brightness.i.i, align 4
  %28 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_brightness.i, align 4
  %max_brightness6.i.i = getelementptr inbounds %struct.led_classdev, ptr %arrayidx.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %max_brightness6.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %max_brightness6.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.led_classdev, ptr %arrayidx.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 65536, ptr %flags.i.i, align 4
  %call.i45.i = call ptr @devm_fwnode_pwm_get(ptr noundef %dev, ptr noundef nonnull %fwnode.062.i, ptr noundef null) #6
  %pwm.i.i = getelementptr %struct.led_pwm_priv, ptr %call.i, i32 0, i32 1, i32 %16, i32 1
  %32 = ptrtoint ptr %pwm.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i45.i, ptr %pwm.i.i, align 8
  %cmp.i.i46.i = icmp ugt ptr %call.i45.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i46.i, label %led_pwm_add.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end11.i
  %brightness_set_blocking.i.i = getelementptr inbounds %struct.led_classdev, ptr %arrayidx.i.i, i32 0, i32 6
  %33 = ptrtoint ptr %brightness_set_blocking.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @led_pwm_set, ptr %brightness_set_blocking.i.i, align 8
  %34 = ptrtoint ptr %default_state.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %default_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %cond257.i.i = icmp eq i8 %35, 2
  br i1 %cond257.i.i, label %sw.bb.i.i, label %if.end.i.i.sw.default.i.i_crit_edge

if.end.i.i.sw.default.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default.i.i

sw.bb.i.i:                                        ; preds = %if.end.i.i
  %pwmstate.i.i = getelementptr %struct.led_pwm_priv, ptr %call.i, i32 0, i32 1, i32 %16, i32 2
  %state1.i.i.i = getelementptr inbounds %struct.pwm_device, ptr %call.i45.i, i32 0, i32 7
  %36 = call ptr @memcpy(ptr %pwmstate.i.i, ptr %state1.i.i.i, i32 24)
  %37 = ptrtoint ptr %pwmstate.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %pwmstate.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %38)
  %tobool.not.i.i = icmp eq i64 %38, 0
  br i1 %tobool.not.i.i, label %if.end19.i.i, label %sw.bb.i.i.sw.epilog.i.i_crit_edge

sw.bb.i.i.sw.epilog.i.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i

if.end19.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %default_state.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %default_state.i, align 1
  %40 = ptrtoint ptr %led.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %led.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %41) #9
  br label %sw.default.i.i

sw.default.i.i:                                   ; preds = %if.end19.i.i, %if.end.i.i.sw.default.i.i_crit_edge
  %42 = ptrtoint ptr %pwm.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pwm.i.i, align 8
  %pwmstate23.i.i = getelementptr %struct.led_pwm_priv, ptr %call.i, i32 0, i32 1, i32 %16, i32 2
  %state1.i.i.i.i = getelementptr inbounds %struct.pwm_device, ptr %43, i32 0, i32 7
  %44 = call ptr @memcpy(ptr %pwmstate23.i.i, ptr %state1.i.i.i.i, i32 24)
  %args1.i.i.i.i = getelementptr inbounds %struct.pwm_device, ptr %43, i32 0, i32 6
  %45 = ptrtoint ptr %args1.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %args.sroa.0.0.copyload8.i.i.i = load i64, ptr %args1.i.i.i.i, align 8
  %args.sroa.5.0.args1.i.sroa_idx.i.i.i = getelementptr inbounds %struct.pwm_device, ptr %43, i32 0, i32 6, i32 1
  %46 = ptrtoint ptr %args.sroa.5.0.args1.i.sroa_idx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %args.sroa.5.0.copyload9.i.i.i = load i32, ptr %args.sroa.5.0.args1.i.sroa_idx.i.i.i, align 8
  %47 = ptrtoint ptr %pwmstate23.i.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %args.sroa.0.0.copyload8.i.i.i, ptr %pwmstate23.i.i, align 8
  %polarity2.i.i.i = getelementptr %struct.led_pwm_priv, ptr %call.i, i32 0, i32 1, i32 %16, i32 2, i32 2
  %48 = ptrtoint ptr %polarity2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %args.sroa.5.0.copyload9.i.i.i, ptr %polarity2.i.i.i, align 8
  %duty_cycle.i.i.i = getelementptr %struct.led_pwm_priv, ptr %call.i, i32 0, i32 1, i32 %16, i32 2, i32 1
  %49 = ptrtoint ptr %duty_cycle.i.i.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 0, ptr %duty_cycle.i.i.i, align 8
  %usage_power.i.i.i = getelementptr %struct.led_pwm_priv, ptr %call.i, i32 0, i32 1, i32 %16, i32 2, i32 4
  %50 = ptrtoint ptr %usage_power.i.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %usage_power.i.i.i, align 1
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.default.i.i, %sw.bb.i.i.sw.epilog.i.i_crit_edge
  %51 = ptrtoint ptr %default_state.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %default_state.i, align 1
  %53 = zext i8 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values)
  switch i8 %52, label %sw.epilog.i.i.sw.epilog227.i.i_crit_edge [
    i8 1, label %sw.bb26.i.i
    i8 2, label %sw.bb30.i.i
  ]

sw.epilog.i.i.sw.epilog227.i.i_crit_edge:         ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog227.i.i

sw.bb26.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_brightness.i, align 4
  br label %sw.epilog227.sink.split.i.i

sw.bb30.i.i:                                      ; preds = %sw.epilog.i.i
  %56 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %max_brightness.i, align 4
  %conv33.i.i = zext i32 %57 to i64
  %pwmstate34.i.i = getelementptr %struct.led_pwm_priv, ptr %call.i, i32 0, i32 1, i32 %16, i32 2
  %duty_cycle.i.i = getelementptr %struct.led_pwm_priv, ptr %call.i, i32 0, i32 1, i32 %16, i32 2, i32 1
  %58 = ptrtoint ptr %duty_cycle.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %duty_cycle.i.i, align 8
  %mul.i.i = mul i64 %59, %conv33.i.i
  %60 = ptrtoint ptr %pwmstate34.i.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %pwmstate34.i.i, align 8
  %conv37.i.i = trunc i64 %61 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i.i)
  %cmp208.i.i = icmp ult i64 %mul.i.i, 4294967296
  br i1 %cmp208.i.i, label %if.then212.i.i, label %if.else218.i.i, !prof !52

if.then212.i.i:                                   ; preds = %sw.bb30.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv213.i.i = trunc i64 %mul.i.i to i32
  %div216.i.i = udiv i32 %conv213.i.i, %conv37.i.i
  br label %sw.epilog227.sink.split.i.i

if.else218.i.i:                                   ; preds = %sw.bb30.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %62 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv37.i.i, i64 %mul.i.i) #10, !srcloc !53
  %asmresult1.i.i.i = extractvalue { i64, i64 } %62, 1
  %extract.t409.i.i = trunc i64 %asmresult1.i.i.i to i32
  br label %sw.epilog227.sink.split.i.i

sw.epilog227.sink.split.i.i:                      ; preds = %if.else218.i.i, %if.then212.i.i, %sw.bb26.i.i
  %brightness31.0.off0.sink.i.i = phi i32 [ %55, %sw.bb26.i.i ], [ %div216.i.i, %if.then212.i.i ], [ %extract.t409.i.i, %if.else218.i.i ]
  %63 = ptrtoint ptr %brightness.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %brightness31.0.off0.sink.i.i, ptr %brightness.i.i, align 4
  br label %sw.epilog227.i.i

sw.epilog227.i.i:                                 ; preds = %sw.epilog227.sink.split.i.i, %sw.epilog.i.i.sw.epilog227.i.i_crit_edge
  %call229.i.i = call i32 @devm_led_classdev_register_ext(ptr noundef %dev, ptr noundef %arrayidx.i.i, ptr noundef nonnull %init_data.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229.i.i)
  %tobool230.not.i.i = icmp eq i32 %call229.i.i, 0
  br i1 %tobool230.not.i.i, label %if.end236.i.i, label %do.end234.i.i

do.end234.i.i:                                    ; preds = %sw.epilog227.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %led.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %led.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef %65, i32 noundef %call229.i.i) #9
  br label %led_pwm_add.exit.thread.i

if.end236.i.i:                                    ; preds = %sw.epilog227.i.i
  %66 = ptrtoint ptr %default_state.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %default_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %67)
  %cmp239.not.i.i = icmp eq i8 %67, 2
  br i1 %cmp239.not.i.i, label %if.end236.i.i.led_pwm_add.exit.thread52.i_crit_edge, label %if.then241.i.i

if.end236.i.i.led_pwm_add.exit.thread52.i_crit_edge: ; preds = %if.end236.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %led_pwm_add.exit.thread52.i

if.then241.i.i:                                   ; preds = %if.end236.i.i
  %68 = ptrtoint ptr %brightness.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %brightness.i.i, align 4
  %70 = ptrtoint ptr %max_brightness6.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %max_brightness6.i.i, align 8
  %pwmstate.i.i.i = getelementptr %struct.led_pwm_priv, ptr %call.i, i32 0, i32 1, i32 %16, i32 2
  %72 = ptrtoint ptr %pwmstate.i.i.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %pwmstate.i.i.i, align 8
  %conv.i.i.i = zext i32 %69 to i64
  %mul.i.i.i = mul i64 %73, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i.i.i)
  %cmp168.i.i.i = icmp ult i64 %mul.i.i.i, 4294967296
  br i1 %cmp168.i.i.i, label %if.then172.i.i.i, label %if.else178.i.i.i, !prof !52

if.then172.i.i.i:                                 ; preds = %if.then241.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv173.i.i.i = trunc i64 %mul.i.i.i to i32
  %div176.i.i.i = udiv i32 %conv173.i.i.i, %71
  %conv177.i.i.i = zext i32 %div176.i.i.i to i64
  br label %led_pwm_set.exit.i.i

if.else178.i.i.i:                                 ; preds = %if.then241.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %74 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %71, i64 %mul.i.i.i) #10, !srcloc !53
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %74, 1
  br label %led_pwm_set.exit.i.i

led_pwm_set.exit.i.i:                             ; preds = %if.else178.i.i.i, %if.then172.i.i.i
  %duty.0.i.i.i = phi i64 [ %conv177.i.i.i, %if.then172.i.i.i ], [ %asmresult1.i.i.i.i, %if.else178.i.i.i ]
  %75 = ptrtoint ptr %active_low2.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %active_low2.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool184.not.i.i.i = icmp eq i32 %76, 0
  %sub188.i.i.i = sub i64 %73, %duty.0.i.i.i
  %spec.select.i.i49.i = select i1 %tobool184.not.i.i.i, i64 %duty.0.i.i.i, i64 %sub188.i.i.i
  %duty_cycle.i385.i.i = getelementptr %struct.led_pwm_priv, ptr %call.i, i32 0, i32 1, i32 %16, i32 2, i32 1
  %77 = ptrtoint ptr %duty_cycle.i385.i.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 %spec.select.i.i49.i, ptr %duty_cycle.i385.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %spec.select.i.i49.i)
  %cmp191.i.i.i = icmp ne i64 %spec.select.i.i49.i, 0
  %enabled.i.i.i = getelementptr %struct.led_pwm_priv, ptr %call.i, i32 0, i32 1, i32 %16, i32 2, i32 3
  %frombool.i.i.i = zext i1 %cmp191.i.i.i to i8
  %78 = ptrtoint ptr %enabled.i.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %frombool.i.i.i, ptr %enabled.i.i.i, align 4
  %79 = ptrtoint ptr %pwm.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pwm.i.i, align 8
  %call195.i.i.i = call i32 @pwm_apply_state(ptr noundef %80, ptr noundef %pwmstate.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195.i.i.i)
  %tobool246.not.i.i = icmp eq i32 %call195.i.i.i, 0
  br i1 %tobool246.not.i.i, label %led_pwm_set.exit.i.i.led_pwm_add.exit.thread52.i_crit_edge, label %do.end250.i.i

led_pwm_set.exit.i.i.led_pwm_add.exit.thread52.i_crit_edge: ; preds = %led_pwm_set.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %led_pwm_add.exit.thread52.i

do.end250.i.i:                                    ; preds = %led_pwm_set.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %led.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %led.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef %82, i32 noundef %call195.i.i.i) #9
  br label %led_pwm_add.exit.thread.i

led_pwm_add.exit.thread52.i:                      ; preds = %led_pwm_set.exit.i.i.led_pwm_add.exit.thread52.i_crit_edge, %if.end236.i.i.led_pwm_add.exit.thread52.i_crit_edge
  %83 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %call.i, align 8
  %inc.i.i = add i32 %84, 1
  store i32 %inc.i.i, ptr %call.i, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i.i) #6
  br label %for.inc.i

led_pwm_add.exit.thread.i:                        ; preds = %do.end250.i.i, %do.end234.i.i
  %retval.0.i.ph.i = phi i32 [ %call195.i.i.i, %do.end250.i.i ], [ %call229.i.i, %do.end234.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i.i) #6
  br label %led_pwm_create_fwnode.exit

led_pwm_add.exit.i:                               ; preds = %if.end11.i
  %85 = ptrtoint ptr %call.i45.i to i32
  %86 = ptrtoint ptr %led.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %led.i, align 4
  %call13.i.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %85, ptr noundef nonnull @.str.4, ptr noundef %87) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool17.not.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool17.not.i, label %led_pwm_add.exit.i.for.inc.i_crit_edge, label %led_pwm_add.exit.i.led_pwm_create_fwnode.exit_crit_edge

led_pwm_add.exit.i.led_pwm_create_fwnode.exit_crit_edge: ; preds = %led_pwm_add.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %led_pwm_create_fwnode.exit

led_pwm_add.exit.i.for.inc.i_crit_edge:           ; preds = %led_pwm_add.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %led_pwm_add.exit.i.for.inc.i_crit_edge, %led_pwm_add.exit.thread52.i
  %call20.i = call ptr @device_get_next_child_node(ptr noundef %dev, ptr noundef nonnull %fwnode.062.i) #6
  %tobool.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool.not.i, label %for.inc.i.if.end11_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end11_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

led_pwm_create_fwnode.exit:                       ; preds = %led_pwm_add.exit.i.led_pwm_create_fwnode.exit_crit_edge, %led_pwm_add.exit.thread.i, %if.end.i.led_pwm_create_fwnode.exit_crit_edge
  %ret.0.i = phi i32 [ %retval.0.i.ph.i, %led_pwm_add.exit.thread.i ], [ %call13.i.i, %led_pwm_add.exit.i.led_pwm_create_fwnode.exit_crit_edge ], [ 22, %if.end.i.led_pwm_create_fwnode.exit_crit_edge ]
  call void @fwnode_handle_put(ptr noundef nonnull %fwnode.062.i) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %led.i) #6
  br label %cleanup

if.end11:                                         ; preds = %for.inc.i.if.end11_crit_edge, %if.end6.if.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %led.i) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %88 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %led_pwm_create_fwnode.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %ret.0.i, %led_pwm_create_fwnode.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_init_default_state_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_fwnode_pwm_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @led_pwm_set(ptr noundef %led_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %max_brightness = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 2
  %0 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_brightness, align 8
  %pwmstate = getelementptr inbounds %struct.led_pwm_data, ptr %led_cdev, i32 0, i32 2
  %2 = ptrtoint ptr %pwmstate to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pwmstate, align 8
  %conv = zext i32 %brightness to i64
  %mul = mul i64 %3, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp168 = icmp ult i64 %mul, 4294967296
  br i1 %cmp168, label %if.then172, label %if.else178, !prof !52

if.then172:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv173 = trunc i64 %mul to i32
  %div176 = udiv i32 %conv173, %1
  %conv177 = zext i32 %div176 to i64
  br label %if.end182

if.else178:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %mul) #10, !srcloc !53
  %asmresult1.i = extractvalue { i64, i64 } %4, 1
  br label %if.end182

if.end182:                                        ; preds = %if.else178, %if.then172
  %duty.0 = phi i64 [ %conv177, %if.then172 ], [ %asmresult1.i, %if.else178 ]
  %active_low = getelementptr inbounds %struct.led_pwm_data, ptr %led_cdev, i32 0, i32 3
  %5 = ptrtoint ptr %active_low to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %active_low, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool184.not = icmp eq i32 %6, 0
  %sub188 = sub i64 %3, %duty.0
  %spec.select = select i1 %tobool184.not, i64 %duty.0, i64 %sub188
  %duty_cycle = getelementptr inbounds %struct.led_pwm_data, ptr %led_cdev, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %spec.select, ptr %duty_cycle, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %spec.select)
  %cmp191 = icmp ne i64 %spec.select, 0
  %enabled = getelementptr inbounds %struct.led_pwm_data, ptr %led_cdev, i32 0, i32 2, i32 3
  %frombool = zext i1 %cmp191 to i8
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %enabled, align 4
  %pwm = getelementptr inbounds %struct.led_pwm_data, ptr %led_cdev, i32 0, i32 1
  %9 = ptrtoint ptr %pwm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pwm, align 8
  %call195 = tail call i32 @pwm_apply_state(ptr noundef %10, ptr noundef %pwmstate) #6
  ret i32 %call195
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_apply_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__initcall__kmod_leds_pwm__183_212_led_pwm_driver_init6, !1, !"__initcall__kmod_leds_pwm__183_212_led_pwm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-pwm.c", i32 212, i32 1}
!2 = !{ptr @__exitcall_led_pwm_driver_exit, !1, !"__exitcall_led_pwm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-pwm.c", i32 214, i32 1}
!5 = !{ptr @__UNIQUE_ID_description185, !6, !"__UNIQUE_ID_description185", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-pwm.c", i32 215, i32 1}
!7 = !{ptr @__UNIQUE_ID_file186, !8, !"__UNIQUE_ID_file186", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-pwm.c", i32 216, i32 1}
!9 = !{ptr @__UNIQUE_ID_license187, !8, !"__UNIQUE_ID_license187", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias188, !11, !"__UNIQUE_ID_alias188", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-pwm.c", i32 217, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-pwm.c", i32 207, i32 11}
!14 = !{ptr @led_pwm_driver, !15, !"led_pwm_driver", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-pwm.c", i32 204, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/leds-pwm.c", i32 144, i32 45}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/leds/leds-pwm.c", i32 154, i32 11}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/leds/leds-pwm.c", i32 155, i32 36}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/leds/leds-pwm.c", i32 77, i32 10}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/leds/leds-pwm.c", i32 89, i32 3}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @led_pwm_add._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @led_pwm_add._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/leds/leds-pwm.c", i32 117, i32 3}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @led_pwm_add._entry.10, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @led_pwm_add._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/leds/leds-pwm.c", i32 125, i32 4}
!39 = !{ptr @led_pwm_add._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @led_pwm_add._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @of_pwm_leds_match, !42, !"of_pwm_leds_match", i1 false, i1 false}
!42 = !{!"../drivers/leds/leds-pwm.c", i32 198, i32 34}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i64 2148189530, i64 2148189810, i64 2148190144, i64 2148190478}
