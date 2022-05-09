; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-digicolor.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-digicolor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.dc_i2c = type { %struct.i2c_adapter, ptr, ptr, ptr, i32, ptr, i32, i32, %struct.spinlock, %struct.completion, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_digicolor__288_374_dc_i2c_driver_init6 = internal global ptr @dc_i2c_driver_init, section ".initcall6.init", align 4
@dc_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dc_i2c_probe, ptr @dc_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dc_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dc_i2c_driver_exit = internal global ptr @dc_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [54 x i8] c"i2c_digicolor.author=Baruch Siach <baruch@tkos.co.il>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [63 x i8] c"i2c_digicolor.description=Conexant Digicolor I2C master driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [52 x i8] c"i2c_digicolor.file=drivers/i2c/busses/i2c-digicolor\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [29 x i8] c"i2c_digicolor.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"digicolor-i2c\00", [18 x i8] zeroinitializer }, align 32
@dc_i2c_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cnxt,cx92755-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@dc_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&i2c->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Conexant Digicolor I2C adapter\00", [33 x i8] zeroinitializer }, align 32
@dc_i2c_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @dc_i2c_xfer, ptr null, ptr null, ptr null, ptr @dc_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dc_i2c_init_hw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 270, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"can't set bus speed of %u Hz\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dc_i2c_init_hw\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/i2c/busses/i2c-digicolor.c\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dc_i2c_init_hw._entry_ptr = internal global ptr @dc_i2c_init_hw._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"dc_i2c_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 366, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 370, i32 12 }
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"dc_i2c_match\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 360, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 298, i32 46 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 305, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 325, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"dc_i2c_algorithm\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 283, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 87, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [38 x i8] c"../drivers/i2c/busses/i2c-digicolor.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 269, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_dc_i2c_driver_exit, ptr @__initcall__kmod_i2c_digicolor__288_374_dc_i2c_driver_init6, ptr @dc_i2c_driver_exit, ptr @dc_i2c_init_hw._entry, ptr @dc_i2c_init_hw._entry_ptr, ptr @dc_i2c_driver, ptr @.str, ptr @dc_i2c_match, ptr @.str.1, ptr @dc_i2c_probe.__key, ptr @.str.2, ptr @.str.3, ptr @dc_i2c_algorithm, ptr @init_completion.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_i2c_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_i2c_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dc_i2c_init_hw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dc_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dc_i2c_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dc_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @dc_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dc_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1496, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %frequency = getelementptr inbounds %struct.dc_i2c, ptr %call.i, i32 0, i32 4
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef %frequency, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool5.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 100000, ptr %frequency, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %dev10 = getelementptr inbounds %struct.dc_i2c, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev10, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.dc_i2c, ptr %call.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @dc_i2c_probe.__key, i16 noundef signext 3) #6
  %done = getelementptr inbounds %struct.dc_i2c, ptr %call.i, i32 0, i32 9
  %7 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.dc_i2c, ptr %call.i, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #6
  %call13 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.dc_i2c, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call13, ptr %clk, align 8
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end8
  %call20 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %regs = getelementptr inbounds %struct.dc_i2c, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call20, ptr %regs, align 4
  %cmp.i108 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  %call27 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp = icmp slt i32 %call27, 0
  br i1 %cmp, label %if.end26.cleanup_crit_edge, label %if.end29

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.end26
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end29.dev_name.exit_crit_edge

if.end29.dev_name.exit_crit_edge:                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end29.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %if.end.i ], [ %13, %if.end29.dev_name.exit_crit_edge ]
  %call.i109 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call27, ptr noundef nonnull @dc_i2c_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %cmp34 = icmp slt i32 %call.i109, 0
  br i1 %cmp34, label %dev_name.exit.cleanup_crit_edge, label %if.end36

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %dev_name.exit
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 12
  %call37 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str.3, i32 noundef 48) #6
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %call.i, align 8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @dc_i2c_algorithm, ptr %algo, align 8
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 1
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %parent, align 8
  %of_node45 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 27
  %19 = ptrtoint ptr %of_node45 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %1, ptr %of_node45, align 8
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %algo_data, align 4
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk, align 8
  %call.i110 = tail call i32 @clk_get_rate(ptr noundef %22) #6
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %24, i8 1) #6, !srcloc !45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 21474800) #6
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %27, i8 0) #6, !srcloc !45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 21474800) #6
  %29 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %frequency, align 4
  %mul.i = shl i32 %30, 6
  %add.i = add i32 %call.i110, -1
  %sub.i = add i32 %add.i, %mul.i
  %div.i = udiv i32 %sub.i, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %sub.i)
  %cmp.i111 = icmp ugt i32 %mul.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %div.i)
  %cmp5.i = icmp ugt i32 %div.i, 255
  %or.cond.i = or i1 %cmp5.i, %cmp.i111
  br i1 %or.cond.i, label %dc_i2c_init_hw.exit, label %if.end50

