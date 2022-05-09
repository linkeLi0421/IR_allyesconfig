; ModuleID = '/llk/IR_all_yes/drivers/input/serio/pcips2.c_pt.bc'
source_filename = "../drivers/input/serio/pcips2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.pcips2_data = type { ptr, i32, ptr }

@__initcall__kmod_pcips2__236_213_pcips2_driver_init6 = internal global ptr @pcips2_driver_init, section ".initcall6.init", align 4
@pcips2_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @pcips2_ids, ptr @pcips2_probe, ptr @pcips2_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pcips2_driver_exit = internal global ptr @pcips2_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file237 = internal constant [39 x i8] c"pcips2.file=drivers/input/serio/pcips2\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [19 x i8] c"pcips2.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [50 x i8] c"pcips2.author=Russell King <rmk@arm.linux.org.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [50 x i8] c"pcips2.description=PCI PS/2 keyboard/mouse driver\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcips2\00", [25 x i8] zeroinitializer }, align 32
@pcips2_ids = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 5362, i32 291, i32 -1, i32 -1, i32 589824, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 5362, i32 292, i32 -1, i32 -1, i32 590336, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"pcips2_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 206, i32 26 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 213, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [11 x i8] c"pcips2_ids\00", align 1
@___asan_gen_.8 = private constant [32 x i8] c"../drivers/input/serio/pcips2.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 185, i32 35 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_pcips2_driver_exit, ptr @__initcall__kmod_pcips2__236_213_pcips2_driver_init6, ptr @pcips2_driver_exit, ptr @pcips2_driver, ptr @.str, ptr @pcips2_ids], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcips2_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcips2_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcips2_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @pcips2_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pcips2_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @pcips2_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcips2_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pci_request_regions(ptr noundef %dev, ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.disable_crit_edge

if.end.disable_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i52 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1336) #8
  %tobool7.not = icmp eq ptr %call7.i.i, null
  %tobool8.not = icmp eq ptr %call7.i.i52, null
  %or.cond = select i1 %tobool7.not, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef %call7.i.i) #5
  tail call void @kfree(ptr noundef %call7.i.i52) #5
  tail call void @pci_release_regions(ptr noundef %dev) #5
  br label %disable

if.end10:                                         ; preds = %if.end4
  %id11 = getelementptr inbounds %struct.serio, ptr %call7.i.i52, i32 0, i32 5
  %2 = ptrtoint ptr %id11 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %id11, align 1
  %write = getelementptr inbounds %struct.serio, ptr %call7.i.i52, i32 0, i32 7
  %3 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @pcips2_write, ptr %write, align 8
  %open = getelementptr inbounds %struct.serio, ptr %call7.i.i52, i32 0, i32 8
  %4 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @pcips2_open, ptr %open, align 4
  %close = getelementptr inbounds %struct.serio, ptr %call7.i.i52, i32 0, i32 9
  %5 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @pcips2_close, ptr %close, align 8
  %name = getelementptr inbounds %struct.serio, ptr %call7.i.i52, i32 0, i32 1
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end10.pci_name.exit_crit_edge

if.end10.pci_name.exit_crit_edge:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end10.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %if.end10.pci_name.exit_crit_edge ]
  %call13 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef %retval.0.i.i, i32 noundef 32) #5
  %phys = getelementptr inbounds %struct.serio, ptr %call7.i.i52, i32 0, i32 2
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %pci_name.exit.dev_name.exit_crit_edge

pci_name.exit.dev_name.exit_crit_edge:            ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev15, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %pci_name.exit.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end.i ], [ %11, %pci_name.exit.dev_name.exit_crit_edge ]
  %call17 = tail call i32 @strlcpy(ptr noundef %phys, ptr noundef %retval.0.i, i32 noundef 32) #5
  %14 = ptrtoint ptr %call7.i.i52 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %call7.i.i52, align 8
  %parent = getelementptr inbounds %struct.serio, ptr %call7.i.i52, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev15, ptr %parent, align 8
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i.i52, ptr %call7.i.i, align 8
  %dev20 = getelementptr inbounds %struct.pcips2_data, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %dev20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %dev20, align 8
  %resource = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 47
  %18 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %resource, align 8
  %base = getelementptr inbounds %struct.pcips2_data, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %base, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  tail call void @__serio_register_port(ptr noundef nonnull %call7.i.i52, ptr noundef null) #5
  br label %cleanup

disable:                                          ; preds = %if.then9, %if.end.disable_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.disable_crit_edge ], [ -12, %if.then9 ]
  tail call void @pci_disable_device(ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %disable, %dev_name.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %dev_name.exit ], [ %call, %entry.cleanup_crit_edge ], [ %ret.0, %disable ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcips2_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @serio_unregister_port(ptr noundef %3) #5
  tail call void @kfree(ptr noundef %1) #5
  tail call void @pci_release_regions(ptr noundef %dev) #5
  tail call void @pci_disable_device(ptr noundef %dev) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcips2_write(ptr nocapture noundef readonly %io, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 8
  %base = getelementptr inbounds %struct.pcips2_data, ptr %1, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %add = add i32 %3, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !26
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !27
  %tobool.not = icmp sgt i8 %5, -1
  br i1 %tobool.not, label %do.body.do.body_crit_edge, label %do.body13

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 4
  %add17 = add i32 %7, 2
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %8 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %val) #5, !srcloc !29
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcips2_open(ptr nocapture noundef readonly %io) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !30
  tail call void @arm_heavy_mb() #5
  %base = getelementptr inbounds %struct.pcips2_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %and = and i32 %3, 1048575
  %add = or i32 %and, -18874368
  %4 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 8) #5, !srcloc !29
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base, align 4
  %add.i = add i32 %6, 1
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add1.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !31
  %9 = and i8 %8, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %do.body.i.pcips2_flush_input.exit_crit_edge, label %if.end.i

