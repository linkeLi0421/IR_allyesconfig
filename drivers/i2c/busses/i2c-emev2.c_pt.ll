; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-emev2.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-emev2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.em_i2c_device = type { ptr, %struct.i2c_adapter, %struct.completion, ptr, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_emev2__288_445_em_i2c_driver_init6 = internal global ptr @em_i2c_driver_init, section ".initcall6.init", align 4
@em_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @em_i2c_probe, ptr @em_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @em_i2c_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_em_i2c_driver_exit = internal global ptr @em_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [43 x i8] c"i2c_emev2.description=EMEV2 I2C bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [28 x i8] c"i2c_emev2.author=Ian Molton\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [57 x i8] c"i2c_emev2.author=Wolfram Sang <wsa@sang-engineering.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [44 x i8] c"i2c_emev2.file=drivers/i2c/busses/i2c-emev2\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [25 x i8] c"i2c_emev2.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"em-i2c\00", [25 x i8] zeroinitializer }, align 32
@em_i2c_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,iic-emev2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EMEV2 I2C\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sclk\00", [27 x i8] zeroinitializer }, align 32
@em_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @em_i2c_xfer, ptr null, ptr null, ptr null, ptr @em_i2c_func, ptr @em_i2c_reg_slave, ptr @em_i2c_unreg_slave }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"em_i2c\00", [25 x i8] zeroinitializer }, align 32
@em_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 413, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Added i2c controller %d, irq %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"em_i2c_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/i2c/busses/i2c-emev2.c\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@em_i2c_probe._entry_ptr = internal global ptr @em_i2c_probe._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"em_i2c_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 437, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 441, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [11 x i8] c"em_i2c_ids\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 432, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 374, i32 27 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 376, i32 40 }
@___asan_gen_.25 = private unnamed_addr constant [12 x i8] c"em_i2c_algo\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 354, i32 35 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 403, i32 5 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private constant [34 x i8] c"../drivers/i2c/busses/i2c-emev2.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 412, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 87, i32 2 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_em_i2c_driver_exit, ptr @__initcall__kmod_i2c_emev2__288_445_em_i2c_driver_init6, ptr @em_i2c_driver_exit, ptr @em_i2c_probe._entry, ptr @em_i2c_probe._entry_ptr, ptr @em_i2c_driver, ptr @.str, ptr @em_i2c_ids, ptr @.str.1, ptr @.str.2, ptr @em_i2c_algo, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @init_completion.__key, ptr @.str.9], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em_i2c_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @em_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @em_i2c_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @em_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @em_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1440, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %call.i, align 8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %adap = getelementptr inbounds %struct.em_i2c_device, ptr %call.i, i32 0, i32 1
  %name = getelementptr inbounds %struct.em_i2c_device, ptr %call.i, i32 0, i32 1, i32 12
  %call8 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str.1, i32 noundef 48) #7
  %call10 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #7
  %sclk = getelementptr inbounds %struct.em_i2c_device, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %sclk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call10, ptr %sclk, align 8
  %cmp.i95 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %call.i96 = tail call i32 @clk_prepare(ptr noundef %call10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool.not.i = icmp eq i32 %call.i96, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end16
  %call1.i = tail call i32 @clk_enable(ptr noundef %call10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end21, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call10) #7
  br label %cleanup

if.end21:                                         ; preds = %if.end.i
  %timeout = getelementptr inbounds %struct.em_i2c_device, ptr %call.i, i32 0, i32 1, i32 7
  %4 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 10, ptr %timeout, align 4
  %retries = getelementptr inbounds %struct.em_i2c_device, ptr %call.i, i32 0, i32 1, i32 8
  %5 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 5, ptr %retries, align 8
  %parent = getelementptr inbounds %struct.em_i2c_device, ptr %call.i, i32 0, i32 1, i32 9, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %parent, align 8
  %algo = getelementptr inbounds %struct.em_i2c_device, ptr %call.i, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @em_i2c_algo, ptr %algo, align 8
  %8 = ptrtoint ptr %adap to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %adap, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %of_node33 = getelementptr inbounds %struct.em_i2c_device, ptr %call.i, i32 0, i32 1, i32 9, i32 27
  %11 = ptrtoint ptr %of_node33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %of_node33, align 8
  %msg_done = getelementptr inbounds %struct.em_i2c_device, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %msg_done to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %msg_done, align 4
  %wait.i = getelementptr inbounds %struct.em_i2c_device, ptr %call.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @init_completion.__key) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i97 = getelementptr inbounds %struct.em_i2c_device, ptr %call.i, i32 0, i32 1, i32 9, i32 8
  %14 = ptrtoint ptr %driver_data.i.i97 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i.i97, align 4
  tail call fastcc void @em_i2c_reset(ptr noundef %adap)
  %call36 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp = icmp slt i32 %call36, 0
  br i1 %cmp, label %if.end21.err_clk_crit_edge, label %if.end38

