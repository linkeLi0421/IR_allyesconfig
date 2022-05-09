; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-iop3xx.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-iop3xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.i2c_algo_iop3xx_data = type { ptr, %struct.wait_queue_head, %struct.spinlock, i32, i32, i32, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_iop3xx__288_539_iop3xx_i2c_driver_init6 = internal global ptr @iop3xx_i2c_driver_init, section ".initcall6.init", align 4
@iop3xx_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @iop3xx_i2c_probe, ptr @iop3xx_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @i2c_iop3xx_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_iop3xx_i2c_driver_exit = internal global ptr @iop3xx_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [56 x i8] c"i2c_iop3xx.author=D-TACQ Solutions Ltd <www.d-tacq.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [55 x i8] c"i2c_iop3xx.description=IOP3xx iic algorithm and driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [46 x i8] c"i2c_iop3xx.file=drivers/i2c/busses/i2c-iop3xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [23 x i8] c"i2c_iop3xx.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [37 x i8] c"i2c_iop3xx.alias=platform:IOP3xx-I2C\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IOP3xx-I2C\00", [21 x i8] zeroinitializer }, align 32
@i2c_iop3xx_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,iop3xx-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,ixp4xx-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"scl\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sda\00", [28 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@i2c_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@iop3xx_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @iop3xx_i2c_master_xfer, ptr null, ptr null, ptr null, ptr @iop3xx_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@iop3xx_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&adapter_data->waitq\00", [43 x i8] zeroinitializer }, align 32
@iop3xx_i2c_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&adapter_data->lock\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/i2c/busses/i2c-iop3xx.c\00", [32 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [18 x i8] c"iop3xx_i2c_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 530, i32 31 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 534, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"i2c_iop3xx_match\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 523, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 436, i32 9 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 443, i32 9 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"i2c_id\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 43, i32 12 }
@___asan_gen_.25 = private unnamed_addr constant [16 x i8] c"iop3xx_i2c_algo\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 386, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 494, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 495, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [35 x i8] c"../drivers/i2c/busses/i2c-iop3xx.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 170, i32 17 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_iop3xx_i2c_driver_exit, ptr @__initcall__kmod_i2c_iop3xx__288_539_iop3xx_i2c_driver_init6, ptr @iop3xx_i2c_driver_exit, ptr @iop3xx_i2c_driver, ptr @.str, ptr @i2c_iop3xx_match, ptr @.str.1, ptr @.str.2, ptr @i2c_id, ptr @iop3xx_i2c_algo, ptr @iop3xx_i2c_probe.__key, ptr @.str.3, ptr @iop3xx_i2c_probe.__key.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iop3xx_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_iop3xx_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iop3xx_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iop3xx_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iop3xx_i2c_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iop3xx_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @iop3xx_i2c_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iop3xx_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @iop3xx_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iop3xx_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1360) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i109 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 120) #10
  %tobool2.not = icmp eq ptr %call7.i.i109, null
  br i1 %tobool2.not, label %if.end.free_adapter_crit_edge, label %if.end4

if.end.free_adapter_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_adapter

if.end4:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call5 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 0) #7
  %gpio_scl = getelementptr inbounds %struct.i2c_algo_iop3xx_data, ptr %call7.i.i109, i32 0, i32 6
  %2 = ptrtoint ptr %gpio_scl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5, ptr %gpio_scl, align 8
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call5 to i32
  br label %free_both

if.end11:                                         ; preds = %if.end4
  %call13 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef 0) #7
  %gpio_sda = getelementptr inbounds %struct.i2c_algo_iop3xx_data, ptr %call7.i.i109, i32 0, i32 7
  %4 = ptrtoint ptr %gpio_sda to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call13, ptr %gpio_sda, align 4
  %cmp.i110 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i110, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call13 to i32
  br label %free_both

if.end19:                                         ; preds = %if.end11
  %call20 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end19.free_both_crit_edge, label %if.end23

if.end19.free_both_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_both

if.end23:                                         ; preds = %if.end19
  %6 = ptrtoint ptr %call20 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call20, align 4
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %call24 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %7, i32 noundef 24, ptr noundef %9, i32 noundef 0) #7
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end23.free_both_crit_edge, label %if.end27

if.end23.free_both_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_both

if.end27:                                         ; preds = %if.end23
  %10 = load i32, ptr @i2c_id, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr @i2c_id, align 4
  %id = getelementptr inbounds %struct.i2c_algo_iop3xx_data, ptr %call7.i.i109, i32 0, i32 5
  %11 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %id, align 4
  %12 = ptrtoint ptr %call20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call20, align 4
  %call29 = tail call ptr @ioremap(i32 noundef %13, i32 noundef 24) #7
  %14 = ptrtoint ptr %call7.i.i109 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call29, ptr %call7.i.i109, align 8
  %tobool31.not = icmp eq ptr %call29, null
  br i1 %tobool31.not, label %if.end27.release_region_crit_edge, label %if.end33

if.end27.release_region_crit_edge:                ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %release_region

if.end33:                                         ; preds = %if.end27
  %call34 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp = icmp slt i32 %call34, 0
  br i1 %cmp, label %if.end33.unmap_crit_edge, label %if.end36

if.end33.unmap_crit_edge:                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %unmap

if.end36:                                         ; preds = %if.end33
  %15 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev, align 8
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %call34, ptr noundef nonnull @iop3xx_i2c_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %16, ptr noundef nonnull %call7.i.i109) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool39.not = icmp eq i32 %call.i, 0
  br i1 %tobool39.not, label %if.end41, label %if.end36.unmap_crit_edge

if.end36.unmap_crit_edge:                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %unmap

