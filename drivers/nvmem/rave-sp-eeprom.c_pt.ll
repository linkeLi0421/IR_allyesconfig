; ModuleID = '/llk/IR_all_yes/drivers/nvmem/rave-sp-eeprom.c_pt.bc'
source_filename = "../drivers/nvmem/rave-sp-eeprom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
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
%struct.rave_sp_eeprom = type { ptr, %struct.mutex, i8, i32, ptr }
%struct.rave_sp_eeprom_page = type { i8, i8, [32 x i8] }

@__initcall__kmod_nvmem_rave_sp_eeprom__172_355_rave_sp_eeprom_driver_init6 = internal global ptr @rave_sp_eeprom_driver_init, section ".initcall6.init", align 4
@rave_sp_eeprom_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rave_sp_eeprom_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rave_sp_eeprom_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rave_sp_eeprom_driver_exit = internal global ptr @rave_sp_eeprom_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file173 = internal constant [61 x i8] c"nvmem_rave_sp_eeprom.file=drivers/nvmem/nvmem-rave-sp-eeprom\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [33 x i8] c"nvmem_rave_sp_eeprom.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author175 = internal constant [83 x i8] c"nvmem_rave_sp_eeprom.author=Andrey Vostrikov <andrey.vostrikov@cogentembedded.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author176 = internal constant [80 x i8] c"nvmem_rave_sp_eeprom.author=Nikita Yushchenko <nikita.yoush@cogentembedded.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author177 = internal constant [70 x i8] c"nvmem_rave_sp_eeprom.author=Andrey Smirnov <andrew.smirnov@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description178 = internal constant [55 x i8] c"nvmem_rave_sp_eeprom.description=RAVE SP EEPROM driver\00", section ".modinfo", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nvmem_rave_sp_eeprom\00", [43 x i8] zeroinitializer }, align 32
@rave_sp_eeprom_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"zii,rave-sp-eeprom\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@rave_sp_eeprom_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 298, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to parse \22reg\22 property\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rave_sp_eeprom_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/nvmem/rave-sp-eeprom.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rave_sp_eeprom_probe._entry_ptr = internal global ptr @rave_sp_eeprom_probe._entry, section ".printk_index", align 4
@rave_sp_eeprom_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 308, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Specified size is too big\0A\00", [37 x i8] zeroinitializer }, align 32
@rave_sp_eeprom_probe._entry_ptr.9 = internal global ptr @rave_sp_eeprom_probe._entry.7, section ".printk_index", align 4
@rave_sp_eeprom_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&eeprom->mutex\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zii,eeprom-name\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [22 x i8] c"rave_sp_eeprom_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 348, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 351, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [24 x i8] c"rave_sp_eeprom_of_match\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 342, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 297, i32 37 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 298, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 308, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 325, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [34 x i8] c"../drivers/nvmem/rave-sp-eeprom.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 328, i32 30 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author175, ptr @__UNIQUE_ID_author176, ptr @__UNIQUE_ID_author177, ptr @__UNIQUE_ID_description178, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_rave_sp_eeprom_driver_exit, ptr @__initcall__kmod_nvmem_rave_sp_eeprom__172_355_rave_sp_eeprom_driver_init6, ptr @rave_sp_eeprom_driver_exit, ptr @rave_sp_eeprom_probe._entry, ptr @rave_sp_eeprom_probe._entry.7, ptr @rave_sp_eeprom_probe._entry_ptr, ptr @rave_sp_eeprom_probe._entry_ptr.9, ptr @rave_sp_eeprom_driver, ptr @.str, ptr @rave_sp_eeprom_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @rave_sp_eeprom_probe.__key, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_eeprom_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_eeprom_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_eeprom_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_eeprom_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rave_sp_eeprom_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rave_sp_eeprom_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rave_sp_eeprom_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rave_sp_eeprom_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @rave_sp_eeprom_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rave_sp_eeprom_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.nvmem_config, align 4
  %reg = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %config) #6
  %6 = call ptr @memset(ptr %config, i32 0, i32 88)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %reg) #6
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %reg, align 4, !annotation !48
  %8 = getelementptr inbounds [2 x i32], ptr %reg, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !48
  %call.i = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef nonnull %reg, i32 noundef 2, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097120, i32 %11)
  %cmp = icmp ugt i32 %11, 2097120
  br i1 %cmp, label %do.end6, label %if.end7

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i52 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 108, i32 noundef 3520) #6
  %tobool9.not = icmp eq ptr %call.i52, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg, align 4
  %conv = trunc i32 %13 to i8
  %address = getelementptr inbounds %struct.rave_sp_eeprom, ptr %call.i52, i32 0, i32 2
  %14 = ptrtoint ptr %address to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %address, align 4
  %15 = ptrtoint ptr %call.i52 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %3, ptr %call.i52, align 4
  %dev14 = getelementptr inbounds %struct.rave_sp_eeprom, ptr %call.i52, i32 0, i32 4
  %16 = ptrtoint ptr %dev14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev1, ptr %dev14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %11)
  %cmp15 = icmp ugt i32 %11, 8192
  %spec.select = select i1 %cmp15, i32 5, i32 4
  %17 = getelementptr inbounds %struct.rave_sp_eeprom, ptr %call.i52, i32 0, i32 3
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select, ptr %17, align 4
  %mutex = getelementptr inbounds %struct.rave_sp_eeprom, ptr %call.i52, i32 0, i32 1
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.10, ptr noundef nonnull @rave_sp_eeprom_probe.__key) #6
  %id = getelementptr inbounds %struct.nvmem_config, ptr %config, i32 0, i32 2
  %19 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %id, align 4
  %name = getelementptr inbounds %struct.nvmem_config, ptr %config, i32 0, i32 1
  %call23 = call i32 @of_property_read_string(ptr noundef %5, ptr noundef nonnull @.str.11, ptr noundef %name) #6
  %priv = getelementptr inbounds %struct.nvmem_config, ptr %config, i32 0, i32 21
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i52, ptr %priv, align 4
  %21 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev1, ptr %config, align 4
  %size25 = getelementptr inbounds %struct.nvmem_config, ptr %config, i32 0, i32 18
  %22 = ptrtoint ptr %size25 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %11, ptr %size25, align 4
  %reg_read = getelementptr inbounds %struct.nvmem_config, ptr %config, i32 0, i32 15
  %23 = ptrtoint ptr %reg_read to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @rave_sp_eeprom_reg_read, ptr %reg_read, align 4
  %reg_write = getelementptr inbounds %struct.nvmem_config, ptr %config, i32 0, i32 16
  %24 = ptrtoint ptr %reg_write to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @rave_sp_eeprom_reg_write, ptr %reg_write, align 4
  %word_size = getelementptr inbounds %struct.nvmem_config, ptr %config, i32 0, i32 19
  %25 = ptrtoint ptr %word_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %word_size, align 4
  %stride = getelementptr inbounds %struct.nvmem_config, ptr %config, i32 0, i32 20
  %26 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %stride, align 4
  %call26 = call ptr @devm_nvmem_register(ptr noundef %dev1, ptr noundef nonnull %config) #6
  %cmp.i.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  %27 = ptrtoint ptr %call26 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %27, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end7.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end6 ], [ %spec.select.i, %if.end11 ], [ -12, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %reg) #6
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %config) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rave_sp_eeprom_reg_read(ptr noundef %eeprom, i32 noundef %offset, ptr nocapture noundef %val, i32 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rave_sp_eeprom_access(ptr noundef %eeprom, i32 noundef 1, i32 noundef %offset, ptr noundef %val, i32 noundef %bytes)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rave_sp_eeprom_reg_write(ptr noundef %eeprom, i32 noundef %offset, ptr nocapture noundef %val, i32 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rave_sp_eeprom_access(ptr noundef %eeprom, i32 noundef 0, i32 noundef %offset, ptr noundef %val, i32 noundef %bytes)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rave_sp_eeprom_access(ptr noundef %eeprom, i32 noundef %type, i32 noundef %offset, ptr nocapture noundef %data, i32 noundef %data_len) unnamed_addr #2 align 64 {
entry:
  %cmd.i62.i = alloca [37 x i8], align 1
  %cmd.i.i = alloca [37 x i8], align 1
  %page.i = alloca %struct.rave_sp_eeprom_page, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.rave_sp_eeprom, ptr %eeprom, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %rem = and i32 %offset, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp22.i = icmp eq i32 %type, 0
  %header_size.i.i = getelementptr inbounds %struct.rave_sp_eeprom, ptr %eeprom, i32 0, i32 3
  %0 = getelementptr inbounds i8, ptr %cmd.i.i, i32 4
  %address.i.i = getelementptr inbounds %struct.rave_sp_eeprom, ptr %eeprom, i32 0, i32 2
  %arrayidx27.i.i = getelementptr inbounds [37 x i8], ptr %cmd.i.i, i32 0, i32 1
  %arrayidx29.i.i = getelementptr inbounds [37 x i8], ptr %cmd.i.i, i32 0, i32 2
  %arrayidx32.i.i = getelementptr inbounds [37 x i8], ptr %cmd.i.i, i32 0, i32 3
  %success.i.i = getelementptr inbounds %struct.rave_sp_eeprom_page, ptr %page.i, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %cmd.i62.i, i32 4
  %arrayidx27.i67.i = getelementptr inbounds [37 x i8], ptr %cmd.i62.i, i32 0, i32 1
  %conv.i.i = trunc i32 %type to i8
  %arrayidx29.i68.i = getelementptr inbounds [37 x i8], ptr %cmd.i62.i, i32 0, i32 2
  %arrayidx32.i70.i = getelementptr inbounds [37 x i8], ptr %cmd.i62.i, i32 0, i32 3
  %data.i78.i = getelementptr inbounds %struct.rave_sp_eeprom_page, ptr %page.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp37.i = icmp eq i32 %type, 1
  br label %do.body

do.body:                                          ; preds = %if.end5.do.body_crit_edge, %entry
  %data.addr.0 = phi ptr [ %data, %entry ], [ %add.ptr, %if.end5.do.body_crit_edge ]
  %residue.0 = phi i32 [ %data_len, %entry ], [ %sub6, %if.end5.do.body_crit_edge ]
  %head.0 = phi i32 [ %rem, %entry ], [ 0, %if.end5.do.body_crit_edge ]
  %offset.addr.0 = phi i32 [ %offset, %entry ], [ %add, %if.end5.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %head.0)
  %tobool.not = icmp eq i32 %head.0, 0
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %if.then, !prof !49

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub nuw nsw i32 32, %head.0
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.if.end_crit_edge
  %chunk.0 = phi i32 [ %sub, %if.then ], [ 32, %do.body.if.end_crit_edge ]
  %2 = call i32 @llvm.umin.i32(i32 %chunk.0, i32 %residue.0)
  %rem.i = and i32 %offset.addr.0, 31
  %div61.i = lshr i32 %offset.addr.0, 5
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %page.i) #6
  %3 = call ptr @memset(ptr %page.i, i32 255, i32 34)
  %sub.i = sub nuw nsw i32 32, %rem.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %2)
  %cmp.i = icmp ult i32 %sub.i, %2
  br i1 %cmp.i, label %do.end.i, label %if.end21.i, !prof !50

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 172, i32 noundef 9, ptr noundef null) #6
  br label %rave_sp_eeprom_page_access.exit.thread

