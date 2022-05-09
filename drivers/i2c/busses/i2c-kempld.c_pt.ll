; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-kempld.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-kempld.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.kempld_i2c_data = type { ptr, ptr, %struct.i2c_adapter, ptr, i32, i32, i32, i8 }
%struct.kempld_device_data = type { ptr, ptr, ptr, i32, i32, ptr, %struct.kempld_info, %struct.mutex }
%struct.kempld_info = type { i32, i32, i32, i32, i32, i32, i32, [10 x i8] }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_bus_frequency = internal constant [25 x i8] c"i2c_kempld.bus_frequency\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@bus_frequency = internal global { i32, [28 x i8] } { i32 100, [28 x i8] zeroinitializer }, align 32
@__param_bus_frequency = internal constant %struct.kernel_param { ptr @__param_str_bus_frequency, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @bus_frequency } }, section "__param", align 4
@__UNIQUE_ID_bus_frequencytype288 = internal constant [39 x i8] c"i2c_kempld.parmtype=bus_frequency:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_bus_frequency289 = internal constant [73 x i8] c"i2c_kempld.parm=bus_frequency:Set I2C bus frequency in kHz (default=100)\00", section ".modinfo", align 1
@__param_str_i2c_bus = internal constant [19 x i8] c"i2c_kempld.i2c_bus\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@i2c_bus = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_i2c_bus = internal constant %struct.kernel_param { ptr @__param_str_i2c_bus, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @i2c_bus } }, section "__param", align 4
@__UNIQUE_ID_i2c_bustype290 = internal constant [32 x i8] c"i2c_kempld.parmtype=i2c_bus:int\00", section ".modinfo", align 1
@__UNIQUE_ID_i2c_bus291 = internal constant [79 x i8] c"i2c_kempld.parm=i2c_bus:Set I2C bus number (default=-1 for dynamic assignment)\00", section ".modinfo", align 1
@__param_str_i2c_gpio_mux = internal constant [24 x i8] c"i2c_kempld.i2c_gpio_mux\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@i2c_gpio_mux = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_i2c_gpio_mux = internal constant %struct.kernel_param { ptr @__param_str_i2c_gpio_mux, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @i2c_gpio_mux } }, section "__param", align 4
@__UNIQUE_ID_i2c_gpio_muxtype292 = internal constant [38 x i8] c"i2c_kempld.parmtype=i2c_gpio_mux:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_i2c_gpio_mux293 = internal constant [73 x i8] c"i2c_kempld.parm=i2c_gpio_mux:Enable I2C port on GPIO out (default=false)\00", section ".modinfo", align 1
@__initcall__kmod_i2c_kempld__294_396_kempld_i2c_driver_init6 = internal global ptr @kempld_i2c_driver_init, section ".initcall6.init", align 4
@kempld_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @kempld_i2c_probe, ptr @kempld_i2c_remove, ptr null, ptr @kempld_i2c_suspend, ptr @kempld_i2c_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_kempld_i2c_driver_exit = internal global ptr @kempld_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [42 x i8] c"i2c_kempld.description=KEM PLD I2C Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [64 x i8] c"i2c_kempld.author=Michael Brunner <michael.brunner@kontron.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [46 x i8] c"i2c_kempld.file=drivers/i2c/busses/i2c-kempld\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [23 x i8] c"i2c_kempld.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias299 = internal constant [37 x i8] c"i2c_kempld.alias=platform:kempld_i2c\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kempld-i2c\00", [21 x i8] zeroinitializer }, align 32
@kempld_i2c_adapter = internal constant { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 385, ptr @kempld_i2c_algorithm, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] c"i2c-kempld\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@kempld_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 326, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"I2C bus initialized at %dkHz\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kempld_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/i2c/busses/i2c-kempld.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@kempld_i2c_probe._entry_ptr = internal global ptr @kempld_i2c_probe._entry, section ".printk_index", align 4
@kempld_i2c_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @kempld_i2c_xfer, ptr null, ptr null, ptr null, ptr @kempld_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.6 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@___asan_gen_.8 = private unnamed_addr constant [14 x i8] c"bus_frequency\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 66, i32 21 }
@___asan_gen_.11 = private unnamed_addr constant [8 x i8] c"i2c_bus\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 71, i32 12 }
@___asan_gen_.14 = private unnamed_addr constant [13 x i8] c"i2c_gpio_mux\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 75, i32 13 }
@___asan_gen_.17 = private unnamed_addr constant [18 x i8] c"kempld_i2c_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 386, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 388, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [19 x i8] c"kempld_i2c_adapter\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 283, i32 33 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 325, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [21 x i8] c"kempld_i2c_algorithm\00", align 1
@___asan_gen_.45 = private constant [35 x i8] c"../drivers/i2c/busses/i2c-kempld.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 278, i32 35 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_alias299, ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_bus_frequency289, ptr @__UNIQUE_ID_bus_frequencytype288, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_i2c_bus291, ptr @__UNIQUE_ID_i2c_bustype290, ptr @__UNIQUE_ID_i2c_gpio_mux293, ptr @__UNIQUE_ID_i2c_gpio_muxtype292, ptr @__UNIQUE_ID_license298, ptr @__exitcall_kempld_i2c_driver_exit, ptr @__initcall__kmod_i2c_kempld__294_396_kempld_i2c_driver_init6, ptr @__param_bus_frequency, ptr @__param_i2c_bus, ptr @__param_i2c_gpio_mux, ptr @kempld_i2c_driver_exit, ptr @kempld_i2c_probe._entry, ptr @kempld_i2c_probe._entry_ptr, ptr @bus_frequency, ptr @i2c_bus, ptr @i2c_gpio_mux, ptr @kempld_i2c_driver, ptr @.str, ptr @kempld_i2c_adapter, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @kempld_i2c_algorithm], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_frequency to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_bus to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_gpio_mux to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kempld_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kempld_i2c_adapter to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kempld_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kempld_i2c_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kempld_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @kempld_i2c_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kempld_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @kempld_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kempld_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1392, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %pld3 = getelementptr inbounds %struct.kempld_i2c_data, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %pld3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %pld3, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %call.i, align 8
  %adap = getelementptr inbounds %struct.kempld_i2c_data, ptr %call.i, i32 0, i32 2
  %6 = call ptr @memcpy(ptr %adap, ptr @kempld_i2c_adapter, i32 1360)
  %parent9 = getelementptr inbounds %struct.kempld_i2c_data, ptr %call.i, i32 0, i32 2, i32 9, i32 1
  %7 = ptrtoint ptr %parent9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %parent9, align 8
  %driver_data.i.i = getelementptr inbounds %struct.kempld_i2c_data, ptr %call.i, i32 0, i32 2, i32 9, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i48 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i48 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i48, align 4
  tail call void @kempld_get_mutex(ptr noundef %3) #6
  %call11 = tail call zeroext i8 @kempld_read8(ptr noundef %3, i8 noundef zeroext 13) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call11)
  %tobool12.not = icmp sgt i8 %call11, -1
  br i1 %tobool12.not, label %if.end.if.end14_crit_edge, label %if.then13

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %was_active = getelementptr inbounds %struct.kempld_i2c_data, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %was_active to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %was_active, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end.if.end14_crit_edge
  tail call fastcc void @kempld_i2c_device_init(ptr noundef nonnull %call.i)
  tail call void @kempld_release_mutex(ptr noundef %3) #6
  %11 = load i32, ptr @i2c_bus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %11)
  %cmp = icmp sgt i32 %11, -2
  br i1 %cmp, label %if.then16, label %if.end14.if.end18_crit_edge

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %nr = getelementptr inbounds %struct.kempld_i2c_data, ptr %call.i, i32 0, i32 2, i32 11
  %12 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %nr, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14.if.end18_crit_edge
  %call20 = tail call i32 @i2c_add_numbered_adapter(ptr noundef %adap) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %do.end, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 8
  %15 = load i32, ptr @bus_frequency, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.1, i32 noundef %15) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end18.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call20, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kempld_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pld1 = getelementptr inbounds %struct.kempld_i2c_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pld1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pld1, align 4
  tail call void @kempld_get_mutex(ptr noundef %3) #6
  %was_active = getelementptr inbounds %struct.kempld_i2c_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %was_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %was_active, align 8, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call zeroext i8 @kempld_read8(ptr noundef %3, i8 noundef zeroext 13) #6
  %6 = and i8 %call2, 127
  tail call void @kempld_write8(ptr noundef %3, i8 noundef zeroext 13, i8 noundef zeroext %6) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kempld_release_mutex(ptr noundef %3) #6
  %adap = getelementptr inbounds %struct.kempld_i2c_data, ptr %1, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %adap) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kempld_i2c_suspend(ptr nocapture noundef readonly %pdev, [1 x i32] %state.coerce) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pld1 = getelementptr inbounds %struct.kempld_i2c_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pld1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pld1, align 4
  tail call void @kempld_get_mutex(ptr noundef %3) #6
  %call2 = tail call zeroext i8 @kempld_read8(ptr noundef %3, i8 noundef zeroext 13) #6
  %4 = and i8 %call2, 127
  tail call void @kempld_write8(ptr noundef %3, i8 noundef zeroext 13, i8 noundef zeroext %4) #6
  tail call void @kempld_release_mutex(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kempld_i2c_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pld1 = getelementptr inbounds %struct.kempld_i2c_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pld1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pld1, align 4
  tail call void @kempld_get_mutex(ptr noundef %3) #6
  tail call fastcc void @kempld_i2c_device_init(ptr noundef %1)
  tail call void @kempld_release_mutex(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kempld_get_mutex(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @kempld_read8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kempld_i2c_device_init(ptr nocapture noundef readonly %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pld1 = getelementptr inbounds %struct.kempld_i2c_data, ptr %i2c, i32 0, i32 1
  %0 = ptrtoint ptr %pld1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pld1, align 4
  %call = tail call zeroext i8 @kempld_read8(ptr noundef %1, i8 noundef zeroext 13) #6
  %2 = and i8 %call, 63
  tail call void @kempld_write8(ptr noundef %1, i8 noundef zeroext 13, i8 noundef zeroext %2) #6
  %3 = load i32, ptr @bus_frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2700, i32 %3)
  %cmp = icmp ugt i32 %3, 2700
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store i32 2700, ptr @bus_frequency, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %spec_major = getelementptr inbounds %struct.kempld_device_data, ptr %1, i32 0, i32 6, i32 5
  %4 = ptrtoint ptr %spec_major to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %spec_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp4 = icmp eq i32 %5, 1
  %pld_clock = getelementptr inbounds %struct.kempld_device_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %pld_clock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pld_clock, align 4
  %8 = load i32, ptr @bus_frequency, align 4
  %mul8 = shl i32 %8, 2
  %mul = mul i32 %8, 5
  %mul8.sink = select i1 %cmp4, i32 %mul, i32 %mul8
  %.sink = select i1 %cmp4, i32 -1000, i32 -3000
  %div9 = udiv i32 %7, %mul8.sink
  %sub10 = add i32 %div9, %.sink
  %9 = tail call i32 @llvm.smax.i32(i32 %sub10, i32 0)
  %.frozen = freeze i32 %9
  %div16 = udiv i32 %.frozen, 1000
  %10 = mul i32 %div16, 1000
  %rem.decomposed = sub i32 %.frozen, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 499, i32 %rem.decomposed)
  %cmp18 = icmp ugt i32 %rem.decomposed, 499
  %inc = zext i1 %cmp18 to i32
  %spec.select = add nuw nsw i32 %div16, %inc
  %conv24 = trunc i32 %spec.select to i8
  tail call void @kempld_write8(ptr noundef %1, i8 noundef zeroext 11, i8 noundef zeroext %conv24) #6
  %conv22 = lshr i32 %spec.select, 8
  %conv26 = trunc i32 %conv22 to i8
  tail call void @kempld_write8(ptr noundef %1, i8 noundef zeroext 12, i8 noundef zeroext %conv26) #6
  %call27 = tail call zeroext i8 @kempld_read8(ptr noundef %1, i8 noundef zeroext 55) #6
  %11 = load i8, ptr @i2c_gpio_mux, align 1, !range !61
  %12 = and i8 %call27, -2
  %cfg.0 = or i8 %12, %11
  tail call void @kempld_write8(ptr noundef %1, i8 noundef zeroext 55, i8 noundef zeroext %cfg.0) #6
  tail call void @kempld_write8(ptr noundef %1, i8 noundef zeroext 15, i8 noundef zeroext 1) #6
  %13 = or i8 %2, -128
  tail call void @kempld_write8(ptr noundef %1, i8 noundef zeroext 13, i8 noundef zeroext %13) #6
  %call39 = tail call zeroext i8 @kempld_read8(ptr noundef %1, i8 noundef zeroext 15) #6
  %14 = and i8 %call39, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool42.not = icmp eq i8 %14, 0
  br i1 %tobool42.not, label %if.end.if.end44_crit_edge, label %if.then43

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then43:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kempld_write8(ptr noundef %1, i8 noundef zeroext 15, i8 noundef zeroext 65) #6
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end.if.end44_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kempld_release_mutex(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kempld_i2c_xfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pld1 = getelementptr inbounds %struct.kempld_i2c_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pld1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pld1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %4, 100
  %msg = getelementptr inbounds %struct.kempld_i2c_data, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %msgs, ptr %msg, align 8
  %pos = getelementptr inbounds %struct.kempld_i2c_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %pos, align 4
  %nmsgs = getelementptr inbounds %struct.kempld_i2c_data, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %nmsgs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %num, ptr %nmsgs, align 8
  %state = getelementptr inbounds %struct.kempld_i2c_data, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %state, align 4
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub29 = sub i32 %9, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub29)
  %cmp30 = icmp slt i32 %sub29, 0
  br i1 %cmp30, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end12.while.body_crit_edge, %entry.while.body_crit_edge
  %timeout.031 = phi i32 [ %timeout.1, %if.end12.while.body_crit_edge ], [ %add, %entry.while.body_crit_edge ]
  tail call void @kempld_get_mutex(ptr noundef %3) #6
  %10 = ptrtoint ptr %pld1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pld1, align 4
  %call.i = tail call zeroext i8 @kempld_read8(ptr noundef %11, i8 noundef zeroext 15) #6
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msg, align 8
  %conv.i = zext i8 %call.i to i32
  %and.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.body.kempld_i2c_process.exit_crit_edge

while.body.kempld_i2c_process.exit_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %kempld_i2c_process.exit

if.end.i:                                         ; preds = %while.body
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %if.end13.i [
    i32 0, label %if.end.i.if.then7.i_crit_edge
    i32 7, label %if.end.i.if.then7.i_crit_edge42
  ]

if.end.i.if.then7.i_crit_edge42:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i

if.end.i.if.then7.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.end.i.if.then7.i_crit_edge, %if.end.i.if.then7.i_crit_edge42
  tail call void @kempld_write8(ptr noundef %11, i8 noundef zeroext 15, i8 noundef zeroext 1) #6
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %18)
  %cmp9.i = icmp eq i32 %18, 7
  %..i = select i1 %cmp9.i, i32 -5, i32 0
  br label %kempld_i2c_process.exit

if.end13.i:                                       ; preds = %if.end.i
  %and15.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end19.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 7, ptr %state, align 4
  tail call void @kempld_write8(ptr noundef %11, i8 noundef zeroext 15, i8 noundef zeroext 65) #6
  br label %kempld_i2c_process.exit

if.end19.i:                                       ; preds = %if.end13.i
  %20 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %15, label %if.else90.i [
    i32 1, label %if.then23.i
    i32 2, label %if.end19.i.if.then34.i_crit_edge
    i32 3, label %if.then62.i
    i32 4, label %if.end19.i.if.then77.i_crit_edge
    i32 5, label %if.end19.i.if.then77.i_crit_edge43
  ]

if.end19.i.if.then77.i_crit_edge43:               ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then77.i

if.end19.i.if.then77.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then77.i

if.end19.i.if.then34.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34.i

if.then23.i:                                      ; preds = %if.end19.i
  %and25.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end30.thread.i, label %if.then23.i.kempld_i2c_process.exit_crit_edge

if.then23.i.kempld_i2c_process.exit_crit_edge:    ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %kempld_i2c_process.exit

if.end30.thread.i:                                ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %state, align 4
  br label %if.then34.i

if.then34.i:                                      ; preds = %if.end30.thread.i, %if.end19.i.if.then34.i_crit_edge
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %flags.i, align 2
  %24 = and i16 %23, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool38.not.i = icmp eq i16 %24, 0
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %13, align 4
  br i1 %tobool38.not.i, label %if.else.i, label %if.then39.i

if.then39.i:                                      ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = lshr i16 %26, 7
  %28 = and i16 %27, 6
  %and48.i = and i16 %23, 1
  %29 = or i16 %28, %and48.i
  %30 = trunc i16 %29 to i8
  %conv52.i = or i8 %30, -16
  br label %if.end57.i

if.else.i:                                        ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i = trunc i16 %26 to i8
  %shl.i.i = shl i8 %conv.i.i, 1
  %31 = trunc i16 %23 to i8
  %32 = and i8 %31, 1
  %or.i.i = or i8 %shl.i.i, %32
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.else.i, %if.then39.i
  %storemerge.i = phi i32 [ 4, %if.else.i ], [ 3, %if.then39.i ]
  %addr.0.i = phi i8 [ %or.i.i, %if.else.i ], [ %conv52.i, %if.then39.i ]
  %33 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %storemerge.i, ptr %state, align 4
  tail call void @kempld_write8(ptr noundef %11, i8 noundef zeroext 14, i8 noundef zeroext %addr.0.i) #6
  tail call void @kempld_write8(ptr noundef %11, i8 noundef zeroext 15, i8 noundef zeroext -111) #6
  br label %kempld_i2c_process.exit

if.then62.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %13, align 4
  %conv67.i = trunc i16 %35 to i8
  tail call void @kempld_write8(ptr noundef %11, i8 noundef zeroext 14, i8 noundef zeroext %conv67.i) #6
  tail call void @kempld_write8(ptr noundef %11, i8 noundef zeroext 15, i8 noundef zeroext 17) #6
  %36 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4, ptr %state, align 4
  br label %kempld_i2c_process.exit

if.then77.i:                                      ; preds = %if.end19.i.if.then77.i_crit_edge, %if.end19.i.if.then77.i_crit_edge43
  %flags78.i = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  %37 = ptrtoint ptr %flags78.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %flags78.i, align 2
  %39 = and i16 %38, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool81.not.i = icmp eq i16 %39, 0
  %cond82.i = select i1 %tobool81.not.i, i32 5, i32 6
  %40 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %cond82.i, ptr %state, align 4
  %and85.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.i)
  %tobool86.not.i = icmp eq i32 %and85.i, 0
  br i1 %tobool86.not.i, label %if.then77.i.if.end92.i_crit_edge, label %if.then87.i