if.end41:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %name42 = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 12
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %call45 = tail call i32 @strlen(ptr noundef %18) #11
  %19 = call ptr @memcpy(ptr %name42, ptr %18, i32 %call45)
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %call7.i.i, align 8
  %class = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 129, ptr %class, align 4
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 9, i32 1
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %23 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node, align 8
  %of_node50 = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 9, i32 27
  %25 = ptrtoint ptr %of_node50 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %of_node50, align 8
  %id51 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %26 = ptrtoint ptr %id51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id51, align 4
  %nr = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 11
  %28 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %nr, align 4
  %timeout = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 7
  %29 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 100, ptr %timeout, align 4
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @iop3xx_i2c_algo, ptr %algo, align 8
  %waitq = getelementptr inbounds %struct.i2c_algo_iop3xx_data, ptr %call7.i.i109, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %waitq, ptr noundef nonnull @.str.3, ptr noundef nonnull @iop3xx_i2c_probe.__key) #7
  %lock = getelementptr inbounds %struct.i2c_algo_iop3xx_data, ptr %call7.i.i109, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @iop3xx_i2c_probe.__key.4, i16 noundef signext 3) #7
  %31 = ptrtoint ptr %call7.i.i109 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call7.i.i109, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 16384) #7, !srcloc !43
  %33 = ptrtoint ptr %call7.i.i109 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call7.i.i109, align 8
  %add.ptr2.i = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 2032) #7, !srcloc !43
  %35 = ptrtoint ptr %call7.i.i109 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call7.i.i109, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 0) #7, !srcloc !43
  tail call fastcc void @iop3xx_i2c_enable(ptr noundef nonnull %call7.i.i109)
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %call7.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call7.i.i109, ptr %algo_data, align 4
  %call56 = tail call i32 @i2c_add_numbered_adapter(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

unmap:                                            ; preds = %if.end36.unmap_crit_edge, %if.end33.unmap_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end36.unmap_crit_edge ], [ %call34, %if.end33.unmap_crit_edge ]
  %39 = ptrtoint ptr %call7.i.i109 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call7.i.i109, align 8
  tail call void @iounmap(ptr noundef %40) #7
  br label %release_region

release_region:                                   ; preds = %unmap, %if.end27.release_region_crit_edge
  %ret.1 = phi i32 [ %ret.0, %unmap ], [ -12, %if.end27.release_region_crit_edge ]
  %41 = ptrtoint ptr %call20 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call20, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %42, i32 noundef 24) #7
  br label %free_both

free_both:                                        ; preds = %release_region, %if.end23.free_both_crit_edge, %if.end19.free_both_crit_edge, %if.then16, %if.then8
  %ret.2 = phi i32 [ %3, %if.then8 ], [ %5, %if.then16 ], [ %ret.1, %release_region ], [ -19, %if.end19.free_both_crit_edge ], [ -16, %if.end23.free_both_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i109) #7
  br label %free_adapter

free_adapter:                                     ; preds = %free_both, %if.end.free_adapter_crit_edge
  %ret.3 = phi i32 [ %ret.2, %free_both ], [ -12, %if.end.free_adapter_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %free_adapter, %if.end41, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end41 ], [ %ret.3, %free_adapter ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iop3xx_i2c_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo_data, align 4
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !44
  %and = and i32 %6, -5889
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %and) #7, !srcloc !43
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  tail call void @iounmap(ptr noundef %10) #7
  %11 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call1, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %12, i32 noundef 24) #7
  tail call void @kfree(ptr noundef %3) #7
  tail call void @kfree(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iop3xx_i2c_irq_handler(i32 noundef %this_irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !44
  %SR_enabled = getelementptr inbounds %struct.i2c_algo_iop3xx_data, ptr %dev_id, i32 0, i32 3
  %3 = ptrtoint ptr %SR_enabled to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %SR_enabled, align 4
  %and = and i32 %4, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_id, align 4
  %add.ptr2 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %and) #7, !srcloc !43
  %SR_received = getelementptr inbounds %struct.i2c_algo_iop3xx_data, ptr %dev_id, i32 0, i32 4
  %7 = ptrtoint ptr %SR_received to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %SR_received, align 4
  %or = or i32 %8, %and
  store i32 %or, ptr %SR_received, align 4
  %waitq = getelementptr inbounds %struct.i2c_algo_iop3xx_data, ptr %dev_id, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iop3xx_i2c_enable(ptr nocapture noundef %iop3xx_adap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_scl = getelementptr inbounds %struct.i2c_algo_iop3xx_data, ptr %iop3xx_adap, i32 0, i32 6
  %0 = ptrtoint ptr %gpio_scl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_scl, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_raw_value(ptr noundef nonnull %1, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %gpio_sda = getelementptr inbounds %struct.i2c_algo_iop3xx_data, ptr %iop3xx_adap, i32 0, i32 7
  %2 = ptrtoint ptr %gpio_sda to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_sda, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_raw_value(ptr noundef nonnull %3, i32 noundef 0) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %SR_enabled = getelementptr inbounds %struct.i2c_algo_iop3xx_data, ptr %iop3xx_adap, i32 0, i32 3
  %4 = ptrtoint ptr %SR_enabled to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1248, ptr %SR_enabled, align 4
  %5 = ptrtoint ptr %iop3xx_adap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iop3xx_adap, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 6112) #7, !srcloc !43
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iop3xx_i2c_master_xfer(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  %status.i.i.i = alloca i32, align 4
  %__wq_entry.i.i.i.i.i = alloca %struct.wait_queue_entry, align 4
  %status.i.i = alloca i32, align 4
  %__wq_entry.i.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %lock.i.i.i = getelementptr inbounds %struct.i2c_algo_iop3xx_data, ptr %1, i32 0, i32 2
  %SR_received.i.i.i = getelementptr inbounds %struct.i2c_algo_iop3xx_data, ptr %1, i32 0, i32 4
  %waitq.i.i = getelementptr inbounds %struct.i2c_algo_iop3xx_data, ptr %1, i32 0, i32 1
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end40.i.i.do.body.i.i_crit_edge, %entry
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 174) #7
  %call2.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i) #7
  %2 = ptrtoint ptr %SR_received.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %SR_received.i.i.i, align 4
  store i32 0, ptr %SR_received.i.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i, i32 noundef %call2.i.i.i) #7
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.not.i, label %do.body.i.i.iop3xx_i2c_wait_idle.exit_crit_edge, label %if.then11.i.i

