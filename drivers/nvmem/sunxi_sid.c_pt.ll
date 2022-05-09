; ModuleID = '/llk/IR_all_yes/drivers/nvmem/sunxi_sid.c_pt.bc'
source_filename = "../drivers/nvmem/sunxi_sid.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sunxi_sid_cfg = type { i32, i32, i8 }
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
%struct.sunxi_sid = type { ptr, i32 }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }

@__initcall__kmod_nvmem_sunxi_sid__183_217_sunxi_sid_driver_init6 = internal global ptr @sunxi_sid_driver_init, section ".initcall6.init", align 4
@sunxi_sid_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sunxi_sid_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sunxi_sid_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sunxi_sid_driver_exit = internal global ptr @sunxi_sid_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [60 x i8] c"nvmem_sunxi_sid.author=Oliver Schinagl <oliver@schinagl.nl>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [63 x i8] c"nvmem_sunxi_sid.description=Allwinner sunxi security id driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [51 x i8] c"nvmem_sunxi_sid.file=drivers/nvmem/nvmem_sunxi_sid\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [28 x i8] c"nvmem_sunxi_sid.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"eeprom-sunxi-sid\00", [47 x i8] zeroinitializer }, align 32
@sunxi_sid_of_match = internal constant { [8 x %struct.of_device_id], [384 x i8] } { [8 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-sid\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-sid\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun7i_a20_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-sid\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-sid\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_h3_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-sid\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h5-sid\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-sid\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h6_cfg }, %struct.of_device_id zeroinitializer], [384 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sunxi-sid\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/nvmem/sunxi_sid.c\00", [38 x i8] zeroinitializer }, align 32
@sun4i_a10_cfg = internal constant { %struct.sunxi_sid_cfg, [20 x i8] } { %struct.sunxi_sid_cfg { i32 0, i32 16, i8 0 }, [20 x i8] zeroinitializer }, align 32
@sun7i_a20_cfg = internal constant { %struct.sunxi_sid_cfg, [20 x i8] } { %struct.sunxi_sid_cfg { i32 0, i32 512, i8 0 }, [20 x i8] zeroinitializer }, align 32
@sun50i_a64_cfg = internal constant { %struct.sunxi_sid_cfg, [20 x i8] } { %struct.sunxi_sid_cfg { i32 512, i32 256, i8 1 }, [20 x i8] zeroinitializer }, align 32
@sun8i_h3_cfg = internal constant { %struct.sunxi_sid_cfg, [20 x i8] } { %struct.sunxi_sid_cfg { i32 512, i32 256, i8 1 }, [20 x i8] zeroinitializer }, align 32
@sun50i_h6_cfg = internal constant { %struct.sunxi_sid_cfg, [20 x i8] } { %struct.sunxi_sid_cfg { i32 512, i32 512, i8 0 }, [20 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [17 x i8] c"sunxi_sid_driver\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 210, i32 31 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 213, i32 11 }
@___asan_gen_.9 = private unnamed_addr constant [19 x i8] c"sunxi_sid_of_match\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 198, i32 34 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 144, i32 20 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 63, i32 8 }
@___asan_gen_.18 = private unnamed_addr constant [14 x i8] c"sun4i_a10_cfg\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 173, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"sun7i_a20_cfg\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 177, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"sun50i_a64_cfg\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 187, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant [13 x i8] c"sun8i_h3_cfg\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 181, i32 35 }
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"sun50i_h6_cfg\00", align 1
@___asan_gen_.31 = private constant [29 x i8] c"../drivers/nvmem/sunxi_sid.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 193, i32 35 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_sunxi_sid_driver_exit, ptr @__initcall__kmod_nvmem_sunxi_sid__183_217_sunxi_sid_driver_init6, ptr @sunxi_sid_driver_exit, ptr @sunxi_sid_driver, ptr @.str, ptr @sunxi_sid_of_match, ptr @.str.1, ptr @.str.2, ptr @sun4i_a10_cfg, ptr @sun7i_a20_cfg, ptr @sun50i_a64_cfg, ptr @sun8i_h3_cfg, ptr @sun50i_h6_cfg], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_sid_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_sid_of_match to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun7i_a20_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a64_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_h3_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h6_cfg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_sid_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sunxi_sid_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_sid_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sunxi_sid_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_sid_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 8, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %0 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call2, align 4
  %value_offset6 = getelementptr inbounds %struct.sunxi_sid, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %value_offset6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %value_offset6, align 4
  %call7 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call8 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call7) #6
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %size15 = getelementptr inbounds %struct.sunxi_sid_cfg, ptr %call2, i32 0, i32 1
  %5 = ptrtoint ptr %size15 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size15, align 4
  %call.i81 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 88, i32 noundef 3520) #6
  %tobool17.not = icmp eq ptr %call.i81, null
  br i1 %tobool17.not, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %7 = ptrtoint ptr %call.i81 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %call.i81, align 4
  %name = getelementptr inbounds %struct.nvmem_config, ptr %call.i81, i32 0, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.1, ptr %name, align 4
  %type = getelementptr inbounds %struct.nvmem_config, ptr %call.i81, i32 0, i32 9
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %type, align 4
  %read_only = getelementptr inbounds %struct.nvmem_config, ptr %call.i81, i32 0, i32 10
  %10 = ptrtoint ptr %read_only to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %read_only, align 4
  %11 = ptrtoint ptr %size15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size15, align 4
  %size22 = getelementptr inbounds %struct.nvmem_config, ptr %call.i81, i32 0, i32 18
  %13 = ptrtoint ptr %size22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %size22, align 4
  %word_size = getelementptr inbounds %struct.nvmem_config, ptr %call.i81, i32 0, i32 19
  %14 = ptrtoint ptr %word_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %word_size, align 4
  %stride = getelementptr inbounds %struct.nvmem_config, ptr %call.i81, i32 0, i32 20
  %15 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %stride, align 4
  %priv = getelementptr inbounds %struct.nvmem_config, ptr %call.i81, i32 0, i32 21
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %priv, align 4
  %need_register_readout = getelementptr inbounds %struct.sunxi_sid_cfg, ptr %call2, i32 0, i32 2
  %17 = ptrtoint ptr %need_register_readout to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %need_register_readout, align 4, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool23.not = icmp eq i8 %18, 0
  %spec.select = select i1 %tobool23.not, ptr @sunxi_sid_read, ptr @sun8i_sid_read_by_reg
  %19 = getelementptr inbounds %struct.nvmem_config, ptr %call.i81, i32 0, i32 15
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %spec.select, ptr %19, align 4
  %call27 = tail call ptr @devm_nvmem_register(ptr noundef %dev1, ptr noundef nonnull %call.i81) #6
  %cmp.i82 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %if.then29, label %if.end8.i.i