if.end21.i:                                       ; preds = %if.end
  br i1 %cmp22.i, label %if.then23.i, label %if.end21.i.if.end31.i_crit_edge

if.end21.i.if.end31.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31.i

if.then23.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %2)
  %cmp24.i = icmp ult i32 %2, 32
  br i1 %cmp24.i, label %if.then25.i, label %if.then23.i.if.end29.i_crit_edge

if.then23.i.if.end29.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

if.then25.i:                                      ; preds = %if.then23.i
  %4 = ptrtoint ptr %header_size.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %header_size.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 37, ptr nonnull %cmd.i.i) #6
  %6 = call ptr @memset(ptr %0, i32 255, i32 33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %5)
  %cmp3.i.i = icmp ugt i32 %5, 37
  br i1 %cmp3.i.i, label %do.end.i.i, label %if.end25.i.i, !prof !50

do.end.i.i:                                       ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 104, i32 noundef 9, ptr noundef null) #6
  br label %rave_sp_eeprom_io.exit.thread.i

if.end25.i.i:                                     ; preds = %if.then25.i
  %7 = ptrtoint ptr %address.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %address.i.i, align 4
  %9 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %cmd.i.i, align 1
  %10 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx27.i.i, align 1
  %11 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %arrayidx29.i.i, align 1
  %conv30.i.i = trunc i32 %div61.i to i8
  %12 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv30.i.i, ptr %arrayidx32.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp34.i.i = icmp ugt i32 %5, 4
  br i1 %cmp34.i.i, label %if.then36.i.i, label %if.end25.i.i.if.end41.i.i_crit_edge