do.body.i.i.iop3xx_i2c_wait_idle.exit_crit_edge:  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iop3xx_i2c_wait_idle.exit

if.then11.i.i:                                    ; preds = %do.body.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i.i) #7
  %5 = call ptr @memset(ptr %__wq_entry.i.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i.i, i32 noundef 0) #7
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %cleanup.i.i, %if.then11.i.i
  %__ret12.0.i.i = phi i32 [ 100, %if.then11.i.i ], [ %call37.i.i, %cleanup.i.i ]
  %call13.i.i = call i32 @prepare_to_wait_event(ptr noundef %waitq.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 1) #7
  %call2.i76.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i) #7
  %6 = ptrtoint ptr %SR_received.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %SR_received.i.i.i, align 4
  store i32 0, ptr %SR_received.i.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i, i32 noundef %call2.i76.i.i) #7
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool17.not.i.i = icmp ne i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret12.0.i.i)
  %tobool21.not.i.i = icmp eq i32 %__ret12.0.i.i, 0
  %spec.store.select56.i.i = select i1 %tobool21.not.i.i, i32 1, i32 %__ret12.0.i.i
  %__ret12.1.i.i = select i1 %tobool17.not.i.i, i32 %__ret12.0.i.i, i32 %spec.store.select56.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret12.1.i.i)
  %tobool27.not.i.i = icmp eq i32 %__ret12.1.i.i, 0
  %not.tobool17.not.i.i = xor i1 %tobool17.not.i.i, true
  %9 = select i1 %not.tobool17.not.i.i, i1 true, i1 %tobool27.not.i.i
  br i1 %9, label %for.end.i.i, label %if.end33.i.i

if.end33.i.i:                                     ; preds = %for.cond.i.i
  %tobool34.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool34.not.i.i, label %cleanup.i.i, label %if.end33.i.i.if.end40.i.i_crit_edge

if.end33.i.i.if.end40.i.i_crit_edge:              ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i.i

cleanup.i.i:                                      ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call37.i.i = call i32 @schedule_timeout(i32 noundef %__ret12.1.i.i) #7
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @finish_wait(ptr noundef %waitq.i.i, ptr noundef nonnull %__wq_entry.i.i) #7
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %for.end.i.i, %if.end33.i.i.if.end40.i.i_crit_edge
  %__ret12.280.i.i = phi i32 [ %__ret12.1.i.i, %for.end.i.i ], [ 1, %if.end33.i.i.if.end40.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #7
  %10 = and i32 %7, 1056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp eq i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret12.280.i.i)
  %tobool44.not.i.i = icmp ne i32 %__ret12.280.i.i, 0
  %or.cond.i = select i1 %11, i1 %tobool44.not.i.i, i1 false
  %or.cond5.i = select i1 %or.cond.i, i1 %tobool17.not.i.i, i1 false
  br i1 %or.cond5.i, label %if.end40.i.i.do.body.i.i_crit_edge, label %if.end40.i.i.iop3xx_i2c_wait_idle.exit_crit_edge

if.end40.i.i.iop3xx_i2c_wait_idle.exit_crit_edge: ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iop3xx_i2c_wait_idle.exit

if.end40.i.i.do.body.i.i_crit_edge:               ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

iop3xx_i2c_wait_idle.exit:                        ; preds = %if.end40.i.i.iop3xx_i2c_wait_idle.exit_crit_edge, %do.body.i.i.iop3xx_i2c_wait_idle.exit_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 16384) #7, !srcloc !43
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr2.i = getelementptr i8, ptr %15, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 2032) #7, !srcloc !43
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #7, !srcloc !43
  %gpio_scl.i = getelementptr inbounds %struct.i2c_algo_iop3xx_data, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %gpio_scl.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gpio_scl.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %iop3xx_i2c_wait_idle.exit.if.end.i_crit_edge, label %if.then.i

iop3xx_i2c_wait_idle.exit.if.end.i_crit_edge:     ; preds = %iop3xx_i2c_wait_idle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %iop3xx_i2c_wait_idle.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @gpiod_set_raw_value(ptr noundef nonnull %19, i32 noundef 0) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %iop3xx_i2c_wait_idle.exit.if.end.i_crit_edge
  %gpio_sda.i = getelementptr inbounds %struct.i2c_algo_iop3xx_data, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %gpio_sda.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gpio_sda.i, align 4
  %tobool2.not.i = icmp eq ptr %21, null
  br i1 %tobool2.not.i, label %if.end.i.iop3xx_i2c_enable.exit_crit_edge, label %if.then3.i

if.end.i.iop3xx_i2c_enable.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iop3xx_i2c_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @gpiod_set_raw_value(ptr noundef nonnull %21, i32 noundef 0) #7
  br label %iop3xx_i2c_enable.exit

iop3xx_i2c_enable.exit:                           ; preds = %if.then3.i, %if.end.i.iop3xx_i2c_enable.exit_crit_edge
  %SR_enabled.i = getelementptr inbounds %struct.i2c_algo_iop3xx_data, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %SR_enabled.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1248, ptr %SR_enabled.i, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 6112) #7, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp1.not29 = icmp eq i32 %num, 0
  br i1 %cmp1.not29, label %iop3xx_i2c_enable.exit.for.end_crit_edge, label %iop3xx_i2c_enable.exit.for.body_crit_edge

