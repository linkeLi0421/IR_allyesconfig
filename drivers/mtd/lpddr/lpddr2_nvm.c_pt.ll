; ModuleID = '/llk/IR_all_yes/drivers/mtd/lpddr/lpddr2_nvm.c_pt.bc'
source_filename = "../drivers/mtd/lpddr/lpddr2_nvm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%union.map_word = type { [8 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pcm_int_data = type { ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.erase_info = type { i64, i64, i64 }
%struct.map_info = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_lpddr2_nvm__187_493_lpddr2_nvm_drv_init6 = internal global ptr @lpddr2_nvm_drv_init, section ".initcall6.init", align 4
@lpddr2_nvm_drv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lpddr2_nvm_probe, ptr @lpddr2_nvm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lpddr2_nvm_drv_exit = internal global ptr @lpddr2_nvm_drv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file188 = internal constant [45 x i8] c"lpddr2_nvm.file=drivers/mtd/lpddr/lpddr2_nvm\00", section ".modinfo", align 1
@__UNIQUE_ID_license189 = internal constant [23 x i8] c"lpddr2_nvm.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author190 = internal constant [66 x i8] c"lpddr2_nvm.author=Vincenzo Aliberti <vincenzo.aliberti@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description191 = internal constant [62 x i8] c"lpddr2_nvm.description=MTD driver for LPDDR2-NVM PCM memories\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lpddr2_nvm\00", [21 x i8] zeroinitializer }, align 32
@lpddr2_nvm_mtd_info = internal constant { %struct.mtd_info, [352 x i8] } { %struct.mtd_info { i8 1, i32 15360, i64 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, ptr null, ptr @lpddr2_nvm_erase, ptr null, ptr null, ptr @lpddr2_nvm_read, ptr @lpddr2_nvm_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lpddr2_nvm_lock, ptr @lpddr2_nvm_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, %struct.notifier_block zeroinitializer, %struct.mtd_ecc_stats zeroinitializer, i32 0, ptr null, ptr null, %struct.device zeroinitializer, i32 0, %struct.mtd_debug_info zeroinitializer, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %union.anon.43 zeroinitializer }, [352 x i8] zeroinitializer }, align 32
@lpddr2_nvm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013lpddr2_nvm: %s: device not recognized\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lpddr2_nvm_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/mtd/lpddr/lpddr2_nvm.c\00", [33 x i8] zeroinitializer }, align 32
@lpddr2_nvm_probe._entry_ptr = internal global ptr @lpddr2_nvm_probe._entry, section ".printk_index", align 4
@lpdd2_nvm_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @lpdd2_nvm_mutex, i64 52), ptr getelementptr (i8, ptr @lpdd2_nvm_mutex, i64 52) }, ptr @lpdd2_nvm_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lpdd2_nvm_mutex.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lpdd2_nvm_mutex\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [15 x i8] c"lpddr2_nvm_drv\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 485, i32 31 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 487, i32 11 }
@___asan_gen_.12 = private unnamed_addr constant [20 x i8] c"lpddr2_nvm_mtd_info\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 396, i32 30 }
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 469, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [16 x i8] c"lpdd2_nvm_mutex\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [34 x i8] c"../drivers/mtd/lpddr/lpddr2_nvm.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 79, i32 8 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_author190, ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_file188, ptr @__UNIQUE_ID_license189, ptr @__exitcall_lpddr2_nvm_drv_exit, ptr @__initcall__kmod_lpddr2_nvm__187_493_lpddr2_nvm_drv_init6, ptr @lpddr2_nvm_drv_exit, ptr @lpddr2_nvm_probe._entry, ptr @lpddr2_nvm_probe._entry_ptr, ptr @lpddr2_nvm_drv, ptr @.str, ptr @lpddr2_nvm_mtd_info, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @lpdd2_nvm_mutex, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpddr2_nvm_drv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpddr2_nvm_mtd_info to i32), i32 1408, i32 1760, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpddr2_nvm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpdd2_nvm_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lpddr2_nvm_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lpddr2_nvm_drv, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lpddr2_nvm_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @lpddr2_nvm_drv) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpddr2_nvm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pfow_val.i = alloca [4 x %union.map_word], align 4
  %tmp2.i = alloca %union.map_word, align 4
  %tmp6.i = alloca %union.map_word, align 4
  %tmp10.i = alloca %union.map_word, align 4
  %tmp13.i = alloca %union.map_word, align 4
  %tmp29.i = alloca %union.map_word, align 4
  %tmp51.i = alloca %union.map_word, align 4
  %tmp73.i = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus_width = getelementptr inbounds %struct.pcm_int_data, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %bus_width to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 32, ptr %bus_width, align 4
  %call.i86 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 76, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i86, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i87 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1408, i32 noundef 3520) #6
  %tobool8.not = icmp eq ptr %call.i87, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %call11 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %init_name = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %1 = ptrtoint ptr %init_name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name, align 8
  %end.i = getelementptr inbounds %struct.resource, ptr %call11, i32 0, i32 1
  %3 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end.i, align 4
  %5 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call11, align 4
  %sub.i = add i32 %4, 1
  %add.i = sub i32 %sub.i, %6
  %call15 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call11) #6
  %7 = ptrtoint ptr %bus_width to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bus_width, align 4
  %div = sdiv i32 %8, 2
  %9 = ptrtoint ptr %call.i86 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %2, ptr %call.i86, align 4
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %call.i86, i32 4
  %10 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add.i, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 4
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %call.i86, i32 8
  %11 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %6, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 4
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %call.i86, i32 12
  %12 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call15, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 4
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %call.i86, i32 16
  %13 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %.compoundliteral.sroa.5.0..sroa_idx, align 4
  %.compoundliteral.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %call.i86, i32 20
  %14 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %.compoundliteral.sroa.6.0..sroa_idx, align 4
  %.compoundliteral.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %call.i86, i32 24
  %15 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div, ptr %.compoundliteral.sroa.7.0..sroa_idx, align 4
  %.compoundliteral.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %call.i86, i32 28
  %.compoundliteral.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %call.i86, i32 52
  %.compoundliteral.sroa.18.0..sroa_idx = getelementptr inbounds i8, ptr %call.i86, i32 68
  %16 = call ptr @memset(ptr %.compoundliteral.sroa.8.0..sroa_idx, i32 0, i32 40)
  %17 = ptrtoint ptr %.compoundliteral.sroa.18.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %.compoundliteral.sroa.18.0..sroa_idx, align 4
  %.compoundliteral.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %call.i86, i32 72
  %18 = ptrtoint ptr %.compoundliteral.sroa.19.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %.compoundliteral.sroa.19.0..sroa_idx, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end10
  tail call void @simple_map_init(ptr noundef nonnull %call.i86) #6
  %call23 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #6
  %call25 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call23) #6
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call25, ptr %call.i, align 4
  %cmp.i88 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i88, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %call25 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end22
  %22 = call ptr @memcpy(ptr %call.i87, ptr @lpddr2_nvm_mtd_info, i32 1408)
  %parent = getelementptr inbounds %struct.mtd_info, ptr %call.i87, i32 0, i32 56, i32 1
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev, ptr %parent, align 8
  %24 = ptrtoint ptr %init_name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name, align 8
  %name36 = getelementptr inbounds %struct.mtd_info, ptr %call.i87, i32 0, i32 13
  %26 = ptrtoint ptr %name36 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %name36, align 8
  %priv = getelementptr inbounds %struct.mtd_info, ptr %call.i87, i32 0, i32 54
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i86, ptr %priv, align 8
  %28 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end.i, align 4
  %30 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %call11, align 4
  %sub.i90 = add i32 %29, 1
  %add.i91 = sub i32 %sub.i90, %31
  %conv = zext i32 %add.i91 to i64
  %size38 = getelementptr inbounds %struct.mtd_info, ptr %call.i87, i32 0, i32 2
  %32 = ptrtoint ptr %size38 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv, ptr %size38, align 8
  %33 = ptrtoint ptr %bus_width to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bus_width, align 4
  %mul = shl i32 %34, 16
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %call.i87, i32 0, i32 3
  %35 = ptrtoint ptr %erasesize to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul, ptr %erasesize, align 8
  %mul41 = shl i32 %34, 9
  %writebufsize = getelementptr inbounds %struct.mtd_info, ptr %call.i87, i32 0, i32 5
  %36 = ptrtoint ptr %writebufsize to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul41, ptr %writebufsize, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp13.i)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp29.i)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp51.i)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp73.i)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %pfow_val.i) #6
  tail call void @mutex_lock_nested(ptr noundef nonnull @lpdd2_nvm_mutex, i32 noundef 0) #6
  %37 = ptrtoint ptr %.compoundliteral.sroa.18.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %.compoundliteral.sroa.18.0..sroa_idx, align 4
  %bus_width.i.i = getelementptr inbounds %struct.pcm_int_data, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %bus_width.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bus_width.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %40)
  %cmp.i.i.i = icmp eq i32 %40, 4
  %or.i.i = select i1 %cmp.i.i.i, i32 -2147483624, i32 32792
  %41 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %38, align 4
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %41) #6, !srcloc !35
  %44 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %38, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %45, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 16777216) #6, !srcloc !35
  %46 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %.compoundliteral.sroa.8.0..sroa_idx, align 4
  %48 = ptrtoint ptr %.compoundliteral.sroa.14.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %.compoundliteral.sroa.14.0..sroa_idx, align 4
  call void %47(ptr nonnull sret(%union.map_word) align 4 %pfow_val.i, ptr noundef nonnull %call.i86, i32 noundef %49) #6
  %50 = getelementptr inbounds i8, ptr %pfow_val.i, i32 32
  %51 = call ptr @memset(ptr %50, i32 255, i32 96)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp2.i) #6
  %52 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %.compoundliteral.sroa.8.0..sroa_idx, align 4
  %54 = ptrtoint ptr %.compoundliteral.sroa.18.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %.compoundliteral.sroa.18.0..sroa_idx, align 4
  %56 = ptrtoint ptr %.compoundliteral.sroa.14.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %.compoundliteral.sroa.14.0..sroa_idx, align 4
  %bus_width.i127.i = getelementptr inbounds %struct.pcm_int_data, ptr %55, i32 0, i32 1
  %58 = ptrtoint ptr %bus_width.i127.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bus_width.i127.i, align 4
  %add.i.i = add i32 %59, %57
  call void %53(ptr nonnull sret(%union.map_word) align 4 %tmp2.i, ptr noundef nonnull %call.i86, i32 noundef %add.i.i) #6
  %60 = call ptr @memcpy(ptr %50, ptr %tmp2.i, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp2.i) #6
  %arrayidx5.i = getelementptr inbounds [4 x %union.map_word], ptr %pfow_val.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp6.i) #6
  %61 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %.compoundliteral.sroa.8.0..sroa_idx, align 4
  %63 = ptrtoint ptr %.compoundliteral.sroa.18.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %.compoundliteral.sroa.18.0..sroa_idx, align 4
  %65 = ptrtoint ptr %.compoundliteral.sroa.14.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %.compoundliteral.sroa.14.0..sroa_idx, align 4
  %bus_width.i130.i = getelementptr inbounds %struct.pcm_int_data, ptr %64, i32 0, i32 1
  %67 = ptrtoint ptr %bus_width.i130.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bus_width.i130.i, align 4
  %mul.i.i = shl i32 %68, 1
  %add.i131.i = add i32 %mul.i.i, %66
  call void %62(ptr nonnull sret(%union.map_word) align 4 %tmp6.i, ptr noundef nonnull %call.i86, i32 noundef %add.i131.i) #6
  %69 = call ptr @memcpy(ptr %arrayidx5.i, ptr %tmp6.i, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp6.i) #6
  %arrayidx9.i = getelementptr inbounds [4 x %union.map_word], ptr %pfow_val.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp10.i) #6
  %70 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %.compoundliteral.sroa.8.0..sroa_idx, align 4
  %72 = ptrtoint ptr %.compoundliteral.sroa.18.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %.compoundliteral.sroa.18.0..sroa_idx, align 4
  %74 = ptrtoint ptr %.compoundliteral.sroa.14.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %.compoundliteral.sroa.14.0..sroa_idx, align 4
  %bus_width.i134.i = getelementptr inbounds %struct.pcm_int_data, ptr %73, i32 0, i32 1
  %76 = ptrtoint ptr %bus_width.i134.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bus_width.i134.i, align 4
  %mul.i135.i = mul i32 %77, 3
  %add.i136.i = add i32 %mul.i135.i, %75
  call void %71(ptr nonnull sret(%union.map_word) align 4 %tmp10.i, ptr noundef nonnull %call.i86, i32 noundef %add.i136.i) #6
  %78 = call ptr @memcpy(ptr %arrayidx9.i, ptr %tmp10.i, i32 32)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp10.i) #6
  %79 = getelementptr inbounds i8, ptr %tmp13.i, i32 4
  %80 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %.compoundliteral.sroa.7.0..sroa_idx, align 4
  %add.i92 = add i32 %81, 3
  %div116.i = lshr i32 %add.i92, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add.i92)
  %cmp144.i = icmp ugt i32 %add.i92, 3
  br i1 %cmp144.i, label %for.body.preheader.i, label %if.end31.lpddr2_nvm_pfow_present.exit_crit_edge

