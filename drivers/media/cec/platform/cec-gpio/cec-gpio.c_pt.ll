; ModuleID = '/llk/IR_all_yes/drivers/media/cec/platform/cec-gpio/cec-gpio.c_pt.bc'
source_filename = "../drivers/media/cec/platform/cec-gpio/cec-gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cec_pin_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.cec_gpio = type { ptr, ptr, ptr, ptr, i32, i8, ptr, i32, i8, i64, ptr, i32, i8, i64 }
%struct.cec_adapter = type { ptr, [32 x i8], %struct.cec_devnode, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, ptr, i8, ptr, %struct.completion, ptr, %struct.wait_queue_head, ptr, ptr, i32, i8, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, i8, %struct.cec_log_addrs, %struct.cec_connector_info, i32, ptr, ptr, ptr, i32, [32 x i8] }
%struct.cec_devnode = type { %struct.device, %struct.cdev, i32, %struct.mutex, i8, i8, %struct.mutex, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.cec_log_addrs = type { [4 x i8], i16, i8, i8, i32, i32, [15 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x [12 x i8]] }
%struct.cec_connector_info = type { i32, %union.anon.73 }
%union.anon.73 = type { [16 x i32] }

@__initcall__kmod_cec_gpio__232_298_cec_gpio_pdrv_init6 = internal global ptr @cec_gpio_pdrv_init, section ".initcall6.init", align 4
@cec_gpio_pdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cec_gpio_probe, ptr @cec_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cec_gpio_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cec_gpio_pdrv_exit = internal global ptr @cec_gpio_pdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author233 = internal constant [54 x i8] c"cec_gpio.author=Hans Verkuil <hans.verkuil@cisco.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [59 x i8] c"cec_gpio.file=drivers/media/cec/platform/cec-gpio/cec-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [24 x i8] c"cec_gpio.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [37 x i8] c"cec_gpio.description=CEC GPIO driver\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cec-gpio\00", [23 x i8] zeroinitializer }, align 32
@cec_gpio_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cec-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cec\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hpd\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"v5\00", [29 x i8] zeroinitializer }, align 32
@cec_gpio_pin_ops = internal constant { %struct.cec_pin_ops, [56 x i8] } { %struct.cec_pin_ops { ptr @cec_gpio_read, ptr @cec_gpio_low, ptr @cec_gpio_high, ptr @cec_gpio_enable_irq, ptr @cec_gpio_disable_irq, ptr @cec_gpio_free, ptr @cec_gpio_status, ptr @cec_gpio_read_hpd, ptr @cec_gpio_read_5v, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hpd-gpio\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"v5-gpio\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mode: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"low-drive\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"using irq: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hpd: %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"5V: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [14 x i8] c"cec_gpio_pdrv\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 289, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 293, i32 12 }
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"cec_gpio_match\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 281, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 199, i32 38 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 204, i32 47 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 208, i32 46 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"cec_gpio_pin_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 167, i32 33 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 232, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 244, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 134, i32 19 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 134, i32 51 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 134, i32 65 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 135, i32 19 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 137, i32 20 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 138, i32 26 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 138, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [50 x i8] c"../drivers/media/cec/platform/cec-gpio/cec-gpio.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 140, i32 20 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_cec_gpio_pdrv_exit, ptr @__initcall__kmod_cec_gpio__232_298_cec_gpio_pdrv_init6, ptr @cec_gpio_pdrv_exit, ptr @cec_gpio_pdrv, ptr @.str, ptr @cec_gpio_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @cec_gpio_pin_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_gpio_pdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_gpio_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cec_gpio_pin_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cec_gpio_pdrv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cec_gpio_pdrv, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cec_gpio_pdrv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @cec_gpio_pdrv) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cec_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @cec_notifier_parse_hdmi_phandle(ptr noundef %dev1) #3
  %cmp = icmp eq ptr %call, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i, i32 191, i32 190
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 72, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %dev10 = getelementptr inbounds %struct.cec_gpio, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %dev10, align 8
  %call11 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 15) #3
  %cec_gpio = getelementptr inbounds %struct.cec_gpio, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %cec_gpio to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call11, ptr %cec_gpio, align 4
  %cmp.i152 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i152, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %call19 = tail call i32 @gpiod_to_irq(ptr noundef %call11) #3
  %cec_irq = getelementptr inbounds %struct.cec_gpio, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %cec_irq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call19, ptr %cec_irq, align 8
  %call20 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef 1) #3
  %hpd_gpio = getelementptr inbounds %struct.cec_gpio, ptr %call.i, i32 0, i32 6
  %4 = ptrtoint ptr %hpd_gpio to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call20, ptr %hpd_gpio, align 8
  %cmp.i153 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #5
  %5 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  %call27 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef 1) #3
  %v5_gpio = getelementptr inbounds %struct.cec_gpio, ptr %call.i, i32 0, i32 10
  %6 = ptrtoint ptr %v5_gpio to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call27, ptr %v5_gpio, align 8
  %cmp.i154 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154, label %if.then30, label %if.end33

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %call27 to i32
  br label %cleanup