if.end21.err_clk_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk

if.end38:                                         ; preds = %if.end21
  %irq = getelementptr inbounds %struct.em_i2c_device, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call36, ptr %irq, align 8
  %call.i98 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call36, ptr noundef nonnull @em_i2c_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool42.not = icmp eq i32 %call.i98, 0
  br i1 %tobool42.not, label %if.end44, label %if.end38.err_clk_crit_edge

if.end38.err_clk_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk

if.end44:                                         ; preds = %if.end38
  %call46 = tail call i32 @i2c_add_adapter(ptr noundef %adap) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %do.end, label %if.end44.err_clk_crit_edge

if.end44.err_clk_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_clk

do.end:                                           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %nr = getelementptr inbounds %struct.em_i2c_device, ptr %call.i, i32 0, i32 1, i32 11
  %16 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr, align 4
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %17, i32 noundef %19) #10
  br label %cleanup

err_clk:                                          ; preds = %if.end44.err_clk_crit_edge, %if.end38.err_clk_crit_edge, %if.end21.err_clk_crit_edge
  %ret.0 = phi i32 [ %call36, %if.end21.err_clk_crit_edge ], [ %call.i98, %if.end38.err_clk_crit_edge ], [ %call46, %if.end44.err_clk_crit_edge ]
  %20 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sclk, align 8
  tail call void @clk_disable(ptr noundef %21) #7
  tail call void @clk_unprepare(ptr noundef %21) #7
  br label %cleanup

cleanup:                                          ; preds = %err_clk, %do.end, %if.then3.i, %if.end16.cleanup_crit_edge, %if.then13, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %3, %if.then13 ], [ %ret.0, %err_clk ], [ 0, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i96, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em_i2c_remove(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adap = getelementptr inbounds %struct.em_i2c_device, ptr %1, i32 0, i32 1
  tail call void @i2c_del_adapter(ptr noundef %adap) #7
  %sclk = getelementptr inbounds %struct.em_i2c_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sclk, align 8
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @em_i2c_reset(ptr nocapture noundef readonly %adap) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %3) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.do.body42_crit_edge, label %do.body

entry.do.body42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body42

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %7, i8 0) #7, !srcloc !49
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %do.body
  %retr.0 = phi i32 [ 1000, %do.body ], [ %dec, %while.cond.while.cond_crit_edge ]
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %cmp = icmp ne i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retr.0)
  %tobool14.not = icmp eq i32 %retr.0, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool14.not
  %dec = add nsw i32 %retr.0, -1
  br i1 %or.cond, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br i1 %tobool14.not, label %do.end28, label %while.end.do.body42_crit_edge, !prof !51

while.end.do.body42_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body42

do.end28:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 118, i32 noundef 9, ptr noundef null) #7
  br label %do.body42

do.body42:                                        ; preds = %do.end28, %while.end.do.body42_crit_edge, %entry.do.body42_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %add.ptr46 = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr46, i8 4) #7, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %add.ptr51 = getelementptr i8, ptr %14, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr51, i8 3) #7, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %add.ptr56 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr56, i8 8) #7, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %18, i8 1) #7, !srcloc !49
  br label %while.cond62

