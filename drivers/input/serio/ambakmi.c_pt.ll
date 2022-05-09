; ModuleID = '/llk/IR_all_yes/drivers/input/serio/ambakmi.c_pt.bc'
source_filename = "../drivers/input/serio/ambakmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.amba_kmi_port = type { ptr, ptr, ptr, i32, i32, i32 }

@__initcall__kmod_ambakmi__288_206_ambakmi_driver_init6 = internal global ptr @ambakmi_driver_init, section ".initcall6.init", align 4
@ambakmi_driver = internal global { %struct.amba_driver, [36 x i8] } { %struct.amba_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @amba_kmi_dev_pm_ops, ptr null, ptr null }, ptr @amba_kmi_probe, ptr @amba_kmi_remove, ptr null, ptr @amba_kmi_idtable }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ambakmi_driver_exit = internal global ptr @ambakmi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [51 x i8] c"ambakmi.author=Russell King <rmk@arm.linux.org.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [47 x i8] c"ambakmi.description=AMBA KMI controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [41 x i8] c"ambakmi.file=drivers/input/serio/ambakmi\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [20 x i8] c"ambakmi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"kmi-pl050\00", [22 x i8] zeroinitializer }, align 32
@amba_kmi_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @amba_kmi_resume, ptr null, ptr @amba_kmi_resume, ptr null, ptr @amba_kmi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@amba_kmi_idtable = internal constant { [2 x %struct.amba_id], [40 x i8] } { [2 x %struct.amba_id] [%struct.amba_id { i32 266320, i32 1048575, ptr null }, %struct.amba_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"KMIREFCLK\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@amba_kmi_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013kmi: failed to claim IRQ%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"amba_kmi_open\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/input/serio/ambakmi.c\00", [34 x i8] zeroinitializer }, align 32
@amba_kmi_open._entry_ptr = internal global ptr @amba_kmi_open._entry, section ".printk_index", align 4
@___asan_gen_.5 = private unnamed_addr constant [15 x i8] c"ambakmi_driver\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 195, i32 27 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 197, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [20 x i8] c"amba_kmi_dev_pm_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 183, i32 8 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"amba_kmi_idtable\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 185, i32 29 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 141, i32 32 }
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [33 x i8] c"../drivers/input/serio/ambakmi.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 81, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_ambakmi_driver_exit, ptr @__initcall__kmod_ambakmi__288_206_ambakmi_driver_init6, ptr @amba_kmi_open._entry, ptr @amba_kmi_open._entry_ptr, ptr @ambakmi_driver_exit, ptr @ambakmi_driver, ptr @.str, ptr @amba_kmi_dev_pm_ops, ptr @amba_kmi_idtable, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ambakmi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amba_kmi_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amba_kmi_idtable to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amba_kmi_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ambakmi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amba_driver_register(ptr noundef nonnull @ambakmi_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ambakmi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @amba_driver_unregister(ptr noundef nonnull @ambakmi_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amba_kmi_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amba_request_regions(ptr noundef %dev, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i72 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1336) #9
  %tobool3.not = icmp eq ptr %call7.i.i, null
  %tobool4.not = icmp eq ptr %call7.i.i72, null
  %or.cond = select i1 %tobool3.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %if.end.out_crit_edge, label %if.end6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end6:                                          ; preds = %if.end
  %id7 = getelementptr inbounds %struct.serio, ptr %call7.i.i72, i32 0, i32 5
  %2 = ptrtoint ptr %id7 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %id7, align 1
  %write = getelementptr inbounds %struct.serio, ptr %call7.i.i72, i32 0, i32 7
  %3 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @amba_kmi_write, ptr %write, align 8
  %open = getelementptr inbounds %struct.serio, ptr %call7.i.i72, i32 0, i32 8
  %4 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @amba_kmi_open, ptr %open, align 4
  %close = getelementptr inbounds %struct.serio, ptr %call7.i.i72, i32 0, i32 9
  %5 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @amba_kmi_close, ptr %close, align 8
  %name = getelementptr inbounds %struct.serio, ptr %call7.i.i72, i32 0, i32 1
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.dev_name.exit_crit_edge

if.end6.dev_name.exit_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end6.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %if.end6.dev_name.exit_crit_edge ]
  %call10 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef %retval.0.i, i32 noundef 32) #6
  %phys = getelementptr inbounds %struct.serio, ptr %call7.i.i72, i32 0, i32 2
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i74 = icmp eq ptr %11, null
  br i1 %tobool.not.i74, label %if.end.i75, label %dev_name.exit.dev_name.exit77_crit_edge

