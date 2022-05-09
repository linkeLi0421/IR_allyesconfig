; ModuleID = '/llk/IR_all_yes/drivers/nvmem/stm32-romem.c_pt.bc'
source_filename = "../drivers/nvmem/stm32-romem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.stm32_romem_cfg = type { i32 }
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
%struct.stm32_romem_priv = type { ptr, %struct.nvmem_config }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.arm_smccc_res = type { i32, i32, i32, i32 }

@__initcall__kmod_nvmem_stm32_romem__174_197_stm32_romem_driver_init6 = internal global ptr @stm32_romem_driver_init, section ".initcall6.init", align 4
@stm32_romem_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_romem_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_romem_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_romem_driver_exit = internal global ptr @stm32_romem_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author175 = internal constant [66 x i8] c"nvmem_stm32_romem.author=Fabrice Gasnier <fabrice.gasnier@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [62 x i8] c"nvmem_stm32_romem.description=STMicroelectronics STM32 RO-MEM\00", section ".modinfo", align 1
@__UNIQUE_ID_alias177 = internal constant [51 x i8] c"nvmem_stm32_romem.alias=platform:nvmem-stm32-romem\00", section ".modinfo", align 1
@__UNIQUE_ID_file178 = internal constant [55 x i8] c"nvmem_stm32_romem.file=drivers/nvmem/nvmem_stm32_romem\00", section ".modinfo", align 1
@__UNIQUE_ID_license179 = internal constant [33 x i8] c"nvmem_stm32_romem.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stm32-romem\00", [20 x i8] zeroinitializer }, align 32
@stm32_romem_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32f4-otp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32mp15-bsec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stm32mp15_bsec_cfg }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@stm32_bsec_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 97, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Can't read data%d (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stm32_bsec_read\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/nvmem/stm32-romem.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_bsec_read._entry_ptr = internal global ptr @stm32_bsec_read._entry, section ".printk_index", align 4
@stm32_bsec_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 131, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Can't write data%d (%d)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stm32_bsec_write\00", [47 x i8] zeroinitializer }, align 32
@stm32_bsec_write._entry_ptr = internal global ptr @stm32_bsec_write._entry, section ".printk_index", align 4
@stm32mp15_bsec_cfg = internal constant { %struct.stm32_romem_cfg, [28 x i8] } { %struct.stm32_romem_cfg { i32 384 }, [28 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [19 x i8] c"stm32_romem_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 190, i32 31 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 193, i32 11 }
@___asan_gen_.14 = private unnamed_addr constant [21 x i8] c"stm32_romem_of_match\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 181, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 96, i32 5 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 131, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant [19 x i8] c"stm32mp15_bsec_cfg\00", align 1
@___asan_gen_.45 = private constant [31 x i8] c"../drivers/nvmem/stm32-romem.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 177, i32 37 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_alias177, ptr @__UNIQUE_ID_author175, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file178, ptr @__UNIQUE_ID_license179, ptr @__exitcall_stm32_romem_driver_exit, ptr @__initcall__kmod_nvmem_stm32_romem__174_197_stm32_romem_driver_init6, ptr @stm32_bsec_read._entry, ptr @stm32_bsec_read._entry_ptr, ptr @stm32_bsec_write._entry, ptr @stm32_bsec_write._entry_ptr, ptr @stm32_romem_driver_exit, ptr @stm32_romem_driver, ptr @.str, ptr @stm32_romem_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @stm32mp15_bsec_cfg], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_romem_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_romem_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_bsec_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_bsec_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32mp15_bsec_cfg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_romem_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_romem_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_romem_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_romem_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_romem_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 92, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call2) #6
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %cfg10 = getelementptr inbounds %struct.stm32_romem_priv, ptr %call.i, i32 0, i32 1
  %name = getelementptr inbounds %struct.stm32_romem_priv, ptr %call.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str, ptr %name, align 4
  %word_size = getelementptr inbounds %struct.stm32_romem_priv, ptr %call.i, i32 0, i32 1, i32 19
  %3 = ptrtoint ptr %word_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %word_size, align 4
  %stride = getelementptr inbounds %struct.stm32_romem_priv, ptr %call.i, i32 0, i32 1, i32 20
  %4 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %stride, align 4
  %5 = ptrtoint ptr %cfg10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev1, ptr %cfg10, align 4
  %priv16 = getelementptr inbounds %struct.stm32_romem_priv, ptr %call.i, i32 0, i32 1, i32 21
  %6 = ptrtoint ptr %priv16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %priv16, align 4
  %owner = getelementptr inbounds %struct.stm32_romem_priv, ptr %call.i, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %owner, align 4
  %driver = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 4
  %of_match_table = getelementptr inbounds %struct.device_driver, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %of_match_table to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_match_table, align 4
  %call18 = tail call ptr @of_match_device(ptr noundef %11, ptr noundef %dev1) #6
  %data = getelementptr inbounds %struct.of_device_id, ptr %call18, i32 0, i32 3
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %tobool19.not = icmp eq ptr %13, null
  br i1 %tobool19.not, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %read_only = getelementptr inbounds %struct.stm32_romem_priv, ptr %call.i, i32 0, i32 1, i32 10
  %14 = ptrtoint ptr %read_only to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %read_only, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call2, i32 0, i32 1
  %15 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %end.i, align 4
  %17 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call2, align 4
  %sub.i = add i32 %16, 1
  %add.i = sub i32 %sub.i, %18
  br label %if.end31

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %13, align 4
  %reg_write = getelementptr inbounds %struct.stm32_romem_priv, ptr %call.i, i32 0, i32 1, i32 16
  %21 = ptrtoint ptr %reg_write to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @stm32_bsec_write, ptr %reg_write, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then20
  %.sink = phi i32 [ %add.i, %if.then20 ], [ %20, %if.else ]
  %stm32_bsec_read.sink = phi ptr [ @stm32_romem_read, %if.then20 ], [ @stm32_bsec_read, %if.else ]
  %22 = getelementptr inbounds %struct.stm32_romem_priv, ptr %call.i, i32 0, i32 1, i32 18
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink, ptr %22, align 4
  %24 = getelementptr inbounds %struct.stm32_romem_priv, ptr %call.i, i32 0, i32 1, i32 15
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %stm32_bsec_read.sink, ptr %24, align 4
  %call33 = tail call ptr @devm_nvmem_register(ptr noundef %dev1, ptr noundef %cfg10) #6
  %cmp.i.i = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  %26 = ptrtoint ptr %call33 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %26, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then6 ], [ %spec.select.i, %if.end31 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_romem_read(ptr nocapture noundef readonly %context, i32 noundef %offset, ptr nocapture noundef writeonly %buf, i32 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %bytes, %offset
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %offset)
  %cmp4 = icmp ugt i32 %add, %offset
  br i1 %cmp4, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %buf8.06 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %buf, %entry.for.body_crit_edge ]
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %offset, %entry.for.body_crit_edge ]
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %i.05
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !42
  %incdec.ptr = getelementptr i8, ptr %buf8.06, i32 1
  %3 = ptrtoint ptr %buf8.06 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %buf8.06, align 1
  %inc = add i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %add
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_bsec_read(ptr nocapture noundef readonly %context, i32 noundef %offset, ptr nocapture noundef writeonly %buf, i32 noundef %bytes) #2 align 64 {
entry:
  %res.i = alloca %struct.arm_smccc_res, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.stm32_romem_priv, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %sub = and i32 %offset, -4
  %and = and i32 %offset, 3
  %add = add nuw nsw i32 %and, 3
  %add4 = add i32 %add, %bytes
  %div77 = and i32 %add4, -4
  %add5 = add i32 %div77, %sub
  %size7 = getelementptr inbounds %struct.stm32_romem_priv, ptr %context, i32 0, i32 1, i32 18
  %2 = ptrtoint ptr %size7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add5, i32 %3)
  %cmp = icmp ugt i32 %add5, %3
  br i1 %cmp, label %entry.cleanup35_crit_edge, label %for.cond.preheader