iop3xx_i2c_enable.exit.for.body_crit_edge:        ; preds = %iop3xx_i2c_enable.exit
  br label %for.body

iop3xx_i2c_enable.exit.for.end_crit_edge:         ; preds = %iop3xx_i2c_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %iop3xx_i2c_handle_msg.exit.for.body_crit_edge, %iop3xx_i2c_enable.exit.for.body_crit_edge
  %im.030 = phi i32 [ %inc, %iop3xx_i2c_handle_msg.exit.for.body_crit_edge ], [ 0, %iop3xx_i2c_enable.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %im.030
  %25 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %algo_data, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #7, !srcloc !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i.i) #7
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp.i.i = icmp eq i16 %31, 0
  br i1 %cmp.i.i, label %iop3xx_i2c_send_target_addr.exit.thread.i, label %iop3xx_i2c_send_target_addr.exit.i

iop3xx_i2c_send_target_addr.exit.thread.i:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i) #7
  br label %iop3xx_i2c_handle_msg.exit.thread

iop3xx_i2c_send_target_addr.exit.i:               ; preds = %for.body
  %conv.i.i.i.i = zext i16 %31 to i32
  %shl.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i, 1
  %flags.i.i.i.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %im.030, i32 1
  %32 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flags.i.i.i.i, align 2
  %34 = and i16 %33, 1
  %35 = zext i16 %34 to i32
  %shl.i.i.masked.i.i = and i32 %shl.i.i.i.i, 254
  %conv3.i.i = or i32 %shl.i.i.masked.i.i, %35
  %36 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %26, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %37, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %conv3.i.i) #7, !srcloc !43
  %and.i.i15 = and i32 %29, -16
  %or.i.i = or i32 %and.i.i15, 9
  %38 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %26, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %or.i.i) #7, !srcloc !43
  %call8.i.i = call fastcc i32 @iop3xx_i2c_wait_tx_done(ptr noundef %26, ptr noundef nonnull %status.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp.i = icmp slt i32 %call8.i.i, 0
  br i1 %cmp.i, label %iop3xx_i2c_send_target_addr.exit.i.iop3xx_i2c_handle_msg.exit.thread_crit_edge, label %if.end.i17

iop3xx_i2c_send_target_addr.exit.i.iop3xx_i2c_handle_msg.exit.thread_crit_edge: ; preds = %iop3xx_i2c_send_target_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iop3xx_i2c_handle_msg.exit.thread

if.end.i17:                                       ; preds = %iop3xx_i2c_send_target_addr.exit.i
  %40 = ptrtoint ptr %flags.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %flags.i.i.i.i, align 2
  %42 = and i16 %41, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool.not.i16 = icmp eq i16 %42, 0
  %buf4.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %im.030, i32 3
  %43 = ptrtoint ptr %buf4.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buf4.i, align 4
  %len5.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %im.030, i32 2
  %45 = ptrtoint ptr %len5.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %len5.i, align 4
  %conv6.i = zext i16 %46 to i32
  %47 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %algo_data, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp1.not8.i.i = icmp eq i16 %46, 0
  br i1 %tobool.not.i16, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i17
  br i1 %cmp1.not8.i.i, label %if.then1.i.iop3xx_i2c_handle_msg.exit_crit_edge, label %for.body.lr.ph.i.i

if.then1.i.iop3xx_i2c_handle_msg.exit_crit_edge:  ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iop3xx_i2c_handle_msg.exit

for.body.lr.ph.i.i:                               ; preds = %if.then1.i
  %sub.i.i = add nsw i32 %conv6.i, -1
  %lock.i.i.i.i.i.i = getelementptr inbounds %struct.i2c_algo_iop3xx_data, ptr %48, i32 0, i32 2
  %SR_received.i.i.i.i.i.i = getelementptr inbounds %struct.i2c_algo_iop3xx_data, ptr %48, i32 0, i32 4
  %waitq.i.i.i.i.i = getelementptr inbounds %struct.i2c_algo_iop3xx_data, ptr %48, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %iop3xx_i2c_read_byte.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %ii.013.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %iop3xx_i2c_read_byte.exit.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %44, i32 %ii.013.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %ii.013.i.i, i32 %sub.i.i)
  %cmp2.not.i.i = icmp eq i32 %ii.013.i.i, %sub.i.i
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #7, !srcloc !44
  %and.i.i.i = and i32 %51, -8
  %or.i.i.i = or i32 %and.i.i.i, 6
  %cr.0.i.i.i = select i1 %cmp2.not.i.i, i32 %or.i.i.i, i32 %and.i.i.i
  %or2.i.i.i = or i32 %cr.0.i.i.i, 8
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %48, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %or2.i.i.i) #7, !srcloc !43
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.cond48.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %for.body.i.i
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 174) #7
  %call2.i.i.i.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i.i.i.i) #7
  %54 = ptrtoint ptr %SR_received.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %SR_received.i.i.i.i.i.i, align 4
  store i32 0, ptr %SR_received.i.i.i.i.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i.i.i.i, i32 noundef %call2.i.i.i.i.i.i) #7
  %and.i2.i.i.i.i = and i32 %55, 1184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i.i.i.i)
  %cmp.i3.not.i.i.i.i = icmp eq i32 %and.i2.i.i.i.i, 0
  br i1 %cmp.i3.not.i.i.i.i, label %if.then11.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end40.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.if.end40.i.i.i.i.i_crit_edge:   ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i.i.i.i.i

if.then11.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i.i.i.i.i) #7
  %56 = call ptr @memset(ptr %__wq_entry.i.i.i.i.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i.i.i.i.i, i32 noundef 0) #7
  br label %for.cond.i.i.i.i.i