if.end31.lpddr2_nvm_pfow_present.exit_crit_edge:  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %lpddr2_nvm_pfow_present.exit

for.body.preheader.i:                             ; preds = %if.end31
  %umax.i = call i32 @llvm.umax.i32(i32 %div116.i, i32 1) #6
  %82 = ptrtoint ptr %pfow_val.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pfow_val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %83)
  %cmp17.not.i96 = icmp eq i32 %83, 80
  br i1 %cmp17.not.i96, label %for.body.preheader.i.for.cond.i_crit_edge, label %for.end.i.thread

for.body.preheader.i.for.cond.i_crit_edge:        ; preds = %for.body.preheader.i
  br label %for.cond.i

for.end.i.thread:                                 ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  %84 = getelementptr inbounds i8, ptr %tmp29.i, i32 4
  br label %for.body28.i.preheader

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.preheader.i.for.cond.i_crit_edge
  %i.0145.i97 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.preheader.i.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0145.i97, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %umax.i)
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.cond.i.for.end.i_crit_edge, label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %85 = call ptr @memset(ptr %79, i32 0, i32 28)
  %86 = ptrtoint ptr %tmp13.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 80, ptr %tmp13.i, align 4, !alias.scope !36
  %arrayidx14.i = getelementptr [8 x i32], ptr %tmp13.i, i32 0, i32 %inc.i
  %87 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx14.i, align 4
  %arrayidx16.i = getelementptr [8 x i32], ptr %pfow_val.i, i32 0, i32 %inc.i
  %89 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx16.i, align 4
  %cmp17.not.i = icmp eq i32 %88, %90
  br i1 %cmp17.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.i.for.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %div116.i)
  %cmp.i93.le = icmp ult i32 %inc.i, %div116.i
  %91 = getelementptr inbounds i8, ptr %tmp29.i, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add.i92)
  %cmp27150.not.i = icmp ult i32 %add.i92, 4
  br i1 %cmp27150.not.i, label %for.end.i.for.body50.preheader.i_crit_edge, label %for.end.i.for.body28.i.preheader_crit_edge