entry.cleanup35_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup35

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %add5)
  %cmp989 = icmp ult i32 %sub, %add5
  br i1 %cmp989, label %for.body.lr.ph, label %for.cond.preheader.cleanup35_crit_edge

for.cond.preheader.cleanup35_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup35

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %4 = getelementptr inbounds %struct.arm_smccc_res, ptr %res.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end17.for.body_crit_edge, %for.body.lr.ph
  %bytes.addr.095 = phi i32 [ %bytes, %for.body.lr.ph ], [ %sub32, %if.end17.for.body_crit_edge ]
  %skip_bytes.093 = phi i32 [ %and, %for.body.lr.ph ], [ 0, %if.end17.for.body_crit_edge ]
  %j.092 = phi i32 [ 0, %for.body.lr.ph ], [ %add33, %if.end17.for.body_crit_edge ]
  %i.090 = phi i32 [ %sub, %for.body.lr.ph ], [ %add34, %if.end17.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %i.090)
  %cmp10 = icmp ult i32 %i.090, 128
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 512
  %add.ptr12 = getelementptr i8, ptr %add.ptr, i32 %i.090
  %7 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #6, !srcloc !43
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %val, align 4
  br label %if.end17

if.else:                                          ; preds = %for.body
  %shr = ashr exact i32 %i.090, 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res.i) #6
  %10 = call ptr @memset(ptr %res.i, i32 255, i32 16)
  call void @__arm_smccc_smc(i32 noundef -2113925117, i32 noundef 1, i32 noundef %shr, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res.i, ptr noundef null) #6
  %11 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %res.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %stm32_bsec_smc.exit.thread, label %cleanup

stm32_bsec_smc.exit.thread:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %4, align 4
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res.i) #6
  br label %if.end17