for.cond.i.i.i.i.i:                               ; preds = %cleanup.i.i.i.i.i, %if.then11.i.i.i.i.i
  %__ret12.0.i.i.i.i.i = phi i32 [ 100, %if.then11.i.i.i.i.i ], [ %call37.i.i.i.i.i, %cleanup.i.i.i.i.i ]
  %call13.i.i.i.i.i = call i32 @prepare_to_wait_event(ptr noundef %waitq.i.i.i.i.i, ptr noundef nonnull %__wq_entry.i.i.i.i.i, i32 noundef 1) #7
  %call2.i76.i.i.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i.i.i.i.i) #7
  %57 = ptrtoint ptr %SR_received.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %SR_received.i.i.i.i.i.i, align 4
  store i32 0, ptr %SR_received.i.i.i.i.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i.i.i.i.i, i32 noundef %call2.i76.i.i.i.i.i) #7
  %and.i.i.i.i.i = and i32 %58, 1184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %cmp.i1.i.i.i.i = icmp ne i32 %and.i.i.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret12.0.i.i.i.i.i)
  %tobool21.not.i.i.i.i.i = icmp eq i32 %__ret12.0.i.i.i.i.i, 0
  %59 = select i1 %cmp.i1.i.i.i.i, i1 %tobool21.not.i.i.i.i.i, i1 false
  %__ret12.1.i.i.i.i.i = select i1 %59, i32 1, i32 %__ret12.0.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret12.1.i.i.i.i.i)
  %tobool27.not.i.i.i.i.i = icmp eq i32 %__ret12.1.i.i.i.i.i, 0
  %60 = select i1 %cmp.i1.i.i.i.i, i1 true, i1 %tobool27.not.i.i.i.i.i
  br i1 %60, label %for.end.i.i.i.i.i, label %if.end33.i.i.i.i.i

if.end33.i.i.i.i.i:                               ; preds = %for.cond.i.i.i.i.i
  %tobool34.not.i.i.i.i.i = icmp eq i32 %call13.i.i.i.i.i, 0
  br i1 %tobool34.not.i.i.i.i.i, label %cleanup.i.i.i.i.i, label %if.end33.i.i.i.i.i.__out.i.i.i.i.i_crit_edge

if.end33.i.i.i.i.i.__out.i.i.i.i.i_crit_edge:     ; preds = %if.end33.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out.i.i.i.i.i

cleanup.i.i.i.i.i:                                ; preds = %if.end33.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call37.i.i.i.i.i = call i32 @schedule_timeout(i32 noundef %__ret12.1.i.i.i.i.i) #7
  br label %for.cond.i.i.i.i.i

for.end.i.i.i.i.i:                                ; preds = %for.cond.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @finish_wait(ptr noundef %waitq.i.i.i.i.i, ptr noundef nonnull %__wq_entry.i.i.i.i.i) #7
  br label %__out.i.i.i.i.i

__out.i.i.i.i.i:                                  ; preds = %for.end.i.i.i.i.i, %if.end33.i.i.i.i.i.__out.i.i.i.i.i_crit_edge
  %cmp.i114.i.i.i.i = phi i1 [ %cmp.i1.i.i.i.i, %for.end.i.i.i.i.i ], [ false, %if.end33.i.i.i.i.i.__out.i.i.i.i.i_crit_edge ]
  %__ret12.280.i.i.i.i.i = phi i32 [ %__ret12.1.i.i.i.i.i, %for.end.i.i.i.i.i ], [ %call13.i.i.i.i.i, %if.end33.i.i.i.i.i.__out.i.i.i.i.i_crit_edge ]
  %conv.i7.i.i.i.i = zext i1 %cmp.i114.i.i.i.i to i32
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i.i.i.i) #7
  br label %if.end40.i.i.i.i.i

if.end40.i.i.i.i.i:                               ; preds = %__out.i.i.i.i.i, %do.body.i.i.i.i.i.if.end40.i.i.i.i.i_crit_edge
  %__ret.1.i.i.i.i.i = phi i32 [ 100, %do.body.i.i.i.i.i.if.end40.i.i.i.i.i_crit_edge ], [ %__ret12.280.i.i.i.i.i, %__out.i.i.i.i.i ]
  %done.0.i.i.i.i.i = phi i32 [ 1, %do.body.i.i.i.i.i.if.end40.i.i.i.i.i_crit_edge ], [ %conv.i7.i.i.i.i, %__out.i.i.i.i.i ]
  %sr.0.i.i.i.i.i = phi i32 [ %55, %do.body.i.i.i.i.i.if.end40.i.i.i.i.i_crit_edge ], [ %58, %__out.i.i.i.i.i ]
  %and.i.i.i.i.i.i = and i32 %sr.0.i.i.i.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 -322, i32 -321
  %spec.select15.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 0, i32 -321
  %and4.i.i.i.i.i.i = and i32 %sr.0.i.i.i.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i.i.i.i)
  %tobool5.not.i.i.i.i.i.i = icmp eq i32 %and4.i.i.i.i.i.i, 0
  %rc.1.i.i.i.i.i.i = select i1 %tobool5.not.i.i.i.i.i.i, i32 %spec.select15.i.i.i.i.i.i, i32 %spec.select.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp slt i32 %rc.1.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.end40.i.i.i.i.i.iop3xx_i2c_read_byte.exit.i.i_crit_edge, label %if.else.i.i.i.i.i

if.end40.i.i.i.i.i.iop3xx_i2c_read_byte.exit.i.i_crit_edge: ; preds = %if.end40.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iop3xx_i2c_read_byte.exit.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end40.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1.i.i.i.i.i)
  %tobool44.not.i.i.i.i.i = icmp eq i32 %__ret.1.i.i.i.i.i, 0
  br i1 %tobool44.not.i.i.i.i.i, label %if.else.i.i.i.i.i.iop3xx_i2c_read_byte.exit.i.i_crit_edge, label %do.cond48.i.i.i.i.i