for.end.i.for.body28.i.preheader_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body28.i.preheader

for.end.i.for.body50.preheader.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body50.preheader.i

for.body28.i.preheader:                           ; preds = %for.end.i.for.body28.i.preheader_crit_edge, %for.end.i.thread
  %92 = phi ptr [ %84, %for.end.i.thread ], [ %91, %for.end.i.for.body28.i.preheader_crit_edge ]
  %cmp.lcssa.i106 = phi i1 [ true, %for.end.i.thread ], [ %cmp.i93.le, %for.end.i.for.body28.i.preheader_crit_edge ]
  br label %for.body28.i

for.cond23.i:                                     ; preds = %for.body28.i
  %inc37.i = add nuw nsw i32 %i21.0151.i, 1
  %exitcond165.not.i = icmp eq i32 %inc37.i, %umax.i
  br i1 %exitcond165.not.i, label %for.cond23.i.for.body50.preheader.i_crit_edge, label %for.cond23.i.for.body28.i_crit_edge

for.cond23.i.for.body28.i_crit_edge:              ; preds = %for.cond23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body28.i

for.cond23.i.for.body50.preheader.i_crit_edge:    ; preds = %for.cond23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body50.preheader.i

for.body28.i:                                     ; preds = %for.cond23.i.for.body28.i_crit_edge, %for.body28.i.preheader
  %i21.0151.i = phi i32 [ %inc37.i, %for.cond23.i.for.body28.i_crit_edge ], [ 0, %for.body28.i.preheader ]
  %93 = call ptr @memset(ptr %92, i32 0, i32 28)
  %94 = ptrtoint ptr %tmp29.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 70, ptr %tmp29.i, align 4, !alias.scope !39
  %arrayidx30.i = getelementptr [8 x i32], ptr %tmp29.i, i32 0, i32 %i21.0151.i
  %95 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx30.i, align 4
  %arrayidx32.i = getelementptr [8 x i32], ptr %50, i32 0, i32 %i21.0151.i
  %97 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx32.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %98)
  %cmp33.not.i = icmp eq i32 %96, %98
  br i1 %cmp33.not.i, label %for.cond23.i, label %for.body28.i.for.body50.preheader.i_crit_edge

for.body28.i.for.body50.preheader.i_crit_edge:    ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body50.preheader.i

for.body50.preheader.i:                           ; preds = %for.body28.i.for.body50.preheader.i_crit_edge, %for.cond23.i.for.body50.preheader.i_crit_edge, %for.end.i.for.body50.preheader.i_crit_edge
  %cmp27150.not.i108 = phi i1 [ true, %for.end.i.for.body50.preheader.i_crit_edge ], [ false, %for.body28.i.for.body50.preheader.i_crit_edge ], [ false, %for.cond23.i.for.body50.preheader.i_crit_edge ]
  %99 = phi i1 [ %cmp.i93.le, %for.end.i.for.body50.preheader.i_crit_edge ], [ %cmp.lcssa.i106, %for.cond23.i.for.body50.preheader.i_crit_edge ], [ true, %for.body28.i.for.body50.preheader.i_crit_edge ]
  %100 = getelementptr inbounds i8, ptr %tmp51.i, i32 4
  %101 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 79, i32 %102)
  %cmp55.not.i99 = icmp eq i32 %102, 79
  br i1 %cmp55.not.i99, label %for.body50.preheader.i.for.cond45.i_crit_edge, label %for.body50.preheader.i.for.end60.i_crit_edge

for.body50.preheader.i.for.end60.i_crit_edge:     ; preds = %for.body50.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end60.i

for.body50.preheader.i.for.cond45.i_crit_edge:    ; preds = %for.body50.preheader.i
  br label %for.cond45.i

for.cond45.i:                                     ; preds = %for.body50.i.for.cond45.i_crit_edge, %for.body50.preheader.i.for.cond45.i_crit_edge
  %i43.0155.i100 = phi i32 [ %inc59.i, %for.body50.i.for.cond45.i_crit_edge ], [ 0, %for.body50.preheader.i.for.cond45.i_crit_edge ]
  %inc59.i = add nuw nsw i32 %i43.0155.i100, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc59.i, i32 %umax.i)
  %exitcond167.not.i = icmp eq i32 %inc59.i, %umax.i
  br i1 %exitcond167.not.i, label %for.cond45.i.for.end60.i.loopexit_crit_edge, label %for.body50.i

for.cond45.i.for.end60.i.loopexit_crit_edge:      ; preds = %for.cond45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end60.i.loopexit

for.body50.i:                                     ; preds = %for.cond45.i
  %103 = call ptr @memset(ptr %100, i32 0, i32 28)
  %104 = ptrtoint ptr %tmp51.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 79, ptr %tmp51.i, align 4, !alias.scope !42
  %arrayidx52.i = getelementptr [8 x i32], ptr %tmp51.i, i32 0, i32 %inc59.i
  %105 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx52.i, align 4
  %arrayidx54.i = getelementptr [8 x i32], ptr %arrayidx5.i, i32 0, i32 %inc59.i
  %107 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx54.i, align 4
  %cmp55.not.i = icmp eq i32 %106, %108
  br i1 %cmp55.not.i, label %for.body50.i.for.cond45.i_crit_edge, label %for.body50.i.for.end60.i.loopexit_crit_edge

for.body50.i.for.end60.i.loopexit_crit_edge:      ; preds = %for.body50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end60.i.loopexit

for.body50.i.for.cond45.i_crit_edge:              ; preds = %for.body50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond45.i

for.end60.i.loopexit:                             ; preds = %for.body50.i.for.end60.i.loopexit_crit_edge, %for.cond45.i.for.end60.i.loopexit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc59.i, i32 %div116.i)
  %cmp49.i.le = icmp ult i32 %inc59.i, %div116.i
  br label %for.end60.i

for.end60.i:                                      ; preds = %for.end60.i.loopexit, %for.body50.preheader.i.for.end60.i_crit_edge
  %cmp49.lcssa.i = phi i1 [ true, %for.body50.preheader.i.for.end60.i_crit_edge ], [ %cmp49.i.le, %for.end60.i.loopexit ]
  %109 = getelementptr inbounds i8, ptr %tmp73.i, i32 4
  br i1 %cmp27150.not.i108, label %for.end60.i.lpddr2_nvm_pfow_present.exit_crit_edge, label %for.end60.i.for.body72.i_crit_edge

for.end60.i.for.body72.i_crit_edge:               ; preds = %for.end60.i
  br label %for.body72.i

for.end60.i.lpddr2_nvm_pfow_present.exit_crit_edge: ; preds = %for.end60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lpddr2_nvm_pfow_present.exit