if.then77.i.if.end92.i_crit_edge:                 ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92.i

if.then87.i:                                      ; preds = %if.then77.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 7, ptr %state, align 4
  tail call void @kempld_write8(ptr noundef %11, i8 noundef zeroext 15, i8 noundef zeroext 65) #6
  br label %kempld_i2c_process.exit

if.else90.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %call91.i = tail call zeroext i8 @kempld_read8(ptr noundef %11, i8 noundef zeroext 14) #6
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  %42 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %buf.i, align 4
  %44 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pos, align 4
  %inc.i = add i32 %45, 1
  store i32 %inc.i, ptr %pos, align 4
  %arrayidx.i = getelementptr i8, ptr %43, i32 %45
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %call91.i, ptr %arrayidx.i, align 1
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.else90.i, %if.then77.i.if.end92.i_crit_edge
  %47 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pos, align 4
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 2
  %49 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %len.i, align 4
  %conv94.i = zext i16 %50 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %conv94.i)
  %cmp95.not.i = icmp slt i32 %48, %conv94.i
  br i1 %cmp95.not.i, label %if.end121thread-pre-split.i, label %if.then97.i

if.then97.i:                                      ; preds = %if.end92.i
  %51 = ptrtoint ptr %nmsgs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nmsgs, align 8
  %dec.i = add i32 %52, -1
  store i32 %dec.i, ptr %nmsgs, align 8
  %53 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %msg, align 8
  %incdec.ptr.i = getelementptr %struct.i2c_msg, ptr %54, i32 1
  store ptr %incdec.ptr.i, ptr %msg, align 8
  %55 = ptrtoint ptr %pos to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %pos, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool102.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool102.not.i, label %if.else118.i, label %if.then103.i