if.then29:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %call27 to i32
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end19
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #9
  %tobool33.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool33.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end35

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %call37 = tail call i32 %23(ptr noundef nonnull %call.i, i32 noundef 0, ptr noundef nonnull %call9.i.i, i32 noundef %6) #6
  tail call void @add_device_randomness(ptr noundef nonnull %call9.i.i, i32 noundef %6) #6
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call27, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end8.i.i.cleanup_crit_edge, %if.then29, %if.end14.cleanup_crit_edge, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then11 ], [ %21, %if.then29 ], [ 0, %if.end35 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end14.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_sid_read_by_reg(ptr nocapture noundef readonly %context, i32 noundef %offset, ptr noundef %val, i32 noundef %bytes) #2 align 64 {
entry:
  %word = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %word) #6
  %0 = ptrtoint ptr %word to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %word, align 4, !annotation !40
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bytes)
  %cmp24 = icmp ugt i32 %bytes, 3
  br i1 %cmp24, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %bytes.addr.027 = phi i32 [ %sub, %if.end.while.body_crit_edge ], [ %bytes, %entry.while.body_crit_edge ]
  %val.addr.026 = phi ptr [ %add.ptr, %if.end.while.body_crit_edge ], [ %val, %entry.while.body_crit_edge ]
  %offset.addr.025 = phi i32 [ %add, %if.end.while.body_crit_edge ], [ %offset, %entry.while.body_crit_edge ]
  %call = tail call fastcc i32 @sun8i_sid_register_readout(ptr noundef %context, i32 noundef %offset.addr.025, ptr noundef %val.addr.026)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %val.addr.026, i32 4
  %add = add i32 %offset.addr.025, 4
  %sub = add i32 %bytes.addr.027, -4
  %cmp = icmp ugt i32 %sub, 3
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %offset.addr.0.lcssa = phi i32 [ %offset, %entry.while.end_crit_edge ], [ %add, %if.end.while.end_crit_edge ]
  %val.addr.0.lcssa = phi ptr [ %val, %entry.while.end_crit_edge ], [ %add.ptr, %if.end.while.end_crit_edge ]
  %bytes.addr.0.lcssa = phi i32 [ %bytes, %entry.while.end_crit_edge ], [ %sub, %if.end.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes.addr.0.lcssa)
  %tobool1.not = icmp eq i32 %bytes.addr.0.lcssa, 0
  br i1 %tobool1.not, label %while.end.cleanup_crit_edge, label %if.end3

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %while.end
  %call4 = call fastcc i32 @sun8i_sid_register_readout(ptr noundef %context, i32 noundef %offset.addr.0.lcssa, ptr noundef nonnull %word)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %1 = call ptr @memcpy(ptr %val.addr.0.lcssa, ptr %word, i32 %bytes.addr.0.lcssa)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end3.cleanup_crit_edge, %while.end.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ 0, %while.end.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ %call, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %word) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_sid_read(ptr nocapture noundef readonly %context, i32 noundef %offset, ptr noundef %val, i32 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %value_offset = getelementptr inbounds %struct.sunxi_sid, ptr %context, i32 0, i32 1
  %2 = ptrtoint ptr %value_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %offset
  tail call void @mmiocpy(ptr noundef %val, ptr noundef %add.ptr1, i32 noundef %bytes) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun8i_sid_register_readout(ptr nocapture noundef readonly %sid, i32 noundef %offset, ptr noundef writeonly %out) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %offset, 16
  %shl = and i32 %and, 33488896
  %or = or i32 %shl, 44034
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %or)
  %1 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sid, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #6, !srcloc !42
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 250000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 64) #6
  %3 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sid, align 4
  %add.ptr1270 = getelementptr i8, ptr %4, i32 64
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1270) #6, !srcloc !43
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  %and1571 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1571)
  %tobool.not72 = icmp eq i32 %and1571, 0
  br i1 %tobool.not72, label %entry.for.end_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.lhs.true:                                    ; preds = %if.then32.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call19 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call19, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call19, %add.i
  br i1 %cmp3.i, label %if.then22, label %if.then32

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sid, align 4
  %add.ptr26 = getelementptr i8, ptr %8, i32 64
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #6, !srcloc !43
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  br label %for.end