while.cond62:                                     ; preds = %while.cond62.while.cond62_crit_edge, %do.body42
  %retr.1 = phi i32 [ 1000, %do.body42 ], [ %dec77, %while.cond62.while.cond62_crit_edge ]
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 8
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %20) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp71 = icmp ne i8 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retr.1)
  %tobool74.not = icmp eq i32 %retr.1, 0
  %or.cond125 = select i1 %cmp71, i1 true, i1 %tobool74.not
  %dec77 = add nsw i32 %retr.1, -1
  br i1 %or.cond125, label %while.end78, label %while.cond62.while.cond62_crit_edge

while.cond62.while.cond62_crit_edge:              ; preds = %while.cond62
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond62

while.end78:                                      ; preds = %while.cond62
  br i1 %tobool74.not, label %do.end97, label %while.end78.if.end103_crit_edge, !prof !51

while.end78.if.end103_crit_edge:                  ; preds = %while.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

do.end97:                                         ; preds = %while.end78
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 136, i32 noundef 9, ptr noundef null) #7
  br label %if.end103

if.end103:                                        ; preds = %do.end97, %while.end78.if.end103_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em_i2c_irq_handler(i32 noundef %this_irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %value.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.i) #7
  %0 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value.i, align 1, !annotation !57
  %slave.i = getelementptr inbounds %struct.em_i2c_device, ptr %dev_id, i32 0, i32 4
  %1 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %slave.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_id, align 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 28
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  %conv.i = zext i8 %5 to i32
  %and.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_id, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  %or.i.i = or i8 %8, 64
  %9 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_id, align 8
  %add.ptr8.i.i = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i.i, i8 %or.i.i) #7, !srcloc !49
  br label %em_i2c_slave_irq.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %and6.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end11.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %slave.i, align 4
  %slave_cb.i.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %slave_cb.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %slave_cb.i.i, align 8
  %call.i.i = call i32 %14(ptr noundef %12, i32 noundef 4, ptr noundef nonnull %value.i) #7
  br label %if.end

if.end11.i:                                       ; preds = %if.end4.i
  %and13.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end11.i.if.end_crit_edge, label %if.end16.i

if.end11.i.if.end_crit_edge:                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end16.i:                                       ; preds = %if.end11.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_id, align 8
  %add.ptr.i78.i = getelementptr i8, ptr %16, i32 8
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i78.i) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  %or.i79.i = or i8 %17, 16
  %18 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_id, align 8
  %add.ptr8.i80.i = getelementptr i8, ptr %19, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i80.i, i8 %or.i79.i) #7, !srcloc !49
  %and18.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.else33.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.end16.i
  %and22.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_id, align 8
  %add.ptr.i86.i = getelementptr i8, ptr %21, i32 8
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i86.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %tobool23.not.i, label %if.else.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i82.i = or i8 %22, 8
  %23 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev_id, align 8
  %add.ptr8.i83.i = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i83.i, i8 %or.i82.i) #7, !srcloc !49
  %and26.i = and i32 %conv.i, 2
  %25 = xor i32 %and26.i, 2
  %26 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %slave.i, align 4
  %slave_cb.i84.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %slave_cb.i84.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %slave_cb.i84.i, align 8
  %call.i85.i = call i32 %29(ptr noundef %27, i32 noundef %25, ptr noundef nonnull %value.i) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %value.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %value.i, align 1
  %32 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_id, align 8
  %add.ptr31.i = getelementptr i8, ptr %33, i32 4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31.i, i8 %31) #7, !srcloc !49
  br label %em_i2c_slave_irq.exit.thread

if.else.i:                                        ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i87.i = or i8 %22, 64
  %34 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_id, align 8
  %add.ptr8.i88.i = getelementptr i8, ptr %35, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i88.i, i8 %or.i87.i) #7, !srcloc !49
  br label %em_i2c_slave_irq.exit.thread