if.then103.i:                                     ; preds = %if.then97.i
  %flags104.i = getelementptr %struct.i2c_msg, ptr %54, i32 1, i32 1
  %56 = ptrtoint ptr %flags104.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %flags104.i, align 2
  %conv105.i = zext i16 %57 to i32
  %and106.i = and i32 %conv105.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.i)
  %tobool107.not.i = icmp eq i32 %and106.i, 0
  br i1 %tobool107.not.i, label %if.then108.i, label %if.else110.i

if.then108.i:                                     ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %state, align 4
  br label %kempld_i2c_process.exit

if.else110.i:                                     ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #8
  %and113.i = and i32 %conv105.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113.i)
  %tobool114.not.i = icmp eq i32 %and113.i, 0
  %cond115.i = select i1 %tobool114.not.i, i32 5, i32 6
  %59 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %cond115.i, ptr %state, align 4
  br label %if.end121.i

if.else118.i:                                     ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %state, align 4
  tail call void @kempld_write8(ptr noundef %11, i8 noundef zeroext 15, i8 noundef zeroext 65) #6
  br label %kempld_i2c_process.exit

if.end121thread-pre-split.i:                      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pr199.i = load i32, ptr %state, align 4
  br label %if.end121.i

if.end121.i:                                      ; preds = %if.end121thread-pre-split.i, %if.else110.i
  %62 = phi i32 [ %.pr199.i, %if.end121thread-pre-split.i ], [ %cond115.i, %if.else110.i ]
  %msg.0.i = phi ptr [ %13, %if.end121thread-pre-split.i ], [ %incdec.ptr.i, %if.else110.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %62)
  %cmp123.i = icmp eq i32 %62, 6
  br i1 %cmp123.i, label %if.then125.i, label %if.else133.i