if.end25.i.i.if.end41.i.i_crit_edge:              ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i.i

if.then36.i.i:                                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = lshr i32 %offset.addr.0, 13
  %conv38.i.i = trunc i32 %13 to i8
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv38.i.i, ptr %0, align 1
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.then36.i.i, %if.end25.i.i.if.end41.i.i_crit_edge
  %15 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %eeprom, align 4
  %call.i.i = call i32 @rave_sp_exec(ptr noundef %16, ptr noundef nonnull %cmd.i.i, i32 noundef %5, ptr noundef nonnull %page.i, i32 noundef 34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool44.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool44.not.i.i, label %if.end46.i.i, label %if.end41.i.i.rave_sp_eeprom_io.exit.thread.i_crit_edge

if.end41.i.i.rave_sp_eeprom_io.exit.thread.i_crit_edge: ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rave_sp_eeprom_io.exit.thread.i

if.end46.i.i:                                     ; preds = %if.end41.i.i
  %17 = ptrtoint ptr %page.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %page.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp49.not.i.i = icmp eq i8 %18, 1
  br i1 %cmp49.not.i.i, label %if.end52.i.i, label %if.end46.i.i.rave_sp_eeprom_io.exit.thread.i_crit_edge

if.end46.i.i.rave_sp_eeprom_io.exit.thread.i_crit_edge: ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rave_sp_eeprom_io.exit.thread.i

if.end52.i.i:                                     ; preds = %if.end46.i.i
  %19 = ptrtoint ptr %success.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %success.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool53.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool53.not.i.i, label %if.end52.i.i.rave_sp_eeprom_io.exit.thread.i_crit_edge, label %rave_sp_eeprom_io.exit.i

if.end52.i.i.rave_sp_eeprom_io.exit.thread.i_crit_edge: ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rave_sp_eeprom_io.exit.thread.i

rave_sp_eeprom_io.exit.thread.i:                  ; preds = %if.end52.i.i.rave_sp_eeprom_io.exit.thread.i_crit_edge, %if.end46.i.i.rave_sp_eeprom_io.exit.thread.i_crit_edge, %if.end41.i.i.rave_sp_eeprom_io.exit.thread.i_crit_edge, %do.end.i.i
  %retval.0.i.ph.i = phi i32 [ -22, %do.end.i.i ], [ -5, %if.end52.i.i.rave_sp_eeprom_io.exit.thread.i_crit_edge ], [ %call.i.i, %if.end41.i.i.rave_sp_eeprom_io.exit.thread.i_crit_edge ], [ -71, %if.end46.i.i.rave_sp_eeprom_io.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 37, ptr nonnull %cmd.i.i) #6
  br label %rave_sp_eeprom_page_access.exit.thread

rave_sp_eeprom_io.exit.i:                         ; preds = %if.end52.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 37, ptr nonnull %cmd.i.i) #6
  br label %if.end29.i