dc_i2c_init_hw.exit:                              ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev10, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.5, i32 noundef %30) #9
  br label %cleanup

if.end50:                                         ; preds = %if.end36
  %33 = trunc i32 %div.i to i8
  %conv.i = add i8 %33, -1
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %add.ptr9.i = getelementptr i8, ptr %35, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9.i, i8 %conv.i) #6, !srcloc !45
  %36 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk, align 8
  %call.i114 = tail call i32 @clk_prepare(ptr noundef %37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %tobool.not.i115 = icmp eq i32 %call.i114, 0
  br i1 %tobool.not.i115, label %if.end.i116, label %if.end50.clk_prepare_enable.exit_crit_edge

if.end50.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i116:                                      ; preds = %if.end50
  %call1.i = tail call i32 @clk_enable(ptr noundef %37) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i116.if.end55_crit_edge, label %if.then3.i

if.end.i116.if.end55_crit_edge:                   ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then3.i:                                       ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %37) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end50.clk_prepare_enable.exit_crit_edge
  %retval.0.i117 = phi i32 [ %call.i114, %if.end50.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i117)
  %cmp53 = icmp slt i32 %retval.0.i117, 0
  br i1 %cmp53, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end55_crit_edge

clk_prepare_enable.exit.if.end55_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end55:                                         ; preds = %clk_prepare_enable.exit.if.end55_crit_edge, %if.end.i116.if.end55_crit_edge
  %call57 = tail call i32 @i2c_add_adapter(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.then59, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %39) #6
  tail call void @clk_unprepare(ptr noundef %39) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %if.end55.cleanup_crit_edge, %clk_prepare_enable.exit.cleanup_crit_edge, %dc_i2c_init_hw.exit, %dev_name.exit.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.then23, %if.then16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then16 ], [ %11, %if.then23 ], [ %call57, %if.then59 ], [ -12, %entry.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ], [ %call.i109, %dev_name.exit.cleanup_crit_edge ], [ -22, %dc_i2c_init_hw.exit ], [ %retval.0.i117, %clk_prepare_enable.exit.cleanup_crit_edge ], [ 0, %if.end55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dc_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @i2c_del_adapter(ptr noundef %1) #6
  %clk = getelementptr inbounds %struct.dc_i2c, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dc_i2c_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.dc_i2c, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #6, !srcloc !46
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 1) #6, !srcloc !45
  %lock = getelementptr inbounds %struct.dc_i2c, ptr %dev_id, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %5 = and i8 %2, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %switch.not = icmp eq i8 %5, 0
  br i1 %switch.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %error = getelementptr inbounds %struct.dc_i2c, ptr %dev_id, i32 0, i32 11
  %6 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -5, ptr %error, align 4
  %done = getelementptr inbounds %struct.dc_i2c, ptr %dev_id, i32 0, i32 9
  tail call void @complete(ptr noundef %done) #6
  br label %out

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.dc_i2c, ptr %dev_id, i32 0, i32 10
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.end.out_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 3, label %if.end.sw.bb10_crit_edge
    i32 4, label %sw.bb17
    i32 5, label %sw.bb27
  ]

if.end.sw.bb10_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %msg = getelementptr inbounds %struct.dc_i2c, ptr %dev_id, i32 0, i32 5
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %msg, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 4
  %.tr.i = trunc i16 %13 to i8
  %conv2.i = shl i8 %.tr.i, 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags.i, align 2
  %16 = trunc i16 %15 to i8
  %17 = and i8 %16, 1
  %18 = or i8 %17, %conv2.i
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 %18) #6, !srcloc !45
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %22, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i3.i, i8 -125) #6, !srcloc !45
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %state, align 8
  br label %out