if.else33.i:                                      ; preds = %if.end16.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_id, align 8
  %add.ptr.i89.i = getelementptr i8, ptr %37, i32 8
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i89.i) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  %and.i.i = and i8 %38, -13
  %or.i90.i = or i8 %and.i.i, 4
  %39 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_id, align 8
  %add.ptr8.i91.i = getelementptr i8, ptr %40, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i91.i, i8 %or.i90.i) #7, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  %41 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_id, align 8
  %add.ptr.i92.i = getelementptr i8, ptr %42, i32 8
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i92.i) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  %and.i93.i = and i8 %43, -41
  %or.i94.i = or i8 %and.i93.i, 32
  %44 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_id, align 8
  %add.ptr8.i95.i = getelementptr i8, ptr %45, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i95.i, i8 %or.i94.i) #7, !srcloc !49
  %and35.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.else40.i, label %if.then37.i

if.then37.i:                                      ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %slave.i, align 4
  %slave_cb.i96.i = getelementptr inbounds %struct.i2c_client, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %slave_cb.i96.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %slave_cb.i96.i, align 8
  %call.i97.i = call i32 %49(ptr noundef %47, i32 noundef 1, ptr noundef nonnull %value.i) #7
  br label %em_i2c_slave_irq.exit.thread

if.else40.i:                                      ; preds = %if.else33.i
  %50 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_id, align 8
  %add.ptr44.i = getelementptr i8, ptr %51, i32 4
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr44.i) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  %53 = ptrtoint ptr %value.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %value.i, align 1
  %54 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %slave.i, align 4
  %slave_cb.i98.i = getelementptr inbounds %struct.i2c_client, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %slave_cb.i98.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %slave_cb.i98.i, align 8
  %call.i99.i = call i32 %57(ptr noundef %55, i32 noundef 3, ptr noundef nonnull %value.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99.i)
  %cmp.i = icmp slt i32 %call.i99.i, 0
  br i1 %cmp.i, label %if.then51.i, label %if.else40.i.em_i2c_slave_irq.exit.thread_crit_edge

if.else40.i.em_i2c_slave_irq.exit.thread_crit_edge: ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %em_i2c_slave_irq.exit.thread

if.then51.i:                                      ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  call void @arm_heavy_mb() #7
  %58 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_id, align 8
  %add.ptr.i2 = getelementptr i8, ptr %59, i32 8
  %60 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2) #7, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  %and.i3 = and i8 %60, -5
  %61 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev_id, align 8
  %add.ptr8.i = getelementptr i8, ptr %62, i32 8
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i, i8 %and.i3) #7, !srcloc !49
  br label %em_i2c_slave_irq.exit.thread

em_i2c_slave_irq.exit.thread:                     ; preds = %if.then51.i, %if.else40.i.em_i2c_slave_irq.exit.thread_crit_edge, %if.then37.i, %if.else.i, %if.then24.i, %if.then3.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #7
  br label %cleanup

if.end:                                           ; preds = %if.end11.i.if.end_crit_edge, %if.then8.i, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.i) #7
  %msg_done = getelementptr inbounds %struct.em_i2c_device, ptr %dev_id, i32 0, i32 2
  call void @complete(ptr noundef %msg_done) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %em_i2c_slave_irq.exit.thread
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em_i2c_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 32
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  %5 = and i8 %4, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp35 = icmp sgt i32 %num, 0
  br i1 %cmp35, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub = add nsw i32 %num, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.036
  call void @__sanitizer_cov_trace_cmp4(i32 %i.036, i32 %sub)
  %cmp4.not = icmp eq i32 %i.036, %sub
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %flags.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.036, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags.i, align 2
  %10 = and i16 %9, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i = icmp eq i16 %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %7, align 8
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 8
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  %or.i.i = or i8 %13, 12
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %7, align 8
  %add.ptr8.i.i = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i.i, i8 %or.i.i) #7, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %7, align 8
  %add.ptr.i80.i = getelementptr i8, ptr %17, i32 8
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i80.i) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  %or.i81.i = or i8 %18, 2
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %7, align 8
  %add.ptr8.i82.i = getelementptr i8, ptr %20, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i82.i, i8 %or.i81.i) #7, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx, align 4
  %conv.i.i = trunc i16 %22 to i8
  %shl.i.i = shl i8 %conv.i.i, 1
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %flags.i, align 2
  %25 = trunc i16 %24 to i8
  %26 = and i8 %25, 1
  %or.i83.i = or i8 %26, %shl.i.i
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %7, align 8
  %add.ptr.i = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %or.i83.i) #7, !srcloc !49
  %msg_done.i.i = getelementptr inbounds %struct.em_i2c_device, ptr %7, i32 0, i32 2
  %29 = ptrtoint ptr %msg_done.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %msg_done.i.i, align 4
  %timeout.i.i = getelementptr inbounds %struct.em_i2c_device, ptr %7, i32 0, i32 1, i32 7
  %30 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %timeout.i.i, align 4
  %call.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %msg_done.i.i, i32 noundef %31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.select.unfold_crit_edge, label %if.end.i.i