if.end29.i:                                       ; preds = %rave_sp_eeprom_io.exit.i, %if.then23.i.if.end29.i_crit_edge
  %arrayidx.i = getelementptr %struct.rave_sp_eeprom_page, ptr %page.i, i32 0, i32 2, i32 %rem.i
  %21 = call ptr @memcpy(ptr %arrayidx.i, ptr %data.addr.0, i32 %2)
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.end29.i, %if.end21.i.if.end31.i_crit_edge
  %cond2.i.i = phi i32 [ 2, %if.end29.i ], [ 34, %if.end21.i.if.end31.i_crit_edge ]
  %cond.i.i = phi i32 [ 32, %if.end29.i ], [ 0, %if.end21.i.if.end31.i_crit_edge ]
  %22 = ptrtoint ptr %header_size.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %header_size.i.i, align 4
  %add.i.i = add i32 %23, %cond.i.i
  call void @llvm.lifetime.start.p0(i64 37, ptr nonnull %cmd.i62.i) #6
  %24 = call ptr @memset(ptr %1, i32 255, i32 33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %add.i.i)
  %cmp3.i64.i = icmp ugt i32 %add.i.i, 37
  br i1 %cmp3.i64.i, label %do.end.i65.i, label %if.end25.i72.i, !prof !50

do.end.i65.i:                                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 104, i32 noundef 9, ptr noundef null) #6
  br label %rave_sp_eeprom_io.exit90.thread.i

if.end25.i72.i:                                   ; preds = %if.end31.i
  %25 = ptrtoint ptr %address.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %address.i.i, align 4
  %27 = ptrtoint ptr %cmd.i62.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %cmd.i62.i, align 1
  %28 = ptrtoint ptr %arrayidx27.i67.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx27.i67.i, align 1
  %29 = ptrtoint ptr %arrayidx29.i68.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv.i.i, ptr %arrayidx29.i68.i, align 1
  %conv30.i69.i = trunc i32 %div61.i to i8
  %30 = ptrtoint ptr %arrayidx32.i70.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv30.i69.i, ptr %arrayidx32.i70.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp34.i71.i = icmp ugt i32 %23, 4
  br i1 %cmp34.i71.i, label %if.then36.i75.i, label %if.end25.i72.i.if.end41.i81.i_crit_edge

