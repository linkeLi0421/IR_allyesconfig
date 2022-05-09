; ModuleID = '/llk/IR_all_yes/drivers/mcb/mcb-lpc.c_pt.bc'
source_filename = "../drivers/mcb/mcb-lpc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.priv = type { ptr, ptr, ptr }

@mcb_lpc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mcb_lpc_probe, ptr @mcb_lpc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_mcb_lpc__171_156_mcb_lpc_init6 = internal global ptr @mcb_lpc_init, section ".initcall6.init", align 4
@__exitcall_mcb_lpc_exit = internal global ptr @mcb_lpc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author172 = internal constant [54 x i8] c"mcb_lpc.author=Andreas Werner <andreas.werner@men.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [33 x i8] c"mcb_lpc.file=drivers/mcb/mcb-lpc\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [20 x i8] c"mcb_lpc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description175 = internal constant [41 x i8] c"mcb_lpc.description=MCB over LPC support\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns176 = internal constant [22 x i8] c"mcb_lpc.import_ns=MCB\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mcb-lpc\00", [24 x i8] zeroinitializer }, align 32
@mcb_lpc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 34, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No Memory resource\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mcb_lpc_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/mcb/mcb-lpc.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mcb_lpc_probe._entry_ptr = internal global ptr @mcb_lpc_probe._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mcb_lpc\00", [24 x i8] zeroinitializer }, align 32
@mcb_lpc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 42, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to request IO memory\0A\00", [35 x i8] zeroinitializer }, align 32
@mcb_lpc_probe._entry_ptr.9 = internal global ptr @mcb_lpc_probe._entry.7, section ".printk_index", align 4
@mcb_lpc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 49, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Cannot ioremap\0A\00", [16 x i8] zeroinitializer }, align 32
@mcb_lpc_probe._entry_ptr.12 = internal global ptr @mcb_lpc_probe._entry.10, section ".printk_index", align 4
@mcb_lpc_probe.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 0, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Found %d cells\0A\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"mcb_lpc_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 111, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 113, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 34, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 38, i32 8 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 42, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 49, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [25 x i8] c"../drivers/mcb/mcb-lpc.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 65, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description175, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_import_ns176, ptr @__UNIQUE_ID_license174, ptr @__exitcall_mcb_lpc_exit, ptr @__initcall__kmod_mcb_lpc__171_156_mcb_lpc_init6, ptr @mcb_lpc_exit, ptr @mcb_lpc_probe._entry, ptr @mcb_lpc_probe._entry.10, ptr @mcb_lpc_probe._entry.7, ptr @mcb_lpc_probe._entry_ptr, ptr @mcb_lpc_probe._entry_ptr.12, ptr @mcb_lpc_probe._entry_ptr.9, ptr @mcb_lpc_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcb_lpc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcb_lpc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcb_lpc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcb_lpc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mcb_lpc_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_device_unregister(ptr noundef null) #5
  tail call void @platform_driver_unregister(ptr noundef nonnull @mcb_lpc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mcb_lpc_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcb_lpc_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %mem = getelementptr inbounds %struct.priv, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %mem, align 4
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call1, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 1
  %3 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %2
  %add.i = add i32 %sub.i, %4
  %call11 = tail call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @iomem_resource, i32 noundef %2, i32 noundef %add.i, ptr noundef nonnull @.str.6) #5
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  %5 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mem, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %end.i90 = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %end.i90 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end.i90, align 4
  %sub.i91 = sub i32 1, %8
  %add.i92 = add i32 %sub.i91, %10
  %call24 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %8, i32 noundef %add.i92) #5
  %base = getelementptr inbounds %struct.priv, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call24, ptr %base, align 4
  %tobool26.not = icmp eq ptr %call24, null
  br i1 %tobool26.not, label %do.end30, label %if.end32

do.end30:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end32:                                         ; preds = %if.end18
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call34 = tail call ptr @mcb_alloc_bus(ptr noundef %dev) #5
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call34, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call34 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end32
  %15 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mem, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %call45 = tail call i32 @chameleon_parse_cells(ptr noundef %call34, i32 noundef %18, ptr noundef %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp = icmp slt i32 %call45, 0
  br i1 %cmp, label %if.then46, label %do.body49

if.then46:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  tail call void @mcb_release_bus(ptr noundef %22) #5
  br label %cleanup

do.body49:                                        ; preds = %if.end40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcb_lpc_probe.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcb_lpc_probe, %if.then54)) #5
          to label %do.end58 [label %if.then54], !srcloc !59