for.body.select.unfold_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %select.unfold

if.end.i.i:                                       ; preds = %for.body
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %7, align 8
  %add.ptr.i84.i = getelementptr i8, ptr %33, i32 28
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i84.i) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  %conv.i85.i = zext i8 %34 to i32
  %and.i.i = and i32 %conv.i85.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool4.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i, label %if.end.i.i.select.unfold_crit_edge

if.end.i.i.select.unfold_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %select.unfold

if.end.i:                                         ; preds = %if.end.i.i
  %and5.i = and i32 %conv.i85.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %7, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %36, i32 8
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i.i) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  %or.i.i.i = or i8 %37, 17
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %7, align 8
  %add.ptr8.i.i.i = getelementptr i8, ptr %39, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i.i.i, i8 %or.i.i.i) #7, !srcloc !49
  %40 = ptrtoint ptr %msg_done.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %msg_done.i.i, align 4
  %41 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %timeout.i.i, align 4
  %call.i.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %msg_done.i.i, i32 noundef %42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then7.i.cleanup_crit_edge, label %if.end.i.i.i

if.then7.i.cleanup_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %7, align 8
  %add.ptr.i2.i.i = getelementptr i8, ptr %44, i32 28
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i.i) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i
  br i1 %tobool.not.i, label %if.end8.i.if.end16.i_crit_edge, label %if.then10.i

if.end8.i.if.end16.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.then10.i:                                      ; preds = %if.end8.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  %46 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %7, align 8
  %add.ptr.i86.i = getelementptr i8, ptr %47, i32 8
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i86.i) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  %and.i87.i = and i8 %48, -13
  %or.i88.i = or i8 %and.i87.i, 4
  %49 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %7, align 8
  %add.ptr8.i89.i = getelementptr i8, ptr %50, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i89.i, i8 %or.i88.i) #7, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  %51 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %7, align 8
  %add.ptr.i90.i = getelementptr i8, ptr %52, i32 8
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i90.i) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  %and.i91.i = and i8 %53, -41
  %or.i92.i = or i8 %and.i91.i, 32
  %54 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %7, align 8
  %add.ptr8.i93.i = getelementptr i8, ptr %55, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i93.i, i8 %or.i92.i) #7, !srcloc !49
  %56 = ptrtoint ptr %msg_done.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %msg_done.i.i, align 4
  %57 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %timeout.i.i, align 4
  %call.i96.i = tail call i32 @wait_for_completion_timeout(ptr noundef %msg_done.i.i, i32 noundef %58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96.i)
  %tobool.not.i97.i = icmp eq i32 %call.i96.i, 0
  br i1 %tobool.not.i97.i, label %if.then10.i.select.unfold_crit_edge, label %if.end.i103.i

if.then10.i.select.unfold_crit_edge:              ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %select.unfold