dev_name.exit.dev_name.exit77_crit_edge:          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit77

if.end.i75:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  br label %dev_name.exit77

dev_name.exit77:                                  ; preds = %if.end.i75, %dev_name.exit.dev_name.exit77_crit_edge
  %retval.0.i76 = phi ptr [ %13, %if.end.i75 ], [ %11, %dev_name.exit.dev_name.exit77_crit_edge ]
  %call14 = tail call i32 @strlcpy(ptr noundef %phys, ptr noundef %retval.0.i76, i32 noundef 32) #6
  %14 = ptrtoint ptr %call7.i.i72 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %call7.i.i72, align 8
  %parent = getelementptr inbounds %struct.serio, ptr %call7.i.i72, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %parent, align 8
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i72, ptr %call7.i.i, align 8
  %res = getelementptr inbounds %struct.amba_device, ptr %dev, i32 0, i32 1
  %17 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %res, align 8
  %end.i = getelementptr inbounds %struct.amba_device, ptr %dev, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %18
  %add.i = add i32 %sub.i, %20
  %call20 = tail call ptr @ioremap(i32 noundef %18, i32 noundef %add.i) #6
  %base = getelementptr inbounds %struct.amba_kmi_port, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call20, ptr %base, align 8
  %tobool22.not = icmp eq ptr %call20, null
  br i1 %tobool22.not, label %dev_name.exit77.out_crit_edge, label %if.end24

dev_name.exit77.out_crit_edge:                    ; preds = %dev_name.exit77
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end24:                                         ; preds = %dev_name.exit77
  %call26 = tail call ptr @clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  %clk = getelementptr inbounds %struct.amba_kmi_port, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call26, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %call26 to i32
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 8
  tail call void @iounmap(ptr noundef %25) #6
  br label %out

if.end32:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.amba_device, ptr %dev, i32 0, i32 7
  %26 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq, align 8
  %irq33 = getelementptr inbounds %struct.amba_kmi_port, ptr %call7.i.i, i32 0, i32 3
  %28 = ptrtoint ptr %irq33 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %irq33, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %29 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call7.i.i, align 8
  tail call void @__serio_register_port(ptr noundef %31, ptr noundef null) #6
  br label %cleanup

out:                                              ; preds = %if.then29, %dev_name.exit77.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %23, %if.then29 ], [ -12, %if.end.out_crit_edge ], [ -12, %dev_name.exit77.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #6
  tail call void @kfree(ptr noundef %call7.i.i72) #6
  tail call void @amba_release_regions(ptr noundef %dev) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end32, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %if.end32 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amba_kmi_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @serio_unregister_port(ptr noundef %3) #6
  %clk = getelementptr inbounds %struct.amba_kmi_port, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_put(ptr noundef %5) #6
  %base = getelementptr inbounds %struct.amba_kmi_port, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  tail call void @iounmap(ptr noundef %7) #6
  tail call void @kfree(ptr noundef %1) #6
  tail call void @amba_release_regions(ptr noundef %dev) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amba_kmi_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @serio_reconnect(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_reconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amba_kmi_write(ptr nocapture noundef readonly %io, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 8
  %base = getelementptr inbounds %struct.amba_kmi_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr12 = getelementptr i8, ptr %3, i32 4
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr12) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  %5 = and i8 %4, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp13 = icmp eq i8 %5, 0
  br i1 %cmp13, label %entry.land.rhs_crit_edge, label %entry.do.body.critedge_crit_edge

entry.do.body.critedge_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.critedge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %timeleft.014 = phi i32 [ %dec, %while.body.land.rhs_crit_edge ], [ 10000, %entry.land.rhs_crit_edge ]
  %dec = add nsw i32 %timeleft.014, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %land.rhs.if.end_crit_edge, label %while.body

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body:                                       ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 2147480) #6
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 4
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  %10 = and i8 %9, 64
  %cmp = icmp eq i8 %10, 0
  br i1 %cmp, label %while.body.land.rhs_crit_edge, label %while.body.do.body.critedge_crit_edge

while.body.do.body.critedge_crit_edge:            ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.critedge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

do.body.critedge:                                 ; preds = %while.body.do.body.critedge_crit_edge, %entry.do.body.critedge_crit_edge
  %.lcssa = phi i8 [ %5, %entry.do.body.critedge_crit_edge ], [ %10, %while.body.do.body.critedge_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 %val) #6, !srcloc !38
  br label %if.end

if.end:                                           ; preds = %do.body.critedge, %land.rhs.if.end_crit_edge
  %13 = phi i8 [ %.lcssa, %do.body.critedge ], [ 0, %land.rhs.if.end_crit_edge ]
  %.lobit = lshr exact i8 %13, 6
  %14 = xor i8 %.lobit, 1
  %15 = zext i8 %14 to i32
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amba_kmi_open(ptr nocapture noundef readonly %io) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 8
  %clk = getelementptr inbounds %struct.amba_kmi_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call2 = tail call i32 @clk_get_rate(ptr noundef %5) #6
  %div = udiv i32 %call2, 8000000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !39
  tail call void @arm_heavy_mb() #6
  %6 = trunc i32 %div to i8
  %conv = add i8 %6, -1
  %base = getelementptr inbounds %struct.amba_kmi_port, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #6, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !40
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %10, i8 4) #6, !srcloc !38
  %irq = getelementptr inbounds %struct.amba_kmi_port, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %call.i41 = tail call i32 @request_threaded_irq(i32 noundef %12, ptr noundef nonnull @amba_kmi_int, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool9.not = icmp eq i32 %call.i41, 0
  br i1 %tobool9.not, label %do.body22, label %do.end13

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %14) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %16, i8 0) #6, !srcloc !38
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %18) #6
  tail call void @clk_unprepare(ptr noundef %18) #6
  br label %cleanup