if.end33:                                         ; preds = %if.end26
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %call34 = tail call ptr @cec_pin_allocate_adapter(ptr noundef nonnull @cec_gpio_pin_ops, ptr noundef nonnull %call.i, ptr noundef %9, i32 noundef %spec.select) #3
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call34, ptr %call.i, align 8
  %cmp.i155 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i155, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #5
  %11 = ptrtoint ptr %call34 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end33
  %12 = ptrtoint ptr %cec_irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cec_irq, align 8
  %name43 = getelementptr inbounds %struct.cec_adapter, ptr %call34, i32 0, i32 1
  %call.i156 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %13, ptr noundef nonnull @cec_gpio_irq_handler, ptr noundef null, i32 noundef 3, ptr noundef %name43, ptr noundef nonnull %call.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool45.not = icmp eq i32 %call.i156, 0
  br i1 %tobool45.not, label %if.end47, label %if.end40.del_adap_crit_edge

if.end40.del_adap_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #5
  br label %del_adap

if.end47:                                         ; preds = %if.end40
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 8
  %priv.i.i = getelementptr inbounds %struct.cec_adapter, ptr %15, i32 0, i32 15
  %16 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv.i.i, align 4
  %cec_irq.i = getelementptr inbounds %struct.cec_gpio, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %cec_irq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cec_irq.i, align 8
  tail call void @disable_irq(i32 noundef %19) #3
  %20 = ptrtoint ptr %hpd_gpio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hpd_gpio, align 8
  %tobool50.not = icmp eq ptr %21, null
  br i1 %tobool50.not, label %if.end47.if.end59_crit_edge, label %if.then51

if.end47.if.end59_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end59

if.then51:                                        ; preds = %if.end47
  %call53 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %21) #3
  %hpd_irq = getelementptr inbounds %struct.cec_gpio, ptr %call.i, i32 0, i32 7
  %22 = ptrtoint ptr %hpd_irq to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call53, ptr %hpd_irq, align 4
  %call55 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call53, ptr noundef nonnull @cec_hpd_gpio_irq_handler, ptr noundef nonnull @cec_hpd_gpio_irq_handler_thread, i32 noundef 8195, ptr noundef nonnull @.str.4, ptr noundef nonnull %call.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then51.if.end59_crit_edge, label %if.then51.del_adap_crit_edge

if.then51.del_adap_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #5
  br label %del_adap

if.then51.if.end59_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end59

if.end59:                                         ; preds = %if.then51.if.end59_crit_edge, %if.end47.if.end59_crit_edge
  %23 = ptrtoint ptr %v5_gpio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %v5_gpio, align 8
  %tobool61.not = icmp eq ptr %24, null
  br i1 %tobool61.not, label %if.end59.if.end70_crit_edge, label %if.then62

if.end59.if.end70_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end70

if.then62:                                        ; preds = %if.end59
  %call64 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %24) #3
  %v5_irq = getelementptr inbounds %struct.cec_gpio, ptr %call.i, i32 0, i32 11
  %25 = ptrtoint ptr %v5_irq to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call64, ptr %v5_irq, align 4
  %call66 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call64, ptr noundef nonnull @cec_5v_gpio_irq_handler, ptr noundef nonnull @cec_5v_gpio_irq_handler_thread, i32 noundef 8195, ptr noundef nonnull @.str.5, ptr noundef nonnull %call.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then62.if.end70_crit_edge, label %if.then62.del_adap_crit_edge

if.then62.del_adap_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #5
  br label %del_adap

if.then62.if.end70_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end70

if.end70:                                         ; preds = %if.then62.if.end70_crit_edge, %if.end59.if.end70_crit_edge
  br i1 %cmp.i, label %if.end70.if.end79_crit_edge, label %if.then72