if.then54:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcb_lpc_probe.__UNIQUE_ID_ddebug170, ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call45) #5
  br label %do.end58

do.end58:                                         ; preds = %if.then54, %do.body49
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  tail call void @mcb_bus_add_devices(ptr noundef %24) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end58, %if.then46, %if.then37, %do.end30, %do.end16, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then37 ], [ %call45, %if.then46 ], [ 0, %do.end58 ], [ -12, %do.end30 ], [ -16, %do.end16 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcb_lpc_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @mcb_release_bus(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mcb_alloc_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @chameleon_parse_cells(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcb_release_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcb_bus_add_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !35, !36, !37, !39, !40, !42, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_mcb_lpc__171_156_mcb_lpc_init6, !1, !"__initcall__kmod_mcb_lpc__171_156_mcb_lpc_init6", i1 false, i1 false}
!1 = !{!"../drivers/mcb/mcb-lpc.c", i32 156, i32 1}
!2 = !{ptr @__exitcall_mcb_lpc_exit, !3, !"__exitcall_mcb_lpc_exit", i1 false, i1 false}
!3 = !{!"../drivers/mcb/mcb-lpc.c", i32 157, i32 1}
!4 = !{ptr @__UNIQUE_ID_author172, !5, !"__UNIQUE_ID_author172", i1 false, i1 false}
!5 = !{!"../drivers/mcb/mcb-lpc.c", i32 159, i32 1}
!6 = !{ptr @__UNIQUE_ID_file173, !7, !"__UNIQUE_ID_file173", i1 false, i1 false}
!7 = !{!"../drivers/mcb/mcb-lpc.c", i32 160, i32 1}
!8 = !{ptr @__UNIQUE_ID_license174, !7, !"__UNIQUE_ID_license174", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description175, !10, !"__UNIQUE_ID_description175", i1 false, i1 false}
!10 = !{!"../drivers/mcb/mcb-lpc.c", i32 161, i32 1}
!11 = !{ptr @__UNIQUE_ID_import_ns176, !12, !"__UNIQUE_ID_import_ns176", i1 false, i1 false}
!12 = !{!"../drivers/mcb/mcb-lpc.c", i32 162, i32 1}
!13 = distinct !{null, !14, !"mcb_lpc_pdev", i1 false, i1 false}
!14 = !{!"../drivers/mcb/mcb-lpc.c", i32 82, i32 32}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mcb/mcb-lpc.c", i32 113, i32 11}
!17 = !{ptr @mcb_lpc_driver, !18, !"mcb_lpc_driver", i1 false, i1 false}
!18 = !{!"../drivers/mcb/mcb-lpc.c", i32 111, i32 31}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mcb/mcb-lpc.c", i32 34, i32 3}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mcb_lpc_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @mcb_lpc_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mcb/mcb-lpc.c", i32 38, i32 8}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mcb/mcb-lpc.c", i32 42, i32 3}
!31 = !{ptr @mcb_lpc_probe._entry.7, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mcb_lpc_probe._entry_ptr.9, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mcb/mcb-lpc.c", i32 49, i32 3}
!35 = !{ptr @mcb_lpc_probe._entry.10, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mcb_lpc_probe._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mcb/mcb-lpc.c", i32 65, i32 2}
!39 = !{ptr @mcb_lpc_probe.__UNIQUE_ID_ddebug170, !38, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!40 = distinct !{null, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mcb/mcb-lpc.c", i32 121, i32 12}
!42 = distinct !{null, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mcb/mcb-lpc.c", i32 130, i32 12}
!44 = distinct !{null, !45, !"mcb_lpc_dmi_table", i1 false, i1 false}
!45 = !{!"../drivers/mcb/mcb-lpc.c", i32 119, i32 35}
!46 = distinct !{null, !47, !"sc24_fpga_resource", i1 false, i1 false}
!47 = !{!"../drivers/mcb/mcb-lpc.c", i32 108, i32 24}
!48 = distinct !{null, !49, !"sc31_fpga_resource", i1 false, i1 false}
!49 = !{!"../drivers/mcb/mcb-lpc.c", i32 109, i32 24}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 2148291547, i64 2148291552, i64 2148291565, i64 2148291609, i64 2148291643, i64 2148291664}