if.then125.i:                                     ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pos, align 4
  %len127.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.0.i, i32 0, i32 2
  %65 = ptrtoint ptr %len127.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %len127.i, align 4
  %conv128.i = zext i16 %66 to i32
  %sub.i = add nsw i32 %conv128.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %sub.i)
  %cmp129.i = icmp eq i32 %64, %sub.i
  %conv132.i = select i1 %cmp129.i, i8 41, i8 33
  tail call void @kempld_write8(ptr noundef %11, i8 noundef zeroext 15, i8 noundef zeroext %conv132.i) #6
  br label %kempld_i2c_process.exit

if.else133.i:                                     ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #8
  %buf134.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.0.i, i32 0, i32 3
  %67 = ptrtoint ptr %buf134.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %buf134.i, align 4
  %69 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pos, align 4
  %inc136.i = add i32 %70, 1
  store i32 %inc136.i, ptr %pos, align 4
  %arrayidx137.i = getelementptr i8, ptr %68, i32 %70
  %71 = ptrtoint ptr %arrayidx137.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx137.i, align 1
  tail call void @kempld_write8(ptr noundef %11, i8 noundef zeroext 14, i8 noundef zeroext %72) #6
  tail call void @kempld_write8(ptr noundef %11, i8 noundef zeroext 15, i8 noundef zeroext 17) #6
  br label %kempld_i2c_process.exit