do.body.i.pcips2_flush_input.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pcips2_flush_input.exit

if.end.i:                                         ; preds = %do.body.i
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base, align 4
  %add6.i = add i32 %11, 2
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %12 = inttoptr i32 %add8.i to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp.i = icmp eq i8 %8, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp15.i = icmp eq i8 %13, -1
  %or.cond.i = select i1 %cmp.i, i1 %cmp15.i, i1 false
  br i1 %or.cond.i, label %if.end.i.pcips2_flush_input.exit_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.end.i.pcips2_flush_input.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pcips2_flush_input.exit

pcips2_flush_input.exit:                          ; preds = %if.end.i.pcips2_flush_input.exit_crit_edge, %do.body.i.pcips2_flush_input.exit_crit_edge
  %dev = getelementptr inbounds %struct.pcips2_data, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 46
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %17, ptr noundef nonnull @pcips2_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  %spec.select = select i1 %cmp, i8 24, i8 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base, align 4
  %and6 = and i32 %19, 1048575
  %add7 = or i32 %and6, -18874368
  %20 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %spec.select) #5, !srcloc !29
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcips2_close(ptr nocapture noundef readonly %io) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  %base = getelementptr inbounds %struct.pcips2_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %and = and i32 %3, 1048575
  %add = or i32 %and, -18874368
  %4 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 0) #5, !srcloc !29
  %dev = getelementptr inbounds %struct.pcips2_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 46
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %8, ptr noundef %1) #5
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__serio_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcips2_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.pcips2_data, ptr %devid, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %add121 = add i32 %1, 1
  %and122 = and i32 %add121, 1048575
  %add1123 = or i32 %and122, -18874368
  %2 = inttoptr i32 %add1123 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %conv124 = zext i8 %3 to i32
  %and3125 = and i32 %conv124, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3125)
  %tobool.not126 = icmp eq i32 %and3125, 0
  br i1 %tobool.not126, label %entry.do.end_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end:                                           ; preds = %if.end18.if.end_crit_edge, %entry.if.end_crit_edge
  %conv127 = phi i32 [ %conv, %if.end18.if.end_crit_edge ], [ %conv124, %entry.if.end_crit_edge ]
  %4 = phi i8 [ %16, %if.end18.if.end_crit_edge ], [ %3, %entry.if.end_crit_edge ]
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base, align 4
  %add6 = add i32 %6, 2
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %7 = inttoptr i32 %add8 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %cmp = icmp eq i8 %4, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp15 = icmp eq i8 %8, -1
  %or.cond = select i1 %cmp, i1 %cmp15, i1 false
  br i1 %or.cond, label %if.end.do.end_crit_edge, label %if.end18

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end18:                                         ; preds = %if.end
  %and20 = lshr i32 %conv127, 1
  %9 = and i32 %and20, 2
  %10 = xor i32 %9, 2
  %conv82 = zext i8 %8 to i32
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %conv82) #5
  %and85 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  %spec.select = select i1 %tobool86.not, i32 %10, i32 %9
  %11 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %devid, align 4
  %call89 = tail call i32 @serio_interrupt(ptr noundef %12, i8 noundef zeroext %8, i32 noundef %spec.select) #5
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base, align 4
  %add = add i32 %14, 1
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %15 = inttoptr i32 %add1 to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #5, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %conv = zext i8 %16 to i32
  %and3 = and i32 %conv, 32
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.end18.do.end_crit_edge, label %if.end18.if.end_crit_edge

if.end18.if.end_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end18.do.end_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %if.end18.do.end_crit_edge, %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %17 = xor i1 %tobool.not126, true
  %cond91 = zext i1 %17 to i32
  ret i32 %cond91
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_interrupt(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__initcall__kmod_pcips2__236_213_pcips2_driver_init6, !1, !"__initcall__kmod_pcips2__236_213_pcips2_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/serio/pcips2.c", i32 213, i32 1}
!2 = !{ptr @__exitcall_pcips2_driver_exit, !1, !"__exitcall_pcips2_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file237, !4, !"__UNIQUE_ID_file237", i1 false, i1 false}
!4 = !{!"../drivers/input/serio/pcips2.c", i32 215, i32 1}
!5 = !{ptr @__UNIQUE_ID_license238, !4, !"__UNIQUE_ID_license238", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author239, !7, !"__UNIQUE_ID_author239", i1 false, i1 false}
!7 = !{!"../drivers/input/serio/pcips2.c", i32 216, i32 1}
!8 = !{ptr @__UNIQUE_ID_description240, !9, !"__UNIQUE_ID_description240", i1 false, i1 false}
!9 = !{!"../drivers/input/serio/pcips2.c", i32 217, i32 1}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @pcips2_driver, !12, !"pcips2_driver", i1 false, i1 false}
!12 = !{!"../drivers/input/serio/pcips2.c", i32 206, i32 26}
!13 = !{ptr @pcips2_ids, !14, !"pcips2_ids", i1 false, i1 false}
!14 = !{!"../drivers/input/serio/pcips2.c", i32 185, i32 35}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i64 4618870}
!25 = !{i64 2154509828}
!26 = !{i64 2154510103}
!27 = !{i64 2154509945}
!28 = !{i64 2154510332}
!29 = !{i64 4618475}
!30 = !{i64 2154512519}
!31 = !{i64 2154511991}
!32 = !{i64 2154512297}
!33 = !{i64 2154512876}
!34 = !{i64 2154513206}
!35 = !{i64 2154510757}
!36 = !{i64 2154511063}