if.end70.if.end79_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end79

if.then72:                                        ; preds = %if.end70
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 8
  %call74 = tail call ptr @cec_notifier_cec_adap_register(ptr noundef %call, ptr noundef null, ptr noundef %27) #3
  %notifier = getelementptr inbounds %struct.cec_gpio, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call74, ptr %notifier, align 4
  %tobool76.not = icmp eq ptr %call74, null
  br i1 %tobool76.not, label %if.then72.del_adap_crit_edge, label %if.then72.if.end79_crit_edge

if.then72.if.end79_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end79

if.then72.del_adap_crit_edge:                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #5
  br label %del_adap

if.end79:                                         ; preds = %if.then72.if.end79_crit_edge, %if.end70.if.end79_crit_edge
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 8
  %call82 = tail call i32 @cec_register_adapter(ptr noundef %30, ptr noundef %dev1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %unreg_notifier

if.end85:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

unreg_notifier:                                   ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #5
  %notifier86 = getelementptr inbounds %struct.cec_gpio, ptr %call.i, i32 0, i32 1
  %32 = ptrtoint ptr %notifier86 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %notifier86, align 4
  %34 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %call.i, align 8
  tail call void @cec_notifier_cec_adap_unregister(ptr noundef %33, ptr noundef %35) #3
  br label %del_adap

del_adap:                                         ; preds = %unreg_notifier, %if.then72.del_adap_crit_edge, %if.then62.del_adap_crit_edge, %if.then51.del_adap_crit_edge, %if.end40.del_adap_crit_edge
  %ret.0 = phi i32 [ %call.i156, %if.end40.del_adap_crit_edge ], [ %call55, %if.then51.del_adap_crit_edge ], [ %call66, %if.then62.del_adap_crit_edge ], [ %call82, %unreg_notifier ], [ -12, %if.then72.del_adap_crit_edge ]
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 8
  tail call void @cec_delete_adapter(ptr noundef %37) #3
  br label %cleanup

cleanup:                                          ; preds = %del_adap, %if.end85, %if.then37, %if.then30, %if.then23, %if.then14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then14 ], [ %5, %if.then23 ], [ %7, %if.then30 ], [ %11, %if.then37 ], [ %ret.0, %del_adap ], [ 0, %if.end85 ], [ -12, %if.end.cleanup_crit_edge ], [ -517, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cec_gpio_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %notifier = getelementptr inbounds %struct.cec_gpio, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %notifier to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %notifier, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void @cec_notifier_cec_adap_unregister(ptr noundef %3, ptr noundef %5) #3
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void @cec_unregister_adapter(ptr noundef %7) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_notifier_parse_hdmi_phandle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_pin_allocate_adapter(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cec_gpio_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %cec_gpio = getelementptr inbounds %struct.cec_gpio, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %cec_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cec_gpio, align 4
  %call = tail call i32 @gpiod_get_value(ptr noundef %1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp ne i32 %call, 0
  tail call void @cec_pin_changed(ptr noundef %3, i1 noundef zeroext %cmp1) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cec_gpio_disable_irq(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %cec_irq = getelementptr inbounds %struct.cec_gpio, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cec_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cec_irq, align 8
  tail call void @disable_irq(i32 noundef %3) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cec_hpd_gpio_irq_handler(i32 noundef %irq, ptr nocapture noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hpd_gpio = getelementptr inbounds %struct.cec_gpio, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %hpd_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hpd_gpio, align 8
  %call = tail call i32 @gpiod_get_value(ptr noundef %1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  %frombool = zext i1 %cmp to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %hpd_is_high = getelementptr inbounds %struct.cec_gpio, ptr %priv, i32 0, i32 8
  %2 = ptrtoint ptr %hpd_is_high to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hpd_is_high, align 8, !range !53
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %frombool)
  %cmp4 = icmp eq i8 %3, %frombool
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  %call6 = tail call i64 @ktime_get() #3
  %hpd_ts = getelementptr inbounds %struct.cec_gpio, ptr %priv, i32 0, i32 9
  %4 = ptrtoint ptr %hpd_ts to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call6, ptr %hpd_ts, align 8
  %5 = ptrtoint ptr %hpd_is_high to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %hpd_is_high, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cec_hpd_gpio_irq_handler_thread(i32 noundef %irq, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %hpd_is_high = getelementptr inbounds %struct.cec_gpio, ptr %priv, i32 0, i32 8
  %2 = ptrtoint ptr %hpd_is_high to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hpd_is_high, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool = icmp ne i8 %3, 0
  %hpd_ts = getelementptr inbounds %struct.cec_gpio, ptr %priv, i32 0, i32 9
  %4 = ptrtoint ptr %hpd_ts to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %hpd_ts, align 8
  tail call void @cec_queue_pin_hpd_event(ptr noundef %1, i1 noundef zeroext %tobool, i64 noundef %5) #3
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cec_5v_gpio_irq_handler(i32 noundef %irq, ptr nocapture noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %v5_gpio = getelementptr inbounds %struct.cec_gpio, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %v5_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v5_gpio, align 8
  %call = tail call i32 @gpiod_get_value(ptr noundef %1) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  %frombool = zext i1 %cmp to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %v5_is_high = getelementptr inbounds %struct.cec_gpio, ptr %priv, i32 0, i32 12
  %2 = ptrtoint ptr %v5_is_high to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %v5_is_high, align 8, !range !53
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %frombool)
  %cmp4 = icmp eq i8 %3, %frombool
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  %call6 = tail call i64 @ktime_get() #3
  %v5_ts = getelementptr inbounds %struct.cec_gpio, ptr %priv, i32 0, i32 13
  %4 = ptrtoint ptr %v5_ts to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call6, ptr %v5_ts, align 8
  %5 = ptrtoint ptr %v5_is_high to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %v5_is_high, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.end ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cec_5v_gpio_irq_handler_thread(i32 noundef %irq, ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %v5_is_high = getelementptr inbounds %struct.cec_gpio, ptr %priv, i32 0, i32 12
  %2 = ptrtoint ptr %v5_is_high to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %v5_is_high, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool = icmp ne i8 %3, 0
  %v5_ts = getelementptr inbounds %struct.cec_gpio, ptr %priv, i32 0, i32 13
  %4 = ptrtoint ptr %v5_ts to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %v5_ts, align 8
  tail call void @cec_queue_pin_5v_event(ptr noundef %1, i1 noundef zeroext %tobool, i64 noundef %5) #3
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_notifier_cec_adap_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cec_register_adapter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_cec_adap_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_delete_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cec_gpio_read(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %cec_is_low = getelementptr inbounds %struct.cec_gpio, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cec_is_low to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cec_is_low, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %cec_gpio = getelementptr inbounds %struct.cec_gpio, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %cec_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cec_gpio, align 4
  %call1 = tail call i32 @gpiod_get_value(ptr noundef %5) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cec_gpio_low(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %cec_is_low = getelementptr inbounds %struct.cec_gpio, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cec_is_low to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cec_is_low, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %cec_is_low to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %cec_is_low, align 4
  %cec_gpio = getelementptr inbounds %struct.cec_gpio, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %cec_gpio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cec_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %6, i32 noundef 0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cec_gpio_high(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %cec_is_low = getelementptr inbounds %struct.cec_gpio, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cec_is_low to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cec_is_low, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %cec_is_low to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %cec_is_low, align 4
  %cec_gpio = getelementptr inbounds %struct.cec_gpio, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %cec_gpio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cec_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %6, i32 noundef 1) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @cec_gpio_enable_irq(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %cec_irq = getelementptr inbounds %struct.cec_gpio, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cec_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cec_irq, align 8
  tail call void @enable_irq(i32 noundef %3) #3
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cec_gpio_free(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i.i, align 4
  %cec_irq.i = getelementptr inbounds %struct.cec_gpio, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cec_irq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cec_irq.i, align 8
  tail call void @disable_irq(i32 noundef %3) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cec_gpio_status(ptr nocapture noundef readonly %adap, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %cec_is_low = getelementptr inbounds %struct.cec_gpio, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cec_is_low to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cec_is_low, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, ptr @.str.8, ptr @.str.7
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.6, ptr noundef nonnull %cond) #3
  %cec_irq = getelementptr inbounds %struct.cec_gpio, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %cec_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cec_irq, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.9, i32 noundef %5) #3
  %hpd_gpio = getelementptr inbounds %struct.cec_gpio, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %hpd_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hpd_gpio, align 8
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %hpd_is_high = getelementptr inbounds %struct.cec_gpio, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %hpd_is_high to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %hpd_is_high, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  %cond3 = select i1 %tobool2.not, ptr @.str.12, ptr @.str.11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.10, ptr noundef nonnull %cond3) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %v5_gpio = getelementptr inbounds %struct.cec_gpio, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %v5_gpio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %v5_gpio, align 8
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %v5_is_high = getelementptr inbounds %struct.cec_gpio, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %v5_is_high to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %v5_is_high, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not = icmp eq i8 %13, 0
  %cond7 = select i1 %tobool6.not, ptr @.str.12, ptr @.str.11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.13, ptr noundef nonnull %cond7) #3
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cec_gpio_read_hpd(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %hpd_gpio = getelementptr inbounds %struct.cec_gpio, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %hpd_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hpd_gpio, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call i32 @gpiod_get_value(ptr noundef nonnull %3) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cec_gpio_read_5v(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.cec_adapter, ptr %adap, i32 0, i32 15
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %v5_gpio = getelementptr inbounds %struct.cec_gpio, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %v5_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %v5_gpio, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call i32 @gpiod_get_value(ptr noundef nonnull %3) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_pin_changed(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_queue_pin_hpd_event(ptr noundef, i1 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_queue_pin_5v_event(ptr noundef, i1 noundef zeroext, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__initcall__kmod_cec_gpio__232_298_cec_gpio_pdrv_init6, !1, !"__initcall__kmod_cec_gpio__232_298_cec_gpio_pdrv_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/cec/platform/cec-gpio/cec-gpio.c", i32 298, i32 1}
!2 = !{ptr @__exitcall_cec_gpio_pdrv_exit, !1, !"__exitcall_cec_gpio_pdrv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author233, !4, !"__UNIQUE_ID_author233", i1 false, i1 false}
!4 = !{!"../drivers/media/cec/platform/cec-gpio/cec-gpio.c", i32 300, i32 1}
!5 = !{ptr @__UNIQUE_ID_file234, !6, !"__UNIQUE_ID_file234", i1 false, i1 false}
!6 = !{!"../drivers/media/cec/platform/cec-gpio/cec-gpio.c", i32 301, i32 1}
!7 = !{ptr @__UNIQUE_ID_license235, !6, !"__UNIQUE_ID_license235", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description236, !9, !"__UNIQUE_ID_description236", i1 false, i1 false}
!9 = !{!"../drivers/media/cec/platform/cec-gpio/cec-gpio.c", i32 302, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/cec/platform/cec-gpio/cec-gpio.c", i32 293, i32 12}
!12 = !{ptr @cec_gpio_pdrv, !13, !"cec_gpio_pdrv", i1 false, i1 false}
!13 = !{!"../drivers/media/cec/platform/cec-gpio/cec-gpio.c", i32 289, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/cec/platform/cec-gpio/cec-gpio.c", i32 199, i32 38}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/cec/platform/cec-gpio/cec-gpio.c", i32 204, i32 47}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/cec/platform/cec-gpio/cec-gpio.c", i32 208, i32 46}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/cec/platform/cec-gpio/cec-gpio.c", i32 232, i32 4}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/cec/platform/cec-gpio/cec-gpio.c", i32 244, i32 4}
!24 = !{ptr @cec_gpio_pin_ops, !25, !"cec_gpio_pin_ops", i1 false, i1 false}
!25 = !{!"../drivers/media/cec/platform/cec-gpio/cec-gpio.c", i32 167, i32 33}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/cec/platform/cec-gpio/cec-gpio.c", i32 134, i32 19}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/cec/platform/cec-gpio/cec-gpio.c", i32 134, i32 51}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/cec/platform/cec-gpio/cec-gpio.c", i32 134, i32 65}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/cec/platform/cec-gpio/cec-gpio.c", i32 135, i32 19}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/cec/platform/cec-gpio/cec-gpio.c", i32 137, i32 20}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/cec/platform/cec-gpio/cec-gpio.c", i32 138, i32 26}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/cec/platform/cec-gpio/cec-gpio.c", i32 138, i32 35}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/cec/platform/cec-gpio/cec-gpio.c", i32 140, i32 20}
!42 = !{ptr @cec_gpio_match, !43, !"cec_gpio_match", i1 false, i1 false}
!43 = !{!"../drivers/media/cec/platform/cec-gpio/cec-gpio.c", i32 281, i32 34}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i8 0, i8 2}