if.end25.i72.i.if.end41.i81.i_crit_edge:          ; preds = %if.end25.i72.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.i81.i

if.then36.i75.i:                                  ; preds = %if.end25.i72.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = lshr i32 %offset.addr.0, 13
  %conv38.i73.i = trunc i32 %31 to i8
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv38.i73.i, ptr %1, align 1
  br label %if.end41.i81.i

if.end41.i81.i:                                   ; preds = %if.then36.i75.i, %if.end25.i72.i.if.end41.i81.i_crit_edge
  %offset.0.i76.i = phi i32 [ 5, %if.then36.i75.i ], [ 4, %if.end25.i72.i.if.end41.i81.i_crit_edge ]
  %arrayidx42.i77.i = getelementptr [37 x i8], ptr %cmd.i62.i, i32 0, i32 %offset.0.i76.i
  %33 = call ptr @memcpy(ptr %arrayidx42.i77.i, ptr %data.i78.i, i32 %cond.i.i)
  %34 = ptrtoint ptr %eeprom to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %eeprom, align 4
  %call.i79.i = call i32 @rave_sp_exec(ptr noundef %35, ptr noundef nonnull %cmd.i62.i, i32 noundef %add.i.i, ptr noundef nonnull %page.i, i32 noundef %cond2.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79.i)
  %tobool44.not.i80.i = icmp eq i32 %call.i79.i, 0
  br i1 %tobool44.not.i80.i, label %if.end46.i84.i, label %if.end41.i81.i.rave_sp_eeprom_io.exit90.thread.i_crit_edge

if.end41.i81.i.rave_sp_eeprom_io.exit90.thread.i_crit_edge: ; preds = %if.end41.i81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rave_sp_eeprom_io.exit90.thread.i

if.end46.i84.i:                                   ; preds = %if.end41.i81.i
  %36 = ptrtoint ptr %page.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %page.i, align 1
  %conv48.i82.i = zext i8 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv48.i82.i, i32 %type)
  %cmp49.not.i83.i = icmp eq i32 %conv48.i82.i, %type
  br i1 %cmp49.not.i83.i, label %if.end52.i88.i, label %if.end46.i84.i.rave_sp_eeprom_io.exit90.thread.i_crit_edge

if.end46.i84.i.rave_sp_eeprom_io.exit90.thread.i_crit_edge: ; preds = %if.end46.i84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rave_sp_eeprom_io.exit90.thread.i

if.end52.i88.i:                                   ; preds = %if.end46.i84.i
  %38 = ptrtoint ptr %success.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %success.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool53.not.i86.i = icmp eq i8 %39, 0
  br i1 %tobool53.not.i86.i, label %if.end52.i88.i.rave_sp_eeprom_io.exit90.thread.i_crit_edge, label %if.end36.i

if.end52.i88.i.rave_sp_eeprom_io.exit90.thread.i_crit_edge: ; preds = %if.end52.i88.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rave_sp_eeprom_io.exit90.thread.i

rave_sp_eeprom_io.exit90.thread.i:                ; preds = %if.end52.i88.i.rave_sp_eeprom_io.exit90.thread.i_crit_edge, %if.end46.i84.i.rave_sp_eeprom_io.exit90.thread.i_crit_edge, %if.end41.i81.i.rave_sp_eeprom_io.exit90.thread.i_crit_edge, %do.end.i65.i
  %retval.0.i89.ph.i = phi i32 [ -22, %do.end.i65.i ], [ -5, %if.end52.i88.i.rave_sp_eeprom_io.exit90.thread.i_crit_edge ], [ %call.i79.i, %if.end41.i81.i.rave_sp_eeprom_io.exit90.thread.i_crit_edge ], [ -71, %if.end46.i84.i.rave_sp_eeprom_io.exit90.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 37, ptr nonnull %cmd.i62.i) #6
  br label %rave_sp_eeprom_page_access.exit.thread

if.end36.i:                                       ; preds = %if.end52.i88.i
  call void @llvm.lifetime.end.p0(i64 37, ptr nonnull %cmd.i62.i) #6
  br i1 %cmp37.i, label %if.then39.i, label %if.end36.i.if.end5_crit_edge

