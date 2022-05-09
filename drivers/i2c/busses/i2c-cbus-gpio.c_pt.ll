; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-cbus-gpio.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-cbus-gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.cbus_host = type { %struct.spinlock, ptr, ptr, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@__initcall__kmod_i2c_cbus_gpio__290_275_cbus_i2c_driver_init6 = internal global ptr @cbus_i2c_driver_init, section ".initcall6.init", align 4
@cbus_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cbus_i2c_probe, ptr @cbus_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @i2c_cbus_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cbus_i2c_driver_exit = internal global ptr @cbus_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias291 = internal constant [43 x i8] c"i2c_cbus_gpio.alias=platform:i2c-cbus-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [42 x i8] c"i2c_cbus_gpio.description=CBUS I2C driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [35 x i8] c"i2c_cbus_gpio.author=Juha Yrj\C3\B6l\C3\A4\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [37 x i8] c"i2c_cbus_gpio.author=David Weinehall\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [34 x i8] c"i2c_cbus_gpio.author=Mikko Ylinen\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [34 x i8] c"i2c_cbus_gpio.author=Felipe Balbi\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [58 x i8] c"i2c_cbus_gpio.author=Aaro Koskinen <aaro.koskinen@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [52 x i8] c"i2c_cbus_gpio.file=drivers/i2c/busses/i2c-cbus-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [26 x i8] c"i2c_cbus_gpio.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c-cbus-gpio\00", [18 x i8] zeroinitializer }, align 32
@i2c_cbus_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"i2c-cbus-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CBUS clk\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CBUS dat\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CBUS sel\00", [23 x i8] zeroinitializer }, align 32
@cbus_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr null, ptr null, ptr @cbus_i2c_smbus_xfer, ptr @cbus_i2c_smbus_xfer, ptr @cbus_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CBUS I2C adapter\00", [47 x i8] zeroinitializer }, align 32
@cbus_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&chost->lock\00", [19 x i8] zeroinitializer }, align 32
@cbus_transfer.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, i8 0, i8 36, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_cbus_gpio\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cbus_transfer\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/i2c/busses/i2c-cbus-gpio.c\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed setting direction\0A\00", [38 x i8] zeroinitializer }, align 32
@cbus_transfer.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, i8 0, i8 37, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed receiving data\0A\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"cbus_i2c_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 267, i32 31 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 271, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"i2c_cbus_dt_ids\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 260, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 237, i32 38 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 238, i32 38 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 239, i32 38 }
@___asan_gen_.29 = private unnamed_addr constant [14 x i8] c"cbus_i2c_algo\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 197, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 248, i32 25 }
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 250, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 144, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [38 x i8] c"../drivers/i2c/busses/i2c-cbus-gpio.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 151, i32 4 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_alias291, ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_cbus_i2c_driver_exit, ptr @__initcall__kmod_i2c_cbus_gpio__290_275_cbus_i2c_driver_init6, ptr @cbus_i2c_driver_exit, ptr @cbus_i2c_driver, ptr @.str, ptr @i2c_cbus_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @cbus_i2c_algo, ptr @.str.4, ptr @cbus_i2c_probe.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbus_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_cbus_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbus_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cbus_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cbus_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cbus_i2c_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cbus_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @cbus_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbus_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1360, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i87 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 60, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i87, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = tail call i32 @gpiod_count(ptr noundef %dev, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call7)
  %cmp.not = icmp eq i32 %call7, 3
  br i1 %cmp.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call11 = tail call ptr @devm_gpiod_get_index(ptr noundef %dev, ptr noundef null, i32 noundef 0, i32 noundef 3) #6
  %clk = getelementptr inbounds %struct.cbus_host, ptr %call.i87, i32 0, i32 2
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call11, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %call19 = tail call ptr @devm_gpiod_get_index(ptr noundef %dev, ptr noundef null, i32 noundef 1, i32 noundef 1) #6
  %dat = getelementptr inbounds %struct.cbus_host, ptr %call.i87, i32 0, i32 3
  %2 = ptrtoint ptr %dat to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call19, ptr %dat, align 4
  %cmp.i88 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i88, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.end17
  %call27 = tail call ptr @devm_gpiod_get_index(ptr noundef %dev, ptr noundef null, i32 noundef 2, i32 noundef 7) #6
  %sel = getelementptr inbounds %struct.cbus_host, ptr %call.i87, i32 0, i32 4
  %4 = ptrtoint ptr %sel to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call27, ptr %sel, align 4
  %cmp.i89 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i89, label %if.then30, label %if.end33

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call27 to i32
  br label %cleanup