for.cond67.i:                                     ; preds = %for.body72.i
  %inc81.i = add nuw nsw i32 %i65.0160.i, 1
  %exitcond169.not.i = icmp eq i32 %inc81.i, %umax.i
  br i1 %exitcond169.not.i, label %for.cond67.i.lpddr2_nvm_pfow_present.exit_crit_edge, label %for.cond67.i.for.body72.i_crit_edge

for.cond67.i.for.body72.i_crit_edge:              ; preds = %for.cond67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body72.i

for.cond67.i.lpddr2_nvm_pfow_present.exit_crit_edge: ; preds = %for.cond67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lpddr2_nvm_pfow_present.exit

for.body72.i:                                     ; preds = %for.cond67.i.for.body72.i_crit_edge, %for.end60.i.for.body72.i_crit_edge
  %i65.0160.i = phi i32 [ %inc81.i, %for.cond67.i.for.body72.i_crit_edge ], [ 0, %for.end60.i.for.body72.i_crit_edge ]
  %110 = call ptr @memset(ptr %109, i32 0, i32 28)
  %111 = ptrtoint ptr %tmp73.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 87, ptr %tmp73.i, align 4, !alias.scope !45
  %arrayidx74.i = getelementptr [8 x i32], ptr %tmp73.i, i32 0, i32 %i65.0160.i
  %112 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx74.i, align 4
  %arrayidx76.i = getelementptr [8 x i32], ptr %arrayidx9.i, i32 0, i32 %i65.0160.i
  %114 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx76.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %115)
  %cmp77.not.i = icmp eq i32 %113, %115
  br i1 %cmp77.not.i, label %for.cond67.i, label %for.body72.i.lpddr2_nvm_pfow_present.exit_crit_edge

for.body72.i.lpddr2_nvm_pfow_present.exit_crit_edge: ; preds = %for.body72.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lpddr2_nvm_pfow_present.exit

lpddr2_nvm_pfow_present.exit:                     ; preds = %for.body72.i.lpddr2_nvm_pfow_present.exit_crit_edge, %for.cond67.i.lpddr2_nvm_pfow_present.exit_crit_edge, %for.end60.i.lpddr2_nvm_pfow_present.exit_crit_edge, %if.end31.lpddr2_nvm_pfow_present.exit_crit_edge
  %116 = phi i1 [ %99, %for.end60.i.lpddr2_nvm_pfow_present.exit_crit_edge ], [ false, %if.end31.lpddr2_nvm_pfow_present.exit_crit_edge ], [ %99, %for.body72.i.lpddr2_nvm_pfow_present.exit_crit_edge ], [ %99, %for.cond67.i.lpddr2_nvm_pfow_present.exit_crit_edge ]
  %117 = phi i1 [ %cmp49.lcssa.i, %for.end60.i.lpddr2_nvm_pfow_present.exit_crit_edge ], [ false, %if.end31.lpddr2_nvm_pfow_present.exit_crit_edge ], [ %cmp49.lcssa.i, %for.cond67.i.lpddr2_nvm_pfow_present.exit_crit_edge ], [ true, %for.body72.i.lpddr2_nvm_pfow_present.exit_crit_edge ]
  %118 = select i1 %117, i1 true, i1 %116
  %119 = ptrtoint ptr %.compoundliteral.sroa.18.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %.compoundliteral.sroa.18.0..sroa_idx, align 4
  %bus_width.i138.i = getelementptr inbounds %struct.pcm_int_data, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %bus_width.i138.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %bus_width.i138.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %122)
  %cmp.i.i139.i = icmp eq i32 %122, 4
  %or.i140.i = select i1 %cmp.i.i139.i, i32 -2147483624, i32 32792
  %123 = call i32 @llvm.bswap.i32(i32 %or.i140.i) #6
  %124 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %120, align 4
  %add.ptr.i141.i = getelementptr i8, ptr %125, i32 80
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i141.i, i32 %123) #6, !srcloc !35
  %126 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %120, align 4
  %add.ptr2.i142.i = getelementptr i8, ptr %127, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i142.i, i32 33554432) #6, !srcloc !35
  call void @mutex_unlock(ptr noundef nonnull @lpdd2_nvm_mutex) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %pfow_val.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp13.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp29.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp51.i)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp73.i)
  br i1 %118, label %do.end, label %if.end46