sw.bb4:                                           ; preds = %if.end
  %msg5 = getelementptr inbounds %struct.dc_i2c, ptr %dev_id, i32 0, i32 5
  %24 = ptrtoint ptr %msg5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %msg5, align 8
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %flags, align 2
  %28 = and i16 %27, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool.not = icmp eq i16 %28, 0
  br i1 %tobool.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  %msgbuf_ptr.i = getelementptr inbounds %struct.dc_i2c, ptr %dev_id, i32 0, i32 6
  %29 = ptrtoint ptr %msgbuf_ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %msgbuf_ptr.i, align 4
  %add.i = add i32 %30, 1
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 2
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %len.i, align 4
  %conv.i = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp.i = icmp eq i32 %add.i, %conv.i
  %33 = select i1 %cmp.i, i8 -121, i8 -122
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i56 = getelementptr i8, ptr %35, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i56, i8 %33) #6, !srcloc !45
  %36 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4, ptr %state, align 8
  br label %out

if.end8:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 3, ptr %state, align 8
  br label %sw.bb10

sw.bb10:                                          ; preds = %if.end8, %if.end.sw.bb10_crit_edge
  %msgbuf_ptr = getelementptr inbounds %struct.dc_i2c, ptr %dev_id, i32 0, i32 6
  %38 = ptrtoint ptr %msgbuf_ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msgbuf_ptr, align 4
  %msg11 = getelementptr inbounds %struct.dc_i2c, ptr %dev_id, i32 0, i32 5
  %40 = ptrtoint ptr %msg11 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %msg11, align 8
  %len = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %len, align 4
  %conv12 = zext i16 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %conv12)
  %cmp13 = icmp ult i32 %39, %conv12
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %41, i32 0, i32 3
  %44 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %buf.i, align 4
  %inc.i = add nuw i32 %39, 1
  %46 = ptrtoint ptr %msgbuf_ptr to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %inc.i, ptr %msgbuf_ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %45, i32 %39
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i, align 1
  %49 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %50, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 %48) #6, !srcloc !45
  %51 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i, align 4
  %add.ptr.i3.i.i = getelementptr i8, ptr %52, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i3.i.i, i8 -125) #6, !srcloc !45
  br label %out

if.else:                                          ; preds = %sw.bb10
  %53 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 5, ptr %state, align 8
  %last.i = getelementptr inbounds %struct.dc_i2c, ptr %dev_id, i32 0, i32 7
  %54 = ptrtoint ptr %last.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %last.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i = icmp eq i32 %55, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i60 = getelementptr i8, ptr %57, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i60, i8 -118) #6, !srcloc !45
  br label %out

if.else.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %done.i = getelementptr inbounds %struct.dc_i2c, ptr %dev_id, i32 0, i32 9
  tail call void @complete(ptr noundef %done.i) #6
  br label %out

sw.bb17:                                          ; preds = %if.end
  %msgbuf_ptr18 = getelementptr inbounds %struct.dc_i2c, ptr %dev_id, i32 0, i32 6
  %58 = ptrtoint ptr %msgbuf_ptr18 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %msgbuf_ptr18, align 4
  %msg19 = getelementptr inbounds %struct.dc_i2c, ptr %dev_id, i32 0, i32 5
  %60 = ptrtoint ptr %msg19 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %msg19, align 8
  %len20 = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %len20 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %len20, align 4
  %conv21 = zext i16 %63 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %conv21)
  %cmp22 = icmp ult i32 %59, %conv21
  br i1 %cmp22, label %if.then24, label %if.else25

if.then24:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i62 = getelementptr i8, ptr %65, i32 3
  %66 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i62) #6, !srcloc !46
  %67 = ptrtoint ptr %msg19 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %msg19, align 8
  %buf.i64 = getelementptr inbounds %struct.i2c_msg, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %buf.i64 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %buf.i64, align 4
  %71 = ptrtoint ptr %msgbuf_ptr18 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %msgbuf_ptr18, align 4
  %inc.i66 = add i32 %72, 1
  store i32 %inc.i66, ptr %msgbuf_ptr18, align 4
  %arrayidx.i67 = getelementptr i8, ptr %70, i32 %72
  %73 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %66, ptr %arrayidx.i67, align 1
  %74 = load i32, ptr %msgbuf_ptr18, align 4
  %add.i.i = add i32 %74, 1
  %75 = load ptr, ptr %msg19, align 8
  %len.i.i = getelementptr inbounds %struct.i2c_msg, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %len.i.i, align 4
  %conv.i.i = zext i16 %77 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv.i.i)
  %cmp.i.i = icmp eq i32 %add.i.i, %conv.i.i
  %78 = select i1 %cmp.i.i, i8 -121, i8 -122
  %79 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i68 = getelementptr i8, ptr %80, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i68, i8 %78) #6, !srcloc !45
  br label %out