if.end.i103.i:                                    ; preds = %if.then10.i
  %59 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %7, align 8
  %add.ptr.i98.i = getelementptr i8, ptr %60, i32 28
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i98.i) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  %conv.i99.i = zext i8 %61 to i32
  %and.i100.i = and i32 %conv.i99.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i100.i)
  %tobool4.not.i101.i = icmp eq i32 %and.i100.i, 0
  br i1 %tobool4.not.i101.i, label %if.end.i103.i.if.end16.i_crit_edge, label %if.end.i103.i.select.unfold_crit_edge

if.end.i103.i.select.unfold_crit_edge:            ; preds = %if.end.i103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %select.unfold

if.end.i103.i.if.end16.i_crit_edge:               ; preds = %if.end.i103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end.i103.i.if.end16.i_crit_edge, %if.end8.i.if.end16.i_crit_edge
  %status.0.i = phi i32 [ %conv.i85.i, %if.end8.i.if.end16.i_crit_edge ], [ %conv.i99.i, %if.end.i103.i.if.end16.i_crit_edge ]
  %len.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.036, i32 2
  %62 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp18154.not.i = icmp eq i16 %63, 0
  br i1 %cmp18154.not.i, label %if.end16.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end16.i.for.end.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end16.i
  %buf.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.036, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %count.0156.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %status.1155.i = phi i32 [ %status.0.i, %for.body.lr.ph.i ], [ %conv.i124.i, %for.inc.i.for.body.i_crit_edge ]
  br i1 %tobool.not.i, label %if.else.i, label %if.then21.i

if.then21.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %7, align 8
  %add.ptr23.i = getelementptr i8, ptr %65, i32 4
  %66 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr23.i) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  %67 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %buf.i, align 4
  %arrayidx.i = getelementptr i8, ptr %68, i32 %count.0156.i
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %66, ptr %arrayidx.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  %70 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %7, align 8
  %add.ptr.i106.i = getelementptr i8, ptr %71, i32 8
  %72 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i106.i) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  %or.i107.i = or i8 %72, 32
  %73 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %7, align 8
  %add.ptr8.i108.i = getelementptr i8, ptr %74, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i108.i, i8 %or.i107.i) #7, !srcloc !49
  br label %if.end37.i

if.else.i:                                        ; preds = %for.body.i
  %and26.i = and i32 %status.1155.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool27.not.i, label %if.then28.i, label %do.body30.i

if.then28.i:                                      ; preds = %if.else.i
  %75 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %7, align 8
  %add.ptr.i.i109.i = getelementptr i8, ptr %76, i32 8
  %77 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i109.i) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  %or.i.i110.i = or i8 %77, 17
  %78 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %7, align 8
  %add.ptr8.i.i111.i = getelementptr i8, ptr %79, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i.i111.i, i8 %or.i.i110.i) #7, !srcloc !49
  %80 = ptrtoint ptr %msg_done.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %msg_done.i.i, align 4
  %81 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %timeout.i.i, align 4
  %call.i.i114.i = tail call i32 @wait_for_completion_timeout(ptr noundef %msg_done.i.i, i32 noundef %82) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i114.i)
  %tobool.not.i.i115.i = icmp eq i32 %call.i.i114.i, 0
  br i1 %tobool.not.i.i115.i, label %if.then28.i.cleanup_crit_edge, label %if.end.i.i117.i

if.then28.i.cleanup_crit_edge:                    ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i117.i:                                  ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %7, align 8
  %add.ptr.i2.i116.i = getelementptr i8, ptr %84, i32 28
  %85 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i116.i) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  br label %cleanup

do.body30.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %buf.i, align 4
  %arrayidx34.i = getelementptr i8, ptr %87, i32 %count.0156.i
  %88 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx34.i, align 1
  %90 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %7, align 8
  %add.ptr36.i = getelementptr i8, ptr %91, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr36.i, i8 %89) #7, !srcloc !49
  br label %if.end37.i

if.end37.i:                                       ; preds = %do.body30.i, %if.then21.i
  %92 = ptrtoint ptr %msg_done.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %msg_done.i.i, align 4
  %93 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %timeout.i.i, align 4
  %call.i121.i = tail call i32 @wait_for_completion_timeout(ptr noundef %msg_done.i.i, i32 noundef %94) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121.i)
  %tobool.not.i122.i = icmp eq i32 %call.i121.i, 0
  br i1 %tobool.not.i122.i, label %if.end37.i.select.unfold_crit_edge, label %if.end.i128.i