kempld_i2c_process.exit:                          ; preds = %if.else133.i, %if.then125.i, %if.else118.i, %if.then108.i, %if.then87.i, %if.then62.i, %if.end57.i, %if.then23.i.kempld_i2c_process.exit_crit_edge, %if.then17.i, %if.then7.i, %while.body.kempld_i2c_process.exit_crit_edge
  %retval.0.i = phi i32 [ -11, %if.then17.i ], [ 0, %if.end57.i ], [ 0, %if.then62.i ], [ -6, %if.then87.i ], [ 0, %if.then108.i ], [ 0, %if.else118.i ], [ -16, %while.body.kempld_i2c_process.exit_crit_edge ], [ %..i, %if.then7.i ], [ -16, %if.then23.i.kempld_i2c_process.exit_crit_edge ], [ 0, %if.else133.i ], [ 0, %if.then125.i ]
  tail call void @kempld_release_mutex(ptr noundef %3) #6
  %73 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %state, align 4
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %74, label %if.end [
    i32 0, label %kempld_i2c_process.exit.if.then_crit_edge
    i32 7, label %kempld_i2c_process.exit.if.then_crit_edge44
  ]

kempld_i2c_process.exit.if.then_crit_edge44:      ; preds = %kempld_i2c_process.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

kempld_i2c_process.exit.if.then_crit_edge:        ; preds = %kempld_i2c_process.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %kempld_i2c_process.exit.if.then_crit_edge, %kempld_i2c_process.exit.if.then_crit_edge44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp8 = icmp eq i32 %74, 0
  %num.call2 = select i1 %cmp8, i32 %num, i32 %retval.0.i
  br label %cleanup