if.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %call35 = tail call i32 @gpiod_set_consumer_name(ptr noundef %7, ptr noundef nonnull @.str.1) #6
  %8 = ptrtoint ptr %dat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dat, align 4
  %call37 = tail call i32 @gpiod_set_consumer_name(ptr noundef %9, ptr noundef nonnull @.str.2) #6
  %10 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sel, align 4
  %call39 = tail call i32 @gpiod_set_consumer_name(ptr noundef %11, ptr noundef nonnull @.str.3) #6
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %call.i, align 8
  %class = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %class, align 4
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %of_node44 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 27
  %17 = ptrtoint ptr %of_node44 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %of_node44, align 8
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  %nr = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 11
  %20 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %nr, align 4
  %timeout = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 7
  %21 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 100, ptr %timeout, align 4
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 2
  %22 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @cbus_i2c_algo, ptr %algo, align 8
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 12
  %call45 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str.4, i32 noundef 48) #6
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i87, ptr noundef nonnull @.str.5, ptr noundef nonnull @cbus_i2c_probe.__key, i16 noundef signext 3) #6
  %dev48 = getelementptr inbounds %struct.cbus_host, ptr %call.i87, i32 0, i32 1
  %23 = ptrtoint ptr %dev48 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev, ptr %dev48, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i87, ptr %driver_data.i.i, align 4
  %driver_data.i.i90 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %25 = ptrtoint ptr %driver_data.i.i90 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %driver_data.i.i90, align 4
  %call49 = tail call i32 @i2c_add_numbered_adapter(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then30, %if.then22, %if.then14, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then14 ], [ %3, %if.then22 ], [ %5, %if.then30 ], [ %call49, %if.end33 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -19, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbus_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @i2c_del_adapter(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_count(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cbus_i2c_smbus_xfer(ptr nocapture noundef readonly %adapter, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size)
  %cmp.not = icmp eq i32 %size, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %read_write)
  %cmp1 = icmp eq i8 %read_write, 1
  %conv3 = zext i1 %cmp1 to i8
  %conv4 = zext i16 %addr to i32
  %conv5 = zext i8 %command to i32
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %data, align 2
  %conv6 = zext i16 %3 to i32
  %call7 = tail call fastcc i32 @cbus_transfer(ptr noundef %1, i8 noundef zeroext %conv3, i32 noundef %conv4, i32 noundef %conv5, i32 noundef %conv6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7)
  %cmp8 = icmp sgt i32 %call7, -1
  %4 = and i1 %cmp1, %cmp8
  %5 = tail call i32 @llvm.smin.i32(i32 %call7, i32 0)
  br i1 %4, label %if.then15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv16 = trunc i32 %call7 to i16
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv16, ptr %data, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %5, %if.end.cleanup_crit_edge ], [ 0, %if.then15 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cbus_i2c_func(ptr nocapture noundef readnone %adapter) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 6291456
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cbus_transfer(ptr noundef %host, i8 noundef zeroext %rw, i32 noundef %dev, i32 noundef %reg, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %host) #6
  %sel = getelementptr inbounds %struct.cbus_host, ptr %host, i32 0, i32 4
  %0 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sel, align 4
  tail call void @gpiod_set_value(ptr noundef %1, i32 noundef 0) #6
  %dat = getelementptr inbounds %struct.cbus_host, ptr %host, i32 0, i32 3
  %2 = ptrtoint ptr %dat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dat, align 4
  %call5 = tail call i32 @gpiod_direction_output(ptr noundef %3, i32 noundef 1) #6
  %clk.i.i = getelementptr inbounds %struct.cbus_host, ptr %host, i32 0, i32 2
  %4 = ptrtoint ptr %dat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dat, align 4
  %6 = lshr i32 %dev, 2
  %7 = and i32 %6, 1
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef %7) #6
  %8 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 1) #6
  %10 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %11, i32 noundef 0) #6
  %12 = ptrtoint ptr %dat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dat, align 4
  %14 = lshr i32 %dev, 1
  %15 = and i32 %14, 1
  tail call void @gpiod_set_value(ptr noundef %13, i32 noundef %15) #6
  %16 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %17, i32 noundef 1) #6
  %18 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %19, i32 noundef 0) #6
  %20 = ptrtoint ptr %dat to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dat, align 4
  %22 = and i32 %dev, 1
  tail call void @gpiod_set_value(ptr noundef %21, i32 noundef %22) #6
  %23 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %24, i32 noundef 1) #6
  %25 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clk.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %26, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %rw)
  %cmp7 = icmp eq i8 %rw, 1
  %27 = ptrtoint ptr %dat to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dat, align 4
  %cond.i = zext i1 %cmp7 to i32
  tail call void @gpiod_set_value(ptr noundef %28, i32 noundef %cond.i) #6
  %29 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %30, i32 noundef 1) #6
  %31 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %32, i32 noundef 0) #6
  %33 = ptrtoint ptr %dat to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dat, align 4
  %35 = lshr i32 %reg, 4
  %36 = and i32 %35, 1
  tail call void @gpiod_set_value(ptr noundef %34, i32 noundef %36) #6
  %37 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clk.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %38, i32 noundef 1) #6
  %39 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %40, i32 noundef 0) #6
  %41 = ptrtoint ptr %dat to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dat, align 4
  %43 = lshr i32 %reg, 3
  %44 = and i32 %43, 1
  tail call void @gpiod_set_value(ptr noundef %42, i32 noundef %44) #6
  %45 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %clk.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %46, i32 noundef 1) #6
  %47 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %clk.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %48, i32 noundef 0) #6
  %49 = ptrtoint ptr %dat to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dat, align 4
  %51 = lshr i32 %reg, 2
  %52 = and i32 %51, 1
  tail call void @gpiod_set_value(ptr noundef %50, i32 noundef %52) #6
  %53 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %clk.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %54, i32 noundef 1) #6
  %55 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clk.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %56, i32 noundef 0) #6
  %57 = ptrtoint ptr %dat to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dat, align 4
  %59 = lshr i32 %reg, 1
  %60 = and i32 %59, 1
  tail call void @gpiod_set_value(ptr noundef %58, i32 noundef %60) #6
  %61 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %clk.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %62, i32 noundef 1) #6
  %63 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %clk.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %64, i32 noundef 0) #6
  %65 = ptrtoint ptr %dat to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dat, align 4
  %67 = and i32 %reg, 1
  tail call void @gpiod_set_value(ptr noundef %66, i32 noundef %67) #6
  %68 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %clk.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %69, i32 noundef 1) #6
  %70 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %clk.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %71, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rw)
  %cmp10 = icmp eq i8 %rw, 0
  br i1 %cmp10, label %entry.for.body.i89_crit_edge, label %if.else