if.then32:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #6
  %11 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sid, align 4
  %add.ptr12 = getelementptr i8, ptr %12, i32 64
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #6, !srcloc !43
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  %and15 = and i32 %14, 2
  %tobool.not = icmp eq i32 %and15, 0
  br i1 %tobool.not, label %if.then32.for.end_crit_edge, label %if.then32.land.lhs.true_crit_edge

if.then32.land.lhs.true_crit_edge:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.then32.for.end_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.then32.for.end_crit_edge, %if.then22, %entry.for.end_crit_edge
  %reg_val.0 = phi i32 [ %10, %if.then22 ], [ %6, %entry.for.end_crit_edge ], [ %14, %if.then32.for.end_crit_edge ]
  %and35 = and i32 %reg_val.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end39, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end39:                                         ; preds = %for.end
  %tobool40.not = icmp eq ptr %out, null
  br i1 %tobool40.not, label %if.end39.do.body50_crit_edge, label %if.then41

if.end39.do.body50_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body50

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sid, align 4
  %add.ptr45 = getelementptr i8, ptr %16, i32 96
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #6, !srcloc !43
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  %19 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %out, align 4
  br label %do.body50

do.body50:                                        ; preds = %if.then41, %if.end39.do.body50_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sid, align 4
  %add.ptr54 = getelementptr i8, ptr %21, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 0) #6, !srcloc !42
  br label %cleanup