if.else25:                                        ; preds = %sw.bb17
  %81 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 5, ptr %state, align 8
  %last.i70 = getelementptr inbounds %struct.dc_i2c, ptr %dev_id, i32 0, i32 7
  %82 = ptrtoint ptr %last.i70 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %last.i70, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.i71 = icmp eq i32 %83, 0
  br i1 %tobool.not.i71, label %if.else.i76, label %if.then.i74

if.then.i74:                                      ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i73 = getelementptr i8, ptr %85, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i73, i8 -118) #6, !srcloc !45
  br label %out

if.else.i76:                                      ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #8
  %done.i75 = getelementptr inbounds %struct.dc_i2c, ptr %dev_id, i32 0, i32 9
  tail call void @complete(ptr noundef %done.i75) #6
  br label %out

sw.bb27:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %86 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %state, align 8
  %done29 = getelementptr inbounds %struct.dc_i2c, ptr %dev_id, i32 0, i32 9
  tail call void @complete(ptr noundef %done29) #6
  br label %out

out:                                              ; preds = %sw.bb27, %if.else.i76, %if.then.i74, %if.then24, %if.else.i, %if.then.i, %if.then15, %if.then6, %sw.bb, %if.end.out_crit_edge, %if.then
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret i32 1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dc_i2c_xfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp15 = icmp sgt i32 %num, 0
  br i1 %cmp15, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %sub = add nsw i32 %num, -1
  %lock.i = getelementptr inbounds %struct.dc_i2c, ptr %1, i32 0, i32 8
  %msg6.i = getelementptr inbounds %struct.dc_i2c, ptr %1, i32 0, i32 5
  %msgbuf_ptr.i = getelementptr inbounds %struct.dc_i2c, ptr %1, i32 0, i32 6
  %last7.i = getelementptr inbounds %struct.dc_i2c, ptr %1, i32 0, i32 7
  %error.i = getelementptr inbounds %struct.dc_i2c, ptr %1, i32 0, i32 11
  %done.i = getelementptr inbounds %struct.dc_i2c, ptr %1, i32 0, i32 9
  %regs.i.i = getelementptr inbounds %struct.dc_i2c, ptr %1, i32 0, i32 2
  %state11.i.i = getelementptr inbounds %struct.dc_i2c, ptr %1, i32 0, i32 10
  br label %for.body

for.cond:                                         ; preds = %dc_i2c_xfer_msg.exit
  %inc = add nuw nsw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.016
  call void @__sanitizer_cov_trace_cmp4(i32 %i.016, i32 %sub)
  %cmp2 = icmp eq i32 %i.016, %sub
  %conv3 = zext i1 %cmp2 to i32
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %2 = ptrtoint ptr %msg6.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %arrayidx, ptr %msg6.i, align 8
  %3 = ptrtoint ptr %msgbuf_ptr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %msgbuf_ptr.i, align 4
  %4 = ptrtoint ptr %last7.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv3, ptr %last7.i, align 8
  %5 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %error.i, align 4
  %6 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %done.i, align 4
  %7 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i, i8 1) #6, !srcloc !45
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %10, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i.i, i8 1) #6, !srcloc !45
  %11 = ptrtoint ptr %msg6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %msg6.i, align 8
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags.i.i, align 2
  %conv.i.i = zext i16 %14 to i32
  %and.i.i = and i32 %conv.i.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.016)
  %cmp1.not = icmp eq i32 %i.016, 0
  %15 = ptrtoint ptr %state11.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %state11.i.i, align 8
  %16 = select i1 %cmp1.not, i8 -127, i8 -126
  %17 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 %16) #6, !srcloc !45
  br label %dc_i2c_start_msg.exit.i