do.end:                                           ; preds = %lpddr2_nvm_pfow_present.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end46:                                         ; preds = %lpddr2_nvm_pfow_present.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call47 = call i32 @mtd_device_parse_register(ptr noundef nonnull %call.i87, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %do.end, %if.then28, %if.then19, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %19, %if.then19 ], [ %21, %if.then28 ], [ %call47, %if.end46 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpddr2_nvm_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @mtd_device_unregister(ptr noundef %1) #6
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @simple_map_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpddr2_nvm_erase(ptr nocapture noundef readonly %mtd, ptr nocapture noundef readonly %instr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %instr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %instr, align 8
  %len = getelementptr inbounds %struct.erase_info, ptr %instr, i32 0, i32 1
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %len, align 8
  tail call fastcc void @lpddr2_nvm_do_block_op(ptr noundef %mtd, i64 noundef %1, i64 noundef %3, i8 noundef zeroext 32)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpddr2_nvm_read(ptr nocapture noundef readonly %mtd, i64 noundef %start_add, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @lpdd2_nvm_mutex, i32 noundef 0) #6
  %2 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %len, ptr %retlen, align 4
  %copy_from = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %copy_from to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %copy_from, align 4
  %conv = trunc i64 %start_add to i32
  tail call void %4(ptr noundef %1, ptr noundef %buf, i32 noundef %conv, i32 noundef %len) #6
  tail call void @mutex_unlock(ptr noundef nonnull @lpdd2_nvm_mutex) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpddr2_nvm_write(ptr nocapture noundef readonly %mtd, i64 noundef %start_add, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr nocapture noundef readonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @lpdd2_nvm_mutex, i32 noundef 0) #6
  %4 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fldrv_priv, align 4
  %bus_width.i = getelementptr inbounds %struct.pcm_int_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus_width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 4
  %or.i = select i1 %cmp.i.i, i32 -2147483624, i32 32792
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #6, !srcloc !35
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %add.ptr2.i = getelementptr i8, ptr %12, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 16777216) #6, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp81.not = icmp eq i32 %len, 0
  br i1 %cmp81.not, label %entry.out_crit_edge, label %while.body.lr.ph

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

while.body.lr.ph:                                 ; preds = %entry
  %conv = trunc i64 %start_add to i32
  %writesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 4
  %bus_width = getelementptr inbounds %struct.pcm_int_data, ptr %3, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end38.while.body_crit_edge, %while.body.lr.ph
  %tot_len.083 = phi i32 [ 0, %while.body.lr.ph ], [ %tot_len.1, %if.end38.while.body_crit_edge ]
  %add.082 = phi i32 [ %conv, %while.body.lr.ph ], [ %add.1, %if.end38.while.body_crit_edge ]
  %13 = ptrtoint ptr %writesize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %writesize, align 4
  %sub = add i32 %14, -1
  %and = and i32 %sub, %add.082
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %arrayidx = getelementptr i8, ptr %buf, i32 %tot_len.083
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %conv4 = zext i8 %16 to i32
  %add5 = add nuw i32 %tot_len.083, 1
  %arrayidx6 = getelementptr i8, ptr %buf, i32 %add5
  %17 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %18 to i32
  %shl = shl nuw nsw i32 %conv7, 8
  %add8 = or i32 %shl, %conv4
  %19 = ptrtoint ptr %bus_width to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bus_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp9 = icmp eq i32 %20, 4
  br i1 %cmp9, label %if.then11, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %add12 = add i32 %tot_len.083, 2
  %arrayidx13 = getelementptr i8, ptr %buf, i32 %add12
  %21 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %22 to i32
  %shl15 = shl nuw nsw i32 %conv14, 16
  %add16 = or i32 %shl15, %add8
  %add17 = add i32 %tot_len.083, 3
  %arrayidx18 = getelementptr i8, ptr %buf, i32 %add17
  %23 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %24 to i32
  %shl20 = shl nuw i32 %conv19, 24
  %add21 = or i32 %add16, %shl20
  br label %if.end

if.end:                                           ; preds = %if.then11, %if.then.if.end_crit_edge
  %my_data.0 = phi i32 [ %add21, %if.then11 ], [ %add8, %if.then.if.end_crit_edge ]
  tail call fastcc void @lpddr2_nvm_do_op(ptr noundef %1, i32 noundef 66, i32 noundef %my_data.0, i32 noundef %add.082, i32 noundef 0, ptr noundef null)
  %25 = ptrtoint ptr %bus_width to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bus_width, align 4
  br label %if.end38

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %sub28 = sub i32 %len, %tot_len.083
  %27 = tail call i32 @llvm.umin.i32(i32 %sub28, i32 %14)
  %add.ptr = getelementptr i8, ptr %buf, i32 %tot_len.083
  tail call fastcc void @lpddr2_nvm_do_op(ptr noundef %1, i32 noundef 234, i32 noundef 0, i32 noundef %add.082, i32 noundef %27, ptr noundef %add.ptr)
  br label %if.end38

if.end38:                                         ; preds = %if.else, %if.end
  %cond.pn = phi i32 [ %27, %if.else ], [ %26, %if.end ]
  %tot_len.1 = add i32 %cond.pn, %tot_len.083
  %add.1 = add i32 %cond.pn, %add.082
  %cmp = icmp ult i32 %tot_len.1, %len
  br i1 %cmp, label %if.end38.while.body_crit_edge, label %if.end38.out_crit_edge

if.end38.out_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end38.while.body_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

out:                                              ; preds = %if.end38.out_crit_edge, %entry.out_crit_edge
  %tot_len.0.lcssa = phi i32 [ 0, %entry.out_crit_edge ], [ %tot_len.1, %if.end38.out_crit_edge ]
  %28 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %tot_len.0.lcssa, ptr %retlen, align 4
  %29 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fldrv_priv, align 4
  %bus_width.i76 = getelementptr inbounds %struct.pcm_int_data, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %bus_width.i76 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bus_width.i76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %cmp.i.i77 = icmp eq i32 %32, 4
  %or.i78 = select i1 %cmp.i.i77, i32 -2147483624, i32 32792
  %33 = tail call i32 @llvm.bswap.i32(i32 %or.i78) #6
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %30, align 4
  %add.ptr.i79 = getelementptr i8, ptr %35, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 %33) #6, !srcloc !35
  %36 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %30, align 4
  %add.ptr2.i80 = getelementptr i8, ptr %37, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i80, i32 33554432) #6, !srcloc !35
  tail call void @mutex_unlock(ptr noundef nonnull @lpdd2_nvm_mutex) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpddr2_nvm_lock(ptr nocapture noundef readonly %mtd, i64 noundef %start_add, i64 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @lpddr2_nvm_do_block_op(ptr noundef %mtd, i64 noundef %start_add, i64 noundef %len, i8 noundef zeroext 97)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpddr2_nvm_unlock(ptr nocapture noundef readonly %mtd, i64 noundef %start_add, i64 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @lpddr2_nvm_do_block_op(ptr noundef %mtd, i64 noundef %start_add, i64 noundef %len, i8 noundef zeroext 98)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpddr2_nvm_do_block_op(ptr nocapture noundef readonly %mtd, i64 noundef %start_add, i64 noundef %len, i8 noundef zeroext %block_op) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @lpdd2_nvm_mutex, i32 noundef 0) #6
  %fldrv_priv.i = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %fldrv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv_priv.i, align 4
  %bus_width.i = getelementptr inbounds %struct.pcm_int_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %bus_width.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bus_width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 4
  %or.i = select i1 %cmp.i.i, i32 -2147483624, i32 32792
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #6, !srcloc !35
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %add.ptr2.i = getelementptr i8, ptr %10, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 16777216) #6, !srcloc !35
  %conv = trunc i64 %start_add to i32
  %add2 = add i64 %len, %start_add
  %conv3 = trunc i64 %add2 to i32
  %conv4 = zext i8 %block_op to i32
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %add.0 = phi i32 [ %conv, %entry ], [ %add5, %do.body.do.body_crit_edge ]
  tail call fastcc void @lpddr2_nvm_do_op(ptr noundef %1, i32 noundef %conv4, i32 noundef 0, i32 noundef %add.0, i32 noundef %add.0, ptr noundef null)
  %11 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %erasesize, align 8
  %add5 = add i32 %12, %add.0
  %cmp = icmp ult i32 %add5, %conv3
  br i1 %cmp, label %do.body.do.body_crit_edge, label %out

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

out:                                              ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %fldrv_priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fldrv_priv.i, align 4
  %bus_width.i2 = getelementptr inbounds %struct.pcm_int_data, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %bus_width.i2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bus_width.i2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp.i.i3 = icmp eq i32 %16, 4
  %or.i4 = select i1 %cmp.i.i3, i32 -2147483624, i32 32792
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i4) #6
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %14, align 4
  %add.ptr.i5 = getelementptr i8, ptr %19, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %17) #6, !srcloc !35
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %14, align 4
  %add.ptr2.i6 = getelementptr i8, ptr %21, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i6, i32 33554432) #6, !srcloc !35
  tail call void @mutex_unlock(ptr noundef nonnull @lpdd2_nvm_mutex) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lpddr2_nvm_do_op(ptr noundef %map, i32 noundef %cmd_code, i32 noundef %cmd_data, i32 noundef %cmd_add, i32 noundef %cmd_mpr, ptr nocapture noundef readonly %buf) unnamed_addr #2 align 64 {