entry.for.body.i89_crit_edge:                     ; preds = %entry
  br label %for.body.i89

for.body.i89:                                     ; preds = %for.body.i89.for.body.i89_crit_edge, %entry.for.body.i89_crit_edge
  %i.04.i86 = phi i32 [ %sub.i87, %for.body.i89.for.body.i89_crit_edge ], [ 16, %entry.for.body.i89_crit_edge ]
  %sub.i87 = add nsw i32 %i.04.i86, -1
  %72 = ptrtoint ptr %dat to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dat, align 4
  %74 = lshr i32 %data, %sub.i87
  %75 = and i32 %74, 1
  tail call void @gpiod_set_value(ptr noundef %73, i32 noundef %75) #6
  %76 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %clk.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %77, i32 noundef 1) #6
  %78 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %clk.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %79, i32 noundef 0) #6
  %cmp.i88 = icmp ugt i32 %i.04.i86, 1
  br i1 %cmp.i88, label %for.body.i89.for.body.i89_crit_edge, label %for.body.i89.if.end51_crit_edge

for.body.i89.if.end51_crit_edge:                  ; preds = %for.body.i89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

for.body.i89.for.body.i89_crit_edge:              ; preds = %for.body.i89
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i89

if.else:                                          ; preds = %entry
  %80 = ptrtoint ptr %dat to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dat, align 4
  %call13 = tail call i32 @gpiod_direction_input(ptr noundef %81) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.end26, label %do.body15

