; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-syscon.c_pt.bc'
source_filename = "../drivers/leds/leds-syscon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.led_init_data = type { ptr, ptr, ptr, i8 }
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
%struct.syscon_led = type { %struct.led_classdev, ptr, i32, i32, i8 }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_leds_syscon__183_140_syscon_led_driver_init6 = internal global ptr @syscon_led_driver_init, section ".initcall6.init", align 4
@syscon_led_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @syscon_led_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @of_syscon_leds_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"leds-syscon\00", [20 x i8] zeroinitializer }, align 32
@of_syscon_leds_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"register-bit-led\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@syscon_led_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 69, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no parent for syscon LED\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"syscon_led_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/leds/leds-syscon.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@syscon_led_probe._entry_ptr = internal global ptr @syscon_led_probe._entry, section ".printk_index", align 4
@syscon_led_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 74, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"no regmap for syscon LED parent\0A\00", [63 x i8] zeroinitializer }, align 32
@syscon_led_probe._entry_ptr.8 = internal global ptr @syscon_led_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mask\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"default-state\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"keep\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@syscon_led_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 122, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"registered LED %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@syscon_led_probe._entry_ptr.17 = internal global ptr @syscon_led_probe._entry.14, section ".printk_index", align 4
@syscon_led_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 53, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error updating LED status\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"syscon_led_set\00", [17 x i8] zeroinitializer }, align 32
@syscon_led_set._entry_ptr = internal global ptr @syscon_led_set._entry, section ".printk_index", align 4
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"syscon_led_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 132, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 135, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [21 x i8] c"of_syscon_leds_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 127, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 69, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 74, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 84, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 86, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 89, i32 30 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 91, i32 22 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 98, i32 29 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 122, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [30 x i8] c"../drivers/leds/leds-syscon.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 53, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__initcall__kmod_leds_syscon__183_140_syscon_led_driver_init6, ptr @syscon_led_probe._entry, ptr @syscon_led_probe._entry.14, ptr @syscon_led_probe._entry.6, ptr @syscon_led_probe._entry_ptr, ptr @syscon_led_probe._entry_ptr.17, ptr @syscon_led_probe._entry_ptr.8, ptr @syscon_led_set._entry, ptr @syscon_led_set._entry_ptr, ptr @syscon_led_driver, ptr @.str, ptr @of_syscon_leds_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syscon_led_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_syscon_leds_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syscon_led_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syscon_led_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syscon_led_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syscon_led_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @syscon_led_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @syscon_led_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @syscon_led_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %init_data = alloca %struct.led_init_data, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data) #6
  %0 = getelementptr inbounds i8, ptr %init_data, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %dev1, null
  br i1 %tobool.not.i, label %entry.dev_of_node.exit_crit_edge, label %if.end.i

entry.dev_of_node.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_of_node.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  br label %dev_of_node.exit

dev_of_node.exit:                                 ; preds = %if.end.i, %entry.dev_of_node.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ null, %entry.dev_of_node.exit_crit_edge ]
  %parent2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent2, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %dev_of_node.exit128

do.end:                                           ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup72

dev_of_node.exit128:                              ; preds = %dev_of_node.exit
  %of_node.i125 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node.i125 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i125, align 8
  %call4 = tail call ptr @syscon_node_to_regmap(ptr noundef %7) #6
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end9, label %if.end11

do.end9:                                          ; preds = %dev_of_node.exit128
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  %8 = ptrtoint ptr %call4 to i32
  br label %cleanup72

if.end11:                                         ; preds = %dev_of_node.exit128
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 416, i32 noundef 3520) #6
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.end11.cleanup72_crit_edge, label %if.end15

if.end11.cleanup72_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup72