entry:
  %tmp = alloca %union.map_word, align 4
  %tmp80 = alloca %union.map_word, align 4
  %tmp88 = alloca %union.map_word, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fldrv_priv = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 17
  %0 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fldrv_priv, align 4
  %bus_width = getelementptr inbounds %struct.pcm_int_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus_width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.i = icmp eq i32 %3, 4
  %spec.select.i = select i1 %cmp.i, i32 8388736, i32 128
  %and = and i32 %cmd_add, 65535
  %shr = lshr i32 %cmd_add, 16
  %and3 = and i32 %cmd_mpr, 65535
  %shr5 = lshr i32 %cmd_mpr, 16
  %and8 = and i32 %cmd_code, 65535
  %and11 = and i32 %cmd_data, 65535
  %write = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 9
  %4 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write, align 4
  %pfow_base.i = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 13
  %6 = ptrtoint ptr %pfow_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pfow_base.i, align 4
  %mul.i = shl i32 %3, 6
  %add.i = add i32 %7, %mul.i
  %.fca.0.insert203 = insertvalue [8 x i32] poison, i32 %and8, 0
  %.fca.1.insert206 = insertvalue [8 x i32] %.fca.0.insert203, i32 0, 1
  %.fca.2.insert209 = insertvalue [8 x i32] %.fca.1.insert206, i32 0, 2
  %.fca.3.insert212 = insertvalue [8 x i32] %.fca.2.insert209, i32 0, 3
  %.fca.4.insert215 = insertvalue [8 x i32] %.fca.3.insert212, i32 0, 4
  %.fca.5.insert218 = insertvalue [8 x i32] %.fca.4.insert215, i32 0, 5
  %.fca.6.insert221 = insertvalue [8 x i32] %.fca.5.insert218, i32 0, 6
  %.fca.7.insert224 = insertvalue [8 x i32] %.fca.6.insert221, i32 0, 7
  tail call void %5(ptr noundef %map, [8 x i32] %.fca.7.insert224, i32 noundef %add.i) #6
  %8 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write, align 4
  %10 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fldrv_priv, align 4
  %12 = ptrtoint ptr %pfow_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pfow_base.i, align 4
  %bus_width.i3 = getelementptr inbounds %struct.pcm_int_data, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %bus_width.i3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bus_width.i3, align 4
  %mul.i4 = mul i32 %15, 66
  %add.i5 = add i32 %mul.i4, %13
  %.fca.0.insert259 = insertvalue [8 x i32] poison, i32 %and11, 0
  %.fca.1.insert262 = insertvalue [8 x i32] %.fca.0.insert259, i32 0, 1
  %.fca.2.insert265 = insertvalue [8 x i32] %.fca.1.insert262, i32 0, 2
  %.fca.3.insert268 = insertvalue [8 x i32] %.fca.2.insert265, i32 0, 3
  %.fca.4.insert271 = insertvalue [8 x i32] %.fca.3.insert268, i32 0, 4
  %.fca.5.insert274 = insertvalue [8 x i32] %.fca.4.insert271, i32 0, 5
  %.fca.6.insert277 = insertvalue [8 x i32] %.fca.5.insert274, i32 0, 6
  %.fca.7.insert280 = insertvalue [8 x i32] %.fca.6.insert277, i32 0, 7
  tail call void %9(ptr noundef %map, [8 x i32] %.fca.7.insert280, i32 noundef %add.i5) #6
  %16 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write, align 4
  %18 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fldrv_priv, align 4
  %20 = ptrtoint ptr %pfow_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pfow_base.i, align 4
  %bus_width.i8 = getelementptr inbounds %struct.pcm_int_data, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %bus_width.i8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bus_width.i8, align 4
  %mul.i9 = mul i32 %23, 68
  %add.i10 = add i32 %mul.i9, %21
  %.fca.0.insert451 = insertvalue [8 x i32] poison, i32 %and, 0
  %.fca.1.insert454 = insertvalue [8 x i32] %.fca.0.insert451, i32 0, 1
  %.fca.2.insert457 = insertvalue [8 x i32] %.fca.1.insert454, i32 0, 2
  %.fca.3.insert460 = insertvalue [8 x i32] %.fca.2.insert457, i32 0, 3
  %.fca.4.insert463 = insertvalue [8 x i32] %.fca.3.insert460, i32 0, 4
  %.fca.5.insert466 = insertvalue [8 x i32] %.fca.4.insert463, i32 0, 5
  %.fca.6.insert469 = insertvalue [8 x i32] %.fca.5.insert466, i32 0, 6
  %.fca.7.insert472 = insertvalue [8 x i32] %.fca.6.insert469, i32 0, 7
  tail call void %17(ptr noundef %map, [8 x i32] %.fca.7.insert472, i32 noundef %add.i10) #6
  %24 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write, align 4
  %26 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fldrv_priv, align 4
  %28 = ptrtoint ptr %pfow_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pfow_base.i, align 4
  %bus_width.i13 = getelementptr inbounds %struct.pcm_int_data, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %bus_width.i13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bus_width.i13, align 4
  %mul.i14 = mul i32 %31, 69
  %add.i15 = add i32 %mul.i14, %29
  %.fca.0.insert395 = insertvalue [8 x i32] poison, i32 %shr, 0
  %.fca.1.insert398 = insertvalue [8 x i32] %.fca.0.insert395, i32 0, 1
  %.fca.2.insert401 = insertvalue [8 x i32] %.fca.1.insert398, i32 0, 2
  %.fca.3.insert404 = insertvalue [8 x i32] %.fca.2.insert401, i32 0, 3
  %.fca.4.insert407 = insertvalue [8 x i32] %.fca.3.insert404, i32 0, 4
  %.fca.5.insert410 = insertvalue [8 x i32] %.fca.4.insert407, i32 0, 5
  %.fca.6.insert413 = insertvalue [8 x i32] %.fca.5.insert410, i32 0, 6
  %.fca.7.insert416 = insertvalue [8 x i32] %.fca.6.insert413, i32 0, 7
  tail call void %25(ptr noundef %map, [8 x i32] %.fca.7.insert416, i32 noundef %add.i15) #6
  %32 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write, align 4
  %34 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fldrv_priv, align 4
  %36 = ptrtoint ptr %pfow_base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pfow_base.i, align 4
  %bus_width.i18 = getelementptr inbounds %struct.pcm_int_data, ptr %35, i32 0, i32 1
  %38 = ptrtoint ptr %bus_width.i18 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bus_width.i18, align 4
  %mul.i19 = mul i32 %39, 72
  %add.i20 = add i32 %mul.i19, %37
  %.fca.0.insert339 = insertvalue [8 x i32] poison, i32 %and3, 0
  %.fca.1.insert342 = insertvalue [8 x i32] %.fca.0.insert339, i32 0, 1
  %.fca.2.insert345 = insertvalue [8 x i32] %.fca.1.insert342, i32 0, 2
  %.fca.3.insert348 = insertvalue [8 x i32] %.fca.2.insert345, i32 0, 3
  %.fca.4.insert351 = insertvalue [8 x i32] %.fca.3.insert348, i32 0, 4
  %.fca.5.insert354 = insertvalue [8 x i32] %.fca.4.insert351, i32 0, 5
  %.fca.6.insert357 = insertvalue [8 x i32] %.fca.5.insert354, i32 0, 6
  %.fca.7.insert360 = insertvalue [8 x i32] %.fca.6.insert357, i32 0, 7
  tail call void %33(ptr noundef %map, [8 x i32] %.fca.7.insert360, i32 noundef %add.i20) #6
  %40 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write, align 4
  %42 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %fldrv_priv, align 4
  %44 = ptrtoint ptr %pfow_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pfow_base.i, align 4
  %bus_width.i23 = getelementptr inbounds %struct.pcm_int_data, ptr %43, i32 0, i32 1
  %46 = ptrtoint ptr %bus_width.i23 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bus_width.i23, align 4
  %mul.i24 = mul i32 %47, 73
  %add.i25 = add i32 %mul.i24, %45
  %.fca.0.insert283 = insertvalue [8 x i32] poison, i32 %shr5, 0
  %.fca.1.insert286 = insertvalue [8 x i32] %.fca.0.insert283, i32 0, 1
  %.fca.2.insert289 = insertvalue [8 x i32] %.fca.1.insert286, i32 0, 2
  %.fca.3.insert292 = insertvalue [8 x i32] %.fca.2.insert289, i32 0, 3
  %.fca.4.insert295 = insertvalue [8 x i32] %.fca.3.insert292, i32 0, 4
  %.fca.5.insert298 = insertvalue [8 x i32] %.fca.4.insert295, i32 0, 5
  %.fca.6.insert301 = insertvalue [8 x i32] %.fca.5.insert298, i32 0, 6
  %.fca.7.insert304 = insertvalue [8 x i32] %.fca.6.insert301, i32 0, 7
  tail call void %41(ptr noundef %map, [8 x i32] %.fca.7.insert304, i32 noundef %add.i25) #6
  %48 = ptrtoint ptr %bus_width to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bus_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %49)
  %cmp = icmp eq i32 %49, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shr13 = lshr i32 %cmd_data, 16
  %50 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write, align 4
  %52 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fldrv_priv, align 4
  %54 = ptrtoint ptr %pfow_base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pfow_base.i, align 4
  %bus_width.i28 = getelementptr inbounds %struct.pcm_int_data, ptr %53, i32 0, i32 1
  %56 = ptrtoint ptr %bus_width.i28 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bus_width.i28, align 4
  %mul.i29 = shl i32 %57, 6
  %add.i30 = add i32 %55, 2
  %add = add i32 %add.i30, %mul.i29
  tail call void %51(ptr noundef %map, [8 x i32] %.fca.7.insert224, i32 noundef %add) #6
  %58 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write, align 4
  %60 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fldrv_priv, align 4
  %62 = ptrtoint ptr %pfow_base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %pfow_base.i, align 4
  %bus_width.i33 = getelementptr inbounds %struct.pcm_int_data, ptr %61, i32 0, i32 1
  %64 = ptrtoint ptr %bus_width.i33 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bus_width.i33, align 4
  %mul.i34 = mul i32 %65, 66
  %add.i35 = add i32 %63, 2
  %add38 = add i32 %add.i35, %mul.i34
  %.fca.0.insert114 = insertvalue [8 x i32] poison, i32 %shr13, 0
  %.fca.1.insert117 = insertvalue [8 x i32] %.fca.0.insert114, i32 0, 1
  %.fca.2.insert120 = insertvalue [8 x i32] %.fca.1.insert117, i32 0, 2
  %.fca.3.insert123 = insertvalue [8 x i32] %.fca.2.insert120, i32 0, 3
  %.fca.4.insert126 = insertvalue [8 x i32] %.fca.3.insert123, i32 0, 4
  %.fca.5.insert129 = insertvalue [8 x i32] %.fca.4.insert126, i32 0, 5
  %.fca.6.insert132 = insertvalue [8 x i32] %.fca.5.insert129, i32 0, 6
  %.fca.7.insert135 = insertvalue [8 x i32] %.fca.6.insert132, i32 0, 7
  tail call void %59(ptr noundef %map, [8 x i32] %.fca.7.insert135, i32 noundef %add38) #6
  %66 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %write, align 4
  %68 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %fldrv_priv, align 4
  %70 = ptrtoint ptr %pfow_base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pfow_base.i, align 4
  %bus_width.i38 = getelementptr inbounds %struct.pcm_int_data, ptr %69, i32 0, i32 1
  %72 = ptrtoint ptr %bus_width.i38 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bus_width.i38, align 4
  %mul.i39 = mul i32 %73, 68
  %add.i40 = add i32 %71, 2
  %add42 = add i32 %add.i40, %mul.i39
  tail call void %67(ptr noundef %map, [8 x i32] %.fca.7.insert472, i32 noundef %add42) #6
  %74 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write, align 4
  %76 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fldrv_priv, align 4
  %78 = ptrtoint ptr %pfow_base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pfow_base.i, align 4
  %bus_width.i43 = getelementptr inbounds %struct.pcm_int_data, ptr %77, i32 0, i32 1
  %80 = ptrtoint ptr %bus_width.i43 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bus_width.i43, align 4
  %mul.i44 = mul i32 %81, 69
  %add.i45 = add i32 %79, 2
  %add46 = add i32 %add.i45, %mul.i44
  tail call void %75(ptr noundef %map, [8 x i32] %.fca.7.insert416, i32 noundef %add46) #6
  %82 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write, align 4
  %84 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fldrv_priv, align 4
  %86 = ptrtoint ptr %pfow_base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pfow_base.i, align 4
  %bus_width.i48 = getelementptr inbounds %struct.pcm_int_data, ptr %85, i32 0, i32 1
  %88 = ptrtoint ptr %bus_width.i48 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %bus_width.i48, align 4
  %mul.i49 = mul i32 %89, 72
  %add.i50 = add i32 %87, 2
  %add50 = add i32 %add.i50, %mul.i49
  tail call void %83(ptr noundef %map, [8 x i32] %.fca.7.insert360, i32 noundef %add50) #6
  %90 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write, align 4
  %92 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %fldrv_priv, align 4
  %94 = ptrtoint ptr %pfow_base.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pfow_base.i, align 4
  %bus_width.i53 = getelementptr inbounds %struct.pcm_int_data, ptr %93, i32 0, i32 1
  %96 = ptrtoint ptr %bus_width.i53 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %bus_width.i53, align 4
  %mul.i54 = mul i32 %97, 73
  %add.i55 = add i32 %95, 2
  %add54 = add i32 %add.i55, %mul.i54
  tail call void %91(ptr noundef %map, [8 x i32] %.fca.7.insert304, i32 noundef %add54) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cmd_code.off = add i32 %cmd_code, -233
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cmd_code.off)
  %switch = icmp ult i32 %cmd_code.off, 2
  br i1 %switch, label %if.then58, label %if.end.if.end67_crit_edge