if.else.i.i.i.i.i.iop3xx_i2c_read_byte.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iop3xx_i2c_read_byte.exit.i.i

do.cond48.i.i.i.i.i:                              ; preds = %if.else.i.i.i.i.i
  %tobool49.not.i.i.i.i.i = icmp eq i32 %done.0.i.i.i.i.i, 0
  br i1 %tobool49.not.i.i.i.i.i, label %do.cond48.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, label %do.cond48.i.i.i.i.i.iop3xx_i2c_read_byte.exit.i.i_crit_edge

do.cond48.i.i.i.i.i.iop3xx_i2c_read_byte.exit.i.i_crit_edge: ; preds = %do.cond48.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iop3xx_i2c_read_byte.exit.i.i

do.cond48.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:  ; preds = %do.cond48.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i.i.i.i

iop3xx_i2c_read_byte.exit.i.i:                    ; preds = %do.cond48.i.i.i.i.i.iop3xx_i2c_read_byte.exit.i.i_crit_edge, %if.else.i.i.i.i.i.iop3xx_i2c_read_byte.exit.i.i_crit_edge, %if.end40.i.i.i.i.i.iop3xx_i2c_read_byte.exit.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi i32 [ %rc.1.i.i.i.i.i.i, %if.end40.i.i.i.i.i.iop3xx_i2c_read_byte.exit.i.i_crit_edge ], [ -110, %if.else.i.i.i.i.i.iop3xx_i2c_read_byte.exit.i.i_crit_edge ], [ 0, %do.cond48.i.i.i.i.i.iop3xx_i2c_read_byte.exit.i.i_crit_edge ]
  %61 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %48, align 4
  %add.ptr7.i.i.i = getelementptr i8, ptr %62, i32 12
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i.i) #7, !srcloc !44
  %conv.i.i.i = trunc i32 %63 to i8
  %64 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv.i.i.i, ptr %arrayidx.i.i, align 1
  %inc.i.i = add nuw nsw i32 %ii.013.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i.i.i)
  %cmp.i17.i = icmp ne i32 %retval.0.i.i.i.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %conv6.i)
  %cmp1.not.i.i = icmp eq i32 %inc.i.i, %conv6.i
  %or.cond.i.i = select i1 %cmp.i17.i, i1 true, i1 %cmp1.not.i.i
  br i1 %or.cond.i.i, label %iop3xx_i2c_read_byte.exit.i.i.iop3xx_i2c_handle_msg.exit_crit_edge, label %iop3xx_i2c_read_byte.exit.i.i.for.body.i.i_crit_edge

iop3xx_i2c_read_byte.exit.i.i.for.body.i.i_crit_edge: ; preds = %iop3xx_i2c_read_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

iop3xx_i2c_read_byte.exit.i.i.iop3xx_i2c_handle_msg.exit_crit_edge: ; preds = %iop3xx_i2c_read_byte.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iop3xx_i2c_handle_msg.exit

if.else.i:                                        ; preds = %if.end.i17
  br i1 %cmp1.not8.i.i, label %if.else.i.iop3xx_i2c_handle_msg.exit_crit_edge, label %for.body.lr.ph.i20.i

if.else.i.iop3xx_i2c_handle_msg.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iop3xx_i2c_handle_msg.exit

for.body.lr.ph.i20.i:                             ; preds = %if.else.i
  %sub.i19.i = add nsw i32 %conv6.i, -1
  br label %for.body.i31.i

for.body.i31.i:                                   ; preds = %for.body.i31.i.for.body.i31.i_crit_edge, %for.body.lr.ph.i20.i
  %ii.09.i.i = phi i32 [ 0, %for.body.lr.ph.i20.i ], [ %inc.i27.i, %for.body.i31.i.for.body.i31.i_crit_edge ]
  %arrayidx.i21.i = getelementptr i8, ptr %44, i32 %ii.09.i.i
  %65 = ptrtoint ptr %arrayidx.i21.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.i21.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %ii.09.i.i, i32 %sub.i19.i)
  %cmp2.not.i22.i = icmp eq i32 %ii.09.i.i, %sub.i19.i
  %67 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %48, align 4
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #7, !srcloc !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i.i.i) #7
  %conv.i.i23.i = zext i8 %66 to i32
  %70 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %48, align 4
  %add.ptr2.i.i.i = getelementptr i8, ptr %71, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i.i, i32 %conv.i.i23.i) #7, !srcloc !43
  %and.i.i24.i = and i32 %69, -4
  %or.i.i25.i = or i32 %and.i.i24.i, 2
  %cr.0.i.i26.i = select i1 %cmp2.not.i22.i, i32 %or.i.i25.i, i32 %and.i.i24.i
  %or4.i.i.i = or i32 %cr.0.i.i26.i, 8
  %72 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %48, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %or4.i.i.i) #7, !srcloc !43
  %call7.i.i.i = call fastcc i32 @iop3xx_i2c_wait_tx_done(ptr noundef %48, ptr noundef nonnull %status.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i.i.i) #7
  %inc.i27.i = add nuw nsw i32 %ii.09.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i.i)
  %cmp.i28.i = icmp ne i32 %call7.i.i.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i27.i, i32 %conv6.i)
  %cmp1.not.i29.i = icmp eq i32 %inc.i27.i, %conv6.i
  %or.cond.i30.i = select i1 %cmp.i28.i, i1 true, i1 %cmp1.not.i29.i
  br i1 %or.cond.i30.i, label %for.body.i31.i.iop3xx_i2c_handle_msg.exit_crit_edge, label %for.body.i31.i.for.body.i31.i_crit_edge