if.end36.i.if.end5_crit_edge:                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then39.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx41.i = getelementptr %struct.rave_sp_eeprom_page, ptr %page.i, i32 0, i32 2, i32 %rem.i
  %40 = call ptr @memcpy(ptr %data.addr.0, ptr %arrayidx41.i, i32 %2)
  br label %if.end5

rave_sp_eeprom_page_access.exit.thread:           ; preds = %rave_sp_eeprom_io.exit90.thread.i, %rave_sp_eeprom_io.exit.thread.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %retval.0.i89.ph.i, %rave_sp_eeprom_io.exit90.thread.i ], [ %retval.0.i.ph.i, %rave_sp_eeprom_io.exit.thread.i ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %page.i) #6
  br label %out

if.end5:                                          ; preds = %if.then39.i, %if.end36.i.if.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %page.i) #6
  %sub6 = sub i32 %residue.0, %2
  %add = add i32 %2, %offset.addr.0
  %add.ptr = getelementptr i8, ptr %data.addr.0, i32 %2
  %tobool7.not = icmp eq i32 %sub6, 0
  br i1 %tobool7.not, label %if.end5.out_crit_edge, label %if.end5.do.body_crit_edge

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %if.end5.out_crit_edge, %rave_sp_eeprom_page_access.exit.thread
  %retval.0.i26 = phi i32 [ %retval.0.i.ph, %rave_sp_eeprom_page_access.exit.thread ], [ 0, %if.end5.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %retval.0.i26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rave_sp_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__initcall__kmod_nvmem_rave_sp_eeprom__172_355_rave_sp_eeprom_driver_init6, !1, !"__initcall__kmod_nvmem_rave_sp_eeprom__172_355_rave_sp_eeprom_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/nvmem/rave-sp-eeprom.c", i32 355, i32 1}
!2 = !{ptr @__exitcall_rave_sp_eeprom_driver_exit, !1, !"__exitcall_rave_sp_eeprom_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file173, !4, !"__UNIQUE_ID_file173", i1 false, i1 false}
!4 = !{!"../drivers/nvmem/rave-sp-eeprom.c", i32 357, i32 1}
!5 = !{ptr @__UNIQUE_ID_license174, !4, !"__UNIQUE_ID_license174", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author175, !7, !"__UNIQUE_ID_author175", i1 false, i1 false}
!7 = !{!"../drivers/nvmem/rave-sp-eeprom.c", i32 358, i32 1}
!8 = !{ptr @__UNIQUE_ID_author176, !9, !"__UNIQUE_ID_author176", i1 false, i1 false}
!9 = !{!"../drivers/nvmem/rave-sp-eeprom.c", i32 359, i32 1}
!10 = !{ptr @__UNIQUE_ID_author177, !11, !"__UNIQUE_ID_author177", i1 false, i1 false}
!11 = !{!"../drivers/nvmem/rave-sp-eeprom.c", i32 360, i32 1}
!12 = !{ptr @__UNIQUE_ID_description178, !13, !"__UNIQUE_ID_description178", i1 false, i1 false}
!13 = !{!"../drivers/nvmem/rave-sp-eeprom.c", i32 361, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/nvmem/rave-sp-eeprom.c", i32 351, i32 11}
!16 = !{ptr @rave_sp_eeprom_driver, !17, !"rave_sp_eeprom_driver", i1 false, i1 false}
!17 = !{!"../drivers/nvmem/rave-sp-eeprom.c", i32 348, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/nvmem/rave-sp-eeprom.c", i32 297, i32 37}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/nvmem/rave-sp-eeprom.c", i32 298, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @rave_sp_eeprom_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @rave_sp_eeprom_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/nvmem/rave-sp-eeprom.c", i32 308, i32 3}
!30 = !{ptr @rave_sp_eeprom_probe._entry.7, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @rave_sp_eeprom_probe._entry_ptr.9, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @rave_sp_eeprom_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/nvmem/rave-sp-eeprom.c", i32 325, i32 2}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/nvmem/rave-sp-eeprom.c", i32 328, i32 30}
!37 = !{ptr @rave_sp_eeprom_of_match, !38, !"rave_sp_eeprom_of_match", i1 false, i1 false}
!38 = !{!"../drivers/nvmem/rave-sp-eeprom.c", i32 342, i32 34}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{!"auto-init"}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{!"branch_weights", i32 1, i32 2000}