if.end:                                           ; preds = %kempld_i2c_process.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp9 = icmp eq i32 %retval.0.i, 0
  br i1 %cmp9, label %if.then10, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %76 = load volatile i32, ptr @jiffies, align 128
  %add11 = add i32 %76, 100
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge
  %timeout.1 = phi i32 [ %add11, %if.then10 ], [ %timeout.031, %if.end.if.end12_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 5, i32 noundef 15, i32 noundef 2) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %77 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %77, %timeout.1
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end12.while.body_crit_edge, label %if.end12.while.end_crit_edge

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end12.while.end_crit_edge, %entry.while.end_crit_edge
  %78 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 7, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  %retval.0 = phi i32 [ %num.call2, %if.then ], [ -110, %while.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kempld_i2c_func(ptr nocapture noundef readnone %adap) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592715
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kempld_write8(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !25, !27, !29, !30, !32, !33, !35, !36, !38, !40, !42, !43, !44, !45, !46, !47, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__param_bus_frequency, !1, !"__param_bus_frequency", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-kempld.c", i32 67, i32 1}
!2 = !{ptr @__UNIQUE_ID_bus_frequencytype288, !1, !"__UNIQUE_ID_bus_frequencytype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_bus_frequency289, !4, !"__UNIQUE_ID_bus_frequency289", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-kempld.c", i32 68, i32 1}
!5 = !{ptr @__param_i2c_bus, !6, !"__param_i2c_bus", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-kempld.c", i32 72, i32 1}
!7 = !{ptr @__UNIQUE_ID_i2c_bustype290, !6, !"__UNIQUE_ID_i2c_bustype290", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_i2c_bus291, !9, !"__UNIQUE_ID_i2c_bus291", i1 false, i1 false}
!9 = !{!"../drivers/i2c/busses/i2c-kempld.c", i32 73, i32 1}
!10 = !{ptr @__param_i2c_gpio_mux, !11, !"__param_i2c_gpio_mux", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-kempld.c", i32 76, i32 1}
!12 = !{ptr @__UNIQUE_ID_i2c_gpio_muxtype292, !11, !"__UNIQUE_ID_i2c_gpio_muxtype292", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_i2c_gpio_mux293, !14, !"__UNIQUE_ID_i2c_gpio_mux293", i1 false, i1 false}
!14 = !{!"../drivers/i2c/busses/i2c-kempld.c", i32 77, i32 1}
!15 = !{ptr @__initcall__kmod_i2c_kempld__294_396_kempld_i2c_driver_init6, !16, !"__initcall__kmod_i2c_kempld__294_396_kempld_i2c_driver_init6", i1 false, i1 false}
!16 = !{!"../drivers/i2c/busses/i2c-kempld.c", i32 396, i32 1}
!17 = !{ptr @__exitcall_kempld_i2c_driver_exit, !16, !"__exitcall_kempld_i2c_driver_exit", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_description295, !19, !"__UNIQUE_ID_description295", i1 false, i1 false}
!19 = !{!"../drivers/i2c/busses/i2c-kempld.c", i32 398, i32 1}
!20 = !{ptr @__UNIQUE_ID_author296, !21, !"__UNIQUE_ID_author296", i1 false, i1 false}
!21 = !{!"../drivers/i2c/busses/i2c-kempld.c", i32 399, i32 1}
!22 = !{ptr @__UNIQUE_ID_file297, !23, !"__UNIQUE_ID_file297", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-kempld.c", i32 400, i32 1}
!24 = !{ptr @__UNIQUE_ID_license298, !23, !"__UNIQUE_ID_license298", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_alias299, !26, !"__UNIQUE_ID_alias299", i1 false, i1 false}
!26 = !{!"../drivers/i2c/busses/i2c-kempld.c", i32 401, i32 1}
!27 = !{ptr @i2c_gpio_mux, !28, !"i2c_gpio_mux", i1 false, i1 false}
!28 = !{!"../drivers/i2c/busses/i2c-kempld.c", i32 75, i32 13}
!29 = !{ptr @__param_str_bus_frequency, !1, !"__param_str_bus_frequency", i1 false, i1 false}
!30 = !{ptr @bus_frequency, !31, !"bus_frequency", i1 false, i1 false}
!31 = !{!"../drivers/i2c/busses/i2c-kempld.c", i32 66, i32 21}
!32 = !{ptr @__param_str_i2c_bus, !6, !"__param_str_i2c_bus", i1 false, i1 false}
!33 = !{ptr @i2c_bus, !34, !"i2c_bus", i1 false, i1 false}
!34 = !{!"../drivers/i2c/busses/i2c-kempld.c", i32 71, i32 12}
!35 = !{ptr @__param_str_i2c_gpio_mux, !11, !"__param_str_i2c_gpio_mux", i1 false, i1 false}
!36 = !{ptr @.str, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/i2c/busses/i2c-kempld.c", i32 388, i32 11}
!38 = !{ptr @kempld_i2c_driver, !39, !"kempld_i2c_driver", i1 false, i1 false}
!39 = !{!"../drivers/i2c/busses/i2c-kempld.c", i32 386, i32 31}
!40 = !{ptr @.str.1, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/i2c/busses/i2c-kempld.c", i32 325, i32 2}
!42 = !{ptr @.str.2, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.3, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.4, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @kempld_i2c_probe._entry, !41, !"_entry", i1 false, i1 false}
!47 = !{ptr @kempld_i2c_probe._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @kempld_i2c_adapter, !49, !"kempld_i2c_adapter", i1 false, i1 false}
!49 = !{!"../drivers/i2c/busses/i2c-kempld.c", i32 283, i32 33}
!50 = !{ptr @kempld_i2c_algorithm, !51, !"kempld_i2c_algorithm", i1 false, i1 false}
!51 = !{!"../drivers/i2c/busses/i2c-kempld.c", i32 278, i32 35}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i8 0, i8 2}
