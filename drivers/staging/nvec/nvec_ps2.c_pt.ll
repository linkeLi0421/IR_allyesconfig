; ModuleID = '/llk/IR_all_yes/drivers/staging/nvec/nvec_ps2.c_pt.bc'
source_filename = "../drivers/staging/nvec/nvec_ps2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvec_ps2 = type { ptr, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }

@__initcall__kmod_nvec_ps2__188_176_nvec_mouse_driver_init6 = internal global ptr @nvec_mouse_driver_init, section ".initcall6.init", align 4
@nvec_mouse_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @nvec_mouse_probe, ptr @nvec_mouse_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nvec_mouse_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_nvec_mouse_driver_exit = internal global ptr @nvec_mouse_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description189 = internal constant [39 x i8] c"nvec_ps2.description=NVEC mouse driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author190 = internal constant [48 x i8] c"nvec_ps2.author=Marc Dietrich <marvin24@gmx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias191 = internal constant [35 x i8] c"nvec_ps2.alias=platform:nvec-mouse\00", section ".modinfo", align 1
@__UNIQUE_ID_file192 = internal constant [44 x i8] c"nvec_ps2.file=drivers/staging/nvec/nvec_ps2\00", section ".modinfo", align 1
@__UNIQUE_ID_license193 = internal constant [21 x i8] c"nvec_ps2.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nvec-mouse\00", [21 x i8] zeroinitializer }, align 32
@nvec_mouse_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @nvec_mouse_suspend, ptr @nvec_mouse_resume, ptr @nvec_mouse_suspend, ptr @nvec_mouse_resume, ptr @nvec_mouse_suspend, ptr @nvec_mouse_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nvec mouse\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"nvec\00", [27 x i8] zeroinitializer }, align 32
@ps2_dev = internal global { %struct.nvec_ps2, [44 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ps2_sendcommand.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nvec_ps2\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ps2_sendcommand\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/staging/nvec/nvec_ps2.c\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Sending ps2 cmd %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@__const.ps2_startstreaming.buf = private unnamed_addr constant [3 x i8] c"\06\03\06", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 129]
@___asan_gen_.7 = private unnamed_addr constant [18 x i8] c"nvec_mouse_driver\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 167, i32 31 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 171, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [18 x i8] c"nvec_mouse_pm_ops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 164, i32 8 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 115, i32 25 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 116, i32 25 }
@___asan_gen_.22 = private unnamed_addr constant [8 x i8] c"ps2_dev\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 47, i32 24 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [35 x i8] c"../drivers/staging/nvec/nvec_ps2.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 69, i32 2 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_alias191, ptr @__UNIQUE_ID_author190, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file192, ptr @__UNIQUE_ID_license193, ptr @__exitcall_nvec_mouse_driver_exit, ptr @__initcall__kmod_nvec_ps2__188_176_nvec_mouse_driver_init6, ptr @nvec_mouse_driver_exit, ptr @nvec_mouse_driver, ptr @.str, ptr @nvec_mouse_pm_ops, ptr @.str.1, ptr @.str.2, ptr @ps2_dev, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_mouse_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvec_mouse_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2_dev to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nvec_mouse_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @nvec_mouse_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nvec_mouse_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @nvec_mouse_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvec_mouse_probe(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1336) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %id = getelementptr inbounds %struct.serio, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %id, align 1
  %write = getelementptr inbounds %struct.serio, ptr %call7.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ps2_sendcommand, ptr %write, align 8
  %start = getelementptr inbounds %struct.serio, ptr %call7.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %start to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ps2_startstreaming, ptr %start, align 4
  %stop = getelementptr inbounds %struct.serio, ptr %call7.i.i, i32 0, i32 11
  %8 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ps2_stopstreaming, ptr %stop, align 8
  %name = getelementptr inbounds %struct.serio, ptr %call7.i.i, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.1, i32 noundef 32) #5
  %phys = getelementptr inbounds %struct.serio, ptr %call7.i.i, i32 0, i32 2
  %call4 = tail call i32 @strscpy(ptr noundef %phys, ptr noundef nonnull @.str.2, i32 noundef 32) #5
  store ptr %call7.i.i, ptr @ps2_dev, align 4
  store ptr @nvec_ps2_notifier, ptr getelementptr inbounds (%struct.nvec_ps2, ptr @ps2_dev, i32 0, i32 1), align 4
  store ptr %3, ptr getelementptr inbounds (%struct.nvec_ps2, ptr @ps2_dev, i32 0, i32 2), align 4
  %call5 = tail call i32 @nvec_register_notifier(ptr noundef %3, ptr noundef getelementptr inbounds (%struct.nvec_ps2, ptr @ps2_dev, i32 0, i32 1), i32 noundef 0) #5
  tail call void @__serio_register_port(ptr noundef nonnull %call7.i.i, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvec_mouse_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  %buf.i3 = alloca [2 x i8], align 2
  %buf.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = load ptr, ptr @ps2_dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #5
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 100791553, ptr %buf.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ps2_sendcommand.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvec_mouse_remove, %if.then.i)) #5
          to label %ps2_sendcommand.exit [label %if.then.i], !srcloc !39

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.serio, ptr %4, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ps2_sendcommand.__UNIQUE_ID_ddebug187, ptr noundef %dev.i, ptr noundef nonnull @.str.6, i32 noundef 245) #5
  br label %ps2_sendcommand.exit