do.body15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cbus_transfer.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cbus_transfer, %out)) #6
          to label %if.then22 [label %out], !srcloc !57

if.then22:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  %dev23 = getelementptr inbounds %struct.cbus_host, ptr %host, i32 0, i32 1
  %82 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cbus_transfer.__UNIQUE_ID_ddebug288, ptr noundef %83, ptr noundef nonnull @.str.9) #6
  br label %out

if.end26:                                         ; preds = %if.else
  %84 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %clk.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %85, i32 noundef 1) #6
  br label %for.body.i93

for.body.i93:                                     ; preds = %for.inc.i.for.body.i93_crit_edge, %if.end26
  %i.014.i = phi i32 [ 16, %if.end26 ], [ %sub.i94, %for.inc.i.for.body.i93_crit_edge ]
  %ret.013.i = phi i32 [ 0, %if.end26 ], [ %ret.1.i, %for.inc.i.for.body.i93_crit_edge ]
  %86 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %clk.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %87, i32 noundef 1) #6
  %88 = ptrtoint ptr %dat to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dat, align 4
  %call.i.i = tail call i32 @gpiod_get_value(ptr noundef %89) #6
  %90 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %clk.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %91, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i, label %for.body.i93.do.body31_crit_edge, label %for.inc.i

for.body.i93.do.body31_crit_edge:                 ; preds = %for.body.i93
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31

for.inc.i:                                        ; preds = %for.body.i93
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  %sub.i94 = add nsw i32 %i.014.i, -1
  %shl.i = shl nuw i32 1, %sub.i94
  %or.i = select i1 %tobool.not.i, i32 0, i32 %shl.i
  %ret.1.i = or i32 %or.i, %ret.013.i
  %cmp.i95 = icmp ugt i32 %i.014.i, 1
  br i1 %cmp.i95, label %for.inc.i.for.body.i93_crit_edge, label %cbus_receive_word.exit

for.inc.i.for.body.i93_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i93

cbus_receive_word.exit:                           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp28 = icmp slt i32 %ret.1.i, 0
  br i1 %cmp28, label %cbus_receive_word.exit.do.body31_crit_edge, label %cbus_receive_word.exit.if.end51_crit_edge

cbus_receive_word.exit.if.end51_crit_edge:        ; preds = %cbus_receive_word.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

cbus_receive_word.exit.do.body31_crit_edge:       ; preds = %cbus_receive_word.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body31

do.body31:                                        ; preds = %cbus_receive_word.exit.do.body31_crit_edge, %for.body.i93.do.body31_crit_edge
  %retval.2.i99 = phi i32 [ %ret.1.i, %cbus_receive_word.exit.do.body31_crit_edge ], [ %call.i.i, %for.body.i93.do.body31_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cbus_transfer.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cbus_transfer, %out)) #6
          to label %if.then45 [label %out], !srcloc !57

if.then45:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  %dev46 = getelementptr inbounds %struct.cbus_host, ptr %host, i32 0, i32 1
  %92 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev46, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cbus_transfer.__UNIQUE_ID_ddebug289, ptr noundef %93, ptr noundef nonnull @.str.10) #6
  br label %out

if.end51:                                         ; preds = %cbus_receive_word.exit.if.end51_crit_edge, %for.body.i89.if.end51_crit_edge
  %ret.0 = phi i32 [ %ret.1.i, %cbus_receive_word.exit.if.end51_crit_edge ], [ 0, %for.body.i89.if.end51_crit_edge ]
  %94 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %sel, align 4
  tail call void @gpiod_set_value(ptr noundef %95, i32 noundef 1) #6
  %96 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %clk.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %97, i32 noundef 1) #6
  %98 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %clk.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %99, i32 noundef 0) #6
  br label %out