if.end15:                                         ; preds = %if.end11
  %map16 = getelementptr inbounds %struct.syscon_led, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %map16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call4, ptr %map16, align 4
  %offset = getelementptr inbounds %struct.syscon_led, ptr %call.i, i32 0, i32 2
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %retval.0.i, ptr noundef nonnull @.str.9, ptr noundef %offset, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool18.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool18.not, label %if.end20, label %if.end15.cleanup72_crit_edge

if.end15.cleanup72_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup72

if.end20:                                         ; preds = %if.end15
  %mask = getelementptr inbounds %struct.syscon_led, ptr %call.i, i32 0, i32 3
  %call.i.i129 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %retval.0.i, ptr noundef nonnull @.str.10, ptr noundef %mask, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i129)
  %tobool22.not = icmp sgt i32 %call.i.i129, -1
  br i1 %tobool22.not, label %if.end24, label %if.end20.cleanup72_crit_edge

if.end20.cleanup72_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup72

if.end24:                                         ; preds = %if.end20
  %call25 = tail call ptr @of_get_property(ptr noundef %retval.0.i, ptr noundef nonnull @.str.11, ptr noundef null) #6
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.end24.if.end60_crit_edge, label %if.then27

if.end24.if.end60_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then27:                                        ; preds = %if.end24
  %call28 = tail call i32 @strcmp(ptr noundef nonnull %call25, ptr noundef nonnull dereferenceable(5) @.str.12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val, align 4, !annotation !49
  %11 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset, align 4
  %call32 = call i32 @regmap_read(ptr noundef %call4, i32 noundef %12, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp = icmp slt i32 %call32, 0
  br i1 %cmp, label %cleanup72.critedge, label %if.end34

if.end34:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask, align 4
  %and = and i32 %16, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36 = icmp ne i32 %and, 0
  %state38 = getelementptr inbounds %struct.syscon_led, ptr %call.i, i32 0, i32 4
  %frombool = zext i1 %tobool36 to i8
  %17 = ptrtoint ptr %state38 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool, ptr %state38, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  br label %if.end60

if.else:                                          ; preds = %if.then27
  %call39 = tail call i32 @strcmp(ptr noundef nonnull %call25, ptr noundef nonnull dereferenceable(3) @.str.13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  %state42 = getelementptr inbounds %struct.syscon_led, ptr %call.i, i32 0, i32 4
  br i1 %tobool40.not, label %if.then41, label %if.else50

if.then41:                                        ; preds = %if.else
  %18 = ptrtoint ptr %state42 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %state42, align 4
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset, align 4
  %21 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mask, align 4
  %call.i130 = tail call i32 @regmap_update_bits_base(ptr noundef %call4, i32 noundef %20, i32 noundef %22, i32 noundef %22, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %cmp47 = icmp slt i32 %call.i130, 0
  br i1 %cmp47, label %if.then41.cleanup72_crit_edge, label %if.then41.if.end60_crit_edge

if.then41.if.end60_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then41.cleanup72_crit_edge:                    ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup72

if.else50:                                        ; preds = %if.else
  %23 = ptrtoint ptr %state42 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %state42, align 4
  %24 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset, align 4
  %26 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mask, align 4
  %call.i131 = tail call i32 @regmap_update_bits_base(ptr noundef %call4, i32 noundef %25, i32 noundef %27, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %cmp55 = icmp slt i32 %call.i131, 0
  br i1 %cmp55, label %if.else50.cleanup72_crit_edge, label %if.else50.if.end60_crit_edge

if.else50.if.end60_crit_edge:                     ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.else50.cleanup72_crit_edge:                    ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup72

if.end60:                                         ; preds = %if.else50.if.end60_crit_edge, %if.then41.if.end60_crit_edge, %if.end34, %if.end24.if.end60_crit_edge
  %brightness_set = getelementptr inbounds %struct.led_classdev, ptr %call.i, i32 0, i32 5
  %28 = ptrtoint ptr %brightness_set to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @syscon_led_set, ptr %brightness_set, align 4
  %tobool61.not = icmp eq ptr %retval.0.i, null
  %fwnode = getelementptr inbounds %struct.device_node, ptr %retval.0.i, i32 0, i32 3
  %spec.select = select i1 %tobool61.not, ptr null, ptr %fwnode
  %29 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %spec.select, ptr %init_data, align 4
  %call64 = call i32 @devm_led_classdev_register_ext(ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef nonnull %init_data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %if.end60.cleanup72_crit_edge, label %if.end67

if.end60.cleanup72_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup72

if.end67:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef %32) #9
  br label %cleanup72

cleanup72.critedge:                               ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  br label %cleanup72

cleanup72:                                        ; preds = %cleanup72.critedge, %if.end67, %if.end60.cleanup72_crit_edge, %if.else50.cleanup72_crit_edge, %if.then41.cleanup72_crit_edge, %if.end20.cleanup72_crit_edge, %if.end15.cleanup72_crit_edge, %if.end11.cleanup72_crit_edge, %do.end9, %do.end
  %retval.1 = phi i32 [ %8, %do.end9 ], [ 0, %if.end67 ], [ -19, %do.end ], [ -12, %if.end11.cleanup72_crit_edge ], [ -22, %if.end15.cleanup72_crit_edge ], [ -22, %if.end20.cleanup72_crit_edge ], [ %call32, %cleanup72.critedge ], [ %call.i130, %if.then41.cleanup72_crit_edge ], [ %call.i131, %if.else50.cleanup72_crit_edge ], [ %call64, %if.end60.cleanup72_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data) #6
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @syscon_led_set(ptr nocapture noundef %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp = icmp eq i32 %value, 0
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mask = getelementptr inbounds %struct.syscon_led, ptr %led_cdev, i32 0, i32 3
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %.sink = phi i8 [ 1, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %val.0 = phi i32 [ %1, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %2 = getelementptr inbounds %struct.syscon_led, ptr %led_cdev, i32 0, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %.sink, ptr %2, align 4
  %map = getelementptr inbounds %struct.syscon_led, ptr %led_cdev, i32 0, i32 1
  %4 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map, align 4
  %offset = getelementptr inbounds %struct.syscon_led, ptr %led_cdev, i32 0, i32 2
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %mask2 = getelementptr inbounds %struct.syscon_led, ptr %led_cdev, i32 0, i32 3
  %8 = ptrtoint ptr %mask2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask2, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %do.end, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.led_classdev, ptr %led_cdev, i32 0, i32 11
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.18) #9
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !35, !36, !37, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_leds_syscon__183_140_syscon_led_driver_init6, !1, !"__initcall__kmod_leds_syscon__183_140_syscon_led_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-syscon.c", i32 140, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/leds/leds-syscon.c", i32 135, i32 11}
!4 = !{ptr @syscon_led_driver, !5, !"syscon_led_driver", i1 false, i1 false}
!5 = !{!"../drivers/leds/leds-syscon.c", i32 132, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/leds/leds-syscon.c", i32 69, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @syscon_led_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @syscon_led_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-syscon.c", i32 74, i32 3}
!16 = !{ptr @syscon_led_probe._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @syscon_led_probe._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/leds/leds-syscon.c", i32 84, i32 31}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/leds/leds-syscon.c", i32 86, i32 31}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/leds/leds-syscon.c", i32 89, i32 30}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/leds/leds-syscon.c", i32 91, i32 22}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/leds/leds-syscon.c", i32 98, i32 29}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/leds/leds-syscon.c", i32 122, i32 2}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @syscon_led_probe._entry.14, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @syscon_led_probe._entry_ptr.17, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/leds/leds-syscon.c", i32 53, i32 3}
!35 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @syscon_led_set._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @syscon_led_set._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @of_syscon_leds_match, !39, !"of_syscon_leds_match", i1 false, i1 false}
!39 = !{!"../drivers/leds/leds-syscon.c", i32 127, i32 34}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"auto-init"}