if.else.i.i:                                      ; preds = %for.body
  %and6.i.i = and i32 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.else10.i.i, label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %state11.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %state11.i.i, align 8
  %20 = ptrtoint ptr %msgbuf_ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msgbuf_ptr.i, align 4
  %add.i.i.i = add i32 %21, 1
  %len.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 2
  %22 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %len.i.i.i, align 4
  %conv.i.i.i = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %conv.i.i.i)
  %cmp.i.i.i = icmp eq i32 %add.i.i.i, %conv.i.i.i
  %24 = select i1 %cmp.i.i.i, i8 -121, i8 -122
  %25 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %26, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i, i8 %24) #6, !srcloc !45
  br label %dc_i2c_start_msg.exit.i

if.else10.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %state11.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %state11.i.i, align 8
  %buf.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  %28 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buf.i.i.i, align 4
  %30 = ptrtoint ptr %msgbuf_ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msgbuf_ptr.i, align 4
  %inc.i.i.i = add i32 %31, 1
  store i32 %inc.i.i.i, ptr %msgbuf_ptr.i, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %29, i32 %31
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i.i.i, align 1
  %34 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %35, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i.i.i, i8 %33) #6, !srcloc !45
  %36 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i3.i.i.i.i = getelementptr i8, ptr %37, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i3.i.i.i.i, i8 -125) #6, !srcloc !45
  br label %dc_i2c_start_msg.exit.i

dc_i2c_start_msg.exit.i:                          ; preds = %if.else10.i.i, %if.then8.i.i, %if.then.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #6
  %call10.i = tail call i32 @wait_for_completion_timeout(ptr noundef %done.i, i32 noundef 10) #6
  %38 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i.i, align 4
  %add.ptr4.i33.i = getelementptr i8, ptr %39, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4.i33.i, i8 0) #6, !srcloc !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp eq i32 %call10.i, 0
  br i1 %cmp11.i, label %dc_i2c_xfer_msg.exit.thread, label %dc_i2c_xfer_msg.exit

dc_i2c_xfer_msg.exit.thread:                      ; preds = %dc_i2c_start_msg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %state11.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %state11.i.i, align 8
  br label %cleanup

dc_i2c_xfer_msg.exit:                             ; preds = %dc_i2c_start_msg.exit.i
  %41 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not = icmp eq i32 %42, 0
  br i1 %tobool.not, label %for.cond, label %dc_i2c_xfer_msg.exit.cleanup_crit_edge

dc_i2c_xfer_msg.exit.cleanup_crit_edge:           ; preds = %dc_i2c_xfer_msg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %dc_i2c_xfer_msg.exit.cleanup_crit_edge, %dc_i2c_xfer_msg.exit.thread, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %dc_i2c_xfer_msg.exit.thread ], [ %num, %entry.cleanup_crit_edge ], [ %42, %dc_i2c_xfer_msg.exit.cleanup_crit_edge ], [ %num, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dc_i2c_func(ptr nocapture noundef readnone %adap) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592729
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !24, !26, !28, !29, !30, !31, !32, !33, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__initcall__kmod_i2c_digicolor__288_374_dc_i2c_driver_init6, !1, !"__initcall__kmod_i2c_digicolor__288_374_dc_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-digicolor.c", i32 374, i32 1}
!2 = !{ptr @__exitcall_dc_i2c_driver_exit, !1, !"__exitcall_dc_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-digicolor.c", i32 376, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-digicolor.c", i32 377, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-digicolor.c", i32 378, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-digicolor.c", i32 370, i32 12}
!12 = !{ptr @dc_i2c_driver, !13, !"dc_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-digicolor.c", i32 366, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-digicolor.c", i32 298, i32 46}
!16 = !{ptr @dc_i2c_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-digicolor.c", i32 305, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/i2c/busses/i2c-digicolor.c", i32 325, i32 26}
!21 = !{ptr @init_completion.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../include/linux/completion.h", i32 87, i32 2}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @dc_i2c_algorithm, !25, !"dc_i2c_algorithm", i1 false, i1 false}
!25 = !{!"../drivers/i2c/busses/i2c-digicolor.c", i32 283, i32 35}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/busses/i2c-digicolor.c", i32 269, i32 3}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @dc_i2c_init_hw._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @dc_i2c_init_hw._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @dc_i2c_match, !35, !"dc_i2c_match", i1 false, i1 false}
!35 = !{!"../drivers/i2c/busses/i2c-digicolor.c", i32 360, i32 34}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i64 6868368}
!46 = !{i64 6868763}