out:                                              ; preds = %if.end51, %if.then45, %do.body31, %if.then22, %do.body15
  %ret.1 = phi i32 [ %ret.0, %if.end51 ], [ %call13, %if.then22 ], [ %retval.2.i99, %if.then45 ], [ %call13, %do.body15 ], [ %retval.2.i99, %do.body31 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %host, i32 noundef %call2) #6
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !39, !40, !41, !42, !43, !45, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_i2c_cbus_gpio__290_275_cbus_i2c_driver_init6, !1, !"__initcall__kmod_i2c_cbus_gpio__290_275_cbus_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-cbus-gpio.c", i32 275, i32 1}
!2 = !{ptr @__exitcall_cbus_i2c_driver_exit, !1, !"__exitcall_cbus_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias291, !4, !"__UNIQUE_ID_alias291", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-cbus-gpio.c", i32 277, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-cbus-gpio.c", i32 278, i32 1}
!7 = !{ptr @__UNIQUE_ID_author293, !8, !"__UNIQUE_ID_author293", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-cbus-gpio.c", i32 279, i32 1}
!9 = !{ptr @__UNIQUE_ID_author294, !10, !"__UNIQUE_ID_author294", i1 false, i1 false}
!10 = !{!"../drivers/i2c/busses/i2c-cbus-gpio.c", i32 280, i32 1}
!11 = !{ptr @__UNIQUE_ID_author295, !12, !"__UNIQUE_ID_author295", i1 false, i1 false}
!12 = !{!"../drivers/i2c/busses/i2c-cbus-gpio.c", i32 281, i32 1}
!13 = !{ptr @__UNIQUE_ID_author296, !14, !"__UNIQUE_ID_author296", i1 false, i1 false}
!14 = !{!"../drivers/i2c/busses/i2c-cbus-gpio.c", i32 282, i32 1}
!15 = !{ptr @__UNIQUE_ID_author297, !16, !"__UNIQUE_ID_author297", i1 false, i1 false}
!16 = !{!"../drivers/i2c/busses/i2c-cbus-gpio.c", i32 283, i32 1}
!17 = !{ptr @__UNIQUE_ID_file298, !18, !"__UNIQUE_ID_file298", i1 false, i1 false}
!18 = !{!"../drivers/i2c/busses/i2c-cbus-gpio.c", i32 284, i32 1}
!19 = !{ptr @__UNIQUE_ID_license299, !18, !"__UNIQUE_ID_license299", i1 false, i1 false}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/i2c/busses/i2c-cbus-gpio.c", i32 271, i32 11}
!22 = !{ptr @cbus_i2c_driver, !23, !"cbus_i2c_driver", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-cbus-gpio.c", i32 267, i32 31}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/i2c/busses/i2c-cbus-gpio.c", i32 237, i32 38}
!26 = !{ptr @.str.2, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/busses/i2c-cbus-gpio.c", i32 238, i32 38}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/i2c/busses/i2c-cbus-gpio.c", i32 239, i32 38}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/i2c/busses/i2c-cbus-gpio.c", i32 248, i32 25}
!32 = !{ptr @cbus_i2c_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/i2c/busses/i2c-cbus-gpio.c", i32 250, i32 2}
!34 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @cbus_i2c_algo, !36, !"cbus_i2c_algo", i1 false, i1 false}
!36 = !{!"../drivers/i2c/busses/i2c-cbus-gpio.c", i32 197, i32 35}
!37 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/i2c/busses/i2c-cbus-gpio.c", i32 144, i32 4}
!39 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @cbus_transfer.__UNIQUE_ID_ddebug288, !38, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/i2c/busses/i2c-cbus-gpio.c", i32 151, i32 4}
!45 = !{ptr @cbus_transfer.__UNIQUE_ID_ddebug289, !44, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!46 = !{ptr @i2c_cbus_dt_ids, !47, !"i2c_cbus_dt_ids", i1 false, i1 false}
!47 = !{!"../drivers/i2c/busses/i2c-cbus-gpio.c", i32 260, i32 34}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 2148157378, i64 2148157383, i64 2148157396, i64 2148157440, i64 2148157474, i64 2148157495}
