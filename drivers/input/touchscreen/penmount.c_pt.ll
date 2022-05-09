; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/penmount.c_pt.bc'
source_filename = "../drivers/input/touchscreen/penmount.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.serio_driver = type { ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.pm = type { ptr, ptr, i32, [6 x i8], [32 x i8], i8, i8, [16 x %struct.mt_slot], ptr }
%struct.mt_slot = type { i16, i16, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__UNIQUE_ID_author227 = internal constant [45 x i8] c"penmount.author=Rick Koch <n1gp@hotmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author228 = internal constant [53 x i8] c"penmount.author=John Sung <penmount.touch@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [56 x i8] c"penmount.description=PenMount serial touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [49 x i8] c"penmount.file=drivers/input/touchscreen/penmount\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [21 x i8] c"penmount.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_penmount__232_315_pm_drv_init6 = internal global ptr @pm_drv_init, section ".initcall6.init", align 4
@pm_drv = internal global { %struct.serio_driver, [44 x i8] } { %struct.serio_driver { ptr @.str.1, ptr @pm_serio_ids, i8 0, ptr null, ptr @pm_interrupt, ptr @pm_connect, ptr null, ptr null, ptr @pm_disconnect, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@__exitcall_pm_drv_exit = internal global ptr @pm_drv_exit, section ".exitcall.exit", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"penmount\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PenMount serial touchscreen driver\00", [61 x i8] zeroinitializer }, align 32
@pm_serio_ids = internal constant { [2 x %struct.serio_device_id], [24 x i8] } { [2 x %struct.serio_device_id] [%struct.serio_device_id { i8 2, i8 -1, i8 -1, i8 49 }, %struct.serio_device_id zeroinitializer], [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"serio-penmount\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PenMount Serial TouchScreen\00", [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.5 = private unnamed_addr constant [7 x i8] c"pm_drv\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 304, i32 28 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 315, i32 1 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 308, i32 17 }
@___asan_gen_.14 = private unnamed_addr constant [13 x i8] c"pm_serio_ids\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 292, i32 37 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 306, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 211, i32 39 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [40 x i8] c"../drivers/input/touchscreen/penmount.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 214, i32 20 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_pm_drv_exit, ptr @__initcall__kmod_penmount__232_315_pm_drv_init6, ptr @pm_drv_exit, ptr @pm_drv, ptr @.str, ptr @.str.1, ptr @pm_serio_ids, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_drv to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm_serio_ids to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pm_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__serio_register_driver(ptr noundef nonnull @pm_drv, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pm_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @serio_unregister_driver(ptr noundef nonnull @pm_drv) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__serio_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm_interrupt(ptr nocapture noundef readonly %serio, i8 noundef zeroext %data, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %idx = getelementptr inbounds %struct.pm, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 4
  %arrayidx = getelementptr %struct.pm, ptr %1, i32 0, i32 3, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %data, ptr %arrayidx, align 1
  %parse_packet = getelementptr inbounds %struct.pm, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %parse_packet to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parse_packet, align 4
  tail call void %6(ptr noundef %1) #5
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm_connect(ptr noundef %serio, ptr noundef %drv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 152) #8
  %call1 = tail call ptr @input_allocate_device() #5
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.fail1_crit_edge, label %if.end

entry.fail1_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail1

if.end:                                           ; preds = %entry
  %serio3 = getelementptr inbounds %struct.pm, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %serio3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %serio, ptr %serio3, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %call7.i.i, align 8
  %phys = getelementptr inbounds %struct.pm, ptr %call7.i.i, i32 0, i32 4
  %phys4 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 2
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.3, ptr noundef %phys4)
  %maxcontacts = getelementptr inbounds %struct.pm, ptr %call7.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %maxcontacts to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %maxcontacts, align 1
  %4 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.4, ptr %call1, align 8
  %phys9 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 1
  %5 = ptrtoint ptr %phys9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %phys, ptr %phys9, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 19, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 49, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 256, ptr %version, align 2
  %dev13 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18
  %parent = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev13, ptr %parent, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 5
  %11 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 10, ptr %evbit, align 8
  %arrayidx15 = getelementptr %struct.input_dev, ptr %call1, i32 0, i32 6, i32 10
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1024, ptr %arrayidx15, align 4
  %id17 = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 5, i32 2
  %13 = ptrtoint ptr %id17 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %id17, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i8 %14, label %sw.bb [
    i8 3, label %sw.bb31
    i8 1, label %sw.bb20
    i8 2, label %sw.bb25
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %packetsize = getelementptr inbounds %struct.pm, ptr %call7.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %packetsize to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 5, ptr %packetsize, align 2
  %parse_packet = getelementptr inbounds %struct.pm, ptr %call7.i.i, i32 0, i32 8
  %17 = ptrtoint ptr %parse_packet to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @pm_parse_9000, ptr %parse_packet, align 4
  %18 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -28672, ptr %product, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %packetsize21 = getelementptr inbounds %struct.pm, ptr %call7.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %packetsize21 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 6, ptr %packetsize21, align 2
  %parse_packet22 = getelementptr inbounds %struct.pm, ptr %call7.i.i, i32 0, i32 8
  %20 = ptrtoint ptr %parse_packet22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @pm_parse_6000, ptr %parse_packet22, align 4
  %21 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 24576, ptr %product, align 4
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %packetsize26 = getelementptr inbounds %struct.pm, ptr %call7.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %packetsize26 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 6, ptr %packetsize26, align 2
  %parse_packet27 = getelementptr inbounds %struct.pm, ptr %call7.i.i, i32 0, i32 8
  %23 = ptrtoint ptr %parse_packet27 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @pm_parse_3000, ptr %parse_packet27, align 4
  %24 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 12288, ptr %product, align 4
  %25 = ptrtoint ptr %maxcontacts to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %maxcontacts, align 1
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %packetsize32 = getelementptr inbounds %struct.pm, ptr %call7.i.i, i32 0, i32 5
  %26 = ptrtoint ptr %packetsize32 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 6, ptr %packetsize32, align 2
  %parse_packet33 = getelementptr inbounds %struct.pm, ptr %call7.i.i, i32 0, i32 8
  %27 = ptrtoint ptr %parse_packet33 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @pm_parse_6250, ptr %parse_packet33, align 4
  %28 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 25168, ptr %product, align 4
  %29 = ptrtoint ptr %maxcontacts to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 12, ptr %maxcontacts, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb31, %sw.bb25, %sw.bb20, %sw.bb
  %max_y.0 = phi i32 [ 1023, %sw.bb ], [ 2047, %sw.bb25 ], [ 1023, %sw.bb20 ], [ 1023, %sw.bb31 ]
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call7.i.i, align 8
  tail call void @input_set_abs_params(ptr noundef %31, i32 noundef 0, i32 noundef 0, i32 noundef %max_y.0, i32 noundef 0, i32 noundef 0) #5
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call7.i.i, align 8
  tail call void @input_set_abs_params(ptr noundef %33, i32 noundef 1, i32 noundef 0, i32 noundef %max_y.0, i32 noundef 0, i32 noundef 0) #5
  %34 = ptrtoint ptr %maxcontacts to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %maxcontacts, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %35)
  %cmp = icmp ugt i8 %35, 1
  br i1 %cmp, label %if.then42, label %sw.epilog.if.end49_crit_edge

sw.epilog.if.end49_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then42:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %conv40 = zext i8 %35 to i32
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call7.i.i, align 8
  %call46 = tail call i32 @input_mt_init_slots(ptr noundef %37, i32 noundef %conv40, i32 noundef 0) #5
  %38 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call7.i.i, align 8
  tail call void @input_set_abs_params(ptr noundef %39, i32 noundef 53, i32 noundef 0, i32 noundef %max_y.0, i32 noundef 0, i32 noundef 0) #5
  %40 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call7.i.i, align 8
  tail call void @input_set_abs_params(ptr noundef %41, i32 noundef 54, i32 noundef 0, i32 noundef %max_y.0, i32 noundef 0, i32 noundef 0) #5
  br label %if.end49

if.end49:                                         ; preds = %if.then42, %sw.epilog.if.end49_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %42 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call50 = tail call i32 @serio_open(ptr noundef %serio, ptr noundef %drv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end49.fail2_crit_edge

if.end49.fail2_crit_edge:                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail2

if.end53:                                         ; preds = %if.end49
  %43 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call7.i.i, align 8
  %call55 = tail call i32 @input_register_device(ptr noundef %44) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end53.cleanup_crit_edge, label %fail3

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

fail3:                                            ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @serio_close(ptr noundef %serio) #5
  br label %fail2

fail2:                                            ; preds = %fail3, %if.end49.fail2_crit_edge
  %err.0 = phi i32 [ %call50, %if.end49.fail2_crit_edge ], [ %call55, %fail3 ]
  %45 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %fail1

fail1:                                            ; preds = %fail2, %entry.fail1_crit_edge
  %err.1 = phi i32 [ %err.0, %fail2 ], [ -12, %entry.fail1_crit_edge ]
  tail call void @input_free_device(ptr noundef %call1) #5
  tail call void @kfree(ptr noundef %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end53.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %fail1 ], [ 0, %if.end53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm_disconnect(ptr noundef %serio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @serio_close(ptr noundef %serio) #5
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @input_unregister_device(ptr noundef %3) #5
  tail call void @kfree(ptr noundef %1) #5
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm_parse_9000(ptr nocapture noundef %pm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pm, align 4
  %data = getelementptr inbounds %struct.pm, ptr %pm, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool.not = icmp sgt i8 %3, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %packetsize = getelementptr inbounds %struct.pm, ptr %pm, i32 0, i32 5
  %4 = ptrtoint ptr %packetsize to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %packetsize, align 2
  %conv2 = zext i8 %5 to i32
  %idx = getelementptr inbounds %struct.pm, ptr %pm, i32 0, i32 2
  %6 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %idx, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv2)
  %cmp = icmp eq i32 %inc, %conv2
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx5 = getelementptr %struct.pm, ptr %pm, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %9 to i32
  %mul = shl nuw nsw i32 %conv6, 7
  %arrayidx8 = getelementptr %struct.pm, ptr %pm, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8, align 2
  %conv9 = zext i8 %11 to i32
  %add = add nuw nsw i32 %mul, %conv9
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 0, i32 noundef %add) #5
  %arrayidx11 = getelementptr %struct.pm, ptr %pm, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %13 to i32
  %mul13 = shl nuw nsw i32 %conv12, 7
  %arrayidx15 = getelementptr %struct.pm, ptr %pm, i32 0, i32 3, i32 4
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx15, align 4
  %conv16 = zext i8 %15 to i32
  %add17 = add nuw nsw i32 %mul13, %conv16
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef %add17) #5
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %data, align 4
  %18 = lshr i8 %17, 6
  %.lobit = and i8 %18, 1
  %19 = zext i8 %.lobit to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 330, i32 noundef %19) #5
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %20 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %idx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm_parse_6000(ptr nocapture noundef %pm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pm, align 4
  %data = getelementptr inbounds %struct.pm, ptr %pm, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 4
  %4 = and i8 %3, -65
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %4)
  %cmp = icmp eq i8 %4, 48
  br i1 %cmp, label %land.lhs.true, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

land.lhs.true:                                    ; preds = %entry
  %packetsize = getelementptr inbounds %struct.pm, ptr %pm, i32 0, i32 5
  %5 = ptrtoint ptr %packetsize to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %packetsize, align 2
  %conv3 = zext i8 %6 to i32
  %idx = getelementptr inbounds %struct.pm, ptr %pm, i32 0, i32 2
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv3)
  %cmp4 = icmp eq i32 %inc, %conv3
  br i1 %cmp4, label %if.then, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then:                                          ; preds = %land.lhs.true
  %conv.i = zext i8 %3 to i32
  %arrayidx.1.i = getelementptr %struct.pm, ptr %pm, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %10 to i32
  %add.1.i = add nuw nsw i32 %conv.1.i, %conv.i
  %arrayidx.2.i = getelementptr %struct.pm, ptr %pm, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %12 to i32
  %add.2.i = add nuw nsw i32 %add.1.i, %conv.2.i
  %arrayidx.3.i = getelementptr %struct.pm, ptr %pm, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %14 to i32
  %add.3.i = add nuw nsw i32 %add.2.i, %conv.3.i
  %arrayidx.4.i = getelementptr %struct.pm, ptr %pm, i32 0, i32 3, i32 4
  %15 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.4.i, align 1
  %conv.4.i = zext i8 %16 to i32
  %add.4.i = add nuw nsw i32 %add.3.i, %conv.4.i
  %arrayidx1.i = getelementptr %struct.pm, ptr %pm, i32 0, i32 3, i32 5
  %17 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %18 to i32
  %conv3.i = and i32 %add.4.i, 255
  %conv4.i = xor i32 %conv3.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4.i, i32 %conv2.i)
  %cmp5.i = icmp eq i32 %conv4.i, %conv2.i
  br i1 %cmp5.i, label %if.then7, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.2.i, align 2
  %conv10 = zext i8 %20 to i32
  %mul = shl nuw nsw i32 %conv10, 8
  %21 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.1.i, align 1
  %conv13 = zext i8 %22 to i32
  %add = or i32 %mul, %conv13
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 0, i32 noundef %add) #5
  %23 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.4.i, align 4
  %conv16 = zext i8 %24 to i32
  %mul17 = shl nuw nsw i32 %conv16, 8
  %25 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.3.i, align 1
  %conv20 = zext i8 %26 to i32
  %add21 = or i32 %mul17, %conv20
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef %add21) #5
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %data, align 4
  %29 = lshr i8 %28, 6
  %.lobit = and i8 %29, 1
  %30 = zext i8 %.lobit to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 330, i32 noundef %30) #5
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %31 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %idx, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end, %land.lhs.true.if.end27_crit_edge, %entry.if.end27_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm_parse_3000(ptr nocapture noundef %pm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pm, align 4
  %data = getelementptr inbounds %struct.pm, ptr %pm, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 4
  %4 = and i8 %3, -50
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %4)
  %cmp = icmp eq i8 %4, 64
  br i1 %cmp, label %land.lhs.true, label %entry.if.end38_crit_edge

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

land.lhs.true:                                    ; preds = %entry
  %packetsize = getelementptr inbounds %struct.pm, ptr %pm, i32 0, i32 5
  %5 = ptrtoint ptr %packetsize to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %packetsize, align 2
  %conv3 = zext i8 %6 to i32
  %idx = getelementptr inbounds %struct.pm, ptr %pm, i32 0, i32 2
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv3)
  %cmp4 = icmp eq i32 %inc, %conv3
  br i1 %cmp4, label %if.then, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then:                                          ; preds = %land.lhs.true
  %conv.i = zext i8 %3 to i32
  %arrayidx.1.i = getelementptr %struct.pm, ptr %pm, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %10 to i32
  %add.1.i = add nuw nsw i32 %conv.1.i, %conv.i
  %arrayidx.2.i = getelementptr %struct.pm, ptr %pm, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %12 to i32
  %add.2.i = add nuw nsw i32 %add.1.i, %conv.2.i
  %arrayidx.3.i = getelementptr %struct.pm, ptr %pm, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %14 to i32
  %add.3.i = add nuw nsw i32 %add.2.i, %conv.3.i
  %arrayidx.4.i = getelementptr %struct.pm, ptr %pm, i32 0, i32 3, i32 4
  %15 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.4.i, align 1
  %conv.4.i = zext i8 %16 to i32
  %add.4.i = add nuw nsw i32 %add.3.i, %conv.4.i
  %arrayidx1.i = getelementptr %struct.pm, ptr %pm, i32 0, i32 3, i32 5
  %17 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %18 to i32
  %conv3.i = and i32 %add.4.i, 255
  %conv4.i = xor i32 %conv3.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4.i, i32 %conv2.i)
  %cmp5.i = icmp eq i32 %conv4.i, %conv2.i
  br i1 %cmp5.i, label %if.then7, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %and11 = and i32 %conv.i, 15
  %and15 = and i32 %conv.i, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool = icmp ne i32 %and15, 0
  %arrayidx16 = getelementptr %struct.pm, ptr %pm, i32 0, i32 7, i32 %and11
  %active = getelementptr %struct.pm, ptr %pm, i32 0, i32 7, i32 %and11, i32 2
  %frombool = zext i1 %tobool to i8
  %19 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool, ptr %active, align 2
  %20 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.2.i, align 2
  %conv19 = zext i8 %21 to i16
  %mul = shl nuw i16 %conv19, 8
  %22 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.1.i, align 1
  %conv22 = zext i8 %23 to i16
  %add = or i16 %mul, %conv22
  %24 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %add, ptr %arrayidx16, align 2
  %25 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.4.i, align 4
  %conv28 = zext i8 %26 to i16
  %mul29 = shl nuw i16 %conv28, 8
  %27 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.3.i, align 1
  %conv32 = zext i8 %28 to i16
  %add33 = or i16 %mul29, %conv32
  %y = getelementptr %struct.pm, ptr %pm, i32 0, i32 7, i32 %and11, i32 1
  %29 = ptrtoint ptr %y to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %add33, ptr %y, align 2
  tail call fastcc void @pm_mtevent(ptr noundef %pm, ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %30 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %idx, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end, %land.lhs.true.if.end38_crit_edge, %entry.if.end38_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm_parse_6250(ptr nocapture noundef %pm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pm, align 4
  %data = getelementptr inbounds %struct.pm, ptr %pm, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 4
  %4 = and i8 %3, -80
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %4)
  %cmp = icmp eq i8 %4, 48
  br i1 %cmp, label %land.lhs.true, label %entry.if.end38_crit_edge

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

land.lhs.true:                                    ; preds = %entry
  %packetsize = getelementptr inbounds %struct.pm, ptr %pm, i32 0, i32 5
  %5 = ptrtoint ptr %packetsize to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %packetsize, align 2
  %conv3 = zext i8 %6 to i32
  %idx = getelementptr inbounds %struct.pm, ptr %pm, i32 0, i32 2
  %7 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %idx, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %idx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv3)
  %cmp4 = icmp eq i32 %inc, %conv3
  br i1 %cmp4, label %if.then, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then:                                          ; preds = %land.lhs.true
  %conv.i = zext i8 %3 to i32
  %arrayidx.1.i = getelementptr %struct.pm, ptr %pm, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.1.i, align 1
  %conv.1.i = zext i8 %10 to i32
  %add.1.i = add nuw nsw i32 %conv.1.i, %conv.i
  %arrayidx.2.i = getelementptr %struct.pm, ptr %pm, i32 0, i32 3, i32 2
  %11 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.2.i, align 1
  %conv.2.i = zext i8 %12 to i32
  %add.2.i = add nuw nsw i32 %add.1.i, %conv.2.i
  %arrayidx.3.i = getelementptr %struct.pm, ptr %pm, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.3.i, align 1
  %conv.3.i = zext i8 %14 to i32
  %add.3.i = add nuw nsw i32 %add.2.i, %conv.3.i
  %arrayidx.4.i = getelementptr %struct.pm, ptr %pm, i32 0, i32 3, i32 4
  %15 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.4.i, align 1
  %conv.4.i = zext i8 %16 to i32
  %add.4.i = add nuw nsw i32 %add.3.i, %conv.4.i
  %arrayidx1.i = getelementptr %struct.pm, ptr %pm, i32 0, i32 3, i32 5
  %17 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %18 to i32
  %conv3.i = and i32 %add.4.i, 255
  %conv4.i = xor i32 %conv3.i, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4.i, i32 %conv2.i)
  %cmp5.i = icmp eq i32 %conv4.i, %conv2.i
  br i1 %cmp5.i, label %if.then7, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %19 = and i8 %3, 15
  %and11 = zext i8 %19 to i32
  %arrayidx16 = getelementptr %struct.pm, ptr %pm, i32 0, i32 7, i32 %and11
  %active = getelementptr %struct.pm, ptr %pm, i32 0, i32 7, i32 %and11, i32 2
  %and15 = lshr i8 %3, 6
  %20 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %and15, ptr %active, align 2
  %21 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.2.i, align 2
  %conv19 = zext i8 %22 to i16
  %mul = shl nuw i16 %conv19, 8
  %23 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.1.i, align 1
  %conv22 = zext i8 %24 to i16
  %add = or i16 %mul, %conv22
  %25 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %add, ptr %arrayidx16, align 2
  %26 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.4.i, align 4
  %conv28 = zext i8 %27 to i16
  %mul29 = shl nuw i16 %conv28, 8
  %28 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.3.i, align 1
  %conv32 = zext i8 %29 to i16
  %add33 = or i16 %mul29, %conv32
  %y = getelementptr %struct.pm, ptr %pm, i32 0, i32 7, i32 %and11, i32 1
  %30 = ptrtoint ptr %y to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %add33, ptr %y, align 2
  tail call fastcc void @pm_mtevent(ptr noundef %pm, ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then.if.end_crit_edge
  %31 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %idx, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end, %land.lhs.true.if.end38_crit_edge, %entry.if.end38_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_mtevent(ptr nocapture noundef readonly %pm, ptr noundef %input) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %maxcontacts = getelementptr inbounds %struct.pm, ptr %pm, i32 0, i32 6
  %0 = ptrtoint ptr %maxcontacts to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %maxcontacts, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp28.not = icmp eq i8 %1, 0
  br i1 %cmp28.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 47, i32 noundef %i.029) #5
  %active = getelementptr %struct.pm, ptr %pm, i32 0, i32 7, i32 %i.029, i32 2
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %active, align 2, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool = icmp ne i8 %3, 0
  %call = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %input, i32 noundef 0, i1 noundef zeroext %tobool) #5
  %4 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %active, align 2, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.pm, ptr %pm, i32 0, i32 7, i32 %i.029
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %conv8 = zext i16 %7 to i32
  tail call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 53, i32 noundef %conv8) #5
  %y = getelementptr %struct.pm, ptr %pm, i32 0, i32 7, i32 %i.029, i32 1
  %8 = ptrtoint ptr %y to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %y, align 2
  %conv11 = zext i16 %9 to i32
  tail call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 54, i32 noundef %conv11) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.029, 1
  %10 = ptrtoint ptr %maxcontacts to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %maxcontacts, align 1
  %conv = zext i8 %11 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @input_mt_report_pointer_emulation(ptr noundef %input, i1 noundef zeroext true) #5
  tail call void @input_event(ptr noundef %input, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_report_pointer_emulation(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !15, !17, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__UNIQUE_ID_author227, !1, !"__UNIQUE_ID_author227", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/penmount.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_author228, !3, !"__UNIQUE_ID_author228", i1 false, i1 false}
!3 = !{!"../drivers/input/touchscreen/penmount.c", i32 24, i32 1}
!4 = !{ptr @__UNIQUE_ID_description229, !5, !"__UNIQUE_ID_description229", i1 false, i1 false}
!5 = !{!"../drivers/input/touchscreen/penmount.c", i32 25, i32 1}
!6 = !{ptr @__UNIQUE_ID_file230, !7, !"__UNIQUE_ID_file230", i1 false, i1 false}
!7 = !{!"../drivers/input/touchscreen/penmount.c", i32 26, i32 1}
!8 = !{ptr @__UNIQUE_ID_license231, !7, !"__UNIQUE_ID_license231", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_penmount__232_315_pm_drv_init6, !10, !"__initcall__kmod_penmount__232_315_pm_drv_init6", i1 false, i1 false}
!10 = !{!"../drivers/input/touchscreen/penmount.c", i32 315, i32 1}
!11 = !{ptr @__exitcall_pm_drv_exit, !10, !"__exitcall_pm_drv_exit", i1 false, i1 false}
!12 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/input/touchscreen/penmount.c", i32 308, i32 17}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/input/touchscreen/penmount.c", i32 306, i32 11}
!17 = !{ptr @pm_drv, !18, !"pm_drv", i1 false, i1 false}
!18 = !{!"../drivers/input/touchscreen/penmount.c", i32 304, i32 28}
!19 = !{ptr @pm_serio_ids, !20, !"pm_serio_ids", i1 false, i1 false}
!20 = !{!"../drivers/input/touchscreen/penmount.c", i32 292, i32 37}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/touchscreen/penmount.c", i32 211, i32 39}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/input/touchscreen/penmount.c", i32 214, i32 20}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{i8 0, i8 2}