cleanup:                                          ; preds = %do.body50, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body50 ], [ -110, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_nvmem_sunxi_sid__183_217_sunxi_sid_driver_init6, !1, !"__initcall__kmod_nvmem_sunxi_sid__183_217_sunxi_sid_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/nvmem/sunxi_sid.c", i32 217, i32 1}
!2 = !{ptr @__exitcall_sunxi_sid_driver_exit, !1, !"__exitcall_sunxi_sid_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/nvmem/sunxi_sid.c", i32 219, i32 1}
!5 = !{ptr @__UNIQUE_ID_description185, !6, !"__UNIQUE_ID_description185", i1 false, i1 false}
!6 = !{!"../drivers/nvmem/sunxi_sid.c", i32 220, i32 1}
!7 = !{ptr @__UNIQUE_ID_file186, !8, !"__UNIQUE_ID_file186", i1 false, i1 false}
!8 = !{!"../drivers/nvmem/sunxi_sid.c", i32 221, i32 1}
!9 = !{ptr @__UNIQUE_ID_license187, !8, !"__UNIQUE_ID_license187", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/nvmem/sunxi_sid.c", i32 213, i32 11}
!12 = !{ptr @sunxi_sid_driver, !13, !"sunxi_sid_driver", i1 false, i1 false}
!13 = !{!"../drivers/nvmem/sunxi_sid.c", i32 210, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/nvmem/sunxi_sid.c", i32 144, i32 20}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/nvmem/sunxi_sid.c", i32 63, i32 8}
!18 = !{ptr @sunxi_sid_of_match, !19, !"sunxi_sid_of_match", i1 false, i1 false}
!19 = !{!"../drivers/nvmem/sunxi_sid.c", i32 198, i32 34}
!20 = !{ptr @sun4i_a10_cfg, !21, !"sun4i_a10_cfg", i1 false, i1 false}
!21 = !{!"../drivers/nvmem/sunxi_sid.c", i32 173, i32 35}
!22 = !{ptr @sun7i_a20_cfg, !23, !"sun7i_a20_cfg", i1 false, i1 false}
!23 = !{!"../drivers/nvmem/sunxi_sid.c", i32 177, i32 35}
!24 = !{ptr @sun50i_a64_cfg, !25, !"sun50i_a64_cfg", i1 false, i1 false}
!25 = !{!"../drivers/nvmem/sunxi_sid.c", i32 187, i32 35}
!26 = !{ptr @sun8i_h3_cfg, !27, !"sun8i_h3_cfg", i1 false, i1 false}
!27 = !{!"../drivers/nvmem/sunxi_sid.c", i32 181, i32 35}
!28 = !{ptr @sun50i_h6_cfg, !29, !"sun50i_h6_cfg", i1 false, i1 false}
!29 = !{!"../drivers/nvmem/sunxi_sid.c", i32 193, i32 35}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i8 0, i8 2}
!40 = !{!"auto-init"}
!41 = !{i64 2152976526}
!42 = !{i64 4774159}
!43 = !{i64 4774577}
!44 = !{i64 2152978486}
!45 = !{i64 2152978968}
!46 = !{i64 2152979459}
!47 = !{i64 2152979675}