do.body22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 20) #6, !srcloc !38
  br label %cleanup

cleanup:                                          ; preds = %do.body22, %do.end13, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body22 ], [ %call.i41, %do.end13 ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @amba_kmi_close(ptr nocapture noundef readonly %io) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !43
  tail call void @arm_heavy_mb() #6
  %base = getelementptr inbounds %struct.amba_kmi_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %3, i8 0) #6, !srcloc !38
  %irq = getelementptr inbounds %struct.amba_kmi_port, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %5, ptr noundef %1) #6
  %clk = getelementptr inbounds %struct.amba_kmi_port, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__serio_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amba_kmi_int(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.amba_kmi_port, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !44
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not21 = icmp eq i8 %3, 0
  br i1 %tobool.not21, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 4
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %7, i32 8
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  %call9 = tail call i32 @serio_interrupt(ptr noundef %5, i8 noundef zeroext %8, i32 noundef 0) #6
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %10, i32 16
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr13) #6, !srcloc !35
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !46
  %12 = and i8 %11, 1
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %handled.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ 1, %while.body.while.end_crit_edge ]
  ret i32 %handled.0.lcssa
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_interrupt(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__initcall__kmod_ambakmi__288_206_ambakmi_driver_init6, !1, !"__initcall__kmod_ambakmi__288_206_ambakmi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/serio/ambakmi.c", i32 206, i32 1}
!2 = !{ptr @__exitcall_ambakmi_driver_exit, !1, !"__exitcall_ambakmi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/input/serio/ambakmi.c", i32 208, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/input/serio/ambakmi.c", i32 209, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/input/serio/ambakmi.c", i32 210, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/serio/ambakmi.c", i32 197, i32 11}
!12 = !{ptr @ambakmi_driver, !13, !"ambakmi_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/serio/ambakmi.c", i32 195, i32 27}
!14 = !{ptr @amba_kmi_dev_pm_ops, !15, !"amba_kmi_dev_pm_ops", i1 false, i1 false}
!15 = !{!"../drivers/input/serio/ambakmi.c", i32 183, i32 8}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/serio/ambakmi.c", i32 141, i32 32}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/serio/ambakmi.c", i32 81, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @amba_kmi_open._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @amba_kmi_open._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @amba_kmi_idtable, !25, !"amba_kmi_idtable", i1 false, i1 false}
!25 = !{!"../drivers/input/serio/ambakmi.c", i32 185, i32 29}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 4622841}
!36 = !{i64 2154925693}
!37 = !{i64 2154926492}
!38 = !{i64 4622446}
!39 = !{i64 2154926875}
!40 = !{i64 2154927198}
!41 = !{i64 2154928972}
!42 = !{i64 2154929309}
!43 = !{i64 2154929628}
!44 = !{i64 2154924874}
!45 = !{i64 2154925153}
!46 = !{i64 2154925423}