if.end.if.end67_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then58:                                        ; preds = %if.end
  %read = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  %98 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %read, align 4
  %100 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %fldrv_priv, align 4
  %102 = ptrtoint ptr %pfow_base.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pfow_base.i, align 4
  %bus_width.i58 = getelementptr inbounds %struct.pcm_int_data, ptr %101, i32 0, i32 1
  %104 = ptrtoint ptr %bus_width.i58 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %bus_width.i58, align 4
  %mul.i59 = shl i32 %105, 3
  %add.i60 = add i32 %mul.i59, %103
  call void %99(ptr nonnull sret(%union.map_word) align 4 %tmp, ptr noundef %map, i32 noundef %add.i60) #6
  %106 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %tmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd_mpr)
  %cmp6181.not = icmp eq i32 %cmd_mpr, 0
  br i1 %cmp6181.not, label %if.then58.if.end67_crit_edge, label %if.then58.for.body_crit_edge

if.then58.for.body_crit_edge:                     ; preds = %if.then58
  br label %for.body

if.then58.if.end67_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then58.for.body_crit_edge
  %i.082 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then58.for.body_crit_edge ]
  %108 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %write, align 4
  %arrayidx63 = getelementptr i8, ptr %buf, i32 %i.082
  %110 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx63, align 1
  %conv = zext i8 %111 to i32
  %112 = ptrtoint ptr %pfow_base.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %pfow_base.i, align 4
  %add64 = add i32 %i.082, %107
  %add65 = add i32 %add64, %113
  %.fca.0.insert = insertvalue [8 x i32] poison, i32 %conv, 0
  %.fca.1.insert = insertvalue [8 x i32] %.fca.0.insert, i32 0, 1
  %.fca.2.insert = insertvalue [8 x i32] %.fca.1.insert, i32 0, 2
  %.fca.3.insert = insertvalue [8 x i32] %.fca.2.insert, i32 0, 3
  %.fca.4.insert = insertvalue [8 x i32] %.fca.3.insert, i32 0, 4
  %.fca.5.insert = insertvalue [8 x i32] %.fca.4.insert, i32 0, 5
  %.fca.6.insert = insertvalue [8 x i32] %.fca.5.insert, i32 0, 6
  %.fca.7.insert = insertvalue [8 x i32] %.fca.6.insert, i32 0, 7
  call void %109(ptr noundef %map, [8 x i32] %.fca.7.insert, i32 noundef %add65) #6
  %inc = add nuw i32 %i.082, 1
  %exitcond.not = icmp eq i32 %inc, %cmd_mpr
  br i1 %exitcond.not, label %for.body.if.end67_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.if.end67_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.end67:                                         ; preds = %for.body.if.end67_crit_edge, %if.then58.if.end67_crit_edge, %if.end.if.end67_crit_edge
  %114 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %write, align 4
  %116 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %fldrv_priv, align 4
  %118 = ptrtoint ptr %pfow_base.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %pfow_base.i, align 4
  %bus_width.i63 = getelementptr inbounds %struct.pcm_int_data, ptr %117, i32 0, i32 1
  %120 = ptrtoint ptr %bus_width.i63 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %bus_width.i63, align 4
  %mul.i64 = mul i32 %121, 96
  %add.i65 = add i32 %mul.i64, %119
  call void %115(ptr noundef %map, [8 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 noundef %add.i65) #6
  %122 = ptrtoint ptr %bus_width to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %bus_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %123)
  %cmp72 = icmp eq i32 %123, 4
  br i1 %cmp72, label %if.then74, label %if.end67.if.end79_crit_edge