if.end37.i.select.unfold_crit_edge:               ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %select.unfold

if.end.i128.i:                                    ; preds = %if.end37.i
  %95 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %7, align 8
  %add.ptr.i123.i = getelementptr i8, ptr %96, i32 28
  %97 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i123.i) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  %conv.i124.i = zext i8 %97 to i32
  %and.i125.i = and i32 %conv.i124.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i125.i)
  %tobool4.not.i126.i = icmp eq i32 %and.i125.i, 0
  br i1 %tobool4.not.i126.i, label %for.inc.i, label %if.end.i128.i.select.unfold_crit_edge

if.end.i128.i.select.unfold_crit_edge:            ; preds = %if.end.i128.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %select.unfold

for.inc.i:                                        ; preds = %if.end.i128.i
  %inc.i = add nuw nsw i32 %count.0156.i, 1
  %98 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %len.i, align 4
  %conv17.i = zext i16 %99 to i32
  %cmp18.i = icmp ult i32 %inc.i, %conv17.i
  br i1 %cmp18.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end16.i.for.end.i_crit_edge
  br i1 %cmp4.not, label %if.then44.i, label %for.end.i.for.inc_crit_edge

for.end.i.for.inc_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then44.i:                                      ; preds = %for.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  %100 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %7, align 8
  %add.ptr.i.i131.i = getelementptr i8, ptr %101, i32 8
  %102 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i131.i) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  %or.i.i132.i = or i8 %102, 17
  %103 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %7, align 8
  %add.ptr8.i.i133.i = getelementptr i8, ptr %104, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8.i.i133.i, i8 %or.i.i132.i) #7, !srcloc !49
  %105 = ptrtoint ptr %msg_done.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %msg_done.i.i, align 4
  %106 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %timeout.i.i, align 4
  %call.i.i136.i = tail call i32 @wait_for_completion_timeout(ptr noundef %msg_done.i.i, i32 noundef %107) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i136.i)
  %tobool.not.i.i137.i = icmp eq i32 %call.i.i136.i, 0
  br i1 %tobool.not.i.i137.i, label %if.then44.i.for.inc_crit_edge, label %if.end.i.i139.i

if.then44.i.for.inc_crit_edge:                    ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i.i139.i:                                  ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %7, align 8
  %add.ptr.i2.i138.i = getelementptr i8, ptr %109, i32 28
  %110 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i2.i138.i) #7, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  br label %for.inc

select.unfold:                                    ; preds = %if.end.i128.i.select.unfold_crit_edge, %if.end37.i.select.unfold_crit_edge, %if.end.i103.i.select.unfold_crit_edge, %if.then10.i.select.unfold_crit_edge, %if.end.i.i.select.unfold_crit_edge, %for.body.select.unfold_crit_edge
  %status.2.i = phi i32 [ -110, %if.end37.i.select.unfold_crit_edge ], [ -11, %if.end.i128.i.select.unfold_crit_edge ], [ -11, %if.end.i103.i.select.unfold_crit_edge ], [ -110, %if.then10.i.select.unfold_crit_edge ], [ -11, %if.end.i.i.select.unfold_crit_edge ], [ -110, %for.body.select.unfold_crit_edge ]
  tail call fastcc void @em_i2c_reset(ptr noundef %adap) #7
  br label %cleanup