for.body.i31.i.for.body.i31.i_crit_edge:          ; preds = %for.body.i31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i31.i

for.body.i31.i.iop3xx_i2c_handle_msg.exit_crit_edge: ; preds = %for.body.i31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iop3xx_i2c_handle_msg.exit

iop3xx_i2c_handle_msg.exit.thread:                ; preds = %iop3xx_i2c_send_target_addr.exit.i.iop3xx_i2c_handle_msg.exit.thread_crit_edge, %iop3xx_i2c_send_target_addr.exit.thread.i
  %retval.0.i.ph = phi i32 [ -16, %iop3xx_i2c_send_target_addr.exit.thread.i ], [ %call8.i.i, %iop3xx_i2c_send_target_addr.exit.i.iop3xx_i2c_handle_msg.exit.thread_crit_edge ]
  %inc45 = add nuw i32 %im.030, 1
  br label %for.end

iop3xx_i2c_handle_msg.exit:                       ; preds = %for.body.i31.i.iop3xx_i2c_handle_msg.exit_crit_edge, %if.else.i.iop3xx_i2c_handle_msg.exit_crit_edge, %iop3xx_i2c_read_byte.exit.i.i.iop3xx_i2c_handle_msg.exit_crit_edge, %if.then1.i.iop3xx_i2c_handle_msg.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then1.i.iop3xx_i2c_handle_msg.exit_crit_edge ], [ 0, %if.else.i.iop3xx_i2c_handle_msg.exit_crit_edge ], [ %call7.i.i.i, %for.body.i31.i.iop3xx_i2c_handle_msg.exit_crit_edge ], [ %retval.0.i.i.i.i.i, %iop3xx_i2c_read_byte.exit.i.i.iop3xx_i2c_handle_msg.exit_crit_edge ]
  %inc = add nuw i32 %im.030, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp ne i32 %retval.0.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %num)
  %cmp1.not = icmp eq i32 %inc, %num
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1.not
  br i1 %or.cond, label %iop3xx_i2c_handle_msg.exit.for.end_crit_edge, label %iop3xx_i2c_handle_msg.exit.for.body_crit_edge

iop3xx_i2c_handle_msg.exit.for.body_crit_edge:    ; preds = %iop3xx_i2c_handle_msg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

iop3xx_i2c_handle_msg.exit.for.end_crit_edge:     ; preds = %iop3xx_i2c_handle_msg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %iop3xx_i2c_handle_msg.exit.for.end_crit_edge, %iop3xx_i2c_handle_msg.exit.thread, %iop3xx_i2c_enable.exit.for.end_crit_edge
  %im.0.lcssa = phi i32 [ 0, %iop3xx_i2c_enable.exit.for.end_crit_edge ], [ %inc45, %iop3xx_i2c_handle_msg.exit.thread ], [ %inc, %iop3xx_i2c_handle_msg.exit.for.end_crit_edge ]
  %ret.0.lcssa = phi i32 [ 0, %iop3xx_i2c_enable.exit.for.end_crit_edge ], [ %retval.0.i.ph, %iop3xx_i2c_handle_msg.exit.thread ], [ %retval.0.i, %iop3xx_i2c_handle_msg.exit.for.end_crit_edge ]
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %1, align 4
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #7, !srcloc !44
  %and.i = and i32 %76, -44
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %and.i) #7, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.lcssa)
  %tobool.not = icmp eq i32 %ret.0.lcssa, 0
  %spec.select = select i1 %tobool.not, i32 %im.0.lcssa, i32 %ret.0.lcssa
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iop3xx_i2c_func(ptr nocapture noundef readnone %adap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iop3xx_i2c_wait_tx_done(ptr noundef %iop3xx_adap, ptr nocapture noundef writeonly %status) unnamed_addr #2 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i.i = getelementptr inbounds %struct.i2c_algo_iop3xx_data, ptr %iop3xx_adap, i32 0, i32 2
  %SR_received.i.i = getelementptr inbounds %struct.i2c_algo_iop3xx_data, ptr %iop3xx_adap, i32 0, i32 4
  %waitq.i = getelementptr inbounds %struct.i2c_algo_iop3xx_data, ptr %iop3xx_adap, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond48.i.do.body.i_crit_edge, %entry
  call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 174) #7
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #7
  %0 = ptrtoint ptr %SR_received.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %SR_received.i.i, align 4
  store i32 0, ptr %SR_received.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i.i) #7
  %and.i2 = and i32 %1, 1120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2)
  %cmp.i3.not = icmp eq i32 %and.i2, 0
  br i1 %cmp.i3.not, label %if.then11.i, label %do.body.i.if.end40.i_crit_edge

do.body.i.if.end40.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i

if.then11.i:                                      ; preds = %do.body.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  %2 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #7
  br label %for.cond.i

for.cond.i:                                       ; preds = %cleanup.i, %if.then11.i
  %__ret12.0.i = phi i32 [ 100, %if.then11.i ], [ %call37.i, %cleanup.i ]
  %call13.i = call i32 @prepare_to_wait_event(ptr noundef %waitq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #7
  %call2.i76.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #7
  %3 = ptrtoint ptr %SR_received.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %SR_received.i.i, align 4
  store i32 0, ptr %SR_received.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call2.i76.i) #7
  %and.i = and i32 %4, 1120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i1 = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret12.0.i)
  %tobool21.not.i = icmp eq i32 %__ret12.0.i, 0
  %5 = select i1 %cmp.i1, i1 %tobool21.not.i, i1 false
  %__ret12.1.i = select i1 %5, i32 1, i32 %__ret12.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret12.1.i)
  %tobool27.not.i = icmp eq i32 %__ret12.1.i, 0
  %6 = select i1 %cmp.i1, i1 true, i1 %tobool27.not.i
  br i1 %6, label %for.end.i, label %if.end33.i