if.end67.if.end79_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.then74:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  %124 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %write, align 4
  %126 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %fldrv_priv, align 4
  %128 = ptrtoint ptr %pfow_base.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %pfow_base.i, align 4
  %bus_width.i68 = getelementptr inbounds %struct.pcm_int_data, ptr %127, i32 0, i32 1
  %130 = ptrtoint ptr %bus_width.i68 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %bus_width.i68, align 4
  %mul.i69 = mul i32 %131, 96
  %add.i70 = add i32 %129, 2
  %add77 = add i32 %add.i70, %mul.i69
  call void %125(ptr noundef %map, [8 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], i32 noundef %add77) #6
  br label %if.end79

if.end79:                                         ; preds = %if.then74, %if.end67.if.end79_crit_edge
  %read81 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 7
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end79
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp80) #6
  %132 = ptrtoint ptr %read81 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %read81, align 4
  %134 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %fldrv_priv, align 4
  %136 = ptrtoint ptr %pfow_base.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %pfow_base.i, align 4
  %bus_width.i73 = getelementptr inbounds %struct.pcm_int_data, ptr %135, i32 0, i32 1
  %138 = ptrtoint ptr %bus_width.i73 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %bus_width.i73, align 4
  %mul.i74 = mul i32 %139, 102
  %add.i75 = add i32 %mul.i74, %137
  call void %133(ptr nonnull sret(%union.map_word) align 4 %tmp80, ptr noundef %map, i32 noundef %add.i75) #6
  %140 = ptrtoint ptr %tmp80 to i32
  call void @__asan_load4_noabort(i32 %140)
  %sr.sroa.0.0.copyload = load i32, ptr %tmp80, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp80) #6
  %141 = ptrtoint ptr %bus_width to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %bus_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %142)
  %cmp85 = icmp eq i32 %142, 4
  br i1 %cmp85, label %if.then87, label %do.body.do.cond_crit_edge

do.body.do.cond_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond

if.then87:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp88) #6
  %143 = ptrtoint ptr %read81 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %read81, align 4
  %145 = ptrtoint ptr %fldrv_priv to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %fldrv_priv, align 4
  %147 = ptrtoint ptr %pfow_base.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %pfow_base.i, align 4
  %bus_width.i78 = getelementptr inbounds %struct.pcm_int_data, ptr %146, i32 0, i32 1
  %149 = ptrtoint ptr %bus_width.i78 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %bus_width.i78, align 4
  %mul.i79 = mul i32 %150, 102
  %add.i80 = add i32 %148, 2
  %add91 = add i32 %add.i80, %mul.i79
  call void %144(ptr nonnull sret(%union.map_word) align 4 %tmp88, ptr noundef %map, i32 noundef %add91) #6
  %151 = ptrtoint ptr %tmp88 to i32
  call void @__asan_load4_noabort(i32 %151)
  %sr.sroa.0.0.copyload137 = load i32, ptr %tmp88, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp88) #6
  %shl = shl i32 %sr.sroa.0.0.copyload137, 16
  %add93 = add i32 %shl, %sr.sroa.0.0.copyload
  br label %do.cond

do.cond:                                          ; preds = %if.then87, %do.body.do.cond_crit_edge
  %status_reg.0 = phi i32 [ %add93, %if.then87 ], [ %sr.sroa.0.0.copyload, %do.body.do.cond_crit_edge ]
  %and95 = and i32 %status_reg.0, %spec.select.i
  %cmp96.not = icmp eq i32 %and95, %spec.select.i
  br i1 %cmp96.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__initcall__kmod_lpddr2_nvm__187_493_lpddr2_nvm_drv_init6, !1, !"__initcall__kmod_lpddr2_nvm__187_493_lpddr2_nvm_drv_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/lpddr/lpddr2_nvm.c", i32 493, i32 1}
!2 = !{ptr @__exitcall_lpddr2_nvm_drv_exit, !1, !"__exitcall_lpddr2_nvm_drv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file188, !4, !"__UNIQUE_ID_file188", i1 false, i1 false}
!4 = !{!"../drivers/mtd/lpddr/lpddr2_nvm.c", i32 494, i32 1}
!5 = !{ptr @__UNIQUE_ID_license189, !4, !"__UNIQUE_ID_license189", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author190, !7, !"__UNIQUE_ID_author190", i1 false, i1 false}
!7 = !{!"../drivers/mtd/lpddr/lpddr2_nvm.c", i32 495, i32 1}
!8 = !{ptr @__UNIQUE_ID_description191, !9, !"__UNIQUE_ID_description191", i1 false, i1 false}
!9 = !{!"../drivers/mtd/lpddr/lpddr2_nvm.c", i32 496, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/lpddr/lpddr2_nvm.c", i32 487, i32 11}
!12 = !{ptr @lpddr2_nvm_drv, !13, !"lpddr2_nvm_drv", i1 false, i1 false}
!13 = !{!"../drivers/mtd/lpddr/lpddr2_nvm.c", i32 485, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/lpddr/lpddr2_nvm.c", i32 469, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @lpddr2_nvm_probe._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @lpddr2_nvm_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @lpddr2_nvm_mtd_info, !21, !"lpddr2_nvm_mtd_info", i1 false, i1 false}
!21 = !{!"../drivers/mtd/lpddr/lpddr2_nvm.c", i32 396, i32 30}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mtd/lpddr/lpddr2_nvm.c", i32 79, i32 8}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @lpdd2_nvm_mutex, !23, !"lpdd2_nvm_mutex", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 696922}
!36 = !{!37}
!37 = distinct !{!37, !38, !"build_map_word: %agg.result"}
!38 = distinct !{!38, !"build_map_word"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"build_map_word: %agg.result"}
!41 = distinct !{!41, !"build_map_word"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"build_map_word: %agg.result"}
!44 = distinct !{!44, !"build_map_word"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"build_map_word: %agg.result"}
!47 = distinct !{!47, !"build_map_word"}