for.inc:                                          ; preds = %if.end.i.i139.i, %if.then44.i.for.inc_crit_edge, %for.end.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %select.unfold, %if.end.i.i117.i, %if.then28.i.cleanup_crit_edge, %if.end.i.i.i, %if.then7.i.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %entry.cleanup_crit_edge ], [ %status.2.i, %select.unfold ], [ -6, %if.then7.i.cleanup_crit_edge ], [ -6, %if.end.i.i.i ], [ -6, %if.then28.i.cleanup_crit_edge ], [ -6, %if.end.i.i117.i ], [ %num, %for.cond.preheader.cleanup_crit_edge ], [ %num, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @em_i2c_func(ptr nocapture noundef readnone %adap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592745
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em_i2c_reg_slave(ptr noundef %slave) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %slave, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %slave1 = getelementptr inbounds %struct.em_i2c_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %slave1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %slave to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %slave, align 8
  %8 = and i16 %7, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool2.not = icmp eq i16 %8, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %slave1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %slave, ptr %slave1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void @arm_heavy_mb() #7
  %addr = getelementptr inbounds %struct.i2c_client, ptr %slave, i32 0, i32 1
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addr, align 2
  %conv6 = trunc i16 %11 to i8
  %shl = shl i8 %conv6, 1
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  %add.ptr = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %shl) #7, !srcloc !49
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -16, %entry.cleanup_crit_edge ], [ -97, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em_i2c_unreg_slave(ptr nocapture noundef readonly %slave) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %slave, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %slave1 = getelementptr inbounds %struct.em_i2c_device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %slave1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !51

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 339, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #7, !srcloc !49
  %irq = getelementptr inbounds %struct.em_i2c_device, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 8
  tail call void @synchronize_irq(i32 noundef %9) #7
  %10 = ptrtoint ptr %slave1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %slave1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_i2c_emev2__288_445_em_i2c_driver_init6, !1, !"__initcall__kmod_i2c_emev2__288_445_em_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-emev2.c", i32 445, i32 1}
!2 = !{ptr @__exitcall_em_i2c_driver_exit, !1, !"__exitcall_em_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-emev2.c", i32 447, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-emev2.c", i32 448, i32 1}
!7 = !{ptr @__UNIQUE_ID_author291, !8, !"__UNIQUE_ID_author291", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-emev2.c", i32 449, i32 1}
!9 = !{ptr @__UNIQUE_ID_file292, !10, !"__UNIQUE_ID_file292", i1 false, i1 false}
!10 = !{!"../drivers/i2c/busses/i2c-emev2.c", i32 450, i32 1}
!11 = !{ptr @__UNIQUE_ID_license293, !10, !"__UNIQUE_ID_license293", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-emev2.c", i32 441, i32 11}
!14 = !{ptr @em_i2c_driver, !15, !"em_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-emev2.c", i32 437, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-emev2.c", i32 374, i32 27}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/i2c/busses/i2c-emev2.c", i32 376, i32 40}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/i2c/busses/i2c-emev2.c", i32 403, i32 5}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-emev2.c", i32 412, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @em_i2c_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @em_i2c_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @em_i2c_algo, !31, !"em_i2c_algo", i1 false, i1 false}
!31 = !{!"../drivers/i2c/busses/i2c-emev2.c", i32 354, i32 35}
!32 = !{ptr @init_completion.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../include/linux/completion.h", i32 87, i32 2}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @em_i2c_ids, !36, !"em_i2c_ids", i1 false, i1 false}
!36 = !{!"../drivers/i2c/busses/i2c-emev2.c", i32 432, i32 34}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 6863751}
!47 = !{i64 2155603093}
!48 = !{i64 2155603317}
!49 = !{i64 6863356}
!50 = !{i64 2155603605}
!51 = !{!"branch_weights", i32 1, i32 2000}
!52 = !{i64 2155604337}
!53 = !{i64 2155604638}
!54 = !{i64 2155604932}
!55 = !{i64 2155605217}
!56 = !{i64 2155605510}
!57 = !{!"auto-init"}
!58 = !{i64 2155607454}
!59 = !{i64 2155602355}
!60 = !{i64 2155602530}
!61 = !{i64 2155607753}
!62 = !{i64 2155608102}
!63 = !{i64 2155607207}
!64 = !{i64 2155606294}
!65 = !{i64 2155602827}
!66 = !{i64 2155606653}
!67 = !{i64 2155609057}
!68 = !{i64 2155609846}