if.end33.i:                                       ; preds = %for.cond.i
  %tobool34.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool34.not.i, label %cleanup.i, label %if.end33.i.__out.i_crit_edge

if.end33.i.__out.i_crit_edge:                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out.i

cleanup.i:                                        ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  %call37.i = call i32 @schedule_timeout(i32 noundef %__ret12.1.i) #7
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @finish_wait(ptr noundef %waitq.i, ptr noundef nonnull %__wq_entry.i) #7
  br label %__out.i

__out.i:                                          ; preds = %for.end.i, %if.end33.i.__out.i_crit_edge
  %cmp.i114 = phi i1 [ %cmp.i1, %for.end.i ], [ false, %if.end33.i.__out.i_crit_edge ]
  %__ret12.280.i = phi i32 [ %__ret12.1.i, %for.end.i ], [ %call13.i, %if.end33.i.__out.i_crit_edge ]
  %conv.i7 = zext i1 %cmp.i114 to i32
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  br label %if.end40.i

if.end40.i:                                       ; preds = %__out.i, %do.body.i.if.end40.i_crit_edge
  %__ret.1.i = phi i32 [ 100, %do.body.i.if.end40.i_crit_edge ], [ %__ret12.280.i, %__out.i ]
  %done.0.i = phi i32 [ 1, %do.body.i.if.end40.i_crit_edge ], [ %conv.i7, %__out.i ]
  %sr.0.i = phi i32 [ %1, %do.body.i.if.end40.i_crit_edge ], [ %4, %__out.i ]
  %and.i.i = and i32 %sr.0.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 -322, i32 -321
  %spec.select15.i.i = select i1 %tobool.not.i.i, i32 0, i32 -321
  %and4.i.i = and i32 %sr.0.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  %rc.1.i.i = select i1 %tobool5.not.i.i, i32 %spec.select15.i.i, i32 %spec.select.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1.i.i)
  %cmp.i = icmp slt i32 %rc.1.i.i, 0
  br i1 %cmp.i, label %if.end40.i.iop3xx_i2c_wait_event.exit_crit_edge, label %if.else.i

if.end40.i.iop3xx_i2c_wait_event.exit_crit_edge:  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iop3xx_i2c_wait_event.exit

if.else.i:                                        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1.i)
  %tobool44.not.i = icmp eq i32 %__ret.1.i, 0
  br i1 %tobool44.not.i, label %if.else.i.iop3xx_i2c_wait_event.exit_crit_edge, label %do.cond48.i

if.else.i.iop3xx_i2c_wait_event.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iop3xx_i2c_wait_event.exit

do.cond48.i:                                      ; preds = %if.else.i
  %tobool49.not.i = icmp eq i32 %done.0.i, 0
  br i1 %tobool49.not.i, label %do.cond48.i.do.body.i_crit_edge, label %do.cond48.i.iop3xx_i2c_wait_event.exit_crit_edge

do.cond48.i.iop3xx_i2c_wait_event.exit_crit_edge: ; preds = %do.cond48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iop3xx_i2c_wait_event.exit

do.cond48.i.do.body.i_crit_edge:                  ; preds = %do.cond48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

iop3xx_i2c_wait_event.exit:                       ; preds = %do.cond48.i.iop3xx_i2c_wait_event.exit_crit_edge, %if.else.i.iop3xx_i2c_wait_event.exit_crit_edge, %if.end40.i.iop3xx_i2c_wait_event.exit_crit_edge
  %retval.0.i = phi i32 [ %rc.1.i.i, %if.end40.i.iop3xx_i2c_wait_event.exit_crit_edge ], [ -110, %if.else.i.iop3xx_i2c_wait_event.exit_crit_edge ], [ 0, %do.cond48.i.iop3xx_i2c_wait_event.exit_crit_edge ]
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sr.0.i, ptr %status, align 4
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !25, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__initcall__kmod_i2c_iop3xx__288_539_iop3xx_i2c_driver_init6, !1, !"__initcall__kmod_i2c_iop3xx__288_539_iop3xx_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-iop3xx.c", i32 539, i32 1}
!2 = !{ptr @__exitcall_iop3xx_i2c_driver_exit, !1, !"__exitcall_iop3xx_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-iop3xx.c", i32 541, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-iop3xx.c", i32 542, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-iop3xx.c", i32 543, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias293, !11, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-iop3xx.c", i32 544, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-iop3xx.c", i32 534, i32 11}
!14 = !{ptr @iop3xx_i2c_driver, !15, !"iop3xx_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-iop3xx.c", i32 530, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-iop3xx.c", i32 436, i32 9}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/i2c/busses/i2c-iop3xx.c", i32 443, i32 9}
!20 = !{ptr @iop3xx_i2c_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/i2c/busses/i2c-iop3xx.c", i32 494, i32 2}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @iop3xx_i2c_probe.__key.4, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/i2c/busses/i2c-iop3xx.c", i32 495, i32 2}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @i2c_id, !27, !"i2c_id", i1 false, i1 false}
!27 = !{!"../drivers/i2c/busses/i2c-iop3xx.c", i32 43, i32 12}
!28 = !{ptr @iop3xx_i2c_algo, !29, !"iop3xx_i2c_algo", i1 false, i1 false}
!29 = !{!"../drivers/i2c/busses/i2c-iop3xx.c", i32 386, i32 35}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/i2c/busses/i2c-iop3xx.c", i32 170, i32 17}
!32 = !{ptr @i2c_iop3xx_match, !33, !"i2c_iop3xx_match", i1 false, i1 false}
!33 = !{!"../drivers/i2c/busses/i2c-iop3xx.c", i32 523, i32 34}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 4209368}
!44 = !{i64 4209786}