ps2_sendcommand.exit:                             ; preds = %if.then.i, %entry
  %6 = load ptr, ptr getelementptr inbounds (%struct.nvec_ps2, ptr @ps2_dev, i32 0, i32 2), align 4
  %call5.i = call i32 @nvec_write_async(ptr noundef %6, ptr noundef nonnull %buf.i, i16 noundef signext 4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i3) #5
  %7 = ptrtoint ptr %buf.i3 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1540, ptr %buf.i3, align 2
  %8 = load ptr, ptr getelementptr inbounds (%struct.nvec_ps2, ptr @ps2_dev, i32 0, i32 2), align 4
  %call.i = call i32 @nvec_write_async(ptr noundef %8, ptr noundef nonnull %buf.i3, i16 noundef signext 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i3) #5
  %call2 = call i32 @nvec_unregister_notifier(ptr noundef %3, ptr noundef getelementptr inbounds (%struct.nvec_ps2, ptr @ps2_dev, i32 0, i32 1)) #5
  %9 = load ptr, ptr @ps2_dev, align 4
  call void @serio_unregister_port(ptr noundef %9) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps2_sendcommand(ptr noundef %ser_dev, i8 noundef zeroext %cmd) #2 align 64 {
entry:
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #5
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 100791297, ptr %buf, align 4
  %arrayidx = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %cmd, ptr %arrayidx, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ps2_sendcommand.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ps2_sendcommand, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !39

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %cmd to i32
  %dev = getelementptr inbounds %struct.serio, ptr %ser_dev, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ps2_sendcommand.__UNIQUE_ID_ddebug187, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %conv) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.nvec_ps2, ptr @ps2_dev, i32 0, i32 2), align 4
  %call5 = call i32 @nvec_write_async(ptr noundef %2, ptr noundef nonnull %buf, i16 noundef signext 4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #5
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps2_startstreaming(ptr nocapture noundef readnone %ser_dev) #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #5
  %0 = call ptr @memcpy(ptr %buf, ptr @__const.ps2_startstreaming.buf, i32 3)
  %1 = load ptr, ptr getelementptr inbounds (%struct.nvec_ps2, ptr @ps2_dev, i32 0, i32 2), align 4
  %call = call i32 @nvec_write_async(ptr noundef %1, ptr noundef nonnull %buf, i16 noundef signext 3) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ps2_stopstreaming(ptr nocapture noundef readnone %ser_dev) #2 align 64 {
entry:
  %buf = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #5
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 1540, ptr %buf, align 2
  %1 = load ptr, ptr getelementptr inbounds (%struct.nvec_ps2, ptr @ps2_dev, i32 0, i32 2), align 4
  %call = call i32 @nvec_write_async(ptr noundef %1, ptr noundef nonnull %buf, i16 noundef signext 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvec_ps2_notifier(ptr nocapture noundef readnone %nb, i32 noundef %event_type, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event_type, label %entry.cleanup_crit_edge [
    i32 129, label %for.cond.preheader
    i32 6, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %arrayidx = getelementptr i8, ptr %data, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp49.not = icmp eq i8 %2, 0
  br i1 %cmp49.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.050 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %3 = load ptr, ptr @ps2_dev, align 4
  %add = add nuw nsw i32 %i.050, 2
  %arrayidx2 = getelementptr i8, ptr %data, i32 %add
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  %call = tail call i32 @serio_interrupt(ptr noundef %3, i8 noundef zeroext %5, i32 noundef 0) #5
  %inc = add nuw nsw i32 %i.050, 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

sw.bb3:                                           ; preds = %entry
  %arrayidx4 = getelementptr i8, ptr %data, i32 2
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp6 = icmp eq i8 %9, 1
  br i1 %cmp6, label %for.cond8.preheader, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond8.preheader:                              ; preds = %sw.bb3
  %arrayidx9 = getelementptr i8, ptr %data, i32 1
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp1146 = icmp ugt i8 %11, 2
  br i1 %cmp1146, label %for.cond8.preheader.for.body13_crit_edge, label %for.cond8.preheader.cleanup_crit_edge

for.cond8.preheader.cleanup_crit_edge:            ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond8.preheader.for.body13_crit_edge:         ; preds = %for.cond8.preheader
  br label %for.body13

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.cond8.preheader.for.body13_crit_edge
  %i.147 = phi i32 [ %inc18, %for.body13.for.body13_crit_edge ], [ 0, %for.cond8.preheader.for.body13_crit_edge ]
  %12 = load ptr, ptr @ps2_dev, align 4
  %add14 = add nuw nsw i32 %i.147, 4
  %arrayidx15 = getelementptr i8, ptr %data, i32 %add14
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx15, align 1
  %call16 = tail call i32 @serio_interrupt(ptr noundef %12, i8 noundef zeroext %14, i32 noundef 0) #5
  %inc18 = add nuw nsw i32 %i.147, 1
  %15 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %16 to i32
  %sub = add nsw i32 %conv10, -2
  %cmp11 = icmp slt i32 %inc18, %sub
  br i1 %cmp11, label %for.body13.for.body13_crit_edge, label %for.body13.cleanup_crit_edge

for.body13.cleanup_crit_edge:                     ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body13

cleanup:                                          ; preds = %for.body13.cleanup_crit_edge, %for.cond8.preheader.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 32769, %sw.bb3.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 32769, %for.cond.preheader.cleanup_crit_edge ], [ 32769, %for.cond8.preheader.cleanup_crit_edge ], [ 32769, %for.body.cleanup_crit_edge ], [ 32769, %for.body13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvec_register_notifier(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__serio_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvec_write_async(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_interrupt(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvec_unregister_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvec_mouse_suspend(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  %buf.i1 = alloca [2 x i8], align 2
  %buf.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ps2_dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #5
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 100791553, ptr %buf.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ps2_sendcommand.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvec_mouse_suspend, %if.then.i)) #5
          to label %ps2_sendcommand.exit [label %if.then.i], !srcloc !39

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.serio, ptr %0, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ps2_sendcommand.__UNIQUE_ID_ddebug187, ptr noundef %dev.i, ptr noundef nonnull @.str.6, i32 noundef 245) #5
  br label %ps2_sendcommand.exit

ps2_sendcommand.exit:                             ; preds = %if.then.i, %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.nvec_ps2, ptr @ps2_dev, i32 0, i32 2), align 4
  %call5.i = call i32 @nvec_write_async(ptr noundef %2, ptr noundef nonnull %buf.i, i16 noundef signext 4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i1) #5
  %3 = ptrtoint ptr %buf.i1 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1540, ptr %buf.i1, align 2
  %4 = load ptr, ptr getelementptr inbounds (%struct.nvec_ps2, ptr @ps2_dev, i32 0, i32 2), align 4
  %call.i = call i32 @nvec_write_async(ptr noundef %4, ptr noundef nonnull %buf.i1, i16 noundef signext 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvec_mouse_resume(ptr nocapture noundef readnone %dev) #2 align 64 {
entry:
  %buf.i2 = alloca [4 x i8], align 4
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #5
  %0 = call ptr @memcpy(ptr %buf.i, ptr @__const.ps2_startstreaming.buf, i32 3)
  %1 = load ptr, ptr getelementptr inbounds (%struct.nvec_ps2, ptr @ps2_dev, i32 0, i32 2), align 4
  %call.i = call i32 @nvec_write_async(ptr noundef %1, ptr noundef nonnull %buf.i, i16 noundef signext 3) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #5
  %2 = load ptr, ptr @ps2_dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i2) #5
  %3 = ptrtoint ptr %buf.i2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 100791297, ptr %buf.i2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ps2_sendcommand.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvec_mouse_resume, %if.then.i)) #5
          to label %ps2_sendcommand.exit [label %if.then.i], !srcloc !39

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.serio, ptr %2, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ps2_sendcommand.__UNIQUE_ID_ddebug187, ptr noundef %dev.i, ptr noundef nonnull @.str.6, i32 noundef 244) #5
  br label %ps2_sendcommand.exit

ps2_sendcommand.exit:                             ; preds = %if.then.i, %entry
  %4 = load ptr, ptr getelementptr inbounds (%struct.nvec_ps2, ptr @ps2_dev, i32 0, i32 2), align 4
  %call5.i = call i32 @nvec_write_async(ptr noundef %4, ptr noundef nonnull %buf.i2, i16 noundef signext 4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i2) #5
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_nvec_ps2__188_176_nvec_mouse_driver_init6, !1, !"__initcall__kmod_nvec_ps2__188_176_nvec_mouse_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/nvec/nvec_ps2.c", i32 176, i32 1}
!2 = !{ptr @__exitcall_nvec_mouse_driver_exit, !1, !"__exitcall_nvec_mouse_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description189, !4, !"__UNIQUE_ID_description189", i1 false, i1 false}
!4 = !{!"../drivers/staging/nvec/nvec_ps2.c", i32 178, i32 1}
!5 = !{ptr @__UNIQUE_ID_author190, !6, !"__UNIQUE_ID_author190", i1 false, i1 false}
!6 = !{!"../drivers/staging/nvec/nvec_ps2.c", i32 179, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias191, !8, !"__UNIQUE_ID_alias191", i1 false, i1 false}
!8 = !{!"../drivers/staging/nvec/nvec_ps2.c", i32 180, i32 1}
!9 = !{ptr @__UNIQUE_ID_file192, !10, !"__UNIQUE_ID_file192", i1 false, i1 false}
!10 = !{!"../drivers/staging/nvec/nvec_ps2.c", i32 181, i32 1}
!11 = !{ptr @__UNIQUE_ID_license193, !10, !"__UNIQUE_ID_license193", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/nvec/nvec_ps2.c", i32 171, i32 11}
!14 = !{ptr @nvec_mouse_driver, !15, !"nvec_mouse_driver", i1 false, i1 false}
!15 = !{!"../drivers/staging/nvec/nvec_ps2.c", i32 167, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/nvec/nvec_ps2.c", i32 115, i32 25}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/nvec/nvec_ps2.c", i32 116, i32 25}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/staging/nvec/nvec_ps2.c", i32 69, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ps2_sendcommand.__UNIQUE_ID_ddebug187, !21, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!26 = !{ptr @ps2_dev, !27, !"ps2_dev", i1 false, i1 false}
!27 = !{!"../drivers/staging/nvec/nvec_ps2.c", i32 47, i32 24}
!28 = !{ptr @nvec_mouse_pm_ops, !29, !"nvec_mouse_pm_ops", i1 false, i1 false}
!29 = !{!"../drivers/staging/nvec/nvec_ps2.c", i32 164, i32 8}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 2148955711, i64 2148955716, i64 2148955729, i64 2148955773, i64 2148955807, i64 2148955828}