if.end17:                                         ; preds = %stm32_bsec_smc.exit.thread, %if.then11
  %sub20 = sub nuw nsw i32 4, %skip_bytes.093
  %16 = call i32 @llvm.umin.i32(i32 %bytes.addr.095, i32 %sub20)
  %arrayidx = getelementptr i8, ptr %buf, i32 %j.092
  %arrayidx31 = getelementptr i8, ptr %val, i32 %skip_bytes.093
  %17 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx31, i32 %16)
  %sub32 = sub i32 %bytes.addr.095, %16
  %add33 = add i32 %16, %j.092
  %add34 = add nuw i32 %i.090, 4
  %cmp9 = icmp ult i32 %add34, %add5
  br i1 %cmp9, label %if.end17.for.body_crit_edge, label %if.end17.cleanup35_crit_edge

if.end17.cleanup35_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup35

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res.i) #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %shr, i32 noundef -5) #9
  br label %cleanup35

cleanup35:                                        ; preds = %cleanup, %if.end17.cleanup35_crit_edge, %for.cond.preheader.cleanup35_crit_edge, %entry.cleanup35_crit_edge
  %retval.2 = phi i32 [ -5, %cleanup ], [ -22, %entry.cleanup35_crit_edge ], [ 0, %for.cond.preheader.cleanup35_crit_edge ], [ 0, %if.end17.cleanup35_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_bsec_write(ptr nocapture noundef readonly %context, i32 noundef %offset, ptr nocapture noundef readonly %buf, i32 noundef %bytes) #2 align 64 {
entry:
  %res.i = alloca %struct.arm_smccc_res, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.stm32_romem_priv, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  %2 = or i32 %bytes, %offset
  %3 = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %add = add i32 %bytes, %offset
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %offset)
  %cmp23 = icmp ugt i32 %add, %offset
  br i1 %cmp23, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.025 = phi i32 [ %add8, %for.inc.for.body_crit_edge ], [ %offset, %for.cond.preheader.for.body_crit_edge ]
  %buf32.024 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %buf, %for.cond.preheader.for.body_crit_edge ]
  %shr = ashr i32 %i.025, 2
  %5 = ptrtoint ptr %buf32.024 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %buf32.024, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %res.i) #6
  %7 = call ptr @memset(ptr %res.i, i32 255, i32 16)
  call void @__arm_smccc_smc(i32 noundef -2113925117, i32 noundef 2, i32 noundef %shr, i32 noundef %6, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %res.i, ptr noundef null) #6
  %8 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %res.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %res.i) #6
  br i1 %tobool.not.i, label %for.inc, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %shr, i32 noundef -5) #9
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr i32, ptr %buf32.024, i32 1
  %add8 = add i32 %i.025, 4
  %cmp = icmp ult i32 %add8, %add
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__initcall__kmod_nvmem_stm32_romem__174_197_stm32_romem_driver_init6, !1, !"__initcall__kmod_nvmem_stm32_romem__174_197_stm32_romem_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/nvmem/stm32-romem.c", i32 197, i32 1}
!2 = !{ptr @__exitcall_stm32_romem_driver_exit, !1, !"__exitcall_stm32_romem_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author175, !4, !"__UNIQUE_ID_author175", i1 false, i1 false}
!4 = !{!"../drivers/nvmem/stm32-romem.c", i32 199, i32 1}
!5 = !{ptr @__UNIQUE_ID_description176, !6, !"__UNIQUE_ID_description176", i1 false, i1 false}
!6 = !{!"../drivers/nvmem/stm32-romem.c", i32 200, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias177, !8, !"__UNIQUE_ID_alias177", i1 false, i1 false}
!8 = !{!"../drivers/nvmem/stm32-romem.c", i32 201, i32 1}
!9 = !{ptr @__UNIQUE_ID_file178, !10, !"__UNIQUE_ID_file178", i1 false, i1 false}
!10 = !{!"../drivers/nvmem/stm32-romem.c", i32 202, i32 1}
!11 = !{ptr @__UNIQUE_ID_license179, !10, !"__UNIQUE_ID_license179", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/nvmem/stm32-romem.c", i32 193, i32 11}
!14 = !{ptr @stm32_romem_driver, !15, !"stm32_romem_driver", i1 false, i1 false}
!15 = !{!"../drivers/nvmem/stm32-romem.c", i32 190, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/nvmem/stm32-romem.c", i32 96, i32 5}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @stm32_bsec_read._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @stm32_bsec_read._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/nvmem/stm32-romem.c", i32 131, i32 4}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @stm32_bsec_write._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @stm32_bsec_write._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @stm32_romem_of_match, !30, !"stm32_romem_of_match", i1 false, i1 false}
!30 = !{!"../drivers/nvmem/stm32-romem.c", i32 181, i32 34}
!31 = !{ptr @stm32mp15_bsec_cfg, !32, !"stm32mp15_bsec_cfg", i1 false, i1 false}
!32 = !{!"../drivers/nvmem/stm32-romem.c", i32 177, i32 37}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i64 707705}
!43 = !{i64 707925}
